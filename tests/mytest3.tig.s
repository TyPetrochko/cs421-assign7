.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $100, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L11:
	movl %ebp, %eax	
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl %eax, %eax	
	movl $4, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, 4(%esp)	
	movl %ecx, %eax	
	movl %eax, -0(%esp)	
	call L3
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L10	
L10:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
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
	subl $100, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L13:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ecx	
	movl 12(%ecx), %ecx	
	movl %ebp, %edx	
	movl 12(%edx), %edx	
	movl %ecx, %ebx
	addl %edx, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L3
	movl %eax, %eax
	movl %eax, %eax	
	jmp L12	
L12:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
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
	subl $96, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L15:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %ebx	
	movl $L8, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call ord
	movl %eax, %eax
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, %eax	
	movl %ebx, %ecx
	addl %eax, %ecx
	movl %ecx, %eax	
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
	jmp L14	
L14:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
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
	subl $92, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L17:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %eax	
	jmp L16	
L16:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
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
	subl $92, %esp 	# make frame space
	movl %ebx, -84(%ebp) 	# saving ebx
	movl %esi, -88(%ebp) 	# saving esi
	movl %edi, -92(%ebp) 	# saving edi
L19:
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebp, %ecx	
	movl 12(%ecx), %ecx	
	movl %ebx, %eax
	addl %ecx, %eax
	movl %eax, %eax	
	jmp L18	
L18:
	movl -84(%ebp), %ebx 	# restoring ebx
	movl -88(%ebp), %esi 	# restoring esi
	movl -92(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L8:
	.long 1
	.string "0"
