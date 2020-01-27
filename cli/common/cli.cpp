#include "cli.h"

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

	read_input();

	convert();

	write_output();

	printf("Success! Saved to %s\n", output_file);

	return 0;
}