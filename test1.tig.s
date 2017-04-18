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

