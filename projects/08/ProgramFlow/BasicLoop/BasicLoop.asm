// ALL PARSED VM COMMANDS
// VM Code: push constant 0
// Assembly Code:
@0
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
// VM Code: label LOOP_START
// Assembly Code:
(LOOP_START)
// VM Code: push argument 0
// Assembly Code:
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
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
// VM Code: push argument 0
// Assembly Code:
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 1
// Assembly Code:
@1
D=A
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
// VM Code: pop argument 0
// Assembly Code:
@0
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
// VM Code: push argument 0
// Assembly Code:
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: if-goto LOOP_START
// Assembly Code:
@SP
M=M-1
A=M
D=M
D=D+1
@LOOP_START
D;JGT
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
