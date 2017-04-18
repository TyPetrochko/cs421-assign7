.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
L1:
	movl $1, %eax	#q
	movl %eax, %eax	#f
	jmp L0	#h
L0:
	movl %ebp,%esp
	popl %ebp
	ret

