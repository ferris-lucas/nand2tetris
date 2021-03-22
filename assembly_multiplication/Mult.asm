@16 //represents i
M=0 //i=0
@17 //represents sum
M=0 //sum=0
@2
M=0
@1
D=M //takes R1
@16
D=D-M //checks if i == R1
@20  //if i==R1 goto instruction 19 (end of the code)
D;JEQ 
@0
D=M //takes R0
@2
M=D+M // performs R2 = R2+R0
@16
M=M+1 // i++
@6
0;JMP //goto instruction 4 (creates a loop)
@20
0;JMP