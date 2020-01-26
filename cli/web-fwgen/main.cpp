#include "common.h"
#include "emscripten.h"

#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

wasm void test_function() {
    printf("Hello WASM!\n");
}