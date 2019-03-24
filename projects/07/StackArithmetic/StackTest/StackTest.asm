// create segment static
// create segment pointer
// create segment temp
// create segment argument
// create segment local
// create segment this
// create segment that
@256
D=A
@SP
M=D
// ALL PARSED VM COMMANDS
// VM Code: push constant 17
// Assembly Code:
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 17
// Assembly Code:
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: eq
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_0
D;JEQ
@FALSE_0
D=0;JMP
(TRUE_0)
D=-1
(FALSE_0)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 17
// Assembly Code:
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 16
// Assembly Code:
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: eq
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_1
D;JEQ
@FALSE_1
D=0;JMP
(TRUE_1)
D=-1
(FALSE_1)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 16
// Assembly Code:
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 17
// Assembly Code:
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: eq
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_2
D;JEQ
@FALSE_2
D=0;JMP
(TRUE_2)
D=-1
(FALSE_2)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 892
// Assembly Code:
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 891
// Assembly Code:
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: lt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_3
D;JLT
@FALSE_3
D=0;JMP
(TRUE_3)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 891
// Assembly Code:
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 892
// Assembly Code:
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: lt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_4
D;JLT
@FALSE_4
D=0;JMP
(TRUE_4)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 891
// Assembly Code:
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 891
// Assembly Code:
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: lt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_5
D;JLT
@FALSE_5
D=0;JMP
(TRUE_5)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32767
// Assembly Code:
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32766
// Assembly Code:
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: gt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_6
D;JGT
@FALSE_6
D=0;JMP
(TRUE_6)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32766
// Assembly Code:
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32767
// Assembly Code:
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: gt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_7
D;JGT
@FALSE_7
D=0;JMP
(TRUE_7)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32766
// Assembly Code:
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 32766
// Assembly Code:
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: gt
// Assembly Code:
@SP
AM=M-1
D=M
M=0
@TRUE_8
D;JGT
@FALSE_8
D=0;JMP
(TRUE_8)
D=-1
(FALSE_i)
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 57
// Assembly Code:
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 31
// Assembly Code:
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 53
// Assembly Code:
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: add
// Assembly Code:
@SP
A=M-1
D=M
A=A-1
D=D+M
@SP
AM=M-1
M=0
@SP
M=M-1
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 112
// Assembly Code:
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: sub
// Assembly Code:
@SP
A=M-1
A=A-1
D=M
A=A+1
D=D-M
@SP
AM=M-1
M=0
@SP
M=M-1
@SP
A=M
M=D
@SP
M=M+1
// VM Code: neg
// Assembly Code:
@SP
A=M-1
D=-M
@SP
AM=M-1
M=0
@SP
A=M
M=D
@SP
M=M+1
// VM Code: and
// Assembly Code:
@SP
A=M-1
D=M
A=A-1
D=D&M
@SP
AM=M-1
M=0
@SP
M=M-1
@SP
A=M
M=D
@SP
M=M+1
// VM Code: push constant 82
// Assembly Code:
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// VM Code: or
// Assembly Code:
@SP
A=M-1
D=M
A=A-1
D=D|M
@SP
AM=M-1
M=0
@SP
M=M-1
@SP
A=M
M=D
@SP
M=M+1
// VM Code: not
// Assembly Code:
@SP
A=M-1
D=!M
@SP
AM=M-1
M=0
@SP
A=M
M=D
@SP
M=M+1
