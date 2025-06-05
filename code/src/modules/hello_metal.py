# external imports

# internal imports
from ..base.base_hello_world import BaseHelloWorld

class HelloMetal(BaseHelloWorld):
    def __init__(self):
        super().__init__(message="Hello Metal Guys!")
