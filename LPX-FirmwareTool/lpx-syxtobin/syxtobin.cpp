#include "common.h"

void parse_args(int argc, char** argv) {
	if (argc <= 1) {
		fprintf(stderr, "No input file specified.\n");
		exit(1);
	}

	input_file = argv[1];

	if (argc <= 2) optional_output_file("bin");
	else output_file = argv[2];

	if (argc >= 4) {
		fprintf(stderr, "Too many arguments specified.\n");
		exit(1);
	}
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

uint nibbles_to_uint(int* i, int length) {
	uint result = 0;

	for (int j = 0; j < length; j++) {
		result <<= 0x04;
		result |= input.data[(*i)++] & 0x0F;
	}

	return result;
}

void verify_uints(int i, uint a, uint b, const char* error) {
	if (a != b) {
		fprintf(stderr, "Syntax error at position %08x: mismatching %s.\n", i, error);
		exit(1);
	}
}

void convert(int argc, char** argv) {
	std::vector<byte> expected_types = {UPDATE_INIT};

	uint version = 0;
	uint checksum = 0;
	uint block = 0;

	for (int i = 0; i < input.size;) {
		verify_byte(i++, SYSEX_START, "SYSEX_START");

		i += verify_byte_array(i, novation_header, "NOVATION_HEADER");

		verify_byte(i, expected_types, "EXPECTED_TYPES");

		switch (input.data[i++]) {
			case UPDATE_INIT:
				verify_byte(i++, LPX_FAMILY_ID, "LPX_FAMILY_ID");
				verify_byte(i++, product_types, "PRODUCT_TYPES");

				version = nibbles_to_uint(&i, 6);

				expected_types = {UPDATE_HEADER};
				break;

			case UPDATE_HEADER:
				i += 1;

				verify_uints(i, version, nibbles_to_uint(&i, 6), "VERSION");

				if (!allocate_buffer(&output, nibbles_to_uint(&i, 8), "OUTPUT")) exit(1);

				checksum = nibbles_to_uint(&i, 8);

				block = 1;
				expected_types = {UPDATE_WRITE, UPDATE_FINISH};
				break;

			case UPDATE_FINISH:
				block = 0;
				expected_types = {};

			case UPDATE_WRITE:
				for (int j = 0; j < 256; j++) {
					int shift = 6 - j % 7;
					int target = block * 0x20 + j / 8;

					if (target >= output.size) {
						expected_types = {UPDATE_FINISH};
						break;
					}

					if (j % 8 == 0) output.data[target] = 0;
					
					output.data[target] |= (input.data[i + j / 7] & (1 << shift)) >> shift << (7 - j % 8);
				}

				block++;
				i += 0x25;
				break;
		}

		verify_byte(i++, SYSEX_END, "SYSEX_END");
	}

	verify_uints(input.size, checksum, crc32(&output), "CHECKSUM");
}