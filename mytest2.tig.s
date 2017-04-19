.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $100, %esp
L5:
	movl %ebp, %eax	
	movl %eax, %eax	
	movl $3, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call chr
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $L3, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $5, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call chr
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L4	
L4:
	movl %ebp,%esp
	popl %ebp
	ret

L3:
	.long 8
	.string "then...\n"
#MOVE(
##TEMP T100,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12))))
#LABEL L7
#MOVE(
##TEMP T100,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12))))
#JUMP(
##NAME L6)
#LABEL L6
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $92, %esp
L7:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	addl %ebx, %eax	
	movl %eax, %eax	
	jmp L6	
L6:
	movl %ebp,%esp
	popl %ebp
	ret

