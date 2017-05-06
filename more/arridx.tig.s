.globl	tigermain					# make linkable
	.type	tigermain, @function					# identify it as a function (for linking)
tigermain:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$184, %esp					# make room for 40 pseudoregs, 1 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L4:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t114,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t114
	movl	%ebx, %ebx					# run MOVE statement with src:t114, dst:t113,
	movl	$10, 0(%esp)					# argument 0 for initArray from src:
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t115
	movl	%esi, %esi					# run MOVE statement with src:t115, dst:t112,
	movl	%esi, (%ebx)					# run MOVE statement with src:t112,t113, dst:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t106,
	movl	$L0, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %esi					# move result of print to desired register:t116
	movl	$1, %esi					# run MOVE statement with src: dst:t107,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t106,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t107,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t117
	movl	%ebx, %ebx					# run MOVE statement with src:t106, dst:t118,
	movl	%esi, %esi					# run MOVE statement with src:t107, dst:t119,
	imull	$4, %esi					# evaluate MUL expression src: dst:t119
	addl	%esi, %ebx					# evaluate PLUS expression src:t119, dst:t118
	movl	(%ebx), %ebx					# evaluate MEM expression src:t118, dst:t120
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t108,
	movl	$L1, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %esi					# move result of print to desired register:t121
	movl	$9, %esi					# run MOVE statement with src: dst:t109,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t108,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t109,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t122
	movl	%ebx, %ebx					# run MOVE statement with src:t108, dst:t123,
	movl	%esi, %esi					# run MOVE statement with src:t109, dst:t124,
	imull	$4, %esi					# evaluate MUL expression src: dst:t124
	addl	%esi, %ebx					# evaluate PLUS expression src:t124, dst:t123
	movl	(%ebx), %ebx					# evaluate MEM expression src:t123, dst:t125
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t110,
	movl	$L2, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %esi					# move result of print to desired register:t126
	movl	$4, %esi					# run MOVE statement with src: dst:t111,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t110,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t111,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t127
	movl	%ebx, %ebx					# run MOVE statement with src:t110, dst:t128,
	movl	%esi, %esi					# run MOVE statement with src:t111, dst:t129,
	imull	$4, %esi					# evaluate MUL expression src: dst:t129
	addl	%esi, %ebx					# evaluate PLUS expression src:t129, dst:t128
	movl	(%ebx), %eax					# run MOVE statement with src:t128, dst:t100,
	jmp	L3					# unconditional jump
L3:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function tigermain
L2:					# string literal: "RANDOM ACCESS\n"
	.long 14					# string's length
	.byte 82, 65, 78, 68, 79, 77, 32, 65, 67, 67, 69, 83, 83, 10					# string's bytes
L1:					# string literal: "UPPER BOUND\n"
	.long 12					# string's length
	.byte 85, 80, 80, 69, 82, 32, 66, 79, 85, 78, 68, 10					# string's bytes
L0:					# string literal: "LOWER BOUND\n"
	.long 12					# string's length
	.byte 76, 79, 87, 69, 82, 32, 66, 79, 85, 78, 68, 10					# string's bytes
