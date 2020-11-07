	addi $t1,$0,1	#t1=ai
	addi $t2,$0,1	#t2=bi
	addi $t3,$0,1	#t3=ci
	addi $t4,$0,1	#t4=di
	addi $t5,$0,1	#t5=i
	addi $t6,$0,11	#t6=10
	addi $s0,$0,0	#s0=sum
		
	#calculating the sigma
	for: beq $t5,11,done	#while(i!=10)
		add $t7,$0,$t1	#mul=ai
		#t7 = mul = ai*bi*ci*di
		mul $t7,$t7,$t2
		mul $t7,$t7,$t3
		mul $t7,$t7,$t4
		#sum += mul
		add $s0,$s0,$t7
		
		#ai += 2
		addi $t1,$t1,2
		#bi += (i+1)
		addi $t9,$t5,1
		add $t2,$t2,$t9
		#ci
		sll $t3,$t3,2
		#di *= -1
		mul  $t4,$t4,-1
		
		addi $t5,$t5,1	#i++
		j for
		 
	done:
