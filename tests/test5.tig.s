#LABEL L2
#MOVE(
##TEMP T143,
##BINOP(PLUS,
###TEMP T101,
###CONST ~132))
#MOVE(
##TEMP T142,
##CONST 8)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T142)
#MOVE(
##TEMP T141,
##CALL(
###NAME allocRecord,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T141,
####CONST 0)),
##CONST 0)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T141,
####CONST 4)),
##CONST 0)
#MOVE(
##MEM[4](
###TEMP T143),
##TEMP T141)
#EXP(
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~132)))
#MOVE(
##TEMP T100,
##CONST 1)
#JUMP(
##NAME L1)
#LABEL L1
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -136(%ebp) 	# saving ebx
	movl %esi, -140(%ebp) 	# saving esi
	movl %edi, -144(%ebp) 	# saving edi
L2:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	movl $8, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, -0(%ebx)	
	movl $-0, 4(%ebx)	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	# This is a no-op
	movl $1, %ebx	
	movl %ebx, %eax	
	jmp L1	
L1:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

