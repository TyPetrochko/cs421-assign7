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
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-136, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L26
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-140, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L26
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl -136(%esi), %esi	
	movl %esi, %esi	
	movl %ebp, %edi	
	movl -140(%edi), %edi	
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L27
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, -0(%esp)	
	call L29
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %eax	
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
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L61
	jmp L62
L62:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl -0(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L28
	movl %eax, %ebx
	# This is a no-op
	movl $L60, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	# This is a no-op
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl 4(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L29
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L63:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L66	
L61:
	movl $L59, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
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
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jl L55
	jmp L56
L56:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jg L52
	jmp L53
L53:
	movl $L51, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
L54:
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L57:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L68	
L55:
	movl $L50, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	# This is a no-op
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl 12(%edi), %edi	
	subl %edi, %esi
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L45
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	jmp L57	
L52:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L45
	movl %eax, %ebx
	movl %ebx, %ebx	
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
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L41
	jmp L42
L42:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 16(%esi), %esi	
	cmpl %ebx, %esi
	je L38
	jmp L39
L39:
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl -0(%esi), %esi	
	cmpl %ebx, %esi
	jl L35
	jmp L36
L36:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	movl %ebx, -0(%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, %ebx
	movl $4, %esi	
	addl %esi, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %esi	
	movl %ebp, %edi	
	movl 16(%edi), %edi	
	movl 4(%edi), %edi	
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L27
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl	-8(%ebp), %ecx # load pseudo-register
	movl %ecx, %esi	
	movl %ebx, (%esi)	
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, %ebx	
L37:
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L40:
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L43:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L70	
L41:
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl %ebx, %ebx	
	jmp L43	
L38:
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx	
	jmp L40	
L35:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	movl %ebx, -0(%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, %ebx
	movl $4, %esi	
	addl %esi, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl 4(%esi), %esi	
	movl %esi, %esi	
	movl %ebp, %edi	
	movl 16(%edi), %edi	
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L27
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl	-8(%ebp), %ecx # load pseudo-register
	movl %ecx, %esi	
	movl %ebx, (%esi)	
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, %ebx	
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
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	movl $4, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, -0(%ebx)	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-136, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl -132(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -132(%esi), %esi	
	movl -0(%esi), %esi	
	cmpl %ebx, %esi
	jne L31
	jmp L32
L32:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L33:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L72	
L31:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	movl %ebx, -0(%esi)	
	movl %esi, %ebx	
	movl %ebx, %ebx
	movl $4, %edi	
	addl %edi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L26
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %edi	
	movl %ebx, (%edi)	
	movl %esi, %ebx	
	movl %ebx, %ebx	
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
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jg L48
	jmp L49
L49:
	movl $-0, %ebx	
	movl %ebx, %eax	
	jmp L74	
L48:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl $0, %edx
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %eax
	movl $10, %esi	
	movl %esi, %esi
	idivl %esi
	movl %eax, %esi
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L45
	movl %eax, %ebx
	# This is a no-op
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx
	movl $0, %edx
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %eax
	movl $10, %esi	
	movl %esi, %esi
	idivl %esi
	movl %eax, %esi
	movl %esi, %esi
	movl $10, %edi	
	imul %edi, %esi
	subl %esi, %ebx
	movl %ebx, %esi	
	movl $L47, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	addl %ebx, %esi
	movl %esi, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call chr
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
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
	movl $-0, -132(%ebp)	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L4
	movl %eax, %ebx
	# This is a no-op
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-0, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -132(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
L24:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -132(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L25
	jmp L2
L2:
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %eax	
	jmp L76	
L25:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $10, %esi	
	imul %esi, %ebx
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	addl %ebx, %esi
	movl %esi, %esi	
	movl $L23, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	subl %ebx, %esi
	movl %edi, %ebx	
	movl %esi, (%ebx)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
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
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl $L15, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call stringEqual
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L17
	jmp L18
L18:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl $L16, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call stringEqual
	movl %eax, %ebx
	movl %ebx, %ebx	
L19:
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L21
	jmp L13
L13:
	movl $-0, %ebx	
	movl %ebx, %eax	
	jmp L78	
L17:
	movl $1, %ebx	
	movl %ebx, %ebx	
	jmp L19	
L21:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
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
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %esi	
	movl $L6, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	cmpl %ebx, %esi
	jge L8
	jmp L9
L9:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L10:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L79	
L8:
	movl $1, %ebx	
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %edi	
	movl $L7, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %edi	
	cmpl %ebx, %edi
	jle L11
	jmp L12
L12:
	movl $-0, %ebx	
	movl %ebx, %esi	
L11:
	movl %esi, %ebx	
	movl %ebx, %ebx	
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
