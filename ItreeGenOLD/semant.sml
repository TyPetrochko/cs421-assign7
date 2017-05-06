(*
 * Assignment 6
 * CS 521 Spring 2017
 * Wolf Honore
 *)

signature SEMANT =
sig
  type ir_code
  val transprog : Absyn.exp -> Frame.frag list
end

functor SemantGen (Register : REGISTER_STD) : SEMANT =
struct
  structure A = Absyn
  structure Tr = TranslateGen(Register)
  structure E = EnvGen(Tr)
  structure S = Symbol
  structure T = Types
  structure F = Format
  val error = ErrorMsg.error
  type ir_code = Tr.gexp

  (* Helper Functions *)

  val defaultExp = Tr.nilExp ()
  val default = {exp=defaultExp, ty=T.UNIT}

  (* Common Error Messages *)

  (* strTy : T.ty -> string *)
  fun strTy ty =
    case ty of
      T.NIL => "nil"
    | T.UNIT => "unit"
    | T.INT => "int"
    | T.STRING => "string"
    | T.ARRAY (aty, _) => "array of " ^ strTy aty
    | T.NAME (n, _) => "name of " ^ S.name n
    | T.RECORD (fs, _) =>
        let fun strPair (n, t) = S.name n ^ ": " ^ strTy t in
          "record of {"
          ^ String.concatWith ", " (ListPair.map strPair (ListPair.unzip fs))
          ^ "}"
        end

  fun errNoType pos id =
    error pos ("Type " ^ S.name id ^ " not recognized")

  fun errNoVar pos id =
    error pos ("Variable " ^ S.name id ^ " not recognized")

  fun errBadType pos expect actual =
    error pos ("Type "
               ^ strTy actual
               ^ " is incompatible with expected type "
               ^ strTy expect)

  fun errBadOper pos expects actual1 actual2 =
    error pos ("Operator expects "
               ^ String.concatWith ", or " (map strTy expects)
               ^ ", but found " ^ strTy actual1 ^ " and "  ^ strTy actual2)

  (* Type Conversion and Comparison *)

  (* actualTy : T.ty -> pos -> T.ty *)
  fun actualTy ty pos =
    case ty of
      T.NAME (n, rty) =>
        (case !rty of
           NONE => (errNoType pos n; T.UNIT)
         | SOME ty' => actualTy ty' pos)
    |  _ => ty

  (* mostSpecific : T.ty -> T.ty -> T.ty *)
  fun mostSpecific t1 t2 =
    (* Return the record if comparing with a nil *)
    case (t1, t2) of
      (T.NIL, T.RECORD _) => t2
    | (T.RECORD _, T.NIL) => t1
    | (_, _) => t1

  (* Checks *)

  (* checkTyCompat : T.ty -> T.ty -> pos -> unit *)
  fun checkTyCompat et at pos =
    let
      val et' = actualTy et pos
      val at' = actualTy at pos
    in
      (* Either types are equal or one is a record and the other is nil *)
      if et' = at'
        then ()
        else case (et', at') of
               (T.NIL, T.RECORD _) => ()
             | (T.RECORD _, T.NIL) => ()
             | (_, _) => errBadType pos et' at'
    end

  (* checkNoDup : S.symbol list -> pos list -> unit *)
  fun checkNoDup [] _ = ()
    | checkNoDup (sym :: rest) (pos :: poss) =
        if List.all (fn s => sym <> s) rest
          then checkNoDup rest poss
          else error pos ("Duplicate name " ^ S.name sym)
    (* Safe to ignore other cases, lists have same len by construction *)
    | checkNoDup _ _ = ErrorMsg.impossible "checkNoDup"

  (* checkArgs : T.ty list -> T.ty list -> S.symbol -> pos -> unit *)
  fun checkArgs [] [] _ _ = ()
    | checkArgs _ [] func pos =
        error pos ("Too few arguments for " ^ S.name func)
    | checkArgs [] _ func pos =
        error pos ("Too many arguments for " ^ S.name func)
    | checkArgs (form :: formals) (arg :: args) func pos =
        (checkTyCompat form arg pos;
         checkArgs formals args func pos)

  (* checkNames : S.symbol -> S.symbol -> pos -> unit *)
  fun checkNames s1 s2 pos =
    let
      val n1 = S.name s1
      val n2 = S.name s2
    in
      if (n1 <> n2)
        then error pos ("Names " ^ n1 ^ " and " ^ n2 ^ " do not match")
        else ()
    end

  (* checkWritable : S.symbol -> E.tenv -> pos -> unit *)
  fun checkWritable name tenv pos =
    (case S.look (tenv, name) of
       SOME (E.VARentry {access, ty, rw}) =>
         if rw <> E.RW
           then error pos (S.name name ^ " is read-only")
           else ()
     (* Safe to ignore other cases since we already checked that name is a var *)
     | _ => ErrorMsg.impossible "checkWritable")

  (* checkFields : (S.symbol * T.ty) list ->
                   A.efield list ->
                   T.ty list ->
                   S.symbol ->
                   pos ->
                   unit *)
  fun checkFields [] [] _ _ _ = ()
    | checkFields _ [] _ typ pos =
        error pos ("Too few fields for " ^ S.name typ)
    | checkFields [] _ _ typ pos =
        error pos ("Too many fields for " ^ S.name typ)
    | checkFields ((fname, fty) :: ftys)
                  ((fname', _, fpos) :: fields)
                  (fty' :: ftys')
                  typ
                  pos =
        (checkNames fname fname' fpos;
         checkTyCompat fty fty' fpos;
         checkFields ftys fields ftys' typ pos)
    (* Safe to ignore other cases, lists 2 and 3 have same len by construction *)
    | checkFields _ _ _ _ _ = ErrorMsg.impossible "checkFields"

  (* checkInLoop : int -> pos -> unit *)
  fun checkInLoop 0 pos = error pos "Break must be in a loop"
    | checkInLoop _ _ = ()

  (* checkNoCycle : E.tenv -> S.symbol -> S.symbol list -> pos -> unit *)
  fun checkNoCycle tenv n seen pos =
    (* Follow the references until a non-NAME type or a previously seen
       NAME is reached *)
    if List.find (fn s => S.name n = S.name s) seen <> NONE
      then error pos ("Type " ^ S.name n ^ " is involved in a cycle")
      else
        case S.look (tenv, n) of
        (* Safe to ignore NONE since we already added n to tenv *)
          NONE => ErrorMsg.impossible "checkNoCycle"
        | SOME (T.NAME (_, rty)) =>
            (case !rty of
               NONE => error pos (S.name n ^ " references an undefined type")
             | SOME (T.NAME (nxt, _)) => checkNoCycle tenv nxt (n :: seen) pos
             | _ => ())
        | _ => ()

  (* Misc Functions *)

  (* looks : E.tenv -> S.symbol list -> pos list -> T.ty list *)
  fun looks _ [] _ = []
    | looks tenv (sym :: syms) (pos :: poss) =
        (case S.look (tenv, sym) of
           NONE => (errNoType pos sym; T.UNIT)
         | SOME ty => ty) :: looks tenv syms poss
    (* Safe to ignore other cases, lists have same len by construction *)
    | looks _ _ _ = ErrorMsg.impossible "looks"

  (* getVarName : A.var -> S.symbol *)
  fun getVarName (A.SimpleVar (n, _)) = n
    | getVarName (A.FieldVar (v, _, _)) = getVarName v
    | getVarName (A.SubscriptVar (v, _, _)) = getVarName v

  (* Classify operations by allowed argument types *)
  datatype opTy = ARITH
                | INEQ
                | EQ

  (* getOpTy : A.oper -> opTy *)
  fun getOpTy A.PlusOp = ARITH
    | getOpTy A.MinusOp = ARITH
    | getOpTy A.TimesOp = ARITH
    | getOpTy A.DivideOp = ARITH
    | getOpTy A.LtOp = INEQ
    | getOpTy A.LeOp = INEQ
    | getOpTy A.GtOp = INEQ
    | getOpTy A.GeOp = INEQ
    | getOpTy A.EqOp = EQ
    | getOpTy A.NeqOp = EQ

  (* Translation Functions *)

  (* transOp : {exp : ir_code, ty : T.ty} ->
               A.oper ->
               {exp : ir_code, ty : T.ty} ->
               Tr.level ->
               pos ->
               {exp : ir_code, ty : T.ty} *)
  fun transOp {exp=exp1, ty=ty1} oper {exp=exp2, ty=ty2} level pos =
    let val opTy = getOpTy oper in
      case opTy of
        ARITH =>
          (case actualTy ty1 pos of
             T.INT =>
               (checkTyCompat ty1 ty2 pos;
                {exp=Tr.arithExp oper exp1 exp2, ty=T.INT})
           | _ => (errBadOper pos [T.INT] ty1 ty2; default))
      | INEQ =>
          (case actualTy ty1 pos of
             T.INT => (checkTyCompat ty1 ty2 pos;
                       {exp=Tr.intCompExp oper exp1 exp2, ty=T.INT})
           | T.STRING => (checkTyCompat ty1 ty2 pos;
                          {exp=Tr.strCompExp oper exp1 exp2 level,
                           ty=T.INT})
           | _ => (errBadOper pos [T.INT, T.STRING] ty1 ty2; default))
      | EQ =>
          (case actualTy ty1 pos of
             T.INT => (checkTyCompat ty1 ty2 pos;
                       {exp=Tr.intCompExp oper exp1 exp2, ty=T.INT})
           | T.STRING => (checkTyCompat ty1 ty2 pos;
                          {exp=Tr.strCompExp oper exp1 exp2 level,
                           ty=T.INT})
           | T.ARRAY _ => (checkTyCompat ty1 ty2 pos;
                           {exp=Tr.intCompExp oper exp1 exp2, ty=T.INT})
           | T.RECORD _ => (checkTyCompat ty1 ty2 pos;
                            {exp=Tr.intCompExp oper exp1 exp2, ty=T.INT})
           | T.NIL => (case actualTy ty2 pos of
                         T.RECORD _ =>
                           {exp=Tr.intCompExp oper exp1 exp2, ty=T.INT}
                       | T.NIL => (error pos "Cannot compare two nils"; default)
                       | ty2' => (errBadType pos T.NIL ty2'; default))
           | _ => (error pos ("Operator expects int, or string, or array, or record"
                              ^ ", but found " ^ strTy ty1 ^ " and " ^ strTy ty2);
                   default))
    end

  (* transTy : E.tenv -> A.ty -> T.ty *)
  fun transTy tenv (A.NameTy (id, pos)) =
        (case S.look (tenv, id) of
           NONE => (errNoType pos id; T.UNIT)
         | SOME ty => ty)
    | transTy tenv (A.RecordTy fields) =
        let
          val names = map #name fields
          val typs = map #typ fields
          val poss = map #pos fields
        in
          (* Field names must be unique within a record *)
          checkNoDup names poss;
          T.RECORD (ListPair.zip (names, looks tenv typs poss), ref ())
        end
    | transTy tenv (A.ArrayTy (id, pos)) =
        (case S.look (tenv, id) of
           NONE => (errNoType pos id; T.UNIT)
         | SOME ty => T.ARRAY (ty, ref ()))

  (* transExp : E.env -> E.tenv -> int -> Tr.level -> Temp.label -> A.exp
                -> {exp : ir_code, ty : T.ty} *)
  fun transExp env tenv loopLvl level done expr =
    let
      (* trExp : A.exp -> {exp : ir_code, ty : T.ty} *)
      fun trExp (A.VarExp v) = trVar v
        | trExp A.NilExp = {exp=Tr.nilExp (), ty=T.NIL}
        | trExp (A.IntExp z) = {exp=Tr.intExp z, ty=T.INT}
        | trExp (A.StringExp (s, _)) = {exp=Tr.strExp s, ty=T.STRING}
        | trExp (A.AppExp {func, args, pos}) =
            (case S.look (env, func) of
               NONE => (errNoVar pos func; default)
             | SOME (E.FUNentry {level=flevel, label, formals, result}) =>
                 let val trArgs = map trExp args in
                   checkArgs formals (map #ty trArgs) func pos;
                   {exp=Tr.appExp flevel level label (map #exp trArgs),
                    ty=result}
                 end
             | _ => (error pos (S.name func ^ " is a variable, not a function");
                     default))
        | trExp (A.OpExp {left, oper, right, pos}) =
            transOp (trExp left) oper (trExp right) level pos
        | trExp (A.RecordExp {fields, typ, pos}) =
            (case S.look (tenv, typ) of
               NONE => (errNoType pos typ; default)
             | SOME rty =>
                 (case actualTy rty pos of
                    T.RECORD (ftys, u) =>
                      let val trFs = map trExp (map #2 fields) in
                        checkFields ftys fields (map #ty trFs) typ pos;
                        {exp=Tr.recExp (map #exp trFs) level,
                         ty=T.RECORD (ftys, u)}
                      end
                  | _ => (error pos (S.name typ ^ " is "
                                     ^ strTy rty ^ ", not a record");
                          default)))
        | trExp (A.SeqExp []) = {exp=Tr.nilExp (), ty=T.UNIT}
        | trExp (A.SeqExp [(e, _)]) = trExp e
        | trExp (A.SeqExp ((e, _) :: es)) =
            let
              val {exp=irE, ty=tyE} = trExp e
              val {exp=irEs, ty=tyEs} = trExp (A.SeqExp es)
            in
              {exp=Tr.seqExp irE irEs, ty=tyE}
            end
        | trExp (A.AssignExp {var, exp, pos}) =
            let
              val {exp=irV, ty=tyV} = trVar var
              val {exp=irE, ty=tyE} = trExp exp
            in
              (checkTyCompat tyV tyE pos;
               (* Check that var is not read-only *)
               checkWritable (getVarName var) env pos;
               {exp=Tr.asgnExp irV irE, ty=T.UNIT})
            end
        | trExp (A.IfExp {test, then', else', pos}) =
            let
              val {exp=irTst, ty=tyTst} = trExp test
              val {exp=irThn, ty=tyThn} = trExp then'
            in
              checkTyCompat T.INT tyTst pos;
              case else' of
                (* If no else, then branch must be unit *)
                NONE => (checkTyCompat T.UNIT tyThn pos;
                         {exp=Tr.ifThenExp irTst irThn,
                          ty=T.UNIT})
                (* If else, branches must match *)
              | SOME else'' => let val {exp=irEls, ty=tyEls} = trExp else'' in
                                 checkTyCompat tyThn tyEls pos;
                                 (* Return the record if choosing between record and nil *)
                                 {exp=Tr.ifThenElseExp irTst
                                                       irThn
                                                       irEls,
                                  ty=mostSpecific tyThn tyEls}
                               end
            end
        | trExp (A.WhileExp {test, body, pos}) =
            (* Increment the loop level within the body *)
            let
              val wDone = Temp.newlabel ()
              val {exp=irTst, ty=tyTst} = trExp test
              val {exp=irBdy, ty=tyBdy} = transExp env tenv
                                                   (loopLvl + 1) level wDone
                                                   body
            in
              (checkTyCompat T.INT tyTst pos;
               checkTyCompat T.UNIT tyBdy pos;
               {exp=Tr.whileExp irTst irBdy done, ty=T.UNIT})
            end
        | trExp (A.ForExp {var={name, ...}, lo, hi, body, pos}) =
            let
              val fDone = Temp.newlabel ()
              (* Allocate loop variable and mark read-only *)
              val acc = Tr.allocInFrame level
              val entry = E.VARentry {access=acc, ty=T.INT, rw=E.RO}
              val env' = S.enter (env, name, entry)
              val {exp=irLo, ty=tyLo} = trExp lo
              val {exp=irHi, ty=tyHi} = trExp hi
              (* Increment the loop level within the body *)
              val {exp=irBdy, ty=tyBdy} = transExp env' tenv
                                                   (loopLvl + 1) level fDone
                                                   body
            in
              checkTyCompat T.INT tyLo pos;
              checkTyCompat T.INT tyHi pos;
              checkTyCompat T.UNIT tyBdy pos;
              {exp=Tr.forExp acc level irLo irHi irBdy done,
               ty=T.UNIT}
            end
        | trExp (A.BreakExp pos) =
            (checkInLoop loopLvl pos;
             {exp=Tr.breakExp done, ty=T.UNIT})
        | trExp (A.LetExp {decs, body, pos}) =
            let
              val (env', tenv', irs) = transDecs env tenv
                                                 loopLvl level done
                                                 decs
              (* Evaluate the body with the augmented environments *)
              val {exp=trBdy, ty=tyBdy} = transExp env' tenv'
                                                   loopLvl level done
                                                   body
            in
              {exp=Tr.letExp irs trBdy, ty=tyBdy}
            end
        | trExp (A.ArrayExp {typ, size, init, pos}) =
            (case S.look (tenv, typ) of
               NONE => (errNoType pos typ; default)
             | SOME ty =>
                 (case actualTy ty pos of
                    T.ARRAY (aty, u) =>
                      let
                        val {exp=irSz, ty=tySz} = trExp size
                        val {exp=irInit, ty=tyInit} = trExp init
                      in
                        (checkTyCompat T.INT tySz pos;
                         checkTyCompat aty tyInit pos;
                         {exp=Tr.arrExp irSz irInit level,
                          ty=T.ARRAY (aty, u)})
                      end
                  | ty' => (error pos (S.name typ ^ " is "
                                       ^ strTy ty' ^ ", not an array");
                            default)))
      (* trVar : A.var -> {exp : ir_code, ty : T.ty} *)
      and trVar (A.SimpleVar (id, pos)) =
            (case S.look (env, id) of
               NONE => (errNoVar pos id; default)
             | SOME (E.VARentry {access, ty, rw}) =>
                 {exp=Tr.simpleVar access level, ty=actualTy ty pos}
             | _ => (error pos (S.name id ^ " is a function, not a variable");
                     default))
        | trVar (A.FieldVar (v, id, pos)) =
            let val {exp=irV, ty=tyV} = trVar v in
              case actualTy tyV pos of
                T.RECORD (fs, _) =>
                  (* Check field name is valid for the record and that types match *)
                  let
                    val idxs = List.tabulate (length fs, (fn n => n))
                    val fsIdx = ListPair.zip (fs, idxs)
                    val findFunc = (fn ((n, _), _) => S.name n = S.name id)
                  in
                    case List.find findFunc fsIdx of
                      NONE => (error pos ("Invalid field name " ^ S.name id);
                               default)
                    | SOME ((_, fty), idx) => {exp=Tr.fieldVar irV idx,
                                               ty=actualTy fty pos}
                  end
              | ty => (error pos ("Cannot access field of "
                                 ^ strTy ty ^ ", only records");
                       default)
            end
        | trVar (A.SubscriptVar (v, idx, pos)) =
            let
              val {exp=irV, ty=tyV} = trVar v
              val {exp=irIdx, ty=tyIdx} = trExp idx
            in
              (case actualTy tyV pos of
                 T.ARRAY (aty, _) =>
                   (checkTyCompat T.INT tyIdx pos;
                    {exp=Tr.subsVar irV irIdx level,
                     ty=actualTy aty pos})
               | ty => (error pos ("Cannot access subscript of "
                                   ^ strTy ty ^ ", only arrays");
                        default))
            end
     in
       trExp expr
    end
  (* transDec : E.env -> E.tenv -> int -> Tr.level -> Temp.label -> A.dec
                -> E.env * E.tenv * ir_code option *)
  and transDec env tenv loopLvl level done
               (A.VarDec {var={name, ...}, typ, init, pos}) =
        let
          val {exp=irInit, ty=tyInit} = transExp env tenv
                                                 loopLvl level done
                                                 init
          val tyInit' = actualTy tyInit pos
          (* Allocate new local and initialize *)
          val acc = Tr.allocInFrame level
          val trV = Tr.asgnExp (Tr.simpleVar acc level) irInit
        in
          case typ of
            (* If no type provided, use type of initializer, but can't be nil *)
            NONE =>
              let
                val entry = E.VARentry {access=acc, ty=tyInit', rw=E.RW}
                val env' = S.enter (env, name, entry)
              in
                case tyInit' of
                  T.NIL => (error pos "Must provide type for nil";
                            (env, tenv, NONE))
                | _ => (env', tenv, SOME trV)
              end
          (* If type provided, must match type of initializer *)
          | SOME (tyName, tyPos) =>
              (case S.look (tenv, tyName) of
                 NONE => (errNoType pos tyName; (env, tenv, NONE))
               | SOME typ' =>
                   let
                     val entry = E.VARentry {access=acc, ty=typ', rw=E.RW}
                     val env' = S.enter (env, name, entry)
                   in
                     checkTyCompat typ' tyInit' pos;
                     (env', tenv, SOME trV)
                   end)
        end
    | transDec env tenv _ level _ (A.FunctionDec decs) =
        let
          (* transFunHeads : E.env -> A.fundec list -> E.env *)
          (* Create the FUNentries *)
          fun transFunHeads env ([] : A.fundec list) = env
            | transFunHeads env ({name, params, result, ...} :: decs) =
                let
                  val formnames = map #name (map #var params)
                  val formtys = looks tenv (map #typ params) (map #pos params)
                  val rty =
                    (case result of
                       (* Procedures have return type unit *)
                       NONE => T.UNIT
                       (* Functions must provide a return type *)
                     | SOME (rtyname, rpos) =>
                         (case S.look (tenv, rtyname) of
                            NONE => (errNoType rpos rtyname; T.UNIT)
                          | SOME rty' => rty'))
                  (* Create a new level for the function *)
                  val fescapes = map (fn _ => ()) params (* can be () since ignored *)
                  val (flevel, _) = Tr.newLevel {parent=level, formals=fescapes}
                  val entry = E.FUNentry {level=flevel, label=Temp.newlabel (),
                                          formals=formtys, result=rty}
                in
                  (* Parameter names must be unique within the function *)
                  checkNoDup formnames (map #pos params);
                  transFunHeads (S.enter (env, name, entry)) decs
                end

          (* enterParams : E.Env -> S.symbol list -> T.ty list -> level -> int
                           -> E.Env *)
          (* Create VARentries for the parameters *)
          fun enterParams env [] [] _ _ = env
            | enterParams env (name :: names) (ty :: tys) flevel n =
                let
                  (* Get offset for formal *)
                  val acc = Tr.allocFormal flevel n
                  val entry = E.VARentry {access=acc, ty=ty, rw=E.RW}
                in
                  enterParams (S.enter (env, name, entry)) names tys flevel (n + 1)
                end
            (* Safe to ignore other cases, lists have same len by construction *)
            | enterParams _ _ _ _ _ = ErrorMsg.impossible "enterParams"

          (* transFuns : E.env -> A.fundec list
             -> Temp.label * ir_code * Tr.level list *)
          fun transFuns _ ([] : A.fundec list) = []
            | transFuns env ({name, params, body, pos, ...} :: decs) =
                (case S.look (env, name) of
                   SOME (E.FUNentry {level=flevel, label, formals, result}) =>
                     let
                       (* Add parameters to the enviroment within the body *)
                       val names = map #name (map #var params)
                       val env' = enterParams env names formals flevel 0
                       val fDone = Temp.newlabel ()
                       (* Reset loop level to 0 within function body *)
                       val {exp=irBdy, ty=tyBdy} = transExp env' tenv
                                                            0 flevel fDone
                                                            body
                     in
                       checkTyCompat result tyBdy pos;
                       (label, irBdy, flevel) :: transFuns env decs
                     end
                 (* Safe to ignore NONE, name added in transFunHeads *)
                 | _ => ErrorMsg.impossible "transFun")

          val env' = transFunHeads env decs
          val fs = transFuns env' decs
        in
          checkNoDup (map #name decs) (map #pos decs);
          (* Create a fragment for each function *)
          map (fn (f, bdy, lvl) => Tr.funFrag f bdy lvl) fs;
          (env', tenv, NONE)
        end
    | transDec env tenv _ _ _ (A.TypeDec decs) =
        let
          (* transTyHeads : E.tenv -> S.symbol list -> E.tenv *)
          (* Create a placeholder type for each declaration *)
          fun transTyHeads tenv [] = tenv
            | transTyHeads tenv (name :: names) =
                transTyHeads (S.enter (tenv, name, T.NAME (name, ref NONE))) names

          (* transTyHeads : E.tenv ->
                            {name : S.symbol, ty : A.ty, pos : pos} ->
                            E.tenv *)
          fun transTys tenv [] = tenv
            | transTys tenv ({name, ty, pos} :: decs) =
                (case S.look (tenv, name) of
                   SOME (T.NAME (_, rty)) =>
                     (* Replace the placeholder with an actual type *)
                     (rty := SOME (transTy tenv ty);
                      transTys tenv decs)
                 (* Safe to ignore NONE, name added in transTyHeads *)
                 | _ => ErrorMsg.impossible "transTys")

          val tenv' = transTyHeads tenv (map #name decs)
          val tenv'' = transTys tenv' decs
        in
          (* Check for infinite cycles *)
          map (fn {name, pos, ...} => checkNoCycle tenv'' name [] pos) decs;
          checkNoDup (map #name decs) (map #pos decs);
          (env, tenv'', NONE)
        end
  (* transDecs : E.env -> E.tenv -> int -> level -> Temp.label -> A.dec list
                 -> E.env * E.tenv * ir_code list *)
  and transDecs env tenv _ _ _ [] = (env, tenv, [])
    | transDecs env tenv loopLvl level done (dec :: decs) =
        let
          val (env', tenv', ir) = transDec env tenv loopLvl level done dec
          val (env'', tenv'', irs) = transDecs env' tenv' loopLvl level done decs
        in
          case ir of
            NONE => (env'', tenv'', irs)
          | SOME ir' => (env'', tenv'', ir' :: irs)
        end

  (* Absyn.exp -> Frame.frag list *)
  fun transprog prog =
    let
      (* Create a level just below the top *)
      val (lvl, _) = Tr.newLevel {parent=Tr.outermost, formals=[]}
      val done = Temp.newlabel ()
      val {exp=ir, ...} = (Tr.reset ();
                          transExp E.base_env E.base_tenv 0 lvl done prog)
    in
       Tr.getResult ir lvl
    end
end