; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_2160


Call_000_0003:
    rst $38

Jump_000_0004:
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    jp Jump_000_216c


    ret


Jump_000_000c:
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    ret


    rst $38
    rst $38

Jump_000_0013:
    rst $38

Call_000_0014:
Jump_000_0014:
    rst $38

Jump_000_0015:
    rst $38
    rst $38
    rst $38

RST_18::
    ret


    rst $38

Call_000_001a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_001f:
    rst $38

RST_20::
    ret


Jump_000_0021:
    rst $38
    rst $38

Call_000_0023:
    rst $38

Jump_000_0024:
    rst $38

Jump_000_0025:
    rst $38

Jump_000_0026:
    rst $38
    rst $38

RST_28::
    ret


    rst $38
    rst $38
    rst $38

Jump_000_002c:
    rst $38
    rst $38
    rst $38

Jump_000_002f:
    rst $38

RST_30::
    ret


    rst $38

Call_000_0032:
    rst $38

Call_000_0033:
Jump_000_0033:
    rst $38

Call_000_0034:
Jump_000_0034:
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    add l
    ld l, a
    ld a, $00

Jump_000_003c:
    adc h
    ld h, a
    ret


Jump_000_003f:
    rst $38

VBlankInterrupt::
    call Call_000_04c7

Call_000_0043:
    reti


Jump_000_0044:
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_3311


    rst $38
    rst $38
    rst $38

Call_000_004e:
Jump_000_004e:
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_33f9


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_3408


    rst $38
    rst $38
    rst $38

Call_000_005e:
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


Call_000_0061:
Jump_000_0061:
    ld a, [$c0a7]

Jump_000_0064:
    or a
    rst $08
    rst $18

Jump_000_0067:
    ccf

Call_000_0068:
Jump_000_0068:
    nop
    adc $0e
    nop
    adc $0e
    nop
    adc $0e

Jump_000_0071:
    nop

Call_000_0072:
    adc $0e
    nop
    adc $0e
    nop
    cp d
    ccf
    nop

Call_000_007b:
Jump_000_007b:
    cp [hl]

Call_000_007c:
    ccf

Call_000_007d:
Jump_000_007d:
    nop
    jp nz, Jump_000_003f

    jp nz, Jump_000_003f

    jp nz, Jump_000_003f

    jp nz, Jump_000_003f

    jp nz, Jump_000_003f

    rst $18
    ccf
    nop

Jump_000_0090:
    rst $18
    ccf
    nop
    add $3f
    nop
    jp z, Jump_000_003f

    jp z, Jump_000_003f

    adc $3f
    nop

Jump_000_009f:
    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

Call_000_00a8:
    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

    jp nc, Jump_000_003f

    cp d
    ccf
    nop
    adc $3f
    nop
    adc $3f
    nop

Call_000_00c0:
    cp d
    ccf
    nop
    cp d
    ccf
    nop
    rst $18
    ccf
    nop
    rst $18

Jump_000_00ca:
    ccf
    nop

Call_000_00cc:
    cp d
    ccf
    nop
    adc $3f
    nop
    rst $18
    ccf

Jump_000_00d4:
    nop

Call_000_00d5:
Jump_000_00d5:
    jp c, Jump_000_003f

    ldh [rWave_f], a
    nop

Jump_000_00db:
    ldh [rWave_f], a
    nop
    rst $18
    ccf
    nop
    ldh [rWave_f], a

Call_000_00e3:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00ec:
    rst $38
    rst $38
    rst $38

Call_000_00ef:
Jump_000_00ef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00fc:
Jump_000_00fc:
    rst $38
    rst $38

Call_000_00fe:
Jump_000_00fe:
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

Boot::
    nop

Jump_000_0101:
    jp Jump_000_0150


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

Jump_000_0150:
    nop

Jump_000_0151:
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
    call Call_000_2282
    ld hl, $dd00
    ld bc, $00ff
    call Call_000_2282
    call Call_000_2242
    xor a
    ldh [rBGP], a
    xor a
    ldh [rOBP0], a
    xor a
    ldh [rOBP1], a
    call Call_000_2527
    ld a, $02
    ldh [$ff8d], a
    call Call_000_225a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
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

Jump_000_01b8:
    ld hl, $ff80
    ld bc, $007f
    call Call_000_2282

Call_000_01c1:
Jump_000_01c1:
    ld a, $02
    ldh [$ff8d], a
    call Call_000_225a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $8000
    ld bc, $1fff
    call Call_000_2282
    ld hl, $c000
    ld bc, $1cff
    call Call_000_2282
    call Call_000_2242
    xor a
    ld [MBC3SRamBank], a
    ld a, [$dff7]
    cp $11
    jr nz, jr_000_01f9

    ld a, $01

Jump_000_01ef:
    ld [$c0bb], a
    ld a, $00
    ld [$c0bc], a
    jr jr_000_0202

jr_000_01f9:
    xor a
    ld [$c0bb], a

Jump_000_01fd:
    ld a, $2a

Jump_000_01ff:
    ld [$c0bc], a

Jump_000_0202:
jr_000_0202:
    ld a, $20
    ld [$c0a7], a

Call_000_0207:
Jump_000_0207:
    call Call_000_225a
    push hl
    push af
    ld l, $27
    ld h, $25

Jump_000_0210:
    ld a, $00
    call BankSwitchCallHL
    pop af
    pop hl

Jump_000_0217:
    di
    call Call_000_225a
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
    call Call_000_0278
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
    ld [$c500], a
    xor a
    ldh [$ff97], a

Jump_000_0259:
    push hl
    push af
    ld l, $cd
    ld h, $79
    ld a, $07
    call BankSwitchCallHL

Call_000_0264:
Jump_000_0264:
    pop af
    pop hl
    call Call_000_0061
    call Call_000_2273
    ei

Jump_000_026d:
    ld a, [$c0a6]

Jump_000_0270:
    or a
    or a
    jp z, Jump_000_026d

    jp Jump_000_0217


Call_000_0278:
    ld a, [$c0bb]
    or a
    jr z, jr_000_028d

    ld c, rVBK_c

Jump_000_0280:
    ld a, $01
    ldh [c], a
    xor a
    ldh [$ffa4], a
    call Call_000_229e
    ld c, rVBK_c
    xor a
    ldh [c], a

jr_000_028d:
    ld a, [$c0bc]

Jump_000_0290:
    ld b, a
    ld a, [$c0a7]
    or a
    add b
    rst $08
    ld l, [hl]
    ld l, a
    rra
    add hl, de
    ld b, b
    ld bc, $5039
    ld [bc], a
    ld bc, $0340
    ld bc, $0440
    ld bc, $0540
    ld bc, $0640
    ld bc, $1040
    add hl, bc
    ld b, b
    ld c, $0d
    ld d, l
    ld c, $fe
    ld e, d
    ld c, $ab
    ld h, c
    ld c, $b2
    ld h, [hl]
    ld c, $a8

Jump_000_02bf:
    ld c, a
    db $10
    cp [hl]
    ld c, a
    db $10
    adc l
    ld h, e
    rrca
    ld bc, $1d40
    ld e, l
    ld b, e
    dec e
    and [hl]
    ld b, [hl]
    dec e
    ld bc, $0940
    add hl, bc
    ld b, a
    add hl, bc
    jp nz, Jump_000_094c

    di
    ld c, l
    add hl, bc

Call_000_02dc:
    nop
    ld c, a
    add hl, bc
    or $50
    add hl, bc
    cp $51
    add hl, bc
    and c
    ld d, l
    add hl, bc

Call_000_02e8:
    ld l, l
    ld d, [hl]
    add hl, bc
    ld c, $53
    dec e
    ld c, $53
    dec e
    call $0965
    call nc, Call_000_0967
    db $ec
    ld d, [hl]
    dec e
    call z, $0647
    ret nc

Call_000_02fe:
    ld b, b
    rra

Call_000_0300:
Jump_000_0300:
    ld c, $53
    dec e
    sub d

Jump_000_0304:
    ld d, c
    dec e
    and [hl]
    ld l, h
    rrca
    ld bc, $0740
    add b
    ld l, [hl]

Jump_000_030e:
    dec e
    ld bc, $0240
    jr jr_000_0387

    dec e
    ld b, l
    ld l, [hl]
    ccf
    ld bc, $2140
    dec de
    ld d, b
    ld [hli], a
    ld bc, $2340
    ld bc, $2440
    ld bc, $2540
    ld bc, $2640
    ld bc, $3040
    ld bc, $2e40
    ld [$2e54], a
    add $5a
    ld l, $60
    ld h, c
    ld l, $5a
    ld h, [hl]
    ld l, $17

Jump_000_033d:
    ld c, a
    jr nc, jr_000_036d

    ld c, a
    jr nc, @-$70

    ld h, e

Call_000_0344:
    cpl
    ld bc, $3d40
    ld d, b
    ld b, e
    dec a

Call_000_034b:
    adc h
    ld b, [hl]
    dec a
    ld bc, $2940
    db $fc
    ld b, [hl]
    add hl, hl
    and l
    ld c, h
    add hl, hl
    jp nc, $294d

    db $db
    ld c, [hl]
    add hl, hl
    call $2950
    pop de
    ld d, c
    add hl, hl
    ld h, e
    ld d, l
    add hl, hl
    inc d
    ld d, [hl]
    add hl, hl
    ret


    ld d, d
    dec a
    ret


jr_000_036d:
    ld d, d
    dec a
    ld [hl], h
    ld h, l
    add hl, hl
    ld a, e
    ld h, a
    add hl, hl
    and a

Call_000_0376:
    ld d, [hl]
    dec a
    call z, $2647
    ld bc, $3f40
    ret


    ld d, d
    dec a
    ld h, b
    ld d, c
    dec a
    ld d, b
    ld l, h
    cpl

jr_000_0387:
    ld bc, $2740
    jr nc, @+$6f

    dec a
    ld bc, $2240
    cp e
    ld [hl], c
    dec a
    ret


    push af
    ld a, $f0
    ldh [rBGP], a
    pop af
    ret

; Something with writing CGB color pallete
Call_000_039b:
    ; Address $FF68 is for BCPS/BGPI
    ld c, rBGPI_c
    ld a, 1 << rBGPI_AUTO_INCREMENT
    ldh [c], a
    inc c
    ld b, 32

.loop ; iterate 20 times. Why?
    ; what does `hl` have?
    ld a, [hli]
    ldh [c], a
    ld a, [hli]
    ldh [c], a
    dec b
    jr nz, .loop

    ret

; Why is the same function repeated?
Call_000_03ab:
    ld c, rOBPI_c
    ld a, $80
    ldh [c], a
    inc c
    ld b, $20

.loop
    ld a, [hli]
    ldh [c], a
    ld a, [hli]
    ldh [c], a
    dec b
    jr nz, .loop

    ret


Call_000_03bb:
    ld de, $dd02
    ld b, $40
    call CopyHLtoDE
    xor a
    ld [$cd22], a
    inc a
    ld [$cd23], a
    ld c, rBGPI_c
    ld a, $80
    ldh [c], a
    inc c
    ld b, $20

.loop
    ld a, $ff
    ldh [c], a
    ld a, $7f
    ldh [c], a
    dec b
    jr nz, .loop

    ret


Call_000_03dd:
    ld b, %10011000 ; address for start of 4th palette
    call Call_000_0407
    ret


Call_000_03e3:
    ld b, %10010000 ; address for start of 3rd palette
    call Call_000_0407

Call_000_03e8:
    ret


