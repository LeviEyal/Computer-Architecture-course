// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

(VARIABLES)
    //int n=R1
        @R1
        D=M
        @n
        M=D
    //int sum=0
        @sum
        M=0
    //int i=1
        @i
        M=1
(LOOP)
    //if i>n than stop the loop
        @i
        D=M
        @n
        D=D-M
        @STOP
        D;JGT
    //sum+=R0
        @R0
        D=M
        @sum
        M=M+D
    //i++
        @i
        M=M+1
    @LOOP
    0;JMP
(STOP)
    //R2 = sum
        @sum
        D=M
        @R2
        M=D
(END)
        @END
        0;JMP
