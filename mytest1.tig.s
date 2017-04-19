#MOVE(
##TEMP T100,
##CALL(
###NAME print,
####ESEQ(
#####MOVE(
######TEMP T109,
######NAME L1),
#####CONST 0),
####ESEQ(
#####MOVE(
######MEM[4](
#######BINOP(PLUS,
########TEMP T102,
########CONST 0)),
######TEMP T109),
#####CONST 0)))
#LABEL L3
#MOVE(
##TEMP T109,
##NAME L1)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T109)
#MOVE(
##TEMP T100,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#JUMP(
##NAME L2)
#LABEL L2
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $96, %esp
L3:
	movl $L1, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	movl %eax, %eax	
	jmp L2	
L2:
	movl %ebp,%esp
	popl %ebp
	ret

L1:
	.long 6
	.string "Hello\n"
