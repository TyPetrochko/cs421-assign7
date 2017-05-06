.globl	tigermain					# make linkable
	.type	tigermain, @function					# identify it as a function (for linking)
tigermain:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$200, %esp					# make room for 40 pseudoregs, 5 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L34:
	movl	$8, -164(%ebp)					# run MOVE statement with src:t101, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t142,
	addl	$-168, %ebx					# evaluate PLUS expression src: dst:t142
	movl	%ebx, %ebx					# run MOVE statement with src:t142, dst:t135,
	movl	-164(%ebp), %esi					# evaluate MEM expression src:t101, dst:t143
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t143,
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t144
	movl	%esi, %esi					# run MOVE statement with src:t144, dst:t134,
	movl	%esi, (%ebx)					# run MOVE statement with src:t134,t135, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t145,
	addl	$-172, %ebx					# evaluate PLUS expression src: dst:t145
	movl	%ebx, %ebx					# run MOVE statement with src:t145, dst:t137,
	movl	-164(%ebp), %esi					# evaluate MEM expression src:t101, dst:t146
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t146,
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t147
	movl	%esi, %esi					# run MOVE statement with src:t147, dst:t136,
	movl	%esi, (%ebx)					# run MOVE statement with src:t136,t137, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t148,
	addl	$-176, %ebx					# evaluate PLUS expression src: dst:t148
	movl	%ebx, %ebx					# run MOVE statement with src:t148, dst:t139,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t150,
	addl	-164(%ebp), %esi					# evaluate PLUS expression src:t101, dst:t150
	movl	%esi, %esi					# run MOVE statement with src:t150, dst:t149,
	subl	$1, %esi					# evaluate MINUS expression src: dst:t149
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t149,
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t151
	movl	%esi, %esi					# run MOVE statement with src:t151, dst:t138,
	movl	%esi, (%ebx)					# run MOVE statement with src:t138,t139, dst:
	movl	%ebp, %ebx					# run MOVE statement with src:t101, dst:t152,
	addl	$-180, %ebx					# evaluate PLUS expression src: dst:t152
	movl	%ebx, %ebx					# run MOVE statement with src:t152, dst:t141,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t154,
	addl	-164(%ebp), %esi					# evaluate PLUS expression src:t101, dst:t154
	movl	%esi, %esi					# run MOVE statement with src:t154, dst:t153,
	subl	$1, %esi					# evaluate MINUS expression src: dst:t153
	movl	%esi, 0(%esp)					# argument 0 for initArray from src:t153,
	movl	$0, 4(%esp)					# argument 1 for initArray from src:
	call	initArray					# call function initArray, putting result in EAX
	movl	%eax, %esi					# move result of initArray to desired register:t155
	movl	%esi, %esi					# run MOVE statement with src:t155, dst:t140,
	movl	%esi, (%ebx)					# run MOVE statement with src:t140,t141, dst:
	movl	%ebp, 0(%esp)					# argument 0 for L1 from src:t101,
	movl	$0, 4(%esp)					# argument 1 for L1 from src:
	call	L1					# call function L1, putting result in EAX
	movl	%eax, %ebx					# move result of L1 to desired register:t156
	movl	$1, %eax					# run MOVE statement with src: dst:t100,
	jmp	L33					# unconditional jump
L33:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function tigermain
.globl	L1					# make linkable
	.type	L1, @function					# identify it as a function (for linking)
L1:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$184, %esp					# make room for 40 pseudoregs, 1 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L36:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t157
	movl	-164(%ebx), %ebx					# evaluate MEM expression src:t157, dst:t158
	cmpl	%ebx, 12(%ebp)					# compare before conditional jump with src1:t158, src2:t101,
	je	L30
L31:
	movl	$0, -164(%ebp)					# run MOVE statement with src:t101, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t160
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t160, dst:t159,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t159
	cmpl	%ebx, -164(%ebp)					# compare before conditional jump with src1:t159, src2:t101,
	jle	L28
L15:
	movl	$0, %ebx					# run MOVE statement with src: dst:t133,
L32:
	movl	%ebx, %eax					# run MOVE statement with src:t133, dst:t100,
	jmp	L35					# unconditional jump
L30:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t161
	movl	%ebx, 0(%esp)					# argument 0 for L0 from src:t161,
	call	L0					# call function L0, putting result in EAX
	movl	%eax, %ebx					# move result of L0 to desired register:t162
	movl	%ebx, %ebx					# run MOVE statement with src:t162, dst:t133,
	jmp	L32					# unconditional jump
L28:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t163
	movl	-168(%ebx), %ebx					# run MOVE statement with src:t163, dst:t109,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t110,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t109,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t110,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t164
	movl	%ebx, %ebx					# run MOVE statement with src:t109, dst:t165,
	movl	%esi, %esi					# run MOVE statement with src:t110, dst:t166,
	imull	$4, %esi					# evaluate MUL expression src: dst:t166
	addl	%esi, %ebx					# evaluate PLUS expression src:t166, dst:t165
	cmpl	$0, (%ebx)					# compare before conditional jump with src1: src2:t165,
	je	L16
