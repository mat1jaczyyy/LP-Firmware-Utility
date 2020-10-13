#include "emscripten.h"
#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

#include "common.h"
#include "patches.h"

const std::vector<const char*> firmware_files = {
    "firmware/LPX-351.bin",
    "firmware/LPMiniMK3-407.bin",
    "firmware/LPProMK3-465.bin",
    "firmware/LPMK2-171.bin",
    "firmware/LPPro-182.bin"
};

const std::vector<const char*> firmware_versions = {
    "351",
    "407",
    "465",
    "171",
    "182"
};

extern byte lp_target_family, lp_target;
extern char* version;

void convert_bintosyx();
byte convert_syxtobin();

wasm void patch_firmware(int target, bool* args, byte* palette) {
    if (target >= products_all.size()) {
		fprintf(stderr, "Invalid target Launchpad specified.\n");
		exit(6);
    }

    lp_target_family = families[target >= products_lpx.size()];
    lp_target = products_all[target];
    version = strdup(firmware_versions[target]);
    input_file = strdup(firmware_files[target]);
    
    remove(output_file = strdup("firmware/output.syx"));

	read_input();

    patch(lp_target_family, lp_target, target, args, palette, version);
    
    convert_bintosyx();

    write_output();

    free(input.data);
    free(output.data);

    free(input_file);
    free(output_file);
    free(version);
}

wasm byte verify_firmware() {
    input_file = (char*)"firmware/input.syx";

	read_input();

    byte target = vector_indexof(&products_all, convert_syxtobin());

    free(input.data);
    free(output.data);

    return target;
}