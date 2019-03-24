// create segment static
// create segment pointer
// create segment temp
// create segment argument
// create segment local
// create segment this
// create segment that
@256
D=A
@SP
M=D
// ALL PARSED VM COMMANDS
// VM Code: push constant 7
// Assembly Code:
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 8
// Assembly Code:
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: sub
// Assembly Code:
@SP
A=M-1
A=A-1
D=M
A=A+1
D=D-M
@SP
AM=M-1
M=0
@SP
M=M-1
@SP
A=M
M=D
@SP
M=M+1
// VM Code: eq
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_0
D;JEQ
@FALSE_0
D=0;JMP
(TRUE_0)
D=-1
(FALSE_0)
@SP
A=M
M=D
@SP
M=M+1
