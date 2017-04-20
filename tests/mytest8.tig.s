#LABEL L8
#MOVE(
##TEMP T144,
##NAME L6)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T144)
#MOVE(
##TEMP T150,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T152,
##TEMP T150)
#MOVE(
##TEMP T145,
##TEMP T101)
#MOVE(
##TEMP T146,
##CONST 4)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T146)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T145)
#MOVE(
##TEMP T151,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T147,
##BINOP(PLUS,
###TEMP T152,
###TEMP T151))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T147)
#MOVE(
##TEMP T148,
##CALL(
###NAME chr,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T148)
#MOVE(
##TEMP T149,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T100,
##TEMP T149)
#JUMP(
##NAME L7)
#LABEL L7
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
L8:
	movl $L6, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl $4, %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	addl %ebx, %esi
	movl %esi, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call chr
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L7	
L7:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L6:
	.long 1
	.string "0"
#LABEL L10
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
##TEMP T170,
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
##TEMP T169,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T143,
##BINOP(MUL,
###TEMP T170,
###TEMP T169))
#LABEL L5
#MOVE(
##TEMP T100,
##TEMP T143)
#JUMP(
##NAME L9)
#LABEL L3
#MOVE(
##TEMP T143,
##CONST 1)
#JUMP(
##NAME L5)
#LABEL L9
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
L10:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	cmpl %ebx, %esi
	je L3
	jmp L4
L4:
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 12(%esi), %esi	
	movl %esi, %esi
	movl $1, %ecx	
	movl	%ecx, -4(%ebp) # save pseudo-register
	movl	-4(%ebp), %ecx # load pseudo-register
	subl %ecx, %esi
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	imul %ebx, %esi
	movl %esi, %ebx	
L5:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L9	
L3:
	movl $1, %ebx	
	movl %ebx, %ebx	
	jmp L5	
L9:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

