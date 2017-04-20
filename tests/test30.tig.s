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
L7:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-244, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl $10, %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call initArray
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $10, %esi	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl $2, %esi	
	cmpl %ebx, %esi
	jge L1
	jmp L3
L3:
	movl $L5, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	# This is a no-op
	movl $1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call exit
	movl %eax, %ebx
	# This is a no-op
L4:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $2, %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl $4, %edi	
	imul %edi, %esi
	addl %esi, %ebx
	movl (%ebx), %ebx	
	# This is a no-op
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L6	
L1:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl $2, %esi	
	cmpl %ebx, %esi
	jge L3
	jmp L2
L2:
	jmp L4	
L6:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L5:
	.long 21
	.string "Error: out-of-bounds\n"
