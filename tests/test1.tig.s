#MOVE(
##TEMP T100,
##ESEQ(
###MOVE(
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST ~84)),
####ESEQ(
#####SEQ(
######MOVE(
#######TEMP T109,
#######CALL(
########NAME initArray,
#########ESEQ(
##########MOVE(
###########TEMP T110,
###########BINOP(PLUS,
############CONST 10,
############CONST 1)),
##########CONST 0),
#########ESEQ(
##########MOVE(
###########TEMP T111,
###########CONST 0),
##########CONST 0),
#########ESEQ(
##########MOVE(
###########MEM[4](
############BINOP(PLUS,
#############TEMP T102,
#############CONST 4)),
###########TEMP T111),
##########CONST 0),
#########ESEQ(
##########MOVE(
###########MEM[4](
############BINOP(PLUS,
#############TEMP T102,
#############CONST 0)),
###########TEMP T110),
##########CONST 0))),
######MOVE(
#######MEM[4](
########TEMP T109),
#######CONST 10)),
#####TEMP T109)),
###ESEQ(
####EXP(
#####MEM[4](
######BINOP(PLUS,
#######TEMP T101,
#######CONST ~84))),
####CONST 1)))
#LABEL L2
#MOVE(
##TEMP T112,
##BINOP(PLUS,
###TEMP T101,
###CONST ~84))
#MOVE(
##TEMP T110,
##BINOP(PLUS,
###CONST 10,
###CONST 1))
#MOVE(
##TEMP T111,
##CONST 0)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T111)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T110)
#MOVE(
##TEMP T109,
##CALL(
###NAME initArray,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T109),
##CONST 10)
#MOVE(
##MEM[4](
###TEMP T112),
##TEMP T109)
#EXP(
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~84)))
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
	subl $104, %esp
L2:
	movl %ebp, %eax	
	movl $-84, %ebx	
	addl %ebx, %eax	
	movl %eax, %ecx	
	movl $1, %eax	
	addl $10, %eax	
	movl %eax, %eax	
	movl $-0, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call initArray
	movl %eax, %eax	
	movl $10, %ebx	
	movl %eax, %edx	
	movl %ebx, (%edx)	
	movl %eax, %eax	
	movl %ecx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl -84(%eax), %eax	
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L1	
L1:
	movl %ebp,%esp
	popl %ebp
	ret

