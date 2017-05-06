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

  val initial : register Temp.Table.table
  val registers : register list
  
  val EBX : Temp.temp
  val EIP : Temp.temp
  val ESI : Temp.temp 
  val EDI : Temp.temp 

end (* signature REGISTER *)


structure Register : REGISTER = 
struct

  type register = string

  val RV = Temp.newtemp() (* EAX *)
  val FP = Temp.newtemp() (* EBP *)

  val SP = Temp.newtemp() (* ESP *)

  val EBX = Temp.newtemp()(* EBX *)
  val ECX = Temp.newtemp()(* ECX *)
  val EDX = Temp.newtemp()(* EDX *)
  val EIP = Temp.newtemp()(* EIP *)
  val ESI = Temp.newtemp()(* ESI *)
  val EDI = Temp.newtemp()(* EDI *)

  (* Ones I've added... 16 total registers alltogether! *)
  (* END of ones I've added *)

  (* of course, none of the following should be empty list *)

  val NPSEUDOREGS = 60
  val PSEUDOREGS = List.tabulate(NPSEUDOREGS, fn x => (Temp.newtemp(), "f"^Int.toString(x)))
  
  val localsBaseOffset : int = ((~4) * (NPSEUDOREGS + 1)) (* One word for every pseudo reg plus return address *)
  val paramBaseOffset : int = 8

  val specialregs : (Temp.temp * register) list = 
    [(SP, "esp"),
     (RV, "eax"),
     (FP, "ebp"),
     (ECX, "ecx"),
     (EDX, "edx"),
     (EIP, "eip")
    ]
  val argregs : (Temp.temp * register) list = []
  val calleesaves : register list = ["ebx", "esi", "edi"]
  val truecallersaves : register list = [] (* ??? *)
  val callersaves : register list = []

  (* ... other stuff ... *)

  val initial : register Temp.Table.table =
    let
      fun tablify (regpairs) = case regpairs of [] => Temp.Table.empty
                                  | (tmp, reg)::rest => Temp.Table.enter(tablify rest, tmp, reg)
    in
      tablify (specialregs)
    end

  val registers : register list = 
    (* ["eax", "ebx" , "ecx", "edx", "esi", "edi", "esp", "ebp", "eip"] *)
    calleesaves
      @List.tabulate(NPSEUDOREGS, fn x => ("f"^Int.toString(x)))



end (* structure Register *)

