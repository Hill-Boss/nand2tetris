import Parser as p
import Code as c

def main():

    fileIN = input("Enter File path without extension .asm i.e. ./rect/RectL ")
    if "./" not in fileIN:
        file = "./" + fileIN.lower() + "/" + fileIN[0].upper() + fileIN[1:].lower()
    else:
        file = fileIN

    fileASM = file + ".asm"
    fileANS = file + ".hack"


    p.init(fileASM)
    p.DoublePass()



    binary = c.buildCode(p).split('\n')
    answers = answer(fileANS)
    check = checkAll(binary, answers).split('\n')

    for i in range(len(binary)-1):
        print("\n", i, " binary ", binary[i], "\n", i, " answer ", answers[i])

    if "Incorrect" not in check:
        print("\nCorrect Results")
    else:
        print("\nIncorrect Results")




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
