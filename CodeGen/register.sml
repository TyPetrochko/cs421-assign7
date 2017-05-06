(* register.sml *)

signature REGISTER =
sig 
  include REGISTER_STD

  val ECX : Temp.temp
  val EDX : Temp.temp

 (* we maintain a separate list here of true callersaves, so that
  * CodeGen will not emit code to "save" the pseudo-registers, since
  * they already live on the stack.
  *)
  val truecallersaves : register list (* CodeGen use only! *)

  (* number of pseudo-registers: *)
  val NPSEUDOREGS : int  (* CodeGen use only! *)

  (* if you like, you can add other stuff here *)

  (* ... *)
  val initial : register Temp.Table.table
  val registers : register list

end (* signature REGISTER *)


structure Register : REGISTER = 
struct

  type register = string

  val RV = Temp.newtemp()
  val FP = Temp.newtemp()

  val SP = Temp.newtemp()
  val EIP = Temp.newtemp()

  val ECX = Temp.newtemp()
  val EDX = Temp.newtemp()

  (* make ~1 or 1 depending on how ItreeGen uses it *)
  val localsOffsetNeg = ~1

  (* of course, none of the following should be empty list *)

  val NPSEUDOREGS = 40 (* change this to the proper value *)
  val localsBaseOffset : int = ((localsOffsetNeg * 4) * (NPSEUDOREGS + 1)) (* change this to the proper value *)
  val paramBaseOffset : int = 8  (* change this to the proper value *)

  (* specially referenced for stack management, pseudoregs, return value *)
  val specialregs : (Temp.temp * register) list = [(EIP, "%eip"), (SP, "%esp"), (FP, "%ebp"), (RV, "%eax"), (ECX, "%ecx"), (EDX, "%edx")]
  (* arguments are passed on the stack *)
  val argregs : (Temp.temp * register) list = []
  (* saved at the beginning of each function and restored at the end *)
  val calleesaves : register list = ["%ebx", "%esi", "%edi"]
  val truecallersaves : register list = []
  (* pseudoregs are automatically saved by the caller because they live on the heap *)
  fun preg(index) = "f" ^ Int.toString(index)
  val callersaves : register list = List.tabulate(NPSEUDOREGS, fn x => preg(x))

  (* ... other stuff ... *)
  val initial : register Temp.Table.table =
    let
      fun tablify (regpairs) = case regpairs of [] => Temp.Table.empty
                                  | (tmp, reg)::rest => Temp.Table.enter(tablify rest, tmp, reg)
    in
      tablify (specialregs)
    end
  
  val registers : register list = 
    calleesaves@callersaves

end (* structure Register *)

