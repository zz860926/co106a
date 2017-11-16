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

// Put your code here.

(START)
    @8192
    D=A
    @count
    M=D

    @SCREEN
    D=A
    @ptr
    M=D
(LOOP)
    @KBD
    D=M
    @WHITE
    D;JEQ  //If D=0 jamp
    @BLACK
    0;JMP
(WHITE)
    @ptr
    A=M
    M=0
    @NEXTW
    0;JMP
(BLACK)
    @ptr
    A=M
    M=-1
    @NEXTB
    0;JMP
(NEXTW)
    @count
    MD=M-1
    @START
    D;JEQ  //If D=0 jamp
    @ptr
    M=M+1
    @LOOP
    0;JMP

(NEXTB)
    @count
    MD=M-1
    @START
    D;JEQ  //If D=0 jamp
    @ptr
    M=M+1
    @LOOP
    0;JMP