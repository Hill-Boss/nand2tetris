# VML to ML
# .vm to .asm assembler
# Chapter 07 .vm to .asm without flow Control
'''By Cody Hill-Boss'''


filename = ""

def VMParse(fileVM, fileASM, filenameOnly):

    filename = filenameOnly

    file = open(fileVM, 'r')
    VML = file.read()
    file.close()
    VML = VML.split('\n')

    for i in range(len(VML)):
        # if a comment the split and take what is before //. if line starts with // new line will be ''
        if '//' in VML[i]:
            temp = VML[i].split('//')
            del VML[i]
            VML.insert(i, temp[0])

    # remove all '' from VML
    while '' in VML:
        VML.remove('')

    # break each into by spaces
    for i in range(len(VML)):
        VML[i] = VML[i].split()

    # STR = initialize(256, "SP") # start SP at 256

    # Parse the .vm file
    STR = Parse(VML)

    # print(STR)
    fileASM = open(fileASM, "w")
    fileASM.write(STR)
    fileASM.close()

def initialize(num, arg):
    return "@" + str(num) + "\nD=A\n@" + arg + "\nM=D\n"

def Parse(cmds):
    STR = "// ALL PARSED VM COMMANDS\n"
    for cmd in cmds:
        STR += "// VM Code: "  + ' '.join(cmd) + "\n"
        if "push" in cmd:
            if len(cmd) != 3:
                print("push command did not have 3 parts: ", cmd)
                return -1;
            cmd = WritePushPop(cmd[0], cmd[1], cmd[2])
        elif "pop" in cmd:
            if len(cmd) != 3:
                print("pop command did not have 3 parts: ", cmd)
                return -1;
            cmd = WritePushPop(cmd[0], cmd[1], cmd[2])
        elif "add" in cmd:
            cmd = add()
        elif "sub" in cmd:
            cmd = sub()
        elif "and" in cmd:
            cmd = AND() # AND instead of and due to reserved words
        elif "or" in cmd:
            cmd = OR() # OR instead of or due to reserved words
        elif "neg" in cmd:
            cmd = neg()
        elif "not" in cmd:
            cmd = NOT() # NOT instead of not due to reserved words
        elif "eq" in cmd:
            cmd = eq()
        elif "gt" in cmd:
            cmd = gt()
        elif "lt" in cmd:
            cmd = lt()
        elif "goto" in cmd: # start of the function control codes
            cmd = goto(cmd[1])
        elif "if-goto" in cmd:
            cmd = if_goto(cmd[1])
        elif "label" in cmd:
            cmd = label(cmd[1])
        elif "call" in cmd:
            cmd = callFunction(cmd[1],cmd[2])
        elif "function" in cmd:
            cmd = makeFunction(cmd[1],cmd[2])
        elif "return" in cmd:
            cmd = return_control()
        STR += "// Assembly Code:\n" + cmd
    return STR

# Segments = ["static","pointer", "temp", "argument", "local", "this", "that"]
def WritePushPop(commandType, segment, index):
    index = int(index)
    if index < 0:
        return "\nERROR index < 0\n"
    if commandType == "push":
        if segment == "constant":
            return "@" + str(index) + "\nD=A\n" + push_D()
        elif segment == "local":
            return "@" + str(index) + "\nD=A\n@LCL\nA=M+D\nD=M\n" + push_D()
        elif segment == "argument":
            return "@" + str(index) + "\nD=A\n@ARG\nA=M+D\nD=M\n" + push_D()
        elif segment == "this":
            return "@" + str(index) + "\nD=A\n@THIS\nA=M+D\nD=M\n" + push_D()
        elif segment == "that":
            return "@" + str(index) + "\nD=A\n@THAT\nA=M+D\nD=M\n" + push_D()
        elif segment == "temp":
            if index >= 8:
                return "ERROR index >= 8"
            return "@" + str(5 + index) + "\nD=M\n" + push_D()
        elif segment == "pointer":
            if index >= 2:
                return "\nERROR index >= 2\n"
            return "@" + str(3 + index) + "\nD=M\n" + push_D()
        elif segment == "static":
            global filename
            return "@" + filename + "." + str(index) + "\nD=M\n" + push_D()
    elif commandType == "pop":
        if segment == "local":
            return "@" + str(index) + "\nD=A\n@LCL\nA=M\nD=D+A\n@temporary\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@temporary\nA=M\nM=D\n"
        elif segment == "argument":
            return "@" + str(index) + "\nD=A\n@ARG\nA=M\nD=D+A\n@temporary\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@temporary\nA=M\nM=D\n"
        elif segment == "this":
            return "@" + str(index) + "\nD=A\n@THIS\nA=M\nD=D+A\n@temporary\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@temporary\nA=M\nM=D\n"
        elif segment == "that":
            return "@" + str(index) + "\nD=A\n@THAT\nA=M\nD=D+A\n@temporary\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@temporary\nA=M\nM=D\n"
        elif segment == "temp":
            if index >= 8:
                return "ERROR index >= 8"
            return "@SP\nM=M-1\nA=M\nD=M\n@" + str(5 + index) + "\nM=D\n"
        elif segment == "pointer":
            return "@SP\nM=M-1\nA=M\nD=M\n@" + str(3 + index) + "\nM=D\n"
        elif segment == "static":
            return "@" + filename + "." + str(index) + "\nD=A\n@temporary\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@temporary\nA=M\nM=D\n"

def push_D():
    return "@SP\nA=M\nM=D\n@SP\nM=M+1\n"

def pop_D():
    return "@SP\nM=M-1\nA=M\nD=M\n"

def dec_SP():
    return "@SP\nM=M-1\n"

def inc_SP():
    return "@SP\nM=M+1\n"

def A_to_SP():
    return "@SP\nA=M\n"

# Arithmetic Operations
def add():
    return pop_D() + dec_SP() + A_to_SP() + "M=M+D\n" + inc_SP()

def sub():
    return pop_D() + dec_SP() + A_to_SP() + "M=M-D\n" + inc_SP()

def AND():
    return pop_D() + dec_SP() + A_to_SP() + "M=M&D\n" + inc_SP()

def OR():
    return pop_D() + dec_SP() + A_to_SP() + "M=M|D\n" + inc_SP()

def neg():
    return dec_SP() + A_to_SP() + "M=-M\n" + inc_SP()

def NOT():
    return dec_SP() + A_to_SP() + "M=!M\n" + inc_SP()


NumCalls = -1 # for EQ, GT, LT (labels)
def bool_start():
    global NumCalls
    NumCalls += 1
    return pop_D() + dec_SP() + A_to_SP() + "D=M-D\n@TRUE_" + str(NumCalls) + "\n"

def bool_end():
    global NumCalls
    return  A_to_SP() + "M=0\n@FALSE_" + str(NumCalls) + "\n0;JMP\n(TRUE_" + str(NumCalls) + ")\n" + A_to_SP() + "M=-1\n(FALSE_" + str(NumCalls) + ")\n" + inc_SP()

def eq():
    return bool_start() + "D;JEQ\n" + bool_end()

def gt():
    return bool_start() + "D;JGT\n" + bool_end()

def lt():
    return bool_start() + "D;JLT\n" + bool_end()
