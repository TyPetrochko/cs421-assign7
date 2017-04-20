#LABEL L31
#MOVE(
##TEMP T168,
##BINOP(PLUS,
###TEMP T101,
###CONST ~132))
#MOVE(
##TEMP T167,
##CALL(
###NAME getch))
#MOVE(
##MEM[4](
###TEMP T168),
##TEMP T167)
#MOVE(
##TEMP T170,
##BINOP(PLUS,
###TEMP T101,
###CONST ~136))
#MOVE(
##TEMP T141,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T141)
#MOVE(
##TEMP T169,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T170),
##TEMP T169)
#MOVE(
##TEMP T172,
##BINOP(PLUS,
###TEMP T101,
###CONST ~140))
#MOVE(
##TEMP T164,
##TEMP T101)
#MOVE(
##TEMP T163,
##CONST 4)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T163)
#MOVE(
##TEMP T162,
##CALL(
###NAME allocRecord,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T162,
####CONST 0)),
##CONST 0)
#MOVE(
##TEMP T165,
##TEMP T162)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T165)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T164)
#MOVE(
##TEMP T171,
##CALL(
###NAME L1,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T172),
##TEMP T171)
#LABEL L28
#CJUMP(
#GT,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~140)),
##CONST 0,
##L29,L0)
#LABEL L0
#MOVE(
##TEMP T100,
##CONST 0)
#JUMP(
##NAME L30)
#LABEL L29
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~140)),
##BINOP(MINUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST ~140)),
###CONST 1))
#MOVE(
##TEMP T166,
##NAME L27)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T166)
#MOVE(
##TEMP T173,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#EXP(
##TEMP T173)
#JUMP(
##NAME L28)
#LABEL L30
.text
	.align 4
.globl tigermain
	.type	tigermain,@function

tigermain:
	pushl %ebp
	movl %esp,%ebp
	subl $160, %esp 	# make frame space
	movl %ebx, -144(%ebp) 	# saving ebx
	movl %esi, -148(%ebp) 	# saving esi
	movl %edi, -152(%ebp) 	# saving edi
L31:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-136, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-140, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %esi	
	movl $4, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call allocRecord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, -0(%ebx)	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, 4(%esp)	
	movl %esi, %ebx	
	movl %ebx, -0(%esp)	
	call L1
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
L28:
	movl $-0, %ebx	
	movl %ebp, %esi	
	movl -140(%esi), %esi	
	cmpl %ebx, %esi
	jg L29
	jmp L0
L0:
	movl $-0, %ebx	
	movl %ebx, %eax	
	jmp L30	
L29:
	movl %ebp, %ebx	
	movl -140(%ebx), %ebx	
	movl %ebx, %ebx
	movl $1, %esi	
	subl %esi, %ebx
	movl %ebx, -140(%ebp)	
	movl $L27, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	# This is a no-op
	jmp L28	
L30:
	movl -144(%ebp), %ebx 	# restoring ebx
	movl -148(%ebp), %esi 	# restoring esi
	movl -152(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L27:
	.long 9
	.string "DOING IT\n"
#LABEL L33
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~132)),
##CONST 0)
#MOVE(
##TEMP T154,
##TEMP T101)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T154)
#EXP(
##CALL(
###NAME L4,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T214,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 12)),
###CONST 0))
#MOVE(
##TEMP T155,
##TEMP T101)
#MOVE(
##TEMP T156,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T156)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T155)
#MOVE(
##TEMP T213,
##CALL(
###NAME L3,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T214),
##TEMP T213)
#LABEL L24
#MOVE(
##TEMP T157,
##TEMP T101)
#MOVE(
##TEMP T158,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T158)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T157)
#MOVE(
##TEMP T215,
##CALL(
###NAME L3,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#CJUMP(
#NE,
##TEMP T215,
##CONST 0,
##L25,L2)
#LABEL L2
#MOVE(
##TEMP T100,
##MEM[4](
###BINOP(PLUS,
####TEMP T101,
####CONST ~132)))
#JUMP(
##NAME L32)
#LABEL L25
#MOVE(
##TEMP T220,
##BINOP(PLUS,
###TEMP T101,
###CONST ~132))
#MOVE(
##TEMP T217,
##BINOP(MUL,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST ~132)),
###CONST 10))
#MOVE(
##TEMP T159,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T159)
#MOVE(
##TEMP T216,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T219,
##BINOP(PLUS,
###TEMP T217,
###TEMP T216))
#MOVE(
##TEMP T160,
##NAME L23)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T160)
#MOVE(
##TEMP T218,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##MEM[4](
###TEMP T220),
##BINOP(MINUS,
###TEMP T219,
###TEMP T218))
#MOVE(
##TEMP T222,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####TEMP T101,
#####CONST 8)),
###CONST ~132))
#MOVE(
##TEMP T221,
##CALL(
###NAME getch))
#MOVE(
##MEM[4](
###TEMP T222),
##TEMP T221)
#MOVE(
##TEMP T161,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######TEMP T101,
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T161)
#MOVE(
##TEMP T223,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#EXP(
##TEMP T223)
#JUMP(
##NAME L24)
#LABEL L32
.text
	.align 4
