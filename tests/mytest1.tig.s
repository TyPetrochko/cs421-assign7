MOVE(
 TEMP T100,
 CONST 1)
LABEL L1
MOVE(
 TEMP T100,
 CONST 1)
JUMP(
 NAME L0)
LABEL L0
tigermain:
	pushl %ebp
	movl %esp,%ebp
LABEL: L1:
	movl $1, %eax	#q
	movl %eax, %eax	#f
	jmp L0	#h
LABEL: L0:
	movl %ebp,%esp
	popl %ebp
	ret

