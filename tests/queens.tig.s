.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $168, %esp 	# make frame space
	movl %ebx, -152(%ebp) 	# saving ebx
	movl %esi, -156(%ebp) 	# saving esi
	movl %edi, -160(%ebp) 	# saving edi
L92:
	movl $8, %eax	
	movl %eax, -132(%ebp)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-136, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-140, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-144, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	addl %ebx, %eax
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %edx	
	movl -132(%edx), %edx	
	addl %edx, %ebx
	movl %ebx, %ebx
	movl $1, %edx	
	subl %edx, %ebx
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-148, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	addl %ebx, %eax
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %edx	
	movl -132(%edx), %edx	
	addl %edx, %ebx
	movl %ebx, %ebx
	movl $1, %edx	
	subl %edx, %ebx
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L2
	movl %eax, %eax
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L91	
L91:
	movl -152(%ebp), %ebx 	# restoring ebx
	movl -156(%ebp), %esi 	# restoring esi
	movl -160(%ebp), %edi 	# restoring edi
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
	subl $152, %esp 	# make frame space
	movl %ebx, -136(%ebp) 	# saving ebx
	movl %esi, -140(%ebp) 	# saving esi
	movl %edi, -144(%ebp) 	# saving edi
L94:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -132(%potato), %potato	
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	cmpl %potato, %potato
	je L88
	jmp L89
L89:
	movl $-0, %potato	
	movl %potato, -132(%ebp)	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	subl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L86
	jmp L22
L22:
	movl $-0, %potato	
	movl %potato, %potato	
L90:
	movl %potato, %potato	
	movl %potato, %eax	
	jmp L93	
L88:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call L1
	movl %eax, %potato
	movl %potato, %potato	
	jmp L90	
L86:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L24
	jmp L26
L26:
	movl $L28, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L27:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl (%potato), %potato	
	cmpl %potato, %potato
	je L34
	jmp L35
L35:
	movl $-0, %potato	
	movl %potato, %potato	
L36:
	movl $-0, %potato	
	movl %potato, %potato	
	cmpl %potato, %potato
	jne L44
	jmp L45
L45:
	movl $-0, %potato	
	movl %potato, %potato	
L46:
	movl $-0, %potato	
	movl %potato, %potato	
	cmpl %potato, %potato
	jne L84
	jmp L85
L85:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	subl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L22
	jmp L87
L87:
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, -132(%ebp)	
	jmp L86	
L24:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L26
	jmp L25
L25:
	jmp L27	
L34:
	movl $1, %potato	
	movl %potato, %potato	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L29
	jmp L31
L31:
	movl $L33, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L32:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl (%potato), %potato	
	cmpl %potato, %potato
	je L37
	jmp L38
L38:
	movl $-0, %potato	
	movl %potato, %potato	
L37:
	movl %potato, %potato	
	movl %potato, %potato	
	jmp L36	
L29:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L31
	jmp L30
L30:
	jmp L32	
L44:
	movl $1, %potato	
	movl %potato, %potato	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L39
	jmp L41
L41:
	movl $L43, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L42:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl (%potato), %potato	
	cmpl %potato, %potato
	je L47
	jmp L48
L48:
	movl $-0, %potato	
	movl %potato, %potato	
L47:
	movl %potato, %potato	
	movl %potato, %potato	
	jmp L46	
L39:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L41
	jmp L40
L40:
	jmp L42	
L84:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L49
	jmp L51
L51:
	movl $L53, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L52:
	movl $1, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L54
	jmp L56
L56:
	movl $L58, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L57:
	movl $1, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L59
	jmp L61
L61:
	movl $L63, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L62:
	movl $1, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	cmpl %potato, %potato
	jle L64
	jmp L66
L66:
	movl $L68, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L67:
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -140(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl %potato, %potato	
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, 4(%esp)	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call L2
	movl %eax, %potato
	# This is a no-op
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L69
	jmp L71
L71:
	movl $L73, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L72:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L74
	jmp L76
L76:
	movl $L78, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L77:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	movl $-0, %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L79
	jmp L81
L81:
	movl $L83, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call print
	movl %eax, %potato
	# This is a no-op
	movl $1, %potato	
	movl %potato, %potato	
	movl %potato, %potato	
	movl %potato, -0(%esp)	
	call exit
	movl %eax, %potato
	# This is a no-op
L82:
	movl $-0, %potato	
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	movl %potato, %potato
	movl $1, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl $4, %potato	
	imul %potato, %potato
	addl %potato, %potato
	movl %potato, (%potato)	
	jmp L85	
L49:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L51
	jmp L50
L50:
	jmp L52	
L54:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L56
	jmp L55
L55:
	jmp L57	
L59:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L61
	jmp L60
L60:
	jmp L62	
L64:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -140(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	cmpl %potato, %potato
	jle L66
	jmp L65
L65:
	jmp L67	
L69:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -136(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	cmpl %potato, %potato
	jle L71
	jmp L70
L70:
	jmp L72	
L74:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -144(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	addl %potato, %potato
	cmpl %potato, %potato
	jle L76
	jmp L75
L75:
	jmp L77	
L79:
	movl %ebp, %potato	
	movl 8(%potato), %potato	
	movl -148(%potato), %potato	
	movl (%potato), %potato	
	movl %ebp, %potato	
	movl -132(%potato), %potato	
	movl %potato, %potato
	movl $7, %potato	
	addl %potato, %potato
	movl %potato, %potato
	movl %ebp, %potato	
	movl 12(%potato), %potato	
	subl %potato, %potato
	cmpl %potato, %potato
	jle L81
	jmp L80
L80:
	jmp L82	
L93:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
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
	subl $152, %esp 	# make frame space
	movl %ebx, -140(%ebp) 	# saving ebx
	movl %esi, -144(%ebp) 	# saving esi
	movl %edi, -148(%ebp) 	# saving edi
L96:
	movl $-0, %eax	
	movl %eax, -132(%ebp)	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L19
	jmp L3
L3:
	movl $L21, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L95	
L19:
	movl $-0, %eax	
	movl %eax, -136(%ebp)	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L16
	jmp L4
L4:
	movl $L18, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	# This is a no-op
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L3
	jmp L20
L20:
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, -132(%ebp)	
	jmp L19	
L16:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L6
	jmp L8
L8:
	movl $L10, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call exit
	movl %eax, %eax
	# This is a no-op
L9:
	movl %ebp, %eax	
	movl -136(%eax), %eax	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -140(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %ecx	
	movl -132(%ecx), %ecx	
	movl %ecx, %ecx
	movl $1, %edx	
	addl %edx, %ecx
	movl %ecx, %ecx
	movl $4, %edx	
	imul %edx, %ecx
	addl %ecx, %ebx
	movl (%ebx), %ebx	
	cmpl %eax, %ebx
	je L13
	jmp L14
L14:
	movl $L12, %eax	
L15:
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	subl %ebx, %eax
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L4
	jmp L17
L17:
	movl %ebp, %eax	
	movl -136(%eax), %eax	
	movl %eax, %eax
	movl $1, %ebx	
	addl %ebx, %eax
	movl %eax, -136(%ebp)	
	jmp L16	
L6:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -140(%eax), %eax	
	movl (%eax), %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	cmpl %eax, %ebx
	jle L8
	jmp L7
L7:
	jmp L9	
L13:
	movl $L11, %eax	
	jmp L15	
L95:
	movl -140(%ebp), %ebx 	# restoring ebx
	movl -144(%ebp), %esi 	# restoring esi
	movl -148(%ebp), %edi 	# restoring edi
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
