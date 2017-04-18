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
LABEL L1
MOVE(
 TEMP T110,
 BINOP(PLUS,
  TEMP T101,
  CONST ~84))
MOVE(
 TEMP T109,
 CALL(
  NAME initArray,
   CONST 10,
   CONST 0))
MOVE(
 MEM[4](
  TEMP T110),
 TEMP T109)
EXP(
 MEM[4](
  BINOP(PLUS,
   TEMP T101,
   CONST ~84)))
MOVE(
 TEMP T100,
 CONST 1)
JUMP(
 NAME L0)
LABEL L0
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
L1:
	movl %ebp, %eax	
	movl $-84, %ebx	
	addl %eax, %eax	
	addl %ebx, %eax	
	movl %eax, %ebx	
	call initArray
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl -84(%eax), %eax	
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L0	
L0:
	movl %ebp,%esp
	popl %ebp
	ret

