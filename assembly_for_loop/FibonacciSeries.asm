
//push argument 1
@401
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 1           
@SP
M=M-1
A=M
D=M
@4
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 0              
@SP
M=M-1
A=M
D=M
@3000
M=D

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 1              
@SP
M=M-1
A=M
D=M
@3001
M=D

//push argument 0
@400
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
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

//pop argument 0          
@SP
M=M-1
A=M
D=M
@400
M=D

(MAIN_LOOP_START)

//push argument 0
@400
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
D=M
A=D-1
D=M
A=A-1
D=M-D
@END_GT0
D;JGT
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
(END_GT0)
@SP
D=M
A=D-1
A=A-1
M=-1
D=A+1
@SP
M=D
(END_E0)

//if-goto
@SP
M=M-1
A=M
D=M
@COMPUTE_ELEMENT 
D;JNE

//goto
@END_PROGRAM        
0;JMP

(COMPUTE_ELEMENT)

//push that 0
@3040
D=M
@SP
A=M
M=D
@SP
M=M+1

//push that 1
@3041
D=M
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

//pop that 2              
@SP
M=M-1
A=M
D=M
@3002
M=D

//push pointer 1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
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

//pop pointer 1           
@SP
M=M-1
A=M
D=M
@4
M=D

//push argument 0
@400
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
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

//pop argument 0          
@SP
M=M-1
A=M
D=M
@400
M=D

//goto
@MAIN_LOOP_START
0;JMP

(END_PROGRAM)
