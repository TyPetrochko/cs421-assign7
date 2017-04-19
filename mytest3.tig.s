.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $100, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L5:
	movl %ebp, %eax	
	movl %eax, %eax	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %ebx	
	movl $L3, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, %eax	
	movl %ebx, %ecx
	addl %eax, %ecx
	movl %ecx, %eax	
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
	jmp L4	
L4:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L3:
	.long 1
	.string "0"

.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $92, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L7:
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebp, %ecx	
	movl 12(%ecx), %ecx	
	movl %ebx, %eax
	addl %ecx, %eax
	movl %eax, %eax	
	jmp L6	
L6:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

