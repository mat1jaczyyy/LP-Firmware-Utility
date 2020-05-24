#include "common.h"

void write_buffer(bin_t* buffer, const uint start, const byte* data, const uint size) {
    if (start + size > buffer->size) {
        if (!reallocate_buffer(&input, start + size - buffer->size, "firmware patches")) exit(7);
    }

    memcpy(&buffer->data[start], data, size);
}

template <typename T>
struct map_element {
    const uint address;
    const T patch_value;

    void patch(bin_t* buffer) const {
        patch(buffer, patch_value);
    }

    void patch(bin_t* buffer, const T value) const {
        patch(buffer, 0, value);
    }

    void patch(bin_t* buffer, const uint start, const T value) const {
        write_buffer(buffer, address + start, (byte*)&value, sizeof(T));
    }
};

template <typename T>
struct map_element<T*> {
    const uint address;
    const T* patch_value;
    const uint patch_count;

    void patch(bin_t* buffer) const {
        patch(buffer, patch_value, patch_count);
    }

    void patch(bin_t* buffer, const uint start) const {
        patch(buffer, start, patch_value, patch_count);
    }

    void patch(bin_t* buffer, const T* value, const uint count) const {
        patch(buffer, 0, value, count);
    }

    void patch(bin_t* buffer, const uint start, const T* value, const uint count) const {
        write_buffer(buffer, address + start, (byte*)value, count * sizeof(T));
    }
};

byte palette_data[512];

const std::vector<const map_element<byte*>> palette_maps = {
    {0xCDB4,  palette_data, 512},
    {0xC95C,  palette_data, 512},
    {0x5C610, palette_data, 512},
    {0x3A43,  palette_data, 384},
    {0x13D4C, palette_data, 384},
};

void verify_and_copy_palette(const byte family, byte* palette) {
    for (int i = 0; i < 384; i++) {
        if (palette[i] > 0x3F) {
            fprintf(stderr, "Invalid palette received for patching.\n");
            exit(7);
        }

        if (family == LPX_FAMILY_ID)
            palette_data[i / 3 * 4 + 2 - i % 3] = palette[i] << 2;

        else if (family == LPRGB_FAMILY_ID)
            palette_data[i] = palette[i];
    }
}

void patch(const byte family, const byte target, const byte index, bool* args, byte* palette) {
    if (args[0]) { // Patch palette
        verify_and_copy_palette(family, palette);
        palette_maps[index].patch(&input);
    }
}