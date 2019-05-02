// ALL PARSED VM COMMANDS
// VM Code: push constant 3030
// Assembly Code:
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop pointer 0
// Assembly Code:
@SP
M=M-1
A=M
D=M
@3
M=D
// VM Code: push constant 3040
// Assembly Code:
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop pointer 1
// Assembly Code:
@SP
M=M-1
A=M
D=M
@4
M=D
// VM Code: push constant 32
// Assembly Code:
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop this 2
// Assembly Code:
@2
D=A
@THIS
A=M
D=D+A
@temporary
M=D
@SP
M=M-1
A=M
D=M
@temporary
A=M
M=D
// VM Code: push constant 46
// Assembly Code:
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop that 6
// Assembly Code:
@6
D=A
@THAT
A=M
D=D+A
@temporary
M=D
@SP
M=M-1
A=M
D=M
@temporary
A=M
M=D
// VM Code: push pointer 0
// Assembly Code:
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push pointer 1
// Assembly Code:
@4
D=M
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
// VM Code: push this 2
// Assembly Code:
@2
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: sub
// Assembly Code:
@SP
M=M-1
A=M
D=M
@SP
M=M-1
@SP
A=M
M=M-D
@SP
M=M+1
// VM Code: push that 6
// Assembly Code:
@6
D=A
@THAT
A=M+D
D=M
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
