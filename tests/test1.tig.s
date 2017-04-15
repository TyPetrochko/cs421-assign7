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
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %ecx, %ecx
	movl (%ebx), %ecx
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %ecx, %ecx
	movl (%ebx), %ecx
	movl %ebx, %ebx
	movl ~84(%ebx), %ebx
	movl %ebx, %eax
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %ecx, %ecx
	movl (%ebx), %ecx
	movl %ebx, %ebx
	movl ~84(%ebx), %ebx
	movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %ecx, %ecx
	movl (%ebx), %ecx
	movl %ebx, %ebx
	movl ~84(%ebx), %ebx
	movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
L0:
	jmp *%eax
L1:
	movl %ebx, %ebx
	movl $~84, %ecx
	addl %ebx, %ebx
	addl %ecx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %eax, %ebx
	movl %ebx, %ebx
	movl %ecx, %ecx
	movl (%ebx), %ecx
	movl %ebx, %ebx
	movl ~84(%ebx), %ebx
	movl %ebx, %eax
	movl $1, %ebx
	movl %eax, %ebx
L0:
	jmp *%eax
L0:
	movl %ebp,%esp
	popl %ebp
	ret

