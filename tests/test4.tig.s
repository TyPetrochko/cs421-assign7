#LABEL L7
#MOVE(
##TEMP T144,
##TEMP T101)
#MOVE(
##TEMP T145,
##CONST 10)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T145)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T144)
#EXP(
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T100,
##CONST 1)
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
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L7:
	movl %ebp, %eax	
	movl %eax, %eax	
	movl $10, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L6	
L6:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

#LABEL L9
#CJUMP(
#EQ,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST 12)),
##CONST 0,
##L3,L4)
#LABEL L4
#MOVE(
##TEMP T153,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST 12)))
#MOVE(
##TEMP T141,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST 8)))
#MOVE(
##TEMP T142,
##BINOP(MINUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###CONST 1))
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
##TEMP T152,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T143,
##BINOP(MUL,
###TEMP T153,
###TEMP T152))
#LABEL L5
#MOVE(
##TEMP T100,
##TEMP T143)
#JUMP(
##NAME L8)
#LABEL L3
#MOVE(
##TEMP T143,
##CONST 1)
#JUMP(
##NAME L5)
#LABEL L8
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L9:
	movl $-0, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	cmpl %eax, %ebx
	je L3
	jmp L4
L4:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %eax, %ecx	
	movl %ebp, %eax	
	movl 8(%eax), %eax	
	movl %eax, %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %edx	
	subl %edx, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call L1
	movl %eax, %eax
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %ebx, %ebx
	movl %eax, %eax	
	imul %eax, %ebx
	movl %ebx, %eax	
L5:
	movl %eax, %eax	
	movl %eax, %eax	
	jmp L8	
L3:
	movl $1, %eax	
	movl %eax, %eax	
	jmp L5	
L8:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

