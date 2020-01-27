#include "common.h"
#include "emscripten.h"

#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

const std::vector<char*> firmware_files = {
    (char*)"firmware/LPX-348.bin",
    (char*)"firmware/LPMiniMK3-404.bin"
};

const std::vector<char*> firmware_versions = {
    (char*)"348",
    (char*)"404"
};

extern byte lp_target;
extern char* version;

wasm void patch_firmware(int target, int argc, bool* argv) {
    if (target >= 2) {
		fprintf(stderr, "Invalid target Launchpad specified.\n");
		exit(6);
    }

    lp_target = product_types[target];
    version = firmware_versions[target];
    input_file = firmware_files[target];

    output_file = (char*)"firmware/output.syx";
    
    remove(output_file);

    // TODO Patch Firmware

	read_input();
    
    convert();

    write_output();

    free(input.data);
    free(output.data);
}