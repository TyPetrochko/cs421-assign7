.globl	tigermain					# make linkable
	.type	tigermain, @function					# identify it as a function (for linking)
tigermain:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$192, %esp					# make room for 40 pseudoregs, 3 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L34:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t126,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t126
	movl	%ebx, %ebx					# run MOVE statement with src:t126, dst:t117,
	movl	%ebp, 0(%esp)					# argument 0 for L0 from src:t101,
	call	L0					# call function L0, putting result in EAX
	movl	%eax, %esi					# move result of L0 to desired register:t127
	movl	%esi, %esi					# run MOVE statement with src:t127, dst:t116,
	movl	%esi, (%ebx)					# run MOVE statement with src:t116,t117, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t128,
	addl	$-168, %ebx					# evaluate PLUS expression src: dst:t128
	movl	%ebx, %ebx					# run MOVE statement with src:t128, dst:t119,
	movl	%ebp, 0(%esp)					# argument 0 for L5 from src:t101,
	movl	-164(%ebp), %esi					# evaluate MEM expression src:t101, dst:t129
	movl	%esi, 4(%esp)					# argument 1 for L5 from src:t129,
	movl	$L25, 8(%esp)					# argument 2 for L5 from src:
	call	L5					# call function L5, putting result in EAX
	movl	%eax, %esi					# move result of L5 to desired register:t130
	movl	%esi, %esi					# run MOVE statement with src:t130, dst:t118,
	movl	%esi, (%ebx)					# run MOVE statement with src:t118,t119, dst:
	movl	$L26, 0(%esp)					# argument 0 for concat from src:
	movl	-164(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t131
	movl	%ebx, 4(%esp)					# argument 1 for concat from src:t131,
	call	concat					# call function concat, putting result in EAX
	movl	%eax, %ebx					# move result of concat to desired register:t132
	movl	%ebx, %ebx					# run MOVE statement with src:t132, dst:t121,
	movl	%ebx, 0(%esp)					# argument 0 for concat from src:t121,
	movl	$L27, 4(%esp)					# argument 1 for concat from src:
	call	concat					# call function concat, putting result in EAX
	movl	%eax, %ebx					# move result of concat to desired register:t133
	movl	%ebx, %ebx					# run MOVE statement with src:t133, dst:t120,
	movl	%ebx, 0(%esp)					# argument 0 for print from src:t120,
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t134
	movl	$0, -172(%ebp)					# run MOVE statement with src:t101, dst:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t122,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t135
	movl	%esi, 0(%esp)					# argument 0 for checkNilRecord from src:t135,
	call	checkNilRecord					# call function checkNilRecord, putting result in EAX
	movl	%eax, %esi					# move result of checkNilRecord to desired register:t136
	movl	-168(%ebp), %esi					# run MOVE statement with src:t101, dst:t138,
	movl	$0, %edi					# run MOVE statement with src: dst:t139,
	imull	$4, %edi					# evaluate MUL expression src: dst:t139
	addl	%edi, %esi					# evaluate PLUS expression src:t139, dst:t138
	movl	(%esi), %esi					# run MOVE statement with src:t138, dst:t137,
	subl	$2, %esi					# evaluate MINUS expression src: dst:t137
	cmpl	%esi, %ebx					# compare before conditional jump with src1:t137, src2:t122,
	jle	L30
L28:
	movl	-168(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t140
	movl	%ebx, 0(%esp)					# argument 0 for checkNilRecord from src:t140,
	call	checkNilRecord					# call function checkNilRecord, putting result in EAX
	movl	%eax, %ebx					# move result of checkNilRecord to desired register:t141
	movl	-168(%ebp), %ebx					# run MOVE statement with src:t101, dst:t142,
	movl	$1, %esi					# run MOVE statement with src: dst:t143,
	imull	$4, %esi					# evaluate MUL expression src: dst:t143
	addl	%esi, %ebx					# evaluate PLUS expression src:t143, dst:t142
	movl	(%ebx), %ebx					# run MOVE statement with src:t142, dst:t114,
	movl	$0, %esi					# run MOVE statement with src: dst:t115,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t114,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t115,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t144
	movl	%ebx, %ebx					# run MOVE statement with src:t114, dst:t145,
	movl	%esi, %esi					# run MOVE statement with src:t115, dst:t146,
	imull	$4, %esi					# evaluate MUL expression src: dst:t146
	addl	%esi, %ebx					# evaluate PLUS expression src:t146, dst:t145
	movl	(%ebx), %ebx					# evaluate MEM expression src:t145, dst:t147
	movl	%ebx, 0(%esp)					# argument 0 for print from src:t147,
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t148
	movl	$L32, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t149
	movl	%ebx, %ebx					# run MOVE statement with src:t149, dst:t125,
	movl	%ebx, %eax					# run MOVE statement with src:t125, dst:t100,
	jmp	L33					# unconditional jump
L30:
	movl	-168(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t150
	movl	%ebx, 0(%esp)					# argument 0 for checkNilRecord from src:t150,
	call	checkNilRecord					# call function checkNilRecord, putting result in EAX
	movl	%eax, %ebx					# move result of checkNilRecord to desired register:t151
	movl	-168(%ebp), %ebx					# run MOVE statement with src:t101, dst:t152,
	movl	$1, %esi					# run MOVE statement with src: dst:t153,
	imull	$4, %esi					# evaluate MUL expression src: dst:t153
	addl	%esi, %ebx					# evaluate PLUS expression src:t153, dst:t152
	movl	(%ebx), %ebx					# run MOVE statement with src:t152, dst:t112,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t154
	movl	%esi, 0(%esp)					# argument 0 for checkNilRecord from src:t154,
	call	checkNilRecord					# call function checkNilRecord, putting result in EAX
	movl	%eax, %esi					# move result of checkNilRecord to desired register:t155
	movl	-168(%ebp), %esi					# run MOVE statement with src:t101, dst:t158,
	movl	$0, %edi					# run MOVE statement with src: dst:t159,
	imull	$4, %edi					# evaluate MUL expression src: dst:t159
	addl	%edi, %esi					# evaluate PLUS expression src:t159, dst:t158
	movl	(%esi), %esi					# run MOVE statement with src:t158, dst:t157,
	subl	$1, %esi					# evaluate MINUS expression src: dst:t157
	movl	%esi, %esi					# run MOVE statement with src:t157, dst:t156,
	subl	-172(%ebp), %esi					# evaluate MINUS expression src:t101, dst:t156
	movl	%esi, %esi					# run MOVE statement with src:t156, dst:t113,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t112,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t113,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t160
	movl	%ebx, %ebx					# run MOVE statement with src:t112, dst:t161,
	movl	%esi, %esi					# run MOVE statement with src:t113, dst:t162,
	imull	$4, %esi					# evaluate MUL expression src: dst:t162
	addl	%esi, %ebx					# evaluate PLUS expression src:t162, dst:t161
	movl	(%ebx), %ebx					# evaluate MEM expression src:t161, dst:t163
	movl	%ebx, 0(%esp)					# argument 0 for concat from src:t163,
	movl	$L29, 4(%esp)					# argument 1 for concat from src:
	call	concat					# call function concat, putting result in EAX
	movl	%eax, %ebx					# move result of concat to desired register:t164
	movl	%ebx, %ebx					# run MOVE statement with src:t164, dst:t123,
	movl	%ebx, 0(%esp)					# argument 0 for print from src:t123,
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t165
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t124,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t166
	movl	%esi, 0(%esp)					# argument 0 for checkNilRecord from src:t166,
	call	checkNilRecord					# call function checkNilRecord, putting result in EAX
	movl	%eax, %esi					# move result of checkNilRecord to desired register:t167
	movl	-168(%ebp), %esi					# run MOVE statement with src:t101, dst:t169,
	movl	$0, %edi					# run MOVE statement with src: dst:t170,
	imull	$4, %edi					# evaluate MUL expression src: dst:t170
	addl	%edi, %esi					# evaluate PLUS expression src:t170, dst:t169
	movl	(%esi), %esi					# run MOVE statement with src:t169, dst:t168,
	subl	$2, %esi					# evaluate MINUS expression src: dst:t168
	cmpl	%esi, %ebx					# compare before conditional jump with src1:t168, src2:t124,
	jge	L28
L31:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t171,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t171
	movl	%ebx, -172(%ebp)					# run MOVE statement with src:t171,t101, dst:
	jmp	L30					# unconditional jump
L33:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function tigermain
L32:					# string literal: "\n"
	.long 1					# string's length
	.byte 10					# string's bytes
L29:					# string literal: " "
	.long 1					# string's length
	.byte 32					# string's bytes
L27:					# string literal: "\n"
	.long 1					# string's length
	.byte 10					# string's bytes
L26:					# string literal: "reversing: "
	.long 11					# string's length
	.byte 114, 101, 118, 101, 114, 115, 105, 110, 103, 58, 32					# string's bytes
L25:					# string literal: " "
	.long 1					# string's length
	.byte 32					# string's bytes
.globl	L5					# make linkable
	.type	L5, @function					# identify it as a function (for linking)
L5:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$212, %esp					# make room for 40 pseudoregs, 7 locals, 3 callee-saves, and 3 maxargs,
	movl	%ebx, 12(%esp)					# callee-save register
	movl	%esi, 16(%esp)					# callee-save register
	movl	%edi, 20(%esp)					# callee-save register
L36:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t185,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t185
	movl	%ebx, %ebx					# run MOVE statement with src:t185, dst:t173,
	movl	12(%ebp), %esi					# evaluate MEM expression src:t101, dst:t186
	movl	%esi, 0(%esp)					# argument 0 for size from src:t186,
	call	size					# call function size, putting result in EAX
	movl	%eax, %esi					# move result of size to desired register:t187
	movl	%esi, %esi					# run MOVE statement with src:t187, dst:t172,
	movl	%esi, (%ebx)					# run MOVE statement with src:t172,t173, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t188,
	addl	$-168, %ebx					# evaluate PLUS expression src: dst:t188
	movl	%ebx, %ebx					# run MOVE statement with src:t188, dst:t175,
	movl	%ebp, 0(%esp)					# argument 0 for L6 from src:t101,
	call	L6					# call function L6, putting result in EAX
	movl	%eax, %esi					# move result of L6 to desired register:t189
	movl	%esi, %esi					# run MOVE statement with src:t189, dst:t174,
	movl	%esi, (%ebx)					# run MOVE statement with src:t174,t175, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t190,
	addl	$-172, %ebx					# evaluate PLUS expression src: dst:t190
	movl	%ebx, %ebx					# run MOVE statement with src:t190, dst:t177,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t191
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t191,
	movl	$L15, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t192
	movl	%esi, %esi					# run MOVE statement with src:t192, dst:t176,
	movl	%esi, (%ebx)					# run MOVE statement with src:t176,t177, dst:
	movl	$0, %ebx					# run MOVE statement with src: dst:t193,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t193
	movl	%ebx, -176(%ebp)					# run MOVE statement with src:t193,t101, dst:
	movl	$0, -180(%ebp)					# run MOVE statement with src:t101, dst:
	movl	$0, -184(%ebp)					# run MOVE statement with src:t101, dst:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t194,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t194
	cmpl	%ebx, -184(%ebp)					# compare before conditional jump with src1:t194, src2:t101,
	jle	L21
L16:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t196,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t196
	movl	%ebx, %ebx					# run MOVE statement with src:t196, dst:t195,
	subl	-176(%ebp), %ebx					# evaluate MINUS expression src:t101, dst:t195
	cmpl	$1, %ebx					# compare before conditional jump with src1: src2:t195,
	jg	L23
L24:
	movl	$8, 0(%esp)					# argument 0 for allocRecord from src:
	call	allocRecord					# call function allocRecord, putting result in EAX
	movl	%eax, %ebx					# move result of allocRecord to desired register:t197
	movl	%ebx, %ebx					# run MOVE statement with src:t197, dst:t111,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t198
	movl	%esi, 0(%ebx)					# run MOVE statement with src:t198,t111, dst:
	movl	-172(%ebp), %esi					# evaluate MEM expression src:t101, dst:t199
	movl	%esi, 4(%ebx)					# run MOVE statement with src:t199,t111, dst:
	movl	%ebx, %eax					# run MOVE statement with src:t111, dst:t100,
	jmp	L35					# unconditional jump
L21:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t200,
	addl	$-188, %ebx					# evaluate PLUS expression src: dst:t200
	movl	%ebx, %ebx					# run MOVE statement with src:t200, dst:t179,
	movl	12(%ebp), %esi					# evaluate MEM expression src:t101, dst:t201
	movl	%esi, 0(%esp)					# argument 0 for substring from src:t201,
	movl	-184(%ebp), %esi					# evaluate MEM expression src:t101, dst:t202
	movl	%esi, 4(%esp)					# argument 1 for substring from src:t202,
	movl	$1, 8(%esp)					# argument 2 for substring from src:
	call	substring					# call function substring, putting result in EAX
	movl	%eax, %esi					# move result of substring to desired register:t203
	movl	%esi, %esi					# run MOVE statement with src:t203, dst:t178,
	movl	%esi, (%ebx)					# run MOVE statement with src:t178,t179, dst:
	movl	-188(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t204
	movl	%ebx, 0(%esp)					# argument 0 for stringEqual from src:t204,
	movl	16(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t205
	movl	%ebx, 4(%esp)					# argument 1 for stringEqual from src:t205,
	call	stringEqual					# call function stringEqual, putting result in EAX
	movl	%eax, %ebx					# move result of stringEqual to desired register:t206
	movl	%ebx, %ebx					# run MOVE statement with src:t206, dst:t180,
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t180,
	je	L20
L19:
	movl	-184(%ebp), %ebx					# run MOVE statement with src:t101, dst:t207,
	subl	-176(%ebp), %ebx					# evaluate MINUS expression src:t101, dst:t207
	cmpl	$1, %ebx					# compare before conditional jump with src1: src2:t207,
	jg	L17
L18:
	movl	-184(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t208
	movl	%ebx, -176(%ebp)					# run MOVE statement with src:t208,t101, dst:
L20:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t209,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t209
	cmpl	%ebx, -184(%ebp)					# compare before conditional jump with src1:t209, src2:t101,
	jge	L16
L22:
	movl	-184(%ebp), %ebx					# run MOVE statement with src:t101, dst:t210,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t210
	movl	%ebx, -184(%ebp)					# run MOVE statement with src:t210,t101, dst:
	jmp	L21					# unconditional jump
L17:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t107,
	movl	-180(%ebp), %esi					# run MOVE statement with src:t101, dst:t108,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t107,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t108,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t211
	movl	%ebx, %ebx					# run MOVE statement with src:t107, dst:t212,
	movl	%esi, %esi					# run MOVE statement with src:t108, dst:t213,
	imull	$4, %esi					# evaluate MUL expression src: dst:t213
	addl	%esi, %ebx					# evaluate PLUS expression src:t213, dst:t212
	movl	%ebx, %ebx					# run MOVE statement with src:t212, dst:t182,
	movl	12(%ebp), %esi					# evaluate MEM expression src:t101, dst:t214
	movl	%esi, 0(%esp)					# argument 0 for substring from src:t214,
	movl	-176(%ebp), %esi					# run MOVE statement with src:t101, dst:t215,
	addl	$1, %esi					# evaluate PLUS expression src: dst:t215
	movl	%esi, 4(%esp)					# argument 1 for substring from src:t215,
	movl	-184(%ebp), %esi					# run MOVE statement with src:t101, dst:t217,
	subl	-176(%ebp), %esi					# evaluate MINUS expression src:t101, dst:t217
	movl	%esi, %esi					# run MOVE statement with src:t217, dst:t216,
	subl	$1, %esi					# evaluate MINUS expression src: dst:t216
	movl	%esi, 8(%esp)					# argument 2 for substring from src:t216,
	call	substring					# call function substring, putting result in EAX
	movl	%eax, %esi					# move result of substring to desired register:t218
	movl	%esi, %esi					# run MOVE statement with src:t218, dst:t181,
	movl	%esi, (%ebx)					# run MOVE statement with src:t181,t182, dst:
	movl	-184(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t219
	movl	%ebx, -176(%ebp)					# run MOVE statement with src:t219,t101, dst:
	movl	-180(%ebp), %ebx					# run MOVE statement with src:t101, dst:t220,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t220
	movl	%ebx, -180(%ebp)					# run MOVE statement with src:t220,t101, dst:
	jmp	L18					# unconditional jump
L23:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t109,
	movl	-180(%ebp), %esi					# run MOVE statement with src:t101, dst:t110,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t109,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t110,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t221
	movl	%ebx, %ebx					# run MOVE statement with src:t109, dst:t222,
	movl	%esi, %esi					# run MOVE statement with src:t110, dst:t223,
	imull	$4, %esi					# evaluate MUL expression src: dst:t223
	addl	%esi, %ebx					# evaluate PLUS expression src:t223, dst:t222
	movl	%ebx, %ebx					# run MOVE statement with src:t222, dst:t184,
	movl	12(%ebp), %esi					# evaluate MEM expression src:t101, dst:t224
	movl	%esi, 0(%esp)					# argument 0 for substring from src:t224,
	movl	-176(%ebp), %esi					# run MOVE statement with src:t101, dst:t225,
	addl	$1, %esi					# evaluate PLUS expression src: dst:t225
	movl	%esi, 4(%esp)					# argument 1 for substring from src:t225,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t227,
	subl	-176(%ebp), %esi					# evaluate MINUS expression src:t101, dst:t227
	movl	%esi, %esi					# run MOVE statement with src:t227, dst:t226,
	subl	$1, %esi					# evaluate MINUS expression src: dst:t226
	movl	%esi, 8(%esp)					# argument 2 for substring from src:t226,
	call	substring					# call function substring, putting result in EAX
	movl	%eax, %esi					# move result of substring to desired register:t228
	movl	%esi, %esi					# run MOVE statement with src:t228, dst:t183,
	movl	%esi, (%ebx)					# run MOVE statement with src:t183,t184, dst:
	jmp	L24					# unconditional jump
L35:
	movl	12(%esp), %ebx					# restore callee-saved register
	movl	16(%esp), %esi					# restore callee-saved register
	movl	20(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function L5
L15:					# string literal: ""
	.long 0					# string's length
	.byte 0					# string's bytes
.globl	L6					# make linkable
	.type	L6, @function					# identify it as a function (for linking)
L6:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$200, %esp					# make room for 40 pseudoregs, 4 locals, 3 callee-saves, and 3 maxargs,
	movl	%ebx, 12(%esp)					# callee-save register
	movl	%esi, 16(%esp)					# callee-save register
	movl	%edi, 20(%esp)					# callee-save register
L38:
	movl	$1, -164(%ebp)					# run MOVE statement with src:t101, dst:
	movl	$0, -168(%ebp)					# run MOVE statement with src:t101, dst:
	movl	$0, -172(%ebp)					# run MOVE statement with src:t101, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t233
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t233, dst:t232,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t232
	cmpl	%ebx, -172(%ebp)					# compare before conditional jump with src1:t232, src2:t101,
	jle	L13
L7:
	movl	-164(%ebp), %eax					# run MOVE statement with src:t101, dst:t100,
	jmp	L37					# unconditional jump
L13:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t234,
	addl	$-176, %ebx					# evaluate PLUS expression src: dst:t234
	movl	%ebx, %ebx					# run MOVE statement with src:t234, dst:t230,
	movl	8(%ebp), %esi					# evaluate MEM expression src:t101, dst:t235
	movl	12(%esi), %esi					# evaluate MEM expression src:t235, dst:t236
	movl	%esi, 0(%esp)					# argument 0 for substring from src:t236,
	movl	-172(%ebp), %esi					# evaluate MEM expression src:t101, dst:t237
	movl	%esi, 4(%esp)					# argument 1 for substring from src:t237,
	movl	$1, 8(%esp)					# argument 2 for substring from src:
	call	substring					# call function substring, putting result in EAX
	movl	%eax, %esi					# move result of substring to desired register:t238
	movl	%esi, %esi					# run MOVE statement with src:t238, dst:t229,
	movl	%esi, (%ebx)					# run MOVE statement with src:t229,t230, dst:
	movl	-176(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t239
	movl	%ebx, 0(%esp)					# argument 0 for stringEqual from src:t239,
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t240
	movl	16(%ebx), %ebx					# evaluate MEM expression src:t240, dst:t241
	movl	%ebx, 4(%esp)					# argument 1 for stringEqual from src:t241,
	call	stringEqual					# call function stringEqual, putting result in EAX
	movl	%eax, %ebx					# move result of stringEqual to desired register:t242
	movl	%ebx, %ebx					# run MOVE statement with src:t242, dst:t231,
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t231,
	je	L12
L11:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t243,
	subl	-168(%ebp), %ebx					# evaluate MINUS expression src:t101, dst:t243
	cmpl	$1, %ebx					# compare before conditional jump with src1: src2:t243,
	jg	L8
L9:
	movl	-172(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t244
	movl	%ebx, -168(%ebp)					# run MOVE statement with src:t244,t101, dst:
	movl	$0, %ebx					# run MOVE statement with src: dst:t106,
L10:
L12:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t246
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t246, dst:t245,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t245
	cmpl	%ebx, -172(%ebp)					# compare before conditional jump with src1:t245, src2:t101,
	jge	L7
L14:
	movl	-172(%ebp), %ebx					# run MOVE statement with src:t101, dst:t247,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t247
	movl	%ebx, -172(%ebp)					# run MOVE statement with src:t247,t101, dst:
	jmp	L13					# unconditional jump
L8:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t248,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t248
	movl	%ebx, -164(%ebp)					# run MOVE statement with src:t248,t101, dst:
	movl	$0, %ebx					# run MOVE statement with src: dst:t106,
	jmp	L10					# unconditional jump
L37:
	movl	12(%esp), %ebx					# restore callee-saved register
	movl	16(%esp), %esi					# restore callee-saved register
	movl	20(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function L6
.globl	L0					# make linkable
	.type	L0, @function					# identify it as a function (for linking)
L0:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$188, %esp					# make room for 40 pseudoregs, 2 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L40:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t259,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t259
	movl	%ebx, %ebx					# run MOVE statement with src:t259, dst:t250,
	call	getch					# call function getch, putting result in EAX
	movl	%eax, %esi					# move result of getch to desired register:t260
	movl	%esi, %esi					# run MOVE statement with src:t260, dst:t249,
	movl	%esi, (%ebx)					# run MOVE statement with src:t249,t250, dst:
	movl	$L1, -168(%ebp)					# run MOVE statement with src:t101, dst:
	movl	-164(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t261
	movl	%ebx, 0(%esp)					# argument 0 for stringEqual from src:t261,
	movl	$L2, 4(%esp)					# argument 1 for stringEqual from src:
	call	stringEqual					# call function stringEqual, putting result in EAX
	movl	%eax, %ebx					# move result of stringEqual to desired register:t262
	movl	%ebx, %ebx					# run MOVE statement with src:t262, dst:t252,
	movl	%ebx, 0(%esp)					# argument 0 for not from src:t252,
	call	not					# call function not, putting result in EAX
	movl	%eax, %ebx					# move result of not to desired register:t263
	movl	%ebx, %ebx					# run MOVE statement with src:t263, dst:t251,
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t251,
	je	L3
L4:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t264,
	addl	$-168, %ebx					# evaluate PLUS expression src: dst:t264
	movl	%ebx, %ebx					# run MOVE statement with src:t264, dst:t254,
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t265
	movl	%esi, 0(%esp)					# argument 0 for concat from src:t265,
	movl	-164(%ebp), %esi					# evaluate MEM expression src:t101, dst:t266
	movl	%esi, 4(%esp)					# argument 1 for concat from src:t266,
	call	concat					# call function concat, putting result in EAX
	movl	%eax, %esi					# move result of concat to desired register:t267
	movl	%esi, %esi					# run MOVE statement with src:t267, dst:t253,
	movl	%esi, (%ebx)					# run MOVE statement with src:t253,t254, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t268,
	addl	$-164, %ebx					# evaluate PLUS expression src: dst:t268
	movl	%ebx, %ebx					# run MOVE statement with src:t268, dst:t256,
	call	getch					# call function getch, putting result in EAX
	movl	%eax, %esi					# move result of getch to desired register:t269
	movl	%esi, %esi					# run MOVE statement with src:t269, dst:t255,
	movl	%esi, (%ebx)					# run MOVE statement with src:t255,t256, dst:
	movl	-164(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t270
	movl	%ebx, 0(%esp)					# argument 0 for stringEqual from src:t270,
	movl	$L2, 4(%esp)					# argument 1 for stringEqual from src:
	call	stringEqual					# call function stringEqual, putting result in EAX
	movl	%eax, %ebx					# move result of stringEqual to desired register:t271
	movl	%ebx, %ebx					# run MOVE statement with src:t271, dst:t258,
	movl	%ebx, 0(%esp)					# argument 0 for not from src:t258,
	call	not					# call function not, putting result in EAX
	movl	%eax, %ebx					# move result of not to desired register:t272
	movl	%ebx, %ebx					# run MOVE statement with src:t272, dst:t257,
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t257,
	jne	L4
L3:
	movl	-168(%ebp), %eax					# run MOVE statement with src:t101, dst:t100,
	jmp	L39					# unconditional jump
L39:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function L0
L2:					# string literal: "."
	.long 1					# string's length
	.byte 46					# string's bytes
L1:					# string literal: ""
	.long 0					# string's length
	.byte 0					# string's bytes
