#ifndef COMMON_H
#define COMMON_H

#define _CRT_SECURE_NO_WARNINGS

#include <cstdio>
#include <cstdlib>
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

extern bin_t input, output;

bool allocate_buffer(bin_t* buffer, int size, const char* error);

uint crc32(bin_t* buffer);

#endif