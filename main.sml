(* main.sml *)

signature MAIN = 
sig 
  val compile : string -> unit
end (* signature MAIN *)

structure Main : MAIN = 
struct
  structure Semant = SemantGen(Register)
  structure RegAlloc = RegAllocGen(Register)

  structure C = Codegen
  structure F = C.F

  fun emitproc out (F.DATA {lab, s}) = TextIO.output(out,C.string(lab, s))
                      (*** should really be output(out,C.string(lab,s)) ***)

    | emitproc out (F.PROC{name, body, frame}) =
        let val _ = print ("Emit " ^ Symbol.name(name) ^ "\n")
            (* val _ = Printtree.printtree(out,body); *)


            val stms = Canon.linearize body
            val stms' = Canon.traceSchedule(Canon.basicBlocks stms)
            
            (* val _ = map(fn statement => (Printtree.printtree(out, statement))) stms'; *)
         
            val instrs = List.concat(map C.codegen stms')

            val (flowgraph, nodelist) = MakeGraph.instrs2graph(instrs)
           
            (* We'll need this soon!
            val (igraph, tempConversionFunction) = Liveness.interferenceGraph(flowgraph)
            val alloc = RegAlloc.color {
              interference = igraph,
              initial = Register.initial,
              registers = Register.registers
            }
            val processedInstrs = C.procEntryExit {name=name,
              body=(map(fn inst => (inst, [(* Callee-save only! *)])) instrs),
              allocation=alloc,
              formals = [],
              frame=frame}
            *)
            
          val format0 = Assem.format (fn t => "t" ^ Temp.makestring t)

         in app (fn i => TextIO.output(out,format0 i)) instrs
        end

  fun withOpenFile fname f = 
        let val out = TextIO.openOut fname
         in (f out before TextIO.closeOut out) 
               handle e => (TextIO.closeOut out; raise e)
        end 

  fun compile filename = 
        let val frags = Semant.transprog(Parse.parse filename)
         in withOpenFile (filename ^ ".s") 
                 (fn out => (app (emitproc out) frags))
        end

end (* structure Main *)


