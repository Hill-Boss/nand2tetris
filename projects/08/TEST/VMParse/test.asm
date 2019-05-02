// ALL PARSED VM COMMANDS
// VM Code: function SimpleFunction.test 0
// Assembly Code:
(SimpleFunction.test)
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
// VM Code: return
// Assembly Code:
@R1
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
M=M-1
@ARG
AD=M
@R15
M=D
@SP
A=M
D=M
@R15
A=M
M=D
@R2
D=M
@R0
M=D+1
@R13
D=M
D=D-1
@R13
M=D
A=D
D=M
@R4
M=D
@R13
D=M
D=D-1
@R13
M=D
A=D
D=M
@R3
M=D
@R13
D=M
D=D-1
@R13
M=D
A=D
D=M
@R2
M=D
@R13
D=M
D=D-1
@R13
M=D
A=D
D=M
@R1
M=D
@R14
A=M
0;JMP
// VM Code: push constant 5
// Assembly Code:
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 13
// Assembly Code:
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: call SimpleFunction.test 2
// Assembly Code:
@SimpleFunction.test0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@SimpleFunction.test
0;JMP
(SimpleFunction.test0)
