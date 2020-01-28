#ifndef PATCHES_H
#define PATCHES_H

#include "common.h"

void lpx_patch(bool* args);
void lpminimk3_patch(bool* args);
void lppromk3_patch(bool* args);
void lpmk2_patch(bool* args);
void lppro_patch(bool* args);

const std::vector<void (*)(bool*)> patch = {
    lpx_patch,
    lpminimk3_patch,
    lppromk3_patch,
    lpmk2_patch,
    lppro_patch
};

#endif