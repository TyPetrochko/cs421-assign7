L2:
	movl %t101, %t174	
	movl %t174, %t173
	movl $-244, %t175	
	addl %t175, %t173
	movl %t173, %t172	
	movl $10, %t177	
	movl %t177, %t176
	movl $1, %t178	
	addl %t178, %t176
	movl %t176, %t170	
	movl $-0, %t179	
	movl %t179, %t171	
	movl %t171, %t180	
	movl %t180, 4(%t102)	
	movl %t170, %t181	
	movl %t181, -0(%t102)	
	call initArray
	movl %t100, %t182
	movl %t182, %t169	
	movl $10, %t183	
	movl %t169, %t184	
	movl %t183, (%t184)	
	movl %t169, %t185	
	movl %t172, %t186	
	movl %t185, (%t186)	
	movl %t101, %t188	
	movl -244(%t188), %t187	
	movl $1, %t189	
	movl %t189, %t100	
	jmp L1	
L1:
