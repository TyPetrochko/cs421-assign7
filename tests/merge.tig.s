.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $164, %esp 	# make frame space
	movl %ebx, -144(%ebp) 	# saving ebx
	movl %esi, -148(%ebp) 	# saving esi
	movl %edi, -152(%ebp) 	# saving edi
L65:
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	call getch
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-136, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L26
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-140, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	call getch
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L26
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %edx	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %ecx	
	movl -140(%ecx), %ecx	
	movl %ecx, %ecx	
	movl %ecx, %ecx	
	movl %ecx, 8(%esp)	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L27
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, 4(%esp)	
	movl %edx, %eax	
	movl %eax, -0(%esp)	
	call L29
	movl %eax, %eax
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L64	
L64:
	movl -144(%ebp), %ebx 	# restoring ebx
	movl -148(%ebp), %esi 	# restoring esi
	movl -152(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L29
	.type	L29,@function

L29:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L67:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	je L61
	jmp L62
L62:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L28
	movl %eax, %eax
	# This is a no-op
	movl $L60, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl 4(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L29
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
L63:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L66	
L61:
	movl $L59, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
	jmp L63	
L66:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L28
	.type	L28,@function

L28:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L69:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	jl L55
	jmp L56
L56:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	jg L52
	jmp L53
L53:
	movl $L51, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	movl %eax, %eax	
L54:
	movl %eax, %eax	
	movl %eax, %eax	
L57:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L68	
L55:
	movl $L50, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl $-0, %ecx
	subl %ebx, %ecx
	movl %ecx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L45
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L57	
L52:
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L45
	movl %eax, %eax
	movl %eax, %eax	
	jmp L54	
L68:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L27
	.type	L27,@function

L27:
	pushl %ebp
	movl %esp,%ebp
	subl $152, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L71:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	je L41
	jmp L42
L42:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	cmpl %eax, %ebx
	je L38
	jmp L39
L39:
	movl %ebp, %eax	
	movl 16(%eax), %eax	
	movl -0(%eax), %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	cmpl %eax, %ebx
	jl L35
	jmp L36
L36:
	movl $8, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call allocRecord
	movl %eax, %eax
	movl %eax, %edx	
	movl %ebp, %eax	
	movl 16(%eax), %eax	
	movl -0(%eax), %eax	
	movl %eax, -0(%edx)	
	movl %edx, %eax	
	movl %eax, %eax
	movl $4, %ebx	
	addl %ebx, %eax
	movl %eax, %esi	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %ecx	
	movl 16(%ecx), %ecx	
	movl 4(%ecx), %ecx	
	movl %ecx, %ecx	
	movl %ecx, %ecx	
	movl %ecx, 8(%esp)	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L27
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %esi, %ebx	
	movl %eax, (%ebx)	
	movl %edx, %eax	
	movl %eax, %eax	
L37:
	movl %eax, %eax	
	movl %eax, %eax	
L40:
	movl %eax, %eax	
	movl %eax, %eax	
L43:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L70	
L41:
	movl %ebp, %eax	
	movl 16(%eax), %eax	
	movl %eax, %eax	
	jmp L43	
L38:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax	
	jmp L40	
L35:
	movl $8, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call allocRecord
	movl %eax, %eax
	movl %eax, %edx	
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl -0(%eax), %eax	
	movl %eax, -0(%edx)	
	movl %edx, %eax	
	movl %eax, %eax
	movl $4, %ebx	
	addl %ebx, %eax
	movl %eax, %esi	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl 4(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %ecx	
	movl 16(%ecx), %ecx	
	movl %ecx, %ecx	
	movl %ecx, %ecx	
	movl %ecx, 8(%esp)	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L27
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %esi, %ebx	
	movl %eax, (%ebx)	
	movl %edx, %eax	
	movl %eax, %eax	
	jmp L37	
L70:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L26
	.type	L26,@function

L26:
	pushl %ebp
	movl %esp,%ebp
	subl $156, %esp 	# make frame space
	movl %ebx, -140(%ebp) 	# saving ebx
	movl %esi, -144(%ebp) 	# saving esi
	movl %edi, -148(%ebp) 	# saving edi
L73:
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	movl $4, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call allocRecord
	movl %eax, %eax
	movl %eax, %eax	
	movl $-0, %eax	
	movl %eax, -0(%eax)	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-136, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	cmpl %eax, %ebx
	jne L31
	jmp L32
L32:
	movl $-0, %eax	
	movl %eax, %eax	
L33:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L72	
L31:
	movl $8, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call allocRecord
	movl %eax, %eax
	movl %eax, %ebx	
	movl %ebp, %eax	
	movl -136(%eax), %eax	
	movl %eax, -0(%ebx)	
	movl %ebx, %eax	
	movl %eax, %eax
	movl $4, %ecx	
	addl %ecx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L26
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ecx, %ecx	
	movl %eax, (%ecx)	
	movl %ebx, %eax	
	movl %eax, %eax	
	jmp L33	
L72:
	movl -140(%ebp), %ebx 	# restoring ebx
	movl -144(%ebp), %esi 	# restoring esi
	movl -148(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L60:
	.long 1
	.string " "
L59:
	.long 1
	.string "\n"
L51:
	.long 1
	.string "0"
L50:
	.long 1
	.string "-"
.text
	.align 4
.globl L45
	.type	L45,@function

L45:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L75:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	jg L48
	jmp L49
L49:
	movl $-0, %eax	
	movl %eax, %eax	
	jmp L74	
L48:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %ebx	
	movl $0, %edx
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax
	movl $10, %ecx	
	movl %ecx, %ecx
	idivl %ecx
	movl %eax, %ecx
	movl %ecx, %eax	
	movl %eax, %eax	
	movl %eax, 4(%esp)	
	movl %ebx, %eax	
	movl %eax, -0(%esp)	
	call L45
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %ebx
	movl $0, %edx
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax
	movl $10, %ecx	
	movl %ecx, %ecx
	idivl %ecx
	movl %eax, %ecx
	movl %ecx, %eax
	movl $10, %ecx	
	imul %ecx, %eax
	subl %eax, %ebx
	movl %ebx, %ebx	
	movl $L47, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %ebx, %ebx
	movl %eax, %eax	
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
	movl %eax, %eax	
	# This is a no-op
	jmp L49	
L74:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L47:
	.long 1
	.string "0"
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $152, %esp 	# make frame space
	movl %ebx, -136(%ebp) 	# saving ebx
	movl %esi, -140(%ebp) 	# saving esi
	movl %edi, -144(%ebp) 	# saving edi
L77:
	movl $-0, %eax	
	movl %eax, -132(%ebp)	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L4
	movl %eax, %eax
	# This is a no-op
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax
	movl $-0, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L3
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
L24:
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L3
	movl %eax, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %eax, %eax	
	cmpl %ebx, %eax
	jne L25
	jmp L2
L2:
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	jmp L76	
L25:
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax
	movl $10, %ebx	
	imul %ebx, %eax
	movl %eax, %ebx	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %ebx, %ebx
	movl %eax, %eax	
	addl %eax, %ebx
	movl %ebx, %ebx	
	movl $L23, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %ebx, %ebx
	movl %eax, %eax	
	subl %eax, %ebx
	movl %ecx, %eax	
	movl %ebx, (%eax)	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	call getch
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	jmp L24	
L76:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L23:
	.long 1
	.string "0"
.text
	.align 4
.globl L4
	.type	L4,@function

L4:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L20:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	movl $L15, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call stringEqual
	movl %eax, %eax
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %eax, %eax	
	cmpl %ebx, %eax
	jne L17
	jmp L18
L18:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	movl $L16, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call stringEqual
	movl %eax, %eax
	movl %eax, %eax	
L19:
	movl $-0, %ebx	
	movl %eax, %eax	
	cmpl %ebx, %eax
	jne L21
	jmp L13
L13:
	movl $-0, %eax	
	movl %eax, %eax	
	jmp L78	
L17:
	movl $1, %eax	
	movl %eax, %eax	
	jmp L19	
L21:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	call getch
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	jmp L20	
L78:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

.text
	.align 4
.globl L3
	.type	L3,@function

L3:
	pushl %ebp
	movl %esp,%ebp
	subl $144, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L80:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %ebx	
	movl $L6, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	cmpl %eax, %ebx
	jle L8
	jmp L9
L9:
	movl $-0, %eax	
	movl %eax, %eax	
L10:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L79	
L8:
	movl $1, %eax	
	movl %eax, %ebx	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl 8(%eax), %eax	
	movl -132(%eax), %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %ecx	
	movl $L7, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ecx, %ecx	
	cmpl %eax, %ecx
	jle L11
	jmp L12
L12:
	movl $-0, %eax	
	movl %eax, %ebx	
L11:
	movl %ebx, %eax	
	movl %eax, %eax	
	jmp L10	
L79:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L16:
	.long 1
	.string "\n"
L15:
	.long 1
	.string " "
L7:
	.long 1
	.string "9"
L6:
	.long 1
	.string "0"
