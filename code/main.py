# external imports

# internal imports
from src.modules.hello_metal import HelloMetal

if __name__ == '__main__':
    helloer: HelloMetal = HelloMetal()
    helloer.print_message()
