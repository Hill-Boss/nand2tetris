#A = 0 (15 bit number)
#L = add symbol to table if not in table
#C = 1 1 1 a c1 c2 c3 c4 c5 c6 d1 d2 d3 j1 j2 j3

comp_codes = { '0':'0101010',
               '1':'0111111',   '-1':'0111010',
               'D':'0001100',   'A':'0110000',
               '!D':'0001101',  '!A':'0110001',
               '-D':'0001111',  '-A':'0110011',
               'D+1':'0011111', '1+D':'0011111',
               'A+1':'0110111', '1+A':'0110111',
               'D-1':'0001110', 'A-1':'0110010',
               'D+A':'0000010', 'A+D':'0000010',
               'D-A':'0010011', 'A-D':'0000111',
               'D&A':'0000000', 'A&D':'0000000',
               'D|A':'0010101', 'A|D':'0010101',

               '':'xxxxxxx',    '':'xxxxxxx',
               '':'xxxxxxx',    '':'xxxxxxx',
               'M':'1110000',   '':'xxxxxxx',
               '!M':'1110001',  '':'xxxxxxx',
               '-M':'1110011',  '':'xxxxxxx',
               'M+1':'1110111', '1+M':'1110111',
               '':'xxxxxxx',    'M-1':'1110010',
               'D+M':'1000010', 'M+D':'1000010',
               'D-M':'1010011', 'M-D':'1000111',
               'D&M':'1000000', 'M&D':'1000000',
               'D|M':'1010101', 'M|D':'1010101' }


def comp(compString):
    try:
        return comp_codes[compString]
    except:
        pass

def dest(destString):

    dest = 0
    try:
        if 'A' in destString:
            dest += 4
        if 'D' in destString:
            dest += 2
        if 'M' in destString:
            dest += 1
    except:
        pass
    return decimalToBinary(dest, 3)

def jump(jumpString):
    jump = 0

    if 'JGT' in jumpString:
        jump = 1
    elif 'JEQ' in jumpString:
        jump = 2
    elif 'JGE' in jumpString:
        jump = 3
    elif 'JLT' in jumpString:
        jump = 4
    elif 'JNE' in jumpString:
        jump = 5
    elif 'JLE' in jumpString:
        jump = 6
    elif 'JMP' in jumpString:
        jump = 7

    return decimalToBinary(jump, 3)

def decimalToBinary(n, fill):
    return (bin(int(n))[2:]).zfill(fill)
