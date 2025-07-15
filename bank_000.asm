; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

INCLUDE "home/header.asm"

Call_000_0061:
    ld a, [wSTAT_HandlerIndex]
    or a
    rst $08

Data_000_0066:
    db $df, $3f, $00
    db $ce, $0e, $00
    db $ce, $0e, $00
    db $ce, $0e, $00
    db $ce, $0e, $00
    db $ce, $0e, $00
    db $ba, $3f, $00
    db $be, $3f, $00
    db $c2, $3f, $00
    db $c2, $3f, $00
    db $c2, $3f, $00
    db $c2, $3f, $00
    db $c2, $3f, $00
    db $df, $3f, $00
    db $df, $3f, $00
    db $c6, $3f, $00
    db $ca, $3f, $00
    db $ca, $3f, $00
    db $ce, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $d2, $3f, $00
    db $ba, $3f, $00
    db $ce, $3f, $00
    db $ce, $3f, $00
    db $ba, $3f, $00
    db $ba, $3f, $00
    db $df, $3f, $00
    db $df, $3f, $00
    db $ba, $3f, $00
    db $ce, $3f, $00
    db $df, $3f, $00
    db $da, $3f, $00
    db $e0, $3f, $00
    db $e0, $3f, $00
    db $df, $3f, $00
    db $e0, $3f, $00

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

Boot::
    nop
    jp _Boot

HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "HARVEST-MOO"

HeaderManufacturerCode::
    db "N GB"

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $45, $39

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $10

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $6f

HeaderGlobalChecksum::
    db $83, $4c

_Boot:
    nop

Start:
    nop
    di
    or a
    ld [$dff7], a
    xor a
    ld [MBC3SRamBank], a
    ld a, $01
    ld [$2000], a
    ld sp, $dfef
    ld hl, $ff80
    ld bc, $007f
    call ZeroOutHL
    ld hl, $dd00
    ld bc, $00ff
    call ZeroOutHL
    call InitializeHRAM
    xor a
    ldh [rBGP], a
    xor a
    ldh [rOBP0], a
    xor a
    ldh [rOBP1], a
    call Call_000_2527
    ld a, $02
    ldh [$ff8d], a
    call SafeTurnOffLCDDuringVBlank
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $0a
    ld [$0000], a
    ld a, 1
    ld [rRTCLATCH], a
    xor a
    ld [$dd00], a
    call Call_000_2430
    jr nc, jr_000_01b0

    push hl
    push af
    ld l, $0b
    ld h, $78
    ld a, $07
    call BankSwitchCallHL
    pop af
    pop hl

jr_000_01b0:
    di

Jump_000_01b1:
    di
    xor a
    ldh [rIE], a
    ld sp, $dfef
    ld hl, $ff80
    ld bc, $007f
    call ZeroOutHL
    ld a, $02
    ldh [$ff8d], a
    call SafeTurnOffLCDDuringVBlank
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $8000
    ld bc, $1fff
    call ZeroOutHL
    ld hl, wShadowOAM ; 0xc000 beginning of wram.
    ld bc, $1cff
    call ZeroOutHL
    call InitializeHRAM
    xor a
    ld [MBC3SRamBank], a
    ld a, [$dff7]
    cp $11
    jr nz, .jr_000_01f9
    ld a, $01
    ld [$c0bb], a
    ld a, $00
    ld [$c0bc], a
    jr .jr_000_0202

.jr_000_01f9
    xor a
    ld [$c0bb], a
    ld a, $2a
    ld [$c0bc], a

.jr_000_0202
    ld a, $20
    ld [wSTAT_HandlerIndex], a

Call_000_0207:
    call SafeTurnOffLCDDuringVBlank
    push hl
    push af
    ld l, $27
    ld h, $25
    ld a, $00
    call BankSwitchCallHL
    pop af
    pop hl

Jump_000_0217:
    di
    call SafeTurnOffLCDDuringVBlank
    push hl
    push af
    ld l, $27
    ld h, $25
    ld a, $00
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $7a
    ld h, $78
    ld a, $07
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ldh [$ff97], a
    call ConditionalClearBGMap0_Bank1
    push hl
    push af
    ld l, $27
    ld h, $25
    ld a, $00
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ld [$c0a6], a
    xor a
    ldh [$ff8d], a
    xor a
    ldh [$ff9a], a
    xor a
    ld [wVRAMBlitCommandList], a
    xor a
    ldh [$ff97], a
    push hl
    push af
    ld l, $cd
    ld h, $79
    ld a, $07
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_000_0061
    call Call_000_2273
    ei

Jump_000_026d:
    ld a, [$c0a6]
    or a
    or a
    jp z, Jump_000_026d
    jp Jump_000_0217

ConditionalClearBGMap0_Bank1:
    ld a, [$c0bb]
    or a
    jr z, .jr_000_028d
    ld c, rVBK_c
    ld a, $01
    ldh [c], a ; load VRAM1
    xor a
    ldh [$ffa4], a
    call ClearBGMap0_duplicate
    ld c, rVBK_c
    xor a
    ldh [c], a ; change back to VRAM0
.jr_000_028d
    ld a, [$c0bc]
    ld b, a
    ld a, [wSTAT_HandlerIndex]
    or a
    add b
    rst $08

Data_000_0297: ; 00x0297
    db $6E, $6F, $1F, $19, $40, $01, $39, $50, $02, $01, $40, $03, $01, $40, $04, $01
    db $40, $05, $01, $40, $06, $01, $40, $10, $09, $40, $0E, $0D, $55, $0E, $FE, $5A
    db $0E, $AB, $61, $0E, $B2, $66, $0E, $A8, $4F, $10, $BE, $4F, $10, $8D, $63, $0F
    db $01, $40, $1D, $5D, $43, $1D, $A6, $46, $1D, $01, $40, $09, $09, $47, $09, $C2
    db $4C, $09, $F3, $4D, $09, $00, $4F, $09, $F6, $50, $09, $FE, $51, $09, $A1, $55
    db $09, $6D, $56, $09, $0E, $53, $1D, $0E, $53, $1D, $CD, $65, $09, $D4, $67, $09
    db $EC, $56, $1D, $CC, $47, $06, $D0, $40, $1f, $0E, $53, $1D, $92, $51, $1D, $A6
    db $6C, $0F, $01, $40, $07, $80, $6E, $1D, $01, $40, $02, $18, $73, $1D, $45, $6E
    db $3F, $01, $40, $21, $1B, $50, $22, $01, $40, $23, $01, $40, $24, $01, $40, $25
    db $01, $40, $26, $01, $40, $30, $01, $40, $2E, $EA, $54, $2E, $C6, $5A, $2E, $60
    db $61, $2E, $5A, $66, $2E, $17, $4F, $30, $2D, $4F, $30, $8E, $63, $2F, $01, $40
    db $3D, $50, $43, $3D, $8C, $46, $3D, $01, $40, $29, $FC, $46, $29, $A5, $4C, $29
    db $D2, $4D, $29, $DB, $4E, $29, $CD, $50, $29, $D1, $51, $29, $63, $55, $29, $14
    db $56, $29, $C9, $52, $3D, $C9, $52, $3D, $74, $65, $29, $7B, $67, $29, $A7, $56
    db $3D, $CC, $47, $26, $01, $40, $3F, $C9, $52, $3D, $60, $51, $3D, $50, $6C, $2F
    db $01, $40, $27, $30, $6D, $3D, $01, $40, $22, $BB, $71, $3D, $C9

; Some function?
    push af
    ld a, $f0
    ldh [rBGP], a
    pop af
    ret

INCLUDE "home/palettes.asm"

Call_000_0429:
    ld hl, Data_000_043d
    call SyncLoadSpritePalette7
    ld hl, Data_000_0445
    call SyncLoadSpritePalette3
    ret

Call_000_0436:
    ld hl, Data_000_044d
    call SyncLoadSpritePalette7
    ret

Data_000_043d: ; 00x043d
    RGB 28,19,19, 4,4,0, 15,11,11, 31,27,17
Data_000_0445: ; 00x0445
    RGB 28,19,19, 4,4,0, 15,11,11, 31,27,17
Data_000_044d: ; 00x044d
    RGB 28,19,19, 4,4,0,  0,24,6,  24,31,0

LoadTextBoxTilesIntoBGMap1: ; 00x0455
    ld hl, vBGMap1
    ld de, TextBoxTileData
    ld b, $14 ; length
    ld c, $05 ; height
    call CopyTileDataToBGMap
    ret

TextBoxTileData: ; 00x0463
    db $A0, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1
    db $A1, $A1, $A1, $A2, $F9, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8
    db $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A5, $F9, $A8, $A8, $A8, $A8, $A8, $A8, $A8
    db $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A5, $F9, $A8, $A8, $A8
    db $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A5
    db $A3, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B
    db $5B, $5B, $5B, $A4

Call_000_04c7:
    push af
    push bc
    push de
    push hl
;; Turn on bit 1 (LCD enable) in the LCDC register
    ldh a, [rLCDC]
    or 1 << rLCDC_SPRITES_ENABLE
    ldh [rLCDC], a
    ldh a, [$ff8d] ; a per-VBlank "first-time" flag
    or a
    jp nz, Jump_000_0561

;; first VBlank in a sequence:
    inc a
    ldh [$ff8d], a
    call $ff80      ; BIOS routine: "wait_VBlank_and_joypad"
    ei              ; re-enable IME (interrupts) for nested ISRs
    call $6e8b      ; BIOS "MGL" call (typically "pad input + DMA")
    ld de, wVRAMBlitCommandList
    call ExecuteVRAMBlitCommands
    xor a
    ldh [$ff97], a
    ld [wVRAMBlitCommandList], a
    call RestoreScrollAndWindow
    call LoadDMGPalettes
    xor a
    ldh [$ff99], a
    call Call_000_263a
    ld a, [$c0a8]
    inc a
    ld [$c0a8], a
    jr nc, .next1 ; if no overflow, skip

    ld a, [$c0a9]
    inc a
    ld [$c0a9], a ; overwise bump a second counter
.next1
    call LinearCongruentialGenerator ; update PRNG
    call Call_000_2195
    ld hl, $c0ba
    inc [hl]
    ld a, [$cb5e]
    ld [$cb5d], a
    ld a, [$c0ba]
    and $10
    jr z, .skipGameClock
    ld a, [$cb5c]
    ld [$cb5d], a
    call TickGameClock

.skipGameClock
    call Call_000_056c
    call ReadRealTimeClock
    push hl
    push af
    ld l, $4c
    ld h, $71
    ld a, $0f
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $de
    ld h, $72
    ld a, $0f
    call BankSwitchCallHL
    pop af
    pop hl
    ldh a, [$ff99]
    ldh [$ff9a], a
    call ClearUnusedOAMEntries
    ldh a, [$ff8a]
    and $0f
    cp $0f
    jp z, Jump_000_01b1

    xor a
    ldh [$ff8d], a ; clear the "first-VBlank" flag

jr_000_055c:
    pop hl
    pop de
    pop bc
    pop af
    ret

Jump_000_0561:
    ldh a, [$ff8d]
    inc a
    ldh [$ff8d], a
    ei
    call Call_000_263a
    jr jr_000_055c

Call_000_056c:
    ld a, [$c0bc]
    ld b, a
    ld a, [wSTAT_HandlerIndex]
    or a
    add b
    rst $08

Data_000_0576:
    db $2A, $70, $1F, $E2, $41, $01, $A0, $52, $02, $28, $41, $03, $21, $41, $04, $C8
    db $40, $05, $B9, $40, $06, $F2, $40, $10, $40, $41, $0E, $DB, $55, $0E, $ED, $5B
    db $0E, $96, $62, $0E, $92, $67, $0E, $67, $50, $10, $7B, $50, $10, $80, $64, $0F
    db $A4, $40, $1D, $58, $44, $1D, $E2, $47, $1D, $C6, $40, $09, $1E, $47, $09, $D8
    db $4C, $09, $09, $4E, $09, $16, $4F, $09, $0C, $51, $09, $5D, $52, $09, $41, $56
    db $09, $33, $57, $09, $3D, $53, $1D, $3D, $53, $1D, $5E, $66, $09, $1A, $68, $09
    db $A5, $57, $1D, $24, $49, $06, $8B, $41, $1F, $3D, $53, $1D, $1D, $52, $1D, $41
    db $6D, $0F, $73, $40, $07, $41, $6F, $1D, $79, $41, $02, $DF, $73, $1D, $01, $6F
    db $3F, $D3, $41, $21, $F9, $51, $22, $1B, $41, $23, $14, $41, $24, $B8, $40, $25
    db $B9, $40, $26, $D7, $40, $30, $1C, $41, $2E, $AB, $55, $2E, $A2, $5B, $2E, $3E
    db $62, $2E, $2D, $67, $2E, $C9, $4F, $30, $DD, $4F, $30, $74, $64, $2F, $97, $40
    db $3D, $3E, $44, $3D, $B0, $47, $3D, $B9, $40, $29, $0E, $47, $29, $B7, $4C, $29
    db $E4, $4D, $29, $ED, $4E, $29, $DF, $50, $29, $2C, $52, $29, $E8, $55, $29, $DA
    db $56, $29, $F8, $52, $3D, $F8, $52, $3D, $05, $66, $29, $C1, $67, $29, $53, $57
    db $3D, $EA, $48, $26, $AF, $40, $3F, $F8, $52, $3D, $D8, $51, $3D, $DE, $6C, $2F
    db $66, $40, $27, $E4, $6D, $3D, $6B, $41, $22, $75, $72, $3D, $C9

INCLUDE "home/time.asm"

Label_000_08f9:
    push af
    push bc
    push de
    push hl
    call Call_000_0905
    pop hl
    pop de
    pop bc
    pop af
    ret

Call_000_0905:
    ret

ClearUnusedOAMEntries:
    ldh a, [$ff99] ; A ← numBytesUsed (0-159)
    ld c, a
    ld b, $00
    ld hl, wShadowOAM
    add hl, bc ; HL ← 0xC000 + numBytesUsed
    sub $A0  ; A ← numBytesUsed – 160
    ret nc   ; if A≥0 (i.e. numBytesUsed≥160) → nothing to do

    cpl      ; A ← ~(numBytesUsed–160)
    inc a    ; A ← 160–numBytesUsed
    ld b, a  ; B = leftover bytes to clear
    xor a    ; A = 0 (the fill-value)
.loop
    ld [hli], a
    dec b
    jr nz, .loop
    ret


    ld hl, $ffa4
    ld bc, $0014
    jp ZeroOutHL

Call_000_0924:
    ld hl, wVRAMBlitCommandList
    ldh a, [$ff97]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret

Call_000_0930:
    ld de, wVRAMBlitCommandList
    ldh a, [$ff97]
    rst $30

    ret

    set 7, e
    jr jr_000_093b

Call_000_093b:
jr_000_093b:
    call Call_000_0924
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, e
    set 6, a
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl], $00
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    ret

Call_000_0951:
    push de
    ld d, a
    ld e, $01
    ld b, h
    ld c, l
    call Call_000_093b
    pop de
    ret

Call_000_095c:
    ld a, [MBC3SRamBank]
    push af
    ld a, d
    ld [MBC3RomBank], a
    call Call_000_0994
    pop af
    ld [MBC3RomBank], a
    ret

Call_000_096c:
    ld a, [MBC3SRamBank]
    push af
    ld a, d
    ld [MBC3RomBank], a
    call Call_000_097c
    pop af
    ld [MBC3RomBank], a
    ret

Call_000_097c:
    ld a, c
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9000
    jr jr_000_09aa

Call_000_0994:
    ld a, c
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000

jr_000_09aa:
    add hl, de
    ld d, h
    ld e, l
    call Call_000_0924
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    pop de
    ld b, $10

jr_000_09ba:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_09ba

    ld [hl], $00
    ldh a, [$ff97]
    add $13
    ldh [$ff97], a
    ret

; Non‑restoring divide: 16‑bit HL ÷ 8‑bit A → quotient in L, remainder in A
DivideHLByA_16bit:
    push de
    ld d, $10      ; 16 iterations (one per dividend bit)
    ld e, a        ; E = divisor
    xor a          ; A = 0 (remainder accumulator)
.loop
    add hl, hl     ; shift dividend left → C = old HL’s top bit
    rla            ; shift remainder<<1, pull C into new remainder bit
    
    jr  c, .subtract  ; if remainder ≥ 2^8 (i.e. C from rla = 1), we need to subtract
    cp  e             ; else compare remainder with divisor
    jr  c, .noSubtract    ; if remainder < divisor, skip subtraction
.subtract
    sub e       ; remainder -= divisor
    inc l       ; quotient_bit = 1 -> increment low byte of HL
.noSubtract
    dec d
    jr nz, .loop
    pop de
    ret

; Same as DivideHLByA_16bit, but only iterates on the first 8 bits.
; It's only used once though.
DivideHLByA_8bit: ; 00x09dc
    push de
    ld d, $08
    ld e, a
    xor a
.loop
    add hl, hl
    rla
    jr c, .subtract
    cp e
    jr c, .noSubtract
.subtract
    sub e
    inc l
.noSubtract
    dec d
    jr nz, .loop
    pop de
    ret


    push de
    ld d, $18
    ld e, a
    xor a

jr_000_09f4:
    add hl, hl
    ld b, a
    ld a, c
    adc c
    ld c, a
    ld a, b
    rla
    jr c, jr_000_0a00
    cp e
    jr c, jr_000_0a02
jr_000_0a00:
    sub e
    inc l
jr_000_0a02:
    dec d
    jr nz, jr_000_09f4
    pop de
    ret


    ld de, $0000

jr_000_0a0a:
    ld e, a
    sub $0a
    jr c, jr_000_0a12

    inc d
    jr jr_000_0a0a

jr_000_0a12:
    ld a, e
    ldh [$ffa4], a
    ld a, d
    ldh [$ffa5], a
    ret

; This function multiplies `c` by `a` and stores the value in `hl`.
Multiply8Bit:
    push de
    ld hl, $0000
    ld b, l
    ld d, $08 ; counting the 8 bits
.bit_loop
    rrca ; this loop adds `bc` to `hl` for the number of bits that are set
    jr nc, .binary_digit_skip
    add hl, bc
.binary_digit_skip
    sla c
    rl b
    dec d
    jr nz, .bit_loop
    pop de
    ret

RestoreScrollAndWindow:
    ldh a, [$ff91]
    ldh [rSCY], a
    ldh a, [$ff93]
    ldh [rSCX], a
    ldh a, [$ff95]
    ldh [rWY], a
    ldh a, [$ff96]
    ldh [rWX], a
    ret

; A = index (0…n)
; HL = base of a 16‑bit little‑endian word table
; → HL = table[index]
LoadWordFromTableHL:
    ld c, a
    ld b, $00    ; BC = index
    add hl, bc
    add hl, bc   ; HL += index*2
    ld a, [hli]  ; fetch low byte, HL++
    ld h, [hl]   ; fetch high byte
    ld l, a
    ret
