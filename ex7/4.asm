
#----------------------------------------------
#t1 = pointer
#t3 = a[pointer]
#t8 = a[pointer]^2
#t2 = hi
#t4 = i
#s1 = count (the result)
.text
	lui $t1, 0x1002 				#t1 (pointer) 	= 0x1002
	addi $s0,$0,0						#s0 (count) 	= 0
	addi $t4,$0,0						#t4 (i)			= 0
	
	while: beq $t4,8,end			#while(i!=8)
		mult $0,$0
		lw $t3,0($t1)				#t3 = a[t1=pointer]
		mul $t8,$t3,$t3				#t8 = t3*t3
		mult $t3,$t8				#t3 = t3*t8
		
		mfhi $t2					#t2 = hi
		if: beq $t2,$0,skip			#if(hi==0) dont count
			addi $s1,$s1,1			#count++
		skip:
		addi $t1,$t1,4				#t1+=4
		addi $t4,$t4,1				#i++
		j while
	end:
	
	
