typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef void (*rgb_function)(u32 pitch, u32 rgb);

void fast_led(u8* d, u16 l) {
    const rgb_function rgb_led = (rgb_function)0x0801103e;

	if (d[0] != 0x5F) return;

	u8* end = d + l - 1;

    for (u8* i = d + 1; i < end;) {
        u8 r = *i++;
        u8 g = *i++;
        u8 b = *i++;

        u8 n = ((r & 0x40) >> 4) | ((g & 0x40) >> 5) | ((b & 0x40) >> 6);
        if (n == 0) n = *i++;

        r &= 0x3F;
        g &= 0x3F;
        b &= 0x3F;

        u32 c = (r << 18) | (g << 10) | (b << 2);

        for (u8 j = 0; j < n; j++) {
            u8 x = *i++;

            if (x == 0)
                for (u8 k = 0; k < 99; k++)
                    rgb_led(k, c);

            else if (x <= 99)
                rgb_led(x, c);
            
            else if (x <= 109) {
                x = (x - 100) * 10 + 1;

                for (u8 k = x; k < x + 8; k++)
                    rgb_led(k, c);

            } else if (x <= 119) {
                x -= 100;

                for (u8 k = x; k < 90; k += 10)
                    rgb_led(k, c);
            }
        }
    }
}