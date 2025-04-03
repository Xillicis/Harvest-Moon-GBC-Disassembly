; seems like they are using $2100 to change banks rather than the usual $2000.
DEF MBC3RomBank  EQU $2100
DEF MBC3SRamBank EQU $4000

; interrupt flags
DEF VBLANK   EQU 0
DEF LCD_STAT EQU 1
DEF TIMER    EQU 2
DEF SERIAL   EQU 3
DEF JOYPAD   EQU 4

DEF LY_VBLANK EQU 145

; Hardware registers
DEF rLCDC_BG_PRIORITY    EQU 0
DEF rLCDC_SPRITES_ENABLE EQU 1
DEF rLCDC_SPRITE_SIZE    EQU 2
DEF rLCDC_BG_TILEMAP     EQU 3
DEF rLCDC_TILE_DATA      EQU 4
DEF rLCDC_WINDOW_ENABLE  EQU 5
DEF rLCDC_WINDOW_TILEMAP EQU 6
DEF rLCDC_ENABLE         EQU 7

DEF rIE_VBLANK EQU 0
DEF rIE_LCD    EQU 1
DEF rIE_TIMER  EQU 2
DEF rIE_SERIAL EQU 3
DEF rIE_JOYPAD EQU 4

; From Pokecrystal:
DEF rBGPI_c              EQU $68 ; CGB Mode Only - Background Palette Index
DEF rBGPI_AUTO_INCREMENT EQU 7     ; increment rBGPI after write to rBGPD
DEF rBGPD_c              EQU $69 ; CGB Mode Only - Background Palette Data
DEF rOBPI_c              EQU $6a ; CGB Mode Only - Sprite Palette Index
DEF rOBPI_AUTO_INCREMENT EQU 7     ; increment rOBPI after write to rOBPD
DEF rOBPD_c              EQU $6b ; CGB Mode Only - Sprite Palette Data
DEF rOPRI_c              EQU $6c ; CGB Mode Only - Object Priority Mode
DEF rSVBK_c              EQU $70 ; CGB Mode Only - WRAM Bank