Call_000_03e9:
    ld b, %10101000 ; address for start of 6th palette
    call Call_000_0407
    ret


Call_000_03ef:
    ld b, %10111000 ; address for start of 8th palette
    call Call_000_0407
    ret


    ld b, %10100000 ; address for start of 5th palette
    call Call_000_0407
    ret


Call_000_03fb:
    ld b, %10110000 ; address for start of 7th palette
    call Call_000_0407

Jump_000_0400:
    ret


Call_000_0401:
    ld b, $b8

Call_000_0403:
    call Call_000_0418
    ret


Call_000_0407:
; Address $FF6A is OCPS/OBPI
    ld c, rOBPI_c
    ld a, b
    ldh [c], a
    ld c, rOBPD_c
    ld d, $08

Jump_000_040f:
.loop
    call Call_000_0da9
    ld a, [hli]
    ldh [c], a
    dec d
    jr nz, .loop

    ret


Call_000_0418:
    ld c, rBGPI_c
    ld a, b
    ldh [c], a
    ld c, rBGPD_c
    ld d, $08

.loop
    call Call_000_0da9
    ld a, [hli]
    ldh [c], a
    dec d
    jr nz, .loop

    ret


Call_000_0429:
    ld hl, $043d
    call Call_000_03ef
    ld hl, $0445
    call Call_000_03dd
    ret


Call_000_0436:
    ld hl, $044d
    call Call_000_03ef
    ret


    ld a, h
    ld c, [hl]
    add h
    nop
    ld l, a
    dec l
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld l, a
    dec l
    ld a, a
    ld b, a
    ld a, h

Call_000_044e:
    ld c, [hl]
    add h
    nop
    nop
    dec de
    ld hl, sp+$03

Call_000_0455:
    ld hl, $9c00
    ld de, $0463
    ld b, $14
    ld c, $05
    call Call_000_0a62
    ret


    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    and e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e

Call_000_04c0:
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    and h

Call_000_04c7:
    push af
    push bc
    push de
    push hl
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ldh a, [$ff8d]
    or a
    jp nz, Jump_000_0561

    inc a
    ldh [$ff8d], a
    call $ff80
    ei
    call $6e8b
    ld de, $c500
    call Call_000_22d9
    xor a
    ldh [$ff97], a
    ld [$c500], a
    call Call_000_0a2d
    call Call_000_0a55
    xor a
    ldh [$ff99], a
    call Call_000_263a
    ld a, [$c0a8]
    inc a
    ld [$c0a8], a
    jr nc, jr_000_0509

    ld a, [$c0a9]
    inc a
    ld [$c0a9], a

jr_000_0509:
    call Call_000_0b0e
    call Call_000_2195
    ld hl, $c0ba
    inc [hl]

Call_000_0513:
    ld a, [$cb5e]
    ld [$cb5d], a
    ld a, [$c0ba]
    and $10
    jr z, jr_000_0529

Jump_000_0520:
    ld a, [$cb5c]
    ld [$cb5d], a
    call Call_000_0673

jr_000_0529:
    call Call_000_056c
    call Call_000_0d22
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
    call Call_000_0906
    ldh a, [$ff8a]
    and $0f
    cp $0f
    jp z, Jump_000_01b1

    xor a
    ldh [$ff8d], a

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
    ld a, [$c0a7]
    or a
    add b
    rst $08
    ld a, [hl+]
    ld [hl], b
    rra
    ldh [c], a
    ld b, c

Jump_000_057b:
    ld bc, $52a0
    ld [bc], a
    jr z, jr_000_05c2

    inc bc
    ld hl, $0441
    ret z

    ld b, b
    dec b
    cp c
    ld b, b
    ld b, $f2
    ld b, b
    db $10
    ld b, b
    ld b, c
    ld c, $db
    ld d, l
    ld c, $ed
    ld e, e
    ld c, $96
    ld h, d
    ld c, $92
    ld h, a
    ld c, $67
    ld d, b
    db $10
    ld a, e

Jump_000_05a1:
    ld d, b
    db $10
    add b
    ld h, h
    rrca
    and h
    ld b, b
    dec e
    ld e, b
    ld b, h
    dec e
    ldh [c], a
    ld b, a
    dec e
    add $40
    add hl, bc
    ld e, $47
    add hl, bc
    ret c

    ld c, h
    add hl, bc

Call_000_05b8:
Jump_000_05b8:
    add hl, bc
    ld c, [hl]
    add hl, bc
    ld d, $4f
    add hl, bc
    inc c
    ld d, c
    add hl, bc
    ld e, l

jr_000_05c2:
    ld d, d
    add hl, bc
    ld b, c
    ld d, [hl]
    add hl, bc
    inc sp
    ld d, a
    add hl, bc

Jump_000_05ca:
    dec a
    ld d, e
    dec e
    dec a
    ld d, e
    dec e
    ld e, [hl]
    ld h, [hl]
    add hl, bc
    ld a, [de]
    ld l, b
    add hl, bc
    and l
    ld d, a
    dec e
    inc h
    ld c, c
    ld b, $8b
    ld b, c
    rra
    dec a
    ld d, e
    dec e
    dec e
    ld d, d

Jump_000_05e4:
    dec e
    ld b, c
    ld l, l
    rrca
    ld [hl], e
    ld b, b
    rlca
    ld b, c
    ld l, a
    dec e
    ld a, c
    ld b, c
    ld [bc], a
    rst $18
    ld [hl], e
    dec e
    ld bc, $3f6f
    db $d3
    ld b, c
    ld hl, $51f9

jr_000_05fc:
    ld [hli], a
    dec de
    ld b, c

Call_000_05ff:
    inc hl

Jump_000_0600:
    inc d
    ld b, c
    inc h
    cp b
    ld b, b

Jump_000_0605:
    dec h
    cp c
    ld b, b
    ld h, $d7
    ld b, b
    jr nc, jr_000_0629

    ld b, c
    ld l, $ab
    ld d, l
    ld l, $a2
    ld e, e
    ld l, $3e
    ld h, d
    ld l, $2d
    ld h, a
    ld l, $c9
    ld c, a
    jr nc, jr_000_05fc

    ld c, a
    jr nc, jr_000_0696

    ld h, h
    cpl
    sub a
    ld b, b
    dec a
    ld a, $44

jr_000_0629:
    dec a
    or b
    ld b, a
    dec a
    cp c
    ld b, b
    add hl, hl
    ld c, $47
    add hl, hl
    or a
    ld c, h
    add hl, hl
    db $e4
    ld c, l

Call_000_0638:
    add hl, hl
    db $ed
    ld c, [hl]
    add hl, hl
    rst $18
    ld d, b
    add hl, hl

Call_000_063f:
    inc l

Call_000_0640:
Jump_000_0640:
    ld d, d
    add hl, hl
    add sp, $55
    add hl, hl
    jp c, Jump_000_2956

    ld hl, sp+$52
    dec a
    ld hl, sp+$52
    dec a
    dec b
    ld h, [hl]
    add hl, hl
    pop bc
    ld h, a
    add hl, hl
    ld d, e
    ld d, a
    dec a
    ld [$2648], a
    xor a
    ld b, b
    ccf
    ld hl, sp+$52
    dec a
    ret c

    ld d, c
    dec a
    sbc $6c
    cpl
    ld h, [hl]
    ld b, b
    daa
    db $e4
    ld l, l
    dec a
    ld l, e
    ld b, c
    ld [hl+], a
    ld [hl], l
    ld [hl], d
    dec a
    ret


Call_000_0673:
    ld a, [$cb81]
    or a
    ret nz

    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb56]
    or a

Jump_000_0681:
    ret nz

    ld a, [$b880]
    inc a
    ld [$b880], a
    cp $1e
    jr nc, jr_000_068e

    ret


jr_000_068e:
    xor a
    ld [$b880], a
    ld a, [$b881]
    inc a

jr_000_0696:
    ld [$b881], a
    cp $0f
    jr nc, jr_000_06ac

    cp $0e
    ret nz

    ld a, [$b882]
    cp $05
    ret nz

    ld a, $01
    ld [$ba40], a
    ret


jr_000_06ac:
    xor a
    ld [$b881], a
    ld a, [$b882]
    inc a
    ld [$b882], a
    cp $18
    jr nc, jr_000_06c2

    call Call_000_070b
    call Call_000_070b
    ret


jr_000_06c2:
    xor a
    ld [$b882], a
    call Call_000_070b
    ld a, [$b883]
    inc a
    ld [$b883], a
    cp $1e
    jr nc, jr_000_06db

    call Call_000_07ab
    call Call_000_08b7
    ret


jr_000_06db:
    xor a
    ld [$b883], a
    ld a, [$b884]
    inc a
    ld [$b884], a
    call Call_000_07ab
    call Call_000_08b7
    ld a, [$b884]
    cp $04
    jr nc, jr_000_06f4

    ret


jr_000_06f4:
    xor a
    ld [$b884], a

Call_000_06f8:
    call Call_000_08b7
    ld a, [$b885]
    inc a
    ld [$b885], a

Call_000_0702:
    cp $63
    ret nz

    ld a, $62

Jump_000_0707:
    ld [$b885], a
    ret


Call_000_070b:
    ld a, [$b882]
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, de
    ld de, $0763
    add hl, de
    ld a, [hl+]
    ld [$b915], a
    ld a, [hl+]
    ld [$b917], a
    ld a, [hl+]
    ld [$b918], a
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [$b917]
    ld c, a
    ld e, $84
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, [$b918]
    ld c, a
    ld e, $85
    ld hl, $4001
    ld a, $11
    ld d, a

Jump_000_074b:
    call Call_000_3f6c
    ld a, [$b915]
    ld c, a
    ld e, $86
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, $01
    ld [$cb75], a
    ret


    nop
    inc [hl]
    inc [hl]
    nop
    inc [hl]
    dec [hl]
    nop
    inc [hl]
    ld [hl], $00
    inc [hl]

Jump_000_076e:
    scf
    nop
    inc [hl]
    jr c, jr_000_0773

jr_000_0773:
    inc [hl]
    add hl, sp
    nop
    inc [hl]
    ld a, [hl-]
    nop
    inc [hl]
    dec sp
    nop
    inc [hl]
    inc a
    nop
    inc [hl]
    dec a
    nop
    dec [hl]
    inc [hl]
    nop
    dec [hl]
    dec [hl]
    rrca
    inc [hl]
    inc [hl]
    rrca
    inc [hl]
    dec [hl]
    rrca
    inc [hl]
    ld [hl], $0f
    inc [hl]
    scf
    rrca
    inc [hl]
    jr c, jr_000_07a6

    inc [hl]
    add hl, sp
    rrca
    inc [hl]
    ld a, [hl-]
    rrca
    inc [hl]
    dec sp
    rrca
    inc [hl]
    inc a
    rrca
    inc [hl]
    dec a
    rrca

jr_000_07a6:
    dec [hl]
    inc [hl]
    rrca
    dec [hl]
    dec [hl]

Call_000_07ab:
    ld a, [$b883]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $087b
    add hl, de
    ld a, [hl+]
    ld [$b914], a
    ld a, [hl+]
    ld [$ba53], a
    ld a, [$b884]
    ld c, $1e
    call Call_000_0a19
    ld a, [$b883]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    call Call_000_09c9
    add a
    add a
    ld hl, $085f
    add l
    ld l, a

Jump_000_07db:
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]

Call_000_07e0:
    ld [$b919], a
    ld a, [hl+]
    ld [$b91a], a
    ld a, [hl+]
    ld [$ba54], a
    ld a, [hl]
    ld [$ba55], a
    ld a, [$cb56]
    or a
    ret nz