L17:
	movl	$0, %ebx					# run MOVE statement with src: dst:t113,
L18:
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t113,
	je	L22
L21:
	movl	$1, %ebx					# run MOVE statement with src: dst:t118,
	movl	8(%ebp), %esi					# evaluate MEM expression src:t101, dst:t167
	movl	-180(%esi), %esi					# run MOVE statement with src:t167, dst:t115,
	movl	-164(%ebp), %edi					# run MOVE statement with src:t101, dst:t169,
	addl	$7, %edi					# evaluate PLUS expression src: dst:t169
	movl	%edi, %edi					# run MOVE statement with src:t169, dst:t168,
	subl	12(%ebp), %edi					# evaluate MINUS expression src:t101, dst:t168
	movl	%edi, %edi					# run MOVE statement with src:t168, dst:t116,
	movl	%esi, 0(%esp)					# argument 0 for checkArrayBounds from src:t115,
	movl	%edi, 4(%esp)					# argument 1 for checkArrayBounds from src:t116,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %ecx					# move result of checkArrayBounds to desired register:t170
	movl	%ecx, -4(%ebp)					# save pseudo-register f0
	movl	%esi, %esi					# run MOVE statement with src:t115, dst:t171,
	movl	%edi, %edi					# run MOVE statement with src:t116, dst:t172,
	imull	$4, %edi					# evaluate MUL expression src: dst:t172
	addl	%edi, %esi					# evaluate PLUS expression src:t172, dst:t171
	cmpl	$0, (%esi)					# compare before conditional jump with src1: src2:t171,
	je	L24
L25:
	movl	$0, %ebx					# run MOVE statement with src: dst:t118,
L24:
	movl	%ebx, %ebx					# run MOVE statement with src:t118, dst:t117,
L23:
	cmpl	$0, %ebx					# compare before conditional jump with src1: src2:t117,
	je	L27
