input_file = open("C:/Users/lucas/OneDrive/Documentos/Nand to Tetris/nand2tetris/projects/08/ProgramFlow/BasicLoop/BasicLoop.vm", "r")
output_file = open("C:/Users/lucas/OneDrive/Documentos/Nand to Tetris/nand2tetris/projects/08/ProgramFlow/BasicLoop/BasicLoop.asm", "w")
list = []
j = 0
for line in input_file:
    currentCommand = line.split('//', 1)[0].rstrip('//')
    arg1 = line.split(' ', 1)[0].rstrip('\n')
    if arg1 == 'push':
        arg2 = currentCommand.split(' ', 1)[1]
        i = int(arg2.split(' ', 1)[1])
        if arg2.split(' ', 1)[0] == "local":
            LCL = 300
        elif arg2.split(' ', 1)[0] == "argument":
            LCL = 400
        elif arg2.split(' ', 1)[0] == "this":
            LCL = 3030
        elif arg2.split(' ', 1)[0] == "that":
            LCL = 3040
        elif arg2.split(' ', 1)[0] == "constant":
            LCL = 0
        elif arg2.split(' ', 1)[0] == "static":
            LCL = 16
        elif arg2.split(' ', 1)[0] == "pointer":
            LCL = 3
        elif arg2.split(' ', 1)[0] == "temp":
            LCL = 5

        addr = LCL+i

        if arg2.split(' ', 1)[0] == "constant":
            list.append('\n//push {}@{}\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1'.format(arg2, addr))
        else:
            list.append('\n//push {}@{}\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'.format(arg2, addr))

    elif arg1 == 'pop':
        arg2 = currentCommand.split(' ', 1)[1]
        i = int(arg2.split(' ', 1)[1])
        if arg2.split(' ', 1)[0] == "local":
            LCL = 300
        elif arg2.split(' ', 1)[0] == "argument":
            LCL = 400
        elif arg2.split(' ', 1)[0] == "this":
            LCL = 3030
        elif arg2.split(' ', 1)[0] == "that":
            LCL = 3040
        elif arg2.split(' ', 1)[0] == "static":
            LCL = 16
        elif arg2.split(' ', 1)[0] == "pointer":
            LCL = 3
        elif arg2.split(' ', 1)[0] == "temp":
            LCL = 5
        addr = LCL+i
        list.append('\n//pop {}\n@SP\nM=M-1\nA=M\nD=M\n@{}\nM=D'.format(arg2, addr))

    elif arg1 == "add":
        command = '\n//add\n@SP\nM=M-1\nA=M\nD=M\nA=A-1\nM=D+M'
        list.append(command)
    elif arg1 == "sub":
        command = '\n//sub\n@SP\nM=M-1\nA=M\nD=M\nA=A-1\nM=M-D'
        list.append(command)
    elif arg1 == "neg":
        command = '\n//neg\n@SP\nD=M\nA=D-1\nM=-M'
        list.append(command)
    elif arg1 == "eq":
        list.append('\n//eq\n@SP\nD=M\nA=D-1\nD=M\nA=A-1\nD=M-D\n@END_EQ{}\nD;JEQ\n@SP\nD=M\nA=D-1\nA=A-1\nM=0\nD=A+1\n@SP\nM=D\n@END_E{}\n0;JMP\n(END_EQ{})\n@SP\nD=M\nA=D-1\nA=A-1\nM=-1\nD=A+1\n@SP\nM=D\n(END_E{})'.format(j, j, j, j))
        j = j+1
    elif arg1 == "gt":
        list.append('\n//gt\n@SP\nD=M\nA=D-1\nD=M\nA=A-1\nD=M-D\n@END_GT{}\nD;JGT\n@SP\nD=M\nA=D-1\nA=A-1\nM=0\nD=A+1\n@SP\nM=D\n@END_E{}\n0;JMP\n(END_GT{})\n@SP\nD=M\nA=D-1\nA=A-1\nM=-1\nD=A+1\n@SP\nM=D\n(END_E{})'.format(j, j, j, j))
        j = j+1
    elif arg1 == "lt":
        list.append('\n//lt\n@SP\nD=M\nA=D-1\nD=M\nA=A-1\nD=M-D\n@END_LT{}\nD;JLT\n@SP\nD=M\nA=D-1\nA=A-1\nM=0\nD=A+1\n@SP\nM=D\n@END_E{}\n0;JMP\n(END_LT{})\n@SP\nD=M\nA=D-1\nA=A-1\nM=-1\nD=A+1\n@SP\nM=D\n(END_E{})'.format(j, j, j, j))
        j = j+1
    elif arg1 == "and":
        command = '\n//and\n@SP\nD=M\nA=D-1\nD=M\nA=A-1\nM=M&D\n@SP\nM=M-1'
        list.append(command)
    elif arg1 == "or":
        command = '\n//or\n@SP\nD=M\nA=D-1\nD=M\nA=A-1\nM=M|D\n@SP\nM=M-1'
        list.append(command)
    elif arg1 == "not":
        command = '\n//not\n@SP\nD=M\nA=D-1\nM=!M'
        list.append(command)

    elif arg1 == "label":
        arg2 = currentCommand.split(' ', 1)[1].rstrip('\n')
        list.append('\n({})'.format(arg2))
    elif arg1 == "if-goto":
        arg2 = currentCommand.split(' ', 1)[1].rstrip('\n')
        list.append('\n//if-goto\n@SP\nM=M-1\nA=M\nD=!M\n@COND\nM=D\n@{}\nD;JNE'.format(arg2))

output_file.writelines(["%s\n" % item for item in list])
output_file.close()
input_file.close()