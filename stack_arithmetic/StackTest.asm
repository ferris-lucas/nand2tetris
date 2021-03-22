
//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_EQ0
D;JEQ
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E0
0;JMP
(END_EQ0)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E0)

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_EQ1
D;JEQ
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E1
0;JMP
(END_EQ1)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E1)

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_EQ2
D;JEQ
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E2
0;JMP
(END_EQ2)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E2)

//push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_LT3
D;JLT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E3
0;JMP
(END_LT3)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E3)

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_LT4
D;JLT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E4
0;JMP
(END_LT4)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E4)

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_LT5
D;JLT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E5
0;JMP
(END_LT5)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E5)

//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_GT6
D;JGT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E6
0;JMP
(END_GT6)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E6)

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_GT7
D;JGT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E7
0;JMP
(END_GT7)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E7)

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_GT8
D;JGT
@SP
D=M
A=D-1
A=A-1
M=0
D=A+1
@SP
M=D
@END_E8
0;JMP
(END_GT8)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E8)

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D

//neg
@SP
D=M
A=D-1
M=-M

//and
@SP
D=M
A=D-1
D=M
A=A-1
M=M&D
@SP
M=M-1

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//or
@SP
D=M
A=D-1
D=M
A=A-1
M=M|D
@SP
M=M-1

//not
@SP
D=M
A=D-1
M=!M
