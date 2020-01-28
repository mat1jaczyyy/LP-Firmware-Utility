#ifndef CLI_H
#define CLI_H

#include "common.h"

void optional_output_file(const char* ext);

void parse_args(int argc, char** argv);

int main(int argc, char** argv);

#endif