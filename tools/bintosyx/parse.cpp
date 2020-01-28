#include "cli.h"

const std::vector<const char*> product_flags = {"/x", "/minimk3", "/promk3", "/mk2", "/pro"};

extern byte lp_target_family, lp_target;
extern char* version;

void lp_target_error(const char* error) {
	fprintf(stderr, "%s target Launchpad specified. Valid flags: %s", error, product_flags[0]);

	for (int i = 1; i < products_all.size(); i++)
		fprintf(stderr, ", %s", product_flags[i]);

	fprintf(stderr, "\n");

	exit(6);
}

void parse_args(int argc, char** argv) {
	if (argc <= 1) lp_target_error("No");

	bool product_success = false;

	for (int i = 0; i < products_all.size(); i++)
		if ((product_success = !strcmp(argv[1], product_flags[i]))) {
			lp_target_family = families[i >= products_lpx.size()];
			lp_target = products_all[i];
			break;
		}

	if (!product_success) lp_target_error("Invalid");

	if (argc <= 2) {
		fprintf(stderr, "No version specified.\n");
		exit(6);
	}

	int len = strlen(argv[2]);
	if (len != 3) {
		fprintf(stderr, "Version should be 3 characters long.\n");
		exit(6);
	}

	for (int i = 0; i < 3; i++) {
		if (0x30 <= argv[2][i] && argv[2][i] <= 0x39) argv[2][i] -= 0x30;
		else {
			argv[2][i] &= 0xDF;
			if (0x41 <= argv[2][i] && argv[2][i] <= 0x46) argv[2][i] -= 0x37;
			else {
				fprintf(stderr, "Invalid version specified.\n");
				exit(6);
			}
		}
	}

	version = argv[2];

	if (argc <= 3) {
		fprintf(stderr, "No input file specified.\n");
		exit(6);
	}

	input_file = argv[3];

	if (argc <= 4) optional_output_file("syx");
	else output_file = argv[4];

	if (argc >= 6) {
		fprintf(stderr, "Too many arguments specified.\n");
		exit(6);
	}
}