; A = index (0…n), HL = base of a 3‑byte‑per‑entry table  
; → HL = table[index].word (little‑endian), A = table[index].byte3
Lookup3ByteTableEntry:
    ld c, a
    ld b, $00    ; BC = index
    add hl, bc
    add hl, bc
    add hl, bc   ; HL += index*3
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]   ; A = third byte
    ld l, c      ; HL = first two bytes as word
    ld h, b
    ret

LoadDMGPalettes:
    ld hl, $c0a3     ; point HL at a 3-byte palette table
    ld a, [hli]      ; A = first byte; HL→C0A4
    ldh [rBGP], a    ; BGP ← first byte
    ld a, [hli]      ; A = second byte; HL→C0A5
    ldh [rOBP0], a   ; OBP0 ← second byte
    ld a, [hl]       ; A = third byte (HL still C0A5)
    ldh [rOBP1], a   ; OBP1 ← third byte
    ret

; b = inner loop counter
; c = outer loop counter
; b*c = number of bytes to copy
CopyTileDataToBGMap: ; 00x0a62
.outerLoop
    call .loadRow
    dec c
    jr nz, .outerLoop
    ret

.loadRow
    push bc
    push hl
.innerLoop
    ld a, [de]
    inc de
    ld [hli], a
    dec b
    jr nz, .innerLoop
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    ret

jr_000_0a78:
    ld a, [de]
    inc de
    cp $ff
    ret z

    cp $45
    jr z, jr_000_0a88

    cp $43
    jr z, jr_000_0a88

    ld [hl+], a
    jr jr_000_0a78

jr_000_0a88:
    ld bc, $ffe0
    add hl, bc
    ld [hl], a
    ld bc, $0020
    add hl, bc
    jr jr_000_0a78

Call_000_0a93:
    push hl
    push de
    call Call_000_0ac1
    pop de
    pop hl
    push hl
    call Call_000_0924
    ld a, b
    pop bc
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    add $03
    ld b, a

jr_000_0aa8:
    ld a, [de]
    cp $ff
    jr z, jr_000_0ab9

    inc de
    cp $45
    jr z, jr_000_0aa8

    cp $43
    jr z, jr_000_0aa8

    ld [hl+], a
    jr jr_000_0aa8

jr_000_0ab9:
    ld [hl], $00
    ldh a, [$ff97]
    add b
    ldh [$ff97], a
    ret

Call_000_0ac1:
    ld bc, -$20 
    add hl, bc
    ld b, 0
jr_000_0ac7:
    ld a, [de]
    cp $ff
    ret z

    inc de
    cp $45
    jr z, jr_000_0ad8

    cp $43
    jr z, jr_000_0ad8

    inc b
    inc hl
    jr jr_000_0ac7

jr_000_0ad8:
    push hl
    push bc
    call Call_000_0951
    pop bc
    pop hl
    jr jr_000_0ac7


    ld a, [MBC3SRamBank]
    push af
    ld a, b
    ld [MBC3RomBank], a
    ld c, [hl]
    pop af
    ld [MBC3RomBank], a
    ret


jr_000_0aef:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld a, [hl+]

Call_000_0af5:
    ld c, a
    ld a, [hli]
    ld b, a
    push bc
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    push bc
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    ld a, [hli]
    pop de
    pop hl
    call BankedCopyHLtoDEBig
    pop hl
    ld a, $07
    rst $38
; unreachable
    jr jr_000_0aef


INCLUDE "home/random.asm"


MultiplyHLByA_ReturnHigh:
    ldh [$ffa4], a
    xor a
    ldh [$ffa6], a
    bit 7, h
    jr z, .L_pos
    inc a
    ldh [$ffa6], a ; mark sign = 1
    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl         ; HL = -HL (two’s-complement)
.L_pos

    ld e, l
    ld d, h        ; DE = |original HL|
    xor a
    ldh [$ffa5], a ; high-8 accumulator = 0
    ld c, a        ; low-8 accumulator = 0 (we’ll return C)
    ld h, a
    ld l, a        ; HL = mid-16 accumulator = 0

    ldh a, [$ffa4] ; reload multiplier
    ld b, $08      ; 8 bits to process
.loop
    rrca           ; rotate LSB → carry, shift A right
    jr nc, .skip   ; if bit was 0, skip addition
    add hl, de     ; mid-16 += DE
    ldh [$ffa4], a ; keep rotating A for next iteration
    ldh a, [$ffa5]
    adc c          ; high-8 += carry from mid-16 add
    ldh [$ffa5], a
    ldh a, [$ffa4] ; restore A = rotated multiplier
.skip
    sla e          ; DE <<= 1   (prepare next bit weight)
    rl d
    rl c           ; rotate low-8 accumulator through carry
    dec b
    jr nz, .loop

    ldh a, [$ffa5]
    ld c, a
    ret

; Data?
    ldh a, [$ffa6]
    or a
    jr z, jr_000_0c97

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    ld a, c
    cpl
    ld c, a
    ld a, $01
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    xor a
    adc c
    ld c, a

jr_000_0c97:
    ret

Label_000_0c98:
    push hl
    push de
    ld a, d
    call MultiplyHLByA_ReturnHigh
    ld a, l
    ldh [$ffa6], a
    ld a, h
    ldh [$ffa7], a
    ld a, c
    ldh [$ffa8], a
    pop de
    pop hl
    ld a, e
    call MultiplyHLByA_ReturnHigh
    ldh a, [$ffa6]
    add h
    ld h, a
    ldh a, [$ffa7]
    adc c
    ld c, a
    ldh a, [$ffa8]
    adc $00
    ld b, a
    ret

INCLUDE "home/add_array.asm"
INCLUDE "home/rtc.asm"

Call_000_0d90:
    ld a, [$c902]
    ld [$b886], a
    ld a, [$c903]
    ld [$b887], a
    ld a, [$c904]
    ld [$b888], a
    ld a, [$c905]
    ld [$b889], a
    ret

SyncToBlankPeriod:
    ldh a, [rLY]
    cp 102
    jr z, .hBlankSync_102_103
    cp 103
    jr z, .hBlankSync_102_103
    cp 104
    jr z, .hBlankSync_104
    cp 105
    jr z, .hBlankSync_105_106
    cp 106
    jr z, .hBlankSync_105_106
    cp 107
    jr z, .hBlankSync_107
    cp 143
    jr z, .hBlankSync_105_106
    jr .vBlankSync_143

.hBlankSync_102_103
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .hBlankSync_102_103

.hBlankSync_104
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .hBlankSync_104

.hBlankSync_105_106
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .hBlankSync_105_106

.hBlankSync_107
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .hBlankSync_107

.vBlankSync_143
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .vBlankSync_143
    ret

Call_000_0de8:
    di
    xor a
    ld [$cb92], a
    call UpdatePlayerMoneyTileData
    call UpdateHourTileData
    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    call Call_000_1002
    call Call_000_0f73
    ld hl, Call_008_456e
    ld a, BANK(Call_008_456e)
    call BankSwitchCallHL
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld [$cb1c], a
    ld [$c90d], a
    ld [wInputFreezeTimer], a
    ld [wCollisionNoMovement], a
    ld [$c910], a
    ld [wDestinationWarpID], a
    ld [$c911], a
    ld [$cb56], a
    ld [$cb57], a
    ld a, $ff
    ld [wTextID], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [sCurrentDayCounter] ; $ff happens in the intro cut scene
    cp $ff
    ret nz

    xor a
    ld [sCurrentDayCounter], a
    call UpdateDayOfTheWeekTileData
    ret

Call_000_0e54:
    ld a, [wInputFreezeTimer]
    or a
    ret z

    dec a
    ld [wInputFreezeTimer], a
    cp $26
    jr z, jr_000_0e66
    or a
    jr z, jr_000_0e81

jr_000_0e64:
    pop hl
    ret

jr_000_0e66:
    ld a, [wPlayerSpriteID]
    cp $5f
    jr z, jr_000_0e7b
    cp $60
    jr z, jr_000_0e7b
    cp $61
    jr z, jr_000_0e7b
    cp $62
    jr z, jr_000_0e7b
    pop hl
    ret

jr_000_0e7b:
    ld a, $1c
    call Call_000_16d1
    ret

jr_000_0e81:
    ld a, [$cb91]
    or a
    jr z, jr_000_0e64

    ld [wInputFreezeTimer], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [wInputFreezeTimer]
    cp $b4
    jr z, jr_000_0ea9
    cp $6e
    jr z, jr_000_0eb0
    cp $50
    jr z, jr_000_0eb7
    cp $a0
    jr z, jr_000_0ebe

jr_000_0ea9:
    ld a, $8a
    call Call_000_151d
    pop hl
    ret

jr_000_0eb0:
    ld a, $8b
    call Call_000_151d
    pop hl
    ret

jr_000_0eb7:
    ld a, $8c
    call Call_000_151d
    pop hl
    ret

jr_000_0ebe:
    ld a, $8d
    call Call_000_151d
    pop hl
    ret

Call_000_0ec5:
Jump_000_0ec5:
    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    ret

Call_000_0ece:
    call Call_000_2527
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_000_0f03
    cp WINDY_DAY
    jr z, jr_000_0f09
    ld a, [sCurrentSeason]
    cp SPRING
    jr z, jr_000_0ef1
    cp SUMMER
    jr z, jr_000_0ef7
    cp AUTUMN
    jr z, jr_000_0efd
    ld a, $13
    call Call_000_25c5
    ret

Call_000_0ef1:
jr_000_0ef1:
    ld a, $08
    call Call_000_25c8
    ret

jr_000_0ef7:
    ld a, $0b
    call Call_000_25c5
    ret

jr_000_0efd:
    ld a, $0f
    call Call_000_25c5
    ret

jr_000_0f03:
    ld a, $40
    call Call_000_25ce
    ret

Call_000_0f09:
Jump_000_0f09:
jr_000_0f09:
    ld a, $41
    call Call_000_25ce
    ret

Call_000_0f0f:
    xor a
    ld [$cb2f], a
    ld [wcb30], a
    ld [wLeftOrDownSideFacingTileID], a
    ld [wcb32], a
    ld [wRightOrUpSideFacingTileID], a
    ld [$cb34], a
    ld [$cb37], a
    ld [$cb38], a
    ld [$cb39], a
    ld [$cb3a], a
    ld [$cb3b], a
    ld [$cb3c], a
    ld [$cb3d], a
    ld [$cb3e], a
    ld [$cb3f], a
    ld [$cb40], a
    ld [$cb41], a
    ld [$cb42], a
    ret

Call_000_0f47:
    ld b, a
    and $80
    jr nz, jr_000_0f5c

    ld a, [$b8f2]
    add b
    jr c, jr_000_0f56

    ld [$b8f2], a
    ret

jr_000_0f56:
    ld a, $ff
    ld [$b8f2], a
    ret

jr_000_0f5c:
    ld a, b
    bit 7, a
    jr z, jr_000_0f63

    cpl
    inc a

jr_000_0f63:
    ld b, a
    ld a, [$b8f2]
    sub b
    jr c, jr_000_0f6e

    ld [$b8f2], a
    ret

jr_000_0f6e:
    xor a
    ld [$b8f2], a
    ret

Call_000_0f73:
    ld a, [$b939]
    cp $ff
    jr z, jr_000_0f9a

    ld a, [$b939]
    cp $04
    jr nc, jr_000_0f8e
    cp $03
    jr c, jr_000_0fa1

    ld a, [$b938]
    cp $e8
    jr nc, jr_000_0f8e
    jr jr_000_0fa1

jr_000_0f8e:
    ld a, $e7
    ld [$b938], a
    ld a, $03
    ld [$b939], a
    jr jr_000_0fa1

jr_000_0f9a:
    xor a
    ld [$b938], a
    ld [$b939], a

jr_000_0fa1:
    xor a
    ld [$cccc], a
    ld a, [$b938]
    ld [wTempPlayerMoney], a
    ld a, [$b939]
    ld [$cccb], a
    call LoadDecimalMoneyTileData
    ld a, [wDecimalPlayerMoneyTileID+2]
    ld [$b92d], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld [$b92e], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld [$b92f], a
    ret

Call_000_0fc7:
    ld a, [$b90a]
    cp $00
    jr z, jr_000_0fed

    ld a, $83
    ld [$ba44], a
    ld a, $84
    ld [$ba45], a
    ld a, $85
    ld [$ba46], a
    ld a, $86
    ld [$ba47], a
    ld a, $0e
    ld [$ba48], a
    ld a, $0d
    ld [$ba5b], a
    ret

jr_000_0fed:
    ld a, $ef
    ld [$ba44], a
    ld [$ba45], a
    ld [$ba46], a
    ld [$ba47], a
    ld [$ba48], a
    ld [$ba5b], a
    ret

Call_000_1002:
Jump_000_1002:
    ld a, [$b93b]
    cp $ff
    jr z, jr_000_1029

    ld a, [$b93b]
    cp $04
    jr nc, jr_000_101d

    cp $03
    jr c, jr_000_1030

    ld a, [$b93a]
    cp $e8
    jr nc, jr_000_101d

    jr jr_000_1030

jr_000_101d:
    ld a, $e7
    ld [$b93a], a
    ld a, $03
    ld [$b93b], a
    jr jr_000_1030

jr_000_1029:
    xor a
    ld [$b93a], a
    ld [$b93b], a

jr_000_1030:
    xor a
    ld [$cccc], a
    ld a, [$b93a]
    ld [wTempPlayerMoney], a
    ld a, [$b93b]
    ld [$cccb], a
    call LoadDecimalMoneyTileData
    ld a, [wDecimalPlayerMoneyTileID+2]
    ld [$b930], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld [$b931], a
    ld a, [wDecimalPlayerMoneyTileID+4]

Jump_000_1052:
    ld [$b932], a
    ret

; Looks like some kind of check to make sure the players money is capped at 99999,
; but it also seems to do other stuff.
; 0x1869f = 99999 (maximum money)
UpdatePlayerMoneyTileData:
    ld a, [sPlayerMoney+2]
    cp $ff
    jr z, .jr_000_108d

    ld a, [sPlayerMoney+2]
    cp $02 ; highest byte cannot be 2 or larger
    jr nc, .setMaxMoney

    cp $01
    jr c, .getTileData

    ld a, [sPlayerMoney+1]
    cp $87
    jr nc, .setMaxMoney

    cp $86
    jr c, .getTileData

    ld a, [sPlayerMoney]
    cp $a0
    jr nc, .setMaxMoney
    jr .getTileData

.setMaxMoney
    ld a, $9f
    ld [sPlayerMoney], a
    ld a, $86
    ld [sPlayerMoney+1], a
    ld a, $01
    ld [sPlayerMoney+2], a
    jr .getTileData

.jr_000_108d
    xor a
    ld [sPlayerMoney], a
    ld [sPlayerMoney+1], a
    ld [sPlayerMoney+2], a

.getTileData
    ld a, [sPlayerMoney+2]
    ld [wTempPlayerMoney+2], a
    ld a, [sPlayerMoney+1]
    ld [wTempPlayerMoney+1], a
    ld a, [sPlayerMoney]
    ld [wTempPlayerMoney], a
    call LoadDecimalMoneyTileData
    ld a, [wDecimalPlayerMoneyTileID]
    ld [$b928], a
    ld a, [wDecimalPlayerMoneyTileID+1]
    ld [$b929], a
    ld a, [wDecimalPlayerMoneyTileID+2]
    ld [$b92a], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld [$b92b], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld [$b92c], a
    ret

Call_000_10cb:
    ld a, [sShipmentPayment]
    ld l, a
    ld a, [sShipmentPayment+1]
    ld h, a
    call Call_000_325c
    ld a, [wDecimalPlayerMoneyTileID]
    ld [$b933], a
    ld a, [wDecimalPlayerMoneyTileID+1]
    ld [$b934], a
    ld a, [wDecimalPlayerMoneyTileID+2]
    ld [$b935], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld [$b936], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld [$b937], a
    ret

LoadHouseExpansionTileDataIntoSRAM:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, BANK(NoHouseExpansionTileData) ; 0x11
    ld [MBC3RomBank], a
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .noHouseExpansion
    cp 1
    jr z, .firstHouseExpansion
    ld de, SecondHouseExpansionTileData
    jr .loadTileDataIntoSRAM

.noHouseExpansion
    ld de, NoHouseExpansionTileData
    jr .loadTileDataIntoSRAM

.firstHouseExpansion
    ld de, FirstHouseExpansionTileData
    jr .loadTileDataIntoSRAM

.loadTileDataIntoSRAM
    ld a, $0d
    ld c, $80
    call Multiply8Bit ; hl is 0x0680
    ld bc, $a000
    add hl, bc        ; hl is 0xa680
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a  ; hl is 0xa688
    ld c, $06

.outerLoop
    ld b, $0e
    push hl

.innerLoop
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, .innerLoop

    pop hl
    push de
    ld de, $0080
    add hl, de
    pop de
    dec c
    jr nz, .outerLoop

    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_1147:
    ld a, [$b90b]
    or a
    ret z

    ld a, [$a0e0]
    cp $0e
    ret nz

    ld hl, $a0e0
    ld e, $2c

jr_000_1157:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld bc, $007e
    add hl, bc
    dec e
    jr nz, jr_000_1157
    ret

Call_000_1162:
    push hl
    push de
    ld hl, $ccc2
    ld a, c
    add [hl]
    ld [hl+], a
    inc bc
    ld a, b
    bit 7, a
    jr nz, jr_000_1177

    adc [hl]
    ld [hl+], a
    jr nc, jr_000_117c

    inc [hl]
    jr jr_000_117c

jr_000_1177:
    adc [hl]
    ld [hl+], a
    jr c, jr_000_117c

    dec [hl]

jr_000_117c:
    ld hl, $cbe2
    ld bc, $0001
    call AddBCtoWordAtHL
    ld a, [$ccc4]
    cp $02
    jr nc, jr_000_11a4

    cp $01
    jr c, jr_000_11b3

    ld a, [$ccc3]
    cp $87
    jr nc, jr_000_11a4

    cp $86
    jr c, jr_000_11b3

    ld a, [$ccc2]
    cp $a0
    jr nc, jr_000_11a4

    jr jr_000_11b3

jr_000_11a4:
    ld a, $9f
    ld [$ccc2], a
    ld a, $86
    ld [$ccc3], a
    ld a, $01
    ld [$ccc4], a

jr_000_11b3:
    ld hl, sNumProduceShipped
    call IncrementHLWithUpperBound
    ld hl, $ba35
    call IncrementHLWithUpperBound
    pop de
    pop hl
    ret

; Probably loads the interior tile set into SRAM
Call_000_11c2:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .noHouseExpansion
    cp 1
    jr z, .firstHouseExpansion

    ld hl, $6fa9
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    jr .exit

.noHouseExpansion
    ld hl, $7251
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    jr .exit

.firstHouseExpansion
    ld hl, $70fd
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig

.exit
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_1205:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld hl, $73a5
    ld de, $d800
    ld bc, $0198
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_1221:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld hl, $753d
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_123d:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld hl, $76b3
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_1259:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $7954
    ld de, $d800
    ld bc, $0176
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a

Call_000_1274:
    ret


Call_000_1275:
Jump_000_1275:
    ld a, [MBC3SRamBank]

Call_000_1278:
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $704c
    ld de, $d800
    ld bc, $01fe
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


