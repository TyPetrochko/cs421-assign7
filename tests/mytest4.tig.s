.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $96, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L7:
	movl $1, %eax	
	movl $3, %ebx	
	cmpl %eax, %ebx
	jg L3
	jmp L4
L4:
	movl $L2, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
L5:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L6	
L3:
	movl $L1, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
	jmp L5	
L6:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L2:
	.long 4
	.string "Bye\n"
L1:
	.long 3
	.string "Hi\n"