Jump_000_07f4:
    ld a, [$b906]
    or a

Call_000_07f8:
    ret nz

    ld a, [$b919]
    ld c, a
    ld e, $80
    ld a, [$c0a7]

Call_000_0802:
    cp $28
    jr nz, jr_000_0808

    ld e, $59

jr_000_0808:
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, [$b91a]
    ld c, a
    ld e, $81
    ld a, [$c0a7]
    cp $28
    jr nz, jr_000_0820

    ld e, $5a

jr_000_0820:
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, [$ba54]
    ld c, a
    ld e, $82
    ld a, [$c0a7]
    cp $28
    jr nz, jr_000_0838

    ld e, $5b

jr_000_0838:
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, [$ba55]
    ld c, a
    ld e, $83
    ld a, [$c0a7]
    cp $28
    jr nz, jr_000_0850

    ld e, $58

jr_000_0850:
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3f6c
    ld a, $01
    ld [$cb75], a
    ret


    ld e, b
    ld e, c
    ld e, d
    ld d, a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld e, e
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, h
    ld l, d
    ld l, e
    ld l, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    inc [hl]
    dec [hl]
    inc [hl]
    ld [hl], $34
    scf
    inc [hl]
    jr c, @+$36

    add hl, sp
    inc [hl]
    ld a, [hl-]
    inc [hl]
    dec sp
    inc [hl]
    inc a
    inc [hl]
    dec a
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $35
    scf
    dec [hl]
    jr c, jr_000_08cd

    add hl, sp
    dec [hl]
    ld a, [hl-]
    dec [hl]
    dec sp
    dec [hl]
    inc a
    dec [hl]
    dec a
    ld [hl], $34
    ld [hl], $35
    ld [hl], $36
    ld [hl], $37
    ld [hl], $38
    ld [hl], $39
    ld [hl], $3a
    ld [hl], $3b
    ld [hl], $3c
    ld [hl], $3d
    scf
    inc [hl]

Call_000_08b7:
    ld a, [$b884]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ld e, a
    ld a, h
    ld d, a
    add hl, hl
    add hl, de
    ld de, $08e1
    add hl, de
    ld a, [hl+]
    ld [$b912], a
    ld a, [hl+]

jr_000_08cd:
    ld [$b913], a
    ld a, [hl+]
    ld [$ba4f], a
    ld a, [hl+]
    ld [$ba50], a
    ld a, [hl+]
    ld [$ba51], a
    ld a, [hl]
    ld [$ba52], a

Call_000_08e0:
    ret


    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    rst $28

Jump_000_08ee:
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    rst $28
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    push af
    push bc

Call_000_08fb:
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


Call_000_0906:
    ldh a, [$ff99]
    ld c, a
    ld b, $00
    ld hl, $c000
    add hl, bc
    sub $a0
    ret nc

    cpl
    inc a
    ld b, a
    xor a

Call_000_0916:
jr_000_0916:
    ld [hl+], a
    dec b
    jr nz, jr_000_0916

    ret


    ld hl, $ffa4
    ld bc, $0014
    jp Jump_000_2282


Call_000_0924:
    ld hl, $c500
    ldh a, [$ff97]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_000_0930:
    ld de, $c500
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

Jump_000_094c:
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

Call_000_0967:
    pop af

Call_000_0968:
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


Call_000_09c9:
    push de
    ld d, $10
    ld e, a
    xor a

jr_000_09ce:
    add hl, hl
    rla
    jr c, jr_000_09d5

    cp e
    jr c, jr_000_09d7

jr_000_09d5:
    sub e
    inc l

jr_000_09d7:
    dec d
    jr nz, jr_000_09ce

    pop de
    ret


Call_000_09dc:
    push de
    ld d, $08
    ld e, a
    xor a

jr_000_09e1:
    add hl, hl
    rla
    jr c, jr_000_09e8

    cp e
    jr c, jr_000_09ea

Call_000_09e8:
jr_000_09e8:
    sub e
    inc l

jr_000_09ea:
    dec d
    jr nz, jr_000_09e1

    pop de
    ret


    push de
    ld d, $18
    ld e, a
    xor a

jr_000_09f4:
    add hl, hl
    ld b, a

Jump_000_09f6:
    ld a, c
    adc c
    ld c, a
    ld a, b
    rla
    jr c, jr_000_0a00

    cp e

Jump_000_09fe:
    jr c, jr_000_0a02

Call_000_0a00:
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

Jump_000_0a15:
    ld a, d
    ldh [$ffa5], a
    ret


Call_000_0a19:
    push de
    ld hl, $0000
    ld b, l
    ld d, $08

jr_000_0a20:
    rrca
    jr nc, jr_000_0a24

    add hl, bc

jr_000_0a24:
    sla c
    rl b
    dec d
    jr nz, jr_000_0a20

    pop de
    ret


Call_000_0a2d:
    ldh a, [$ff91]
    ldh [rSCY], a
    ldh a, [$ff93]
    ldh [rSCX], a
    ldh a, [$ff95]
    ldh [rWY], a
    ldh a, [$ff96]
    ldh [rWX], a
    ret


Call_000_0a3e:
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_0a47:
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]

Call_000_0a52:
    ld l, c
    ld h, b
    ret


Call_000_0a55:
    ld hl, $c0a3
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl]
    ldh [rOBP1], a
    ret


Call_000_0a62:
.loop
    call Call_000_0a69
    dec c
    jr nz, .loop

    ret


Call_000_0a69:
    push bc
    push hl

jr_000_0a6b:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_0a6b

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

Jump_000_0ac0:
    ret


Call_000_0ac1:
    ld bc, $ffe0
    add hl, bc
    ld b, $00

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
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]

Jump_000_0afc:
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a

Call_000_0b00:
Jump_000_0b00:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    pop de
    pop hl
    call Call_000_2308

Jump_000_0b08:
    pop hl
    ld a, $07
    rst $38
    jr jr_000_0aef

Call_000_0b0e:
    ldh a, [$ff9c]
    sla a
    sla a
    ld b, a
    ldh a, [$ff9c]
    add b
    add $11
    ldh [$ff9c], a
    ret


Call_000_0b1d:
    ld hl, $0b46
    ldh a, [$ff9c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$c0a8]
    or $01
    ld b, a
    ldh a, [$ff9c]

Jump_000_0b32:
    adc b
    ldh [$ff9c], a
    pop af
    ret


Call_000_0b37:
    ld hl, $0b46
    ldh a, [$ff9d]

Call_000_0b3c:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

Call_000_0b43:
    ldh [$ff9d], a
    ret


    daa
    ld a, [hl]
    db $db
    call z, Call_000_1430
    ld c, a
    sbc h
    adc b
    jp nc, $7290

    add hl, hl
    pop bc

Jump_000_0b54:
    ld a, $7a
    add d
    inc l
    ld b, h
    ld d, d
    ld h, b
    ret


    adc c
    dec b
    inc de
    ld h, a
    ld a, [bc]
    or d
    ldh [c], a
    rst $00
    ld l, b
    db $dd
    ld h, l
    ld l, l
    jp nz, $8366

    sub a
    ld d, e
    ld d, h
    ld [hl-], a
    and a
    ldh a, [$ffe0]
    pop de
    ret z

    ld [$2476], sp
    or $a3
    or a
    ld d, a
    ld h, d
    ld [hl], l
    ei
    ld e, h
    add c
    or [hl]
    rlca
    sub $b5
    jp c, $cea9

    call c, $7139
    call $5977
    xor h
    add b
    add a
    ld c, c
    sub c
    add h
    ld e, d
    db $e4
    ld [hl+], a

jr_000_0b96:
    db $d3
    dec e
    ld c, l
    jp $0112


    ld hl, sp-$65
    adc [hl]
    db $eb
    adc l
    ld d, c
    ld h, c
    and b
    cp e
    pop hl
    ld a, [de]
    bit 4, h
    push bc
    ret c

    ld l, e
    ld e, a
    ld e, e
    jp z, $02a5

    jr jr_000_0bd2

    db $fd
    sub d
    sbc d
    ret nz

    dec l
    ccf
    ld [hl], h
    ld a, [hl+]
    ld h, $3a
    xor a
    inc c
    ld a, c
    db $f4
    ld c, h
    nop

Jump_000_0bc3:
    ld b, a
    ld a, a
    rla
    rst $28
    rst $30
    or h
    ld e, l
    cp c
    dec h
    sbc a
    ld c, d
    rrca

Jump_000_0bcf:
    cp h
    ld l, [hl]
    sbc b

jr_000_0bd2:
    db $ed
    ld d, [hl]
    ld [hl], $ec
    ld b, c
    inc hl
    cp d
    add sp, $2b
    ld [$9dee], a
    dec c
    ld e, $0e
    sbc [hl]
    cp $4e
    ld a, b
    add $8f
    xor l

jr_000_0be8:
    ld sp, $1b2e
    cpl
    ldh a, [c]

jr_000_0bed:
    push af
    pop af
    add [hl]
    adc d
    scf
    ld b, $4b
    sub h
    dec bc
    and $de
    ld [hl], e
    ld [hl], b
    rst $38
    and c
    db $10
    jr c, jr_000_0be8

    sub [hl]

Call_000_0c00:
    dec [hl]
    ld d, l
    ld l, d
    ld h, e
    db $fc
    ld a, h
    xor b
    push hl
    jr nz, jr_000_0b96

    ld a, [$bdb0]
    ld e, b
    ld de, $a248
    ld b, l
    jr z, jr_000_0bed

    ld b, b
    dec d
    or e
    and h
    add hl, de
    db $e3
    ld e, [hl]
    rst $20
    ld b, e
    cp [hl]
    inc b

Jump_000_0c1f:
    add l
    rst $10
    di
    adc e
    ld l, h
    dec sp
    ld d, $a6
    push de
    rst $08
    inc a
    ld hl, $33ab
    sub e
    ld a, e
    inc bc
    ld b, [hl]
    cp b
    inc [hl]

Call_000_0c33:
    call nz, $b142
    inc e
    xor [hl]
    ld d, b
    ld sp, hl
    xor d
    ld l, a
    dec a
    ret nc

    ld l, c
    sbc c
    cp a
    call nc, $df7d
    sub l
    add hl, bc

Call_000_0c46:
    ldh [$ffa4], a

Call_000_0c48:
    xor a
    ldh [$ffa6], a
    bit 7, h
    jr z, jr_000_0c59

    inc a
    ldh [$ffa6], a
    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

jr_000_0c59:
    ld e, l
    ld d, h
    xor a
    ldh [$ffa5], a
    ld c, a
    ld h, a
    ld l, a
    ldh a, [$ffa4]
    ld b, $08

jr_000_0c65:
    rrca
    jr nc, jr_000_0c72

    add hl, de
    ldh [$ffa4], a
    ldh a, [$ffa5]
    adc c
    ldh [$ffa5], a
    ldh a, [$ffa4]

jr_000_0c72:
    sla e
    rl d
    rl c
    dec b
    jr nz, jr_000_0c65

    ldh a, [$ffa5]
    ld c, a
    ret


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


    push hl
    push de
    ld a, d
    call Call_000_0c46
    ld a, l
    ldh [$ffa6], a
    ld a, h
    ldh [$ffa7], a
    ld a, c
    ldh [$ffa8], a
    pop de
    pop hl
    ld a, e
    call Call_000_0c46
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