Call_000_1291:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $724a
    ld de, $d800
    ld bc, $0132
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


Call_000_12ad:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $737c
    ld de, $d800
    ld bc, $01dc
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


Call_000_12c9:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $7558
    ld de, $d800
    ld bc, $01fe
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Call_000_12e5:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $2f
    ld [MBC3RomBank], a
    ld hl, $7756
    ld de, $d800
    ld bc, $01fe
    call CopyHLtoDEBig
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

InitializeFarmMap:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, BANK(FarmMapInitialData)
    ld [MBC3RomBank], a
    ld hl, sMapObjectLocation
    ld de, FarmMapInitialData
    ld b, $31

.outer_loop1
    push hl
    ld c, $10

.inner_loop1
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    dec c
    jr nz, .inner_loop1

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, .outer_loop1

    ld hl, sMapObjectLocation + 32
    ld de, $5621
    ld b, $31

.outer_loop2
    push hl
    ld c, $10

.inner_loop2
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    dec c
    jr nz, .inner_loop2

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, .outer_loop2

    ld hl, sMapObjectLocation + 64
    ld de, $5c41
    ld b, $31

.outer_loop3
    push hl
    ld c, $10

.inner_loop3
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    dec c
    jr nz, .inner_loop3

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, .outer_loop3

    ld hl, sMapObjectLocation + 96
    ld de, $6261
    ld b, $31

.outer_loop4
    push hl
    ld c, $10

.inner_loop4
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    dec c
    jr nz, .inner_loop4

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, .outer_loop4

    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


Call_000_1391:
    push hl
    push de
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_13b2

    cp $40
    jr z, jr_000_13b7

    jr jr_000_13bc

jr_000_13b2:
    ld bc, $694d
    jr jr_000_13bf

jr_000_13b7:
    ld bc, $6ba9
    jr jr_000_13bf

jr_000_13bc:
    ld bc, $697d

jr_000_13bf:
    add hl, bc
    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    pop bc
    pop de
    pop hl
    ret


Call_000_13e7:
    push hl
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_1407

    cp $40
    jr z, jr_000_140c

    jr jr_000_1411

jr_000_1407:
    ld bc, $694d
    jr jr_000_1414

jr_000_140c:
    ld bc, $6ba9
    jr jr_000_1414

jr_000_1411:
    ld bc, $697d

jr_000_1414:
    add hl, bc
    ld a, [$cb1d]
    ld e, a
    ld a, [$cb1e]
    ld d, a
    push de

jr_000_141e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_141e

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de

jr_000_142a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_142a

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_000_143d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_143d

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de

jr_000_1449:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1449

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    pop hl
    ld de, $0040
    add hl, de
    ld a, h
    cp $9c
    jr nz, jr_000_1461

    sub $04
    ld h, a

jr_000_1461:
    ld a, l
    ld [$cb1d], a
    ld a, h
    ld [$cb1e], a
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    pop bc
    pop hl
    ret

Call_000_1471:
    push hl
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_1491

    cp $40
    jr z, jr_000_1496

    jr jr_000_149b

jr_000_1491:
    ld bc, $694d
    jr jr_000_149e

jr_000_1496:
    ld bc, $6ba9
    jr jr_000_149e

jr_000_149b:
    ld bc, $697d

jr_000_149e:
    add hl, bc
    ld a, [$cb1d]
    ld e, a
    ld a, [$cb1e]
    ld d, a
    push de

jr_000_14a8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14a8

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de

jr_000_14b4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14b4

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_000_14c7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14c7

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    inc de

jr_000_14d3:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14d3

    ld a, [hl+]
    ld [de], a
    call Call_000_1f91
    pop hl
    ld a, l
    ld b, a
    inc a
    inc a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [$cb1d], a
    ld a, h
    ld [$cb1e], a
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    pop bc
    pop hl
    ret

Call_000_14f9:
    ld hl, $50c9
    ld a, $05
    call BankSwitchCallHL
    ret

Call_000_1502:
    ld hl, $51a7
    ld a, $05
    call BankSwitchCallHL
    ret

Call_000_150b:
    ld hl, $52f7
    ld a, $05
    call BankSwitchCallHL
    ret

Call_000_1514:
    ld hl, $53e2
    ld a, $05
    call BankSwitchCallHL
    ret

Call_000_151d:
    ld hl, wPlayerSpriteID
    cp [hl]
    ret z
    ld [hli], a
    ld a, $ff
    ld [hli], a
    inc hl
    xor a
    ld [hl], a
    ret

Call_000_152a:
Jump_000_152a:
    ld b, a
    ld a, [$c800]
    cp $00
    jr z, jr_000_154d

    ld a, b
    ld hl, $c802
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c810], a
    ld a, $01
    ld [$c80e], a
    ld a, $0b
    ld [$c801], a
    ret

jr_000_154d:
    ld a, b
    ld hl, $c802
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c810], a
    ld a, $01
    ld [$c800], a
    ld a, $01
    ld [$c80e], a
    ld a, $0b
    ld [$c801], a
    ret

Call_000_156b:
    sub $04
    ld b, a
    ld a, [$c820]
    cp $00
    jr z, jr_000_1590

    ld a, b
    ld hl, $c822
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c830], a
    ld a, $01
    ld [$c82e], a
    ld a, $09
    ld [$c821], a
    ret

jr_000_1590:
    ld a, b
    ld hl, $c822
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c830], a
    ld a, $01
    ld [$c820], a
    ld a, $01
    ld [$c82e], a
    ld a, $09
    ld [$c821], a
    ret

Call_000_15ae:
    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    xor a
    ld [$c770], a
    ret


Call_000_15cb:
    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    ret

Call_000_15e4:
    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    ret


Call_000_15fd:
    ld b, a
    ld a, [$b8ea]
    cp $02
    jr z, jr_000_160c

    cp $03
    jr z, jr_000_1611

    ld a, b
    jr jr_000_1614

jr_000_160c:
    ld a, b
    add $0c
    jr jr_000_1614

jr_000_1611:
    ld a, b
    add $18

jr_000_1614:
    ld hl, $c782
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_000_1622:
    push af
    ld a, [wSTAT_HandlerIndex]
    cp $02
    jr z, jr_000_162e

    pop af
    add $40
    push af

jr_000_162e:
    pop af
    ld hl, $c7a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_000_163d:
    push af
    ld a, [wSTAT_HandlerIndex]
    cp $02
    jr z, jr_000_1649

    pop af
    add $40

Call_000_1648:
    push af

jr_000_1649:
    pop af
    ld hl, $c7a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret

RST_TableJumpBankSwitch: ; 0x1658
    rst $08

Data_000_1659: ; 0x1659
    db $e4, $55, $06
    db $30, $56, $06
    db $77, $56, $06
    db $9e, $56, $06
    db $a7, $56, $06
    db $ce, $56, $06
    db $d7, $56, $06
    db $e0, $56, $06
    db $e9, $56, $06
    db $f2, $56, $06
    db $fb, $56, $06
    db $04, $57, $06 
    db $0d, $57, $06
    db $16, $57, $06 
    db $1f, $57, $06
    db $28, $57, $06
    db $31, $57, $06
    db $3a, $57, $06
    db $43, $57, $06
    db $4c, $57, $06
    db $55, $57, $06
    db $5e, $57, $06
    db $67, $57, $06
    db $70, $57, $06
    db $79, $57, $06
    db $82, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $8b, $57, $06
    db $94, $57, $06
    db $9d, $57, $06
    db $a3, $57, $06
    db $a9, $57, $06
    db $af, $57, $06
    db $b5, $57, $06
    db $bb, $57, $06

Call_000_16d1:
    ld [sCurrentlyHeldItem], a
    push hl
    push af
    ld l, $8e
    ld h, $6f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, [sCurrentlyHeldItem]
    rst $08


    pop bc
    ld d, a
    ld b, $ed
    ld d, a
    ld b, $19
    ld e, b
    ld b, $45
    ld e, b
    ld b, $71
    ld e, b
    ld b, $9d
    ld e, b
    ld b, $c9
    ld e, b
    ld b, $f5
    ld e, b
    ld b, $21
    ld e, c
    ld b, $4d
    ld e, c
    ld b, $79
    ld e, c
    ld b, $a5
    ld e, c
    ld b, $d1
    ld e, c
    ld b, $fd
    ld e, c
    ld b, $29
    ld e, d
    ld b, $55
    ld e, d
    ld b, $8c
    ld e, d
    ld b, $b8
    ld e, d
    ld b, $e4
    ld e, d
    ld b, $10
    ld e, e
    ld b, $3c
    ld e, e
    ld b, $68
    ld e, e
    ld b, $94
    ld e, e
    ld b, $c0
    ld e, e
    ld b, $17
    ld e, h
    ld b, $52
    ld e, h
    ld b, $8d
    ld e, h
    ld b, $c4
    ld e, h
    ld b, $fb
    ld e, h
    ld b, $f7
    ld e, l
    ld b, $75
    ld e, [hl]
    ld b, $f3
    ld e, [hl]
    ld b, $2a
    ld e, a
    ld b, $a8
    ld e, a
    ld b, $df
    ld e, a
    ld b, $5d
    ld h, b
    ld b, $94
    ld h, b
    ld b, $12
    ld h, c
    ld b, $49
    ld h, c
    ld b, $c7
    ld h, c
    ld b, $fe
    ld h, c
    ld b, $7c
    ld h, d
    ld b, $b7
    ld h, d
    ld b, $35
    ld h, e
    ld b, $b9
    ld h, e
    ld b, $4c
    ld h, h
    ld b, $4d
    ld h, h
    ld b, $4e
    ld h, h
    ld b, $4f
    ld h, h
    ld b, $cd
    ld h, h
    ld b, $4b
    ld h, l
    ld b, $c4
    ld h, l
    ld b, $42
    ld h, [hl]
    ld b, $c0
    ld h, [hl]
    ld b, $44
    ld h, a
    ld b, $87
    ld h, a
    ld b, $02
    ld l, b
    ld b, $03
    ld l, b
    ld b, $04
    ld l, b
    ld b, $05
    ld l, b
    ld b, $06
    ld l, b
    ld b, $3d
    ld l, b
    ld b, $bb
    ld l, b
    ld b, $f2
    ld l, b
    ld b, $29
    ld l, c
    ld b, $60
    ld l, c
    ld b, $db
    ld l, c
    ld b, $06
    ld l, d
    ld b, $31
    ld l, d
    ld b, $5c
    ld l, d
    ld b, $5c
    ld l, d
    ld b, $5c
    ld l, d
    ld b, $87
    ld l, d
    ld b, $be
    ld l, d
    ld b, $3c
    ld l, e
    ld b, $3d
    ld l, e
    ld b, $3e
    ld l, e
    ld b, $b9
    ld l, e
    ld b, $34
    ld l, h
    ld b, $60
    ld l, h
    ld b, $8c
    ld l, h
    ld b, $b8
    ld l, h
    ld b, $e4
    ld l, h
    ld b, $16
    ld l, l
    ld b, $42
    ld l, l
    ld b, $6e
    ld l, l
    ld b, $9a
    ld l, l
    ld b, $15
    ld l, [hl]
    ld b, $90
    ld l, [hl]
    ld b, $91
    ld l, [hl]
    ld b, $cb
    ld l, [hl]
    ld b, $47
    ld l, a
    ld b, $c5
    ld l, a
    ld b, $43
    ld [hl], b
    ld b, $c1
    ld [hl], b
    ld b, $3f
    ld [hl], c
    ld b, $bd
    ld [hl], c
    ld b, $3b
    ld [hl], d
    ld b, $67
    ld [hl], d
    ld b, $93
    ld [hl], d
    ld b, $bf
    ld [hl], d
    ld b, $eb
    ld [hl], d
    ld b, $17
    ld [hl], e
    ld b, $79
    ld e, l
    ld b, $43
    ld [hl], e
    ld b, $43
    ld [hl], e
    ld b, $7a
    ld [hl], e
    ld b, $b1
    ld [hl], e
    ld b, $e8
    ld [hl], e
    ld b, $1f
    ld [hl], h
    ld b, $9d
    ld [hl], h
    ld b, $1b
    ld [hl], l
    ld b, $99
    ld [hl], l
    ld b, $17
    halt
    ld b, $4e
    halt
    ld b, $cc
    halt
    ld b, $03
    ld [hl], a
    ld b, $3a
    ld [hl], a
    ld b, $18
    ld a, b
    ld [de], a
    ld c, b
    ld a, b
    ld [de], a
    ld a, b
    ld a, b
    ld [de], a

Call_000_1850:
    rst $08
    adc d
    ld [hl], e
    ld [de], a
    adc [hl]
    ld [hl], e
    ld [de], a
    sub d
    ld [hl], e
    ld [de], a
    sub [hl]
    ld [hl], e
    ld [de], a
    sbc d
    ld [hl], e
    ld [de], a
    sbc [hl]
    ld [hl], e
    ld [de], a
    and d
    ld [hl], e
    ld [de], a
    and [hl]
    ld [hl], e
    ld [de], a
    xor d
    ld [hl], e
    ld [de], a
    xor [hl]
    ld [hl], e
    ld [de], a
    or d
    ld [hl], e
    ld [de], a
    or [hl]
    ld [hl], e
    ld [de], a
    cp d
    ld [hl], e
    ld [de], a
    cp [hl]
    ld [hl], e
    ld [de], a
    jp nz, $1273

    add $73
    ld [de], a
    jp z, $1273

    adc $73
    ld [de], a

Call_000_1887:
    rst $08
    and $73
    ld [de], a
    ld [$1274], sp
    ld a, [hl+]
    ld [hl], h
    ld [de], a
    ld c, h
    ld [hl], h
    ld [de], a
    ld l, [hl]
    ld [hl], h
    ld [de], a
    sub b
    ld [hl], h
    ld [de], a
    or d
    ld [hl], h
    ld [de], a
    call nc, Call_000_1274

Call_000_18a0:
    or $74
    ld [de], a
    jr jr_000_191a

    ld [de], a
    ld a, [hl-]
    ld [hl], l
    ld [de], a
    ld e, h
    ld [hl], l
    ld [de], a
    ld a, [hl]
    ld [hl], l
    ld [de], a
    and b
    ld [hl], l
    ld [de], a
    jp nz, Jump_000_1275

    db $e4
    ld [hl], l
    ld [de], a
    ld b, $76
    ld [de], a
    jr z, @+$78

    ld [de], a
    ld c, d
    halt
    ld [de], a
    ld l, h
    halt
    ld [de], a
    adc [hl]
    halt
    ld [de], a
    or b
    halt
    ld [de], a
    jp nc, $1276

    db $f4
    halt
    ld [de], a

Call_000_18d0:
    rst $08
    ld a, [hl+]
    ld [hl], a
    ld [de], a
    ld c, h
    ld [hl], a
    ld [de], a
    ld l, [hl]
    ld [hl], a
    ld [de], a
    sub b
    ld [hl], a
    ld [de], a
    or d
    ld [hl], a
    ld [de], a

Call_000_18e0:
    call nc, $1277
    or $77
    ld [de], a

Call_000_18e6:
    rst $08

Jump_000_18e7:
    xor b
    ld a, b
    ld [de], a
    cp e
    ld a, b

Call_000_18ec:
    ld [de], a
    adc $78

Call_000_18ef:
    ld [de], a
    push de
    ld a, b
    ld [de], a

Jump_000_18f3:
    call c, Call_000_1278

Call_000_18f6:
    ld hl, $54cd
    ld a, $05
    call BankSwitchCallHL
    ret


Call_000_18ff:
    ld hl, $55a9
    ld a, $05
    call BankSwitchCallHL
    ret


Call_000_1908:
    ld hl, $5689
    ld a, $05
    call BankSwitchCallHL

Call_000_1910:
    ret


Call_000_1911:
    ld hl, $5774
    ld a, $05
    call BankSwitchCallHL
    ret


Call_000_191a:
Jump_000_191a:
jr_000_191a:
    ld hl, $585f
    ld a, $05
    call BankSwitchCallHL
    ret


Call_000_1923:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, $42
    call Call_000_25cb
    ld a, $38
    ld [wInputFreezeTimer], a
    ld a, PLAYER_HOLDING_ITEM_POSE
    call Call_000_151d
; Rotate item slot
    ld a, [sItemSlot]
    inc a
    cp $03 ; Max number of possible held items
    jr nz, .next
    xor a
.next
    ld [sItemSlot], a
    ld hl, sInventory
; get inventory item
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    ret z

    call Call_000_16d1
    ret


Call_000_195e:
    ld a, [$c60a]
    add b
    ld l, a
    ld h, $00
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff94]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    push af
    ld a, [$c60b]
    add c
    ld l, a
    ld h, $00
    ldh a, [$ff91]
    ld e, a
    ldh a, [$ff92]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    ld c, $20
    call Multiply8Bit
    ld de, vBGMap0
    add hl, de
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_000_199a:
    ld a, h
    cp $98
    jr c, jr_000_19a6

    cp $9c
    ret c

    sub $04
    ld h, a
    ret


jr_000_19a6:
    add $04
    ld h, a
    ret


Call_000_19aa:
    ld a, [wPlayerIsRidingHorse]
    or a
    jr nz, jr_000_19f2

    xor a
    ld [$cb89], a
    ld a, [$c7a0]
    or a
    ret z

    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c7aa]
    sub b
    bit 7, a
    jr z, jr_000_19c8

    cpl
    inc a

jr_000_19c8:
    cp $0b
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c7ab]
    cp b
    jr nc, jr_000_19e2

    sub b
    bit 7, a
    jr z, jr_000_19dd

    cpl
    inc a

jr_000_19dd:
    cp $1c
    ret nc

    jr jr_000_19ec

jr_000_19e2:
    sub b
    bit 7, a
    jr z, jr_000_19e9

    cpl
    inc a

jr_000_19e9:
    cp $04
    ret nc

jr_000_19ec:
    ld a, $01
    ld [$cb89], a
    ret


jr_000_19f2:
    xor a
    ld [$cb89], a
    ret

CheckForNoEnergyAnimation:
    ld a, [sPlayerEnergy]
    or a
    jp z, SetDizzyCollapseAnimation
; Still have energy
    sub b
    ld [sPlayerEnergy], a
    jr nc, .stillHaveEnergy
    xor a
    ld [sPlayerEnergy], a
.stillHaveEnergy:
    ld a, [sPlayerEnergy]
    ld c, a
    ld a, b
    cp SMALL_ENERGY
    jr z, .useSmallEnergy
    cp MEDIUM_ENERGY
    jr z, .useMediumEnergy
    jp .useLargeEnergy

    ret ; ???

.useSmallEnergy
    ld hl, EnergyScaleForTirednessAnimations
    ld a, [sNumPowerBerriesEaten]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hli]
    cp c
    jr z, SetWipeSweatAnimation
    ld a, [hli]
    cp c
    jr z, SetExhaustedAnimation
    ld a, [hli]
    cp c
    jp z, SetFallDownAnimation
    ld a, [hl]
    cp c
    jp z, Jump_000_1ab4
    ret

