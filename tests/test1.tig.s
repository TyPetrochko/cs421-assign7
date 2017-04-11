EXP(
 ESEQ(
  MOVE(
   MEM[4](
    BINOP(PLUS,
     TEMP T101,
     CONST ~84)),
   ESEQ(
    MOVE(
     TEMP T116,
     CALL(
      NAME initArray,
       CONST 10,
       CONST 0)),
    TEMP T116)),
  ESEQ(
   EXP(
    MEM[4](
     BINOP(PLUS,
      TEMP T101,
      CONST ~84))),
   CONST 1)))
