#LABEL L7
#CJUMP(
#GT,
##CONST 3,
##CONST 1,
##L3,L4)
#LABEL L4
#MOVE(
##TEMP T142,
##NAME L2)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T142)
#MOVE(
##TEMP T143,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#LABEL L5
#MOVE(
##TEMP T100,
##TEMP T143)
#JUMP(
##NAME L6)
#LABEL L3
#MOVE(
##TEMP T141,
##NAME L1)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T141)
#MOVE(
##TEMP T143,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#JUMP(
##NAME L5)
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
	movl $1, %ebx	
	movl $3, %esi	
	cmpl %ebx, %esi
	jg L3
	jmp L4
L4:
	movl $L2, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
L5:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L6	
L3:
	movl $L1, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	jmp L5	
L6:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L2:
	.long 4
	.string "Bye\n"
L1:
	.long 3
	.string "Hi\n"
