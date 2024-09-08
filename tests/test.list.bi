:i count 3
:b shell 32
./build/clox ./tests/closure.lox
:i returncode 0
:b stdout 8
updated

:b stderr 0

:b shell 32
./build/clox ./tests/example.lox
:i returncode 0
:b stdout 37
Enjoy your cup of coffee and chicory

:b stderr 0

:b shell 35
./build/clox ./tests/superclass.lox
:i returncode 65
:b stdout 0

:b stderr 46
[line 21] Error at ';': Expect variable name.

