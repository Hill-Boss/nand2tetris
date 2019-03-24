
def VMParse(fileVM, fileASM):
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
        VML[i] = VML[i].split(' ')

    # initialize SP at 256
    # LCL = 300
    # ARG = 400
    # this = 3000
    # that = 3010
    STR = countSegments(VML) # prints @segment#\nM=0\nto initialize all with memory locations = 0
    STR += "@256\nD=A\n@SP\nM=D\n" # start SP at 256
    # Parse the .vm file
    STR += Parse(VML)

    # print(STR)
    fileASM = open(fileASM, "w")
    fileASM.write(STR)
    fileASM.close()
def initialize(num, arg):
    return "@" + str(num) + "\nD=A\n@" + arg + "\nM=D\n"

# every segment and its memory address including the index
# Segments are STATIC, POINTER, TEMP, ARGUMENT, LOCAL, THIS, or THAT.
# where SP starts is where segments end + 1
# for testing
def countSegments(cmds):
    static = 0
    pointer = 0
    temp = 0
    arg = 0
    lcl = 0
    this = 0
    that = 0

    for cmd in cmds:
        if "static" in cmd:
            if static < int(cmd[2]):
                static = int(cmd[2]) + 1
        elif "pointer" in cmd:
            if pointer < int(cmd[2]):
                pointer = int(cmd[2]) + 1
        elif "temp" in cmd:
            if temp < int(cmd[2]):
                temp = int(cmd[2]) + 1
        elif "argument" in cmd:
            if arg < int(cmd[2]):
                arg = int(cmd[2]) + 1
        elif "local" in cmd:
            if lcl < int(cmd[2]):
                lcl = int(cmd[2]) + 1
        elif "this" in cmd:
            if this < int(cmd[2]):
                this = int(cmd[2]) + 1
        elif "that" in cmd:
            if that < int(cmd[2]):
                that = int(cmd[2]) + 1

    return_str = createSeg("static", static)     # all static
    return_str += createSeg("pointer", pointer)   # all pointer
    return_str += createSeg("temp", temp)         # all temp
    return_str += createSeg("argument", arg)      # all arg
    return_str += createSeg("local", lcl)         # all lcl
    return_str += createSeg("this", this)         # all this
    return_str += createSeg("that", that)         # all that
    return return_str

def createSeg(segment, count):
    STR = "// create segment " + segment + "\n"
    for i in range(count):
        STR += "@" + segment + str(i) + "\nM=0\n"
    return STR

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
        STR += "// Assembly Code:\n" + cmd
    return STR

Segments = ["static","pointer", "temp", "argument", "local", "this", "that"]
def WritePushPop(commandType, segment, index):
    if commandType == "push":
        if segment == "constant":
            return "@" + str(index) + "\nD=A\n" + push_D()
        # elif segment in Segments:
        else:
            return "@" + segment + "\n D=A\n@" + str(index) + "\nA=D+A\nD=M\n" + push_D()
            # return "\n\nERROR Invalid Segment\n\n"
    else:
        return pop_D() + "@" + segment + str(index) + "\nM=D"

def push_D():
    return "@SP\nA=M\nM=D\n@SP\nM=M+1\n"

def pop_D():
    return "@SP\nAM=M-1\nD=M\nM=0\n"

def add():
    return "@SP\nA=M-1\nD=M\nA=A-1\nD=D+M\n" + "@SP\nAM=M-1\nM=0\n" + "@SP\nM=M-1\n" + push_D()
    # WORKS

def sub():
    return "@SP\nA=M-1\nA=A-1\nD=M\nA=A+1\nD=D-M\n" + "@SP\nAM=M-1\nM=0\n" + "@SP\nM=M-1\n" + push_D()
    # WORKS

def AND():
    return "@SP\nA=M-1\nD=M\nA=A-1\nD=D&M\n" + "@SP\nAM=M-1\nM=0\n" + "@SP\nM=M-1\n" + push_D()
    # WORKS

def OR():
    return "@SP\nA=M-1\nD=M\nA=A-1\nD=D|M\n" + "@SP\nAM=M-1\nM=0\n" + "@SP\nM=M-1\n" + push_D()
    # WORKS

def neg():
    return "@SP\nA=M-1\nD=-M\n" + "@SP\nAM=M-1\nM=0\n" + push_D()
    # WORKS

def NOT():
    return "@SP\nA=M-1\nD=!M\n" + "@SP\nAM=M-1\nM=0\n" + push_D()
    # WORKS

NumCalls = 0 # for EQ, GT, LT (labels)
def eq():
    global NumCalls
    returnVal = pop_D() + "@TRUE_" + str(NumCalls) + "\nD;JEQ\n@FALSE_" + str(NumCalls) + "\nD=0;JMP\n(TRUE_" + str(NumCalls) + ")\nD=-1\n(FALSE_" + str(NumCalls) + ")\n" + push_D()
    NumCalls += 1
    return returnVal
    # WORKS

def gt():
    global NumCalls
    returnVal = pop_D() + "@TRUE_" + str(NumCalls) + "\nD;JGT\n@FALSE_" + str(NumCalls) + "\nD=0;JMP\n(TRUE_" + str(NumCalls) + ")\nD=-1\n(FALSE_i)\n" + push_D()
    NumCalls += 1
    return returnVal
    # WORKS

def lt():
    global NumCalls
    returnVal = pop_D() + "@TRUE_" + str(NumCalls) + "\nD;JLT\n@FALSE_" + str(NumCalls) + "\nD=0;JMP\n(TRUE_" + str(NumCalls) + ")\nD=-1\n(FALSE_i)\n" + push_D()
    NumCalls += 1
    return returnVal
    # WORKS



# Below if ML for all operations without memory segments

# ML for push
# @SP           0000 0000 0000 0000
# A=M         1111 1100 0010 0000
# M=D         1110 0011 0000 1000
# @SP           0000 0000 0000 0000
# M=M+1     1111 1101 1100 1000

# ML for pop
# @SP           0000 0000 0000 0000
# AM=M-1      1111 1100 1010 1000
# D=M         1111 1100 0001 0000
# M=0         1110 1010 1000 1000

# ML for ADD
# @SP
# A=M-1
# A=A-1
# D=M
# A=A+1
# D=D+M

# ML for SUB
# @SP
# A=M-1
# A=A-1
# D=M
# A=A+1
# D=D-M

# ML for AND
# @SP
# A=M-1
# A=A-1
# D=M
# A=A+1
# D=D&M


# ML for OR
# @SP
# A=M-1
# A=A-1
# D=M
# A=A+1
# D=D|M


# ML for NEG
# @SP
# A=M-1
# M=-M

# NOT
# @SP
# A=M-1
# M=!M

# For EQ,GT,LT i is the incremented everytime any of them is called

# ML for EQ
# @TRUE_i
# D;JEQ
# @FALSE_i
# D=0;JMP
# (TRUE_i)
# D=-1
# (FALSE_i)
# push("D")

# ML for GT
# @TRUE_i
# D;JGT
# @FALSE_i
# D=0;JMP
# (TRUE_i)
# D=-1
# (FALSE_i)
# push("D")

# ML for LT
# @TRUE_i
# D;JLT
# @FALSE_i
# D=0;JMP
# (TRUE_i)
# D=-1
# (FALSE_i)
# push("D")
