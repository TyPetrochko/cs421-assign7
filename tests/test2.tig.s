MOVE(
 TEMP T100,
 ESEQ(
  MOVE(
   MEM[4](
    BINOP(PLUS,
     TEMP T101,
     CONST ~84)),
   CALL(
    NAME initArray,
     CONST 10,
     CONST 0)),
  ESEQ(
   EXP(
    MEM[4](
     BINOP(PLUS,
      TEMP T101,
      CONST ~84))),
   CONST 1)))
tigermain:
	pushl %ebp
	movl %esp,%ebp
L1:
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
	movl %'dst0, %'dst0
	movl %'dst0, %'dst0
	movl ('s0), 'd0
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
	movl %'dst0, %'dst0
	movl %'dst0, %'dst0
	movl ('s0), 'd0
	movl %'dst0, %'dst0
	movl ~84('src[0]), 'dst0
	movl 's0, %eax
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
	movl %'dst0, %'dst0
	movl %'dst0, %'dst0
	movl ('s0), 'd0
	movl %'dst0, %'dst0
	movl ~84('src[0]), 'dst0
	movl 's0, %eax
	movl $1, 'dst0
	movl %100, 'd0
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
	movl %'dst0, %'dst0
	movl %'dst0, %'dst0
	movl ('s0), 'd0
	movl %'dst0, %'dst0
	movl ~84('src[0]), 'dst0
	movl 's0, %eax
	movl $1, 'dst0
	movl %100, 'd0
L0:
	jmp 's0
L1:
	movl %'dst0, %'dst0
	movl $~84, 'dst0
	addl 's0, 'dst0
	addl 's1, 'dst0
	movl %117, 'd0
	movl %'dst0, %'dst0
	movl %116, 'd0
	movl %'dst0, %'dst0
	movl %'dst0, %'dst0
	movl ('s0), 'd0
	movl %'dst0, %'dst0
	movl ~84('src[0]), 'dst0
	movl 's0, %eax
	movl $1, 'dst0
	movl %100, 'd0
L0:
	jmp 's0
L0:
	movl %ebp,%esp
	popl %ebp
	ret

