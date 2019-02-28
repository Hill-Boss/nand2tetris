import Parser as p
import Code as c

def main():
    file = "./rect/Rect"
    fileASM = file + ".asm"
    fileANS = file + ".hack"

    
    p.init(fileASM)
    p.DoublePass()

        
    
    binary = c.buildCode(p).split('\n')
    answers = answer(fileANS)    
    check = checkAll(binary, answers).split('\n')

    for i in range(len(binary)-1):
        print("\n", i, " ", binary[i], "\n", i, " ", answers[i], " \t", check[i])

def checkAll(binary, answers):
    
    ansList = ""
    if len(answers) != len(binary):
        print("THE NUMBER OF BINARY OUTPUT LINES IS NOT EQUAL TO THE NUMBER OF ANSWER LINES")
        return "ERROR"
    else:
        for i in range(len(binary)-1):
            if binary[i] == answers[i]:
                ansList += "Correct\n"
            else:
                ansList += "Incorrect\n"
        return ansList


def answer(fileName):
    file = open(fileName, 'r')
    lines = file.read()
    lines = lines.split('\n')

    return lines

    

if __name__ == '__main__':
    
    main()

