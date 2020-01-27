#include "common.h"
#include "emscripten.h"

#define wasm extern "C" EMSCRIPTEN_KEEPALIVE

void convert();

wasm void test_function() {
	FILE* handle = fopen("firmware/LPX-289.bin", "rb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open input file.\n");
		return;
	}

	fseek(handle, 0, SEEK_END);
    
    printf("%d\n", ftell(handle));

	if (!allocate_buffer(&input, ftell(handle), "INPUT")) {
		fclose(handle);
		return;
	}

	fseek(handle, 0, SEEK_SET);
	(void)fread(input.data, input.size, 1, handle);
	fclose(handle);

    for (int i = 0; i < input.size; i++)
        printf("%02x ", input.data[i]);
    
    printf("\n");
    
    convert();

    handle = fopen("firmware/output.syx", "wb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open output file.\n");
		exit(1);
	}

	fwrite(output.data, sizeof(*output.data), output.size, handle);
	fclose(handle);

    free(input.data);
    free(output.data);
}