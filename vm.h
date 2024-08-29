#ifndef clox_vm_h
#define clox_vm_h

#include "chunk.h"


#define STACK_MAX 256

typedef struct {
    Chunk *chunk;
    uint8_t *ip;
    Value stack[STACK_MAX];
    Value *stack_top;
} VM;

typedef enum {
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUTIME_ERROR,
} InterpretResult;


void init_vm();
void free_vm();
InterpretResult interpret(Chunk *chunk);
void push(Value value);
Value pop();


#endif  // clox_vm_h
