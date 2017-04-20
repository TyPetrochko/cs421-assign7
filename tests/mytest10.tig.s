#LABEL L7
#MOVE(
##TEMP T143,
##TEMP T101)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T143)
#MOVE(
##TEMP T148,
##CALL(
###NAME L2,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T150,
##TEMP T148)
#MOVE(
##TEMP T144,
##NAME L5)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T144)
#MOVE(
##TEMP T149,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T145,
##BINOP(PLUS,
###TEMP T150,
###TEMP T149))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T145)
#MOVE(
##TEMP T146,
##CALL(
###NAME chr,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T146)
#MOVE(
##TEMP T147,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T100,
##TEMP T147)
#JUMP(
##NAME L6)
#LABEL L6
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $144, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L7:
	movl %ebp, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L2
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, %ebx	
	movl $L5, %eax	
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
	movl %eax, %eax	
	jmp L6	
L6:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L5:
	.long 1
	.string "0"
#LABEL L9
#MOVE(
##TEMP T141,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST 8)))
#MOVE(
##TEMP T142,
##CONST 3)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T142)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T141)
#MOVE(
##TEMP T100,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#JUMP(
##NAME L8)
#LABEL L8
.text
	.align 4
.globl L2
	.type	L2,@function

L2:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L9:
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl $3, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	movl %eax, %eax	
	jmp L8	
L8:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

#LABEL L11
#MOVE(
##TEMP T100,
##CONST 5)
#JUMP(
##NAME L10)
#LABEL L10
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
L11:
	movl $5, %eax	
	movl %eax, %eax	
	jmp L10	
L10:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

