// ALL PARSED VM COMMANDS
// VM Code: push constant 10
// Assembly Code:
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop local 0
// Assembly Code:
@0
D=A
@LCL
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
// VM Code: push constant 21
// Assembly Code:
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 22
// Assembly Code:
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop argument 2
// Assembly Code:
@2
D=A
@ARG
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
// VM Code: pop argument 1
// Assembly Code:
@1
D=A
@ARG
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
// VM Code: push constant 36
// Assembly Code:
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop this 6
// Assembly Code:
@6
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
// VM Code: push constant 42
// Assembly Code:
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 45
// Assembly Code:
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop that 5
// Assembly Code:
@5
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
// VM Code: pop that 2
// Assembly Code:
@2
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
// VM Code: push constant 510
// Assembly Code:
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop temp 6
// Assembly Code:
@SP
M=M-1
A=M
D=M
@11
M=D
// VM Code: push local 0
// Assembly Code:
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push that 5
// Assembly Code:
@5
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
// VM Code: push argument 1
// Assembly Code:
@1
D=A
@ARG
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
// VM Code: push this 6
// Assembly Code:
@6
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push this 6
// Assembly Code:
@6
D=A
@THIS
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
// VM Code: push temp 6
// Assembly Code:
@11
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
