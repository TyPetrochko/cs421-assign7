.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $260, %esp 	# make frame space
	movl %ebx, -248(%ebp) 	# saving ebx
	movl %esi, -252(%ebp) 	# saving esi
	movl %edi, -256(%ebp) 	# saving edi
L4:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-244, %esi	
	addl %esi, %ebx
	movl %ebx, %ebx	
	movl $8, %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, -0(%esp) # potato	
	call allocRecord
	movl %eax, %esi
	movl %esi, %esi	
	movl $L1, -0(%esi)	
	movl $1000, 4(%esi)	
	movl %esi, %esi	
	movl %ebx, %ebx	
	movl %esi, (%ebx)	
	movl $L2, %ebx	 # This should be caught!
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl $-0, %edi	
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L3	
L3:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L2:
	.long 8
	.string "Somebody"
L1:
	.long 6
	.string "Nobody"