.useMediumEnergy
    ld hl, EnergyScaleForTirednessAnimations
    ld a, [sNumPowerBerriesEaten]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hli]
    cp c
    jr z, SetWipeSweatAnimation
    dec a
    cp c
    jr z, SetWipeSweatAnimation
    ld a, [hli]
    cp c
    jr z, SetExhaustedAnimation
    dec a
    cp c
    jr z, SetExhaustedAnimation
    ld a, [hli]
    cp c
    jr z, SetFallDownAnimation
    dec a
    cp c
    jr z, SetFallDownAnimation
    ld a, [hl]
    cp c
    jr z, jr_000_1ab4
    ret

.useLargeEnergy
    ld hl, EnergyScaleForTirednessAnimations
    ld a, [sNumPowerBerriesEaten]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hli]
    cp c
    jr z, SetWipeSweatAnimation
    dec a
    cp c
    jr z, SetWipeSweatAnimation
    dec a
    cp c
    jr z, SetWipeSweatAnimation
    ld a, [hli]
    cp c
    jr z, SetExhaustedAnimation
    dec a
    cp c
    jr z, SetExhaustedAnimation
    dec a
    cp c
    jr z, SetExhaustedAnimation
    ld a, [hli]
    cp c
    jr z, SetFallDownAnimation
    dec a
    cp c
    jr z, SetFallDownAnimation
    dec a
    cp c
    jr z, SetFallDownAnimation
    ld a, [hl]
    cp c
    jr z, jr_000_1ab4
    ret

SetWipeSweatAnimation:
    ld a, $b4
    ld [$cb91], a
    ret

SetExhaustedAnimation:
    ld a, $6e
    ld [$cb91], a
    ret

SetFallDownAnimation:
    ld a, $50
    ld [$cb91], a
    ret

SetDizzyCollapseAnimation:
    pop hl
    ld a, $01
    ld [wInputFreezeTimer], a

Jump_000_1ab4:
jr_000_1ab4:
    ld a, $a0
    ld [$cb91], a
    ret

; Scales the timing for when the out of energy animations play as the player gets stronger.
; Makes it more evenly spaced as you get stronger.
EnergyScaleForTirednessAnimations:
    db $32, $21, $11, $00
    db $37, $25, $12, $00
    db $3C, $28, $14, $00
    db $41, $2B, $16, $00
    db $46, $2F, $18, $00
    db $4B, $32, $19, $00
    db $50, $35, $1B, $00
    db $55, $39, $1C, $00
    db $5A, $3C, $1E, $00
    db $5F, $3F, $20, $00
    db $64, $43, $21, $00

; Separate data???
    db $FA, $ED ;$B8, ;$80


;;;;; Is this actual code? somehow jumps here?
    cp b ; 00x1ae8
    add b
    jr c, jr_000_1af7
    ld [sPlayerEnergy], a
    ld b, a
    ld a, [sPlayerMaxEnergy]
    cp b
    jr c, jr_000_1af7
    ret

jr_000_1af7:
    ld a, [sPlayerMaxEnergy]
    ld [sPlayerEnergy], a
    ret

; This might be unused code???
Call_000_1afe:
    ld a, [$cb8d]
    cp $01
    jr z, jr_000_1b0e
    cp $03
    jr z, jr_000_1b14
    cp $05
    jr z, jr_000_1b1a
    ret

jr_000_1b0e:
    ld b, $1e
    call $1ae6 ; BGB is saying this memory address is `undefined opcode`...
    ret

jr_000_1b14:
    ld b, $14
    call $1ae6
    ret

jr_000_1b1a:
    ld b, $0a
    call $1ae6
    ret

Data_000_1b20:
; Tools
db SICKLE, HOE, HAMMER, AX, SUPER_SICKLE, SUPER_HOE, SUPER_HAMMER, SUPER_AX
; Medince etc...
db COW_MEDICINE, MILKER, BRUSH, WATERING_CAN, SPRINKLER, SPRINKLER, P_MEDICINE, M_POTION
; Seeds
db COW_BELL, GRASS_SEEDS, TURNIP_SEEDS, POTATO_SEEDS, TOMATO_SEEDS, CORN_SEEDS
db EGGPLANT_SEEDS, PEANUT_SEEDS, CARROT_SEEDS, BROCOLLI_SEEDS, PICK_AX, UMBRELLA
db $55, COW_FEED, CHICKEN_FEED, SPRINKLER
db $22, $1C, $24, $25, $1E, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $07, $28, $1E
db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $07, $1A, $26, $26, $1E
db $2B, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $00, $31, $AF, $AF, $AF, $AF, $AF
db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $12, $2E, $29, $1E, $2B, $AF, $12, $22, $1C
db $24, $25, $1E, $AF, $AF, $12, $2E, $29, $1E, $2B, $AF, $07, $28, $1E, $AF, $AF
db $AF, $AF, $AF, $12, $2E, $29, $1E, $2B, $AF, $07, $1A, $26, $26, $1E, $2B, $AF
db $AF, $12, $2E, $29, $1E, $2B, $AF, $00, $31, $AF, $AF, $AF, $AF, $AF, $AF, $02
db $28, $30, $AF, $0C, $1E, $1D, $22, $1C, $22, $27, $1E, $AF, $AF, $0C, $22, $25
db $24, $1E, $2B, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $01, $2B, $2E, $2C, $21
db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $16, $1A, $2D, $1E, $2B, $AF, $02
db $1A, $27, $4C, $AF, $AF, $AF, $AF, $12, $29, $2B, $22, $27, $24, $25, $1E, $2B
db $AF, $AF, $AF, $AF, $AF, $12, $29, $2B, $22, $27, $24, $25, $1E, $2B, $AF, $AF
db $AF, $AF, $AF, $0F, $4C, $0C, $1E, $1D, $22, $1C, $22, $27, $1E, $AF, $AF, $AF
db $AF, $0C, $4C, $0F, $28, $2D, $22, $28, $27, $AF, $AF, $AF, $AF, $AF, $AF, $02
db $28, $30, $AF, $01, $1E, $25, $25, $AF, $AF, $AF, $AF, $AF, $AF, $06, $2B, $1A
db $2C, $2C, $AF, $12, $1E, $1E, $1D, $2C, $AF, $AF, $AF, $13, $2E, $2B, $27, $22
db $29, $AF, $12, $1E, $1E, $1D, $2C, $AF, $AF, $0F, $28, $2D, $1A, $2D, $28, $AF
db $12, $1E, $1E, $1D, $2C, $AF, $AF, $13, $28, $26, $1A, $2D, $28, $AF, $12, $1E
db $1E, $1D, $2C, $AF, $AF, $02, $28, $2B, $27, $AF, $12, $1E, $1E, $1D, $2C, $AF
db $AF, $AF, $AF, $04, $20, $20, $29, $25, $1A, $27, $2D, $AF, $12, $1E, $1E, $1D
db $2C, $0F, $1E, $1A, $27, $2E, $2D, $AF, $12, $1E, $1E, $1D, $2C, $AF, $AF, $02
db $1A, $2B, $2B, $28, $2D, $AF, $12, $1E, $1E, $1D, $2C, $AF, $AF, $01, $2B, $28
db $1C, $1C, $28, $25, $22, $AF, $12, $1E, $1E, $1D, $2C, $0F, $22, $1C, $24, $AF
db $00, $31, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $14, $26, $1B, $2B, $1E, $25, $25
db $1A, $AF, $AF, $AF, $AF, $AF, $AF, $05, $22, $2C, $21, $22, $27, $20, $AF, $11
db $28, $1D, $AF, $AF, $AF, $02, $28, $30, $AF, $05, $1E, $1E, $1D, $AF, $AF, $AF
db $AF, $AF, $AF, $02, $21, $22, $1C, $24, $1E, $27, $AF, $05, $1E, $1E, $1D, $AF
db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF

Call_000_1cff:
    ld a, [wSTAT_HandlerIndex]
    cp STATF_MODE10 | STATF_LYCF | STATF_OAM
    ret z

    cp STATF_MODE10 | STATF_LYCF | STATF_LCD
    ret z

    cp STATF_MODE10 | STATF_MODE00 | STATF_VBL
    ret z

    ld a, [sCurrentHour]
    cp TIME_5_PM
    ret nc

    cp TIME_6_AM
    ret c

    ld hl, sNumProduceShipped
    call IncrementHLWithUpperBound
    ld hl, $ba35
    call IncrementHLWithUpperBound
    ld a, [sCurrentlyHeldItem]
    ld hl, ShipmentSellingPrice
    call LoadWordFromTableHL
    ld d, h
    ld e, l
    ld a, [sShipmentPayment]
    ld l, a
    ld a, [sShipmentPayment+1]
    ld h, a
    add hl, de
    ld a, h
    cp $c3
    jr c, .maximumPayment

    ld a, l
    cp $50
    jr c, .maximumPayment

    ld l, $50
    ld h, $c3

.maximumPayment
    ld a, l
    ld [sShipmentPayment], a
    ld a, h
    ld [sShipmentPayment+1], a
    call Call_000_10cb
    ret

INCLUDE "data/selling_price.asm"

Label_000_1e30:
    call c, $3e05
    ld a, [bc]
    ldh [$ffab], a
    ld a, $7a
    ldh [$ffac], a
    ld a, $79
    ldh [$ffad], a
    ld a, [$c0bb]
    or a
    jr nz, jr_000_1e50

    ld a, $2a
    ldh [$ffab], a
    ld a, $b0
    ldh [$ffac], a
    ld a, $79
    ldh [$ffad], a

jr_000_1e50:
    ld a, [$cc76]
    inc a
    ld [$cc76], a
    cp $10
    jr z, jr_000_1ec4

    cp $20
    ret nz

    xor a
    ld [$cc76], a
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ldh a, [$ffab]
    ld [MBC3RomBank], a

jr_000_1e6c:
    ld hl, $1f1c
    ld a, [$cc77]
    call LoadWordFromTableHL
    ld a, [$cc76]
    call LoadWordFromTableHL
    ldh a, [$ffac]
    ld e, a
    ldh a, [$ffad]
    ld d, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $1f14
    ld a, [$cc76]
    call LoadWordFromTableHL
    ld b, $10

jr_000_1e8f:
    di

jr_000_1e90:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1e90

    ld a, [de]
    ld [hl+], a
    inc de
    ei
    dec b
    jr nz, jr_000_1e8f

    ld a, [$cc76]

Call_000_1ea0:
    inc a
    ld [$cc76], a
    cp $04
    jr c, jr_000_1e6c

    xor a
    ld [$cc76], a
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ld a, [$cc77]
    cp $00
    jr nz, jr_000_1ebe

    ld a, $01
    ld [$cc77], a
    ret


jr_000_1ebe:
    ld a, $00
    ld [$cc77], a
    ret


Jump_000_1ec4:
jr_000_1ec4:
    xor a
    ld [$cc78], a
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ldh a, [$ffab]
    ld [MBC3RomBank], a

jr_000_1ed2:
    ld hl, $1f40
    ld a, [$cc77]
    call LoadWordFromTableHL
    ld a, [$cc78]
    call LoadWordFromTableHL
    ldh a, [$ffac]
    ld e, a
    ldh a, [$ffad]
    ld d, a
    add hl, de

Call_000_1ee8:
    ld d, h
    ld e, l
    ld hl, $1f30
    ld a, [$cc78]
    call LoadWordFromTableHL
    ld b, $10

jr_000_1ef5:
    di

jr_000_1ef6:
    ldh a, [rSTAT]

Call_000_1ef8:
    bit 1, a
    jr nz, jr_000_1ef6

    ld a, [de]
    ld [hl+], a

Call_000_1efe:
Jump_000_1efe:
    inc de

Jump_000_1eff:
    ei

Call_000_1f00:
    dec b
    jr nz, jr_000_1ef5

    ld a, [$cc78]
    inc a
    ld [$cc78], a

Jump_000_1f0a:
    cp $08
    jr c, jr_000_1ed2

    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


    ld h, b
    sub [hl]
    ld [hl], b
    sub [hl]

Jump_000_1f18:
    ld h, b
    sub a
    ld [hl], b
    sub a
    jr nz, jr_000_1f3d

    jr z, jr_000_1f3f

Jump_000_1f20:
    ld b, b

Call_000_1f21:
    ld bc, $0150
    ld h, b
    ld bc, $0170
    nop
    ld bc, $0110
    jr nz, @+$03

    jr nc, jr_000_1f31

    add b

jr_000_1f31:
    sub b
    sub b
    sub b
    add b
    sub c
    sub b
    sub c
    add b
    sub d
    sub b
    sub d
    add b

jr_000_1f3d:
    sub e
    sub b

jr_000_1f3f:
    sub e

Jump_000_1f40:
    ld b, h
    rra
    ld d, h
    rra
    add b
    nop
    sub b
    nop
    and b
    nop
    or b
    nop
    ret nz

    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]
    nop
    nop
    stop
    jr nz, jr_000_1f5a

jr_000_1f5a:
    jr nc, jr_000_1f5c

jr_000_1f5c:
    ld b, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop

IncrementHLWithUpperBound:
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, .firstByteNoOverflow

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, .secondByteNoOverflow

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    jr .proceed

.firstByteNoOverflow
    inc hl
.secondByteNoOverflow
    inc hl
.proceed
    ld a, [hl]
    cp $01
    ret nz

    dec hl
    ld a, [hl]
    cp $86
    ret c

    dec hl
    ld a, [hl]
    cp $9f
    ret c

    ld a, $9f
    ld [hli], a
    ld a, $86
    ld [hli], a
    ld a, $01
    ld [hl], a
    ret

Call_000_1f91:
    ld a, [$c0bb]
    or a
    ret z

    push hl
    dec hl
    ld c, rVBK_c
    ld a, $01
    ldh [c], a
    ld a, [hl]
    ld hl, $1fd8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_000_1fa7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1fa7

    ld a, [hl]
    ld [de], a
    ld c, rVBK_c
    xor a
    ldh [c], a
    pop hl
    ret


Call_000_1fb5:
    ldh [$ffaa], a
    push hl
    ld c, rVBK_c
    ld a, $01
    ldh [c], a
    call SyncToBlankPeriod
    ldh a, [$ffaa]
    ld hl, $1fd8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ld [hl], a
    ld c, rVBK_c
    xor a
    ldh [c], a
    call SyncToBlankPeriod
    ldh a, [$ffaa]
    ret


    nop
    inc b
    nop
    inc bc
    inc bc
    ld bc, $0001

Call_000_1fe0:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc

Call_000_1fe8:
    nop
    nop
    nop
    inc bc

Jump_000_1fec:
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop

Jump_000_1ffc:
    inc bc

Jump_000_1ffd:
    inc bc
    inc bc
    dec b

Call_000_2000:
    dec b
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    nop
    ld bc, $0001
    nop
    ld b, $05
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b

Call_000_2033:
    nop
    nop
    nop
    ld b, $05
    nop
    nop
    nop
    nop

Jump_000_203c:
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_203f:
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06

Jump_000_2051:
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_205f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    ld b, $06
    dec b
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    ld b, $06
    dec b
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b

Jump_000_20bf:
    inc b
    nop
    nop
    ld b, $06
    dec b
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    nop
    ld b, $06
    dec b
    dec b
    nop
    nop
    nop
    ld a, [bc]
    ld c, $12

Call_000_20dc:
    ld a, [bc]
    ld a, [de]

Call_000_20de:
Jump_000_20de:
    xor a
    ldh [$ff9b], a

Call_000_20e1:
    ld a, [$cb59]
    or a
    jr nz, jr_000_20ef

    ld a, $ff
    ld [$cb1c], a
    xor a
    jr jr_000_20fc

jr_000_20ef:
    ld a, [$cb1c]
    ld de, $20d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_000_20fc:
    ld [$cb13], a
    ld a, $10
    add b
    ld b, a
    ld a, $08
    add c
    ld c, a
    ldh a, [$ff99]
    cp $a0
    ret z
    ld e, a
    ld d, $c0

jr_000_210f:
    ld a, [hl]
    cp $80
    jr z, jr_000_2157

    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ldh a, [$ff9b]
    bit 5, a
    ld a, [hl+]
    jr z, jr_000_2123

    cpl
    inc a
    sub $08

jr_000_2123:
    add c
    ld [de], a
    inc e
    ld a, [$cb1c]
    cp $ff
    jr nz, jr_000_2132

    ld a, [hl+]
    ld [de], a
    inc e
    jr jr_000_214c

jr_000_2132:
    ld a, [hl+]
    push af
    push bc
    push de
    push hl
    ld c, a
    ld a, [$cb13]
    ld e, a
    call Call_000_235e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$cb13]
    ld [de], a
    inc a
    ld [$cb13], a
    inc e

jr_000_214c:
    ldh a, [$ff9b]
    xor [hl]
    ld [de], a
    inc hl
    inc e

Jump_000_2152:
    ld a, e
    cp $a0
    jr nz, jr_000_210f

jr_000_2157:
    ld a, e
    ldh [$ff99], a
    ret


    inc hl
    inc hl
    inc hl
    jr jr_000_210f

JumpToFunctionInTable:
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h ; de = 2*a
    pop hl
    add hl, de
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp hl


TableJumpBankSwitch: ; 0x216c
    ld e, a
    ld d, $00
    ld l, a
    ld h, $00
    add hl, hl ; 2*a

; looks like some kind of table jump thing
Call_000_2173:
    add hl, de
    ld e, l
    ld d, h
    pop hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl] ; looks like `a` will have a bank number...
    ld l, e
    ld h, d

BankSwitchCallHL:
    push bc
    ld b, a
    ld a, [MBC3SRamBank]
    ld c, a
    ld a, b
    ld [MBC3RomBank], a
    ld a, c
    pop bc
    push af
    call JumpHL
    pop af
    ld [MBC3RomBank], a
    ret

JumpHL:
    jp hl

Call_000_2195:
    ld a, [$cbf1]
    or a
    jr z, jr_000_21d4

    ld a, [MBC3SRamBank]
    ldh [$ffa5], a
    ld a, [$cbf5]
    ld [MBC3RomBank], a
    ld a, [$cbf4]
    ld [MBC3SRamBank], a
    ld a, [$cbee]
    ld e, a
    ld a, [$cbef]
    ld d, a
    ld a, [$cbf2]
    ld l, a
    ld a, [$cbf3]
    ld h, a
    add hl, de
    ld a, [hl+]
    ldh [$ffa4], a
    inc de
    ld a, e
    ld [$cbee], a
    ld a, d
    ld [$cbef], a
    xor a
    ld [MBC3SRamBank], a
    ldh a, [$ffa5]
    ld [MBC3RomBank], a
    jr jr_000_222f

jr_000_21d4:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ldh [$ffa4], a
    ld a, [$cbf0]
    or a
    jr z, jr_000_222f

    ld a, $01
    ld [MBC3SRamBank], a
    ld a, [$cbee]
    ld e, a
    ld a, [$cbef]
    ld d, a
    ld hl, $a000
    add hl, de
    ldh a, [$ffa4]
    ld [hl], a
    inc de
    ld a, l
    ld [$cbee], a
    ld a, h
    ld [$cbef], a
    xor a
    ld [MBC3SRamBank], a

