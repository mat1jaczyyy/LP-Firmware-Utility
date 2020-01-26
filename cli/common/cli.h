#ifndef CLI_H
#define CLI_H

#include "common.h"

extern char* input_file;
extern char* output_file;

void optional_output_file(const char* ext);

void parse_args(int argc, char** argv);
void convert();

int main(int argc, char** argv);

#endif