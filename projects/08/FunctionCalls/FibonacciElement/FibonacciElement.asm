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
// ALL PARSED VM COMMANDS
// VM Code: function Main.fibonacci 0
// Assembly Code:
(Main.fibonacci)
D=0
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
// VM Code: lt
// Assembly Code:
@SP
M=M-1
A=M
D=M
@SP
M=M-1
@SP
A=M
D=M-D
@TRUE_0
D;JLT
@SP
A=M
M=0
@FALSE_0
0;JMP
(TRUE_0)
@SP
A=M
M=-1
(FALSE_0)
@SP
M=M+1
// VM Code: if-goto IF_TRUE
// Assembly Code:
@SP
M=M-1
A=M
D=M
D=D+1
@IF_TRUE
D;JGT
// VM Code: goto IF_FALSE
// Assembly Code:
@IF_FALSE
0;JMP
// VM Code: label IF_TRUE
// Assembly Code:
(IF_TRUE)
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
// VM Code: label IF_FALSE
// Assembly Code:
(IF_FALSE)
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
// VM Code: call Main.fibonacci 1
// Assembly Code:
@Main.fibonacci3
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
(Main.fibonacci3)
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
// VM Code: call Main.fibonacci 1
// Assembly Code:
@Main.fibonacci4
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
(Main.fibonacci4)
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
