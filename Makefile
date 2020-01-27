TOOLS_OUT = cli/out
WASM_OUT = web/public/wasm

BINTOSYX = bintosyx
SYXTOBIN = syxtobin
FWGEN = fwgen

define tools
	cd cli && g++ -std=c++11 -O2 -I common -o ../$(TOOLS_OUT)/lpx-$(1) common/common.cpp common/cli.cpp lpx-$(1)/parse.cpp lpx-$(1)/$(1).cpp
endef

define wasm
	mkdir -p $(WASM_OUT)
	cd cli && . ~/emsdk/emsdk_env.sh --build=Release && emcc -std=c++11 -O2 $(1) -I common \
		-o ../$(WASM_OUT)/$(FWGEN).js common/common.cpp lpx-$(BINTOSYX)/$(BINTOSYX).cpp web-$(FWGEN)/patches.cpp web-$(FWGEN)/main.cpp \
		-s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' \
		--embed-file ../firmware/stock@firmware
endef

all: clean tools wasm web

clean_tools:
	rm -rf $(TOOLS_OUT)/*

clean_wasm:
	rm -rf $(WASM_OUT)/*

clean: clean_tools clean_wasm

tools: clean_tools
	mkdir -p $(TOOLS_OUT)
	$(call tools,$(BINTOSYX))
	$(call tools,$(SYXTOBIN))

wasm: clean_wasm
	$(call wasm,)

wasm-debug: clean_wasm
	$(call wasm,-g4 -s ASSERTIONS=1)

web: wasm
	cd web && yarn && yarn build