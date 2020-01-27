#include "common.h"
#include "emscripten.h"

#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

char* INPUT_FILE = (char*)"firmware/LPX-289.bin";
char* OUTPUT_FILE = (char*)"firmware/output.syx";

wasm void patch_firmware() {
    input_file = INPUT_FILE;    // TODO Properly detect source firmware
    output_file = OUTPUT_FILE;

    remove(output_file);

    // TODO Patch Firmware

	read_input();
    
    convert();

    write_output();

    free(input.data);
    free(output.data);
}