#ifndef MAIN_H
#define MAIN_H

#define _CRT_SECURE_NO_WARNINGS

#include <cstdio>
#include <string>

typedef unsigned char byte;
typedef unsigned int uint;

typedef struct {
	byte* data;
	int size;
} firmware;

#endif