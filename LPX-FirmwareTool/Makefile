BUILDDIR = out

define build
	g++ -std=c++11 -O2 -I common -o $(BUILDDIR)/lpx-$(1) lpx-$(1)/$(1).cpp
endef

all:
	mkdir -p $(BUILDDIR)
	$(call build,bintosyx)
	$(call build,syxtobin)

clean:
	rm -rf $(BUILDDIR)