jr_000_222f:
    ldh a, [$ffa4]
    ld c, a
    ldh a, [$ff8c]
    xor c
    and c
    ldh [$ff8b], a
    ld a, c
    ldh [$ff8a], a
    ldh [$ff8c], a
    ld a, $30
    ldh [rP1], a
    ret

InitializeHRAM: ; 0x2242
    ld c, $80
    ld b, 10
    ld hl, Data_000_2250
.loop
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, .loop
    ret

Data_000_2250:
    db $3e, $c0, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

SafeTurnOffLCDDuringVBlank:
    ld hl, rLCDC
    bit rLCDC_ENABLE, [hl]
    ret z

    ldh a, [rIE]
    push af
    res rIE_VBLANK, a
    ldh [rIE], a
.wait
    ldh a, [rLY]
    cp LY_VBLANK
    jr nz, .wait

    res rLCDC_ENABLE, [hl]
    pop af
    ldh [rIE], a
    ret

Call_000_2273: ; 00x2273
    ld a, [wLCDCTempStorage]
    ldh [rLCDC], a
    ret

RestoreInterruptMask: ; 00x2279
    xor a           ; A = 0
    ldh [rIF], a    ; IF ← 0   (clear all pending interrupts)
    ld a, [$c0a0]   ; A ← saved IE mask
    ldh [rIE], a    ; IE ← A   (enable only the interrupts you’ve stored)
    ret

ZeroOutHL:
.loop
    xor a
    ld [hli], a
    dec bc
    ld a, c
    or b
    jr nz, .loop
    ret

; Clear the first BG tile‑map (0x9800–0x9BFF) by filling it with tile 0
ClearBGMap0:
    ld hl, $9bff

BeginZeroing:
    ld bc, $0400
.loop
    ld a, 0
    ld [hld], a
    dec bc
    ld a, b
    or c
    jr nz, .loop
    ret

ClearBGMap1:
    ld hl, $9fff
    jr BeginZeroing

ClearBGMap0_duplicate:
    ld hl, $9bff
    ld bc, $0400
.loop
    ldh a, [$ffa4]
    ld [hld], a
    dec bc
    ld a, b
    or c
    jr nz, .loop
    ret

BeginBlitting:
    inc de
    ld h, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    and %00111111 ; length of data block (up to 63)
    ld b, a ; b is a counter for bytes to copy
    ld a, c ; top two bits get rotated to the first two bits
    rlca
    rlca
    and $03 ; check this first two bits now
    jr z, .horizontalCopy
    dec a
    jr z, HorizontalFill
    dec a
    jr z, VerticalFill
; fallthrough
.verticalCopy
    ld a, [de]
    ld [hl], a
    ld a, b
    ld bc, $0020 ; 32 byte shift
    add hl, bc
    ld b, a
    dec b
    jr nz, .verticalCopy
    inc de
    jr ExecuteVRAMBlitCommands

.horizontalCopy
    ld a, [de]
    ld [hli], a
    inc de
    dec b
    jr nz, .horizontalCopy
; fallthrough

ExecuteVRAMBlitCommands:
    ; In:  DE → command stream
    ; Clobbers: A, B, C, DE, HL
    ; Returns when a zero-length command is encountered
    xor a
    ld [$cb75], a
    ld a, [de]
    or a
    jr nz, BeginBlitting
    ret

HorizontalFill:
    ld a, [de]
    inc de
.fill
    ld [hl+], a
    dec b
    jr nz, .fill
    jr ExecuteVRAMBlitCommands

VerticalFill:
.fill
    ld a, [de]
    ld [hl], a
    inc de
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, .fill
    jr ExecuteVRAMBlitCommands

CopyHLtoDE:
; copy `b` bytes of data from address starting in `hl` to address starting at `de`.
.loop
    ld a, [hli]
    ld [de], a
    inc de
    dec b
    jr nz, .loop
    ret

CopyHLtoDEBig:
; copy `bc` bytes of data from address starting in `hl` to address starting at `de`.
.loop
    ld a, [hli]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, .loop
    ret

BankedCopyHLtoDEBig:
    push hl
    ld l, a
    ld a, [MBC3SRamBank]
    ld h, a
    ld a, l
    ld [MBC3RomBank], a
    ld a, h
    pop hl
    push af
    call CopyHLtoDEBig
    pop af
    ld [MBC3RomBank], a
    ret


    push hl
    ld l, a
    ld a, [MBC3SRamBank]
    ld h, a
    ld a, l
    push hl
    ld [MBC3RomBank], a
    pop hl
    ld a, h
    pop hl
    push af
    call Call_000_2334
    pop af
    ld [MBC3RomBank], a
    ret

Call_000_2334:
jr_000_2334:
    ld a, [hli]
    cp $ff
    jr z, jr_000_2341
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2334
    ret

jr_000_2341:
    ld a, [hli]
    ldh [$ffa4], a
    ld a, [hli]
    push hl
    ld h, a
    ldh a, [$ffa4]
    ld l, a

jr_000_234a:
    ld a, h
    ld [de], a
    inc de
    dec l
    jr z, jr_000_2357

    dec bc
    ld a, b
    or c
    jr nz, jr_000_234a

    pop hl
    ret


jr_000_2357:
    pop hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2334

    ret


Call_000_235e:
    ld a, [$cb1c]
    cp $00
    jr z, jr_000_237a
    cp $01
    jr z, jr_000_2381
    cp $02
    jr z, jr_000_2388
    cp $03
    jr z, jr_000_238e
    cp $04
    jr z, jr_000_2394
    cp $05
    jr z, jr_000_239a
    ret

jr_000_237a:
    ld a, [$cb14]
    or a
    jr nz, jr_000_239f
    ret

jr_000_2381:
    ld a, [$cb15]
    or a
    jr nz, jr_000_239f
    ret

jr_000_2388:
    ld a, [$cb16]
    or a
    jr nz, jr_000_239f

jr_000_238e:
    ld a, [$cb17]
    or a
    jr nz, jr_000_239f

jr_000_2394:
    ld a, [$cb18]
    or a
    jr nz, jr_000_239f

jr_000_239a:
    ld a, [$cb19]
    or a
    ret z

jr_000_239f:
    ld a, [$cb61]
    and $03
    swap a
    ld d, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4001
    add hl, bc
    ld b, d
    ld c, $00
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c913
    add hl, de
    pop de
    ld a, [MBC3SRamBank]
    ld b, a
    ld a, [$cb60]
    ld c, a
    ld a, [$c0bb]
    or a
    jr z, jr_000_23d6

    ld a, c
    add $18
    jr jr_000_23d9

jr_000_23d6:
    ld a, c
    add $38

jr_000_23d9:
    ld [MBC3RomBank], a
    ld c, $10

jr_000_23de:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_23de

    ld a, b
    ld [MBC3RomBank], a
    ret


Call_000_23e9:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, rJOYP_c

jr_000_23f0:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_000_23f9:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_000_23fd:
    bit 0, d
    ld a, $10
    jr nz, jr_000_2405
    ld a, $20

jr_000_2405:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_000_23fd

    dec b
    jr nz, jr_000_23f9

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_000_2424
    jr jr_000_23f0

    ld a, [$dd00]
    or a
    ret z

Call_000_2424:
    ld de, $1b58

jr_000_2427:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_2427

    ret


Call_000_2430:
    ld hl, $24a1
    call Call_000_23e9
    call Call_000_2424
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_2486
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_2424
    ld a, $30
    ldh [rP1], a
    call Call_000_2424
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_2424
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_2424
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_2486

    ld hl, $2491
    call Call_000_23e9
    call Call_000_2424
    sub a
    ret

jr_000_2486:
    ld hl, $2491
    call Call_000_23e9
    call Call_000_2424
    scf
    ret

    db $89
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00
    db $89
    db $01
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00

    push de
    push hl
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    call CopyHLtoDEBig
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, vBGMap0
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_24d0:
    ld b, $14

jr_000_24d2:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_24d2

    add hl, de
    dec c
    jr nz, jr_000_24d0

    ld a, $81
    ldh [rLCDC], a
    call Call_000_2424
    pop hl

Jump_000_24e3:
    call Call_000_23e9
    call Call_000_2424
    ret

Call_000_24ea:
    push de
    push af
    push hl
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld a, $e4
    ldh [rBGP], a
    pop af
    ld c, a
    ld de, $8800

Call_000_24fa:
    call Call_000_31a0
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, vBGMap0
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_250c:
    ld b, $14

jr_000_250e:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_250e

    add hl, de
    dec c
    jr nz, jr_000_250c

    ld a, $81
    ldh [rLCDC], a
    call Call_000_2424
    pop hl
    call Call_000_23e9
    call Call_000_2424
    ret

    ret

Call_000_2527:
    ld bc, $0000
    call Call_000_2569
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR51], a
    ld [$d397], a
    ld a, $77
    ldh [rNR50], a
    ld hl, $d300
    ld b, 6
    ld a, $ff

.loop
    ld [hl], a
    ld de, $0017
    add hl, de
    ld [hl], a
    ld de, $0002
    add hl, de
    dec b
    jr nz, .loop
    xor a
    ld [$d3a3], a
    ret

    xor a
    ld [$d3a3], a
    ld a, [$d3a4]
    ld [$d397], a
    ret

    ld a, $04
    ld [$d3a3], a
    xor a
    ld [$d397], a
    ret

Call_000_2569:
    ld a, b
    ld [$d3a0], a
    ld a, c
    ld [$d3a1], a
    xor a
    ld [$d3a2], a
    ret


Call_000_2576:
    ld a, [$d39d]
    inc a
    ld b, a
    ld a, $01

jr_000_257d:
    dec b
    jr z, jr_000_2583

    add a
    jr jr_000_257d

jr_000_2583:
    ld b, a
    ld a, [$d3a2]
    or b
    ld [$d3a2], a
    ret


Call_000_258c:
    ld a, [$d3a2]
    ld hl, $d3a0
    and [hl]
    cp [hl]
    jr nz, jr_000_25c0

    ld hl, $d304
    ld a, [$d3a1]
    and $0f
    ld b, a
    ld a, [$d3a0]

jr_000_25a2:
    srl a
    ld [$d3a2], a
    jr nc, jr_000_25ae

    ld a, [hl]
    and $f0
    or b
    ld [hl], a

jr_000_25ae:
    ld a, l
    add $19
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d3a2]
    and a
    jr nz, jr_000_25a2

    xor a
    ld [$d3a0], a

jr_000_25c0:
    xor a
    ld [$d3a2], a
    ret


Call_000_25c5:
    call Call_000_25ce

Call_000_25c8:
    call Call_000_25ce

Call_000_25cb:
    call Call_000_25ce

Call_000_25ce:
    push bc
    push de
    push hl
    ld [$d39e], a
    ld l, a
    ld a, [MBC3SRamBank]
    push af
    ld a, $1e
    ld [MBC3RomBank], a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $4001
    add hl, de
    push hl
    pop de
    ld a, [de]
    inc de
    ld c, a
    ld b, $00
    ld hl, $d300
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_2613

    inc hl
    ld a, [hl-]
    ld b, $ee
    and $03
    jr z, jr_000_260c

    ld b, $dd
    cp $01
    jr z, jr_000_260c

    ld b, $bb
    cp $02
    jr z, jr_000_260c

    ld b, $77

jr_000_260c:
    ld a, [$d397]
    and b
    ld [$d397], a

jr_000_2613:
    xor a
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hl], a
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $ff
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de
    xor a
    ld [hl], a
    pop af
    ld [MBC3RomBank], a
    ld a, [$d39e]
    inc a
    pop hl
    pop de
    pop bc
    ret

Call_000_263a:
    ld a, [MBC3SRamBank]
    push af
    ld a, $1e
    ld [MBC3RomBank], a
    ld a, [$d3a3]
    ld [$d39d], a
    xor a
    ld [$d396], a
    ld hl, $d39c
    inc [hl]
    ld hl, $d300

Jump_000_2654:
    push hl
    ld de, $ffe6
    ld b, $19
.loop
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, .loop

    ldh a, [$ffe7]
    and $03
    ld [$d398], a
    ld b, a
    add a
    add a
    add b
    ld [$d39b], a
    inc b
    ld a, $88

jr_000_2671:
    rlca
    dec b
    jr nz, jr_000_2671

    ld [$d399], a
    ld [$d39a], a
    ldh a, [$ffe6]
    ld b, a
    ldh a, [$fffd]
    or b
    and a
    jp z, Jump_000_2701

    ldh a, [$fffd]
    and b
    cp $ff
    jr z, jr_000_26e3

    call Call_000_2a5f
    call Call_000_2ace
    ldh a, [$fff2]
    ld b, a
    ldh a, [$fff3]
    inc a
    cp b
    jr c, jr_000_269c

    ld a, b

jr_000_269c:
    ldh [$fff3], a
    ld hl, $ffeb
    ldh a, [$ffea]
    and $0f
    add [hl]
    cp $10

Call_000_26a8:
    jr c, jr_000_26af

    sub $10
    ld [hl], a
    jr jr_000_26cb

jr_000_26af:
    ld [hl], a
    call Call_000_2a20
    ldh a, [$fffc]
    and a
    jr z, jr_000_26bb

    dec a
    ldh [$fffc], a

jr_000_26bb:
    ld hl, $ffed
    dec [hl]
    jr nz, jr_000_26cb

    call Call_000_2576

Jump_000_26c4:
    ldh a, [$fffb]
    ldh [$fffc], a
    call Call_000_276c

jr_000_26cb:
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    or b
    ld [$d396], a
    pop hl
    push hl
    ld de, $ffe6

Call_000_26db:
    ld b, $19

jr_000_26dd:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_26dd

jr_000_26e3:
    pop hl
    ld de, $0019
    add hl, de
    ld a, [$d39d]
    inc a
    ld [$d39d], a
    cp $06
    jp c, Jump_000_2654

    ld a, [$d397]
    ldh [rNR51], a
    pop af
    ld [MBC3RomBank], a
    call Call_000_258c
    ret


Jump_000_2701:
    ldh a, [$ffe8]
    ld l, a
    ldh a, [$ffe9]
    ld h, a
    xor a
    ldh [$ffeb], a
    ld a, [hl+]
    and $0f
    ld d, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_2741

    ld a, [hl+]
    rrca
    rrca
    and $c0
    or d

jr_000_271b:
    ldh [$ffea], a
    ld a, [hl+]
    swap a
    ldh [$ffec], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_2747

    ld a, [hl+]
    ldh [$ffee], a

jr_000_272c:
    xor a
    ldh [$ffef], a
    ldh [$fff0], a
    ldh [$fff1], a
    ldh [$fff4], a
    ldh [$fffd], a
    dec a
    ldh [$fffa], a
    ld a, $02
    ldh [$ffe6], a
    jp Jump_000_26c4


jr_000_2741:
    ld a, [hl+]
    ldh [$fff2], a
    ld a, d
    jr jr_000_271b

jr_000_2747:
    xor a
    ldh [rNR30], a
    ld d, a
    ldh a, [$ffee]
    ld e, a
    cp $ff
    jr nz, jr_000_2756

    ld e, [hl]
    ld a, e
    ldh [$ffee], a

jr_000_2756:
    ld [$d3a5], a
    swap e
    ld hl, $64fa
    add hl, de
    ld de, rWave_0
    ld b, $10

jr_000_2764:
    ld a, [hli]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2764

    jr jr_000_272c

Call_000_276c:
Jump_000_276c:
    ldh a, [$ffe6]
    ld l, a
    ldh a, [$fffd]
    ld h, a
    add hl, hl
    ldh a, [$ffe8]
    ld e, a
    ldh a, [$ffe9]
    ld d, a
    add hl, de

Jump_000_277a:
jr_000_277a:
    ldh a, [$ffe6]
    add $01
    ldh [$ffe6], a
    ldh a, [$fffd]
    adc $00
    ldh [$fffd], a
    ld a, [hl+]
    cp $d0
    jr nc, jr_000_27b2

    cp $b0
    jr nc, jr_000_27f0

    cp $a0
    jp nc, Jump_000_282f

    jp Jump_000_2948


jr_000_2797:
    cp $fd
    jr nz, jr_000_27a6

    ldh a, [$ffe6]
    ldh [$fff9], a
    ldh a, [$fffd]
    ldh [$fffe], a

jr_000_27a3:
    inc hl
    jr jr_000_277a

jr_000_27a6:
    cp $ff
    jr nz, jr_000_27a3

    ldh [$ffe6], a
    ldh [$fffd], a
    call Call_000_2b7a
    ret


jr_000_27b2:
    cp $f0
    jr nc, jr_000_2797

    cp $e0
    jr nc, jr_000_27be

    and $0f
    jr jr_000_27c2

jr_000_27be:
    and $0f
    cpl
    inc a

jr_000_27c2:
    ld b, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_27d2

    ld a, b
    ldh [$fff4], a
    ld a, [hl]
    ldh [$fff5], a
    ldh [$fff6], a

jr_000_27d2:
    inc hl
    jr jr_000_277a

jr_000_27d5:
    and $0f
    ld b, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_27ed

    ldh a, [$ffec]
    and $0f
    jr nz, jr_000_27ed

    ld a, [hl]
    ldh [$fff2], a
    ld a, b
    swap a
    ldh [$fff1], a

jr_000_27ed:
    inc hl
    jr jr_000_277a

jr_000_27f0:
    cp $c0
    jr nc, jr_000_27d5

    and $0f
    jr z, jr_000_281b

    ld e, a
    ld a, [hl]
    and a
    jr nz, jr_000_280d

    ldh a, [$ffef]

Jump_000_27ff:
    dec a
    ldh [$ffef], a

Call_000_2802:
    jr z, jr_000_282c

    bit 7, a
    jr z, jr_000_281b

    ld a, e
    ldh [$ffef], a
    jr jr_000_281b

jr_000_280d:
    ldh a, [$fff0]
    dec a
    ldh [$fff0], a
    jr z, jr_000_282c

    bit 7, a
    jr z, jr_000_281b

    ld a, e
    ldh [$fff0], a

jr_000_281b:
    ld a, [hl]
    and a
    jr nz, jr_000_2821

    ldh a, [$fff9]

jr_000_2821:
    ldh [$ffe6], a
    jr nz, jr_000_2829

    ldh a, [$fffe]
    jr jr_000_282a

jr_000_2829:
    xor a

jr_000_282a:
    ldh [$fffd], a

jr_000_282c:
    jp Jump_000_276c


Jump_000_282f: ; something with sound I think
    cp $a0
    jr nz, jr_000_2849

    ld a, [hl+]
    swap a
    ldh [$ffec], a
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    jp nz, Jump_000_277a

    call Call_000_2a96
    jp Jump_000_277a


jr_000_2849:
    cp $a1
    jr nz, jr_000_2889

    ld a, [$d398]
    cp $02
    jr z, jr_000_285a

    ld a, [hl+]
    ldh [$ffee], a
    jp Jump_000_277a


jr_000_285a:
    xor a
    ldh [rNR30], a
    ld d, a
    ld a, [hl+]
    ld e, a
    ldh [$ffee], a
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    jr z, jr_000_286f

    jp Jump_000_277a