.globl L1
	.type	L1,@function

L1:
	pushl %ebp
	movl %esp,%ebp
	subl $152, %esp 	# make frame space
	movl %ebx, -136(%ebp) 	# saving ebx
	movl %esi, -140(%ebp) 	# saving esi
	movl %edi, -144(%ebp) 	# saving edi
L33:
	movl $-0, -132(%ebp)	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L4
	movl %eax, %ebx
	# This is a no-op
	movl %ebp, %ebx	
	movl 12(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-0, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -132(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %esi	
	movl %ebx, (%esi)	
L24:
	movl %ebp, %ebx	
	movl %ebx, %ebx	
	movl %ebp, %esi	
	movl 8(%esi), %esi	
	movl -132(%esi), %esi	
	movl %esi, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call L3
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L25
	jmp L2
L2:
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %eax	
	jmp L32	
L25:
	movl %ebp, %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %edi	
	movl %ebp, %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx
	movl $10, %esi	
	imul %esi, %ebx
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	addl %ebx, %esi
	movl %esi, %esi	
	movl $L23, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %esi, %esi
	movl %ebx, %ebx	
	subl %ebx, %esi
	movl %edi, %ebx	
	movl %esi, (%ebx)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	# This is a no-op
	jmp L24	
L32:
	movl -136(%ebp), %ebx 	# restoring ebx
	movl -140(%ebp), %esi 	# restoring esi
	movl -144(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L23:
	.long 1
	.string "0"
#LABEL L20
#MOVE(
##TEMP T148,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######MEM[4](
#######BINOP(PLUS,
########TEMP T101,
########CONST 8)),
######CONST 8)),
####CONST ~132)))
#MOVE(
##TEMP T149,
##NAME L15)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T149)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T148)
#MOVE(
##TEMP T285,
##CALL(
###NAME stringEqual,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#CJUMP(
#NE,
##TEMP T285,
##CONST 0,
##L17,L18)
#LABEL L18
#MOVE(
##TEMP T150,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######MEM[4](
#######BINOP(PLUS,
########TEMP T101,
########CONST 8)),
######CONST 8)),
####CONST ~132)))
#MOVE(
##TEMP T151,
##NAME L16)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 4)),
##TEMP T151)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T150)
#MOVE(
##TEMP T152,
##CALL(
###NAME stringEqual,
####CONST 0,
####CONST 0,
####CONST 0,
####CONST 0))
#LABEL L19
#CJUMP(
#NE,
##TEMP T152,
##CONST 0,
##L21,L13)
#LABEL L13
#MOVE(
##TEMP T100,
##CONST 0)
#JUMP(
##NAME L34)
#LABEL L17
#MOVE(
##TEMP T152,
##CONST 1)
#JUMP(
##NAME L19)
#LABEL L21
#MOVE(
##TEMP T287,
##BINOP(PLUS,
###MEM[4](
####BINOP(PLUS,
#####MEM[4](
######BINOP(PLUS,
#######TEMP T101,
#######CONST 8)),
#####CONST 8)),
###CONST ~132))
#MOVE(
##TEMP T286,
##CALL(
###NAME getch))
#MOVE(
##MEM[4](
###TEMP T287),
##TEMP T286)
#MOVE(
##TEMP T153,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######MEM[4](
#######BINOP(PLUS,
########TEMP T101,
########CONST 8)),
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T153)
#MOVE(
##TEMP T288,
##CALL(
###NAME print,
####CONST 0,
####CONST 0))
#EXP(
##TEMP T288)
#JUMP(
##NAME L20)
#LABEL L34
.text
	.align 4
.globl L4
	.type	L4,@function

L4:
	pushl %ebp
	movl %esp,%ebp
	subl $148, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L20:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl $L15, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call stringEqual
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L17
	jmp L18
L18:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl $L16, %esi	
	movl %esi, %esi	
	movl %esi, 4(%esp)	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call stringEqual
	movl %eax, %ebx
	movl %ebx, %ebx	
L19:
	movl $-0, %esi	
	movl %ebx, %ebx	
	cmpl %esi, %ebx
	jne L21
	jmp L13
L13:
	movl $-0, %ebx	
	movl %ebx, %eax	
	jmp L34	
L17:
	movl $1, %ebx	
	movl %ebx, %ebx	
	jmp L19	
L21:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl %ebx, %ebx
	movl $-132, %esi	
	addl %esi, %ebx
	movl %ebx, %esi	
	call getch
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	movl %ebx, (%esi)	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call print
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	# This is a no-op
	jmp L20	
L34:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

#LABEL L36
#MOVE(
##TEMP T142,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######MEM[4](
#######BINOP(PLUS,
########TEMP T101,
########CONST 8)),
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T142)
#MOVE(
##TEMP T324,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T326,
##TEMP T324)
#MOVE(
##TEMP T143,
##NAME L6)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T143)
#MOVE(
##TEMP T325,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#CJUMP(
#GE,
##TEMP T326,
##TEMP T325,
##L8,L9)
#LABEL L9
#MOVE(
##TEMP T146,
##CONST 0)
#LABEL L10
#MOVE(
##TEMP T100,
##TEMP T146)
#JUMP(
##NAME L35)
#LABEL L8
#MOVE(
##TEMP T147,
##CONST 1)
#MOVE(
##TEMP T144,
##MEM[4](
###BINOP(PLUS,
####MEM[4](
#####BINOP(PLUS,
######MEM[4](
#######BINOP(PLUS,
########TEMP T101,
########CONST 8)),
######CONST 8)),
####CONST ~132)))
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T144)
#MOVE(
##TEMP T327,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#MOVE(
##TEMP T329,
##TEMP T327)
#MOVE(
##TEMP T145,
##NAME L7)
#MOVE(
##MEM[4](
###BINOP(PLUS,
####TEMP T102,
####CONST 0)),
##TEMP T145)
#MOVE(
##TEMP T328,
##CALL(
###NAME ord,
####CONST 0,
####CONST 0))
#CJUMP(
#LE,
##TEMP T329,
##TEMP T328,
##L11,L12)
#LABEL L12
#MOVE(
##TEMP T147,
##CONST 0)
#LABEL L11
#MOVE(
##TEMP T146,
##TEMP T147)
#JUMP(
##NAME L10)
#LABEL L35
.text
	.align 4
