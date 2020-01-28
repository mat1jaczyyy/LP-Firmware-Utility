#include "common.h"

int ceil_div(int a, int b) {
 return a / b + (a % b != 0);
}

const std::vector<byte>* get_products(byte family_id) {
	if (family_id == LPX_FAMILY_ID) return &products_lpx;
	if (family_id == LPRGB_FAMILY_ID) return &products_lprgb;
	
	fprintf(stderr, "Attempted to get products for invalid family id.\n");
	exit(5);
}

bin_t input, output;

char* input_file;
char* output_file;

bool allocate_buffer(bin_t* buffer, int size, const char* error) {
	buffer->size = size;
	buffer->data = (byte*)malloc(buffer->size * sizeof(*buffer->data));

	if (buffer->data == NULL) {
		fprintf(stderr, "Failed to allocate memory for %s file.\n", error);
		return false;
	}

	return true;
}

bool reallocate_buffer(bin_t* buffer, uint increment, const char* error) {
	buffer->data = (byte*)realloc(buffer->data, buffer->size += increment);

	if (buffer->data == NULL) {
		fprintf(stderr, "Failed to reallocate memory for %s.\n", error);
		return false;
	}

	return true;
}

uint crc32(bin_t* buffer) {
	uint crc = 0xFFFFFFFF;

	for (int i = 0; i < buffer->size; i++) {
		crc ^= ((uint)buffer->data[i] << 0x18);

		for (int j = 0; j < 8; j++)
			crc = ((crc & 0x80000000u)
				? 0x04C11DB7u
				: 0x00000000u
			) ^ (crc << 1);
	}

	return crc;
}

void read_input() {
	FILE* handle = fopen(input_file, "rb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open input file.\n");
		exit(1);
	}

	fseek(handle, 0, SEEK_END);

	if (!allocate_buffer(&input, ftell(handle), "INPUT")) {
		fclose(handle);
		exit(2);
	}

	fseek(handle, 0, SEEK_SET);
	(void)fread(input.data, input.size, 1, handle);
	fclose(handle);
}

void write_output() {
	FILE* handle = fopen(output_file, "wb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open output file.\n");
		exit(3);
	}

	fwrite(output.data, sizeof(*output.data), output.size, handle);
	fclose(handle);
}