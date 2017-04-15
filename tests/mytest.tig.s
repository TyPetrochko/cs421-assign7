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
   MOVE(
    MEM[4](
     BINOP(PLUS,
      TEMP T101,
      CONST ~88)),
    NAME L0),
   ESEQ(
    EXP(
     MEM[4](
      BINOP(PLUS,
       TEMP T101,
       CONST ~84))),
    CONST 1))))
tigermain:
	pushl %ebp
	movl %esp,%ebp
L2:
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
	movl %ebp, %ebx
TODO THIS SHOULD BE CAUGHT: L0:
	movl ~88%ebx, %ebx
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
	movl %ebp, %ebx
TODO THIS SHOULD BE CAUGHT: L0:
	movl ~88%ebx, %ebx
	movl %ebp, %ebx
	movl ~84(%ebx), %ebx
	TODO THIS IS WRONG: movl %ebx, %eax
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
	movl %ebp, %ebx
TODO THIS SHOULD BE CAUGHT: L0:
	movl ~88%ebx, %ebx
	movl %ebp, %ebx
	movl ~84(%ebx), %ebx
	TODO THIS IS WRONG: movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
	movl %ebp, %ebx
TODO THIS SHOULD BE CAUGHT: L0:
	movl ~88%ebx, %ebx
	movl %ebp, %ebx
	movl ~84(%ebx), %ebx
	TODO THIS IS WRONG: movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
	jmp L1
L2:
	movl %ebp, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %eax, %ebx
	movl %eax, %ecx
	movl (%ebx), %ecx
	movl %ebp, %ebx
TODO THIS SHOULD BE CAUGHT: L0:
	movl ~88%ebx, %ebx
	movl %ebp, %ebx
	movl ~84(%ebx), %ebx
	TODO THIS IS WRONG: movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
	jmp L1
L1:
	movl %ebp,%esp
	popl %ebp
	ret

L0:
	.string "Hello"
