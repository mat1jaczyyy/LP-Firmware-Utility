typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

#define LED_BUFFER ((u32*)0x20000314)
#define REFRESH_BUFFER ((u32*)0x20006980)

#define draw(p) { \
    u8 f = (9 - p / 10) * 10 + p % 10; \
    LED_BUFFER[f] = c; \
    REFRESH_BUFFER[f] = REFRESH_BUFFER[f] & 0xF8; \
}

u32 fast_led(u32 unk, u8* d, u32 l, u32 unk2) {
    //__asm__("push { r1, r2, r3 }");
    u32 ret;

	if ((ret = (d[0] == 0xF0 && d[1] == 0x5F))) {
        u8* end = d + l - 1;

        for (u8* i = d + 2; i < end;) {
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
                    for (u8 k = 0; k <= 99; k++)
                        draw(k)

                else if (x <= 99)
                    draw(x)
                
                else if (x <= 109) {
                    x = (x - 100) * 10 + 1;

                    for (u8 k = x; k < x + 8; k++)
                        draw(k)

                } else if (x <= 119) {
                    x -= 100;

                    for (u8 k = x; k < 90; k += 10)
                        draw(k)
                }
            }
        }
    }

    //__asm__("pop { r1, r2, r3 }");
    return ret;
}