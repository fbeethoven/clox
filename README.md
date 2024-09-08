# CRAFTING INTERPRETERS

Implementing a c interpreter for the Lox language following [this tutorial](https://craftinginterpreters.com/a-bytecode-virtual-machine.html).

Quick install:
```bash
make install
```

Example:
```python
print "Hello World!"
```
Compile as:
```bash
clox hello.lox
```
## Testing

We use [rere.py](https://github.com/tsoding/rere.py) as a simple testing framework.
You may need to give `./tests/rere.py` execution permissions `chmod +x ./tests/rere.py`)
```bash
make test
```
