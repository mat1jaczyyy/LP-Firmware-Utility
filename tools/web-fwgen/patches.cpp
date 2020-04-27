#include "common.h"

void write_buffer(bin_t* buffer, const uint start, const byte* data, const uint size) {
    if (start + size > buffer->size) {
        if (!reallocate_buffer(&input, start + size - buffer->size, "firmware patches")) exit(7);
    }

    memcpy(&buffer->data[start], data, size);
}

const std::vector<byte> lpx_midi_name_patch = {
    'L',  'P',  'X',  'M',  'I',  'D',  '0',  '0',  '\0', '\0', '\0', '\0', 'L',  'P',  'X',  'M',
    'I',  'D',  '0',  '0',  'I',  'n',  't',  '\0', '\0', '\0', '\0', '\0', 'L',  'P',  'X',  'M',
    'I',  'D',  '0',  '0',  'I',  'n',  '\0', '\0', 'L',  'P',  'X',  'M',  'I',  'D',  '0',  '0',
    'O',  'u',  't',  '\0', '\0', '\0', '\0', '\0', 'L',  'P',  'X',  'D',  'A',  'W',  '0',  '0',
    'I',  'n',  '\0', '\0', 'L',  'P',  'X',  'D',  'A',  'W',  '0',  '0',  'O',  'u',  't', '\0'
};

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
    const map_element<byte*> midi_port_names;
};

const lpx_family_map lpx_product_map = {
    {0x2194, lpx_midi_name_patch.data(), lpx_midi_name_patch.size()},
};

const std::vector<uint> lpx_name_id_offsets = {
    0x06, 0x12, 0x22, 0x2E, 0x3E, 0x4A
};

void patch(const byte family, const byte target, const byte index, bool* args) {
    if (family != LPX_FAMILY_ID || target != LPX_PRODUCT_ID) return;

    if (args[0]) {
        lpx_product_map.midi_port_names.patch(&input);

        byte id = ((byte*)args)[1];

        if (id <= 99) {
            byte a = id / 10 + 0x30;
            byte b = id % 10 + 0x30;

            for (int i = 0; i < lpx_name_id_offsets.size(); i++) {
                input.data[lpx_product_map.midi_port_names.address + lpx_name_id_offsets[i]] = a;
                input.data[lpx_product_map.midi_port_names.address + lpx_name_id_offsets[i] + 1] = b;
            }
        }
    }
}