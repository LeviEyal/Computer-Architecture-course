// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


(IS_PRESSING)
    @SCREEN
    D=A
    @i	
    M=D

    @KBD
    D=M
    @FILL
    D;JGT
    @IS_PRESSING
    0;JMP
//______________________________________________ 
(IS_STOP_PRESSING)
    @SCREEN
    D=A
    @i	
    M=D

    @KBD
    D=M
    @CLEAR
    D;JEQ
    @IS_STOP_PRESSING
    0;JMP
//______________________________________________
(FILL)
    (BLACK_LOOP)
        @i	
        A=M
        M=-1

        @i	        //i++ 
        M=M+1

        @KBD              	                  
        D=A               
        @i                
        D=D-M             
        @BLACK_LOOP       
        D;JGT             

    @IS_STOP_PRESSING
    0;JMP
//______________________________________________
(CLEAR)
    (WHITE_LOOP)
        @i
        A=M
        M=0

        @i	                   //i++
        M=M+1                  

        @KBD                   
        D=A                    
        @i                     
        D=D-M                  
        @WHITE_LOOP            
        D;JGT                  

    @IS_PRESSING
    0;JMP
//______________________________________________