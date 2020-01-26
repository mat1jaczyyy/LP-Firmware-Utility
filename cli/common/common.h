#ifndef COMMON_H
#define COMMON_H

#define _CRT_SECURE_NO_WARNINGS

#include <cstdio>
#include <string>
#include <vector>

typedef unsigned char byte;
typedef unsigned int uint;

typedef struct {
	byte* data;
	uint size;
} bin_t;

#define SYSEX_START 0xF0
#define SYSEX_END 0xF7

const std::vector<byte> novation_header = {0x00, 0x20, 0x29, 0x00};

#define UPDATE_INIT 0x71
#define UPDATE_HEADER 0x7C
#define UPDATE_WRITE 0x72
#define UPDATE_FINISH 0x73

#define LPX_FAMILY_ID 0x02
#define LPX_PRODUCT_ID 0x0C
#define LPMINIMK3_PRODUCT_ID 0x0D
#define LPPROMK3_PRODUCT_ID 0x0E

const std::vector<byte> product_types = {LPX_PRODUCT_ID, LPMINIMK3_PRODUCT_ID, LPPROMK3_PRODUCT_ID};

bin_t input, output;

char* input_file;
char* output_file;

void optional_output_file(const char* ext) {
	int len = strlen(input_file);
	output_file = (char*)malloc(len * sizeof(char));

	if (output_file == NULL) {
		fprintf(stderr, "Failed to allocate memory for output file name.\n");
		exit(1);
	}

	strcpy(output_file, input_file);
	strcpy(&output_file[len - 3], ext);
}

bool allocate_buffer(bin_t* buffer, int size, const char* error) {
	buffer->size = size;
	buffer->data = (byte*)malloc(buffer->size * sizeof(*buffer->data));

	if (buffer->data == NULL) {
		fprintf(stderr, "Failed to allocate memory for %s file.\n", error);

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

void convert(int argc, char** argv);
void parse_args(int argc, char** argv);

int main(int argc, char** argv) {
	parse_args(argc, argv);

	FILE* handle = fopen(input_file, "rb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open input file.\n");
		exit(1);
	}

	fseek(handle, 0, SEEK_END);

	if (!allocate_buffer(&input, ftell(handle), "INPUT")) {
		fclose(handle);
		exit(1);
	}

	fseek(handle, 0, SEEK_SET);
	(void)fread(input.data, input.size, 1, handle);
	fclose(handle);

	convert(argc, argv);

	handle = fopen(output_file, "wb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open output file.\n");
		exit(1);
	}

	fwrite(output.data, sizeof(*output.data), output.size, handle);
	fclose(handle);

	printf("Success! Saved to %s\n", output_file);

	return 0;
}

#endif