#include "common.h"

bin_t input, output;

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