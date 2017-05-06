.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $264, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L8:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %esi, %esi	
	movl $L6, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L7	
L7:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L6:
	.long 4
	.string "str2"
.text
	.align 4
.globl L2
	.type	L2,@function

L2:
	pushl %ebp
	movl %esp,%ebp
	subl $264, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L10:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %esi	
	movl $L5, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %eax	
	jmp L9	
L9:
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
L12:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L2
	movl %eax, %ebx
	movl %ebx, %eax	
	jmp L11	
L11:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L5:
	.long 3
	.string "str"
