@R0
D=M
@n
M=D
@sum
M=0
@i
M=1 (LOOP)
	@i
	D=M 
	@n
	D=D-M 
	@STOP
	D;JGT
	@sum
	D=M
	@i
	D=D+M
	@sum
	M=D
	@i
	M=M+1
	@LOOP
	0;JMP (STOP)
	@sum
	D=M
	@R1
	M=D (END)
	@END
	0;JMP