Call_000_0cbb:
    ld a, c
    add [hl]
    ld [hl+], a
    inc bc
    ld a, b

Call_000_0cc0:
    bit 7, a
    jr nz, jr_000_0cc9

    adc [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_000_0cc9:
    adc [hl]
    ld [hl+], a
    ret c

Call_000_0ccc:
    dec [hl]
    ret


Call_000_0cce:
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


Call_000_0cd5:
    ld a, $0a
    ld [$1fff], a

Jump_000_0cda:
    ld a, $01
    ld [$6000], a
    ld a, $08
    ld [MBC3SRamBank], a
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $09
    ld [MBC3SRamBank], a
    xor a

Call_000_0cf2:
Jump_000_0cf2:
    ld [$a000], a
    nop

Call_000_0cf6:
    nop
    nop
    nop
    ld a, $0a
    ld [MBC3SRamBank], a
    xor a
    ld [$a000], a
    nop

Call_000_0d03:
    nop
    nop

Jump_000_0d05:
    nop
    ld a, $0b
    ld [MBC3SRamBank], a
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $0c
    ld [MBC3SRamBank], a
    ld a, $00
    ld [$a000], a
    xor a
    ld [MBC3SRamBank], a
    ret


Call_000_0d22:
    ld a, $0a
    ld [$1fff], a
    xor a
    ld [$6000], a
    inc a
    ld [$6000], a
    ld a, $08
    ld [MBC3SRamBank], a
    ld a, [$a000]
    and $3f
    ld [$c905], a
    nop
    nop
    nop
    nop
    ld a, $09
    ld [MBC3SRamBank], a
    ld a, [$a000]
    and $3f
    ld [$c904], a
    nop
    nop
    nop
    nop
    ld a, $0a
    ld [MBC3SRamBank], a
    ld a, [$a000]
    and $1f
    ld [$c903], a
    nop
    nop

Call_000_0d60:
Jump_000_0d60:
    nop
    nop
    ld a, $0b
    ld [MBC3SRamBank], a
    ld a, [$a000]
    ld [$c902], a
    xor a
    ld [MBC3SRamBank], a
    ret


    ld a, $0c
    ld [MBC3SRamBank], a
    ld a, $40
    ld [$a000], a
    xor a
    ld [MBC3SRamBank], a
    ret


    ld a, $0c
    ld [MBC3SRamBank], a
    ld a, $00
    ld [$a000], a
    xor a
    ld [MBC3SRamBank], a
    ret


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


Call_000_0da9:
    ldh a, [rLY]
    cp $66
    jr z, .jr_000_0dc9

    cp $67
    jr z, .jr_000_0dc9

    cp $68
    jr z, .jr_000_0dcf

    cp $69
    jr z, .jr_000_0dd5

    cp $6a
    jr z, .jr_000_0dd5

    cp $6b
    jr z, .jr_000_0ddb

    cp $8f
    jr z, .jr_000_0dd5

    jr .PPU0ModeWait

.jr_000_0dc9
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .jr_000_0dc9

.jr_000_0dcf
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .jr_000_0dcf

.jr_000_0dd5
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .jr_000_0dd5

.jr_000_0ddb
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .jr_000_0ddb

.PPU0ModeWait:
    ldh a, [rSTAT]
    and 1 << rSTAT_PPU_MODE_1
    jr nz, .PPU0ModeWait

    ret


Call_000_0de8:
    di
    xor a
    ld [$cb92], a
    call Call_000_1056
    call Call_000_070b
    call Call_000_07ab
    call Call_000_08b7
    call Call_000_1002
    call Call_000_0f73
    ld hl, $456e
    ld a, $08
    call BankSwitchCallHL
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld [$cb1c], a
    ld [$c90d], a
    ld [$c912], a
    ld [$c90e], a
    ld [$c910], a
    ld [$c90f], a
    ld [$c911], a
    ld [$cb56], a
    ld [$cb57], a
    ld a, $ff
    ld [$cb52], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    ld a, $01
    ld [$cb81], a
    ld a, [$b883]
    cp $ff
    ret nz

    xor a
    ld [$b883], a

Call_000_0e50:
    call Call_000_07ab
    ret


Call_000_0e54:
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_000_0e66

Call_000_0e61:
    or a
    jr z, jr_000_0e81

jr_000_0e64:
    pop hl
    ret


jr_000_0e66:
    ld a, [$c602]
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
    call $16d1
    ret


Call_000_0e81:
jr_000_0e81:
    ld a, [$cb91]
    or a
    jr z, jr_000_0e64

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_000_0ea9

    cp $6e

Call_000_0e9f:
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
    ld a, [$b8a0]
    cp $01
    jr z, jr_000_0f03

    cp $03
    jr z, jr_000_0f09

    ld a, [$b884]
    cp $00
    jr z, jr_000_0ef1

    cp $01
    jr z, jr_000_0ef7

    cp $02
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

Call_000_0f10:
    ld [$cb2f], a

Jump_000_0f13:
    ld [wLeftOrDownSideFacingTile], a
    ld [wLeftOrDownSideFacingTileID], a
    ld [wRightOrUpSideFacingTile], a
    ld [wRightOrUpSideFacingTileID], a

Jump_000_0f1f:
    ld [$cb34], a
    ld [$cb37], a
    ld [$cb38], a

Call_000_0f28:
    ld [$cb39], a
    ld [$cb3a], a
    ld [$cb3b], a
    ld [$cb3c], a
    ld [$cb3d], a
    ld [$cb3e], a
    ld [$cb3f], a

Jump_000_0f3d:
    ld [$cb40], a

Call_000_0f40:
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

Call_000_0f81:
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
    ld [$ccca], a
    ld a, [$b939]
    ld [$cccb], a
    call Call_000_3268
    ld a, [$cccf]
    ld [$b92d], a
    ld a, [$ccd0]
    ld [$b92e], a
    ld a, [$ccd1]
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

Jump_000_0fdf:
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
    ld [$ccca], a
    ld a, [$b93b]
    ld [$cccb], a

Call_000_1040:
Jump_000_1040:
    call Call_000_3268
    ld a, [$cccf]
    ld [$b930], a
    ld a, [$ccd0]
    ld [$b931], a
    ld a, [$ccd1]

Jump_000_1052:
    ld [$b932], a
    ret


Call_000_1056:
    ld a, [$b8f1]
    cp $ff
    jr z, jr_000_108d

Jump_000_105d:
    ld a, [$b8f1]
    cp $02
    jr nc, jr_000_107c

    cp $01
    jr c, jr_000_1097

    ld a, [$b8f0]
    cp $87
    jr nc, jr_000_107c

    cp $86
    jr c, jr_000_1097

    ld a, [$b8ef]
    cp $a0
    jr nc, jr_000_107c

    jr jr_000_1097

jr_000_107c:
    ld a, $9f
    ld [$b8ef], a
    ld a, $86
    ld [$b8f0], a
    ld a, $01
    ld [$b8f1], a
    jr jr_000_1097

jr_000_108d:
    xor a
    ld [$b8ef], a
    ld [$b8f0], a
    ld [$b8f1], a

jr_000_1097:
    ld a, [$b8f1]
    ld [$cccc], a
    ld a, [$b8f0]
    ld [$cccb], a
    ld a, [$b8ef]
    ld [$ccca], a
    call Call_000_3268
    ld a, [$cccd]
    ld [$b928], a
    ld a, [$ccce]
    ld [$b929], a
    ld a, [$cccf]
    ld [$b92a], a
    ld a, [$ccd0]
    ld [$b92b], a
    ld a, [$ccd1]
    ld [$b92c], a
    ret


Call_000_10cb:
    ld a, [$b93d]
    ld l, a
    ld a, [$b93e]
    ld h, a
    call Call_000_325c
    ld a, [$cccd]
    ld [$b933], a
    ld a, [$ccce]

Jump_000_10df:
    ld [$b934], a
    ld a, [$cccf]
    ld [$b935], a
    ld a, [$ccd0]
    ld [$b936], a

Call_000_10ee:
Jump_000_10ee:
    ld a, [$ccd1]
    ld [$b937], a
    ret


Call_000_10f5:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11

Call_000_10fc:
    ld [MBC3RomBank], a

Jump_000_10ff:
    ld a, [$b911]

Jump_000_1102:
    cp $00

Call_000_1104:
    jr z, jr_000_110f

    cp $01
    jr z, jr_000_1114

    ld de, $6881
    jr jr_000_1119

jr_000_110f:
    ld de, $6929
    jr jr_000_1119

jr_000_1114:
    ld de, $68d5
    jr jr_000_1119

jr_000_1119:
    ld a, $0d
    ld c, $80
    call Call_000_0a19
    ld bc, $a000
    add hl, bc
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, $06

jr_000_112e:
    ld b, $0e
    push hl

jr_000_1131:
    ld a, [de]

Call_000_1132:
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_1131

    pop hl
    push de
    ld de, $0080
    add hl, de
    pop de
    dec c

Call_000_113f:
    jr nz, jr_000_112e

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
    call Call_000_0cce
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
    ld hl, $b93f
    call Call_000_1f64
    ld hl, $ba35
    call Call_000_1f64
    pop de
    pop hl
    ret


Call_000_11c2:
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, $11
    ld [MBC3RomBank], a
    ld a, [$b911]
    cp $00
    jr z, jr_000_11e5

    cp $01
    jr z, jr_000_11f3

    ld hl, $6fa9
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    jr jr_000_11ff

jr_000_11e5:
    ld hl, $7251
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig
    jr jr_000_11ff

jr_000_11f3:
    ld hl, $70fd
    ld de, $d800
    ld bc, $0154
    call CopyHLtoDEBig

Call_000_11ff:
jr_000_11ff:
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

Outer_loop2:
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

Call_000_133f:
    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

Call_000_1348:
    dec b
    jr nz, Outer_loop2

    ld hl, sMapObjectLocation + 64
    ld de, $5c41
    ld b, $31

Outer_loop3:
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

Jump_000_1360:
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, Outer_loop3

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

Jump_000_1420:
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

Call_000_1430:
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

Jump_000_147d:
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

Call_000_14f8:
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
    ld hl, $c602

Call_000_1520:
    cp [hl]
    ret z

Call_000_1522:
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a

Call_000_1528:
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

Call_000_153e:
Jump_000_153e:
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

Call_000_1557:
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

Jump_000_15ee:
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

Jump_000_1603:
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
    ld a, [$c0a7]
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
    ld a, [$c0a7]
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


Call_000_1658:
    rst $08
    db $e4
    ld d, l
    ld b, $30
    ld d, [hl]
    ld b, $77
    ld d, [hl]
    ld b, $9e
    ld d, [hl]
    ld b, $a7
    ld d, [hl]
    ld b, $ce
    ld d, [hl]
    ld b, $d7
    ld d, [hl]
    ld b, $e0
    ld d, [hl]
    ld b, $e9
    ld d, [hl]
    ld b, $f2
    ld d, [hl]
    ld b, $fb
    ld d, [hl]
    ld b, $04
    ld d, a
    ld b, $0d
    ld d, a
    ld b, $16
    ld d, a
    ld b, $1f
    ld d, a
    ld b, $28
    ld d, a
    ld b, $31
    ld d, a
    ld b, $3a
    ld d, a
    ld b, $43
    ld d, a
    ld b, $4c
    ld d, a
    ld b, $55
    ld d, a
    ld b, $5e
    ld d, a
    ld b, $67
    ld d, a
    ld b, $70
    ld d, a
    ld b, $79
    ld d, a
    ld b, $82
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $8b
    ld d, a
    ld b, $94
    ld d, a
    ld b, $9d
    ld d, a
    ld b, $a3
    ld d, a
    ld b, $a9
    ld d, a
    ld b, $af
    ld d, a
    ld b, $b5
    ld d, a
    ld b, $bb
    ld d, a

Call_000_16d0:
    ld b, $ea
    inc a
    cp c
    push hl
    push af
    ld l, $8e
    ld h, $6f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, [$b93c]
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

Call_000_16f9:
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

Jump_000_170a:
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

Call_000_17b8:
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

Call_000_1830:
Jump_000_1830:
    ld [hl], h
    ld b, $1b
    ld [hl], l
    ld b, $99
    ld [hl], l
    ld b, $17
    halt
    ld b, $4e

Jump_000_183c:
    halt
    ld b, $cc

Call_000_183f:
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
    ld a, [wHeldItem]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    ld a, [$cb8b]
    or a
    ret nz

    ld a, $42
    call Call_000_25cb
    ld a, $38
    ld [$c912], a
    ld a, $21
    call Call_000_151d
    ld a, [sItemSlot]
    inc a
    cp $03 ; third item (always empty hands right?)
    jr nz, jr_000_194a

    xor a

jr_000_194a:
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

    call $16d1
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
    call Call_000_0a19
    ld de, $9800
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
    ld a, [$cb84]
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


CheckIfNoEnergy:
    ld a, [sPlayerEnergy]
    or a
    jp z, Jump_000_1aae

    sub b

Call_000_19ff:
    ld [sPlayerEnergy], a
    jr nc, jr_000_1a08

Jump_000_1a04:
    xor a

Call_000_1a05:
    ld [sPlayerEnergy], a

jr_000_1a08:
    ld a, [sPlayerEnergy]
    ld c, a
    ld a, b
    cp $01
    jr z, jr_000_1a19

    cp $02
    jr z, jr_000_1a3a

    jp Jump_000_1a65


    ret


jr_000_1a19:
    ld hl, $1aba
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

Jump_000_1a27:
    ld a, [hl+]

Call_000_1a28:
    cp c
    jr z, jr_000_1a9c

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa2

    ld a, [hl+]
    cp c
    jp z, Jump_000_1aa8

    ld a, [hl]
    cp c
    jp z, Jump_000_1ab4

    ret


jr_000_1a3a:
    ld hl, $1aba
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hli]
    cp c
    jr z, jr_000_1a9c

    dec a
    cp c
    jr z, jr_000_1a9c

    ld a, [hli]
    cp c
    jr z, jr_000_1aa2

    dec a
    cp c

