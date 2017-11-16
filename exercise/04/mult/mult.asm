// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//sum = 0
//count = R1
//while(count>0)
//{ sum+=R0
//  count--}


    @sum
    M=0
    @R1
    D=M
    @count
    M=D

//while
(LOOP)
    @count
    D=M
    @END
    D;JEQ   // Check if count is 0, if so, goto END
    @R0
    D=M
    @sum
    M=M+D
    @count
    M=M-1
    @LOOP
    D;JMP   // Loop again

(END)
    @sum
    D=M
    @R2
    M=D
    
