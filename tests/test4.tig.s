.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $260, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L7:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $10, %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp) # potato	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp) # potato	
	call L1
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L6	
L6:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $260, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L9:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L3
	jmp L4
L4:
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl %esi, %esi	
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %edi
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 4(%esp) # potato	
	movl %esi, %esi	
	movl %esi, -0(%esp) # potato	
	call L1
	movl %eax, %esi
	movl %esi, %esi	
	movl %ebx, %ebx	
	movl %ebx, %ebx
	movl %esi, %esi	
	imul %esi, %ebx
	movl %ebx, %ebx	
L5:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L8	
L3:
	movl $1, %ebx	
	movl %ebx, %ebx	
	jmp L5	
L8:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

