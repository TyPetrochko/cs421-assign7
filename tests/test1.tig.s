.globl	tigermain					# make linkable
	.type	tigermain, @function					# identify it as a function (for linking)
tigermain:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$184, %esp					# make room for 40 pseudoregs, 1 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L1:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t108,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t108
	movl	%ebx, %ebx					# run MOVE statement with src:t108, dst:t107,
	movl	$10, 0(%esp)					# argument 0 for initArray from src:
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t109
	movl	%esi, %esi					# run MOVE statement with src:t109, dst:t106,
	movl	%esi, (%ebx)					# run MOVE statement with src:t106,t107, dst:
	movl	-164(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t110
	movl	$1, %eax					# run MOVE statement with src: dst:t100,
	jmp	L0					# unconditional jump
L0:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function tigermain
