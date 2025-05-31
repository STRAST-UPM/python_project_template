# external imports

# internal imports
from src.classes.modules.hello_metal import HelloMetal


if __name__ == '__main__':
    helloer: HelloMetal = HelloMetal()
    helloer.print_message()
