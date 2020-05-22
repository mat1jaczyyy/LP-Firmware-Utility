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

struct lpx_family_map {
    const map_element<byte*> setup_text_live;
};

void patch(const byte family, const byte target, const byte index, bool* args, byte* palette) {
    // :(
}