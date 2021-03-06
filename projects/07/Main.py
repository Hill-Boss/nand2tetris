import VMParse as VMP
import sys

def main():
    if len(sys.argv) > 2:
        print("To Many Arguments")
        return -1
    elif len(sys.argv) < 2:
        file = input("Enter File path\n")
    elif ".vm" in sys.argv[1]:
        file = sys.argv[1][:len(sys.argv[1])-3]
    else:
        file = sys.argv[1]

    fileASM = file + ".asm"
    fileVM = file + ".vm"
    filename = file.split('/')[-1]

    try:
        tmp = open(fileASM, 'x')
        tmp.close()
    except:
        pass

    # VMParse parses fileVM into fileASM
    VMP.VMParse(fileVM, fileASM, filename)

if __name__ == '__main__':
    main()
