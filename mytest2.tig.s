#MOVE(
##TEMP T100,
##ESEQ(
###SEQ(
####MOVE(
#####MEM[4](
######BINOP(PLUS,
#######TEMP T101,
#######CONST ~84)),
#####CALL(
######NAME print,
#######ESEQ(
########MOVE(
#########TEMP T110,
#########CALL(
##########NAME chr,
###########ESEQ(
############MOVE(
#############TEMP T109,
#############CONST 3),
############CONST 0),
###########ESEQ(
############MOVE(
#############MEM[4](
##############BINOP(PLUS,
###############TEMP T102,
###############CONST 0)),
#############TEMP T109),
############CONST 0))),
########CONST 0),
#######ESEQ(
########MOVE(
#########MEM[4](
##########BINOP(PLUS,
###########TEMP T102,
###########CONST 0)),
#########TEMP T110),
########CONST 0))),
####MOVE(
#####MEM[4](
######BINOP(PLUS,
#######TEMP T101,
#######CONST ~88)),
#####CALL(
######NAME flush))),
###CONST 0))
#LABEL L2
#MOVE(
##TEMP T112,
##BINOP(PLUS,
###TEMP T101,
###CONST ~84))
#MOVE(
##TEMP T109,
##CONST 3)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T109)
#MOVE(
##TEMP T110,
##CALL(
###NAME chr,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T110)
#MOVE(
##TEMP T111,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T112),
##TEMP T111)
#MOVE(
##TEMP T114,
##BINOP(PLUS,
###TEMP T101,
###CONST ~88))
#MOVE(
##TEMP T113,
##CALL(
###NAME flush))
#MOVE(
##MEM[4](
###TEMP T114),
##TEMP T113)
#MOVE(
##TEMP T100,
##CONST 0)
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
	subl $104, %esp 	# make frame space
	movl %ebx, -92(%ebp) 	# saving ebx
	movl %esi, -96(%ebp) 	# saving esi
	movl %edi, -100(%ebp) 	# saving edi
L2:
	movl %ebp, %ebx	
	movl $-84, %ecx	
	movl %ebx, %eax
	addl %ecx, %eax
	movl %eax, %ebx	
	movl $3, %eax	
	movl %eax, %eax	
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
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl %ebp, %eax	
	movl $-88, %ebx	
	movl %eax, %edx
	addl %ebx, %edx
	movl %edx, %ebx	
	call flush
	movl %eax, %eax
	movl %eax, %eax	
	movl %eax, %eax	
	movl %ebx, %ebx	
	movl %eax, (%ebx)	
	movl $-0, %eax	
	movl %eax, %eax	
	jmp L1	
L1:
	movl -92(%ebp), %ebx 	# restoring ebx
	movl -96(%ebp), %esi 	# restoring esi
	movl -100(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

