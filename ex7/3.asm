#----------------------------------------------
add $t1,$0,$0		#t1=i=0
lui $s3, 0x1002 	#s3=pointer
add $s1,$0,$0		#s1=0
add $s2,$0,$0		#s2=0

while: beq $t1,16,end
	lw $t3, 0($s3)		#t3 = a[pointer]
	lw $t8, 0($s3)		#t3 = a[pointer]
	mult  $t3,$t8		#t3^2
	mfhi $t4
	mflo $t5
	add  $s1,$s1,$t4		#s1 += t4 (high bits of mun)
	add  $s2,$s2,$t5		#s2 += t4 (low bits of mun)

	addi $t1,$t1,1	#i++
	addi $s3,$s3,4	#pointer+=4
	j while
end:
