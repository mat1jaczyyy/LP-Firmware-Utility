typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

#ifdef LPMK2
    #define draw(p) { \
        u8 f = ((u8*)0x08006CB1)[p - 11]; \
        ((void (*)(u32, u8, u8, u8, u8))0x08004D89)(f, r, g, b, 0); \
    }

#else
    #ifdef LPX
        #define LED_BUFFER ((u32*)0x20000314)
        #define REFRESH_BUFFER ((u32*)0x20006980)
    #else
        #ifdef LPMINIMK3
            #define LED_BUFFER ((u32*)0x20000304)
            #define REFRESH_BUFFER ((u32*)0x20006754)
        #endif
    #endif

    #define draw(p) { \
        u8 f = (9 - p / 10) * 10 + p % 10; \
        LED_BUFFER[f] = c; \
        REFRESH_BUFFER[f] = REFRESH_BUFFER[f] & 0xF8; \
    }
#endif

u32 fast_led(
    #ifdef LPMK2
        u8* d, u32 unk, u32 unk2, u32 unk3
    #else
        u32 unk, u8* d, u32 l, u32 unk2
    #endif
) {
    u32 ret;

	if ((ret = (d[0] == 0xF0 && d[1] == 0x5F))) {
        u8* end;

        #ifdef LPMK2
            for (end = d + 2; *end != 0xF7; end++);
        #else
            end = d + l - 1;
        #endif

        for (u8* i = d + 2; i < end;) {
            u8 r = *i++;
            u8 g = *i++;
            u8 b = *i++;

            u8 n = ((r & 0x40) >> 4) | ((g & 0x40) >> 5) | ((b & 0x40) >> 6);
            if (n == 0) n = *i++;

            r &= 0x3F;
            g &= 0x3F;
            b &= 0x3F;

            #ifndef LPMK2
                u32 c = (r << 18) | (g << 10) | (b << 2);
            #endif

            for (u8 j = 0; j < n; j++) {
                u8 x = *i++;

                if (x == 0)
                    for (u8 k = 11; k <= 99; k++)
                        draw(k)

                else if (x <= 99) // TODO Ignore excludedIndexes if sent
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

    return ret;
}