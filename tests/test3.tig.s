#LABEL L4
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
##NAME L1)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T141,
####CONST 4)),
##CONST 1000)
#MOVE(
##MEM[4](
###TEMP T143),
##TEMP T141)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST ~132)),
####CONST 0)),
##NAME L2)
#EXP(
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~132)))
#MOVE(
##TEMP T100,
##CONST 1)
#JUMP(
##NAME L3)
#LABEL L3
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
L4:
	movl %ebp, %eax	
	movl %eax, %eax
	movl $-132, %ebx	
	addl %ebx, %eax
	movl %eax, %ebx	
	movl $8, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call allocRecord
	movl %eax, %eax
	movl %eax, %eax	
	movl $L1, -0(%eax)	
	movl $1000, 4(%eax)	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl $L2, %eax	 # This should be caught!
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-0, %ecx	
	addl %ecx, %ebx
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl -132(%eax), %eax	
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L3	
L3:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L2:
	.long 8
	.string "Somebody"
L1:
	.long 6
	.string "Nobody"
