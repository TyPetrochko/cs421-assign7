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
  
  val RA : Temp.temp
  val ZERO : Temp.temp

end (* signature REGISTER *)


structure Register : REGISTER = 
struct

  type register = string

  val RV = Temp.newtemp() (* EAX *)
  val FP = Temp.newtemp() (* EBP *)

  val SP = Temp.newtemp() (* ESP *)

  val ECX = Temp.newtemp()
  val EDX = Temp.newtemp()

  (* Ones I've added... 16 total registers alltogether! *)
  val TOC  = Temp.newtemp()
  val RA   = Temp.newtemp()
  val ZERO = Temp.newtemp()
  val ARG1 = Temp.newtemp()
  val ARG2 = Temp.newtemp()
  val ARG3 = Temp.newtemp()
  val ARG4 = Temp.newtemp()
  val ARG5 = Temp.newtemp()
  val ARG6 = Temp.newtemp()
  val ARG7 = Temp.newtemp()
  val ARG8 = Temp.newtemp()
  (* END of ones I've added *)

  (* of course, none of the following should be empty list *)

  val NPSEUDOREGS = 20 
  val localsBaseOffset : int = ((~4) * (NPSEUDOREGS + 1)) (* One word for every pseudo reg plus return address *)
  val paramBaseOffset : int = 8

  val specialregs : (Temp.temp * register) list = 
    [(SP, "esp"),
     (RV, "eax"),
     (FP, "ebp")
    ]
  val argregs : (Temp.temp * register) list = 
    [(ARG1, "eax"),
     (ARG2, "ebx"),
     (ARG2, "ecx"),
     (ARG3, "edx"), (* Not sure about next two... *)
     (ARG4, "esi"),
     (ARG5, "edi") (* Any more? *)
    ]
  val calleesaves : register list = ["ebp", "esi", "edi", "ebx"]
  val truecallersaves : register list = [] (* ??? *)
  val callersaves : register list = ["eax", "ecx", "edx", "esp"]

  (* ... other stuff ... *)
  
  val initial : register Temp.Table.table = 
    Temp.Table.enter(
      Temp.Table.enter(
        Temp.Table.enter(Temp.Table.empty, SP, "esp"), RV, "eax"), FP, "ebp")

  val registers : register list = 
    ["eax", "ebx", "ecx", "edx", "esi", "edi", "esp", "ebp", (* 8 real registers *)
    "f0", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", "f11"] (* 12 pseudo-registers *)



end (* structure Register *)

