#include "common.h"

uint nibbles_to_uint(int* i, int length) {
	uint result = 0;

	for (int j = 0; j < length; j++) {
		result <<= 0x04;
		result |= input.data[(*i)++] & 0x0F;
	}

	return result;
}

int main(int argc, char** argv) {
	parse_args(argc, argv);

	std::vector<byte> expected_types = {UPDATE_INIT};

	for (int i = 0; i < input.size;) {
		verify_byte(i++, SYSEX_START, "SYSEX_START");

		i += verify_byte_array(i, novation_header, "NOVATION_HEADER");

		verify_byte(i, expected_types, "EXPECTED_TYPES");

		switch (input.data[i++]) {
			case UPDATE_INIT:
				verify_byte(i++, LPX_FAMILY_ID, "LPX_FAMILY_ID");
				verify_byte(i++, product_types, "PRODUCT_TYPES");

				i += 3;

				version = nibbles_to_uint(&i, 3);

				verify_byte(i++, SYSEX_END, "SYSEX_END");

				expected_types = {UPDATE_HEADER};
				break;

			case UPDATE_HEADER:
				printf("header");
				return 0;
				break;

			case UPDATE_WRITE:
				printf("write");
				return 0;
				break;

			case UPDATE_FINISH:
				printf("finish");
				return 0;
				break;
		}
	}

	return 0;
}