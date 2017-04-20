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
L26:
	movl $8, -132(%ebp)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-136, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
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
	movl -132(%esi), %esi	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-140, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
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
	movl -132(%esi), %esi	
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-144, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %esi	
	movl -132(%esi), %esi	
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
	movl -132(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -132(%ecx), %ecx	
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
	movl $-148, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl %ebp, %esi	
	movl -132(%esi), %esi	
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
	movl -132(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	movl -132(%ecx), %ecx	
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
	# This is a no-op
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L25	
L25:
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
	subl $144, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L28:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L23
	jmp L24
L24:
	movl $-0, %ebx	
	movl %ebx, %eax	
	jmp L27	
L23:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	# This is a no-op
	jmp L24	
L27:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
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
L30:
	movl $-0, -132(%ebp)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -132(%esi), %esi	
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
	jmp L29	
L19:
	movl $-0, -136(%ebp)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -136(%esi), %esi	
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
	# This is a no-op
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -132(%esi), %esi	
	cmpl %ebx, %esi
	jge L3
	jmp L20
L20:
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, -132(%ebp)	
	jmp L19	
L16:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -132(%esi), %esi	
	cmpl %ebx, %esi
	jge L6
	jmp L8
L8:
	movl $L10, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	# This is a no-op
	movl $1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call exit
	movl %eax, %ebx
	# This is a no-op
L9:
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -140(%esi), %esi	
	movl %esi, %esi
	movl %ebp, %edi	
	movl -132(%edi), %edi	
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
	# This is a no-op
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebp, %esi	
	movl -136(%esi), %esi	
	cmpl %ebx, %esi
	jge L4
	jmp L17
L17:
	movl %ebp, %ebx	
	movl -136(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	addl %esi, %ebx
	movl %ebx, -136(%ebp)	
	jmp L16	
L6:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -140(%ebx), %ebx	
	movl (%ebx), %ebx	
	movl %ebp, %esi	
	movl -132(%esi), %esi	
	cmpl %ebx, %esi
	jge L8
	jmp L7
L7:
	jmp L9	
L13:
	movl $L11, %ebx	
	jmp L15	
L29:
	movl -140(%ebp), %ebx 	# restoring ebx
	movl -144(%ebp), %esi 	# restoring esi
	movl -148(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

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
