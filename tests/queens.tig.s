.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $280, %esp 	# make frame space
	movl %ebx, -264(%ebp) 	# saving ebx
	movl %esi, -268(%ebp) 	# saving esi
	movl %edi, -272(%ebp) 	# saving edi
L92:
	movl $8, -244(%ebp)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-248, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
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
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-252, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
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
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-256, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	addl %esi, %ebx
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
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
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -244(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %esi
	movl %esi, %esi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %esi
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-260, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	addl %esi, %ebx
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
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
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -244(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %esi
	movl %esi, %esi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %esi
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L2
	movl %eax, %ebx
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L91	
L91:
	movl -264(%ebp), %ebx 	# restoring ebx
	movl -268(%ebp), %esi 	# restoring esi
	movl -272(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L2
	.type	L2,@function

L2:
	pushl %ebp
	movl %esp,%ebp
	subl $264, %esp 	# make frame space
	movl %ebx, -248(%ebp) 	# saving ebx
	movl %esi, -252(%ebp) 	# saving esi
	movl %edi, -256(%ebp) 	# saving edi
L94:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L88
	jmp L89
L89:
	movl $-0, -244(%ebp)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jle L86
	jmp L22
L22:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L90:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L93	
L88:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	jmp L90	
L86:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L24
	jmp L26
L26:
	movl $L28, %ebx	
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
L27:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -248(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl (%esi), %esi	
	cmpl %ebx, %esi
	je L34
	jmp L35
L35:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L36:
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L44
	jmp L45
L45:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L46:
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L84
	jmp L85
L85:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L22
	jmp L87
L87:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, -244(%ebp)	
	jmp L86	
L24:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -248(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L26
	jmp L25
L25:
	jmp L27	
L34:
	movl $1, %ebx	
	movl %ebx, %esi	
	movl $-0, %ebx	
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	cmpl %ebx, %edi
	jge L29
	jmp L31
L31:
	movl $L33, %ebx	
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
L32:
	movl $-0, %ebx	
	movl %ebp, %edi	
	movl 8(%edi), %edi	
	movl -256(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -244(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebp, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $1, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $4, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	imul %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl (%edi), %edi	
	cmpl %ebx, %edi
	je L37
	jmp L38
L38:
	movl $-0, %ebx	
	movl %ebx, %esi	
L37:
	movl %esi, %ebx	
	movl %ebx, %ebx	
	jmp L36	
L29:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -256(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	cmpl %ebx, %edi
	jge L31
	jmp L30
L30:
	jmp L32	
L44:
	movl $1, %ebx	
	movl %ebx, %esi	
	movl $-0, %ebx	
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $7, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %edi
	cmpl %ebx, %edi
	jge L39
	jmp L41
L41:
	movl $L43, %ebx	
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
L42:
	movl $-0, %ebx	
	movl %ebp, %edi	
	movl 8(%edi), %edi	
	movl -260(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -244(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $7, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebp, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	subl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $1, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	addl %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $4, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl	-8(%ebp), %ecx # load pseudo-register
	movl	-4(%ebp), %edx # load pseudo-register
	imul %ecx, %edx
	movl	%edx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl (%edi), %edi	
	cmpl %ebx, %edi
	je L47
	jmp L48
L48:
	movl $-0, %ebx	
	movl %ebx, %esi	
L47:
	movl %esi, %ebx	
	movl %ebx, %ebx	
	jmp L46	
L39:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -260(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $7, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %edi
	cmpl %ebx, %edi
	jge L41
	jmp L40
L40:
	jmp L42	
L84:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L49
	jmp L51
L51:
	movl $L53, %ebx	
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
L52:
	movl $1, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -248(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	addl %edi, %esi
	cmpl %ebx, %esi
	jge L54
	jmp L56
L56:
	movl $L58, %ebx	
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
L57:
	movl $1, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -256(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl $7, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	subl %edi, %esi
	cmpl %ebx, %esi
	jge L59
	jmp L61
L61:
	movl $L63, %ebx	
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
L62:
	movl $1, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -260(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $7, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %edi
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jge L64
	jmp L66
L66:
	movl $L68, %ebx	
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
L67:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -252(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
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
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L69
	jmp L71
L71:
	movl $L73, %ebx	
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
L72:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -248(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	addl %edi, %esi
	cmpl %ebx, %esi
	jge L74
	jmp L76
L76:
	movl $L78, %ebx	
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
L77:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -256(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl $7, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	subl %edi, %esi
	cmpl %ebx, %esi
	jge L79
	jmp L81
L81:
	movl $L83, %ebx	
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
L82:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -260(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $7, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl 12(%ecx), %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %edi
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl %ebx, (%esi)	
	jmp L85	
L49:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -248(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L51
	jmp L50
L50:
	jmp L52	
L54:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -256(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	addl %edi, %esi
	cmpl %ebx, %esi
	jge L56
	jmp L55
L55:
	jmp L57	
L59:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -260(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl $7, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	subl %edi, %esi
	cmpl %ebx, %esi
	jge L61
	jmp L60
L60:
	jmp L62	
L64:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -252(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jge L66
	jmp L65
L65:
	jmp L67	
L69:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -248(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L71
	jmp L70
L70:
	jmp L72	
L74:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -256(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	addl %edi, %esi
	cmpl %ebx, %esi
	jge L76
	jmp L75
L75:
	jmp L77	
L79:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -260(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	movl %esi, %esi
	movl $7, %edi	
	addl %edi, %esi
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	subl %edi, %esi
	cmpl %ebx, %esi
	jge L81
	jmp L80
L80:
	jmp L82	
L93:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
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
	subl $264, %esp 	# make frame space
	movl %ebx, -252(%ebp) 	# saving ebx
	movl %esi, -256(%ebp) 	# saving esi
	movl %edi, -260(%ebp) 	# saving edi
L96:
	movl $-0, -244(%ebp)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jle L19
	jmp L3
L3:
	movl $L21, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L95	
L19:
	movl $-0, -248(%ebp)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -248(%esi), %esi	
	cmpl %ebx, %esi
	jle L16
	jmp L4
L4:
	movl $L18, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L3
	jmp L20
L20:
	movl %ebp, %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, -244(%ebp)	
	jmp L19	
L16:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L6
	jmp L8
L8:
	movl $L10, %ebx	
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
L9:
	movl %ebp, %ebx	
	movl -248(%ebx), %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -252(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %edi
	movl %edi, %edi
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	imul %ecx, %edi
	addl %edi, %esi
	movl (%esi), %esi	
	cmpl %ebx, %esi
	je L13
	jmp L14
L14:
	movl $L12, %ebx	
L15:
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -244(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -248(%esi), %esi	
	cmpl %ebx, %esi
	jge L4
	jmp L17
L17:
	movl %ebp, %ebx	
	movl -248(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, -248(%ebp)	
	jmp L16	
L6:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -252(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -244(%esi), %esi	
	cmpl %ebx, %esi
	jge L8
	jmp L7
L7:
	jmp L9	
L13:
	movl $L11, %ebx	
	jmp L15	
L95:
	movl -252(%ebp), %ebx 	# restoring ebx
	movl -256(%ebp), %esi 	# restoring esi
	movl -260(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L83:
	.long 21
	.string "Error: out-of-bounds\n"
L78:
	.long 21
	.string "Error: out-of-bounds\n"
L73:
	.long 21
	.string "Error: out-of-bounds\n"
L68:
	.long 21
	.string "Error: out-of-bounds\n"
L63:
	.long 21
	.string "Error: out-of-bounds\n"
L58:
	.long 21
	.string "Error: out-of-bounds\n"
L53:
	.long 21
	.string "Error: out-of-bounds\n"
L43:
	.long 21
	.string "Error: out-of-bounds\n"
L33:
	.long 21
	.string "Error: out-of-bounds\n"
L28:
	.long 21
	.string "Error: out-of-bounds\n"
L21:
	.long 1
	.string "\n"
L18:
	.long 1
	.string "\n"
L12:
	.long 2
	.string " ."
L11:
	.long 2
	.string " O"
L10:
	.long 21
	.string "Error: out-of-bounds\n"
