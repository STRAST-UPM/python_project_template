# external imports

# internal imports

class BaseHelloWorld:

    def __init__(self, message:str = "Hello World!"):
        self._message: str = message

    @property
    def message(self):
        return self._message

    @message.setter
    def message(self, value:str):
        if type(value) is str:
            self._message = value

    def print_message(self):
        print(self._message)