Jump_000_1a56:
    jr z, jr_000_1aa2

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa8

    dec a
    cp c
    jr z, jr_000_1aa8

    ld a, [hl]
    cp c
    jr z, jr_000_1ab4

    ret


Jump_000_1a65:
    ld hl, $1aba
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp c
    jr z, jr_000_1a9c

    dec a
    cp c
    jr z, jr_000_1a9c

    dec a
    cp c
    jr z, jr_000_1a9c

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa2

    dec a
    cp c
    jr z, jr_000_1aa2

    dec a
    cp c
    jr z, jr_000_1aa2

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa8

    dec a
    cp c
    jr z, jr_000_1aa8

    dec a
    cp c
    jr z, jr_000_1aa8

    ld a, [hl]
    cp c
    jr z, jr_000_1ab4

    ret


jr_000_1a9c:
    ld a, $b4
    ld [$cb91], a
    ret


jr_000_1aa2:
    ld a, $6e
    ld [$cb91], a
    ret


Jump_000_1aa8:
jr_000_1aa8:
    ld a, $50
    ld [$cb91], a
    ret


Jump_000_1aae:
    pop hl
    ld a, $01
    ld [$c912], a

Jump_000_1ab4:
jr_000_1ab4:
    ld a, $a0
    ld [$cb91], a
    ret


    ld [hl-], a
    ld hl, $0011
    scf
    dec h
    ld [de], a
    nop
    inc a
    jr z, jr_000_1ad9

    nop
    ld b, c
    dec hl
    ld d, $00
    ld b, [hl]
    cpl
    jr jr_000_1ace

jr_000_1ace:
    ld c, e
    ld [hl-], a
    add hl, de
    nop
    ld d, b
    dec [hl]
    dec de
    nop
    ld d, l
    add hl, sp
    inc e

jr_000_1ad9:
    nop
    ld e, d
    inc a
    ld e, $00
    ld e, a
    ccf
    jr nz, jr_000_1ae2

jr_000_1ae2:
    ld h, h
    ld b, e
    ld hl, $fa00

Jump_000_1ae7:
    db $ed
    cp b
    add b
    jr c, jr_000_1af7

    ld [sPlayerEnergy], a

Jump_000_1aef:
    ld b, a
    ld a, [$b8ee]

Call_000_1af3:
    cp b
    jr c, jr_000_1af7

    ret


jr_000_1af7:
    ld a, [$b8ee]
    ld [sPlayerEnergy], a
    ret


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
    call $1ae6
    ret


jr_000_1b14:
    ld b, $14
    call $1ae6
    ret


jr_000_1b1a:
    ld b, $0a
    call $1ae6
    ret


    dec bc
    inc c
    dec c
    ld c, $13
    inc d
    ld d, $15
    nop
    ld [$0a09], sp
    ld [de], a
    ld [de], a
    ld d, d
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, e
    ld d, h

Jump_000_1b3c:
    ld d, l
    db $10
    ld de, $2212
    inc e
    inc h
    dec h
    ld e, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rlca
    jr z, jr_000_1b6e

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rlca
    ld a, [de]
    ld h, $26
    ld e, $2b
    xor a
    xor a
    xor a
    xor a

Call_000_1b65:
    xor a
    xor a
    xor a
    xor a
    nop
    ld sp, $afaf
    xor a

jr_000_1b6e:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [de], a
    ld l, $29
    ld e, $2b
    xor a
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    dec h
    ld e, $af
    xor a
    ld [de], a
    ld l, $29
    ld e, $2b
    xor a
    rlca
    jr z, jr_000_1bac

    xor a
    xor a
    xor a
    xor a
    xor a
    ld [de], a
    ld l, $29
    ld e, $2b
    xor a
    rlca
    ld a, [de]
    ld h, $26
    ld e, $2b
    xor a
    xor a
    ld [de], a
    ld l, $29
    ld e, $2b
    xor a
    nop
    ld sp, $afaf
    xor a

jr_000_1bac:
    xor a
    xor a
    xor a
    ld [bc], a
    jr z, jr_000_1be2

    xor a
    inc c
    ld e, $1d
    ld [hl+], a
    inc e
    ld [hl+], a
    daa
    ld e, $af
    xor a
    inc c
    ld [hl+], a
    dec h
    inc h
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld bc, $2e2b
    inc l
    ld hl, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, $1a
    dec l
    ld e, $2b
    xor a
    ld [bc], a
    ld a, [de]
    daa

jr_000_1be2:
    ld c, h
    xor a
    xor a
    xor a
    xor a

Call_000_1be7:
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    xor a

Call_000_1bff:
jr_000_1bff:
    xor a
    xor a
    xor a
    xor a
    rrca
    ld c, h
    inc c
    ld e, $1d

Call_000_1c08:
    ld [hl+], a

Jump_000_1c09:
    inc e
    ld [hl+], a
    daa
    ld e, $af
    xor a
    xor a
    xor a
    inc c
    ld c, h
    rrca
    jr z, jr_000_1c43

    ld [hl+], a
    jr z, jr_000_1c40

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a

Jump_000_1c20:
    jr z, @+$32

    xor a
    ld bc, $251e
    dec h
    xor a
    xor a
    xor a

Call_000_1c2a:
    xor a

Call_000_1c2b:
    xor a
    xor a

Call_000_1c2d:
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    xor a
    ld [de], a
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    xor a
    inc de

Jump_000_1c3c:
    ld l, $2b
    daa
    ld [hl+], a

jr_000_1c40:
    add hl, hl
    xor a
    ld [de], a

jr_000_1c43:
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    rrca
    jr z, jr_000_1c79

    ld a, [de]
    dec l
    jr z, jr_000_1bff

    ld [de], a

Jump_000_1c51:
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    inc de
    jr z, jr_000_1c80

    ld a, [de]

Call_000_1c5b:
    dec l
    jr z, @-$4f

    ld [de], a
    ld e, $1e

Jump_000_1c61:
    dec e

Jump_000_1c62:
    inc l
    xor a
    xor a

Call_000_1c65:
    ld [bc], a
    jr z, jr_000_1c93

    daa
    xor a
    ld [de], a
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    xor a
    xor a
    inc b
    jr nz, jr_000_1c96

    add hl, hl
    dec h
    ld a, [de]

jr_000_1c79:
    daa
    dec l
    xor a
    ld [de], a
    ld e, $1e
    dec e

jr_000_1c80:
    inc l
    rrca
    ld e, $1a
    daa
    ld l, $2d
    xor a
    ld [de], a
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    ld [bc], a
    ld a, [de]
    dec hl
    dec hl

jr_000_1c93:
    jr z, jr_000_1cc2

    xor a

jr_000_1c96:
    ld [de], a
    ld e, $1e
    dec e
    inc l
    xor a
    xor a
    ld bc, $282b
    inc e
    inc e
    jr z, jr_000_1cc9

    ld [hl+], a
    xor a
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rrca
    ld [hl+], a
    inc e
    inc h
    xor a
    nop
    ld sp, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    inc d
    ld h, $1b
    dec hl
    ld e, $25
    dec h
    ld a, [de]
    xor a

jr_000_1cc2:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec b
    ld [hl+], a

jr_000_1cc9:
    inc l
    ld hl, $2722
    jr nz, @-$4f

    ld de, $1d28
    xor a
    xor a
    xor a
    ld [bc], a
    jr z, jr_000_1d08

    xor a
    dec b
    ld e, $1e
    dec e
    xor a
    xor a
    xor a

Call_000_1ce0:
    xor a
    xor a

Call_000_1ce2:
    xor a
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    xor a
    dec b
    ld e, $1e
    dec e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

Call_000_1cfa:
    xor a
    xor a
    xor a

Jump_000_1cfd:
    xor a
    xor a

Call_000_1cff:
Jump_000_1cff:
    ld a, [$c0a7]
    cp $26
    ret z

    cp $27
    ret z

jr_000_1d08:
    cp $29

Jump_000_1d0a:
    ret z

    ld a, [$b882]
    cp $11
    ret nc

    cp $06
    ret c

    ld hl, $b93f
    call Call_000_1f64
    ld hl, $ba35
    call Call_000_1f64
    ld a, [$b93c]

Call_000_1d23:
    ld hl, $1d4e
    call Call_000_0a3e
    ld d, h
    ld e, l
    ld a, [$b93d]
    ld l, a
    ld a, [$b93e]
    ld h, a
    add hl, de
    ld a, h
    cp $c3
    jr c, jr_000_1d42

    ld a, l
    cp $50
    jr c, jr_000_1d42

    ld l, $50
    ld h, $c3

jr_000_1d42:
    ld a, l
    ld [$b93d], a
    ld a, h
    ld [$b93e], a
    call Call_000_10cb
    ret


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
    sub [hl]
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    ld e, [hl]
    ld bc, $0000
    ld a, [$0000]
    nop
    sub [hl]
    nop
    nop
    nop
    ld b, [hl]
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
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    ld bc, $012c
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

