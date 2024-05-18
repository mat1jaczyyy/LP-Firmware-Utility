TOOLS_OUT = tools/out
WASM_OUT = web/public/wasm

BINTOSYX = bintosyx
SYXTOBIN = syxtobin
FWGEN = fwgen

GPP_FLAGS = -std=c++11 -O2 -I common

ifeq ($(OS),Windows_NT)

EMSDK_ENV = "%USERPROFILE%/emsdk/emsdk_env.bat"

define rmdir
	if exist "$(1)" rd /s /q "$(1)"
endef

MKDIR = md

define tools
	echo Building CLI tools via make is not supported on Windows. Use Visual Studio.
endef

else

EMSDK_ENV = . ~/emsdk/emsdk_env.sh

define rmdir
	rm -rf "$(1)"
endef

MKDIR = mkdir -p

define tools
	cd tools && g++ $(GPP_FLAGS) -o ../$(TOOLS_OUT)/$(1) common/common.cpp common/cli.cpp $(1)/parse.cpp $(1)/$(1).cpp
endef

endif

define wasm
	$(MKDIR) "$(WASM_OUT)"
	cd tools && $(EMSDK_ENV) --build=Release && emcc $(GPP_FLAGS) $(1) \
		-o ../$(WASM_OUT)/$(FWGEN).js common/common.cpp $(BINTOSYX)/$(BINTOSYX).cpp $(SYXTOBIN)/$(SYXTOBIN).cpp web-$(FWGEN)/patches.cpp web-$(FWGEN)/wasm.cpp \
		-s "EXTRA_EXPORTED_RUNTIME_METHODS=['cwrap']" \
		--embed-file ../firmware/stock@firmware
endef

all: clean tools wasm web

clean_tools:
	$(call rmdir,$(TOOLS_OUT))

clean_wasm:
	$(call rmdir,$(WASM_OUT))

clean: clean_tools clean_wasm

tools: clean_tools
	$(MKDIR) "$(TOOLS_OUT)"
	$(call tools,$(BINTOSYX))
	$(call tools,$(SYXTOBIN))

wasm: clean_wasm
	$(call wasm,)

wasm-debug: clean_wasm
	$(call wasm,-g4 -s ASSERTIONS=1)

web: wasm
	cd web && pnpm install && pnpm build