jr_000_286f:
    push hl
    ld a, e
    ld [$d3a5], a
    swap e
    ld hl, $64fa
    add hl, de
    ld de, rWave_0
    ld b, $10

jr_000_287f:
    ld a, [hli]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_287f

    pop hl
    jp Jump_000_277a


jr_000_2889:
    cp $a2
    jr nz, jr_000_28aa

    ld a, [$d398]
    cp $02
    jr z, jr_000_28a4

    ld a, [hl+]
    rrca
    rrca
    and $c0
    ld d, a
    ldh a, [$ffea]
    and $3f
    or d
    ldh [$ffea], a
    jp Jump_000_277a


jr_000_28a4:
    ld a, [hl+]
    ldh [$fff2], a
    jp Jump_000_277a


jr_000_28aa:
    cp $a3
    jr nz, jr_000_28d1

    ld a, [hl+]
    bit 7, a
    jr nz, jr_000_28cb

    ld b, a
    and $0f
    add a
    ldh [$fffb], a
    ldh [$fffc], a
    ld a, b
    and $70
    ld e, a
    ldh a, [$ffe7]
    and $0f
    or e
    or $80

jr_000_28c6:
    ldh [$ffe7], a
    jp Jump_000_277a


jr_000_28cb:
    ldh a, [$ffe7]
    and $0f
    jr jr_000_28c6

jr_000_28d1:
    cp $a5
    jr nz, jr_000_28e3

    ld a, [hl+]

Call_000_28d6:
    cp $01
    jr nz, jr_000_28de

    ldh a, [$fffa]
    swap a

jr_000_28de:
    ldh [$fffa], a
    jp Jump_000_277a


jr_000_28e3:
    cp $a6
    jr nz, jr_000_28ed

    ld a, [hl+]
    ldh [rNR50], a
    jp Jump_000_277a

jr_000_28ed:
    cp $a7
    jr nz, jr_000_28f7

    ld a, [hl]
    ldh [$ffed], a
    jp Jump_000_29ff

jr_000_28f7:
    cp $ae
    jr nz, jr_000_2909

    ld a, [hl+]
    and $10
    ld b, a
    ldh a, [$ffea]
    and $ef
    or b
    ldh [$ffea], a
    jp Jump_000_277a

jr_000_2909:
    cp $af
    jr nz, jr_000_291b

    ld a, [hl+]
    and $0f
    ld b, a
    ldh a, [$ffea]
    and $f0
    or b
    ldh [$ffea], a
    jp Jump_000_277a

jr_000_291b:
    inc hl
    jp Jump_000_277a


    nop
    ld bc, $1211
    inc d
    inc hl
    rlca
    dec d
    rla
    ld [hl-], a
    inc sp
    ld h, b
    ld h, c
    ld b, l
    ld d, e
    ld h, d

jr_000_292f:
    xor a
    ldh [$fff7], a
    ld a, $80
    ldh [$fff8], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_2941

    call Call_000_2b72
    ret

Call_000_2941:
jr_000_2941:
    call Call_000_2b8a
    xor a
    ldh [rNR30], a
    ret

Jump_000_2948:
    ld b, a
    ld a, [hl]
    ldh [$ffed], a
    ld a, [$d398]
    cp $03
    jr nz, jr_000_296f

    ld a, b
    cp $1f

Jump_000_2956:
    jr z, jr_000_292f

    cp $10
    jr nc, jr_000_296a

    ld hl, $291f
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld l, [hl]
    ld h, $00
    jr jr_000_29a2

jr_000_296a:
    ld l, a
    ld h, $00
    jr jr_000_29a2

jr_000_296f:
    ld a, b
    and $0f
    cp $0c
    jr nc, jr_000_292f

    add a
    ld e, a
    ldh a, [$ffea]
    and $10
    jr z, jr_000_2982

    ld a, e
    add $18
    ld e, a

jr_000_2982:
    ld d, $00
    ld hl, $2b95
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    swap a
    and $0f
    jr z, jr_000_299a

    ld b, a

jr_000_2993:
    srl h
    rr l
    dec b
    jr nz, jr_000_2993

jr_000_299a:
    ld a, $00
    sub l
    ld l, a
    ld a, $08
    sbc h
    ld h, a

jr_000_29a2:
    xor a
    ldh [$fff3], a
    call Call_000_2b8a
    ld a, [$d398]
    cp $02
    jr nz, jr_000_29b6

    call Call_000_2d45
    ld a, $80
    ldh [rNR30], a

jr_000_29b6:
    push hl
    call Call_000_2a88
    pop hl
    ld a, [$d398]
    and a
    ldh a, [$ffee]
    ld c, $10
    call z, Call_000_2aae
    ld a, l
    ld c, $13
    call Call_000_2aae
    ld a, l
    cp $02
    jr c, jr_000_29d9

    cp $fe
    jr c, jr_000_29db

    ld a, $fd
    jr jr_000_29db

jr_000_29d9:
    ld a, $02

jr_000_29db:
    ldh [$fff7], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_2a12

    cp $02
    jr nc, jr_000_29f3

    ldh a, [$ffea]
    and $c0
    or $3f
    ld c, $11
    call Call_000_2aae

jr_000_29f3:
    ld a, h
    and $07
    or $80

jr_000_29f8:
    ldh [$fff8], a
    ld c, $14
    call Call_000_2aae

Jump_000_29ff:
    ld a, [$d39a]
    ld b, a
    cpl
    ld c, a
    ldh a, [$fffa]
    and b
    ld b, a
    ld a, [$d397]
    and c
    or b
    ld [$d397], a
    ret


jr_000_2a12:
    xor a
    ldh [rNR31], a
    ldh a, [rNR52]
    and $04
    jr z, jr_000_29f3

    ld a, h
    and $07
    jr jr_000_29f8

Call_000_2a20:
    ld a, [$d398]
    cp $02
    ret z

    ldh a, [$fff4]
    and a
    ret z

    ld hl, $fff6
    dec [hl]
    ret nz

    ldh a, [$ffec]
    swap a
    cp $10
    ret nc

    and $0f
    ld b, a
    ldh a, [$fff5]
    ldh [$fff6], a
    ld hl, $fff4
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_2a53

    dec [hl]
    ld a, b
    cp $0f
    ret z

    ldh a, [$ffec]
    add $10
    ldh [$ffec], a
    jp Jump_000_2a96


jr_000_2a53:
    inc [hl]
    ld a, b
    and a
    ret z

    ldh a, [$ffec]
    sub $10
    ldh [$ffec], a
    jr jr_000_2a96

Call_000_2a5f:
    call Call_000_2b8a
    ld a, [$d398]
    cp $03
    ret z

    ldh a, [$fffc]
    and a
    ret nz

    ldh a, [$ffe7]
    bit 7, a
    ret z

    and $70
    ld b, a
    ld a, [$d39c]
    and $0f
    or b
    ld e, a
    ld d, $00
    ld hl, $2cc5
    add hl, de
    ldh a, [$fff7]
    add [hl]
    ld c, $13
    jr jr_000_2aae

Call_000_2a88:
    ld a, [$d398]
    cp $02
    jr z, jr_000_2ab7

    ldh a, [$fff1]
    and a
    jr nz, jr_000_2ae8

    ldh a, [$ffec]

Call_000_2a96:
Jump_000_2a96:
jr_000_2a96:
    ld b, a
    and $07
    jr nz, jr_000_2a9f

    ld a, b
    or $08
    ld b, a

jr_000_2a9f:
    ld a, [$d39b]
    add $12
    ld c, a
    ldh a, [c]
    cp b
    ret z

    ld a, b
    ldh [c], a
    ldh a, [$fff8]
    ld c, $14

Call_000_2aae:
jr_000_2aae:
    ld b, a
    ld a, [$d39b]
    add c
    ld c, a
    ld a, b
    ldh [c], a
    ret


jr_000_2ab7:
    ldh a, [$ffec]
    ld c, $12
    jr jr_000_2aae

jr_000_2abd:
    ld a, e
    srl a
    add $02
    swap a
    ld hl, $ffec
    cp [hl]
    ret c

    and $60
    ldh [rNR32], a
    ret


Call_000_2ace:
    call Call_000_2b8a
    ldh a, [$fff7]
    and a
    jr nz, jr_000_2add

    ldh a, [$fff8]
    and $7f
    jp z, Jump_000_2b72

jr_000_2add:
    ld a, [$d398]
    cp $02
    jr z, jr_000_2ae8

    ldh a, [$fff1]
    and a
    ret z

jr_000_2ae8:
    ldh a, [$fff2]
    and a
    ret z

    ld e, $00
    ld c, a
    ldh a, [$fff3]
    ld b, $04

jr_000_2af3:
    add a
    cp c
    jr c, jr_000_2af8

Jump_000_2af7:
    sub c

jr_000_2af8:
    ccf
    rl e
    dec b
    jr nz, jr_000_2af3

    ld a, [$d398]
    cp $02
    jr z, jr_000_2abd

    ldh a, [$fff1]
    or e
    ld e, a
    ld d, $00
    ld hl, $65ba
    add hl, de
    ldh a, [$ffec]
    swap a
    ld e, a
    ld a, [hl]
    ld h, a
    and $f0
    or e
    ld e, a
    bit 2, h
    jr nz, jr_000_2b3e

    inc b
    ld a, c
    swap a
    and $0f
    jr z, jr_000_2b3e

    ld b, a
    bit 3, e
    jr nz, jr_000_2b37

    sla b
    bit 2, e
    jr nz, jr_000_2b37

    sla b
    bit 1, e
    jr z, jr_000_2b3c

jr_000_2b37:
    ld a, b
    cp $08
    jr c, jr_000_2b3e

jr_000_2b3c:
    ld b, $00

jr_000_2b3e:
    bit 1, h
    jr z, jr_000_2b47

    ld a, b
    jr z, jr_000_2b47

    srl b

jr_000_2b47:
    ld a, h
    and $08
    or b
    ld b, a
    bit 0, h
    jr z, jr_000_2b59

    ld hl, $2bc5
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_2a96


jr_000_2b59:
    ld c, $12
    ld a, [$d39b]
    add c
    ld c, a
    ldh a, [c]
    and $08
    ld l, a
    ld a, h
    and $08
    cp l
    ret z

    ld hl, $2bc5

Jump_000_2b6c:
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_2a96

Call_000_2b72:
Jump_000_2b72:
    call Call_000_2b8a
    ld a, $00
    jp Jump_000_2a96

Call_000_2b7a:
    call Call_000_2b8a
    ld a, [$d399]
    cpl
    ld b, a
    ld a, [$d397]
    and b
    ld [$d397], a
    ret

Call_000_2b8a:
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    ret z

    pop af
    ret

Data_000_2b95:
    db $D4, $07, $64, $07, $F9, $06, $95, $06, $37, $06, $DD, $05, $89, $05, $3A, $05,
    db $F0, $04, $A8, $04, $65, $04, $26, $04, $9C, $07, $2E, $07, $C7, $06, $66, $06,
    db $0A, $06, $B3, $05, $61, $05, $15, $05, $CC, $04, $86, $04, $45, $04, $08, $04,
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $10, $10, $10, $10, $10, $10, $10,
    db $00, $00, $00, $00, $10, $10, $10, $10, $10, $10, $10, $10, $20, $20, $20, $20,
    db $00, $00, $00, $10, $10, $10, $10, $10, $20, $20, $20, $20, $20, $30, $30, $30,
    db $00, $00, $10, $10, $10, $10, $20, $20, $20, $20, $30, $30, $30, $30, $40, $40,
    db $00, $00, $10, $10, $10, $20, $20, $20, $30, $30, $30, $40, $40, $40, $50, $50,
    db $00, $00, $10, $10, $20, $20, $20, $30, $30, $40, $40, $40, $50, $50, $60, $60,
    db $00, $00, $10, $10, $20, $20, $30, $30, $40, $40, $50, $50, $60, $60, $70, $70,
    db $00, $10, $10, $20, $20, $30, $30, $40, $40, $50, $50, $60, $60, $70, $70, $80,
    db $00, $10, $10, $20, $20, $30, $40, $40, $50, $50, $60, $70, $70, $80, $80, $90,
    db $00, $10, $10, $20, $30, $30, $40, $50, $50, $60, $70, $70, $80, $90, $90, $A0,
    db $00, $10, $10, $20, $30, $40, $40, $50, $60, $70, $70, $80, $90, $A0, $A0, $B0,
    db $00, $10, $20, $20, $30, $40, $50, $60, $60, $70, $80, $90, $A0, $A0, $B0, $C0,
    db $00, $10, $20, $30, $30, $40, $50, $60, $70, $80, $90, $A0, $A0, $B0, $C0, $D0,
    db $00, $10, $20, $30, $40, $50, $60, $70, $70, $80, $90, $A0, $B0, $C0, $D0, $E0,
    db $00, $10, $20, $30, $40, $50, $60, $70, $80, $90, $A0, $B0, $C0, $D0, $E0, $F0,
    db $00, $00, $01, $01, $00, $00, $FF, $FF, $00, $00, $01, $01, $00, $00, $FF, $FF,
    db $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00, $FF, $FF, $FF, $FF,
    db $00, $01, $02, $01, $00, $FF, $FE, $FF, $00, $01, $02, $01, $00, $FF, $FE, $FF,
    db $00, $00, $01, $01, $02, $02, $01, $01, $00, $00, $FF, $FF, $FE, $FE, $FF, $FF,
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    db $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE,
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01,
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, 

Call_000_2d45:
    ld a, [$d3a5]
    ld b, a
    ldh a, [$ffee]
    cp b
    ret z

    ld [$d3a5], a
    ld e, a
    swap e

Jump_000_2d53:
    xor a
    ldh [rNR30], a
    ld d, a
    ld hl, $64fa
    add hl, de
    ld de, rWave_0
    ld b, $10

jr_000_2d60:
    ld a, [hli]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2d60

    ret


Call_000_2d67:
    ld hl, $c600
    ld b, $00

jr_000_2d6c:
    ld a, [hl]
    or a
    jr z, jr_000_2d98

    ld d, h
    ld e, l
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$cb59], a
    ld d, h
    ld e, l
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$cb4b], a
    push bc
    push hl
    call Call_000_2da4
    pop hl
    push hl
    call Call_000_2df2
    pop hl
    pop bc

jr_000_2d98:
    inc b
    ld a, b
    cp $18
    ret nc

    ld de, $0020
    add hl, de
    jr jr_000_2d6c
    ret

Call_000_2da4:
    inc hl
    ld a, [hl]
    rst $08

Data_000_2da7:
    db $01, $40, $08, $4B, $79, $12, $82, $52, $08, $75, $53, $08, $5E, $55, $08, $38
    db $5A, $08, $ED, $78, $12, $13, $64, $08, $13, $64, $08, $6E, $67, $05, $37, $5F
    db $05, $8B, $61, $05, $13, $64, $08, $25, $55, $08, $13, $64, $08, $38, $55, $08
    db $21, $55, $08, $22, $55, $08, $23, $55, $08, $24, $55, $08, $13, $64, $08, $13
    db $64, $08, $13, $64, $08, $13, $64, $08, $37, $5F, $05

Call_000_2df2:
    ld a, [MBC3SRamBank]
    push af
    push hl
    ld a, [hl+]
    and $01
    jp z, Jump_000_2f4e

    ld a, [hli]
    ldh [$ffa4], a
    ld a, [hli]
    ldh [$ffa5], a
    ld a, [hli]
    ldh [$ffa6], a
    ld a, [hli]
    ldh [$ffa7], a
    ld a, [hli]
    ldh [$ffa8], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hli]
    ldh [$ffa9], a
    ld a, [hli]
    ldh [$ffaa], a
    ldh a, [$ffa4]
    cp $02
    jr z, jr_000_2e22

    cp $03
    jr z, jr_000_2e22

    jr jr_000_2e31

jr_000_2e22:
    pop hl
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_000_2f4e

jr_000_2e31:
    ldh a, [$ffa4]
    cp $06
    jr z, jr_000_2e51

    cp $0b
    jr z, jr_000_2e5d

    cp $0a
    jr z, jr_000_2e59

    cp $09
    jr z, jr_000_2e55

    cp $0c
    jr z, jr_000_2e5d

    cp $18
    jr z, jr_000_2e4d

    jr jr_000_2e5f

jr_000_2e4d:
    ld a, $05
    jr jr_000_2e5f

jr_000_2e51:
    ld a, $04
    jr jr_000_2e5f

jr_000_2e55:
    ld a, $01
    jr jr_000_2e5f

jr_000_2e59:
    ld a, $02
    jr jr_000_2e5f

jr_000_2e5d:
    ld a, $03

jr_000_2e5f:
    ld [$cb1c], a
    ld a, [$cb59]
    or a
    jr nz, jr_000_2e6a

    jr jr_000_2eb3

jr_000_2e6a:
    ldh a, [$ffa4]
    cp $06
    jr z, jr_000_2e8a

    cp $0b
    jr z, jr_000_2e96

    cp $0a
    jr z, jr_000_2e92

    cp $09
    jr z, jr_000_2e8e

    cp $0c
    jr z, jr_000_2e96

    cp $18
    jr z, jr_000_2e86

    jr jr_000_2e98

jr_000_2e86:
    ld a, $05
    jr jr_000_2e98

jr_000_2e8a:
    ld a, $04
    jr jr_000_2e98

jr_000_2e8e:
    ld a, $01
    jr jr_000_2e98

jr_000_2e92:
    ld a, $02
    jr jr_000_2e98

jr_000_2e96:
    ld a, $03

jr_000_2e98:
    ld hl, $cb14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_000_2f3f

    ld a, [$cb14]
    or a
    jr z, jr_000_2eb3

    ldh a, [$ffa6]
    cp $ff
    jp z, Jump_000_2f4e

jr_000_2eb3:
    ldh a, [$ffa8]
    or a

Jump_000_2eb6:
    jp z, Jump_000_2ebf

    dec a
    ldh [$ffa8], a
    jp Jump_000_2f31


Jump_000_2ebf:
    ld a, [$cb59]
    or a
    jr z, jr_000_2ec8

    ld a, $01
    ld [hl], a

jr_000_2ec8:
    ld hl, $2f54
    ldh a, [$ffa4]
    ld b, a
    sla b
    add b

Jump_000_2ed1:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld [MBC3RomBank], a
    ld l, c
    ld h, b
    ldh a, [$ffa5]
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Call_000_2ef5:
    ld l, c
    ld h, b
    ld d, h
    ld e, l
    ldh a, [$ffa6]
    cp $ff
    jr z, jr_000_2f16

    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2f16

    cp $fe
    jp z, Jump_000_2f4e

    jr jr_000_2f26

Jump_000_2f16:
jr_000_2f16:
    ld h, d
    ld l, e
    ld a, $00
    ldh [$ffa6], a
    ld a, [hl]
    ldh [$ffa8], a
    inc hl
    ld a, [hl]
    ldh [$ffa7], a
    jp Jump_000_2f31


jr_000_2f26:
    ldh [$ffa8], a
    inc hl
    ld a, [hl]
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    ldh [$ffa6], a

Jump_000_2f31:
    pop hl
    push hl
    inc hl
    inc hl
    inc hl
    ldh a, [$ffa6]
    ld [hl+], a
    ldh a, [$ffa7]
    ld [hl+], a
    ldh a, [$ffa8]
    ld [hl], a

