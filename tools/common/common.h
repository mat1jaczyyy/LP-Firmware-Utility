#ifndef COMMON_H
#define COMMON_H

#define _CRT_SECURE_NO_WARNINGS

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

typedef unsigned char byte;
typedef unsigned short ushort;
typedef unsigned int uint;

inline int ceil_div(int a, int b) {
	return a / b + (a % b != 0);
}

template <typename T>
inline int vector_indexof(const std::vector<T>* v, T x) {
	for (int i = 0; i < v->size(); i++)
		if (x == (*v)[i]) return i;
	
	return -1;
}

inline int vector_indexof(const std::vector<const char*>* v, const char* x) {
	for (int i = 0; i < v->size(); i++)
		if (!strcmp((*v)[i], x)) return i;

	return -1;
}

extern int vector_indexof(const std::vector<const char*>* v, const char* x);

struct bin_t {
	byte* data = NULL;
	uint size = 0;
};

#define SYSEX_START 0xF0
#define SYSEX_END 0xF7

const std::vector<byte> novation_header = {0x00, 0x20, 0x29, 0x00};
const std::vector<byte> rgb_firmware_footer = {'F', 'i', 'r', 'm', 'w', 'a', 'r', 'e'};

#define UPDATE_INIT 0x71
#define UPDATE_HEADER 0x7C
#define UPDATE_WRITE 0x72
#define UPDATE_FINISH 0x73
#define UPDATE_FOOTER 0x76

#define LPX_FAMILY_ID 0x02
#define LPX_PRODUCT_ID 0x0C
#define LPMINIMK3_PRODUCT_ID 0x0D
#define LPPROMK3_PRODUCT_ID 0x0E
const std::vector<byte> products_lpx = {LPX_PRODUCT_ID, LPMINIMK3_PRODUCT_ID, LPPROMK3_PRODUCT_ID};

#define LPRGB_FAMILY_ID 0x00
#define LPMK2_PRODUCT_ID 0x69
#define LPPRO_PRODUCT_ID 0x51
const std::vector<byte> products_lprgb = {LPMK2_PRODUCT_ID, LPPRO_PRODUCT_ID};

const std::vector<byte> families = {LPX_FAMILY_ID, LPRGB_FAMILY_ID};
const std::vector<byte> products_all = {LPX_PRODUCT_ID, LPMINIMK3_PRODUCT_ID, LPPROMK3_PRODUCT_ID, LPMK2_PRODUCT_ID, LPPRO_PRODUCT_ID};

const std::vector<byte>* get_products(byte family_id);

#define BLOCK_SIZE_BITS 0x100
#define BLOCK_SIZE_BYTES ceil_div(BLOCK_SIZE_BITS, 8)
#define BLOCK_SIZE_7BITS ceil_div(BLOCK_SIZE_BITS, 7)

extern bin_t input, output;

extern char* input_file;
extern char* output_file;

bool allocate_buffer(bin_t* buffer, int size, const char* error);
bool reallocate_buffer(bin_t* buffer, uint increment, const char* error);

uint crc32(bin_t* buffer);

void convert();

void read_input();
void write_output();

/**
 * Error Codes
 * 1: Failed to open input file
 * 2: Failed to allocate input file
 * 3: Failed to open output file
 * 4: Failed to allocate output file
 * 5: Conversion error
 * 6: Invalid arguments
 * 7: Patching error
**/

#endif