Call_000_1e00:
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
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    inc a
    nop
    ld d, b
    nop
    sub [hl]
    nop

Call_000_1e28:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call Call_000_0a3e
    ld a, [$cc76]
    call Call_000_0a3e
    ldh a, [$ffac]
    ld e, a
    ldh a, [$ffad]
    ld d, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $1f14
    ld a, [$cc76]
    call Call_000_0a3e
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
    call Call_000_0a3e
    ld a, [$cc78]
    call Call_000_0a3e
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
    call Call_000_0a3e
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

Call_000_1f28:
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

Call_000_1f64:
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, jr_000_1f77

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, jr_000_1f78

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    jr jr_000_1f79

jr_000_1f77:
    inc hl

jr_000_1f78:
    inc hl

jr_000_1f79:
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
    ld [hl+], a
    ld a, $86

Jump_000_1f8c:
    ld [hl+], a
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
    call Call_000_0da9
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
    call Call_000_0da9
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

Jump_000_20fc:
jr_000_20fc:
    ld [$cb13], a

Jump_000_20ff:
    ld a, $10
    add b
    ld b, a

Call_000_2103:
Jump_000_2103:
    ld a, $08

Jump_000_2105:
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

Jump_000_2160:
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h
    pop hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_000_216c:
    ld e, a
    ld d, $00

Call_000_216f:
    ld l, a
    ld h, $00
    add hl, hl

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
    ld a, [hl]
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

Call_000_2200:
Jump_000_2200:
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


Call_000_2242:
    ld c, $80
    ld b, $0a
    ld hl, $2250

jr_000_2249:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_2249

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_2256:
    dec a
    jr nz, jr_000_2256

    ret


Call_000_225a:
    ld hl, rLCDC
    bit rLCDC_ENABLE, [hl]
    ret z

; if LCD is enabled, turn off vblank interrupt?
    ldh a, [rIE]
    push af
    res rIE_VBLANK, a
    ldh [rIE], a

Wait:
    ldh a, [rLY]

Jump_000_2269:
    cp LY_VBLANK
    jr nz, Wait

    res rLCDC_ENABLE, [hl]
    pop af
    ldh [rIE], a
    ret


Call_000_2273:
    ld a, [$c0a2]
    ldh [rLCDC], a

Jump_000_2278:
    ret


    xor a
    ldh [rIF], a
    ld a, [$c0a0]
    ldh [rIE], a
    ret


Call_000_2282:
Jump_000_2282:
jr_000_2282:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2282

    ret


Call_000_228a:
    ld hl, $9bff

jr_000_228d:
    ld bc, $0400

jr_000_2290:
    ld a, $00
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2290

    ret


Call_000_2299:
    ld hl, $9fff
    jr jr_000_228d

Call_000_229e:
    ld hl, $9bff
    ld bc, $0400

jr_000_22a4:
    ldh a, [$ffa4]
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_22a4

    ret


jr_000_22ad:
    inc de
    ld h, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    and $3f
    ld b, a
    ld a, c
    rlca
    rlca
    and $03
    jr z, jr_000_22d3

    dec a
    jr z, jr_000_22e2

    dec a

Call_000_22c3:
    jr z, jr_000_22ea

jr_000_22c5:
    ld a, [de]
    ld [hl], a
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_22c5

    inc de
    jr jr_000_22d9

jr_000_22d3:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_22d3

Call_000_22d9:
jr_000_22d9:
    xor a

Jump_000_22da:
    ld [$cb75], a

Call_000_22dd:
    ld a, [de]
    or a
    jr nz, jr_000_22ad

    ret


jr_000_22e2:
    ld a, [de]
    inc de

jr_000_22e4:
    ld [hl+], a
    dec b
    jr nz, jr_000_22e4

    jr jr_000_22d9

jr_000_22ea:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_22ea

    jr jr_000_22d9

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


Call_000_2308:
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
    ld a, [hl+]
    cp $ff
    jr z, jr_000_2341

    ld [de], a
    inc de
    dec bc

Jump_000_233c:
    ld a, b
    or c
    jr nz, jr_000_2334

    ret


jr_000_2341:
    ld a, [hli]
    ldh [$ffa4], a
    ld a, [hli]
    push hl

Call_000_2346:
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

Call_000_23ff:
    ld a, $10
    jr nz, jr_000_2405

Jump_000_2403:
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

Jump_000_2461:
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


    adc c
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
    adc c
    ld bc, $0000
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
    push de
    push hl
    call Call_000_225a
    pop hl
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    call CopyHLtoDEBig
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $9800
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
    call Call_000_225a
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
    ld hl, $9800
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

Call_000_2531:
    xor a
    ldh [rNR51], a
    ld [$d397], a
    ld a, $77
    ldh [rNR50], a
    ld hl, $d300
    ld b, $06
    ld a, $ff

jr_000_2542:
    ld [hl], a
    ld de, $0017
    add hl, de
    ld [hl], a
    ld de, $0002
    add hl, de
    dec b
    jr nz, jr_000_2542

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

Call_000_25de:
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
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
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

Call_000_2638:
    pop bc
    ret


Call_000_263a:
    ld a, [MBC3SRamBank] ; is this something like wBankToLoad?
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

jr_000_265a:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_265a

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

Jump_000_273c:
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

Call_000_28de:
jr_000_28de:
    ldh [$fffa], a
    jp Jump_000_277a


jr_000_28e3:
    cp $a6
    jr nz, jr_000_28ed

    ld a, [hl+]

Call_000_28e8:
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

Call_000_28fe:
    ld b, a

Jump_000_28ff:
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

Jump_000_2925:
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

Call_000_2a38:
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


    call nc, $6407
    rlca
    ld sp, hl
    ld b, $95
    ld b, $37
    ld b, $dd
    dec b
    adc c
    dec b
    ld a, [hl-]
    dec b
    ldh a, [rDIV]
    xor b
    inc b
    ld h, l
    inc b
    ld h, $04
    sbc h
    rlca

Call_000_2baf:
    ld l, $07
    rst $00
    ld b, $66
    ld b, $0a
    ld b, $b3
    dec b
    ld h, c
    dec b
    dec d
    dec b
    call z, $8604
    inc b
    ld b, l
    inc b
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_2bcc:
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_2c13

    jr nz, jr_000_2c15

    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2c21

Call_000_2c01:
    jr nz, jr_000_2c33

    jr nc, jr_000_2c35

    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_2c2d

    jr nz, jr_000_2c2f

    jr nc, jr_000_2c41

    jr nc, jr_000_2c43

jr_000_2c13:
    ld b, b
    ld b, b

jr_000_2c15:
    nop
    nop
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2c4e

    jr nc, jr_000_2c50

Call_000_2c20:
    ld b, b

jr_000_2c21:
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2c5d

jr_000_2c2d:
    jr nc, jr_000_2c6f

jr_000_2c2f:
    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_2c33:
    ld h, b
    ld h, b

jr_000_2c35:
    nop
    nop
    db $10

Call_000_2c38:
    db $10
    jr nz, @+$22

    jr nc, jr_000_2c6d

    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_2c41:
    ld h, b
    ld h, b

jr_000_2c43:
    ld [hl], b
    ld [hl], b
    nop
    db $10
    db $10
    jr nz, jr_000_2c6a

    jr nc, jr_000_2c7c

    ld b, b
    ld b, b

jr_000_2c4e:
    ld d, b
    ld d, b

jr_000_2c50:
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    nop
    db $10
    db $10
    jr nz, jr_000_2c7a

    jr nc, jr_000_2c9c

    ld b, b

jr_000_2c5d:
    ld d, b
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    add b
    sub b
    nop
    db $10
    db $10
    jr nz, @+$32

jr_000_2c6a:
    jr nc, jr_000_2cac

    ld d, b

jr_000_2c6d:
    ld d, b
    ld h, b

jr_000_2c6f:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    sub b
    and b
    nop
    db $10
    db $10
    jr nz, jr_000_2caa

jr_000_2c7a:
    ld b, b
    ld b, b

jr_000_2c7c:
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    nop
    db $10
    jr nz, jr_000_2ca9

    jr nc, jr_000_2ccb

    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    nop
    db $10
    jr nz, @+$32

    jr nc, @+$42

    ld d, b

jr_000_2c9c:
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    ret nc

    nop
    db $10
    jr nz, jr_000_2cd9

jr_000_2ca9:
    ld b, b

jr_000_2caa:
    ld d, b
    ld h, b

jr_000_2cac:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [rP1], a
    db $10
    jr nz, jr_000_2ce9

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$fff0], a
    nop
    nop
    ld bc, $0001
    nop

jr_000_2ccb:
    rst $38
    rst $38
    nop
    nop
    ld bc, $0001

Call_000_2cd2:
    nop
    rst $38
    rst $38
    nop

Call_000_2cd6:
    nop

Jump_000_2cd7:
    nop
    nop

jr_000_2cd9:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0102

jr_000_2ce9:
    nop
    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop

Call_000_2cf2:
    rst $38
    cp $ff
    nop

Call_000_2cf6:
    nop
    ld bc, $0201

Call_000_2cfa:
    ld [bc], a
    ld bc, $0001

Call_000_2cfe:
    nop

Call_000_2cff:
Jump_000_2cff:
    rst $38
    rst $38

Jump_000_2d01:
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

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
    ld bc, $0840
    ld c, e
    ld a, c
    ld [de], a
    add d
    ld d, d
    ld [$5375], sp
    ld [$555e], sp
    ld [$5a38], sp
    ld [$78ed], sp
    ld [de], a
    inc de
    ld h, h
    ld [$6413], sp
    ld [$676e], sp
    dec b
    scf
    ld e, a
    dec b
    adc e
    ld h, c
    dec b
    inc de
    ld h, h
    ld [$5525], sp
    ld [$6413], sp
    ld [$5538], sp
    ld [$5521], sp
    ld [$5522], sp
    ld [$5523], sp
    ld [$5524], sp
    ld [$6413], sp
    ld [$6413], sp
    ld [$6413], sp
    ld [$6413], sp
    ld [$5f37], sp
    dec b

Call_000_2df2:
    ld a, [MBC3SRamBank]
    push af
    push hl
    ld a, [hl+]

Call_000_2df8:
    and $01
    jp z, Jump_000_2f4e

    ld a, [hli]
    ldh [$ffa4], a

Call_000_2e00:
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [hl+]
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

Call_000_2f3f:
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

Jump_000_2f4f:
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

    ld a, [$b8ec]
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

Jump_000_3001:
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

Call_000_3033:
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

Call_000_30cc:
    inc hl
    inc hl

Call_000_30ce:
    ld d, [hl]
    ld a, [MBC3SRamBank]
    ldh [hROMBankTemp], a
    ld a, d
    add $fb
    ld [MBC3RomBank], a
    dec hl
    dec hl

Call_000_30dc:
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

Call_000_30ee:
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [$cb60], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00

Call_000_30fc:
    add hl, de
    add hl, de

