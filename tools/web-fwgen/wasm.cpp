#include "emscripten.h"
#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

#include "common.h"
#include "patches.h"

const std::vector<char*> firmware_files = {
    (char*)"firmware/LPX-351.bin",
    (char*)"firmware/LPMiniMK3-407.bin",
    (char*)"firmware/LPProMK3-450.bin",
    (char*)"firmware/LPMK2-171.bin",
    (char*)"firmware/LPPro-182.bin"
};

const std::vector<char*> firmware_versions = {
    (char*)"351",
    (char*)"407",
    (char*)"440",
    (char*)"171",
    (char*)"182"
};

extern byte lp_target_family, lp_target;
extern char* version;

void convert_bintosyx();
byte convert_syxtobin();

wasm void patch_firmware(int target, bool* args) {
    if (target >= products_all.size()) {
		fprintf(stderr, "Invalid target Launchpad specified.\n");
		exit(6);
    }

    lp_target_family = families[target >= products_lpx.size()];
    lp_target = products_all[target];
    version = firmware_versions[target];
    input_file = firmware_files[target];
    
    remove(output_file = (char*)"firmware/output.syx");

	read_input();

    patch(lp_target_family, lp_target, target, args);
    
    convert_bintosyx();

    write_output();

    free(input.data);
    free(output.data);
}

wasm byte verify_firmware() {
    input_file = (char*)"firmware/input.syx";

	read_input();

    byte target = vector_indexof(&products_all, convert_syxtobin());

    free(input.data);
    free(output.data);

    return target;
}