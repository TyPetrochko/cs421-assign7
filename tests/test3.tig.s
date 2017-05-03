L4:
	movl %t101, %t173	
	movl %t173, %t172
	movl $-244, %t174	
	addl %t174, %t172
	movl %t172, %t171	
	movl $8, %t175	
	movl %t175, %t170	
	movl %t170, %t176	
	movl %t176, -0(%t102)	
	call allocRecord
	movl %t100, %t177
	movl %t177, %t169	
	movl $L1, -0(%t169)	
	movl $1000, 4(%t169)	
	movl %t169, %t178	
	movl %t171, %t179	
	movl %t178, (%t179)	
	movl $L2, %t180	 # This should be caught!
	movl %t101, %t183	
	movl -244(%t183), %t182	
	movl %t182, %t181
	movl $-0, %t184	
	addl %t184, %t181
	movl %t180, (%t181)	
	movl %t101, %t186	
	movl -244(%t186), %t185	
	movl $1, %t187	
	movl %t187, %t100	
	jmp L3	
L3:
L2:
	.long 8
	.string "Somebody"
L1:
	.long 6
	.string "Nobody"
