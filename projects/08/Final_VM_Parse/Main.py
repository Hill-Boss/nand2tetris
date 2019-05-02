import VMParse as VMP
import sys
import glob

def main():
    files = []
    if len(sys.argv) > 2:
        print("To Many Arguments")
        return -1
    elif len(sys.argv) < 2:
        files.append(input("Enter File path\n"))
    if ".vm" in sys.argv[1]:
        files.append(sys.argv[1])
    else:
        files = glob.glob(sys.argv[1] + "/*.vm")

    SName = sys.argv[1] + sys.argv[1].split('/')[-2] + '.asm'
    Fstr = ''

    for file in files:
        file = file[:-3]
        fileASM = file + ".asm"
        fileVM = file + ".vm"
        filename = file.split('/')[-1]

        try:
            tmp = open(fileASM, 'x')
            tmp.close()
        except:
            pass

        # VMParse parses fileVM into fileASM
        Fstr += VMP.VMParse(fileVM, fileASM, filename, 1)

    try:
        temp = open(SName, 'x')
        temp.close()
    except:
        pass

    ASM = open(SName, "w")
    ASM.write(Fstr)
    ASM.close()

if __name__ == '__main__':
    main()
