#include "common.h"

#define NOMANGLE extern "C"

NOMANGLE void test_function() {
    printf("Hello WASM!\n");
}