Jump_000_2f3f:
    ldh a, [$ffa7]
    ld e, a
    ldh a, [$ffa4]
    ld d, a
    ldh a, [$ffa9]
    ld c, a
    ldh a, [$ffaa]
    ld b, a
    call Call_000_2f9f

Jump_000_2f4e:
    pop hl
    pop af
    ld [MBC3RomBank], a
    ret


    ld a, d
    ld e, e
    inc de
    ei
    ld d, d
    inc d
    ei
    ld d, d
    inc d
    ei
    ld d, d
    inc d
    sbc c
    ld a, c
    dec bc
    ld [de], a
    halt
    rla
    add h
    ld h, e

Call_000_2f68:
    rrca
    sub d
    ld d, a
    db $10
    ld c, c
    ld a, [hl]
    ld a, [bc]
    daa
    ld [hl], h
    inc de
    ld [de], a
    ld h, h
    rla
    ld [bc], a
    ld [hl], b
    inc de
    db $fc
    ld b, d
    ld a, [bc]
    sbc [hl]
    ld c, a
    dec b
    ld h, b
    ld [hl], c
    inc d
    ld b, c
    ld l, d
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    ld [hl], a
    ld h, [hl]
    rla

Call_000_2f9f:
    xor a
    ldh [$ff9b], a
    ld hl, $310a
    ld a, [$c0bb]
    or a
    jr nz, jr_000_2fae

    ld hl, $3155

jr_000_2fae:
    ld a, l
    ldh [$ffac], a
    ld a, h
    ldh [$ffad], a
    ld a, d
    or a
    jr nz, jr_000_2fcc

    ld a, [sPlayerGender]
    or a
    jp nz, Jump_000_3063

    ldh a, [$ffa5]
    cp $80
    jr c, jr_000_2fcc

    sub $80
    ldh [$ffa5], a
    jp Jump_000_3017


jr_000_2fcc:
    ldh a, [$ffac]
    ld l, a
    ldh a, [$ffad]
    ld h, a
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, d
    ld [MBC3RomBank], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a

Jump_000_3000:
    ld a, [hl+]
    ld [$cb60], a
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20e1
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_3017:
    ldh a, [$ffac]
    ld l, a
    ldh a, [$ffad]
    ld h, a
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, d
    inc a
    ld [MBC3RomBank], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [$cb60], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20e1
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_3063:
    ldh a, [$ffa5]
    cp $80
    jr c, jr_000_3070

    sub $80
    ldh [$ffa5], a
    jp Jump_000_30bd

jr_000_3070:
    ldh a, [$ffac]
    ld l, a
    ldh a, [$ffad]
    ld h, a
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, d
    add $fa
    ld [MBC3RomBank], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [$cb60], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20e1
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_30bd:
    ldh a, [$ffac]
    ld l, a
    ldh a, [$ffad]
    ld h, a
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, d
    add $fb
    ld [MBC3RomBank], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [$cb60], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20e1
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Data_000_310a:
    db $01, $40, $12, $01, $40, $14, $01, $40, $14, $01, $40, $14, $ED, $72, $0B, $CE,
    db $6B, $17, $FF, $62, $0F, $D5, $56, $10, $FA, $7A, $0A, $9F, $70, $13, $01, $60,
    db $17, $14, $60, $13, $01, $40, $0A, $65, $48, $05, $59, $6A, $14, $2E, $68, $14,
    db $87, $55, $14, $87, $55, $14, $87, $55, $14, $87, $55, $14, $87, $64, $14, $87,
    db $64, $14, $87, $64, $14, $87, $64, $14, $8D, $64, $17, $01, $40, $32, $01, $40,
    db $34, $01, $40, $34, $01, $40, $34, $F3, $73, $2B, $E6, $6B, $37, $00, $63, $2F,
    db $40, $56, $30, $30, $7B, $2A, $9F, $70, $33, $01, $60, $37, $14, $60, $33, $01,
    db $40, $2A, $CE, $47, $25, $59, $6A, $34, $2E, $68, $34, $87, $55, $34, $87, $55,
    db $34, $87, $55, $34, $87, $55, $34, $87, $64, $34, $87, $64, $34, $87, $64, $34,
    db $87, $64, $34, $8D, $64, $37, 

; Something very complicated...
; `hl` points to some data
; `de` looks like pointing to some VRAM memory
; `c` is the bank to load the data from
Call_000_31a0:
    ld a, [MBC3SRamBank]
    push af
    ld a, c
    ld [MBC3RomBank], a
    ld a, d
    ldh [$ffb9], a
    ld a, e
    ldh [$ffb8], a
    ld a, [hl+]
    ldh [$ffba], a
    add e
    ldh [$ffbc], a
    ld a, [hl+]
    ldh [$ffbb], a
    adc d
    ldh [$ffbd], a
    ld c, $00

jr_000_31bc:
    ld a, c
    and a
    jr nz, jr_000_31c4

    ld a, [hli]
    ld b, a
    ld c, $08

jr_000_31c4:
    dec c
    srl b
    push bc
    jr nc, jr_000_31cf

    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_3224

jr_000_31cf:
    ld a, [hl+]
    ld c, a
    and $0f
    inc a
    inc a
    inc a
    ldh [$ffbe], a
    ld a, [hl+]
    ld b, a
    push hl
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ld a, e
    sub c
    ld c, a
    ld a, d
    sbc b
    ld b, a
    ldh a, [$ffb9]
    cp b
    jr c, jr_000_3218
    jr nz, jr_000_31ff
    ldh a, [$ffb8]
    cp c
    jr c, jr_000_3218
    jr z, jr_000_3218

jr_000_31ff:
    ld a, c
    xor $ff
    inc a
    ld b, a
    ldh a, [$ffbe]
    ld c, a
    xor a

jr_000_3208:
    ld [de], a
    inc de
    dec c
    jr z, jr_000_3223

    dec b
    jr nz, jr_000_3208

    ld hl, $ffb8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_321d

jr_000_3218:
    ld h, b
    ld l, c
    ldh a, [$ffbe]
    ld c, a

jr_000_321d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_321d

jr_000_3223:
    pop hl

jr_000_3224:
    ldh a, [$ffbd]
    ld b, a
    ld a, d
    cp b
    jr c, jr_000_3234

    jr nz, jr_000_3237

    ldh a, [$ffbc]
    ld c, a
    ld a, e
    cp c
    jr nc, jr_000_3237

jr_000_3234:
    pop bc
    jr jr_000_31bc

jr_000_3237:
    pop bc
    pop af
    ld [MBC3RomBank], a
    ret

; Clear the 160‑byte Shadow OAM buffer at wShadowOAM
ClearShadowOAMBuffer:
    ld b, $a0          ; 160 entries
    ld a, $00          ; value to write
    ld hl, wShadowOAM
.loop:
    ld [hli], a        ; *HL++ = 0
    dec b
    jr nz, .loop
    ret

    ld b, a
    ld de, $5000

jr_000_324d:
    ld a, [$0000]
    ld [$0000], a
    dec de
    ld a, d
    or e
    jr nz, jr_000_324d

    dec b
    jr nz, jr_000_324d

    ret

Call_000_325c:
    ld a, h
    ld [wTempPlayerMoney+1], a
    ld a, l
    ld [wTempPlayerMoney], a
    xor a
    ld [wTempPlayerMoney+2], a

; Convert a 24-bit money value at wTempPlayerMoney into 5 decimal digits
; placed at $CCCD–$CCD1 (most significant first).
LoadDecimalMoneyTileData:
    xor a
    ld hl, wDecimalPlayerMoneyTileID
    ld [hli], a
    ld [hli], a
    ld [hli], a
    ld [hli], a
    ld [hl], a
    ld hl, wTempPlayerMoney
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld de, wDecimalPlayerMoneyTileID
    ld a, [wTempPlayerMoney+2]
    or a
    jr z, .highByteDone

    ld bc, $63c0
    add hl, bc
    ld a, [de]
    add $04
    ld [de], a

.highByteDone
    ld bc, -10000 ; $d8f0
    ld a, [de]

; Subtracting 10000 and counting how many times it takes before we hit a carry.
; This tells us what digit is in the 10000s place
.subtractLoop10000
    inc a
    add hl, bc
    jr c, .subtractLoop10000

; Undo the last operation since we fellthrough
    ld bc, 10000
    add hl, bc
    dec a
    ld [de], a
    ld bc, -1000
    inc de
    ld a, [de]

.subtractLoop1000
    inc a
    add hl, bc
    jr c, .subtractLoop1000

    ld bc, 1000
    add hl, bc
    dec a
    ld [de], a
    ld bc, -100
    inc de
    ld a, [de]

.subtractLoop100
    inc a
    add hl, bc
    jr c, .subtractLoop100

    ld bc, 100
    add hl, bc
    dec a
    ld [de], a
    ld bc, -10
    inc de
    ld a, [de]

.subtractLoop10
    inc a
    add hl, bc
    jr c, .subtractLoop10

    ld bc, 10
    add hl, bc
    dec a
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, DigitList
    ld de, wDecimalPlayerMoneyTileID
    ld c, $04

jr_000_32ce:
    ld a, [de]
    or a
    jr nz, .jr_000_32dd

    push af
    ld a, $af
    ld [de], a
    pop af
    inc de
    dec c
    jr z, .loadDigit
    jr jr_000_32ce

.jr_000_32dd
    ld a, [de]
    push af
    push hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    pop hl
    pop af
    inc de
    dec c
    jr z, .loadDigit
    jr .jr_000_32dd

.loadDigit
    ld a, [de] ; de holds the number
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl] ; hl points to the specific digit
    ld [de], a
    ret

; The routine above loads this, don't know what it is for...
DigitList: ; 00x32fa
    db "0123456789"

Call_000_3304:
    ld [wTempPlayerMoney], a
    xor a
    ld [wTempPlayerMoney+1], a
    ld [wTempPlayerMoney+2], a
    jp LoadDecimalMoneyTileData

; STAT interrupt: lookup a 3‑byte entry at 0x3345 + 3*[$C0A7],
; switch to that ROM bank, and jump to the handler
STATInterrupt_Dispatch: ; 0x3311
    push af
    push bc
    push de
    push hl
    ld a, [wSTAT_HandlerIndex]
    ld e, a
    add a
    add e
    ld e, a ; 3*a
    ld d, $00 
    ld hl, STAT_HandlerIndex
    add hl, de
    ld a, [hli]
    ld e, a
    ld d, [hl]
    inc hl
    ld a, [MBC3SRamBank]
    push af
    ld a, [hl]
    ld [MBC3RomBank], a
    ld l, e
    ld h, d
    call STAT_HandlerJump
    pop af
    ld [MBC3RomBank], a
    pop hl
    pop de
    ldh a, [rLY]
    ld c, a
.wait
    ldh a, [rLY]
    cp c
    jr z, .wait
    pop bc
    pop af
    reti

STAT_HandlerJump: ; 0x3344
    jp hl

STAT_HandlerIndex: ; 0x3345
    db $C3, $33, $00
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $30, $47, $06
    db $C3, $33, $00
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $55, $78, $1F
    db $C3, $33, $00
    db $C3, $33, $00
    db $55, $78, $1F
    db $5C, $43, $1D
    db $75, $46, $1D
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $A6, $4E, $06
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $C3, $33, $00
    db $55, $78, $1F
    db $C3, $33, $00
    db $55, $78, $1F

    ret

Call_000_33c4:
    ldh a, [$ff8a]
    ld [$cd25], a
    ldh a, [$ff8b]
    or a
    ld hl, $cd26
    jr nz, jr_000_33f2

    ld a, [hl]
    or a
    jr z, jr_000_33db

    dec [hl]
    xor a
    ld [$cd24], a
    ret


jr_000_33db:
    xor a
    ld [$cd24], a

Jump_000_33df:
    ld a, [$cd27]
    or a
    jr nz, jr_000_33ed

    ld a, [$cd25]
    ld [$cd24], a
    ld a, $07

jr_000_33ed:
    dec a
    ld [$cd27], a
    ret


jr_000_33f2:
    ld [$cd24], a
    ld a, $12
    ld [hl], a
    ret


Jump_000_33f9:
    push af
    ld a, $02
    ldh [rTAC], a
    ld a, $eb

Jump_000_3400:
    ldh [rTIMA], a
    ld a, $81
    ldh [rSC], a
    pop af
    reti


Jump_000_3408:
    push af
    push bc
    push de
    push hl
    ld a, [MBC3SRamBank]
    push af
    ld a, $1f
    ld [MBC3RomBank], a
    call $67a7
    pop af
    ld [MBC3RomBank], a
    pop hl
    pop de
    pop bc
    pop af
    reti

Data_000_3421:
    db $01, $45, $07, $2C, $45, $07, $57, $45, $07, $57, $45, $07, $AD, $45, $07, $D8,
    db $45, $07, $03, $46, $07, $03, $46, $07, $2E, $46, $07, $84, $46, $07, $30, $47,
    db $07, $86, $47, $07, $D2, $47, $07, $28, $48, $07, $A9, $48, $07, $FF, $48, $07,
    db $55, $49, $07, $D6, $49, $07, $2C, $4A, $07, $82, $4A, $07, $D8, $4A, $07, $D8,
    db $4A, $07, $DA, $4B, $07, $5B, $4C, $07, $B1, $4C, $07, $07, $4D, $07, $07, $4D,
    db $07, $32, $4D, $07, $5D, $4D, $07, $88, $4D, $07, $B3, $4D, $07, $B5, $4E, $07,
    db $61, $4F, $07, $B7, $4F, $07, $B9, $50, $07, $E6, $51, $07, $67, $52, $07, $13,
    db $53, $07, $94, $53, $07, $C1, $54, $07, $C3, $55, $07, $19, $56, $07, $F2, $57,
    db $07, $9E, $58, $07, $23, $5B, $07, $23, $5B, $07, $50, $5C, $07, $54, $5E, $07,
    db $58, $60, $07, $85, $61, $07, $DB, $61, $07, $89, $63, $07, $0A, $64, $07, $E1,
    db $64, $07, $37, $65, $07, $64, $66, $07, $10, $67, $07, $91, $67, $07, $BE, $68,
    db $07, $6A, $69, $07, $EB, $69, $07, $EF, $6B, $07, $1A, $6C, $07, $70, $6C, $07,
    db $9B, $6C, $07, $1C, $6D, $07, $47, $6D, $07, $72, $6D, $07, $59, $4B, $07, $A1,
    db $6F, $07, $22, $70, $07, $AF, $4B, $07, $45, $6C, $07, $C6, $6C, $07, $F1, $6C,
    db $07, $9D, $6D, $07, $C8, $6D, $07, $F3, $6D, $07, $1E, $6E, $07, $49, $6E, $07,
    db $74, $6E, $07, $9F, $6E, $07, $CA, $6E, $07, $F4, $58, $07, $D1, $75, $07, $D1,
    db $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75,
    db $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07,
    db $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1,
    db $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75,
    db $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07,
    db $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1,
    db $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75,
    db $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07,
    db $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1,
    db $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75,
    db $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07,
    db $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1,
    db $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75,
    db $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07, $D1, $75, $07,
    db $23, $43, $0A, $79, $43, $0A, $CF, $43, $0A, $25, $44, $0A, $7B, $44, $0A, $D1,
    db $44, $0A, $27, $45, $0A, $52, $45, $0A, $A8, $45, $0A, $FE, $45, $0A, $54, $46,
    db $0A, $7F, $46, $0A, $D5, $46, $0A, $2B, $47, $0A, $81, $47, $0A, $D7, $47, $0A,
    db $2D, $48, $0A, $83, $48, $0A, $DB, $49, $0A, $31, $4A, $0A, $B2, $4A, $0A, $08,
    db $4B, $0A, $5E, $4B, $0A, $B4, $4B, $0A, $0A, $4C, $0A, $8B, $4C, $0A, $E1, $4C,
    db $0A, $37, $4D, $0A, $8D, $4D, $0A, $B8, $4D, $0A, $04, $4E, $0A, $2F, $4E, $0A,
    db $8D, $6D, $0C, $E7, $6F, $0C, $16, $72, $0C, $6C, $72, $0C, $ED, $72, $0C, $70,
    db $74, $0C, $72, $75, $0C, $22, $78, $0C, $CE, $78, $0C, $0A, $51, $0A, $A5, $79,
    db $0C, $26, $7A, $0C, $7C, $7A, $0C, $D2, $7A, $0C, $FD, $7A, $0C, $53, $7B, $0C,
    db $A9, $7B, $0C, $2A, $7C, $0C, $80, $7C, $0C, $B4, $50, $0A, $9B, $57, $10, $1C,
    db $58, $10, $72, $58, $10, $F3, $58, $10, $49, $59, $10, $9F, $59, $10, $F5, $59,
    db $10, $4B, $5A, $10, $A1, $5A, $10, $22, $5B, $10, $A3, $5B, $10, $24, $5C, $10,
    db $7A, $5C, $10, $D0, $5C, $10, $26, $5D, $10, $7C, $5D, $10, $D2, $5D, $10, $28,
    db $5E, $10, $D4, $5E, $10, $82, $60, $10, $AD, $60, $10, $D8, $60, $10, $03, $61,
    db $10, $2E, $61, $10, $5E, $50, $0A, $89, $50, $0A, $3B, $54, $0A, $66, $54, $0A,
    db $59, $61, $10, 

Call_000_36f4:
    ld a, [$cb14]
    or a
    ret nz

    ld a, [$cb15]
    or a
    ret nz

    ld a, [$cb16]
    or a
    ret nz

    ld a, [$cb17]
    or a
    ret nz

    ld a, [$cb18]
    or a
    ret nz

    ld a, [$cb19]
    or a
    ret nz

    call Call_000_38fb
    ld a, [wTextID]
    cp $ff
    jp z, Jump_000_383d

    ld a, [wTextID]
    cp $3c
    call z, Call_000_38c1
    ld a, [wTextID]
    ld [$cb4d], a
    ld l, a
    ld h, $00
    add hl, hl
    add l

jr_000_3730:
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $3421
    add hl, de
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    inc hl
    inc hl
    ld a, [hld]
    ld [MBC3RomBank], a
    dec hl
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [$cb54]
    ld d, a
    ld a, [$cb53]
    ld e, a
    add hl, de
    ld a, [$cb55]
    or a
    call z, Call_000_3913
    ld a, [hl]
    cp $ff
    jr z, jr_000_37d7

    cp $fe
    jp z, Jump_000_3804

    cp $ef
    jr z, jr_000_3785

    cp $e9
    jr z, jr_000_3785

    cp $a0
    jr c, jr_000_3785

    push bc
    ld a, [hl]
    ld b, a
    push hl
    push af
    ld l, $39
    ld h, $77
    ld a, $17
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, c
    ld l, a
    ld a, b
    ld h, a
    pop bc

