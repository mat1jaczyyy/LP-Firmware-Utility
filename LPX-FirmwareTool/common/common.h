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
uint version, checksum, w;

char default_output[4] =
#ifdef SYXTOBIN
	"bin"
#else
	#ifdef BINTOSYX
		"syx"
	#else 
		#error Repacker type not defined
	#endif
#endif
;

int argc;
char** argv;

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

void print_vector_error(int i, const char* error, std::vector<byte> v) {
	if (v.size() == 0) fprintf(stderr, "Runtime error at position %08x: can't expect empty vector %s.", i, error);
	else {
		fprintf(stderr, "Parse error at position %08x: expected %s (%02x", i, error, v[0]);

		for (int j = 1; j < v.size(); j++)
			fprintf(stderr, ", %02x", v[j]);

		fprintf(stderr, ").\n");
	}

	exit(1);
}

void verify_byte(int i, byte value, const char* error) {
	if (input.data[i] != value) {
		fprintf(stderr, "Parse error at position %08x: expected %s (%02x).\n", i, error, value);
		exit(1);
	}
}

void verify_byte(int i, const std::vector<byte> values, const char* error) {
	for (int j = 0; j < values.size(); j++)
		if (input.data[i] == values[j]) return;

	print_vector_error(i, error, values);
	exit(1);
}

int verify_byte_array(int i, const std::vector<byte> values, const char* error) {
	for (int j = 0; j < values.size(); j++)
		if (input.data[i + j] != values[j]) {
			fprintf(stderr, "Parse error at position %08x: expected %s (", i, error);

			exit(1);
		}
	
	return values.size();
}

void verify_uints(int i, uint a, uint b, const char* error) {
	if (a != b) {
		fprintf(stderr, "Syntax error at position %08x: mismatching %s.\n", i, error);
		exit(1);
	}
}

void convert();

int main(int c, char** v) {
	if (c < 2) {
		fprintf(stderr, "No input file specified.\n");
		return false;
	}

	if (c > 3) {
		fprintf(stderr, "Too many arguments specified.\n");
		return false;
	}

	argc = c;
	argv = v;

	FILE* handle = fopen(argv[1], "rb");
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

	convert();

	char** output_file;

	if (argc == 3) output_file = &argv[2];
	else {
		strcpy(&argv[1][strlen(argv[1]) - 3], default_output);
		output_file = &argv[1];
	}

	handle = fopen(*output_file, "wb");
	if (handle == NULL) {
		fprintf(stderr, "Failed to open output file.\n");
		exit(1);
	}

	fwrite(output.data, sizeof(*output.data), output.size, handle);
	fclose(handle);

	printf("Success! Saved to %s\n", *output_file);

	return 0;
}

#endif