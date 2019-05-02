// ALL PARSED VM COMMANDS
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
// VM Code: pop pointer 1
// Assembly Code:
@SP
M=M-1
A=M
D=M
@4
M=D
// VM Code: push constant 0
// Assembly Code:
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop that 0
// Assembly Code:
@0
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
// VM Code: push constant 1
// Assembly Code:
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop that 1
// Assembly Code:
@1
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
// VM Code: push constant 2
// Assembly Code:
@2
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
// VM Code: label MAIN_LOOP_START
// Assembly Code:
(MAIN_LOOP_START)
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
// VM Code: if-goto COMPUTE_ELEMENT
// Assembly Code:
@SP
M=M-1
A=M
D=M
D=D+1
@COMPUTE_ELEMENT
D;JGT
// VM Code: goto END_PROGRAM
// Assembly Code:
@END_PROGRAM
0;JMP
// VM Code: label COMPUTE_ELEMENT
// Assembly Code:
(COMPUTE_ELEMENT)
// VM Code: push that 0
// Assembly Code:
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push that 1
// Assembly Code:
@1
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
// VM Code: push pointer 1
// Assembly Code:
@4
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
// VM Code: pop pointer 1
// Assembly Code:
@SP
M=M-1
A=M
D=M
@4
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
// VM Code: goto MAIN_LOOP_START
// Assembly Code:
@MAIN_LOOP_START
0;JMP
// VM Code: label END_PROGRAM
// Assembly Code:
(END_PROGRAM)
