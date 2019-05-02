// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm
// Multiplies R0 and R1 and stores the result in R2.

// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@0
D = A
@R2

M = D 
// Set R2 = 0 to start
(LOOP)

@R1

D = M

@END

D;JEQ  // Jump to END if R1 = 0


@R1

MD = M - 1
// R1 = R1 - 1

@R0

D = M
// Load R0 into D

@R2

M = D + M
// Set R2 = R2 + D

@LOOP

0;JMP
// Jump


(END)

@END

0;JMP
