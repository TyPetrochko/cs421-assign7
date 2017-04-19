#MOVE(
##TEMP T100,
##BINOP(PLUS,
###BINOP(PLUS,
####CONST 1,
####CONST 2),
###CONST 3))
#LABEL L2
#MOVE(
##TEMP T100,
##BINOP(PLUS,
###BINOP(PLUS,
####CONST 1,
####CONST 2),
###CONST 3))
#JUMP(
##NAME L1)
#LABEL L1
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $92, %esp
L2:
	movl $2, %ecx	
	movl $1, %ebx
	addl %ecx, %ebx
	movl $3, %ecx	
	movl %ebx, %eax
	addl %ecx, %eax
	movl %eax, %eax	
	jmp L1	
L1:
	movl %ebp,%esp
	popl %ebp
	ret

