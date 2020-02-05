#include "cli.h"

#include "syxtobin.h"

void parse_args(int argc, char** argv) {
	if (argc <= 1) {
		fprintf(stderr, "No input file specified.\n");
		exit(6);
	}

	input_file = argv[1];

	if (argc <= 2) optional_output_file("bin");
	else output_file = argv[2];

	if (argc >= 4) {
		fprintf(stderr, "Too many arguments specified.\n");
		exit(6);
	}
}

void convert() {
	(void)convert_syxtobin();
}