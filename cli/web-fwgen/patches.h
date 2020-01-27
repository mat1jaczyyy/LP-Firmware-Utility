#ifndef PATCHES_H
#define PATCHES_H

#include "common.h"

void lpx_patch(bool* args);
void lpminimk3_patch(bool* args);
void lppromk3_patch(bool* args);

void (*const patch[PRODUCT_COUNT])(bool* args) = {
    lpx_patch,
    lpminimk3_patch,
    lppromk3_patch
};

#endif