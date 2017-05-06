.globl	tigermain					# make linkable
	.type	tigermain, @function					# identify it as a function (for linking)
tigermain:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$196, %esp					# make room for 40 pseudoregs, 4 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L9:
	movl	$8, -164(%ebp)					# run MOVE statement with src:t101, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t116,
	addl	$-168, %ebx					# evaluate PLUS expression src: dst:t116
	movl	%ebx, %ebx					# run MOVE statement with src:t116, dst:t111,
	movl	-164(%ebp), %esi					# evaluate MEM expression src:t101, dst:t117
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t117,
	movl	$9, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t118
	movl	%esi, %esi					# run MOVE statement with src:t118, dst:t110,
	movl	%esi, (%ebx)					# run MOVE statement with src:t110,t111, dst:
	movl	$0, -172(%ebp)					# run MOVE statement with src:t101, dst:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t119,
	subl	$2, %ebx					# evaluate MINUS expression src: dst:t119
	cmpl	%ebx, -172(%ebp)					# compare before conditional jump with src1:t119, src2:t101,
	jle	L1
L0:
	movl	$0, -176(%ebp)					# run MOVE statement with src:t101, dst:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t120,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t120
	cmpl	%ebx, -176(%ebp)					# compare before conditional jump with src1:t120, src2:t101,
	jle	L6
L3:
	movl	$0, %eax					# run MOVE statement with src: dst:t100,
	jmp	L8					# unconditional jump
L1:
	movl	-168(%ebp), %ebx					# run MOVE statement with src:t101, dst:t106,
	movl	-172(%ebp), %esi					# run MOVE statement with src:t101, dst:t107,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t106,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t107,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t121
	movl	-172(%ebp), %edi					# evaluate MEM expression src:t101, dst:t122
	movl	%ebx, %ebx					# run MOVE statement with src:t106, dst:t123,
	movl	%esi, %esi					# run MOVE statement with src:t107, dst:t124,
	imull	$4, %esi					# evaluate MUL expression src: dst:t124
	addl	%esi, %ebx					# evaluate PLUS expression src:t124, dst:t123
	movl	%edi, (%ebx)					# run MOVE statement with src:t122,t123, dst:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t125,
	subl	$2, %ebx					# evaluate MINUS expression src: dst:t125
	cmpl	%ebx, -172(%ebp)					# compare before conditional jump with src1:t125, src2:t101,
	jge	L0
L2:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t126,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t126
	movl	%ebx, -172(%ebp)					# run MOVE statement with src:t126,t101, dst:
	jmp	L1					# unconditional jump
L6:
	movl	-168(%ebp), %ebx					# run MOVE statement with src:t101, dst:t108,
	movl	-176(%ebp), %esi					# run MOVE statement with src:t101, dst:t109,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t108,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t109,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t127
	movl	%ebx, %ebx					# run MOVE statement with src:t108, dst:t128,
	movl	%esi, %esi					# run MOVE statement with src:t109, dst:t129,
	imull	$4, %esi					# evaluate MUL expression src: dst:t129
	addl	%esi, %ebx					# evaluate PLUS expression src:t129, dst:t128
	movl	(%ebx), %ebx					# run MOVE statement with src:t128, dst:t114,
	movl	$L4, 0(%esp)					# argument 0 for ord from src:
	call	ord					# call function ord, putting result in EAX
	movl	%eax, %esi					# move result of ord to desired register:t130
	movl	%esi, %esi					# run MOVE statement with src:t130, dst:t113,
	movl	%ebx, %ebx					# run MOVE statement with src:t114, dst:t131,
	addl	%esi, %ebx					# evaluate PLUS expression src:t113, dst:t131
	movl	%ebx, 0(%esp)					# argument 0 for chr from src:t131,
	call	chr					# call function chr, putting result in EAX
	movl	%eax, %ebx					# move result of chr to desired register:t132
	movl	%ebx, %ebx					# run MOVE statement with src:t132, dst:t112,
	movl	%ebx, 0(%esp)					# argument 0 for print from src:t112,
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t133
	movl	$L5, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t134
	movl	%ebx, %ebx					# run MOVE statement with src:t134, dst:t115,
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t135,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t135
	cmpl	%ebx, -176(%ebp)					# compare before conditional jump with src1:t135, src2:t101,
	jge	L3
L7:
	movl	-176(%ebp), %ebx					# run MOVE statement with src:t101, dst:t136,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t136
	movl	%ebx, -176(%ebp)					# run MOVE statement with src:t136,t101, dst:
	jmp	L6					# unconditional jump
L8:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function tigermain
L5:					# string literal: "\n"
	.long 1					# string's length
	.byte 10					# string's bytes
L4:					# string literal: "0"
	.long 1					# string's length
	.byte 48					# string's bytes
