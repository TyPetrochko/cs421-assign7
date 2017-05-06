(* codegen.sml *)

signature CODEGEN =
sig
  structure F : FRAME
  structure R : REGISTER

  (* translate each canonical tree into a list of assembly instructions *)
  val codegen : Tree.stm -> Assem.instr list 

  (* converting a string fragment into the actual assembly code *)
  val string : Temp.label * string -> string

  (* procEntryExit sequence + function calling sequence tune-up 
   * + mapping pseudo-registers to memory load/store instructions 
   * and actual registers.
   * This is a post-pass, to be done after register allocation.
   *)
  val procEntryExit : {name : Temp.label, 
                          body : (Assem.instr * Temp.temp list) list,
                          allocation : R.register Temp.Table.table,
                          formals : Temp.temp list,
                          frame : Frame.frame} -> Assem.instr list
   
end (* signature CODEGEN *)

structure Codegen : CODEGEN =
struct

 structure T = Tree
 structure A = Assem
 structure Er = ErrorMsg
 structure F = Frame
 structure R = Register

 val ilist = ref (nil: A.instr list)
 fun emit x = ilist := x :: !ilist
 fun result(gen) = let val t = Temp.newtemp() in gen t; t end
 fun int(i) = if i < 0 then "-"^Int.toString(~i) else Int.toString(i)

 (* flag determining whether CodeGen is responsible for pushing CALL arguments *)
 val iPush = true

 fun comment(s) = "\t\t\t\t\t# " ^ s ^ "\n"

 fun temps(nil)=""
    | temps(t::ts) = temp(t)^","^temps(ts)
 and temp(t) = "t"^Temp.makestring(t)

 fun cJump(T.EQ) = "je"
   | cJump(T.NE) = "jne"
   | cJump(T.LT) = "jl"
   | cJump(T.LE) = "jle"
   | cJump(T.GT) = "jg"
   | cJump(T.GE) = "jge"
   | cJump(_) = (ErrorMsg.impossible("Unrecognized relop"); "jmp")

 fun munchStm(T.SEQ(a,b)) = (munchStm a; munchStm b)
   | munchStm(T.MOVE(e1, e2)) = let
        (* avoid memory-memory moves. dest takes precedence *)
        val mem1 = isMem(e2)
        val mem2 = isMem(e1)
        val (inline1, regs1) = inlineExp("`s", 0, not mem2, true, e2)
        val (inline2, regs2) = inlineExp("`d", if mem2 then List.length(regs1) else 0, true, false, e1)
        val src = regs1 @ (if mem2 then regs2 else nil)
        val dst = if mem2 then nil else regs2
      in emit(A.OPER{assem="\tmovl\t"^inline1^", " ^ inline2 ^ comment("run MOVE statement with src:"^temps(src)^" dst:"^temps(dst)),
            src=src, dst=dst, jump=NONE})
      end
   | munchStm(T.LABEL lab) =
      emit(A.LABEL{assem=Symbol.name(lab) ^ ":\n", lab=lab})
   | munchStm(T.EXP(e)) =
      (munchExp(e);())
    (* Note Jack's code doesn't do indirect jumps or calls, it'll always be a NAME *)
   | munchStm(T.JUMP(T.NAME(lab), togo)) =
      emit(A.OPER{assem="\tjmp\t`j0" ^ comment("unconditional jump"),
        src=nil, dst=nil, jump=SOME([lab])})
   | munchStm(T.JUMP(_)) = ErrorMsg.impossible("Jump must have NAME arg (no indirect jumps)")
   | munchStm(T.CJUMP(T.TEST(cmp, x, y), l1, l2)) = let
      (* Avoid memory-memory comparison *)
      (* Second arg can't be a constant *)
      (* CMP has its arguments backwards, because why the fuck not? *)
      (* have to evaluate x first, then y. but then compare with y, x *)
      val (inline1, regs1) = inlineExp("`s", 0, true, false, x)
      val (inline2, regs2) = inlineExp("`s", List.length(regs1), not(isMem(x)), true, y)
    in emit(A.OPER{assem="\tcmpl\t"^inline2^", "^inline1^
        comment("compare before conditional jump with src1:"^temps(regs2)^" src2:"^temps(regs1)),
        src=regs1 @ regs2, dst=nil, jump=NONE});
      emit(A.OPER{assem="\t"^cJump(cmp)^"\t`j0\n", src=nil, dst=nil, jump=SOME([l1])})
      (* because of canonalization, the l2 will immediately follow *)
    end

 (* check to see if it would be inlined as a mem operation *)
 and isMem(T.MEM(_)) = true
  | isMem(_) = false

 (* takes expression, which could maybe be evaluated implicitly, and string for replacement.
  returns string to use for expression and list containing register it uses, if any.
    bool arg is whether it may be inlined as a memory exp.
    second bool arg is for allowing constants *)
 and inlineExp(_, idx, true, _, T.MEM(T.BINOP(T.PLUS,T.CONST i,e1), _)): string * (Temp.temp list) =
      (int(i)^"(`s"^int(idx)^")", [munchExp e1])
    | inlineExp(_, idx, true, _, T.MEM(T.BINOP(T.PLUS,e1,T.CONST i), _)) =
      (int(i)^"(`s"^int(idx)^")", [munchExp e1])
    | inlineExp(_, idx, true, _, T.MEM(e1, _)) =
      ("(`s"^int(idx)^")", [munchExp e1])
    | inlineExp(_, _, _, true, T.CONST i) =
      ("$"^int(i), nil)
    | inlineExp(s, idx, _, _, T.TEMP t) =
      (s^int(idx), [t])
    | inlineExp(_, _, _, true, T.NAME(lab)) =
      ("$"^Symbol.name(lab), nil)
    | inlineExp(s, idx, _, _, e) =
      (s^int(idx), [munchExp e])

 and munchExp(mem as T.MEM(_)): Temp.temp =
      let val (inline, regs) = inlineExp("`s", 0, true, true, mem)
      in
        result(fn r => emit(A.OPER{assem="\tmovl\t"^inline^", `d0"^comment("evaluate MEM expression src:"^temps(regs)^" dst:"^temp(r)),
        src=regs, dst=[r], jump=NONE}))
      end
   | munchExp(T.CONST(i)) =
      result(fn r => emit(A.OPER{assem="\tmovl\t$" ^ int i ^ ", `d0"^comment("evaluate CONST expression to "^temp(r)),
      src=nil, dst=[r], jump=NONE}))
   | munchExp(T.TEMP t) = t
   | munchExp(T.BINOP(T.PLUS, e1, e2)) =
      result(fn r => (munchStm(T.MOVE(T.TEMP(r), e1)); let
          val (inline, regs) = inlineExp("`s", 1, true, true, e2)
        in
          emit(A.OPER{assem="\taddl\t"^inline^", `d0"^comment("evaluate PLUS expression src:"^temps(regs)^" dst:"^temp(r)),
          src=r::regs, dst=[r], jump=NONE})
        end))
   | munchExp(T.BINOP(T.MINUS, e1, e2)) =
      result(fn r => (munchStm(T.MOVE(T.TEMP(r), e1)); let
          val (inline, regs) = inlineExp("`s", 1, true, true, e2)
        in
          emit(A.OPER{assem="\tsubl\t"^inline^", `d0"^comment("evaluate MINUS expression src:"^temps(regs)^" dst:"^temp(r)),
          src=r::regs, dst=[r], jump=NONE})
        end))
   | munchExp(T.BINOP(T.MUL, e1, e2)) =
      result(fn r => (munchStm(T.MOVE(T.TEMP(r), e1)); let
          val (inline, regs) = inlineExp("`s", 1, true, true, e2)
        in
          emit(A.OPER{assem="\timull\t"^inline^", `d0"^comment("evaluate MUL expression src:"^temps(regs)^" dst:"^temp(r)),
          src=r::regs, dst=[r], jump=NONE})
        end))
   | munchExp(T.BINOP(T.DIV, e1, e2)) =
      (* dividend is in EAX *)
      result(fn r =>
        let
          val (inline1, regs1) = inlineExp("`s", 0, true, true, e1)
          (* "The source operand can be a general-purpose register or a memory location" *)
          val (inline2, regs2) = inlineExp("`s", 0, true, false, e2)
        in
          emit(A.OPER{assem="\tmovl\t"^inline1^", `d0" ^ comment("prepare dividend src:"^temps(regs1)),
            src=regs1, dst=[R.RV], jump=NONE});
          (* higher order bits are in EDX *)
          emit(A.OPER{assem="\tmovl\t$0, `d0" ^ comment("prepare higher order bits of dividend"),
            src=nil, dst=[R.EDX], jump=NONE});
          (* Note that genSpills won't clobber EDX in between these lines because the idivl
            only takes 1 src so if it's a pseudoreg it will be mapped to ECX *)
          emit(A.OPER{assem="\tidivl\t"^inline2^
                  comment("divide this from EAX, result->EAX, remainder->EDX; src:"^temps(regs2)),
            src=regs2 @ [R.EDX, R.RV], dst=[R.EDX, R.RV], jump=NONE});
          emit(A.OPER{assem="\tmovl\t`s0, `d0"^comment("move result from EAX to new register:"^temp(r)),
            src=[R.RV], dst=[r], jump=NONE})
        end)
   | munchExp(T.BINOP(_)) = (ErrorMsg.impossible("Unrecognized BINOP"); Temp.newtemp())
   | munchExp(T.CALL(T.NAME(callee), args)) = let
      val argCount = List.length(args)
      val name = Symbol.name(callee)
      val _ = if iPush then pushArgs(args, 0, name) else ()
      (* When jumping outside of a function, there's no interference between registers *)
      val jmp = NONE
    in
      result(fn r => (
        emit(A.OPER{assem="\tcall\t" ^ name ^ comment("call function "^name^", putting result in EAX"),
          src=nil, dst=[R.RV], jump=jmp});
        emit(A.OPER{assem="\tmovl\t`s0, `d0"^comment("move result of "^name^" to desired register:"^temp(r)),
          src=[R.RV], dst=[r], jump=NONE})
      ))
    end
   | munchExp(T.CALL(_)) = (ErrorMsg.impossible("Call must be directly to a NAME"); Temp.newtemp())
   | munchExp(name as T.NAME(_)) =
      result(fn r => munchStm(T.MOVE(T.TEMP(r), name)))
   | munchExp(T.ESEQ(_)) = (ErrorMsg.impossible("Unexpected ESEQ"); Temp.newtemp())
   | munchExp(T.CONSTF(_)) = (ErrorMsg.impossible("Unexpected CONSTF"); Temp.newtemp())
   | munchExp(T.CVTOP(_)) = (ErrorMsg.impossible("Unexpected CVTOP"); Temp.newtemp())

 and pushArgs(nil, _, _) = ()
   | pushArgs(exp::xs, count, name) =
      let
        val (inline, regs) = inlineExp("`s", 1, false, true, exp)
      in
        (* first argument should have offset 0 *)
        emit(A.OPER{assem="\tmovl\t"^inline^", "^int(count*4)^"(`s0)"
          ^comment("argument "^int(count)^" for "^name^" from src:"^temps(regs)),
          src=R.SP::regs, dst=nil, jump=NONE});
        (* eval arguments left to right *)
        pushArgs(xs, count + 1, name)
      end


 fun codegen(tree: T.stm): A.instr list = (
    (* Uncomment the following to tell where one tree ends and the next begins *)
    (* emit(A.OPER{assem="\n"^comment("start new basic block")^"\n", src=nil, dst=nil, jump=NONE}); *)
    munchStm(tree);
    let val instructions = List.rev (!ilist)
    in
    ilist := nil;
    instructions
    end
 )
 fun bytesForString(nil): string = "0"
   | bytesForString(character::nil) = int(Char.ord(character))
   | bytesForString(character::rest) = int(Char.ord(character)) ^ ", " ^ bytesForString(rest)

 (* this is just for comments, creating a one-line printable string.
  if they make the assembly file corrupt for some reason, feel free to remove this. *)
 fun printableForString(nil): string =  ""
   | printableForString(character::rest) = Char.toString(character) ^ printableForString(rest)

 fun string(lab: Temp.label, s: string): string =
    Symbol.name(lab) ^ ":"^comment("string literal: \""^printableForString(String.explode(s))^"\"")^
    "\t.long "^int(String.size(s))^comment("string's length")^
    "\t.byte "^bytesForString(String.explode(s))^comment("string's bytes")

 (* assume all are callee save *)
 fun prologue(name: Temp.label, {formals : int,        (* number of formal parameters *)
                offlst : F.offset list, (* offset list for formals *)
                locals : int ref,     (* # of local variables so far *)
                maxargs : int ref}): A.instr list
  = let
    val frameSize = 4 * (R.NPSEUDOREGS + !locals + !maxargs + List.length(R.calleesaves))
    val procname = Symbol.name(name)
    val makeLinkable = A.OPER{assem=".globl\t" ^ procname ^ comment("make linkable"),
        src=nil, dst=nil, jump=NONE}
    val identifyType = A.OPER{assem="\t.type\t" ^ procname ^ ", @function"
        ^ comment("identify it as a function (for linking)"),
        src=nil, dst=nil, jump=NONE}
    val procLabel = A.LABEL{assem=procname ^ ":" ^ comment("entry point for function"), lab=name}
    val saveFrame = A.OPER{assem="\tpushl\t`s0"^comment("save previous frame pointer"),
      src=[R.FP], dst=nil, jump=NONE}
    val updateFrame = A.OPER{assem="\tmovl\t`s0, `d0"^comment("set new frame pointer"),
      src=[R.SP], dst=[R.FP], jump=NONE}
    val makeSpaceForLocals = A.OPER{assem="\tsubl\t$" ^ int(frameSize) ^ ", %esp" ^
        comment("make room for "^int(R.NPSEUDOREGS)^" pseudoregs, "^int(!locals)^" locals, "
          ^int(List.length(R.calleesaves))^" callee-saves, and "^int(!maxargs)^" maxargs,"),
        src=nil, dst=nil, jump=NONE}
    fun saveRegs(nil, _) = nil
      | saveRegs(reg::regs, count) = A.OPER{assem="\tmovl\t" ^ reg ^ ", " ^ int((count + !maxargs) * 4)
          ^ "(`s0)" ^ comment("callee-save register"),
          src=[R.SP], dst=nil, jump=NONE} :: saveRegs(regs, count + 1)
    val saveCalleeRegs = saveRegs(R.calleesaves, 0)
  in
    [makeLinkable, identifyType, procLabel, saveFrame, updateFrame, makeSpaceForLocals] @ saveCalleeRegs
  end

  fun cleanup(name: Temp.label, {formals : int,        (* number of formal parameters *)
                offlst : F.offset list, (* offset list for formals *)
                locals : int ref,     (* # of local variables so far *)
                maxargs : int ref}): A.instr list
  = let
    val countLocals = 4 * (R.NPSEUDOREGS + !locals)
    val deallocStackFrame = A.OPER{assem="\tmovl\t`s0, `d0"^comment("dealloc stack frame"),
        src=[R.FP], dst=[R.SP], jump=NONE}
    val restoreFP = A.OPER{assem="\tpopl\t`d0"^comment("restore previous frame pointer"),
        src=nil, dst=[R.FP], jump=NONE}
    fun restoreRegs(nil, _) = nil
      | restoreRegs(reg::regs, count) = A.OPER{assem="\tmovl\t" ^ int((count + !maxargs) * 4) ^ "(`s0), " ^ reg
        ^ comment("restore callee-saved register"),
        src=[R.SP], dst=nil, jump=NONE} :: restoreRegs(regs, count+1)
    val restoreCalleeRegs = restoreRegs(R.calleesaves, 0)
    val return = A.OPER{assem="\tret" ^ comment("return from function "^Symbol.name(name)),
        src=nil, dst=nil, jump=NONE}
  in
    restoreCalleeRegs @ [deallocStackFrame, restoreFP, return]
  end




(************************************************************
  The following is an example implementation of mapping pseudo-registers 
  to memory load/store instructions and actual registers.  It is done
  in a single pass.  It assumes that pseudo-register names start with
  the letter "f".  It uses the actual registers ECX and EDX as temporaries
  when a pseudo-register is an operand of an instruction.

  There is a special case that this function does NOT handle, but you MUST!
  The DIV instruction has special requirements.  Its dividend must be in EAX, 
  its divisor in a general-purpose register.  It returns both the quotient,
  in EAX, and the remainder, in EDX regardless where the original divisor was! 
  So be careful that a divide instruction does not trash something useful
  in EDX, and that you retrieve the correct resulut from the divide instruction.
*)

  (* regname -- produce an assembly language name for the given machine
   * register or psuedo-register.
   * psuedo-registers are mapped to an expression for psuedo-register's
   * location in stack frame.
   *)
  (* regname : R.register -> string *)
  fun regname reg =
      if (String.isPrefix "f" reg) then
	  (* it's a psuedo-register *)
	  let
	      val (SOME prNum) = Int.fromString (String.extract(reg,1,NONE));
	      val offset = (prNum + 1) * 4
	  in
	      "-" ^ Int.toString(offset) ^ "(%ebp)"
	  end
      else
	  reg


 (* genSpills -- do our "poor man's spilling".  Maps all pseudo-register
  * references to actual registers, by inserting instructions to load/store
  * the pseudo-register to/from a real register
  *)
 fun genSpills (insns,saytemp) =
     let
	  (* doload() -- given name of a source register src, and a true
	   * machine register mreg, will return a load instruction (if needed)
	   * and a machine register.
	   *)
	  (* loadit: Temp.temp * Temp.temp -> string * Temp.temp *)
	  fun loadit (src,mreg) =
	      let 
		  val srcnm = (saytemp src)
	      in
		  if (String.isPrefix "f" srcnm) then
		      (* it's a fake register: *)
		      let
			  (*val _ = print ("loadit(): mapping pseudo-register `" ^ srcnm ^ "' to machine reg. `" ^ (saytemp mreg) ^"'\n");*)
			  val loadInsn = "\tmovl\t" ^ (regname srcnm) ^ ", " ^ (saytemp mreg) ^
            comment("load pseudoreg `"^srcnm^"' to machine reg `"^(saytemp mreg)^"'")
		      in
			  (loadInsn, mreg)
		      end
		  else
		      (* no mapping needed *)
		      ("", src)
	      end
	  (* mapsrcs : produce a sequence of instructions to load
	   * pseudo-registers into real registers, and produce a list
	   * of sources which reflects the real registers.
	   *)
	  (* mapsrcs : Temp.temp list * Temp.temp list -> string * Temp.temp list *)
	  fun mapsrcs ([],_) = ("",[])
      (* NOTE I CHANGED THIS.
        To allow instructions to have more than two src registers, I need to do this.
        Make sure that the srcs will never have more than 2 pseudoregs, and the pseudoregs
        MUST BE THE FIRST TWO. All pseudoregs after the first two srcs will not be mapped *)
      | mapsrcs(_, []) = ("",[])
	    | mapsrcs (src::srcs,mreg::mregs) =
              let
                  val (loadInsn, src') = loadit(src,mreg)
                  val (loadRest, srcs') = mapsrcs(srcs,mregs)
              in
                  (loadInsn ^ loadRest, src'::srcs')
              end
	  (* findit -- like List.find, but returns SOME i, where i is index
	   * of element, if found
	   *)
          fun findit f l =
	      let
		  fun dosrch([],f,_) = NONE
		    | dosrch(el::els,f,idx) =
		      if f(el) then
			  SOME idx
		      else
			  dosrch(els,f,idx+1)
	      in
		  dosrch(l,f,0)
	      end

	  (* mapdsts -- after we have mapped sources to real machine
	   * registers, iterate through dsts.
	   * If dst is a pseudo-register then
	   *    if dst was also a src,
	   *         replace dst with machine register to which src is already
	   *         mapped
	   *    else
	   *         map dst to its own machine register (just use %ecx)
	   *    generate a store insn for dst to save result
	   *)
          (* mapdsts : Temp.temp list * Temp.temp list * Temp.temp list ->
	   *           string * Temp.temp list
	   *)
          (* N.B.!  This only works for dst of length 0 or 1 !! *)
          (* pre: length(dsts) <= 1 *)
	  fun mapdsts([],_,_) = ("",[])
	    | mapdsts(dst::dsts,srcs,newsrcs) =
	      let
		  val found = findit (fn e => e=dst) srcs
		  val dstnm = (saytemp dst)
	      in
		  if (isSome(found)) then
		      (* this dst is also a source *)
		      let
			  val idx=valOf(found)
			  val src=List.nth (srcs,idx)
			  val mreg=List.nth (newsrcs,idx)
		      in
			  if (src <> mreg) then
			      ("\tmovl\t`d0, " ^ (regname dstnm) ^ comment("save pseudo-register "^dstnm), mreg::dsts)
			  else
			      (* no mapping *)
			      ("", dst::dsts)
		      end
		  else
		      (* this dst isn't a source, but it might be a pseudo-register *)
                      if (String.isPrefix "f" dstnm) then
                          (* it's a fake register: *)
                          (* we can safely just replace this destination with
                           * %ecx, and then write out %ecx to the pseudo-register
                           * location.  Even if %ecx was used to hold a different
                           * source pseudo-register, we won't end up clobbering
                           * it until after the source has been used...
                           *)
                          ("\tmovl\t`d0, " ^ (regname dstnm) ^ comment("save pseudo-register "^dstnm), R.ECX::dsts)
                      else
                          (* no mapping *)
                          ("", dst::dsts)
	      end

	  fun mapInstr(A.OPER{assem=insn, dst=dsts, src=srcs, jump=jmp}) = 
	      let
		  val (loadinsns, newsrcs) = mapsrcs(srcs, [R.ECX, R.EDX]);
                      val (storeinsns, newdsts) = mapdsts(dsts, srcs, newsrcs); 
	      in
		  A.OPER{assem=loadinsns ^ insn ^ storeinsns,
			 dst=newdsts, src=newsrcs, jump=jmp}
	      end
	    | mapInstr(instr as A.LABEL _) = instr
	    | mapInstr(instr) =
	      (* we never generate these! *)
              ErrorMsg.impossible ("CodeGen: unexpected instruction type in mapInstr!")
     in
         map mapInstr insns
     end

    fun translateInstrs(instrs: Assem.instr list, regs: R.register Temp.Table.table): A.instr list =
    let
      fun regForTemp(tmp: A.temp): R.register = (case Temp.Table.look(regs, tmp) of
        SOME(reg) => reg
        | NONE => (ErrorMsg.error 0 ("Temp unregistered: "^Temp.makestring(tmp)); Temp.makestring(tmp))
      )
      (* replace all pseudoregs with memory references using ECX and EDX *)
      val noPseudoregs = genSpills(instrs, regForTemp)
      (* replace all reg temporaries with actual register names *)
      val regFormat = A.format(regForTemp)
      fun replaceRegs(instr): A.instr = A.OPER{assem=regFormat instr, src=nil, dst=nil, jump=NONE}

      val noRegs = map replaceRegs noPseudoregs
    in
      noRegs
    end

  (* procEntryExit sequence + function calling sequence tune-up 
   * + mapping pseudo-registers to memory load/store instructions 
   * and actual registers.
   * This is a post-pass, to be done after register allocation.
   *)
 fun procEntryExit({name=name,
                    body=body, (* list of (Assem.instr, list of temps) *)
                    allocation=regTable, (* table mapping Temp.temp to R.register *)
                    formals=formals, (* ? *)
                    frame=frame}): A.instr list =
    let
      fun color(instrs: A.instr list): A.instr list = translateInstrs(instrs, regTable)
      val preface = color(prologue(name, frame))
      val instructions = (map (fn (i, t) => i) body)
      val newBody = color(instructions)
      val epilogue = color(cleanup(name, frame))
    in preface @ newBody @ epilogue end

end (* structure Codegen *)
