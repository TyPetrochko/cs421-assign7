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
L3:
	movl $L1, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl $3, %ebx
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
	jmp L2	
L2:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L1:
	.long 1
	.string "0"
