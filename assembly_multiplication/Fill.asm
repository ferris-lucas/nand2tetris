(WHITE)
D=0
@ADRESS //when no key is pressed, we fill the ram adresses with '0'
0;JMP

(BLACK)
D=-1
@ADRESS //when any key is pressed, we fill the ram adresses with '1111111111111111'
0;JMP

(FILL)
@SCREEN
D=A
@addr
M=D // addr = 16384
// (screen’s base address)
@8193 //lenght to be filled, from RAM[16384] to RAM[24375]
D=A
@n
M=D

@i
M=0 // i = 0

(LOOP)
@i
D=M
@n
D=M-D
@END
D;JEQ // if i=n goto END

@24576
D=M //checks if the value of RAM[24376] is zero (no key pressed -> white screen) or non zero (key pressed -> black screen)
@WHITE
D;JEQ
@BLACK
D;JNE

(ADRESS)
@addr
A=M
M=D // RAM[addr]=1111111111111111 or 0, according to keyboard pressed or not

@i
M=M+1 // i = i + 1
@addr
M=M+1 // addr = addr + 1
@LOOP
0;JMP // goto LOOP

(END)
@FILL // program’s end
0;JMP // infinite loop
