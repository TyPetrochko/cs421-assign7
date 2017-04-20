.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $152, %esp 	# make frame space
	movl %ebx, -136(%ebp) 	# saving ebx
	movl %esi, -140(%ebp) 	# saving esi
	movl %edi, -144(%ebp) 	# saving edi
L2:
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl $1, %eax	
	movl $10, %edx
	addl %eax, %edx
	movl %edx, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax
	movl %eax, %eax	
	movl $10, %ebx	
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L1	
L1:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

