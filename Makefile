.PHONY: all tools compare clean tidy

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

ROM := harvestmoon.gbc
OBJS := main.o wram.o sram.o vram.o

ifeq (,$(shell which md5sum))
MD5 := md5sum
else
MD5 := md5sum
endif

all: $(ROM) compare

ifeq (,$(filter tools clean tidy,$(MAKECMDGOALS)))
Makefile: tools
endif

%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm -Wunmapped-char=0 -o $@ $<

$(ROM): $(OBJS) contents.link
	rgblink -n $(ROM:.gbc=.sym) -m $(ROM:.gbc=.map) -l contents.link -o $@ $(OBJS)
	rgbfix -jsvc -k E9 -l 0x33 -m 0x10 -p 0 -r 02 -t "HARVEST-MOO" -i "N GB" $@

#main.o: main.asm bank_*.asm
#	rgbasm -o main.o main.asm
#
#sram.o: sram.asm
#	rgbasm -o sram.o sram.asm

#game.gbc: game.o
#	rgblink -n game.sym -m game.map -o $@ $<
#	rgbfix -v -p 255 $@
#
#	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

# For contributors to make sure a change didn't affect the contents of the rom.
compare: $(ROM)
	@$(MD5) -c rom.md5

tools:
	$(MAKE) -C tools

tidy:
	rm -f $(ROM) $(OBJS) $(ROM:.gbc=.sym) $(ROM:.gbc=.map)
	$(MAKE) -C tools clean

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

	#rm -f game.o game.gbc game.sym game.map

%.2bpp: %.png
	rgbgfx --colors embedded -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

