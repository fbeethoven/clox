#ifndef clox_compiler_h
#define clox_compiler_h


#include "object.h"
#include "vm.h"


ObjFunction *compile(const char *souce);
void mark_compiler_roots();


#endif  // clox_compiler_h
