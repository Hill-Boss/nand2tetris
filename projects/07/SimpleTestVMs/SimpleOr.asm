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
// VM Code: push constant 3
// Assembly Code:
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 9
// Assembly Code:
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: or
// Assembly Code:
@SP
A=M-1
D=M
A=A-1
D=D|M
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
