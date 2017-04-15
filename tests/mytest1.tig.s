MOVE(
 TEMP T100,
 CONST 1)
tigermain:
	pushl %ebp
	movl %esp,%ebp
L1:
L1:
	movl $1, %ebx
	movl %eax, %ebx
L1:
	movl $1, %ebx
	movl %eax, %ebx
L0:
	jmp *%eax
L1:
	movl $1, %ebx
	movl %eax, %ebx
L0:
	jmp *%eax
L0:
	movl %ebp,%esp
	popl %ebp
	ret