.globl L3
	.type	L3,@function

L3:
	pushl %ebp
	movl %esp,%ebp
	subl $144, %esp 	# make frame space
	movl %ebx, -132(%ebp) 	# saving ebx
	movl %esi, -136(%ebp) 	# saving esi
	movl %edi, -140(%ebp) 	# saving edi
L36:
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %esi	
	movl $L6, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %esi, %esi	
	cmpl %ebx, %esi
	jle L8
	jmp L9
L9:
	movl $-0, %ebx	
	movl %ebx, %ebx	
L10:
	movl %ebx, %ebx	
	movl %ebx, %eax	
	jmp L35	
L8:
	movl $1, %ebx	
	movl %ebx, %esi	
	movl %ebp, %ebx	
	movl 8(%ebx), %ebx	
	movl 8(%ebx), %ebx	
	movl -132(%ebx), %ebx	
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %ebx, %edi	
	movl $L7, %ebx	
	movl %ebx, %ebx	
	movl %ebx, -0(%esp)	
	call ord
	movl %eax, %ebx
	movl %ebx, %ebx	
	movl %ebx, %ebx	
	movl %edi, %edi	
	cmpl %ebx, %edi
	jle L11
	jmp L12
L12:
	movl $-0, %ebx	
	movl %ebx, %esi	
L11:
	movl %esi, %ebx	
	movl %ebx, %ebx	
	jmp L10	
L35:
	movl -132(%ebp), %ebx 	# restoring ebx
	movl -136(%ebp), %esi 	# restoring esi
	movl -140(%ebp), %edi 	# restoring edi
	movl %ebp,%esp
	popl %ebp
	ret

L16:
	.long 1
	.string "\n"
L15:
	.long 1
	.string " "
L7:
	.long 1
	.string "9"
L6:
	.long 1
	.string "0"
