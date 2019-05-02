@256
D=A
@SP
M=D
// ALL PARSED VM COMMANDS
// VM Code: call Sys.init 0
// Assembly Code:
@Sys.init0
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
@5
D=A
@R0
A=M
AD=A-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init0)
// ALL PARSED VM COMMANDS
// VM Code: function Sys.init 0
// Assembly Code:
(Sys.init)
D=0
// VM Code: push constant 4
// Assembly Code:
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: call Main.fibonacci 1
// Assembly Code:
@Main.fibonacci1
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
@6
D=A
@R0
A=M
AD=A-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci1)
// VM Code: label WHILE
// Assembly Code:
(WHILE)
// VM Code: goto WHILE
// Assembly Code:
@WHILE
0;JMP
