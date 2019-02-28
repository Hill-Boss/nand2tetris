import SymbolTable as st

A_COMMAND = 0
C_COMMAND = 1
L_COMMAND = 2

cmds = []
curr = []

RESERVED = ['@', '(', ')', 'D', 'A', 'M', '=', ';', 'JGT', 'JEQ', 'JGE', 'JLT', 'JNE', 'JLE', 'JMP']

def init(fileName):
    file = open(fileName, 'r')
    lines = file.read()
    lines = lines.split('\n')
    for i in range(len(lines)):
        # if a comment the split and take what is before //. if line starts with // new line will be ''
        if '//' in lines[i]:
            temp = lines[i].split('//')
            del lines[i]
            lines.insert(i, temp[0])
            
    # add to cmds if line has @,D,A,M,(
    for i in range(len(lines)):
        if '@' in lines[i] or 'D' in lines[i] or 'A' in lines[i] or 'M' in lines[i] or '(' in lines[i] or '=' in lines[i] or ';' in lines[i] :
            cmds.append(lines[i])
    # remove whitespace and break into char lists
    for i in range(len(cmds)):
        cmds[i] = cmds[i].replace(" ", "")
        cmds[i] = list(cmds[i])
##    print(cmds)

           
def decimalToBinary(n, fill):
    return (bin(int(n))[2:]).zfill(fill)

def currentCommand():
    global curr
    return curr[len(curr)-1]


# return false if on last cmd
def hasMoreCommands():
    global curr
    return len(curr) < len(cmds)


def advance():
    if hasMoreCommands():
        global curr
        if curr == []:
            curr.append(cmds[0])
        else:
            curr.append(cmds[len(curr)])
            

def commandType():
    global curr
    if curr[len(curr)-1][0] == '@':
        return A_COMMAND
    elif curr[len(curr)-1][0] == '(':
        return L_COMMAND
    else:
        return C_COMMAND


def symbol():
    symbol = ""
    if commandType() == A_COMMAND:
        for i in curr[len(curr)-1][1:]:
            symbol += i
        return symbol
    elif commandType() == L_COMMAND:
        for i in curr[len(curr)-1][1:len(curr[len(curr)-1])-1]:
            symbol += i
        return symbol


def dest():
    dest = ""
    if commandType() == C_COMMAND:
        if '=' in curr[len(curr)-1]:
            for i in curr[len(curr)-1]:
                if i != '=':
                    dest += i
                else:
                    return dest
        return " = not in current command thus no dest"


def comp():
    comp = ""
    if commandType() == C_COMMAND:
        if '=' in curr[len(curr)-1]:
            for i in curr[len(curr)-1][curr[len(curr)-1].index('=')+1:]:
                if i != ';':
                    comp += i
                else:
                    break
        else:
            for i in curr[len(curr)-1]:
                if i != ';':
                    comp += i
                else:
                    break
        return comp


def jump():
    jump = ""
    if commandType() == C_COMMAND:
        if ';' in curr[len(curr)-1]:
            for i in curr[len(curr)-1][curr[len(curr)-1].index(';')+1:]:
                jump += i
        else:
            return " ; not in current command thus no jump"
        return jump

def DoublePass():
    offset = 0
    for i in range(len(cmds)):
        if '(' in cmds[i]:
            st.addEntry(''.join(cmds[i][1:len(cmds[i])-1]), i - offset)
            offset += 1

    memory = 16
    for i in range(len(cmds)):
        if '@' in cmds[i]:
            num = -1
            try:
                
                num = int(''.join(cmds[i][1:]))
##                print(num)
            except:
                pass
            if num == -1:
                if st.getAddress(''.join(cmds[i][1:])) == None:
##                    print(''.join(cmds[i][1:]), " ", memory)
                    st.addEntry(''.join(cmds[i][1:]), memory)
                    memory += 1

    
