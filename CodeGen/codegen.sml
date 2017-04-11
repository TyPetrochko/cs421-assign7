(* codegen.sml *)

signature CODEGEN =
sig
  structure F : FRAME
  structure R : REGISTER

  (* translate each canonical tree into a list of assembly instructions *)
  val codegen : Tree.stm -> Assem.instr list 

  (* converting a string fragment into the actual assembly code *)
  (* val string : Temp.label * string -> string *)

  (* procEntryExit sequence + function calling sequence tune-up 
   * + mapping pseudo-registers to memory load/store instructions 
   * and actual registers.
   * This is a post-pass, to be done after register allocation.
   *)

  val regname : R.register -> string

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


  (* regname -- produce an assembly language name for the given machine
   * register or psuedo-register.
   * psuedo-registers are mapped to an expression for psuedo-register's
   * location in stack frame.
   *)
  (* regname : R.register -> string *)

  *)
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

  fun debug_stm (stm as T.SEQ(_)) = "SEQ"
    | debug_stm (stm as T.LABEL(_)) = "LABEL"
    | debug_stm (stm as T.JUMP(_)) = "JUMP"
    | debug_stm (stm as T.CJUMP(_)) = "CJUMP"
    | debug_stm (stm as T.MOVE(_)) = "MOVE"
    | debug_stm (stm as T.EXP(_)) = "EXP"
  
  fun debug_exp (exp as T.BINOP(_)) = "BINOP"
    | debug_exp (exp as T.CVTOP(_)) = "CVTOP"
    | debug_exp (exp as T.MEM(_)) = "MEM"
    | debug_exp (exp as T.TEMP(_)) = "TEMP"
    | debug_exp (exp as T.ESEQ(_)) = "ESEQ"
    | debug_exp (exp as T.NAME(_)) = "NAME"
    | debug_exp (exp as T.CONST(_)) = "CONST"
    | debug_exp (exp as T.CONSTF(_)) = "CONSTF"
    | debug_exp (exp as T.CALL(_)) = "CALL"

 (* Heavy lifting! *)
 fun munchStm (T.SEQ(a, b)) = (munchStm a; munchStm b)
   | munchStm (T.MOVE(T.MEM(T.BINOP(T.PLUS, e1, T.CONST i), s1), e2)) = 
        emit(A.MOVE{assem="\tmovl "^Int.toString(i)^"'s0, 'd0\n",
                    src=munchExp(e1),
                    dst=munchExp(e2)})
   | munchStm (T.MOVE(T.MEM(T.BINOP(T.PLUS, T.CONST i, e1), s1), e2)) = 
        emit(A.MOVE{assem="\tmovl "^Int.toString(i)^"'s0, 'd0\n",
                    src=munchExp(e1),
                    dst=munchExp(e2)})
          (* x86 has no mem-mem MOV *)
   (*| munchStm (T.MOVE(T.MEM(e1, s1), T.MEM(e2, s2))) = 
        emit(A.MOVE{assem="\tmovl ('s0), ('d0)\n",
                    src=munchExp(e1),
                    dst=munchExp(e2)})
    *)
   | munchStm (T.MOVE(T.MEM(T.CONST i, s1), e1)) = 
        emit(A.OPER{assem="\tmovl $"^Int.toString(i)^", ('d0)\n",
                    src=[],
                    dst=[munchExp(e1)],
                    jump=NONE})
   | munchStm (T.MOVE(T.MEM(e1, s1), e2)) = 
        emit(A.MOVE{assem="\tmovl ('s0), 'd0\n",
                    src=munchExp(e1),
                    dst=munchExp(e1)})
   | munchStm (T.MOVE(T.TEMP i, e1)) = (* TODO lookup in table! *)
        emit(A.OPER{assem="\tmovl %"^Int.toString(i)^", 'd0\n",
                    src=[],
                    dst=[munchExp(e1)],
                    jump=NONE})
   | munchStm (T.EXP(exp)) =
        emit(A.OPER{assem="\tmovl 's0, %eax\n", (* return value! *)
                    src=[munchExp(exp)],
                    dst=[],
                    jump=NONE})
   | munchStm (T.JUMP(exp, labels)) =
        emit(A.OPER{assem="\tjmp 's0\n", (* TODO this is definitely not right! *)
                    src=[munchExp(exp)],
                    dst=[],
                    jump=SOME(labels)})
   | munchStm (T.LABEL lab) = emit(A.LABEL{assem=Symbol.name(lab)^":\n", lab=lab})
   | munchStm (unknown_stm) = (print ("Node not implemented yet: "^debug_stm(unknown_stm)^"!\n"); ())
 and munchExp (T.MEM(T.BINOP(T.PLUS, exp, T.CONST i), size)) =
        result(fn r => 
            emit(A.OPER{assem="\tmovl "^Int.toString(i)^"('src[0]), 'dst0\n",
                        src=[munchExp exp],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.MEM(T.BINOP(T.PLUS, T.CONST i, exp), size)) =
        result(fn r => 
            emit(A.OPER{assem="\tmovl "^Int.toString(i)^"('src[0]), 'dst0\n",
                        src=[munchExp exp],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.MEM(T.CONST i, size)) =
        result(fn r => 
            emit(A.OPER{assem="\tmovl $"^Int.toString(i)^", 'dst0\n",
                        src=[],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.MEM(exp, size)) =
        result(fn r => 
            emit(A.OPER{assem="\tmovl ('src[0]), 'dst0\n",
                        src=[munchExp exp],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.BINOP(T.PLUS, T.CONST i, e1)) =
        result(fn r => 
            emit(A.OPER{assem="\taddl $"^Int.toString(i)^", 'dst0\n\taddl 's0, 'dst0\n",
                        src=[munchExp e1],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.CONST i) =
        result(fn r => 
            emit(A.OPER{assem="\tmovl $"^Int.toString(i)^", 'dst0\n",
                        src=[],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.BINOP(T.PLUS, e1, e2)) =
        result(fn r => 
            emit(A.OPER{assem="\taddl 's0, 'dst0\n\taddl 's1, 'dst0\n",
                        src=[munchExp e1, munchExp e2],
                        dst=[r], 
                        jump=NONE}))
   | munchExp (T.NAME(label)) =
        result(fn r => 
            emit(A.LABEL{assem=(Symbol.name(label)^":\n"), lab=label})) (* TODO this is definitely not right! *)
   | munchExp unknown_exp = (print ("TODO exp "^debug_exp(unknown_exp)^" not implemented yet!\n");
                  result(fn r => emit(A.OPER
                            {assem="\tmovl %'dst0, %'dst0\n",
                             src=[], dst=[r], jump=NONE})))
 fun codegen (stm: T.stm) : A.instr list =
 let
   (* any decs here? *)
 in 
   munchStm stm;
   rev(!ilist)
 end

  
 fun procEntryExit {name : Temp.label, 
                       body : (Assem.instr * Temp.temp list) list,
                       allocation : R.register Temp.Table.table,
                       formals : Temp.temp list,
                       frame : Frame.frame} :  Assem.instr list =
   let
     val functionBody = ( map(fn (instr, temps) => instr) body )
     val format0 = A.format(
      fn t => let val value = Temp.Table.look(allocation, t)
              in case value of NONE => ErrorMsg.impossible("procEntryExit: No register for temp "^Int.toString(t))
                    | SOME(reg_str) => regname(reg_str)
              end
     )
     val prologue = 
       [A.LABEL{assem=Symbol.name(name)^":\n", lab=name},
        A.OPER{assem="\tpushl %ebp\n", dst =[], src = [], jump = NONE},
        A.OPER{assem="\tmovl %esp,%ebp\n", dst = [], src = [], jump=NONE} (* Change this to MOVE later *)
       ]
     val epilogue = 
       [A.OPER{assem="\tmovl %ebp,%esp\n", src = [], dst = [], jump=NONE},
        A.OPER{assem="\tpopl %ebp\n", dst = [], src = [], jump = NONE},
        A.OPER{assem="\tret\n\n", dst = [R.ZERO, R.RA, R.SP], src = [], jump=SOME[]}
       ]

     val mappedBody = map(fn inst =>
      case inst of A.OPER{assem, src, dst, jump} => A.OPER{assem= (format0 inst), src=src, dst=dst, jump=jump}
         | A.MOVE{assem, src, dst} => A.MOVE{assem=(format0 inst), src=src, dst=dst}
         | A.LABEL{assem, lab} => A.LABEL{assem=assem, lab=lab}
     ) functionBody
   in
     print "BLAH";
     prologue @ mappedBody @ epilogue
   end

 (* fun string =  ... *)

  (* procEntryExit sequence + function calling sequence tune-up 
   * + mapping pseudo-registers to memory load/store instructions 
   * and actual registers.
   * This is a post-pass, to be done after register allocation.
   *)
 (* fun procEntryExit =  ... *)


  (*

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
			  val _ = print ("loadit(): mapping pseudo-register `" ^ srcnm ^ "' to machine reg. `" ^ (saytemp mreg) ^"'\n");
			  val loadInsn = "\tmovl\t" ^ (R.regname srcnm) ^ ", " ^ (saytemp mreg) ^ " # load pseudo-register\n"
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
			      ("\tmovl\t`d0, " ^ (R.regname dstnm) ^ " # save pseudo-register\n", mreg::dsts)
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
                          ("\tmovl\t`d0, " ^ (R.regname dstnm) ^ " # save pseudo-register\n", R.ECX::dsts)
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

  ***************************************************)
end (* structure Codegen *)
