; seems like they are using $2100 to change banks rather than the usual $2000.
DEF MBC3RomBank  EQU $2100
DEF MBC3SRamBank EQU $4000
DEF SRAMorRTC_Data EQU $a000 ; maps to SRAM bank 0–3 or RTC regs 08–0C


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

; From Pokered/Pokecrystal:
DEF rJOYP                EQU $ff00 ; Joypad (R/W)
DEF rJOYP_c              EQU $00 ; Joypad (R/W)
DEF rDIV                 EQU $ff04 ; Divider Register (R/W)
DEF rDIV_c               EQU $04 ; Divider Register (R/W)

DEF rTIMA                EQU $ff05 ; Timer counter (R/W)
DEF rTMA                 EQU $ff06 ; Timer Modulo (R/W)
DEF rTAC                 EQU $ff07 ; Timer Control (R/W)
DEF rWave_0              EQU $ff30
DEF rWave_1              EQU $ff31
DEF rWave_2              EQU $ff32
DEF rWave_3              EQU $ff33
DEF rWave_4              EQU $ff34
DEF rWave_5              EQU $ff35
DEF rWave_6              EQU $ff36
DEF rWave_7              EQU $ff37
DEF rWave_8              EQU $ff38
DEF rWave_9              EQU $ff39
DEF rWave_a              EQU $ff3a
DEF rWave_b              EQU $ff3b
DEF rWave_c              EQU $ff3c
DEF rWave_d              EQU $ff3d
DEF rWave_e              EQU $ff3e
DEF rWave_f              EQU $ff3f

DEF rSTAT                EQU $ff41
DEF rSTAT_PPU_MODE_0     EQU 0
DEF rSTAT_PPU_MODE_1     EQU 1
DEF rSTAT_LYC_LY         EQU 2
DEF rVBK_c               EQU $4f ; VRAM Bank switcher
DEF rBGPI_c              EQU $68 ; CGB Mode Only - Background Palette Index
DEF rBGPI_AUTO_INCREMENT EQU 7     ; increment rBGPI after write to rBGPD
DEF rBGPD_c              EQU $69 ; CGB Mode Only - Background Palette Data
DEF rOBPI_c              EQU $6a ; CGB Mode Only - Sprite Palette Index
DEF rOBPI_AUTO_INCREMENT EQU 7     ; increment rOBPI after write to rOBPD
DEF rOBPD_c              EQU $6b ; CGB Mode Only - Sprite Palette Data
DEF rOPRI_c              EQU $6c ; CGB Mode Only - Object Priority Mode
DEF rSVBK_c              EQU $70 ; CGB Mode Only - WRAM Bank