Call_000_30fe:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20e1
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


    ld bc, $1240
    ld bc, $1440
    ld bc, $1440
    ld bc, $1440
    db $ed
    ld [hl], d
    dec bc
    adc $6b
    rla
    rst $38
    ld h, d
    rrca
    push de
    ld d, [hl]
    db $10
    ld a, [$0a7a]
    sbc a
    ld [hl], b
    inc de
    ld bc, $1760
    inc d
    ld h, b
    inc de
    ld bc, $0a40
    ld h, l
    ld c, b
    dec b
    ld e, c
    ld l, d
    inc d
    ld l, $68
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    adc l
    ld h, h
    rla
    ld bc, $3240
    ld bc, $3440
    ld bc, $3440
    ld bc, $3440
    di
    ld [hl], e
    dec hl
    and $6b
    scf
    nop
    ld h, e
    cpl
    ld b, b
    ld d, [hl]
    jr nc, jr_000_319e

    ld a, e
    ld a, [hl+]
    sbc a
    ld [hl], b
    inc sp
    ld bc, $3760
    inc d
    ld h, b
    inc sp
    ld bc, $2a40
    adc $47
    dec h
    ld e, c
    ld l, d
    inc [hl]
    ld l, $68
    inc [hl]
    add a
    ld d, l
    inc [hl]
    add a
    ld d, l
    inc [hl]
    add a
    ld d, l
    inc [hl]
    add a
    ld d, l
    inc [hl]
    add a
    ld h, h
    inc [hl]
    add a
    ld h, h
    inc [hl]
    add a
    ld h, h
    inc [hl]
    add a
    ld h, h
    inc [hl]
    adc l

jr_000_319e:
    ld h, h
    scf

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

    ld a, [hl+]
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

Jump_000_31f1:
    ldh a, [$ffb9]
    cp b
    jr c, jr_000_3218

    jr nz, jr_000_31ff

    ldh a, [$ffb8]
    cp c
    jr c, jr_000_3218

    jr z, jr_000_3218

Call_000_31ff:
jr_000_31ff:
    ld a, c

Call_000_3200:
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

Call_000_3230:
    ld a, e
    cp c
    jr nc, jr_000_3237

jr_000_3234:
    pop bc
    jr jr_000_31bc

jr_000_3237:
    pop bc

Jump_000_3238:
    pop af
    ld [MBC3RomBank], a
    ret


Call_000_323d:
    ld b, $a0
    ld a, $00
    ld hl, $c000

jr_000_3244:
    ld [hl+], a
    dec b
    jr nz, jr_000_3244

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
    ld [$cccb], a
    ld a, l
    ld [$ccca], a
    xor a
    ld [$cccc], a

Call_000_3268:
Jump_000_3268:
    xor a
    ld hl, $cccd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $ccca
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cccd
    ld a, [$cccc]
    or a
    jr z, jr_000_3288

    ld bc, $63c0
    add hl, bc
    ld a, [de]

Jump_000_3285:
    add $04
    ld [de], a

jr_000_3288:
    ld bc, $d8f0
    ld a, [de]

jr_000_328c:
    inc a
    add hl, bc
    jr c, jr_000_328c

    ld bc, $2710
    add hl, bc
    dec a
    ld [de], a
    ld bc, $fc18
    inc de
    ld a, [de]

jr_000_329b:
    inc a
    add hl, bc
    jr c, jr_000_329b

    ld bc, $03e8
    add hl, bc
    dec a
    ld [de], a
    ld bc, $ff9c
    inc de
    ld a, [de]

jr_000_32aa:
    inc a
    add hl, bc
    jr c, jr_000_32aa

    ld bc, $0064
    add hl, bc
    dec a
    ld [de], a
    ld bc, $fff6
    inc de
    ld a, [de]

jr_000_32b9:
    inc a
    add hl, bc
    jr c, jr_000_32b9

    ld bc, $000a
    add hl, bc
    dec a
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $32fa
    ld de, $cccd
    ld c, $04

jr_000_32ce:
    ld a, [de]
    or a
    jr nz, jr_000_32dd

    push af
    ld a, $af
    ld [de], a
    pop af
    inc de
    dec c
    jr z, jr_000_32f0

    jr jr_000_32ce

jr_000_32dd:
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
    jr z, jr_000_32f0

    jr jr_000_32dd

jr_000_32f0:
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    ret


    inc [hl]
    dec [hl]
    ld [hl], $37

Call_000_32fe:
    jr c, jr_000_3339

    ld a, [hl-]
    dec sp
    inc a
    dec a

Call_000_3304:
    ld [$ccca], a
    xor a
    ld [$cccb], a
    ld [$cccc], a
    jp Jump_000_3268


Jump_000_3311:
    push af
    push bc
    push de
    push hl
    ld a, [$c0a7]
    ld e, a
    add a
    add e
    ld e, a
    ld d, $00
    ld hl, $3345
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc hl
    ld a, [MBC3SRamBank]
    push af
    ld a, [hl]
    ld [MBC3RomBank], a
    ld l, e
    ld h, d
    call Call_000_3344
    pop af
    ld [MBC3RomBank], a
    pop hl
    pop de

jr_000_3339:
    ldh a, [rLY]
    ld c, a

.wait
    ldh a, [rLY]
    cp c
    jr z, .wait

    pop bc
    pop af
    reti


Call_000_3344:
    jp hl


    jp Jump_000_0033


    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    jr nc, @+$49

    ld b, $c3
    inc sp
    nop
    ld d, l
    ld a, b

Call_000_335f:
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    ld d, l
    ld a, b
    rra
    jp Jump_000_0033


    jp Jump_000_0033


    ld d, l
    ld a, b
    rra
    ld e, h
    ld b, e
    dec e
    ld [hl], l
    ld b, [hl]
    dec e
    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    and [hl]
    ld c, [hl]
    ld b, $c3
    inc sp
    nop
    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    jp Jump_000_0033


    ld d, l
    ld a, b
    rra
    jp Jump_000_0033


    ld d, l
    ld a, b
    rra
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


    ld bc, $0745
    inc l
    ld b, l
    rlca
    ld d, a

Call_000_3428:
    ld b, l
    rlca
    ld d, a
    ld b, l
    rlca
    xor l
    ld b, l
    rlca
    ret c

    ld b, l
    rlca
    inc bc

Jump_000_3434:
    ld b, [hl]
    rlca
    inc bc
    ld b, [hl]
    rlca
    ld l, $46
    rlca
    add h
    ld b, [hl]
    rlca
    jr nc, jr_000_3488

    rlca
    add [hl]
    ld b, a
    rlca
    jp nc, $0747

    jr z, jr_000_3492

    rlca
    xor c
    ld c, b
    rlca
    rst $38
    ld c, b
    rlca
    ld d, l
    ld c, c
    rlca
    sub $49
    rlca
    inc l
    ld c, d
    rlca
    add d
    ld c, d
    rlca
    ret c

    ld c, d
    rlca
    ret c

    ld c, d
    rlca
    jp c, Jump_000_074b

    ld e, e
    ld c, h
    rlca
    or c
    ld c, h
    rlca
    rlca
    ld c, l
    rlca
    rlca
    ld c, l
    rlca
    ld [hl-], a
    ld c, l
    rlca
    ld e, l
    ld c, l
    rlca
    adc b
    ld c, l
    rlca

Call_000_347b:
    or e
    ld c, l

Jump_000_347d:
    rlca
    or l
    ld c, [hl]
    rlca
    ld h, c
    ld c, a
    rlca
    or a
    ld c, a
    rlca
    cp c

jr_000_3488:
    ld d, b
    rlca
    and $51
    rlca
    ld h, a
    ld d, d
    rlca
    inc de
    ld d, e

jr_000_3492:
    rlca
    sub h
    ld d, e
    rlca
    pop bc
    ld d, h
    rlca
    jp $0755


    add hl, de
    ld d, [hl]
    rlca
    ldh a, [c]
    ld d, a
    rlca
    sbc [hl]
    ld e, b
    rlca
    inc hl
    ld e, e
    rlca
    inc hl
    ld e, e
    rlca
    ld d, b
    ld e, h
    rlca
    ld d, h
    ld e, [hl]
    rlca
    ld e, b
    ld h, b
    rlca
    add l
    ld h, c
    rlca
    db $db
    ld h, c
    rlca
    adc c
    ld h, e
    rlca
    ld a, [bc]
    ld h, h
    rlca
    pop hl
    ld h, h
    rlca
    scf
    ld h, l
    rlca
    ld h, h
    ld h, [hl]
    rlca
    db $10

Call_000_34ca:
    ld h, a

Jump_000_34cb:
    rlca
    sub c
    ld h, a
    rlca
    cp [hl]
    ld l, b
    rlca
    ld l, d
    ld l, c
    rlca
    db $eb
    ld l, c
    rlca
    rst $28
    ld l, e
    rlca
    ld a, [de]
    ld l, h
    rlca
    ld [hl], b
    ld l, h

Jump_000_34e0:
    rlca
    sbc e
    ld l, h
    rlca
    inc e
    ld l, l
    rlca
    ld b, a
    ld l, l
    rlca
    ld [hl], d
    ld l, l
    rlca
    ld e, c
    ld c, e
    rlca
    and c
    ld l, a
    rlca
    ld [hl+], a

Call_000_34f4:
    ld [hl], b
    rlca
    xor a
    ld c, e
    rlca
    ld b, l
    ld l, h
    rlca
    add $6c
    rlca
    pop af
    ld l, h

Jump_000_3501:
    rlca
    sbc l
    ld l, l
    rlca
    ret z

    ld l, l
    rlca
    di
    ld l, l
    rlca
    ld e, $6e
    rlca
    ld c, c
    ld l, [hl]
    rlca
    ld [hl], h
    ld l, [hl]
    rlca
    sbc a
    ld l, [hl]
    rlca
    jp z, Jump_000_076e

    db $f4
    ld e, b
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca

Call_000_3532:
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de

Jump_000_35c0:
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l

Jump_000_35f4:
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de
    ld [hl], l
    rlca
    pop de

Jump_000_35ff:
    ld [hl], l
    rlca
    inc hl
    ld b, e
    ld a, [bc]
    ld a, c
    ld b, e
    ld a, [bc]
    rst $08
    ld b, e
    ld a, [bc]
    dec h
    ld b, h
    ld a, [bc]
    ld a, e
    ld b, h
    ld a, [bc]
    pop de
    ld b, h

Jump_000_3612:
    ld a, [bc]
    daa
    ld b, l
    ld a, [bc]
    ld d, d
    ld b, l
    ld a, [bc]
    xor b
    ld b, l
    ld a, [bc]
    cp $45
    ld a, [bc]
    ld d, h
    ld b, [hl]
    ld a, [bc]
    ld a, a
    ld b, [hl]
    ld a, [bc]
    push de
    ld b, [hl]
    ld a, [bc]
    dec hl
    ld b, a
    ld a, [bc]
    add c
    ld b, a
    ld a, [bc]
    rst $10
    ld b, a
    ld a, [bc]
    dec l
    ld c, b
    ld a, [bc]
    add e
    ld c, b
    ld a, [bc]
    db $db
    ld c, c
    ld a, [bc]
    ld sp, $0a4a
    or d
    ld c, d
    ld a, [bc]
    ld [$0a4b], sp
    ld e, [hl]
    ld c, e
    ld a, [bc]
    or h
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld c, h

