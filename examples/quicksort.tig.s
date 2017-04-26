.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $260, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L24:
	movl %ebp, %ebx	
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %esi, %ebx	
	movl %ebx, -0(%esp)	
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %edi, %ebx	
	movl %ebx, -0(%esp)	
	call L4
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L23	
L23:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
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
	subl $256, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L26:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L20
	jmp L21
L21:
	movl $L19, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
L22:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L25	
L20:
	movl $L18, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	jmp L22	
L25:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
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
	subl $268, %esp 	# make frame space
	movl %ebx, -248(%ebp) 	# saving ebx
	movl %esi, -252(%ebp) 	# saving esi
	movl %edi, -256(%ebp) 	# saving edi
L28:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L14
	jmp L15
L15:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-244, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
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
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl -0(%esi), %esi	
	movl %esi, %esi	
	movl %ebp, %edi	
	movl -244(%edi), %edi	
	movl %edi, %edi	
	movl %edi, %edi	
	movl %edi, 8(%esp)	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L2
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L16:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L27	
L14:
	movl $-0, %ebx	
	movl %ebx, %ebx	
	jmp L16	
L27:
	movl -248(%ebp), %ebx 	# restoring ebx
	movl -252(%ebp), %esi 	# restoring esi
	movl -256(%ebp), %edi 	# restoring edi
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
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L30:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 16(%esi), %esi	
	cmpl %ebx, %esi
	je L10
	jmp L11
L11:
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl -0(%ebx), %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	jle L7
	jmp L8
L8:
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
	call L2
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl	-8(%ebp), %ecx # load pseudo-register
	movl %ecx, %esi	
	movl %ebx, (%esi)	
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ebx	
	movl %ebx, %ebx	
L9:
	movl %ebx, %ebx	
	movl %ebx, %ebx	
L12:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L29	
L10:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, -0(%ebx)	
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl %ebx, 4(%ebx)	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	jmp L12	
L7:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, -0(%ebx)	
	movl %ebp, %ebx	
	movl 16(%ebx), %ebx	
	movl %ebx, 4(%ebx)	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	jmp L9	
L29:
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
	subl $256, %esp 	# make frame space
	movl %ebx, -244(%ebp) 	# saving ebx
	movl %esi, -248(%ebp) 	# saving esi
	movl %edi, -252(%ebp) 	# saving edi
L32:
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %edi	
	movl $4, -0(%edi)	
	movl %edi, %ebx	
	movl %ebx, %ebx
	movl $4, %esi	
	addl %esi, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -8(%ebp) # save pseudo-register
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %esi	
	movl $3, -0(%esi)	
	movl %esi, %ebx	
	movl %ebx, %ebx
	movl $4, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	addl %ecx, %ebx
	movl %ebx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $9, -0(%ebx)	
	movl $-0, 4(%ebx)	
	movl %ebx, %ebx	
	movl	-4(%ebp), %ecx # load pseudo-register
	movl %ecx, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %ebx, (%ecx)	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl %esi, %ebx	
	movl	-8(%ebp), %ecx # load pseudo-register
	movl %ecx, %esi	
	movl %ebx, (%esi)	
	movl %edi, %ebx	
	movl %ebx, %eax	
	jmp L31	
L31:
	movl -244(%ebp), %ebx 	# restoring ebx
	movl -248(%ebp), %esi 	# restoring esi
	movl -252(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L19:
	.long 5
	.string "nope\n"
L18:
	.long 1
	.string "\n"
