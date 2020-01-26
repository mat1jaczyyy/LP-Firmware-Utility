#include "cli.h"

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

	convert();

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