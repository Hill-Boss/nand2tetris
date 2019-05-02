// ALL PARSED VM COMMANDS
// VM Code: push constant 111
// Assembly Code:
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 333
// Assembly Code:
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 888
// Assembly Code:
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop static 8
// Assembly Code:
@.8
D=A
@temporary
M=D
@SP
M=M-1
A=M
D=M
@temporary
A=M
M=D
// VM Code: pop static 3
// Assembly Code:
@.3
D=A
@temporary
M=D
@SP
M=M-1
A=M
D=M
@temporary
A=M
M=D
// VM Code: pop static 1
// Assembly Code:
@.1
D=A
@temporary
M=D
@SP
M=M-1
A=M
D=M
@temporary
A=M
M=D
// VM Code: push static 3
// Assembly Code:
@.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push static 1
// Assembly Code:
@.1
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
// VM Code: push static 8
// Assembly Code:
@.8
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
