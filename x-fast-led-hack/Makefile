FLAGS = -O2 -Wall -D_STM32F401RBT6_ -D_STM3x_ -D_STM32x_ -mthumb -mcpu=cortex-m4 \
		-fsigned-char  -DSTM32F40X_MD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=6000000UL \
		-DCMSIS -DUSE_GLOBAL_CONFIG -ffunction-sections -std=c99 -mlittle-endian \
		fast_led.c

define compile
	arm-none-eabi-gcc -D $(1) -S $(FLAGS) -o fast_led_$(1).asm
	arm-none-eabi-gcc -D $(1) -c $(FLAGS) -o fast_led_$(1)
	arm-none-eabi-objcopy -O binary fast_led_$(1) fast_led_$(1).bin
endef

all:
	$(call compile,LPX)
	$(call compile,LPMINIMK3)
	$(call compile,LPMK2)
