#MOVE(
##TEMP T100,
##ESEQ(
###EXP(
####CONST 0),
###ESEQ(
####EXP(
#####CALL(
######NAME print,
#######ESEQ(
########MOVE(
#########TEMP T112,
#########CALL(
##########NAME chr,
###########ESEQ(
############MOVE(
#############TEMP T111,
#############CALL(
##############NAME L1,
###############ESEQ(
################MOVE(
#################TEMP T109,
#################TEMP T101),
################CONST 0),
###############ESEQ(
################MOVE(
#################TEMP T110,
#################CONST 3),
################CONST 0),
###############ESEQ(
################MOVE(
#################MEM[4](
##################BINOP(PLUS,
###################TEMP T102,
###################CONST 4)),
#################TEMP T110),
################CONST 0),
###############ESEQ(
################MOVE(
#################MEM[4](
##################BINOP(PLUS,
###################TEMP T102,
###################CONST 0)),
#################TEMP T109),
################CONST 0))),
############CONST 0),
###########ESEQ(
############MOVE(
#############MEM[4](
##############BINOP(PLUS,
###############TEMP T102,
###############CONST 0)),
#############TEMP T111),
############CONST 0))),
########CONST 0),
#######ESEQ(
########MOVE(
#########MEM[4](
##########BINOP(PLUS,
###########TEMP T102,
###########CONST 0)),
#########TEMP T112),
########CONST 0))),
####ESEQ(
#####EXP(
######CALL(
#######NAME print,
########ESEQ(
#########MOVE(
##########TEMP T113,
##########NAME L3),
#########CONST 0),
########ESEQ(
#########MOVE(
##########MEM[4](
###########BINOP(PLUS,
############TEMP T102,
############CONST 0)),
##########TEMP T113),
#########CONST 0))),
#####ESEQ(
######EXP(
#######CALL(
########NAME print,
#########ESEQ(
##########MOVE(
###########TEMP T115,
###########CALL(
############NAME chr,
#############ESEQ(
##############MOVE(
###############TEMP T114,
###############CONST 5),
##############CONST 0),
#############ESEQ(
##############MOVE(
###############MEM[4](
################BINOP(PLUS,
#################TEMP T102,
#################CONST 0)),
###############TEMP T114),
##############CONST 0))),
##########CONST 0),
#########ESEQ(
##########MOVE(
###########MEM[4](
############BINOP(PLUS,
#############TEMP T102,
#############CONST 0)),
###########TEMP T115),
##########CONST 0))),
######CONST 1)))))
#LABEL L5
#MOVE(
##TEMP T109,
##TEMP T101)
#MOVE(
##TEMP T110,
##CONST 3)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T110)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T109)
#MOVE(
##TEMP T111,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T111)
#MOVE(
##TEMP T112,
##CALL(
###NAME chr,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T112)
#EXP(
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T113,
##NAME L3)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T113)
#EXP(
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T114,
##CONST 5)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T114)
#MOVE(
##TEMP T115,
##CALL(
###NAME chr,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T115)
#EXP(
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T100,
##CONST 1)
#JUMP(
##NAME L4)
#LABEL L4
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $100, %esp
L5:
	movl %ebp, %eax	
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
	movl %eax, -0(%esp)	
	call chr
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $L3, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $5, %eax	
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call chr
	movl %eax, %eax	
	movl %eax, %eax	
	movl %eax, -0(%esp)	
	call print
	# This is a no-op
	movl $1, %eax	
	movl %eax, %eax	
	jmp L4	
L4:
	movl %ebp,%esp
	popl %ebp
	ret

L3:
	.long 8
	.string "then...\n"
#MOVE(
##TEMP T100,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12))))
#LABEL L7
#MOVE(
##TEMP T100,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12))))
#JUMP(
##NAME L6)
#LABEL L6
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $92, %esp
L7:
	movl %ebp, %eax	
	movl 12(%eax), %eax	
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	addl %ebx, %eax	
	movl %eax, %eax	
	jmp L6	
L6:
	movl %ebp,%esp
	popl %ebp
	ret

