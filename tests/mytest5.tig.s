.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $152, %esp 	# make frame space
	movl %ebx, -140(%ebp) 	# saving ebx
	movl %esi, -144(%ebp) 	# saving esi
	movl %edi, -148(%ebp) 	# saving edi
L8:
	movl $-0, %eax	
	movl %eax, -132(%ebp)	
	movl $100, %eax	
	movl %eax, -136(%ebp)	
L5:
	movl %ebp, %eax	
	movl -136(%eax), %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	cmpl %eax, %ebx
	jl L6
	jmp L0
L0:
	movl $-0, %eax	
	movl %eax, %eax	
	jmp L7	
L6:
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, -132(%ebp)	
	movl $L2, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %ebx	
	movl $L3, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %ebx, %ebx
	movl %eax, %eax	
	addl %eax, %ebx
	movl %ebx, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call chr
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl $L4, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	# This is a no-op
	jmp L5	
L7:
	movl -140(%ebp), %ebx 	# restoring ebx
	movl -144(%ebp), %esi 	# restoring esi
	movl -148(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L4:
	.long 29
	.string " bottles of beer on the wall\n"
L3:
	.long 1
	.string "0"
L2:
	.long 10
	.string "there are "