jr_000_3785:
    ld a, [hl]
    cp $ef
    jr z, jr_000_37c4

    ld c, a
    ld a, [$cb55]
    or $80
    ld e, a
    push af
    ld hl, $4001
    ld a, $11
    ld d, a
    call BankedSyncCopyTileToVRAM
    pop af
    ld b, a
    ld [$cb63], a
    ld a, $ff
    ld [$cb64], a
    ld de, $cb63
    ld a, b
    and $10
    sla a
    sla a
    ld hl, vBGMap1 + $22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0a93

jr_000_37c4:
    ld hl, $cb53
    ld bc, $0001
    call AddBCtoWordAtHL
    ld hl, $cb55
    inc [hl]
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

jr_000_37d7:
    ld a, [wTextID]
    cp $04
    jr nz, jr_000_37e1
    call Call_000_3e1a

jr_000_37e1:
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_3804:
    ld a, [$cb69]
    or a
    jr z, jr_000_3813

    call Call_000_396d
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

jr_000_3813:
    ldh a, [$ff8b]
    and $01
    jr z, jr_000_3837

    call ClearOldTextOnTextBox
    ld hl, $cb53
    ld bc, $0001
    call AddBCtoWordAtHL
    xor a
    ld [$cb55], a
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL

jr_000_3837:
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret

Jump_000_383d:
    ld a, [$cb56]
    or a
    ret z

    ld a, [$cb78]
    or a
    ret nz

    ld a, [$cb4d]
    cp $ff
    ret z

    ldh a, [$ff8b]
    and $02
    jr nz, jr_000_3854
    ret

jr_000_3854:
    ld a, [$cb4d]
    cp $00
    jr z, jr_000_3871

    ld a, [$cb4d]
    cp $01
    jr z, jr_000_387f

    ld a, [$cb4d]
    cp $3c
    jr z, jr_000_389b

    ld a, [$cb4d]
    cp $03
    jr z, jr_000_389b
    ret

jr_000_3871:
    call Call_000_3f26
    ld a, $ff
    ld [$cb4d], a
    ld a, $51
    call Call_000_25cb
    ret

Call_000_387f:
jr_000_387f:
    call Call_000_3f26
    xor a
    call Call_000_3f52
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    ld a, $51
    call Call_000_25cb
    ret

jr_000_389b:
    ld a, $01
    call Call_000_3f52
    xor a
    ld [$cb58], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    xor a
    ld [$cb5f], a
    ld a, $01
    ld [$cb57], a
    ld a, [$cbea]
    ld [$b906], a
    ld a, $51
    call Call_000_25cb
    ret

Call_000_38c1:
    ld a, [$cb55]
    cp $20
    ret nz

    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $ff
    ld [wTextID], a
    ld a, $01
    call Call_000_3f52
    xor a
    ld [$cb58], a
    ld [$cb55], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    xor a
    ld [$cb5f], a
    ld a, $01
    ld [$cb57], a
    pop hl
    ld a, $51
    call Call_000_25cb
    ret

Call_000_38fb:
    ld a, [$cbeb]
    or a
    ret z

    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$cbeb]
    dec a
    ld [$cbeb], a
    or a
    ret nz

    call Call_000_3f26
    ret

Call_000_3913:
    ld a, [$cb53]
    add $0a
    ld [$cb53], a
    ld a, [$cb54]
    adc $00
    ld [$cb54], a
    ld a, [hl+]
    ld [$cb69], a
    ld a, [hl+]
    ld [$cb6a], a
    ld a, [hl+]
    ld [$cb6b], a
    ld a, [hl+]
    ld [$cb6c], a
    ld a, [hl+]
    ld [$cb6d], a
    inc hl
    ld a, [hl+]
    ld [$cb6e], a
    ld a, [hl+]
    ld [$cb6f], a
    inc hl
    inc hl
    xor a
    ld [$cb72], a
    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ret

Call_000_396d:
    ld a, [$cb72]
    cp $00
    jr z, jr_000_39a9

    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $20
    jr z, jr_000_39dd
    call Call_000_3fae
    xor a
    ld [$cb72], a
    jr jr_000_39dd

jr_000_39a9:
    ld a, [$cb6c]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6d]
    ld de, vBGMap1 + $22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $10
    jr z, jr_000_39dd

    ld a, $01
    ld [$cb72], a
    call Call_000_3fae

jr_000_39dd:
    ldh a, [$ff8b]
    and $01
    ret z

    call Call_000_3fa2
    ld hl, $cb6a
    ld a, [$cb72]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_000_3a09

    ld c, $2b
    call Multiply8Bit
    ld a, l
    ld [$cb53], a
    ld a, h
    ld [$cb54], a
    call ClearOldTextOnTextBox
    xor a
    ld [$cb55], a

Call_000_3a09:
jr_000_3a09:
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [MBC3SRamBank]
    call BankSwitchCallHL
    ret

ClearOldTextOnTextBox:
    ld a, [$cb5c]
    ld c, a
    ld hl, vBGMap1 + $22
    ld b, 4
.loop
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    dec b
    jr nz, .loop

    ld hl, vBGMap1 + $62
    ld b, 4
.loop2
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld [hli], a
    dec b
    jr nz, .loop2

    ld hl, vBGMap1 + $32
    call SyncToBlankPeriod
    ld a, c
    ld [hl], a
    ld hl, vBGMap1 + $50
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ld hl, vBGMap1 + $72
    call SyncToBlankPeriod
    ld a, c
    ld [hli], a
    ret

Data_000_3a67:
    db $22, $9c, $2c, $9c, $62, $9c, $6c, $9c

Call_000_3a6f:
    ld a, [$cb57]
    cp $01
    jp z, Jump_000_3b88

    cp $02
    jp z, Jump_000_3aed

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3ab9

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3acf

    cp $10
    jr z, jr_000_3ade

    ld a, [$b906]
    cp $00
    jr z, jr_000_3aa6

    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c6d], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c62], a
    ret

jr_000_3aa6:
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c62], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c6d], a
    ret

jr_000_3ab9:
    call Call_000_3efc
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    call Call_000_3fa2
    ret

jr_000_3acf:
    ld a, [$b906]
    cp $01
    ret nz

    ld a, $00
    ld [$b906], a
    call Call_000_3fae
    ret

jr_000_3ade:
    ld a, [$b906]
    cp $00
    ret nz

Jump_000_3ae4:
    ld a, $01
    ld [$b906], a
    call Call_000_3fae
    ret


Jump_000_3aed:
    ret


    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3b2c

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3b6a

    cp $10
    jp z, Jump_000_3b79

    ld a, [$b905]
    cp $00
    jr z, jr_000_3b19

    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c6d], a
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_3b19:
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [$9c62], a
    call SyncToBlankPeriod
    ld a, [$cb5c]

Call_000_3b28:
    ld [$9c6d], a
    ret


jr_000_3b2c:
    ld a, [$b905]
    or a
    jr nz, jr_000_3b54

Call_000_3b32:
    xor a
    ld [$cb56], a
    ld [$cb57], a
    call Call_000_3efc
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    call Call_000_3fa2
    ret


jr_000_3b54:
    call Call_000_3efc
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    call Call_000_3fa2
    ret


jr_000_3b6a:
    ld a, [$b905]
    cp $01
    ret nz

    ld a, $00
    ld [$b905], a
    call Call_000_3fae

Jump_000_3b78:
    ret


Jump_000_3b79:
    ld a, [$b905]
    cp $00
    ret nz

    ld a, $01
    ld [$b905], a
    call Call_000_3fae
    ret


Jump_000_3b88:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_000_3c10

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3bc2

    ld hl, $3a67
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e
    call SyncToBlankPeriod
    ld a, [$cb5d]
    ld [hl], a
    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3bca

    cp $10
    jr z, jr_000_3bdb

    cp $40
    jr z, jr_000_3bec

    cp $80
    jr z, jr_000_3bfe

    ret


jr_000_3bc2:
    ld hl, $cb57
    inc [hl]
    call Call_000_3c44
    ret


jr_000_3bca:
    ld a, [$cb58]
    and $01
    ret z

    call Call_000_3c29
    ld hl, $cb58
    dec [hl]
    call Call_000_3fae
    ret


jr_000_3bdb:
    ld a, [$cb58]
    and $01
    ret nz

    call Call_000_3c29
    ld hl, $cb58
    inc [hl]
    call Call_000_3fae
    ret


jr_000_3bec:
    ld a, [$cb58]
    and $02
    ret z

    call Call_000_3c29
    ld hl, $cb58
    dec [hl]
    dec [hl]
    call Call_000_3fae
    ret


Call_000_3bfe:
jr_000_3bfe:
    ld a, [$cb58]
    and $02

Call_000_3c03:
    ret nz

    call Call_000_3c29
    ld hl, $cb58
    inc [hl]
    inc [hl]

Jump_000_3c0c:
    call Call_000_3fae
    ret


Jump_000_3c10:
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $ff
    ld [wTextID], a
    call Call_000_3f26

Call_000_3c28:
    ret


Call_000_3c29:
    ld hl, $3a67

Jump_000_3c2c:
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e

Jump_000_3c3c:
    call SyncToBlankPeriod
    ld a, [$cb5c]
    ld [hl], a
    ret

Call_000_3c44:
    ld a, [$cb58]
    cp $00
    jr z, jr_000_3c6d

    cp $01
    jp z, Jump_000_3cf2

    cp $02
    jr z, jr_000_3cb2

    ld a, [$b906]
    ld [$cbea], a
    call Call_000_3efc
    ld a, $03
    ld [wTextID], a
    ld [$cb57], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ret

jr_000_3c6d:
    call Call_000_3fa2
    xor a
    ld [$cb56], a
    ld [$cb57], a
    call Call_000_3efc
    ld a, $01
    ld [$cbff], a
    ld a, $3c
    ld [$c906], a
    xor a
    ld [$c908], a
    ld a, $13
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, [wPlayerIsCarryingItem]
    ld [$cb87], a
    ld a, 0
    ld [wPlayerIsCarryingItem], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

jr_000_3cb2:
    call Call_000_3fa2
    xor a
    ld [$cb56], a
    ld [$cb57], a
    call Call_000_3efc
    ld a, $50
    ld [$cbfe], a
    xor a
    ld [$c908], a
    ld a, $13
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, [wPlayerIsCarryingItem]
    ld [$cb87], a
    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

Call_000_3cf2:
Jump_000_3cf2:
    ld a, $3c
    call Call_000_3f52
    ret

Call_000_3cf8:
    ld a, [$cb8f]
    or a
    jr z, jr_000_3d07

    ld hl, $4341
    ld a, $08
    call BankSwitchCallHL
    ret

jr_000_3d07:
    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, [$cb57]
    or a
    jr z, jr_000_3d17

    call Call_000_3a6f
    ret

jr_000_3d17:
    ld a, [$cb56]
    cp $00
    jr z, jr_000_3d7b

    ldh a, [$ff8b]
    cp $04
    jr nz, jr_000_3d41

    ld a, [$cb5f]
    or a
    ret nz

    call Call_000_3efc
    ld a, $01
    ld [$cb56], a
    ld a, $01
    ld [wTextID], a
    ld [$cb57], a
    xor a
    ld [$cb58], a
    call Call_000_3f0b
    ret


jr_000_3d41:
    call Call_000_3ded
    ldh a, [$ff8b]
    and $01
    ret z

    xor a
    ldh [$ff8b], a
    ld a, $01
    ld [$cbf6], a
    xor a
    ld [$cb56], a
    ld [$cbeb], a
    ld [$cb78], a
    ld [$cb5f], a
    ld a, [$b88c]
    or a
    ret nz

    call Call_000_3efc
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

jr_000_3d7b:
    xor a
    ld [$cc1b], a
    ldh a, [$ff8b]
    and $04
    ret z

    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    call Call_000_3db3
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_000_3f0b
    ld a, $00
    ld [wTextID], a
    ld a, $03
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$cb56], a
    ret

Call_000_3db3:
    ld a, [wInputFreezeTimer]
    or a
    jr nz, jr_000_3deb

    ld a, [$c90d]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerIsCarryingItem]
    or a
    jr nz, jr_000_3deb

    ld a, [$c640]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerIsRidingHorse]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_000_3deb

    ld a, [wPlayerSpriteID]
    cp PLAYER_SPRINTING_DOWN_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_LEFT_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_RIGHT_POSE
    jr z, jr_000_3deb

    cp PLAYER_SPRINTING_UP_POSE
    jr z, jr_000_3deb
    ret

jr_000_3deb:
    pop hl
    ret

Call_000_3ded:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbf6]
    or a
    ret nz

    ld a, $b4
    ld [$cbf6], a
    ret

Call_000_3dfd:
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    ld a, $01
    ld [$cc1b], a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb5f], a
    ret

Call_000_3e1a:
    ld hl, vBGMap1 + $30
    call SyncToBlankPeriod
    ld a, $88
    ld [hli], a
    inc a
    ld [hl], a
    call SyncToBlankPeriod
    ld a, $8a
    ld [vBGMap1 + $32], a
    inc a
    ld [vBGMap1 + $50], a
    call SyncToBlankPeriod
    ld a, $8c
    ld [vBGMap1 + $51], a
    inc a
    ld [vBGMap1 + $52], a
    call SyncToBlankPeriod
    ld a, $8e
    ld [vBGMap1 + $70], a
    inc a
    ld [vBGMap1 + $71], a
    call SyncToBlankPeriod
    ld a, $9f
    ld [vBGMap1 + $72], a
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jr nz, jr_000_3e66

    ld b, $1f
    jr jr_000_3e73

jr_000_3e66:
    ld c, a
    ld hl, Data_000_1b20
    ld b, $00

jr_000_3e6c:
    ld a, [hli]
    cp c
    jr z, jr_000_3e73

    inc b
    jr jr_000_3e6c

jr_000_3e73:
    ld a, b
    add a
    ld hl, Data_000_3ebc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    ld hl, $6ce2
    add hl, bc
    ld a, [MBC3SRamBank]
    ldh [$ffa5], a
    ld a, $08
    ld [MBC3RomBank], a
    ld de, $8880
    ld b, $08

jr_000_3e95:
    ld c, $10

jr_000_3e97:
    call SyncToBlankPeriod
    ld a, [hli]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3e97

    dec b
    jr nz, jr_000_3e95

    ld de, $89f0
    ld b, $01

jr_000_3ea8:
    ld c, $10

jr_000_3eaa:
    call SyncToBlankPeriod
    ld a, [hli]
    ld [de], a
    inc de

Call_000_3eb0:
    dec c
    jr nz, jr_000_3eaa

    dec b
    jr nz, jr_000_3ea8

    ldh a, [$ffa5]
    ld [MBC3RomBank], a
    ret

Data_000_3ebc:
    db $90, $00, $20, $01, $B0, $01, $40, $02, $60, $03, $F0, $03, $80, $04, $10, $05
    db $D0, $0B, $30, $0F, $00, $10, $D0, $02, $A0, $05, $30, $06, $F0, $0C, $60, $0C
    db $80, $0D, $C0, $06, $50, $07, $E0, $07, $70, $08, $00, $09, $90, $09, $20, $0A
    db $B0, $0A, $40, $0B, $B0, $11, $90, $10, $20, $11, $10, $0E, $A0, $0E, $00, $00 

Call_000_3efc:
jr_000_3efc:
    call SyncToBlankPeriod
    ld a, 1 << rLCDC_ENABLE | 1 << rLCDC_WINDOW_TILEMAP | 1 << rLCDC_SPRITES_ENABLE | 1 << rLCDC_BG_PRIORITY
    ld [wLCDCTempStorage], a
    ldh [rLCDC], a
    xor a
    ld [wTextBoxIsDisplayed], a
    ret

Call_000_3f0b:
    call ClearOldTextOnTextBox
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    call SyncToBlankPeriod
    ld a, 1 << rLCDC_ENABLE | 1 << rLCDC_WINDOW_TILEMAP | 1 << rLCDC_WINDOW_ENABLE | 1 << rLCDC_SPRITES_ENABLE | 1 << rLCDC_BG_PRIORITY
    ld [wLCDCTempStorage], a
    ldh [rLCDC], a
    ld a, 1
    ld [wTextBoxIsDisplayed], a
    ret

Call_000_3f26:
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    ld a, [$b906]
    or a
    jr nz, jr_000_3efc

    ld a, $04
    ld [wTextID], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret

Call_000_3f52:
    ld b, a
    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, b
    ld [wTextID], a
    ld a, $01
    ld [$cb56], a
    ld [$cb5f], a
    ld [$cc1b], a
    call Call_000_3f0b
    ret

; Temporarily switch ROM bank in D, then call SyncCopyTileToVRAM, then restore
BankedSyncCopyTileToVRAM:
    ld a, [MBC3SRamBank]    ; save current bank
    push af
    ld a, d
    ld [MBC3RomBank], a     ; switch to bank in D
    call SyncCopyTileToVRAM ; do the PPU-synced copy
    pop af
    ld [MBC3RomBank], a     ; restore original bank
    ret

SyncCopyTileToVRAM:
; inputs:
;   BC = basePointer to tile data
;   C  = tileIndex (source)
;   E  = tileIndex (destination)
; clobbers: A, B, C, D, E, H, L, flags
    ld a, c       ; A = tileIndex low‐byte
    ld b, h       ; B = basePointer high‐byte
    ld c, l       ; C = basePointer low‐byte
    ld h, $00     
    ld l, a       ; HL = tileIndex (0…255)
    
    ; HL ← HL * 16
    add hl, hl    ; ×2
    add hl, hl    ; ×4
    add hl, hl    ; ×8
    add hl, hl    ; ×16
    
    ; HL ← basePointer + tileIndex*16
    add hl, bc
    
    push hl       ; save sourcePtr

    ld h, $00
    ld l, e       ; HL = targetTileIndex
    add hl, hl    ; ×2
    add hl, hl    ; ×4
    add hl, hl    ; ×8
    add hl, hl    ; ×16
    ld de, $8000  ; start of VRAM tile data
    add hl, de    ; DE = destPtr = 0x8000 + targetTileIndex*16
    ld d, h
    ld e, l       ; DE = destPtr
    pop hl        ; HL = sourcePtr

    ld c, $10     ; 16 bytes to go
.loop
    call SyncToBlankPeriod ; wait for H-Blank/V-Blank
    ld a, [hli]            ; A = [sourcePtr++]
    ld [de], a             ; write A → [destPtr]
    inc de                 ; destPtr++
    dec c
    jr nz, .loop
    ret

Call_000_3fa2:
    push hl
    push de
    push bc
    ld a, $42
    call Call_000_25cb
    pop bc
    pop de
    pop hl
    ret


Call_000_3fae:
    push hl
    push de
    push bc
    ld a, $48
    call Call_000_25ce
    pop bc
    pop de
    pop hl
    ret


    ld a, $22

Jump_000_3fbc:
    jr jr_000_3fdc

    ld a, $2a
    jr jr_000_3fdc

    ld a, $26
    jr jr_000_3fdc

    ld a, $17
    jr jr_000_3fdc

    ld a, $00
    jr jr_000_3fdc

    ld a, $04
    jr jr_000_3fdc

    ld a, $54
    jr jr_000_3fdc

    ld a, $1e
    jr jr_000_3fdc

    ld a, $1b

jr_000_3fdc:
    call Call_000_25c5
    ret


    ld a, $08
    call Call_000_25c8
    ret

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
