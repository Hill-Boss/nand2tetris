import SymbolTable as st
import Code as c

A_COMMAND = 0
C_COMMAND = 1
L_COMMAND = 2

cmds = []

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

def decimalToBinary(n, fill):
    return (bin(int(n))[2:]).zfill(fill)

def dest(line):
    dest = ""
    if '@' not in line and '(' not in line:
        if '=' in line:
            for i in line:
                if i != '=':
                    dest += i
                else:
                    return dest


def comp(line):
    comp = ""
    if '@' not in line and '(' not in line:
        if '=' in line:
            for i in line[line.index('=')+1:]:
                if i != ';':
                    comp += i
                else:
                    break
        else:
            for i in line:
                if i != ';':
                    comp += i
                else:
                    break
        return comp

def jump(line):
    jump = ""
    if '@' not in line and '(' not in line:
        if ';' in line:
            for i in line[line.index(';')+1:]:
                jump += i
        else:
            return " ; not in current command thus no jump"
        return jump

def symbolToBinary(symbolString):
    if st.contains(symbolString):
        symbol = st.getAddress(symbolString)
    else:
        symbol = int(symbolString)
    return decimalToBinary(symbol, 15)

def buildCode(line):
    binaryString = ''
    if '@' in line:
        binaryString += '0' + symbolToBinary(''.join(line[1:]))
    else:
        binaryString += '111' + c.comp(comp(line)) + c.dest(dest(line)) + c.jump(jump(line))
    binaryString += "\n"
    return binaryString

def DoublePass(fileOUT):
    offset = 0
    for i in range(len(cmds)):
        if '(' in cmds[i]:
            st.addEntry(''.join(cmds[i][1:len(cmds[i])-1]), i - offset)
            offset += 1

            memory = 16

    for i in range(len(cmds)):
        if '@' in cmds[i]:
            try:
                num = int(''.join(cmds[i][1:]))
            except:
                if st.getAddress(''.join(cmds[i][1:])) == None:
                    st.addEntry(''.join(cmds[i][1:]), memory)
                    memory += 1
        if '(' not in cmds[i]:
            fileOUT.write(buildCode(cmds[i]))