Jump_000_364b:
    ld a, [bc]
    adc e
    ld c, h
    ld a, [bc]
    pop hl
    ld c, h
    ld a, [bc]
    scf
    ld c, l
    ld a, [bc]
    adc l
    ld c, l
    ld a, [bc]
    cp b
    ld c, l
    ld a, [bc]
    inc b
    ld c, [hl]
    ld a, [bc]
    cpl
    ld c, [hl]
    ld a, [bc]
    adc l
    ld l, l
    inc c
    rst $20
    ld l, a
    inc c
    ld d, $72
    inc c
    ld l, h
    ld [hl], d
    inc c
    db $ed
    ld [hl], d
    inc c
    ld [hl], b
    ld [hl], h
    inc c
    ld [hl], d
    ld [hl], l
    inc c
    ld [hl+], a
    ld a, b
    inc c
    adc $78
    inc c
    ld a, [bc]
    ld d, c
    ld a, [bc]
    and l
    ld a, c
    inc c
    ld h, $7a
    inc c
    ld a, h
    ld a, d
    inc c
    jp nc, $0c7a

    db $fd
    ld a, d
    inc c
    ld d, e
    ld a, e
    inc c
    xor c
    ld a, e
    inc c
    ld a, [hl+]
    ld a, h
    inc c
    add b
    ld a, h
    inc c
    or h
    ld d, b
    ld a, [bc]
    sbc e
    ld d, a
    db $10
    inc e
    ld e, b
    db $10
    ld [hl], d
    ld e, b
    db $10
    di
    ld e, b
    db $10
    ld c, c
    ld e, c
    db $10
    sbc a
    ld e, c
    db $10
    push af
    ld e, c
    db $10
    ld c, e
    ld e, d
    db $10
    and c
    ld e, d
    db $10
    ld [hl+], a
    ld e, e
    db $10
    and e
    ld e, e
    db $10
    inc h
    ld e, h
    db $10
    ld a, d
    ld e, h
    db $10
    ret nc

    ld e, h
    db $10
    ld h, $5d

Call_000_36c9:
    db $10
    ld a, h

Call_000_36cb:
    ld e, l
    db $10

Call_000_36cd:
    jp nc, Jump_000_105d

    jr z, jr_000_3730

    db $10
    call nc, $105e
    add d
    ld h, b
    db $10
    xor l
    ld h, b
    db $10
    ret c

    ld h, b
    db $10
    inc bc
    ld h, c
    db $10
    ld l, $61
    db $10
    ld e, [hl]
    ld d, b
    ld a, [bc]
    adc c
    ld d, b
    ld a, [bc]
    dec sp
    ld d, h
    ld a, [bc]
    ld h, [hl]
    ld d, h
    ld a, [bc]

Call_000_36f1:
    ld e, c
    ld h, c
    db $10

Call_000_36f4:
    ld a, [$cb14]
    or a
    ret nz

    ld a, [$cb15]
    or a
    ret nz

    ld a, [$cb16]
    or a

Call_000_3702:
Jump_000_3702:
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
    ld a, [$cb52]
    cp $ff
    jp z, Jump_000_383d

    ld a, [$cb52]
    cp $3c
    call z, Call_000_38c1
    ld a, [$cb52]
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
    ld a, [hl-]
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
    call Call_000_3f6c
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
    ld hl, $9c22
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

Call_000_37bf:
    adc h

Jump_000_37c0:
    ld h, a
    call Call_000_0a93

jr_000_37c4:
    ld hl, $cb53
    ld bc, $0001
    call Call_000_0cce
    ld hl, $cb55
    inc [hl]
    ldh a, [hROMBankTemp]
    ld [MBC3RomBank], a
    ret


jr_000_37d7:
    ld a, [$cb52]
    cp $04
    jr nz, jr_000_37e1

    call Call_000_3e1a

jr_000_37e1:
    ld a, $ff
    ld [$cb52], a
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

Jump_000_3815:
    and $01
    jr z, jr_000_3837

    call Call_000_3a18
    ld hl, $cb53
    ld bc, $0001
    call Call_000_0cce
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

Call_000_38c6:
    ret nz

    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $ff
    ld [$cb52], a
    ld a, $01
    call Call_000_3f52

Call_000_38d6:
    xor a
    ld [$cb58], a
    ld [$cb55], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb5f], a
    ld a, $ff

Call_000_38e8:
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

Call_000_38ff:
    ret z

Jump_000_3900:
    ld a, [$c0a8]

Jump_000_3903:
    and $01
    ret z

Jump_000_3906:
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

Jump_000_393c:
    ld a, [hl+]
    ld [$cb6f], a
    inc hl
    inc hl
    xor a
    ld [$cb72], a
    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [de], a
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [de], a
    ret


Call_000_396d:
    ld a, [$cb72]
    cp $00
    jr z, jr_000_39a9

    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d

Call_000_397f:
    ld d, a
    call Call_000_0da9
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $20
    jr z, jr_000_39dd

Call_000_39a0:
    call Call_000_3fae
    xor a
    ld [$cb72], a
    jr jr_000_39dd

jr_000_39a9:
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0da9
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00

Call_000_39c6:
    adc d
    ld d, a
    call Call_000_0da9
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

Jump_000_39e8:
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
    call Call_000_0a19
    ld a, l
    ld [$cb53], a
    ld a, h
    ld [$cb54], a
    call Call_000_3a18
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


Call_000_3a18:
    ld a, [$cb5c]
    ld c, a
    ld hl, $9c22
    ld b, $04

jr_000_3a21:
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld [hl+], a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3a21

    ld hl, $9c62
    ld b, $04

jr_000_3a35:
    call Call_000_0da9
    ld a, c
    ld [hli], a
    ld [hl+], a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3a35

    ld hl, $9c32
    call Call_000_0da9
    ld a, c
    ld [hl], a
    ld hl, $9c50
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld hl, $9c72
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ret


    ld [hl+], a
    sbc h
    inc l
    sbc h
    ld h, d
    sbc h
    ld l, h
    sbc h

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

    call Call_000_0da9
    ld a, [$cb5d]
    ld [$9c6d], a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_3aa6:
    call Call_000_0da9
    ld a, [$cb5d]
    ld [$9c62], a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [$9c6d], a
    ret


jr_000_3ab9:
    call Call_000_3efc
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3f0b

Jump_000_3ac7:
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

    call Call_000_0da9
    ld a, [$cb5d]
    ld [$9c6d], a
    call Call_000_0da9
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_3b19:
    call Call_000_0da9
    ld a, [$cb5d]
    ld [$9c62], a
    call Call_000_0da9
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
    ld [$cb52], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    call Call_000_3fa2
    ret


jr_000_3b54:
    call Call_000_3efc
    ld a, $01
    ld [$cb52], a
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
    call Call_000_0da9
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
    ld [$cb52], a
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

Call_000_3c38:
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e

Jump_000_3c3c:
    call Call_000_0da9
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
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3f0b

Call_000_3c68:
    xor a

Jump_000_3c69:
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
    call Call_000_1658
    ld a, $3e
    ld [$c912], a
    ld a, [$c620]
    ld [$cb87], a
    ld a, $00
    ld [$c620], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
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
    call Call_000_1658
    ld a, $3e
    ld [$c912], a
    ld a, [$c620]
    ld [$cb87], a
    ld a, $00
    ld [$c620], a
    ld a, [$b906]
    or a
    ret nz

Call_000_3ce2:
    ld a, $04
    ld [$cb52], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


Call_000_3cf2:
Jump_000_3cf2:
    ld a, $3c
    call Call_000_3f52

Jump_000_3cf7:
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
    ld a, [$cb52]
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
    ld [$cb52], a
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
    ld [$cb52], a
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
    call Call_000_1658
    call Call_000_3f0b
    ld a, $00
    ld [$cb52], a
    ld a, $03
    ld [$c912], a
    ld a, $01
    ld [$cb56], a
    ret


Call_000_3db3:
    ld a, [$c912]
    or a
    jr nz, jr_000_3deb

    ld a, [$c90d]
    or a

Jump_000_3dbd:
    jr nz, jr_000_3deb

    ld a, [$c620]
    or a
    jr nz, jr_000_3deb

    ld a, [$c640]
    or a
    jr nz, jr_000_3deb

    ld a, [$cb84]
    or a
    jr nz, jr_000_3deb

    ld a, [$cb8b]
    or a
    jr nz, jr_000_3deb

    ld a, [$c602]
    cp $04
    jr z, jr_000_3deb

    cp $05
    jr z, jr_000_3deb

    cp $06
    jr z, jr_000_3deb

    cp $07
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

Call_000_3e00:
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
    call Call_000_3f0b
    ld a, $01
    ld [$cc1b], a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb5f], a
    ret


Call_000_3e1a:
    ld hl, $9c30
    call Call_000_0da9

Call_000_3e20:
    ld a, $88
    ld [hl+], a
    inc a
    ld [hl], a
    call Call_000_0da9

Call_000_3e28:
    ld a, $8a
    ld [$9c32], a
    inc a
    ld [$9c50], a
    call Call_000_0da9
    ld a, $8c
    ld [$9c51], a
    inc a
    ld [$9c52], a

Jump_000_3e3d:
    call Call_000_0da9
    ld a, $8e
    ld [$9c70], a
    inc a
    ld [$9c71], a
    call Call_000_0da9
    ld a, $9f
    ld [$9c72], a
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
    ld hl, $1b20
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
    ld hl, $3ebc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
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
    call Call_000_0da9
    ld a, [hl+]
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
    call Call_000_0da9
    ld a, [hl+]
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


    sub b
    nop
    jr nz, jr_000_3ec1

    or b

Call_000_3ec1:
jr_000_3ec1:
    ld bc, $0240
    ld h, b

Call_000_3ec5:
    inc bc
    ldh a, [$ff03]
    add b
    inc b
    db $10
    dec b
    ret nc

    dec bc

Call_000_3ece:
    jr nc, jr_000_3edf

    nop
    db $10
    ret nc

    ld [bc], a
    and b
    dec b
    jr nc, jr_000_3ede

    ldh a, [$ff0c]
    ld h, b
    inc c
    add b
    dec c

jr_000_3ede:
    ret nz

jr_000_3edf:
    ld b, $50
    rlca
    ldh [rTAC], a
    ld [hl], b
    ld [$0900], sp
    sub b
    add hl, bc
    jr nz, jr_000_3ef6

    or b
    ld a, [bc]
    ld b, b
    dec bc
    or b
    ld de, $1090
    jr nz, jr_000_3f07

jr_000_3ef6:
    db $10
    ld c, $a0
    ld c, $00
    nop

Call_000_3efc:
jr_000_3efc:
    call Call_000_0da9
    ld a, $c3

Jump_000_3f01:
    ld [$c0a2], a
    ldh [rLCDC], a
    xor a

jr_000_3f07:
    ld [$cb4c], a

Jump_000_3f0a:
    ret


Call_000_3f0b:
    call Call_000_3a18
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    call Call_000_0da9
    ld a, $e3
    ld [$c0a2], a
    ldh [rLCDC], a

Call_000_3f20:
    ld a, $01
    ld [$cb4c], a
    ret


Call_000_3f26:
    ld a, $ff

Call_000_3f28:
    ld [$cb52], a
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
    ld [$cb52], a
    call Call_000_3f0b
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


Call_000_3f52:
    ld b, a
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, b
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    ld [$cb5f], a
    ld [$cc1b], a
    call Call_000_3f0b
    ret


Call_000_3f6c:
    ld a, [MBC3SRamBank]
    push af
    ld a, d

Jump_000_3f71:
    ld [MBC3RomBank], a
    call Call_000_3f7c
    pop af
    ld [MBC3RomBank], a
    ret


Call_000_3f7c:
    ld a, c

Jump_000_3f7d:
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc

Jump_000_3f87:
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld c, $10

jr_000_3f98:
    call Call_000_0da9
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3f98

    ret


Call_000_3fa2:
    push hl
    push de
    push bc
    ld a, $42
    call Call_000_25cb
    pop bc
    pop de

Jump_000_3fac:
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


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ff8:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ffc:
    rst $38
    rst $38
    rst $38

Call_000_3fff:
Jump_000_3fff:
    rst $38
