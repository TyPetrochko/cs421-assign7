.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $252, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L2:
	movl $1, %ebx	
	movl %ebx, %ebx
	movl $2, %esi	
	movl %esi, %esi
	movl $3, %edi	
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $5, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl $6, %ecx	
	movl	%ecx, -12(%ebp) # save pseudo-register
	movl	-12(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -12(%ebp) # save pseudo-register
	movl $7, %ecx	
	movl	%ecx, -16(%ebp) # save pseudo-register
	movl	-16(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -16(%ebp) # save pseudo-register
	movl $8, %ecx	
	movl	%ecx, -20(%ebp) # save pseudo-register
	movl	-20(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -20(%ebp) # save pseudo-register
	movl $9, %ecx	
	movl	%ecx, -24(%ebp) # save pseudo-register
	movl	-24(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -24(%ebp) # save pseudo-register
	movl $10, %ecx	
	movl	%ecx, -28(%ebp) # save pseudo-register
	movl	-28(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -28(%ebp) # save pseudo-register
	movl $11, %ecx	
	movl	%ecx, -32(%ebp) # save pseudo-register
	movl	-32(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -32(%ebp) # save pseudo-register
	movl $12, %ecx	
	movl	%ecx, -36(%ebp) # save pseudo-register
	movl	-36(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -36(%ebp) # save pseudo-register
	movl $13, %ecx	
	movl	%ecx, -40(%ebp) # save pseudo-register
	movl	-40(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -40(%ebp) # save pseudo-register
	movl $14, %ecx	
	movl	%ecx, -44(%ebp) # save pseudo-register
	movl	-44(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -44(%ebp) # save pseudo-register
	movl $15, %ecx	
	movl	%ecx, -48(%ebp) # save pseudo-register
	movl	-48(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -48(%ebp) # save pseudo-register
	movl $16, %ecx	
	movl	%ecx, -52(%ebp) # save pseudo-register
	movl	-52(%ebp), %ecx # load pseudo-register
	movl	-48(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -48(%ebp) # save pseudo-register
	movl	-48(%ebp), %ecx # load pseudo-register
	movl	-44(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -44(%ebp) # save pseudo-register
	movl	-44(%ebp), %ecx # load pseudo-register
	movl	-40(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -40(%ebp) # save pseudo-register
	movl	-40(%ebp), %ecx # load pseudo-register
	movl	-36(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -36(%ebp) # save pseudo-register
	movl	-36(%ebp), %ecx # load pseudo-register
	movl	-32(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -32(%ebp) # save pseudo-register
	movl	-32(%ebp), %ecx # load pseudo-register
	movl	-28(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -28(%ebp) # save pseudo-register
	movl	-28(%ebp), %ecx # load pseudo-register
	movl	-24(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -24(%ebp) # save pseudo-register
	movl	-24(%ebp), %ecx # load pseudo-register
	movl	-20(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -20(%ebp) # save pseudo-register
	movl	-20(%ebp), %ecx # load pseudo-register
	movl	-16(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -16(%ebp) # save pseudo-register
	movl	-16(%ebp), %ecx # load pseudo-register
	movl	-12(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -12(%ebp) # save pseudo-register
	movl	-12(%ebp), %ecx # load pseudo-register
	movl	-8(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	addl %edi, %esi
	addl %esi, %ebx
	movl %ebx, %eax	
	jmp L1	
L1:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

