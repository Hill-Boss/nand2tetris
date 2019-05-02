// ALL PARSED VM COMMANDS
// VM Code: function Sys.init 0
// Assembly Code:
(Sys.init)
// VM Code: push constant 4000
// Assembly Code:
@4000
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
// VM Code: push constant 5000
// Assembly Code:
@5000
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
// VM Code: call Sys.main 0
// Assembly Code:
@Sys.main0
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
@Sys.main
0;JMP
(Sys.main0)
// VM Code: pop temp 1
// Assembly Code:
@SP
M=M-1
A=M
D=M
@6
M=D
// VM Code: label LOOP
// Assembly Code:
(LOOP)
// VM Code: goto LOOP
// Assembly Code:
@LOOP
0;JMP
// VM Code: function Sys.main 5
// Assembly Code:
(Sys.main)
D=0
@SP
A=M
M=D
@SP
M=M+1
D=0
@SP
A=M
M=D
@SP
M=M+1
D=0
@SP
A=M
M=D
@SP
M=M+1
D=0
@SP
A=M
M=D
@SP
M=M+1
D=0
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 4001
// Assembly Code:
@4001
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
// VM Code: push constant 5001
// Assembly Code:
@5001
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
// VM Code: push constant 200
// Assembly Code:
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop local 1
// Assembly Code:
@1
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
// VM Code: push constant 40
// Assembly Code:
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop local 2
// Assembly Code:
@2
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
// VM Code: push constant 6
// Assembly Code:
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: pop local 3
// Assembly Code:
@3
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
// VM Code: push constant 123
// Assembly Code:
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: call Sys.add12 1
// Assembly Code:
@Sys.add121
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
@Sys.add12
0;JMP
(Sys.add121)
// VM Code: pop temp 0
// Assembly Code:
@SP
M=M-1
A=M
D=M
@5
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
// VM Code: push local 1
// Assembly Code:
@1
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push local 2
// Assembly Code:
@2
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push local 3
// Assembly Code:
@3
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push local 4
// Assembly Code:
@4
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
// VM Code: function Sys.add12 0
// Assembly Code:
(Sys.add12)
// VM Code: push constant 4002
// Assembly Code:
@4002
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
// VM Code: push constant 5002
// Assembly Code:
@5002
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
// VM Code: push constant 12
// Assembly Code:
@12
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
