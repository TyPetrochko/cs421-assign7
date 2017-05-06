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
L20:
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
	movl %edi, 4(%esp)	
	movl %esi, %esi	
	movl %esi, -0(%esp)	
	call initArray
	movl %eax, %esi
	movl %esi, %esi	
	movl $10, %edi	
	movl %esi, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	movl %edi, (%edx)	
	movl %esi, %esi	
	movl %ebx, %ebx	
	movl %esi, (%ebx)	
	movl $L1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $-0, %ebx	
	movl $1, %esi	
	cmpl %ebx, %esi
	jge L2
	jmp L4
L4:
	movl $L6, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call exit
	movl %eax, %ebx
L5:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %esi	
	movl $L1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %esi, %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl $4, %edi	
	imul %edi, %esi
	addl %esi, %ebx
	movl (%ebx), %ebx	
	movl $L7, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $-0, %ebx	
	movl $9, %esi	
	cmpl %ebx, %esi
	jge L8
	jmp L10
L10:
	movl $L12, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call exit
	movl %eax, %ebx
L11:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %esi	
	movl $L7, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %esi, %ebx	
	movl %ebx, %ebx
	movl $9, %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl $4, %edi	
	imul %edi, %esi
	addl %esi, %ebx
	movl (%ebx), %ebx	
	movl $L13, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $-0, %ebx	
	movl $4, %esi	
	cmpl %ebx, %esi
	jge L14
	jmp L16
L16:
	movl $L18, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call exit
	movl %eax, %ebx
L17:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %esi	
	movl $L13, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %esi, %ebx	
	movl %ebx, %ebx
	movl $4, %esi	
	movl %esi, %esi
	movl $1, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl $4, %edi	
	imul %edi, %esi
	addl %esi, %ebx
	movl (%ebx), %ebx	
	movl %ebx, %eax	
	jmp L19	
L2:
	movl $L1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl $1, %esi	
	cmpl %ebx, %esi
	jge L4
	jmp L3
L3:
	jmp L5	
L8:
	movl $L7, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl $9, %esi	
	cmpl %ebx, %esi
	jge L10
	jmp L9
L9:
	jmp L11	
L14:
	movl $L13, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl $4, %esi	
	cmpl %ebx, %esi
	jge L16
	jmp L15
L15:
	jmp L17	
L19:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L18:
	.long 21
	.string "Error: out-of-bounds\n"
L13:
	.long 14
	.string "RANDOM ACCESS\n"
L12:
	.long 21
	.string "Error: out-of-bounds\n"
L7:
	.long 12
	.string "UPPER BOUND\n"
L6:
	.long 21
	.string "Error: out-of-bounds\n"
L1:
	.long 12
	.string "LOWER BOUND\n"
