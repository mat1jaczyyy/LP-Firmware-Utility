#include "main.h"

firmware fw;

int main(int argc, char** argv) {
	FILE* handle = fopen(argv[1], "rb");
	if (handle == NULL) {
		printf("Failed to open binary!\n");
		return 1;
	}

	fseek(handle, 0, SEEK_END);
	fw.size = ftell(handle);

	fseek(handle, 0, SEEK_SET);

	if ((fw.data = (byte*)malloc(fw.size)) == NULL) {
		printf("Failed to allocate memory!\n");

		fclose(handle);
		return 1;
	}

	(void)fread(fw.data, fw.size, 1, handle);
	fclose(handle);

	uint crc = 0xFFFFFFFF;

	for (int i = 0; i < fw.size; i++) {
		crc = crc ^ ((uint)fw.data[i] << 0x18);

		for (int j = 0; j < 8; j++) {
			if (crc & 0x80000000u) {
				crc = 0x04C11DB7 ^ (crc << 1);
			} else {
				crc = crc << 1;
			}
			if (crc == 0xacc8e240) printf("yes");
		}
	}

	printf("%08x\n", crc);

	return 0;
}