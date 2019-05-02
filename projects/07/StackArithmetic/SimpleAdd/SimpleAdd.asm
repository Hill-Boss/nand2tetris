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
// VM Code: add
// Assembly Code:
@SP
M=M-1
A=M
D=M
@SP
M=M-1
@SP
A=M
M=M+D
@SP
M=M+1
