CLI_OUT = out
WASM_OUT = out_wasm

BINTOSYX = bintosyx
SYXTOBIN = syxtobin

define cli
	g++ -std=c++11 -O2 -I common -o $(CLI_OUT)/lpx-$(1) lpx-$(1)/$(1).cpp
endef

all: clean cli wasm

cli:
	mkdir -p $(CLI_OUT)
	$(call cli,$(BINTOSYX))
	$(call cli,$(SYXTOBIN))

wasm:
	mkdir -p $(WASM_OUT)
	. ~/emsdk/emsdk_env.sh --build=Release && emcc -std=c++11 -O2 -I common -o $(WASM_OUT)/lpx-$(BINTOSYX).wasm lpx-$(BINTOSYX)/$(BINTOSYX).cpp

clean:
	rm -rf $(CLI_OUT)/* $(WASM_OUT)/*