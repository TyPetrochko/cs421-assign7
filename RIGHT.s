.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L8:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $3, %ecx	
	movl %ecx, %ecx	
	movl %ecx, %ecx	
	movl %ecx, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ecx	
	movl $L6, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ecx, %ecx	
	movl %ecx, %ecx
	movl %ebx, %ebx	
	addl %ebx, %ecx
	movl %ecx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call chr
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L7	
L7:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L6:
	.long 1
	.string "0"
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L10:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	je L3
	jmp L4
L4:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %ecx	
	movl 12(%ecx), %ecx	
	movl %ecx, %ecx
	movl $1, %edx	
	subl %edx, %ecx
	movl %ecx, %ecx	
	movl %ecx, %ecx	
	movl %ecx, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %eax	
	movl %eax, %eax	
	movl %eax, %eax
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
L5:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L9	
L3:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax	
	jmp L5	
L9:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

