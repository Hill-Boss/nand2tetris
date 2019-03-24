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
// VM Code: push constant 8
// Assembly Code:
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: not
// Assembly Code:
@SP
A=M-1
D=!M
@SP
AM=M-1
M=0
@SP
A=M
M=D
@SP
M=M+1
