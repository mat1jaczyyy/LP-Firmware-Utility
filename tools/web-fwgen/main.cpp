#include "emscripten.h"
#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

#include "common.h"
#include "patches.h"

const std::vector<char*> firmware_files = {
    (char*)"firmware/LPX-348.bin",
    (char*)"firmware/LPProMK3-385.bin",
    (char*)"firmware/LPMiniMK3-404.bin"
};

const std::vector<char*> firmware_versions = {
    (char*)"348",
    (char*)"385",
    (char*)"404"
};

extern byte lp_target;
extern char* version;

wasm void patch_firmware(int target, bool* args) {
    if (target >= PRODUCT_COUNT) {
		fprintf(stderr, "Invalid target Launchpad specified.\n");
		exit(6);
    }

    lp_target = product_types[target];
    version = firmware_versions[target];
    input_file = firmware_files[target];
    
    remove(output_file = (char*)"firmware/output.syx");

	read_input();

    (*patch[target])(args);
    
    convert();

    write_output();

    free(input.data);
    free(output.data);
}