L26:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t173
	movl	-168(%ebx), %ebx					# run MOVE statement with src:t173, dst:t119,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t120,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t119,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t120,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t174
	movl	%ebx, %ebx					# run MOVE statement with src:t119, dst:t175,
	movl	%esi, %esi					# run MOVE statement with src:t120, dst:t176,
	imull	$4, %esi					# evaluate MUL expression src: dst:t176
	addl	%esi, %ebx					# evaluate PLUS expression src:t176, dst:t175
	movl	$1, (%ebx)					# run MOVE statement with src:t175, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t177
	movl	-176(%ebx), %ebx					# run MOVE statement with src:t177, dst:t121,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t178,
	addl	12(%ebp), %esi					# evaluate PLUS expression src:t101, dst:t178
	movl	%esi, %esi					# run MOVE statement with src:t178, dst:t122,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t121,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t122,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t179
	movl	%ebx, %ebx					# run MOVE statement with src:t121, dst:t180,
	movl	%esi, %esi					# run MOVE statement with src:t122, dst:t181,
	imull	$4, %esi					# evaluate MUL expression src: dst:t181
	addl	%esi, %ebx					# evaluate PLUS expression src:t181, dst:t180
	movl	$1, (%ebx)					# run MOVE statement with src:t180, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t182
	movl	-180(%ebx), %ebx					# run MOVE statement with src:t182, dst:t123,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t184,
	addl	$7, %esi					# evaluate PLUS expression src: dst:t184
	movl	%esi, %esi					# run MOVE statement with src:t184, dst:t183,
	subl	12(%ebp), %esi					# evaluate MINUS expression src:t101, dst:t183
	movl	%esi, %esi					# run MOVE statement with src:t183, dst:t124,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t123,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t124,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t185
	movl	%ebx, %ebx					# run MOVE statement with src:t123, dst:t186,
	movl	%esi, %esi					# run MOVE statement with src:t124, dst:t187,
	imull	$4, %esi					# evaluate MUL expression src: dst:t187
	addl	%esi, %ebx					# evaluate PLUS expression src:t187, dst:t186
	movl	$1, (%ebx)					# run MOVE statement with src:t186, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t188
	movl	-172(%ebx), %ebx					# run MOVE statement with src:t188, dst:t125,
	movl	12(%ebp), %esi					# run MOVE statement with src:t101, dst:t126,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t125,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t126,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t189
	movl	-164(%ebp), %edi					# evaluate MEM expression src:t101, dst:t190
	movl	%ebx, %ebx					# run MOVE statement with src:t125, dst:t191,
	movl	%esi, %esi					# run MOVE statement with src:t126, dst:t192,
	imull	$4, %esi					# evaluate MUL expression src: dst:t192
	addl	%esi, %ebx					# evaluate PLUS expression src:t192, dst:t191
	movl	%edi, (%ebx)					# run MOVE statement with src:t190,t191, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t193
	movl	%ebx, 0(%esp)					# argument 0 for L1 from src:t193,
	movl	12(%ebp), %ebx					# run MOVE statement with src:t101, dst:t194,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t194
	movl	%ebx, 4(%esp)					# argument 1 for L1 from src:t194,
	call	L1					# call function L1, putting result in EAX
	movl	%eax, %ebx					# move result of L1 to desired register:t195
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t196
	movl	-168(%ebx), %ebx					# run MOVE statement with src:t196, dst:t127,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t128,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t127,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t128,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t197
	movl	%ebx, %ebx					# run MOVE statement with src:t127, dst:t198,
	movl	%esi, %esi					# run MOVE statement with src:t128, dst:t199,
	imull	$4, %esi					# evaluate MUL expression src: dst:t199
	addl	%esi, %ebx					# evaluate PLUS expression src:t199, dst:t198
	movl	$0, (%ebx)					# run MOVE statement with src:t198, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t200
	movl	-176(%ebx), %ebx					# run MOVE statement with src:t200, dst:t129,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t201,
	addl	12(%ebp), %esi					# evaluate PLUS expression src:t101, dst:t201
	movl	%esi, %esi					# run MOVE statement with src:t201, dst:t130,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t129,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t130,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t202
	movl	%ebx, %ebx					# run MOVE statement with src:t129, dst:t203,
	movl	%esi, %esi					# run MOVE statement with src:t130, dst:t204,
	imull	$4, %esi					# evaluate MUL expression src: dst:t204
	addl	%esi, %ebx					# evaluate PLUS expression src:t204, dst:t203
	movl	$0, (%ebx)					# run MOVE statement with src:t203, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t205
	movl	-180(%ebx), %ebx					# run MOVE statement with src:t205, dst:t131,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t207,
	addl	$7, %esi					# evaluate PLUS expression src: dst:t207
	movl	%esi, %esi					# run MOVE statement with src:t207, dst:t206,
	subl	12(%ebp), %esi					# evaluate MINUS expression src:t101, dst:t206
	movl	%esi, %esi					# run MOVE statement with src:t206, dst:t132,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t131,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t132,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t208
	movl	%ebx, %ebx					# run MOVE statement with src:t131, dst:t209,
	movl	%esi, %esi					# run MOVE statement with src:t132, dst:t210,
	imull	$4, %esi					# evaluate MUL expression src: dst:t210
	addl	%esi, %ebx					# evaluate PLUS expression src:t210, dst:t209
	movl	$0, (%ebx)					# run MOVE statement with src:t209, dst:
L27:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t212
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t212, dst:t211,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t211
	cmpl	%ebx, -164(%ebp)					# compare before conditional jump with src1:t211, src2:t101,
	jge	L15
L29:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t213,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t213
	movl	%ebx, -164(%ebp)					# run MOVE statement with src:t213,t101, dst:
	jmp	L28					# unconditional jump
L16:
	movl	$1, %ebx					# run MOVE statement with src: dst:t114,
	movl	8(%ebp), %esi					# evaluate MEM expression src:t101, dst:t214
	movl	-176(%esi), %esi					# run MOVE statement with src:t214, dst:t111,
	movl	-164(%ebp), %edi					# run MOVE statement with src:t101, dst:t215,
	addl	12(%ebp), %edi					# evaluate PLUS expression src:t101, dst:t215
	movl	%edi, %edi					# run MOVE statement with src:t215, dst:t112,
	movl	%esi, 0(%esp)					# argument 0 for checkArrayBounds from src:t111,
	movl	%edi, 4(%esp)					# argument 1 for checkArrayBounds from src:t112,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %ecx					# move result of checkArrayBounds to desired register:t216
	movl	%ecx, -4(%ebp)					# save pseudo-register f0
	movl	%esi, %esi					# run MOVE statement with src:t111, dst:t217,
	movl	%edi, %edi					# run MOVE statement with src:t112, dst:t218,
	imull	$4, %edi					# evaluate MUL expression src: dst:t218
	addl	%edi, %esi					# evaluate PLUS expression src:t218, dst:t217
	cmpl	$0, (%esi)					# compare before conditional jump with src1: src2:t217,
	je	L19
L20:
	movl	$0, %ebx					# run MOVE statement with src: dst:t114,
L19:
	movl	%ebx, %ebx					# run MOVE statement with src:t114, dst:t113,
	jmp	L18					# unconditional jump
L22:
	movl	$0, %ebx					# run MOVE statement with src: dst:t117,
	jmp	L23					# unconditional jump
L35:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function L1
.globl	L0					# make linkable
	.type	L0, @function					# identify it as a function (for linking)
