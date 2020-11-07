
#-------------------------
.text
	atzeret: 
			addi $sp,$sp,-8		#prepare stack
			sw $a0,4($sp)		#store a0
			sw $ra,0($sp)		#store ra
			bne $a0,1,else		#if(a!=1) goto else
			addi $v0, $0, 1		#v0 = 1
			addi $sp,$sp,8		#restore sp
			jr $ra 		
	else:
			addi $a0,$a0,-1		#n -= 1
			jal atzeret
			lw $ra,0($sp)		#restore ra
			lw $a0,4($sp)		#restore a0
			addi $sp,$sp,8		#restore sp
			mul $v0,$v0,$a0		#a * atzeret(a-1)
			add $s0,$0,$v0		#s0 = v0(the result)
			jr $ra
	end: