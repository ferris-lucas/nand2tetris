
//push constant 0    
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0         
@SP
M=M-1
A=M
D=M
@300
M=D

(LOOP_START)

//push argument 0    
@400
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@300
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

//pop local 0	        
@SP
M=M-1
A=M
D=M
@300
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

//push argument 0
@400
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto
@SP
M=M-1
A=M
D=!M
@COND
M=D
@LOOP_START  
D;JNE

//push local 0
@300
D=M
@SP
A=M
M=D
@SP
M=M+1
