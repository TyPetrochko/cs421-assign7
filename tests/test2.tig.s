.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $264, %esp 	# make frame space
	movl %ebx, -248(%ebp) 	# saving ebx
	movl %esi, -252(%ebp) 	# saving esi
	movl %edi, -256(%ebp) 	# saving edi
L2:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-244, %esi	
	addl %esi, %ebx
	movl %ebx, %ebx	
	movl $10, %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi	
	movl $-0, %edi	
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 4(%esp) # potato	
	movl %esi, %esi	
	movl %esi, -0(%esp) # potato	
	call initArray
	movl %eax, %esi
	movl %esi, %esi	
	movl $10, %edi	
	movl %esi, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %edi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, %esi	
	movl %ebx, %ebx	
	movl %esi, (%ebx)	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L1	
L1:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

