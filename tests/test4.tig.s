L7:
	movl %t101, %t174	
	movl %t174, %t172	
	movl $10, %t175	
	movl %t175, %t173	
	movl %t173, %t176	
	movl %t176, 4(%t102)	
	movl %t172, %t177	
	movl %t177, -0(%t102)	
	call L1
	movl %t100, %t178
	movl $1, %t179	
	movl %t179, %t100	
	jmp L6	
L6:
L9:
	movl $-0, %t182	
	movl %t101, %t184	
	movl 12(%t184), %t183	
	cmpl %t182, %t183
	je L3
	jmp L4
L4:
	movl %t101, %t186	
	movl 12(%t186), %t185	
	movl %t185, %t181	
	movl %t101, %t188	
	movl 8(%t188), %t187	
	movl %t187, %t169	
	movl %t101, %t191	
	movl 12(%t191), %t190	
	movl %t190, %t189
	movl $1, %t192	
	subl %t192, %t189
	movl %t189, %t170	
	movl %t170, %t193	
	movl %t193, 4(%t102)	
	movl %t169, %t194	
	movl %t194, -0(%t102)	
	call L1
	movl %t100, %t195
	movl %t195, %t180	
	movl %t181, %t197	
	movl %t197, %t196
	movl %t180, %t198	
	imul %t198, %t196
	movl %t196, %t171	
L5:
	movl %t171, %t199	
	movl %t199, %t100	
	jmp L8	
L3:
	movl $1, %t200	
	movl %t200, %t171	
	jmp L5	
L8:
