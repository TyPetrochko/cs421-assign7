MOVE(
 TEMP T100,
 ESEQ(
  MOVE(
   MEM[4](
    BINOP(PLUS,
     TEMP T101,
     CONST ~84)),
   ESEQ(
    SEQ(
     MOVE(
      TEMP T116,
      CALL(
       NAME allocRecord,
        CONST 8)),
     SEQ(
      MOVE(
       MEM[4](
        BINOP(PLUS,
         TEMP T116,
         CONST 0)),
       NAME L0),
      MOVE(
       MEM[4](
        BINOP(PLUS,
         TEMP T116,
         CONST 4)),
       CONST 1000))),
    TEMP T116)),
  ESEQ(
   MOVE(
    ESEQ(
     EXP(
      CALL(
       NAME checkNilRecord,
        MEM[4](
         BINOP(PLUS,
          TEMP T101,
          CONST ~84)))),
     MEM[4](
      BINOP(PLUS,
       MEM[4](
        BINOP(PLUS,
         TEMP T101,
         CONST ~84)),
       BINOP(MUL,
        CONST 0,
        CONST 4)))),
    NAME L1),
   ESEQ(
    EXP(
     MEM[4](
      BINOP(PLUS,
       TEMP T101,
       CONST ~84))),
    CONST 1))))