L0:					# entry point for function
	pushl	%ebp					# save previous frame pointer
	movl	%esp, %ebp					# set new frame pointer
	subl	$188, %esp					# make room for 40 pseudoregs, 2 locals, 3 callee-saves, and 2 maxargs,
	movl	%ebx, 8(%esp)					# callee-save register
	movl	%esi, 12(%esp)					# callee-save register
	movl	%edi, 16(%esp)					# callee-save register
L38:
	movl	$0, -164(%ebp)					# run MOVE statement with src:t101, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t222
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t222, dst:t221,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t221
	cmpl	%ebx, -164(%ebp)					# compare before conditional jump with src1:t221, src2:t101,
	jle	L12
L2:
	movl	$L14, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t223
	movl	%ebx, %ebx					# run MOVE statement with src:t223, dst:t220,
	movl	%ebx, %eax					# run MOVE statement with src:t220, dst:t100,
	jmp	L37					# unconditional jump
L12:
	movl	$0, -168(%ebp)					# run MOVE statement with src:t101, dst:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t225
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t225, dst:t224,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t224
	cmpl	%ebx, -168(%ebp)					# compare before conditional jump with src1:t224, src2:t101,
	jle	L9
L3:
	movl	$L11, 0(%esp)					# argument 0 for print from src:
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t226
	movl	%ebx, %ebx					# run MOVE statement with src:t226, dst:t219,
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t228
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t228, dst:t227,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t227
	cmpl	%ebx, -164(%ebp)					# compare before conditional jump with src1:t227, src2:t101,
	jge	L2
L13:
	movl	-164(%ebp), %ebx					# run MOVE statement with src:t101, dst:t229,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t229
	movl	%ebx, -164(%ebp)					# run MOVE statement with src:t229,t101, dst:
	jmp	L12					# unconditional jump
L9:
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t230
	movl	-172(%ebx), %ebx					# run MOVE statement with src:t230, dst:t106,
	movl	-164(%ebp), %esi					# run MOVE statement with src:t101, dst:t107,
	movl	%ebx, 0(%esp)					# argument 0 for checkArrayBounds from src:t106,
	movl	%esi, 4(%esp)					# argument 1 for checkArrayBounds from src:t107,
	call	checkArrayBounds					# call function checkArrayBounds, putting result in EAX
	movl	%eax, %edi					# move result of checkArrayBounds to desired register:t231
	movl	%ebx, %ebx					# run MOVE statement with src:t106, dst:t232,
	movl	%esi, %esi					# run MOVE statement with src:t107, dst:t233,
	imull	$4, %esi					# evaluate MUL expression src: dst:t233
	addl	%esi, %ebx					# evaluate PLUS expression src:t233, dst:t232
	movl	-168(%ebp), %esi					# evaluate MEM expression src:t101, dst:t234
	cmpl	%esi, (%ebx)					# compare before conditional jump with src1:t234, src2:t232,
	je	L6
L7:
	movl	$L5, %ebx					# run MOVE statement with src: dst:t108,
L8:
	movl	%ebx, 0(%esp)					# argument 0 for print from src:t108,
	call	print					# call function print, putting result in EAX
	movl	%eax, %ebx					# move result of print to desired register:t235
	movl	8(%ebp), %ebx					# evaluate MEM expression src:t101, dst:t237
	movl	-164(%ebx), %ebx					# run MOVE statement with src:t237, dst:t236,
	subl	$1, %ebx					# evaluate MINUS expression src: dst:t236
	cmpl	%ebx, -168(%ebp)					# compare before conditional jump with src1:t236, src2:t101,
	jge	L3
L10:
	movl	-168(%ebp), %ebx					# run MOVE statement with src:t101, dst:t238,
	addl	$1, %ebx					# evaluate PLUS expression src: dst:t238
	movl	%ebx, -168(%ebp)					# run MOVE statement with src:t238,t101, dst:
	jmp	L9					# unconditional jump
L6:
	movl	$L4, %ebx					# run MOVE statement with src: dst:t108,
	jmp	L8					# unconditional jump
L37:
	movl	8(%esp), %ebx					# restore callee-saved register
	movl	12(%esp), %esi					# restore callee-saved register
	movl	16(%esp), %edi					# restore callee-saved register
	movl	%ebp, %esp					# dealloc stack frame
	popl	%ebp					# restore previous frame pointer
	ret					# return from function L0
L14:					# string literal: "\n"
	.long 1					# string's length
	.byte 10					# string's bytes
L11:					# string literal: "\n"
	.long 1					# string's length
	.byte 10					# string's bytes
L5:					# string literal: " ."
	.long 2					# string's length
	.byte 32, 46					# string's bytes
L4:					# string literal: " O"
	.long 2					# string's length
	.byte 32, 79					# string's bytes
