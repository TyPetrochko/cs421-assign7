.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $144, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L4:
	movl $L1, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl $3, %eax	
	movl %eax, %eax
	movl $3, %ebx	
	imul %ebx, %eax
	movl %eax, %ebx	
	movl $L2, %eax	
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
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L3	
L3:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L2:
	.long 1
	.string "0"
L1:
	.long 10
	.string "answer is "
