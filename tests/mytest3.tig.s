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
L11:
	movl %ebp, %-128(%ebp)	
	movl %-128(%ebp), %ebx	
	movl %ebp, %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl $4, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, 4(%esp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call L1
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), 4(%esp)	
	movl %ebx, %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call L3
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), %eax	
	jmp L10	
L10:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

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
L13:
	movl %ebp, %-128(%ebp)	
	movl 8(%-128(%ebp)), %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	addl %ebx, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, 4(%esp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call L3
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %eax	
	jmp L12	
L12:
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
L15:
	movl %ebp, %-128(%ebp)	
	movl 12(%-128(%ebp)), %-128(%ebp)	
	movl %-128(%ebp), %eax	
	movl $L8, %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call ord
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %-128(%ebp)	
	movl %eax, %eax	
	movl %eax, %eax
	movl %-128(%ebp), %-128(%ebp)	
	addl %-128(%ebp), %eax
	movl %eax, %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call chr
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)	
	movl %-128(%ebp), -0(%esp)	
	call print
	movl %eax, %-128(%ebp)
	movl %-128(%ebp), %eax	
	jmp L14	
L14:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
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
	subl $140, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L17:
	movl %ebp, %-128(%ebp)	
	movl 12(%-128(%ebp)), %-128(%ebp)	
	movl %-128(%ebp), %eax	
	jmp L16	
L16:
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
	subl $140, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L19:
	movl %ebp, %-128(%ebp)	
	movl 12(%-128(%ebp)), %-128(%ebp)	
	movl %-128(%ebp), %-128(%ebp)
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	addl %eax, %-128(%ebp)
	movl %-128(%ebp), %eax	
	jmp L18	
L18:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L8:
	.long 1
	.string "0"
