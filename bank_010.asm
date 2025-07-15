; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    db $10
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $f3
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $6de8
    ld c, $10
    ld de, $8800
    call Call_000_31a0
    ld hl, $6691
    ld c, $10
    ld de, $9000
    call Call_000_31a0
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    ld a, $40
    ld c, e
    ld b, b
    ld e, b
    ld b, b
    ld hl, $496f
    ld c, $10
    ld de, $8000
    call Call_000_31a0
    jr jr_010_4063

    ld hl, $4c35
    ld c, $10
    ld de, $8000
    call Call_000_31a0
    jr jr_010_4063

    ld hl, $459d
    ld c, $10
    ld de, $8000
    call Call_000_31a0

jr_010_4063:
    ld hl, $44c4
    ld c, $10
    ld de, $9800
    call Call_000_31a0
    ld a, $66
    ld [$cb5c], a
    ld a, $04
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld [$cc1d], a
    ld [$cc1c], a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld a, $1d
    ld [$cb4e], a
    call Call_010_448d
    ld a, $01
    call RST_TableJumpBankSwitch
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    ld hl, $40ad
    rst $00
    or e
    ld b, b
    cp d
    ld b, b
    pop bc
    ld b, b
    ld a, $00
    call Call_000_1850
    jr jr_010_40c6

    ld a, $06
    call Call_000_1850
    jr jr_010_40c6

    ld a, $0c
    call Call_000_1850

jr_010_40c6:
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $2a
    call Call_000_25c5
    ld hl, $40e2
    call SyncLoadSpritePalette7
    ret


    ld a, h
    ld c, [hl]
    add h
    nop
    ld l, a
    dec l
    ld a, a
    ld b, a
    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    call Call_000_0d90
    call Call_000_2d67
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc1d]
    rst $00
    dec e
    ld b, c
    cp l
    ld b, c
    dec de
    ld b, d
    ld d, d
    ld b, d
    sub b
    ld b, d
    add sp, $42
    ld c, l
    ld b, e
    adc [hl]
    ld b, e
    jp nz, $e843

    ld b, e
    ld h, $44
    ld d, h
    ld b, h
    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $f8
    jr z, jr_010_414a

    and $01
    ret nz

    ld hl, $c60a
    dec [hl]
    ld hl, $c606
    dec [hl]
    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


jr_010_414a:
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_010_4184

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $05
    jr nc, jr_010_4184

    ld a, $0b
    ld [$cc1d], a
    ld a, $04
    call Call_000_15ae
    ld a, $48
    ld [$c76a], a
    ld a, $60
    ld [$c76b], a
    jr jr_010_4189

jr_010_4184:
    ld a, $01
    ld [$cc1d], a

jr_010_4189:
    xor a
    ld [$cc1c], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    ld hl, $41a5
    rst $00
    xor e
    ld b, c
    or c
    ld b, c
    or a
    ld b, c
    ld a, $01
    call Call_000_1850
    ret


    ld a, $07
    call Call_000_1850
    ret


    ld a, $0d
    call Call_000_1850
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_010_4207

    ld a, $09
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    push af
    ld b, c
    ei
    ld b, c
    ld bc, $3e42
    dec b
    call Call_000_1850
    ret


    ld a, $0b
    call Call_000_1850
    ret


    ld a, $11
    call Call_000_1850
    ret


jr_010_4207:
    ld a, $06
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld a, $03
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c760], a
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    ld b, b
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, h
    ld b, d
    ld a, $03
    call Call_000_1850
    ret


    ld a, $09
    call Call_000_1850
    ret


    ld a, $0f
    call Call_000_1850
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    jr z, jr_010_4279

    cp $40
    ret c

    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    dec [hl]
    ret


jr_010_4279:
    ld a, $04
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c800], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ret


    ld hl, $cc1c
    ld a, [hl]
    inc [hl]
    cp $70
    jr z, jr_010_42b2

    cp $10
    jr c, jr_010_42c9

    cp $20
    jr z, jr_010_42d2

    cp $30
    jr z, jr_010_42dd

    cp $40
    jr z, jr_010_42d2

    cp $50
    jr z, jr_010_42dd

    cp $60
    jr z, jr_010_42d2

    ret


jr_010_42b2:
    ld a, $05
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c800], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_010_42c9:
    ld hl, $c60b
    inc [hl]
    ld hl, $c608
    inc [hl]
    ret


jr_010_42d2:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_010_42dd:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $40
    jr z, jr_010_430d

    ld hl, $c60a
    dec [hl]
    dec [hl]
    ld hl, $c606
    dec [hl]
    dec [hl]
    ld a, [wPlayerAnimationIndex]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_25ce
    ret


Jump_010_430d:
jr_010_430d:
    ld hl, $4314
    ld a, [$cc28]
    rst $00
    inc e
    ld b, e
    ld h, $43
    jr nc, jr_010_435d

    ld a, [hl-]
    ld b, e
    ld a, [$b953]
    set 3, a
    ld [$b953], a
    jr jr_010_4342

    ld a, [$b969]
    set 3, a
    ld [$b969], a
    jr jr_010_4342

    ld a, [$b97f]
    set 3, a
    ld [$b97f], a
    jr jr_010_4342

    ld a, [$b995]
    set 3, a
    ld [$b995], a

jr_010_4342:
    ld a, $03
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jr z, jr_010_4362

    and $01
    ret nz

    ld hl, $c60a
    dec [hl]

jr_010_435d:
    ld hl, $c606
    dec [hl]
    ret


jr_010_4362:
    ld a, $07
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    ld a, h
    ld b, e
    add d
    ld b, e
    adc b
    ld b, e
    ld a, $04
    call Call_000_1850
    ret


    ld a, $0a
    call Call_000_1850
    ret


    ld a, $10
    call Call_000_1850
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    ret nz

    ld a, $08
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    or b
    ld b, e
    or [hl]
    ld b, e
    cp h
    ld b, e
    ld a, $00
    call Call_000_1850
    ret


    ld a, $06
    call Call_000_1850
    ret


    ld a, $0c
    call Call_000_1850
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jp z, Jump_010_430d

    and $01
    ret nz

    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    ret nz

    ld a, $0a
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    inc d
    ld b, h
    ld a, [de]
    ld b, h
    jr nz, jr_010_4458

    ld a, $00
    call Call_000_1850
    ret


    ld a, $06
    call Call_000_1850
    ret


    ld a, $0c
    call Call_000_1850
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jp z, Jump_010_430d

    and $01
    ret nz

    ld hl, $c60a
    dec [hl]
    ld hl, $c606
    dec [hl]
    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


    ld hl, $cc1c
    inc [hl]

jr_010_4458:
    ld a, [hl]
    cp $98
    ret nz

    ld a, $02
    ld [$cc1d], a
    ld a, $05
    call Call_000_15ae
    xor a
    ld [$cc1c], a
    ld hl, $40ea
    ld a, [$cc28]
    call LoadWordFromTableHL
    ld a, [hl]
    rst $00
    ld a, e
    ld b, h
    add c
    ld b, h
    add a
    ld b, h
    ld a, $02
    call Call_000_1850
    ret


    ld a, $08
    call Call_000_1850
    ret


    ld a, $0e
    call Call_000_1850
    ret


Call_010_448d:
    ld hl, $44a4
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $44b4
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ret

Data_010_44a4:
    db $01, $00, $FF, $00, $00, $08, $B0, $00, $40, $00, $B0, $40, $00, $01, $01, $00,
    db $01, $0E, $FF, $00, $00, $08, $C8, $00, $48, $00, $C8, $48, $00, $01, $00, $00,
    db $00, $04, $AD, $A6, $1F, $00, $A6, $A8, $18, $00, $A7, $1F, $00, $A7, $7E, $09,
    db $02, $05, $06, $51, $52, $53, $09, $07, $05, $EF, $05, $06, $05, $06, $09, $04,
    db $15, $16, $61, $F7, $62, $63, $0A, $07, $07, $15, $16, $15, $16, $7E, $09, $06,
    db $00, $00, $71, $72, $73, $0B, $29, $09, $7E, $0B, $04, $00, $00, $19, $1A, $1B,
    db $1C, $29, $0B, $0A, $0B, $04, $01, $1F, $00, $01, $0F, $02, $0F, $02, $0F, $02,
    db $0F, $02, $B4, $0F, $02, $0F, $02, $4B, $10, $00, $20, $40, $07, $15, $24, $B7,
    db $25, $26, $1D, $0D, $02, $30, $50, $07, $17, $34, $B7, $35, $36, $1E, $0F, $04,
    db $05, $06, $E5, $13, $44, $B7, $45, $46, $1F, $0F, $04, $15, $16, $E5, $13, $0C,
    db $C7, $0D, $0E, $0F, $0F, $04, $03, $04, $C1, $17, $05, $06, $E3, $03, $04, $0F,
    db $04, $03, $04, $C1, $17, $15, $16, $13, $01, $14, $09, $1E, $EF, $1F, $0F, $20,
    db $0F, $20, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $05, $38, $00, $08, $5F, $00, $00, $10, $00,
    db $7C, $40, $00, $38, $82, $00, $80, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $0F,
    db $01, $0F, $01, $05, $01, $24, $FB, $00, $7E, $40, $00, $2E, $00, $6A, $00, $26,
    db $78, $0F, $01, $0F, $01, $0F, $01, $00, $74, $00, $5E, $C0, $01, $07, $2A, $00,
    db $5A, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $E0, $0F, $01, $0F, $01,
    db $0F, $01, $0F, $01, $0E, $01, $3C, $3F, $3E, $FF, $3F, $1F, $2F, $2F, $1F, $7B,
    db $27, $3F, $FF, $11, $33, $01, $03, $00, $07, $FE, $4E, $FF, $FC, $FE, $FC, $FC,
    db $F8, $6C, $F8, $FC, $FB, $08, $98, $E0, $12, $1C, $1F, $1E, $1F, $1F, $FF, $0F,
    db $0F, $1F, $3B, $07, $1A, $07, $17, $BB, $0C, $0C, $08, $02, $F6, $0C, $0E, $08,
    db $02, $7B, $CF, $27, $EF, $41, $C1, $E0, $15, $07, $04, $F8, $10, $FF, $D0, $80,
    db $C0, $00, $01, $00, $07, $00, $FF, $0D, $07, $07, $03, $07, $01, $0F, $02, $FF,
    db $0F, $02, $1F, $0F, $27, $00, $FF, $21, $FF, $D3, $ED, $E7, $FB, $F3, $DF, $FF,
    db $AF, $FF, $FE, $AF, $FC, $FF, $09, $00, $3F, $01, $FF, $6E, $3F, $3F, $1F, $20,
    db $1F, $7B, $04, $FF, $40, $3F, $C1, $7F, $38, $00, $F8, $08, $FF, $98, $68, $38,
    db $D8, $98, $F8, $F8, $78, $EF, $30, $F8, $E0, $F8, $06, $04, $03, $0F, $00, $FB,
    db $0F, $07, $08, $04, $FF, $FF, $8F, $FE, $FF, $AB, $FC, $FF, $0A, $02, $06, $08,
    db $06, $BF, $00, $02, $EF, $FF, $FC, $FF, $00, $00, $02, $00, $0F, $00, $EF, $1B,
    db $0F, $0F, $07, $E0, $03, $01, $1F, $0F, $FF, $00, $00, $4F, $00, $FF, $43, $A7,
    db $DB, $BF, $CF, $F7, $E7, $FF, $FE, $1F, $01, $02, $C0, $FF, $00, $3C, $C0, $8E,
    db $F4, $C4, $F8, $F4, $7F, $F8, $9A, $FC, $0E, $FC, $3F, $1F, $C1, $08, $EF, $18,
    db $1F, $1F, $18, $E3, $29, $F8, $FF, $F8, $FE, $60, $06, $3F, $DF, $FF, $3F, $F7,
    db $4F, $5B, $EF, $3C, $3C, $00, $0E, $40, $02, $9C, $F8, $FC, $3F, $F8, $FC, $F0,
    db $CA, $FC, $FC, $24, $2C, $29, $06, $ED, $00, $E0, $06, $7F, $0F, $23, $06, $E6,
    db $FF, $FC, $FC, $C0, $13, $21, $05, $60, $7F, $B8, $FF, $FF, $F0, $2B, $60, $60,
    db $05, $05, $FF, $21, $05, $07, $01, $05, $65, $30, $FF, $07, $00, $1C, $07, $2F,
    db $1F, $5F, $3F, $FE, $65, $31, $E0, $00, $18, $E0, $04, $F8, $E2, $FF, $FC, $5F,
    db $3D, $BF, $62, $FD, $5B, $F7, $FF, $6F, $FF, $6D, $FF, $6D, $DF, $6D, $FF, $FF,
    db $5F, $FA, $BC, $FD, $46, $A7, $DA, $CF, $FF, $F6, $EF, $B6, $FF, $B6, $FB, $B6,
    db $FF, $FF, $FA, $BF, $5F, $68, $1F, $70, $2F, $58, $DF, $37, $3F, $18, $3C, $18,
    db $31, $0B, $FD, $FA, $7F, $16, $F8, $0E, $F4, $1A, $EC, $FC, $04, $01, $FF, $7F,
    db $1F, $28, $1F, $30, $0F, $38, $17, $FD, $3F, $E2, $01, $00, $00, $FE, $F8, $14,
    db $F8, $9F, $0C, $F0, $1C, $E8, $FC, $04, $01, $06, $06, $69, $EF, $FF, $66, $DF,
    db $66, $08, $06, $96, $FF, $66, $7F, $FB, $66, $FF, $FA, $7F, $3D, $FF, $03, $08,
    db $FF, $6F, $F8, $6F, $DE, $61, $F0, $5F, $FE, $FB, $BC, $FF, $03, $08, $F6, $1F,
    db $F6, $7B, $86, $B3, $0F, $FA, $06, $0A, $20, $02, $DF, $61, $08, $0A, $F6, $5F,
    db $FF, $F6, $FB, $86, $FF, $09, $02, $61, $0C, $0C, $DF, $86, $FB, $E6, $FF, $FA,
    db $07, $10, $18, $07, $39, $2E, $00, $10, $01, $0D, $30, $0F, $0B, $20, $23, $E3,
    db $41, $3E, $01, $0D, $0C, $F0, $10, $E0, $E0, $4A, $43, $E5, $02, $FC, $05, $13,
    db $E3, $12, $82, $FC, $E2, $FC, $BF, $7D, $E6, $0B, $09, $F9, $BE, $05, $0B, $03,
    db $09, $DF, $3F, $48, $FF, $3F, $20, $1F, $1F, $07, $0B, $0F, $0F, $FF, $0F, $06,
    db $06, $00, $00, $FB, $FC, $12, $EF, $FC, $04, $F8, $18, $0A, $06, $02, $00, $3F,
    db $FF, $02, $25, $1B, $13, $0F, $17, $08, $1B, $FD, $07, $21, $43, $40, $00, $FC,
    db $40, $BC, $D8, $BF, $E8, $F0, $F8, $10, $D8, $E0, $41, $1A, $7E, $EF, $3F, $BC,
    db $7F, $F8, $20, $00, $F0, $7F, $B1, $FF, $7F, $F4, $F8, $FA, $FC, $7E, $FC, $3D,
    db $FB, $FE, $1F, $20, $00, $3F, $FE, $FD, $FE, $7B, $FF, $3E, $5E, $3F, $2F, $1F,
    db $1F, $0C, $16, $F7, $0C, $0A, $04, $01, $32, $FE, $BC, $FA, $5C, $FF, $54, $B8,
    db $F8, $30, $68, $30, $50, $20, $FD, $70, $E0, $47, $7B, $3E, $5F, $3D, $2D, $1E,
    db $09, $17, $E4, $01, $05, $02, $C8, $E0, $01, $D0, $21, $06, $02, $09, $04, $CF,
    db $BA, $7C, $74, $F8, $07, $04, $06, $21, $61, $FF, $DF, $6E, $DF, $6A, $FF, $4E,
    db $05, $21, $FF, $86, $FF, $FF, $76, $FB, $56, $FF, $72, $BF, $51, $F2, $0C, $21,
    db $8A, $0B, $21, $03, $39, $0F, $01, $1F, $0E, $EB, $1F, $0A, $40, $00, $01, $04,
    db $39, $1B, $F3, $EF, $EE, $00, $39, $EF, $FC, $1F, $03, $3F, $17, $0F, $0E, $7F,
    db $01, $0D, $00, $1A, $0C, $0D, $06, $05, $41, $FF, $EA, $F0, $F7, $02, $0D, $06,
    db $1A, $0C, $E4, $30, $13, $EA, $5B, $0C, $EC, $5C, $05, $04, $6E, $01, $D1, $EF,
    db $60, $6B, $31, $31, $04, $45, $FD, $F8, $EB, $BF, $F1, $F7, $03, $A6, $C3, $73,
    db $74, $1C, $80, $3F, $00, $C0, $80, $40, $80, $80, $82, $2E, $EB, $60, $DE, $07,
    db $43, $0B, $05, $0F, $05, $0A, $3D, $BF, $FE, $FF, $BF, $FC, $FF, $E0, $00, $9E,
    db $E0, $C7, $FF, $FA, $E2, $FC, $FA, $FC, $4D, $FE, $07, $7E, $20, $00, $FF, $7F

Data_010_4934:
    db $83, $7F, $40, $3F, $76, $33, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $01, $00, $00, $08, $5F, $00, $00,
    db $10, $00, $7C, $40, $00, $38, $82, $00, $80, $0F, $01, $0F, $01, $0F, $01, $0F,
    db $01, $0F, $01, $0F, $01, $05, $01, $24, $FB, $00, $7E, $40, $00, $2E, $00, $6A,
    db $00, $26, $78, $0F, $01, $0F, $01, $0F, $01, $00, $74, $00, $5E, $C0, $01, $07,
    db $2A, $00, $5A, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $E0, $0F, $01,
    db $0F, $01, $0F, $01, $0F, $01, $0E, $01, $82, $7F, $43, $BF, $3D, $3E, $01, $03,
    db $01, $01, $E4, $18, $AD, $FF, $FE, $FA, $FC, $AC, $F8, $FE, $04, $04, $9C, $E4,
    db $19, $01, $02, $3F, $02, $06, $E6, $1A, $03, $02, $F8, $FB, $50, $50, $E4, $1B,
    db $14, $00, $7F, $04, $FA, $7F, $5D, $7D, $3E, $7F, $3B, $FF, $55, $20, $00, $7D,
    db $7F, $06, $01, $3F, $FF, $13, $FF, $7F, $0F, $01, $FF, $00, $00, $F8, $00, $C7,
    db $78, $F3, $FD, $DF, $FD, $FE, $AF, $FE, $07, $20, $00, $82, $7F, $DF, $63, $3C,
    db $3F, $01, $03, $E6, $20, $AF, $FC, $1F, $FB, $FE, $76, $F8, $F8, $08, $22, $2B,
    db $05, $04, $04, $FD, $7D, $05, $04, $FF, $7F, $83, $7C, $E3, $7D, $D3, $7F, $60,
    db $0F, $04, $8D, $26, $80, $04, $27, $03, $00, $FF, $05, $03, $0B, $07, $0F, $06,
    db $17, $09, $FF, $1E, $05, $1F, $0B, $00, $00, $E0, $00, $FF, $10, $E0, $88, $F0,
    db $E8, $B0, $F4, $48, $BF, $AC, $D0, $DC, $E8, $1F, $0A, $20, $00, $06, $7F, $1F,
    db $07, $0C, $07, $0C, $03, $0F, $60, $10, $FB, $FC, $A8, $20, $00, $B0, $FC, $F0,
    db $18, $F0, $BF, $18, $E0, $F8, $10, $10, $00, $03, $02, $0F, $D2, $02, $02, $07,
    db $E0, $24, $03, $02, $F8, $00, $02, $10, $E0, $AD, $F0, $E0, $25, $1F, $09, $20,
    db $04, $02, $08, $04, $C8, $FA, $20, $04, $A0, $08, $04, $0B, $1F, $08, $1F, $07,
    db $3E, $08, $06, $E8, $FC, $88, $FC, $F0, $0D, $02, $01, $06, $A3, $05, $03, $61,
    db $11, $03, $02, $03, $06, $E0, $E0, $2B, $01, $F7, $00, $06, $01, $E0, $0B, $07,
    db $17, $0E, $1F, $DE, $02, $0C, $C0, $00, $30, $C0, $E0, $0B, $F0, $F4, $F3, $B8,
    db $FC, $03, $0C, $02, $06, $17, $0F, $14, $0F, $F3, $0F, $03, $11, $04, $03, $06,
    db $F4, $F8, $14, $F8, $F9, $18, $02, $04, $21, $04, $07, $01, $0A, $05, $05, $F5,
    db $02, $81, $04, $0E, $30, $0C, $40, $00, $F0, $40, $FF, $B8, $D0, $F0, $20, $30,
    db $C0, $E8, $F0, $DF, $B8, $F0, $14, $0F, $1C, $20, $00, $17, $0D, $FF, $0D, $06,
    db $0B, $06, $05, $02, $03, $00, $FF, $14, $F8, $1C, $F8, $BC, $F8, $F4, $78, $FF,
    db $F8, $F0, $E8, $30, $50, $20, $60, $00, $E2, $05, $02, $09, $E2, $01, $00, $20,
    db $03, $02, $58, $C8, $B0, $73, $D0, $20, $01, $0A, $04, $04, $0F, $0F, $07, $0A,
    db $04, $F7, $58, $D8, $B0, $03, $04, $0A, $00, $3F, $02, $BF, $7D, $2E, $7F, $08,
    db $FF, $77, $00, $23, $77, $FB, $7F, $08, $20, $14, $00, $63, $BC, $F9, $7E, $FF,
    db $FE, $7F, $D7, $7F, $83, $7F, $83, $FF, $CE, $A3, $1A, $C0, $80, $80, $00, $1B,
    db $41, $00, $41, $3F, $E7, $21, $1E, $1F, $20, $1B, $25, $22, $56, $FF, $FD, $FF,
    db $FE, $D7, $38, $B8, $00, $34, $18, $18, $FE, $E2, $3C, $C0, $00, $E0, $40, $A0,
    db $C0, $C0, $10, $E6, $44, $0F, $06, $0F, $06, $0D, $06, $1E, $60, $15, $E5, $48,
    db $03, $06, $1F, $BD, $C3, $FF, $66, $66, $68, $23, $C5, $23, $0E, $24, $AC, $00,
    db $06, $09, $24, $FC, $88, $C0, $1D, $05, $00, $1E, $00, $2E, $06, $24, $70, $FC,
    db $50, $40, $00, $80, $05, $24, $06, $33, $1F, $17, $BF, $57, $FF, $57, $0F, $31,
    db $03, $37, $07, $31, $0E, $03, $39, $FC, $88, $88, $1F, $2D, $1F, $00, $1F, $00,
    db $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $14,
    db $00, $00, $08, $5F, $00, $00, $10, $00, $7C, $40, $00, $38, $82, $00, $80, $0F,
    db $01, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $05, $01, $24, $FB, $00,
    db $7E, $40, $00, $2E, $00, $6A, $00, $26, $78, $0F, $01, $0F, $01, $0F, $01, $00,
    db $74, $00, $5E, $C0, $01, $07, $2A, $00, $5A, $0F, $01, $0F, $01, $0F, $01, $0F,
    db $01, $0F, $01, $E0, $0F, $01, $0F, $01, $0F, $01, $0F, $01, $0E, $01, $0C, $0F,
    db $0C, $FF, $0F, $0A, $0F, $0F, $07, $07, $0F, $3D, $FF, $13, $1B, $01, $03, $00,
    db $0E, $FC, $0A, $FF, $FC, $5C, $F8, $F4, $F8, $58, $F0, $F8, $FB, $10, $B0, $0A,
    db $02, $1A, $07, $0F, $04, $04, $EE, $08, $02, $EC, $18, $18, $0A, $04, $7F, $21,
    db $22, $FB, $01, $01, $08, $04, $F0, $20, $E0, $80, $80, $7E, $22, $17, $03, $00,
    db $06, $03, $03, $01, $20, $00, $FF, $00, $05, $02, $00, $00, $B7, $00, $FF, $FF,
    db $23, $D3, $ED, $F7, $FB, $FF, $DF, $FE, $D7, $AF, $FC, $AF, $0C, $02, $03, $08,
    db $02, $FF, $FE, $F7, $8F, $FC, $FF, $21, $1B, $05, $00, $1F, $01, $AF, $36, $1F,
    db $1F, $0F, $20, $00, $04, $21, $1C, $BE, $FF, $00, $F9, $1E, $9C, $6F, $BE, $DF,
    db $FF, $F7, $FF, $F4, $7F, $43, $24, $80, $00, $70, $80, $FF, $38, $D0, $B0, $C0,
    db $D0, $E0, $2F, $1F, $7D, $3F, $20, $00, $20, $1F, $18, $1F, $1F, $F1, $09, $F7,
    db $00, $E0, $FF, $21, $00, $D2, $FF, $7F, $BF, $FF, $EA, $5F, $DF, $30, $70, $00,
    db $70, $E0, $FF, $70, $E0, $50, $E0, $E0, $C0, $A0, $C0, $F0, $60, $00, $46, $28,
    db $27, $06, $21, $22, $3E, $00, $F9, $3E, $FF, $FC, $1F, $9E, $6F, $BF, $DF, $F4,
    db $FF, $FB, $1F, $04, $23, $05, $60, $7F, $B8, $FF, $FF, $DF, $F0, $60, $60, $E0,
    db $7F, $21, $05, $F2, $FF, $8F, $DF, $FF, $6A, $9F, $01, $05, $87, $2C, $C0, $13,
    db $03, $F9, $17, $02, $04, $83, $2D, $C0, $00, $30, $C0, $88, $FF, $F0, $2F, $1D,
    db $3F, $02, $7D, $1B, $7F, $FF, $27, $7F, $35, $7F, $35, $77, $2D, $7F, $FF, $2F,
    db $E4, $B8, $FC, $40, $A6, $D8, $DE, $FF, $E4, $FE, $AC, $FE, $AC, $EE, $B4, $FE,
    db $FF, $F4, $5F, $2F, $38, $0F, $38, $07, $17, $EF, $08, $1A, $0C, $0C, $E2, $29,
    db $FA, $F4, $1C, $FF, $F0, $1C, $E0, $E8, $10, $58, $30, $30, $3E, $E2, $2A, $3F,
    db $0F, $38, $0F, $18, $00, $02, $E3, $01, $7F, $00, $00, $FC, $F0, $1C, $F0, $18,
    db $00, $02, $76, $E3, $01, $00, $00, $08, $06, $32, $77, $2A, $0A, $06, $5F, $4C,
    db $EE, $54, $FE, $F4, $06, $08, $37, $20, $00, $F5, $21, $08, $08, $EC, $20, $00,
    db $84, $FE, $F4, $03, $73, $00, $0C, $60, $0B, $60, $13, $1D, $5F, $22, $81, $0A,
    db $FE, $61, $0B, $08, $F0, $C4, $F8, $F4, $B8, $FA, $F9, $44, $81, $0A, $83, $03,
    db $5F, $2F, $6F, $1F, $28, $DF, $1F, $17, $0F, $0B, $0F, $83, $03, $FA, $F4, $FF,
    db $F6, $F8, $14, $F8, $08, $F0, $F0, $00, $0F, $0F, $0F, $06, $06, $0B, $3D, $83,
    db $10, $85, $0F, $85, $10, $78, $85, $0F, $85, $08, $81, $0F, $1B, $07, $07, $03,
    db $85, $08, $FA, $81, $0F, $18, $28, $19, $02, $00, $1F, $02, $25, $F7, $1B, $1B,
    db $07, $65, $42, $40, $00, $F8, $40, $7F, $BC, $D8, $F8, $E0, $0F, $04, $0D, $60,
    db $16, $FF, $2E, $1F, $3C, $1F, $58, $3F, $78, $3F, $FF, $79, $3F, $F0, $20, $B0,
    db $C0, $E8, $F0, $FF, $74, $F8, $3C, $F8, $1A, $FC, $1E, $FC, $FF, $FE, $FC, $5F,
    db $3E, $3E, $1F, $2F, $1F, $7F, $1F, $0C, $16, $0C, $0A, $04, $0E, $01, $15, $FF,
    db $BC, $FC, $58, $54, $B8, $F8, $30, $68, $F7, $30, $50, $20, $E1, $1A, $5F, $3E,
    db $3F, $1D, $47, $2D, $1E, $17, $E0, $01, $73, $0B, $03, $02, $E8, $E0, $01, $F1,

Data_010_4eb4:
    db $60, $E2, $41, $03, $02, $09, $04, $BC, $78, $74, $F8, $FC, $07, $04, $05, $2D,
    db $07, $00, $0F, $07, $0F, $05, $F9, $0F, $00, $0A, $04, $2D, $8B, $FF, $77, $FE,
    db $57, $FF, $FC, $77, $7F, $08, $7F, $3F, $41, $3F, $D7, $20, $1F, $1F, $C0, $2C,
    db $02, $00, $31, $C0, $FF, $FF, $C0, $FF, $A5, $FF, $FF, $7F, $BD, $7E, $BF, $FE,
    db $00, $DC, $80, $BA, $1C, $A1, $27, $C0, $FF, $80, $40, $80, $B0, $00, $58, $30,
    db $B0, $07, $60, $60, $00, $47, $28, $A9, $24, $0F, $06, $05, $06, $83, $25, $FF,
    db $8E, $F0, $C7, $FA, $F6, $F8, $9A, $FC, $3B, $0E, $FC, $07, $07, $00, $00, $01,
    db $61, $27, $08, $07, $AF, $A1, $C0, $D3, $61, $05, $07, $80, $00, $29, $A0, $17,
    db $C0, $40, $80, $DC, $1A, $00, $52, $32, $E8, $58, $06, $2B, $7F, $31, $7F, $2E,
    db $7F, $2A, $7F, $2E, $06, $2B, $FF, $8C, $FE, $74, $FE, $54, $FE, $74, $5F, $85,
    db $21, $0C, $2B, $84, $0B, $2B, $08, $3F, $80, $3F, $0C, $3F, $DF, $2B, $FC, $DF,
    db $0E, $0C, $3F, $05, $13, $03, $E0, $43, $1F, $00, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00,
    db $1F, $00, $19, $00

Label_010_4fa8:
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [$ba49]
    or a
    jr nz, jr_010_4fbe

    call Call_010_55c0
    call Call_010_55f3
    ld a, $01
    ld [$ba49], a

jr_010_4fbe:
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $b3
    ld h, $71
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ld [$c600], a
    ld [wPlayerIsCarryingItem], a
    ld [$c640], a
    ld [$c660], a
    ld [$c680], a
    ld [$c6a0], a
    ld [$c6c0], a
    ld [$c6e0], a
    ld [$c700], a
    ld [$c720], a
    ld [$c740], a
    ld [$c760], a
    ld [wPetIsPresentOnMap], a
    ld [$c800], a
    ld [$c820], a
    ld [$c800], a
    ld [$c880], a
    ld [$c780], a
    ld hl, $6445
    ld c, $10
    ld de, $8800
    call Call_000_31a0
    ld hl, $6220
    ld c, $10
    ld de, $9000
    call Call_000_31a0
    ld hl, $6a42
    ld c, $20
    ld de, $9800
    call Call_000_31a0
    ld a, $00
    ld [$cb5c], a
    ld a, $77
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    call Call_010_563c
    call Call_010_5663
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld hl, $c0a3
    inc hl
    ld a, $72
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$ccb6], a
    ld [$cca6], a
    ld [$cca7], a
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_010_508c
    call Call_000_2d67
    call Call_000_36f4
    ret


    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_010_554f
    call Call_000_2d67
    call Call_000_36f4
    ret


Call_010_508c:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

Jump_010_5095:
    ld a, [$cca6]
    rst $00
    or e
    ld d, b
    ldh [c], a
    ld d, b
    ldh a, [c]
    ld d, b
    call c, $f651
    ld d, c
    ld bc, $1152
    ld d, d
    ld a, [hl-]
    ld d, d
    ld c, l
    ld d, d
    ld h, b
    ld d, d
    or c
    ld d, d
    or d
    ld d, d
    jp nz, Jump_000_2152

    and a
    call z, $fe7e
    jr nc, jr_010_50e2

    dec bc
    cp $00
    jr nz, jr_010_50cb

    ld a, $44
    call Call_000_25cb
    jr jr_010_50cb

    ld a, $2a
    call Call_000_25c5

jr_010_50cb:
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld a, $01
    ld [$cca6], a
    xor a
    ld [$cca7], a
    ret


jr_010_50e2:
    ld hl, $cca7
    inc [hl]
    ld a, [hl]
    cp $1e
    ret c

    xor a
    ld [hl], a
    ld a, $02
    ld [$cca6], a
    ret


    ld b, $00
    ld c, $04
    ld hl, $b949

jr_010_50f9:
    ld a, [hl]
    cp $ff
    jr z, jr_010_50ff

    inc b

jr_010_50ff:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_50f9

    ld a, b
    call Call_000_3304
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld [$ccad], a
    ld a, $c3
    call Call_000_3f52
    ld a, $03
    ld [$cca6], a
    ld hl, $b949
    ld a, [hl+]
    cp $ff
    call z, Call_010_51ca
    ld hl, $b95f
    ld a, [hl+]
    cp $ff
    call z, Call_010_51ca
    ld hl, $b975
    ld a, [hl+]
    cp $ff
    call z, Call_010_51ca
    ld hl, $b98b
    ld a, [hl+]
    cp $ff
    call z, Call_010_51ca
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ld a, [$b949]
    cp $ff
    jr z, jr_010_5157

    ld a, [$b94f]
    ldh [$ffa4], a

jr_010_5157:
    ld a, [$b95f]
    cp $ff
    jr z, jr_010_5163

    ld a, [$b965]
    ldh [$ffa5], a

jr_010_5163:
    ld a, [$b975]
    cp $ff
    jr z, jr_010_516f

    ld a, [$b97b]
    ldh [$ffa6], a

jr_010_516f:
    ld a, [$b98b]
    cp $ff
    jr z, jr_010_517b

    ld a, [$b991]
    ldh [$ffa7], a

jr_010_517b:
    ld c, $00
    ldh a, [$ffa4]
    ld b, a
    ldh a, [$ffa5]
    cp b
    jr nc, jr_010_5187

    jr jr_010_518c

jr_010_5187:
    ldh a, [$ffa5]
    ld c, $01
    ld b, a

jr_010_518c:
    ldh a, [$ffa6]
    cp b
    jr nc, jr_010_5193

    jr jr_010_5198

jr_010_5193:
    ldh a, [$ffa6]
    ld c, $02
    ld b, a

jr_010_5198:
    ldh a, [$ffa7]
    cp b
    jr nc, jr_010_519f

    jr jr_010_51a4

jr_010_519f:
    ldh a, [$ffa7]
    ld c, $03
    ld b, a

jr_010_51a4:
    ld a, b
    ldh [$ffa4], a
    ld a, c

Jump_010_51a8:
    ld hl, $51d4
    call LoadWordFromTableHL
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cc00
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ldh a, [$ffa4]
    ld [$cc15], a
    ret


Call_010_51ca:
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    ld a, [wTextID]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    and $02
    jr nz, jr_010_51f0

    ld a, $04
    ld [$cca6], a
    ret


jr_010_51f0:
    ld a, $06
    ld [$cca6], a
    ret


    ld a, $c6
    call Call_000_3f52
    ld a, $05
    ld [$cca6], a
    ret


    ld a, [wTextID]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $06
    ld [$cca6], a
    ret


    call Call_010_52d2
    call $53be
    or a
    jr nz, jr_010_523a

    ld a, [$cca6]
    cp $06
    jp nz, Jump_010_5095

    ld a, [$ccb6]
    or a
    jr nz, jr_010_522f

    ld a, $c4
    call Call_000_3f52
    jr jr_010_5234

jr_010_522f:
    ld a, $f0
    call Call_000_3f52

jr_010_5234:
    ld a, $08
    ld [$cca6], a
    ret


jr_010_523a:
    ld a, [$cca6]
    cp $06
    jp nz, Jump_010_5095

    ld a, $c5
    call Call_000_3f52
    ld a, $08
    ld [$cca6], a
    ret


    ld a, [wTextID]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $09
    ld [$cca6], a
    call ClearOldTextOnTextBox
    ret


    ld hl, $cca7
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    dec [hl]
    ld a, [hl]
    cp $e0
    ret nz

    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$c910], a
    xor a
    ld [$ba10], a
    ld [$ba11], a
    ld a, $02
    ld [$ba43], a
    xor a
    ld [$ba49], a
    ld a, [$b8d1]
    or a
    jr z, jr_010_529b

    ld a, [$ba3a]
    or a
    jr z, jr_010_52a6

jr_010_529b:
    ld a, $02
    ld [$cb50], a
    ld a, $01
    ld [$c910], a
    ret


jr_010_52a6:
    ld a, $21
    ld [$cb50], a
    ld a, $ff
    ld [$ba3a], a
    ret


    ret


    ld a, $c7
    call Call_000_3f52
    ld a, $08
    ld [$cca6], a
    ld a, $01
    ld [$b8d1], a
    ret


    ld a, $c8
    call Call_000_3f52
    ld a, $08
    ld [$cca6], a
    ld a, $01
    ld [$b8d1], a
    ret


Call_010_52d2:
    ld b, $00
    ld c, $04
    ld hl, $b949

jr_010_52d9:
    ld a, [hl]
    cp $ff
    jr z, jr_010_52df

    inc b

jr_010_52df:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_52d9

    ld a, b
    cp $02
    jr c, jr_010_52fa

    cp $04
    jr c, jr_010_5301

    ld a, $00
    ld [$cca8], a
    jr jr_010_5306

jr_010_52fa:
    ld a, $02
    ld [$cca8], a
    jr jr_010_5306

jr_010_5301:
    ld a, $01
    ld [$cca8], a

jr_010_5306:
    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_010_530d:
    ld a, [hl]
    cp $ff
    jr z, jr_010_5313

    inc b

jr_010_5313:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_530d

    ld a, b
    cp $02
    jr c, jr_010_532e

    cp $04
    jr c, jr_010_5335

    ld a, $00
    ld [$cca9], a
    jr jr_010_533a

jr_010_532e:
    ld a, $02
    ld [$cca9], a
    jr jr_010_533a

jr_010_5335:
    ld a, $01
    ld [$cca9], a

jr_010_533a:
    ld a, [$cc9c]
    cp $06
    jp c, Jump_010_5352

    jr nz, jr_010_534b

    ld a, [$cc9b]
    cp $40
    jr c, jr_010_5352

jr_010_534b:
    ld a, $00
    ld [$ccaa], a
    jr jr_010_536f

Jump_010_5352:
jr_010_5352:
    ld a, [$cc9c]
    cp $03
    jp c, Jump_010_536a

    jr nz, jr_010_5363

    ld a, [$cc9b]
    cp $20
    jr c, jr_010_536a

jr_010_5363:
    ld a, $01
    ld [$ccaa], a
    jr jr_010_536f

Jump_010_536a:
jr_010_536a:
    ld a, $02
    ld [$ccaa], a

jr_010_536f:
    ld a, [$ba37]
    or a
    jr nz, jr_010_5385

    ld a, [$ba36]
    cp $13
    jr c, jr_010_538c

    jr nz, jr_010_5385

    ld a, [$ba35]
    cp $88
    jr c, jr_010_538c

jr_010_5385:
    ld a, $00
    ld [$ccab], a
    jr jr_010_53aa

jr_010_538c:
    ld a, [$ba36]
    cp $05
    jr c, jr_010_53a3

    jr nz, jr_010_539c

    ld a, [$ba35]
    cp $dc
    jr c, jr_010_53a3

jr_010_539c:
    ld a, $01
    ld [$ccab], a
    jr jr_010_53aa

jr_010_53a3:
    ld a, $02
    ld [$ccab], a
    jr jr_010_53aa

jr_010_53aa:
    ld a, [$cbe8]
    ld hl, $53bb
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$ccac], a
    ret


    ld [bc], a
    ld bc, $af00
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ld b, $05
    ld hl, $cca8

jr_010_53ca:
    ld a, [hl]
    or a
    call z, Call_010_54f0
    ld a, [hl]
    cp $01
    call z, Call_010_54f6
    ld a, [hl]
    cp $02
    call z, Call_010_54fc
    inc hl
    dec b
    jr nz, jr_010_53ca

    ldh a, [$ffa4]
    cp $05
    jr c, jr_010_53ec

    call z, Call_010_54ac
    or a
    jp z, Jump_010_54a7

jr_010_53ec:
    ldh a, [$ffa6]
    cp $05
    jp nc, Jump_010_54a9

    ld a, [$ba0f]
    bit 7, a
    jr nz, jr_010_5412

    set 7, a
    ld [$ba0f], a
    ld a, $00
    call Call_010_5502
    ld a, $01
    ld [$b90b], a
    ld [$ccb6], a
    call Call_000_1147
    jp Jump_010_54a7


jr_010_5412:
    ldh a, [$ffa6]
    cp $02
    jp nc, Jump_010_54a9

    ld a, [$ba0f]
    bit 6, a
    jr nz, jr_010_5432

    set 6, a
    ld [$ba0f], a
    ld a, $01
    call Call_010_5502
    ld a, $01
    ld [$b8bf], a
    jp Jump_010_54a7


jr_010_5432:
    ldh a, [$ffa4]
    cp $04
    jr c, jr_010_54a9

    ld a, [$ba0f]
    bit 5, a
    jr nz, jr_010_5450

    set 5, a
    ld [$ba0f], a
    ld a, $02
    call Call_010_5502
    ld a, $01
    ld [$b8bd], a
    jr jr_010_54a7

jr_010_5450:
    ldh a, [$ffa4]
    cp $05
    jr c, jr_010_54a9

    ld a, [$ba0f]
    bit 4, a
    jr nz, jr_010_546e

    set 4, a
    ld [$ba0f], a
    ld a, $03
    call Call_010_5502
    ld a, $01
    ld [$b8be], a
    jr jr_010_54a7

jr_010_546e:
    ld a, [sNumPowerBerriesEaten]
    cp $06
    jr c, jr_010_5497

    ld a, [$ba11]
    or a
    jr nz, jr_010_5497

    ld a, [$ba10]
    cp $f1
    jr nc, jr_010_5497

    ld a, [$b8f2]
    cp $fa
    jr c, jr_010_5497

    ld a, [$b8f1]
    or a
    jr z, jr_010_5497

    ld a, [sPlayerGender]
    or a
    jr z, jr_010_5499

    jr jr_010_54a0

jr_010_5497:
    jr jr_010_54a9

jr_010_5499:
    ld a, $0b
    ld [$cca6], a
    jr jr_010_54a7

jr_010_54a0:
    ld a, $0c
    ld [$cca6], a
    jr jr_010_54a7

Jump_010_54a7:
jr_010_54a7:
    xor a
    ret


Jump_010_54a9:
jr_010_54a9:
    ld a, $01
    ret


Call_010_54ac:
    ld a, [sNumPowerBerriesEaten]
    cp $06
    jr c, jr_010_54db

    ld a, [$ba11]
    or a
    jr nz, jr_010_54db

    ld a, [$ba10]
    cp $f1
    jr nc, jr_010_54db

    ld a, [$b8f2]
    cp $fa
    jr c, jr_010_54db

    ld a, [$b8f1]
    or a
    jr z, jr_010_54db

    ld a, [$b8d1]
    or a
    jr nz, jr_010_54ed

    ld a, [sPlayerGender]
    or a
    jr z, jr_010_54dd

    jr jr_010_54e4

jr_010_54db:
    jr jr_010_54ed

jr_010_54dd:
    ld a, $0b
    ld [$cca6], a
    jr jr_010_54eb

jr_010_54e4:
    ld a, $0c
    ld [$cca6], a
    jr jr_010_54eb

jr_010_54eb:
    xor a
    ret


jr_010_54ed:
    ld a, $01
    ret


Call_010_54f0:
    ldh a, [$ffa4]
    inc a
    ldh [$ffa4], a
    ret


Call_010_54f6:
    ldh a, [$ffa5]
    inc a
    ldh [$ffa5], a
    ret


Call_010_54fc:
    ldh a, [$ffa6]
    inc a
    ldh [$ffa6], a
    ret


Call_010_5502:
    ld hl, $5523
    ld c, a
    add a
    ld b, a
    add a
    add a
    add b
    add c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cc9d
    ld b, $07
    call CopyHLtoDE
    ld de, $ba5c
    ld b, $04
    call CopyHLtoDE
    ret


    xor a
    xor a
    xor a
    xor a
    xor a
    inc [hl]
    ld sp, $efef
    rst $28
    rst $28
    dec b
    ld [hl+], a
    inc l
    ld hl, $2722
    jr nz, @-$4f

    ld de, $1d28
    rrca
    ld [hl+], a
    inc e
    inc h
    nop
    ld sp, $afaf
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
    xor a
    xor a

Call_010_554f:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cca6]
    rst $00
    or e
    ld d, b
    ldh [c], a
    ld d, b
    ld l, b
    ld d, l
    ld [hl], e
    ld d, l
    add e
    ld d, l
    adc h
    ld d, l
    ld a, $c9
    call Call_000_3f52
    ld a, $03
    ld [$cca6], a
    ret


    ld a, [wTextID]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $04
    ld [$cca6], a
    ret


    ld a, $05
    ld [$cca6], a
    call ClearOldTextOnTextBox
    ret


    ld hl, $cca7
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    dec [hl]
    ld a, [hl]
    cp $e0
    ret nz

    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cb56], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$ba43], a
    ld a, $26
    ld [$cb50], a
    ld a, $00
    ld [$c90b], a
    ld a, $01
    ld [$ccc1], a
    ret


Call_010_55c0:
    ld a, [$ba4a]
    cpl
    inc a
    call Call_000_0f47
    xor a
    ld [$ba4a], a
    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_010_55d3:
    ld a, [hl]
    cp $ff
    jr z, jr_010_55e1

    inc b
    ld a, [$ba4a]
    add $0a
    ld [$ba4a], a

jr_010_55e1:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_55d3

    ld a, [$ba4a]
    call Call_000_0f47
    ret


Call_010_55f3:
    ld a, [$ba4b]
    cpl
    inc a
    call Call_000_0f47
    xor a
    ld [$ba4b], a
    ld b, a
    ld c, a
    ld hl, sMapObjectLocation

jr_010_5604:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_010_5619

    or a
    jr nz, jr_010_561a

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_010_5619

    cp $12
    jr z, jr_010_5619

    jr jr_010_561a

jr_010_5619:
    inc bc

jr_010_561a:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_010_5604

    ld a, l
    cp $80
    jr c, jr_010_5604

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
    ld h, b
    ld l, c
    ld a, $40
    call DivideHLByA_16bit
    ld a, l
    ld [$ba4b], a
    call Call_000_0f47
    ret


Call_010_563c:
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$c600], a
    ld [$c820], a
    ld hl, $5653
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ret


    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ldh [rP1], a
    nop
    nop
    nop

Call_010_5663:
    ld hl, vBGMap1
    ld de, $5671
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    ld a, b
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, d
    ld a, [hl]
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
    ld a, a
    ld a, [hl]
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
    ld a, a
    ld a, [hl]
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
    ld a, a
    ld a, e
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    nop
    nop
    reti


    ld d, [hl]
    rst $18
    ld d, [hl]
    jr nz, jr_010_5734

    ld e, l
    ld d, a
    inc c
    nop
    xor a
    db $10
    inc c
    ld hl, sp-$52
    db $10
    inc b
    rrca
    xor l
    db $10
    inc b
    rlca
    xor h
    db $10
    inc b
    rst $38
    xor e
    db $10
    inc b
    rst $30
    xor d
    db $10
    inc b
    rst $28
    xor c
    db $10
    db $fc
    rrca
    xor b
    db $10
    db $fc
    rlca
    and a
    db $10
    db $fc
    rst $38
    and [hl]
    db $10
    db $fc
    rst $30
    and l
    db $10
    db $fc
    rst $28
    and h
    db $10
    db $f4
    nop
    and e
    db $10
    db $f4
    ld hl, sp-$5e
    db $10
    db $ec
    rst $38
    and c
    ld de, $f7ec
    and b
    ld de, $0c80
    nop
    xor a
    db $10
    inc c
    ld hl, sp-$52
    db $10
    inc b
    rlca
    cp d
    db $10
    inc b
    rst $38
    cp c
    db $10
    inc b
    rst $30
    cp b
    db $10

jr_010_5734:
    inc b
    rst $28
    or a
    db $10
    db $fc
    rlca
    or [hl]
    db $10
    db $fc
    rst $38
    or l
    db $10
    db $fc
    rst $30
    or h
    db $10
    db $fc
    rst $28
    or e
    db $10
    db $f4
    inc bc
    or d
    db $10
    db $f4
    ei
    or c
    db $10
    db $f4
    di
    or b
    db $10
    db $ec
    rst $38
    and c
    ld de, $f7ec
    and b
    ld de, $0c80
    nop
    xor a
    db $10
    inc c
    ld hl, sp-$52
    db $10
    inc b
    inc b
    jp $0410


    db $fc
    jp nz, $0410

    db $f4
    pop bc
    db $10
    db $fc
    inc b
    ret nz

    db $10
    db $fc
    db $fc
    cp a
    db $10
    db $fc
    db $f4
    cp [hl]
    db $10
    db $f4
    rlca
    cp l
    db $10
    db $f4
    rst $38
    cp h
    db $10
    db $f4
    rst $30
    cp e
    db $10
    db $ec
    rst $38
    and c
    ld de, $f7ec
    and b
    ld de, $9480
    ld d, a
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc de
    ld hl, $ef1e
    ld h, $28
    jr z, jr_010_57d4

    rst $28
    ld [hl+], a
    inc l
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    dec de
    dec hl
    ld [hl+], a
    jr nz, jr_010_57db

    dec l
    rst $28
    dec l
    jr z, @+$29

    ld [hl+], a
    jr nz, @+$23

    dec l
    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [$1cef], sp
    ld a, [de]

jr_010_57d4:
    daa
    rst $28
    rra
    ld e, $1e
    dec h
    rst $28

jr_010_57db:
    ld a, [de]
    rst $28
    ld h, $32
    ld b, h
    inc l
    dec l
    ld e, $2b
    ld [hl+], a
    jr z, jr_010_5815

    inc l
    rst $28
    add hl, hl
    jr z, @+$32

    ld e, $2b
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc e
    jr z, @+$28

    ld [hl+], a
    daa
    jr nz, @-$0f

    rra
    dec hl
    jr z, jr_010_582c

    rst $28
    ld [hl+], a
    dec l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_010_5815:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld c, $2b
    rst $28
    ld h, $1a
    ld [hl-], a

jr_010_582c:
    dec de
    ld e, $ef
    ld [$1aef], sp
    ld h, $ef
    rst $28
    rst $28
    inc hl
    ld l, $2c
    dec l
    rst $28
    ld a, [de]
    inc e
    dec l
    ld [hl+], a
    daa
    jr nz, @-$0f

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    jr nc, @+$20

    ld [hl+], a
    dec hl
    dec e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [$272c], sp
    ld c, e
    dec l
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    dec de
    ld e, $1a
    ld l, $2d
    ld [hl+], a
    rra
    ld l, $25
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    rra
    dec h
    jr z, jr_010_58db

    ld e, $2b
    ld b, c
    rst $28
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    inc h
    daa
    jr z, jr_010_58eb

    daa
    rst $28
    ld a, [de]
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [de], a
    daa
    jr z, jr_010_5906

    rst $28
    dec b
    dec h
    jr z, jr_010_590b

jr_010_58db:
    ld e, $2b
    ld c, h
    rst $28
    ld [$ef2d], sp
    jr nc, jr_010_5906

    dec h
    dec h
    rst $28
    dec de
    ld e, $ef
    ld [de], a

jr_010_58eb:
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    jr nz, @-$0f

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc l
    jr z, jr_010_5928

    daa
    adc [hl]
    rst $28
    ld a, [de]
    daa
    dec e

jr_010_5906:
    rst $28
    dec l
    ld hl, $ef1e

jr_010_590b:
    rst $28
    rst $28
    rra
    dec h
    jr z, jr_010_5941

    ld e, $2b
    inc l
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop

jr_010_5928:
    dec de
    dec h
    jr z, @+$2a

    ld h, $4c
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    rst $28
    rst $28
    jr nc, @+$1c

    ld [hl+], a
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28

jr_010_5941:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [$1bef], sp
    ld a, [de]
    inc h
    ld e, $1d
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    rst $28
    rst $28
    inc e
    ld a, [de]
    inc h
    ld e, $8e
    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    db $db
    ld h, c
    nop
    nop
    ld hl, $2f1a
    ld e, $ef
    inc l
    jr z, @+$28

    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl-], a
    ld e, $1a
    dec hl
    rst $28
    jr nc, jr_010_59d7

    dec h
    dec h
    rst $28
    rst $28
    ld e, $27
    dec e
    rst $28
    inc l
    jr z, jr_010_59e8

    daa
    ld c, h
    rst $28
    rlca
    jr z, jr_010_59f6

    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    and $61
    nop
    nop
    ld a, [hl+]
    ld l, $22

jr_010_59d7:
    inc e
    inc h
    dec h
    ld [hl-], a
    rst $28
    dec l
    ld hl, $ef1e
    dec l
    ld [hl+], a
    ld h, $1e
    ld hl, $2c1a
    rst $28

jr_010_59e8:
    add hl, hl
    ld a, [de]
    inc l
    inc l
    ld e, $1d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop

jr_010_59f6:
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    rlca
    ld a, [de]
    rst $28
    ld hl, $8e1a

jr_010_5a05:
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_010_5a3b

    rst $28
    rst $28
    ld hl, $2f1a
    ld [hl+], a
    daa
    jr nz, jr_010_5a05

    rra
    ld l, $27
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc c
    ld h, $26
    ld h, $8e
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    dec e

jr_010_5a3b:
    ld e, $25
    ld [hl+], a
    inc e
    ld [hl+], a
    jr z, @+$30

    inc l
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc bc
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    dec l
    dec hl
    ld [hl-], a
    rst $28
    dec l
    ld hl, $ef1e
    ld a, [de]
    add hl, hl
    add hl, hl
    dec h
    ld e, $ef
    inc hl
    ld l, $22
    inc e
    ld e, $41
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_010_5a7a:
    nop
    nop
    jp c, $0061

    nop
    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    dec l
    jr z, jr_010_5a7a

    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    rst $28
    jr nz, jr_010_5ab9

    ld a, [de]
    inc l
    inc l
    rst $28
    jr z, jr_010_5ab9

    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld c, $21
    rst $28
    jr nc, jr_010_5ace

    dec h
    dec h
    ld c, h
    ld c, h
    ld c, h
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a

jr_010_5ab9:
    inc l
    rst $28
    dec l
    jr z, jr_010_5ae6

    rst $28
    dec de
    ld a, [de]
    dec e
    rst $28
    jr nc, jr_010_5ae3

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_010_5ace:
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc e
    jr z, jr_010_5b07

    dec h
    dec e
    rst $28
    daa
    jr z, jr_010_5b0c

    rst $28
    ld hl, $2f1a

jr_010_5ae3:
    ld e, $ef
    rst $28

jr_010_5ae6:
    ld hl, $1d1a
    rst $28
    ld a, [de]
    rst $28
    ld a, [hl+]
    ld l, $22
    ld e, $2d
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00

jr_010_5af8:
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld e, $2f
    ld e, $27
    ld [hl+], a
    daa

jr_010_5b07:
    jr nz, jr_010_5af8

    dec l
    jr z, jr_010_5b2c

jr_010_5b0c:
    ld e, $2d
    ld hl, $ef44
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop

jr_010_5b2c:
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld l, $27
    rra
    jr z, jr_010_5b62

    dec l
    ld l, $44
    rst $28
    rst $28
    daa
    ld a, [de]
    dec l
    ld e, $8e
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld [$1aef], sp
    ld h, $ef
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc l
    ld l, $2b
    ld e, $ef
    jr nc, jr_010_5b7c

    rst $28
    jr nc, @+$24

    dec h

jr_010_5b62:
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    daa
    jr z, @+$2f

    ld hl, $2b1e
    rst $28
    rst $28

Call_010_5b75:
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_010_5b7c:
    nop
    nop
    jp c, $0061

    nop
    jr z, jr_010_5bad

    add hl, hl
    jr z, jr_010_5bb2

    dec l
    ld l, $27
    ld [hl+], a
    dec l
    ld [hl-], a
    rst $28
    rra
    jr z, jr_010_5bbc

    rst $28
    ld a, [de]
    rst $28
    ld a, [hl+]
    ld l, $22
    ld e, $2d
    rst $28
    ld e, $2f
    ld e, $27
    ld [hl+], a
    daa
    jr nz, jr_010_5bee

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop

jr_010_5bad:
    ld c, $21
    rst $28
    jr nc, jr_010_5bd0

jr_010_5bb2:
    dec h
    dec h
    ld c, h
    ld c, h
    ld c, h
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l

jr_010_5bbc:
    rst $28
    dec l
    jr z, jr_010_5be8

    rst $28
    dec de
    ld a, [de]
    dec e
    rst $28
    jr nc, jr_010_5be5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_010_5bd0:
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc e
    jr z, jr_010_5c09

    dec h
    dec e
    rst $28
    daa
    jr z, jr_010_5c0e

    rst $28
    ld hl, $2f1a

jr_010_5be5:
    ld e, $ef
    rst $28

jr_010_5be8:
    ld hl, $1d1a
    rst $28
    ld a, [de]
    rst $28

jr_010_5bee:
    ld a, [hl+]
    ld l, $22
    ld e, $2d
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00

jr_010_5bfa:
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld e, $2f
    ld e, $27
    ld [hl+], a
    daa

jr_010_5c09:
    jr nz, jr_010_5bfa

    dec l
    jr z, jr_010_5c2e

jr_010_5c0e:
    ld e, $2d
    ld hl, $ef44
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop

jr_010_5c2e:
    inc bc
    jr z, jr_010_5c58

    ld c, e
    dec l
    rst $28
    dec de
    ld e, $ef
    ld e, $26
    dec de
    ld a, [de]
    ld b, h
    rst $28
    rst $28
    dec hl
    dec hl
    ld a, [de]
    inc l
    inc l
    ld e, $1d
    rst $28
    inc l
    ld [hl+], a
    dec h
    dec h
    ld [hl-], a
    adc [hl]
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

jr_010_5c58:
    nop
    ld [$1def], sp
    ld [hl+], a
    dec e
    daa
    ld c, e
    dec l
    rst $28
    ld h, $1e
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $2d1a
    ld b, b
    rst $28
    rlca
    ld a, [de]
    rst $28
    ld hl, $ef1a
    ld hl, $ef1a
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld c, $2e
    inc e
    ld hl, $ef40
    inc de
    ld hl, $2c22
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld e, $1a
    dec h
    dec h
    ld [hl-], a
    rst $28
    ld hl, $2b2e
    dec l
    inc l
    ld b, b
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    dec de
    dec hl
    ld e, $1a
    inc h
    rst $28
    dec l
    ld hl, $2b1e
    jr z, jr_010_5cde

    inc h
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    nop
    ld hl, $ef8e

jr_010_5cde:
    dec l
    ld hl, $2d1a
    rst $28
    jr nc, jr_010_5cff

    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    add hl, hl
    ld a, [de]
    ld [hl+], a
    daa
    rra
    ld l, $25
    ld c, h
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop

jr_010_5cff:
    nop
    nop
    jp c, $0061

    nop
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a

jr_010_5d0c:
    jr z, @+$30

    rst $28
    rra
    jr z, @+$2d

    rst $28
    rst $28
    rst $28
    ld hl, $251e
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_010_5d0c

    ld h, $1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec bc
    ld e, $2d
    ld d, e
    rst $28
    add hl, hl
    dec hl
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    call nz, $c6c5
    rst $00
    rst $28
    ld h, $1a
    ld [hl-], a
    rst $28
    ld [hl-], a
    jr z, jr_010_5d75

    rst $28
    dec hl
    ld e, $2c
    dec l
    rst $28
    ld [hl+], a
    daa
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    xor $61
    nop
    nop
    add hl, hl
    ld e, $1a
    inc e
    ld e, $4c
    rst $28
    ld d, $1e
    rst $28
    jr nc, jr_010_5d89

    dec h
    dec h
    rst $28
    rst $28
    ld h, $22
    inc l
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_010_5da1

    ld c, h
    rst $28

jr_010_5d75:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec bc
    ld e, $2d

jr_010_5d89:
    ld d, e
    rst $28
    add hl, hl
    dec hl
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    call nz, $c6c5
    rst $00
    rst $28
    ld h, $1a
    ld [hl-], a
    rst $28
    ld [hl-], a
    jr z, jr_010_5dcb

    rst $28
    dec hl
    ld e, $2c

jr_010_5da1:
    dec l
    rst $28

Jump_010_5da3:
    ld [hl+], a
    daa
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ei
    ld h, c
    nop
    nop
    add hl, hl
    ld e, $1a
    inc e
    ld e, $4c
    rst $28
    ld d, $1e
    rst $28
    jr nc, jr_010_5ddf

    dec h
    dec h
    rst $28
    rst $28
    ld h, $22
    inc l
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_010_5df7

    ld c, h
    rst $28

jr_010_5dcb:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec bc
    ld e, $2d

jr_010_5ddf:
    ld d, e
    rst $28
    add hl, hl
    dec hl
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    call nz, $c6c5
    rst $00
    rst $28
    ld h, $1a
    ld [hl-], a
    rst $28
    ld [hl-], a
    jr z, jr_010_5e21

    rst $28
    dec hl
    ld e, $2c

jr_010_5df7:
    dec l
    rst $28
    ld [hl+], a
    daa
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [$0062], sp
    nop
    add hl, hl
    ld e, $1a
    inc e
    ld e, $4c
    rst $28
    ld d, $1e
    rst $28
    jr nc, jr_010_5e35

    dec h
    dec h
    rst $28
    rst $28
    ld h, $22
    inc l
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_010_5e4d

    ld c, h
    rst $28

jr_010_5e21:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec bc
    ld e, $2d

jr_010_5e35:
    ld d, e
    rst $28
    add hl, hl
    dec hl
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    call nz, $c6c5
    rst $00
    rst $28
    ld h, $1a
    ld [hl-], a
    rst $28
    ld [hl-], a
    jr z, jr_010_5e77

    rst $28
    dec hl
    ld e, $2c

jr_010_5e4d:
    dec l
    rst $28
    ld [hl+], a
    daa
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    inc de
    ld h, d
    nop
    nop
    add hl, hl
    ld e, $1a
    inc e
    ld e, $4c
    rst $28
    ld d, $1e
    rst $28
    jr nc, jr_010_5e8b

    dec h
    dec h
    rst $28
    rst $28
    ld h, $22
    inc l
    inc l
    rst $28
    ld [hl-], a
    jr z, @+$30

    ld c, h
    rst $28

jr_010_5e77:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    or c
    db $ec
    rst $28

jr_010_5e8b:
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    rst $28
    jr nc, jr_010_5eb2

    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_010_5ebc

    dec h
    dec h
    rst $28
    daa
    jr z, jr_010_5ecd

    rst $28
    rra
    jr z, jr_010_5ecf

    jr nz, jr_010_5ec4

    dec l
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld h, d
    nop

jr_010_5eb2:
    nop
    dec l
    ld hl, $2c22
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h

jr_010_5ebc:
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_010_5ec4:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_010_5ecd:
    rst $28
    rst $28

jr_010_5ecf:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    nop
    ld hl, $8e1a
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    ld c, h
    ld c, h
    ld c, h
    inc d
    ld h, $16
    ld hl, $2d1a
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_010_5f28

    rst $28
    rst $28
    rst $28
    jp hl


jr_010_5efe:
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec e
    jr z, jr_010_5f2e

    daa
    jr nz, jr_010_5efe

    ld hl, $2b1e
    ld e, $8e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld [hl+], a
    daa
    ld a, [de]
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_010_5f28:
    jp hl


    cp $00
    nop
    nop
    nop

jr_010_5f2e:
    nop
    nop
    jp c, $0061

    nop
    ld [$2def], sp
    ld hl, $2e28
    jr nz, @+$23

    dec l
    rst $28
    ld [$30ef], sp
    ld a, [de]
    inc l
    rst $28
    add hl, hl
    ld [hl+], a
    inc e
    inc h
    ld [hl+], a
    daa
    jr nz, @-$0f

    jr nc, jr_010_5f70

    dec h
    dec e
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    rra
    dec h
    jr z, @+$32

    ld e, $2b
    inc l

jr_010_5f66:
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e

jr_010_5f70:
    ld a, [de]
    daa
    inc e
    ld [hl+], a
    daa
    jr nz, jr_010_5f66

    jr nc, jr_010_5f9b

    dec l
    ld hl, $efef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    dec l
    ld hl, $ef1e
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a

jr_010_5f9b:
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld d, $21
    ld a, [de]
    dec l
    ld b, b
    rst $28
    inc b
    cpl
    ld e, $2b

jr_010_5fbf:
    ld [hl-], a
    jr z, @+$29

    ld e, $ef
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec h
    jr z, jr_010_5ff3

    inc h
    ld [hl+], a
    daa
    jr nz, jr_010_5fbf

    rra
    jr z, jr_010_5ffe

    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld h, $1e
    ld b, c
    rst $28
    ld [$2def], sp
    ld hl, $2e28
    jr nz, @+$23

    dec l
    rst $28
    rst $28
    rst $28
    ld [$30ef], sp

jr_010_5ff3:
    ld a, [de]
    inc l
    rst $28
    jr z, jr_010_601f

    dec h
    ld [hl-], a
    rst $28
    ld a, [de]
    jr nc, jr_010_6018

jr_010_5ffe:
    ld [hl-], a
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    rra
    jr z, @+$2d

    rst $28
    ld a, [de]
    daa
    rst $28
    ld hl, $2e28
    dec hl
    ld c, h
    ld c, h

jr_010_6018:
    ld c, h
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l

jr_010_601f:
    ld b, b
    rst $28
    ld [$532d], sp
    rst $28
    dec de
    ld e, $1e
    daa
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    jr z, jr_010_6067

    ld e, $2b
    rst $28
    ld a, [de]
    rst $28
    dec e
    ld a, [de]
    ld [hl-], a
    ld b, c
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    ld [$1bef], sp
    ld e, $2d
    dec l
    ld e, $2b
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld hl, $2b2e
    dec hl
    ld [hl-], a
    rst $28

jr_010_6067:
    ld hl, $2628
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_010_60a6

    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld c, $21
    rst $28
    daa
    jr z, jr_010_60de

    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_010_60ca

    adc [hl]
    rst $28
    ld [hl+], a
    dec l
    rst $28
    dec e
    ld [hl+], a
    ld e, $1d
    ld c, h
    rst $28
    rst $28

jr_010_60a6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld c, $21
    rst $28
    daa
    jr z, jr_010_6109

    rst $28
    inc c
    ld [hl-], a
    rst $28
    inc e
    jr z, jr_010_60f4

    ld c, h
    ld c, h
    ld c, h
    ld h, $32

jr_010_60c9:
    rst $28

jr_010_60ca:
    inc e
    jr z, jr_010_60fd

    rst $28
    dec e
    ld [hl+], a
    ld e, $1d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_60de:
    jp c, $0061

    nop
    ld bc, $2e2b
    inc l
    ld hl, $32ef
    jr z, jr_010_6119

    dec hl
    rst $28
    inc e
    jr z, jr_010_6120

    rst $28
    rst $28
    ld e, $2f

jr_010_60f4:
    ld e, $2b
    dec e
    ld a, [de]
    ld [hl-], a
    rst $28
    jr nc, jr_010_611e

    dec l

jr_010_60fd:
    ld hl, $efef
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6109:
    jp c, $0061

    nop
    dec h
    jr z, jr_010_613f

    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    ld a, [de]
    rra
    rra

jr_010_6119:
    ld e, $1c

jr_010_611b:
    dec l
    ld b, h
    ld [hl+], a

jr_010_611e:
    jr z, jr_010_6147

jr_010_6120:
    ld c, h
    rst $28
    ld [$ef1f], sp
    ld [hl-], a
    jr z, jr_010_6156

    rst $28
    dec e
    jr z, jr_010_611b

    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    inc l
    jr z, jr_010_60c9

    rst $28
    ld [hl-], a
    jr z, jr_010_616d

jr_010_613f:
    dec hl
    rst $28
    inc e
    jr z, jr_010_6174

    rst $28
    rst $28
    rst $28

jr_010_6147:
    rst $28
    jr nc, jr_010_616c

    dec h
    dec h
    rst $28
    jr nz, jr_010_6171

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_010_6183

    rst $28

jr_010_6156:
    ld a, [de]
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    ld e, $31

jr_010_616c:
    add hl, hl

jr_010_616d:
    ld a, [de]
    daa
    dec e
    rst $28

jr_010_6171:
    rst $28
    rst $28
    ld [hl-], a

jr_010_6174:
    jr z, @+$30

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $1aef
    daa
    dec e
    rst $28
    jp hl


jr_010_6183:
    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h

jr_010_6194:
    rst $28
    ld e, $31
    add hl, hl
    ld e, $1c
    dec l
    rst $28
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_010_61cf

    rst $28
    dec l
    jr z, jr_010_6194

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    jp c, $0061

    nop
    jr nc, @+$2a

    dec hl
    inc h

Jump_010_61bd:
    rst $28
    ld hl, $2b1a
    dec e
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $271a
    rst $28
    dec h

jr_010_61cf:
    ld a, [de]
    inc l
    dec l
    rst $28
    ld [hl-], a
    ld e, $1a
    dec hl
    ld c, h
    rst $28
    rst $38
    ret


    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call Call_000_151d
    ret


    ld a, $44
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


    ld hl, $cc04
    ld de, $cc00
    ld b, $10
    call CopyHLtoDE
    jr jr_010_6213

    ld hl, $cc08
    ld de, $cc00
    ld b, $10
    call CopyHLtoDE
    jr jr_010_6213

    ld hl, $cc0c
    ld de, $cc00
    ld b, $10
    call CopyHLtoDE

jr_010_6213:
    ld a, $02
    ld [$c8cd], a
    ret


    ld a, $00
    ld [$c8cd], a
    ret


    ret


    nop
    ld [$1df2], sp
    nop
    rst $38
    dec l
    nop
    inc e
    nop
    ld a, [$d4ff]
    rst $38
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add l
    ld a, [$f44b]
    rst $38
    add a
    ld hl, sp+$0f
    ldh a, [$ff81]
    cp $2a
    push de
    cp a
    ld d, a
    xor b
    xor a
    ld d, b
    ld a, a
    add b
    and e
    inc bc
    ld e, a
    db $fd
    and b
    dec hl
    inc b
    sub a
    add sp, $2f
    ret nc

    ld e, a
    and b
    ld a, [hl]
    ld b, c
    nop
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    add c
    ld [bc], a
    db $ec
    push bc
    ld [bc], a
    pop bc
    ld b, $fa
    dec b
    dec hl
    rlca
    add c
    ld a, a
    ld d, h
    ld a, a
    xor e
    ld [$f515], a
    ld a, [bc]
    cp $01
    inc b
    dec b
    rst $38
    rst $38
    dec hl
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    and c
    rst $38
    ld e, a
    jp nc, $e12f

    rra
    ldh a, [rIF]
    jp hl


    rst $18
    rla
    db $f4
    dec bc
    ld a, [$4105]
    nop
    db $fc
    inc bc
    rrca
    cp $01
    db $fd
    ld [bc], a

Jump_010_6296:
    add c
    ld [bc], a
    push bc
    ld [bc], a
    rrc e
    and e
    ld b, $f6
    ld hl, $3f07
    ret nz

    inc hl
    ld [$d02f], sp
    sub a
    add sp, -$01
    rrca
    ldh a, [$ff87]
    ld hl, sp+$4b
    db $f4
    add l
    ld a, [$c0e5]
    ld h, b
    inc c
    call nc, $0ce0
    push bc
    ld [bc], a
    xor a
    ld d, b
    ld d, a
    rra
    xor b
    ld a, [hl+]
    push de
    add c
    cp $0b
    db $10
    jp hl


    inc c
    and e
    ld b, $f6
    ld hl, $fc07
    inc bc
    inc hl
    ld [$0bf4], sp
    jp hl


    rla
    db $fc
    dec bc
    inc de
    push hl
    inc c
    cp $01
    push af
    ld a, [bc]
    ld [$ff15], a
    ld d, h

jr_010_62e2:
    xor e
    add c
    ld a, a
    ldh a, [rIF]
    pop hl
    rra
    rst $18
    jp nc, $a12f

    ld e, a
    inc bc
    ld h, b
    inc c
    dec hl
    rst $38
    rst $38
    ld e, a
    rst $38
    ld l, l
    sub d
    ld a, [$d505]
    ld a, [hl+]
    ei
    ld a, [$8505]
    nop
    jr nz, jr_010_62e2

    add b
    ld a, a
    ld c, b
    rla
    or a
    add b
    ld a, a
    add l
    nop
    ld [de], a
    db $10
    jr jr_010_6341

    ld de, $0085
    sbc a
    ld e, e
    rst $38
    xor a
    rst $38
    ld d, [hl]
    ld b, b
    nop
    add l
    nop
    jp c, $ff4f

    push af
    rst $38
    ld l, d
    ld b, b
    nop
    add l
    nop
    ld c, b
    db $10
    dec de
    db $fc
    ld sp, $8517
    nop
    inc b
    ei
    ld bc, $12fe
    db $ed
    ei
    ld bc, $85fe
    nop
    or [hl]
    ld c, c
    ld e, a
    and b
    xor e
    rlca
    ld d, h

jr_010_6341:
    ld e, a
    and b
    add l
    nop
    cpl
    jr nz, jr_010_6367

    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_6367:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra

jr_010_63ae:
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_63d3:
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_63e4:
    rra
    nop
    ld hl, sp+$1f
    nop
    rra
    nop
    db $d3
    halt
    add b
    nop
    ldh [rP1], a
    ld hl, sp-$15
    nop
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    ret nz

    ret nz

    rst $38
    add b
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_010_63ae

    ldh [c], a
    ld [hl+], a
    nop
    rst $38
    ld b, c
    ld a, b
    ld [hl], c
    ld [hl], a
    dec b
    ld a, c
    inc bc
    inc bc
    ld bc, $fd7f
    cp $0d
    cp $f5
    ld b, $15
    ld [hl+], a
    nop
    cp $63
    ld [bc], a
    xor a
    jr nc, jr_010_63d3

    jr nc, jr_010_63e4

    ccf
    ret nz

    rst $00
    cp a
    rst $38
    ret nz

    ld h, l
    ld a, e
    ld h, l
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $ff
    dec c
    ld c, $fd
    cp $03
    db $fd
    rst $38
    inc bc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop
    ld d, b
    inc b
    nop
    cpl
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    inc bc
    inc bc
    rlca
    rst $38
    inc b
    dec c
    dec bc
    ld c, $0b
    dec c
    dec bc
    rlca
    rst $38
    inc b
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    db $fc
    rst $38
    inc b
    or $fa
    xor $1a
    or $fa
    db $fc
    rst $38
    inc b

jr_010_64a5:
    ld hl, sp-$08
    rlca
    inc b
    inc c
    dec bc
    jr @+$01

    rla
    ld e, $11
    ccf
    ld h, $3f
    jr z, jr_010_64ef

    rst $38
    dec h
    ld h, d
    ld e, l
    ldh a, [rNR10]
    jr jr_010_64a5

    inc c
    rst $38
    db $f4
    inc a
    call nz, $32fe
    ld a, [hl]
    adc d
    ld l, $ff
    jp nc, $dd23

    rlca
    rlca
    rrca
    ld [$ff1a], sp
    rla
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, d
    ld e, a
    ld a, [$bfff]
    db $eb
    cp h
    ld l, e
    ld d, h
    db $ec
    db $d3
    ei
    rst $38
    inc h
    cp a
    jp nc, $e7df

    rst $38
    ldh a, [$ffbe]
    rst $38
    db $ed
    cp a
    ld l, [hl]

jr_010_64ef:
    ld a, [de]
    push hl
    and [hl]
    ld e, c
    ld e, e
    rst $38
    db $e4
    ld e, a
    jp hl


    rst $38
    inc e
    rra
    pop hl
    rrca
    rst $38
    or $ff
    ld c, $dc
    ld e, h
    cp $62
    db $eb
    rst $38
    sbc l
    cp a
    ld a, [hl]
    ld a, a
    rst $38
    db $eb
    rst $38
    xor e
    rst $30
    rst $38
    cp d
    rst $00
    inc bc
    add hl, bc
    add b
    add b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ldh [$ffa0], a
    ldh [$ffa0], a
    rst $28
    or e
    cp a
    db $fc
    xor h
    ld [hl], b
    ld d, b
    jr nz, jr_010_6549

    add l
    ld a, [bc]
    rst $28
    rst $38
    sbc d
    halt
    ld e, l
    ld a, [hl]
    ld e, l
    ld l, a
    ld e, h
    ld [hl-], a
    rst $38
    dec l
    inc e
    inc de
    ld a, [de]
    rla
    dec e
    rla
    adc $ff
    inc sp
    ld l, l
    sub a
    sbc a
    ld h, a
    xor [hl]
    ld d, a
    xor c
    rst $38
    ld d, [hl]

jr_010_6549:
    and a
    ld e, c
    or e
    ld e, l
    or e
    ld e, l
    cp $ff
    add hl, sp
    rst $00
    ld b, [hl]
    pop bc
    ld b, c
    ret nz

    ld b, b
    add b
    pop af
    add b
    and e
    dec c
    ld b, c
    inc b
    rst $20
    nop
    nop
    nop
    ld a, e
    ld e, [hl]
    rst $38
    ccf
    ld h, $1f
    jr jr_010_6572

    ld b, $03
    ld [bc], a
    ei
    ld bc, $c101

jr_010_6572:
    rrca
    ld [hl], e
    cp l
    ld a, [hl]
    or d
    ld a, h
    rst $28
    adc h
    ld [hl], b
    or b
    ld h, b
    ld l, d
    ld [bc], a
    nop
    nop
    ld bc, $12fe
    nop
    dec de
    ld a, [de]
    ccf
    jr nz, jr_010_65ea

    ld e, a
    ret nz

    rst $38
    cp a
    pop af
    adc [hl]
    rst $38
    ld sp, $44fb
    pop de
    rst $30
    ld l, $11
    xor $a1
    add hl, bc
    ld h, b
    and b
    ldh [rNR41], a
    rst $38
    ldh a, [$ff90]
    ldh a, [$ff50]
    ld [hl], b
    sub b
    dec de
    db $eb
    rst $18
    inc bc
    ld [bc], a
    ld b, $05
    rlca
    jr nz, jr_010_65b0

jr_010_65b0:
    dec c
    dec bc
    db $fd
    rrca
    ld b, b
    inc de
    ld c, $0b
    db $eb
    ld d, h
    db $ec
    sub e
    ld a, a
    cp e
    call nz, $e2df
    rst $28
    rst $30
    xor a
    nop
    rrca
    cp e
    rst $18
    ld l, $04
    rrca
    add sp, -$02
    dec e
    inc bc
    rrca
    ld hl, sp-$01
    ld c, b
    db $ec
    inc [hl]
    cp h
    ld [hl], h
    ld a, h
    db $f4
    or $ff
    ld a, [$fabe]
    xor [hl]
    ld a, [$9a6e]
    rrca
    ld a, a
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    dec b
    ld [bc], a

jr_010_65ea:
    ld [bc], a
    ld b, $0e
    rst $20
    jp c, $ddf6

    rrca
    ld c, $08
    ld c, $6a
    cp $6a
    rst $08
    call c, $c854
    ld c, b
    dec b
    ld c, $01
    ld [$0b0c], sp
    rst $38
    rrca
    ld [$131f], sp
    rra
    inc d
    dec e
    ld [de], a
    rst $38
    ld [hl], c
    ld l, [hl]
    ld hl, sp+$08
    inc c
    db $f4
    ld b, $fa
    rst $38
    ld e, $e2
    rst $38
    add hl, de
    cp a
    ld b, l
    rla
    jp hl


    ei
    ld de, $0bee
    ld e, $c0
    ret nz

    dec e
    ld [de], a
    dec [hl]
    rst $38
    ld a, [hl+]
    dec sp
    inc l
    dec a
    ld l, $6d
    ld e, [hl]
    ld [hl], l
    rst $38
    ld e, [hl]
    ld [hl], e
    ld e, l
    ld [hl], a
    ld e, c
    ld h, e
    sbc h
    sub h
    rst $38
    ld l, e
    ld l, e
    sbc h
    db $eb
    ld e, l
    rst $38
    db $e3
    db $e3
    rst $38
    inc e
    pop bc
    cp [hl]
    rst $38
    pop bc
    ld e, h
    and h
    sub $ff
    ld a, [hl+]
    ld l, [hl]
    sbc d
    sbc $3a
    db $db
    cp l
    rst $10
    rst $38
    dec a
    rst $20
    db $dd
    rst $30
    call Call_010_5b75
    ld l, [hl]
    rst $38
    ld d, e
    ccf
    dec hl
    dec e
    dec de
    ld b, $05
    inc bc
    db $fd
    ld [bc], a
    ld hl, $f900
    ld b, [hl]
    call $d3b2
    xor h
    rst $38
    push af
    adc d
    ld d, l
    xor d
    sub h
    ld l, e
    ld d, [hl]
    db $eb
    rst $38
    or [hl]
    db $eb
    rst $10
    ld l, l
    cp e
    push hl
    cp $ea
    rst $38
    call c, $30ec
    ret nc

    ldh [rNR41], a
    ld h, b
    and b
    inc bc
    ld h, b
    and b
    dec c
    dec h
    nop
    ld [$20ff], sp
    jr nz, @-$72

    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    cp l
    cp l
    ld a, [$7ffa]
    ld a, a
    rst $10
    rst $10
    rst $38
    db $ed
    db $ed
    ld a, a
    ld a, a
    jp c, Jump_010_7fda

    ld a, a
    rst $38
    rst $30
    rst $30
    xor l
    xor l
    rst $38
    di
    ld [hl], a
    ld l, e
    rst $38
    cp $e6
    rst $30
    rst $30
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rst $38
    nop
    nop
    rrca
    ld [$273a], sp
    cpl
    rra
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ccf
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [rWave_0]
    cp b
    ret c

    rst $38
    sbc $e6
    rst $30
    ei
    ei
    db $fd
    ei
    db $fd
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, a
    ld e, h
    sub $ef
    rst $38
    cp e
    add $7f
    cp b
    ld a, [hl-]
    ld b, a
    xor a
    rst $18

Jump_010_66ff:
    rst $38
    or b
    or b
    ld a, h
    ld b, h
    cp $ba
    call z, $ff74
    cp a
    pop bc
    rst $38
    add [hl]
    cp a
    ld a, c
    rst $28
    dec e
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ret nz

    or l
    ld h, b
    sbc [hl]
    ld [hl], b
    ld c, l
    jr c, jr_010_6797

    rst $38
    jr c, jr_010_67a5

    ld a, h
    ld d, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    jr z, jr_010_67a5

    jr z, jr_010_67a7

    ld d, $19
    ld de, $ff1e
    ld [$0e0f], sp
    rrca
    ld bc, $0001
    nop
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc $30
    ld b, $ff
    rst $38
    rst $38
    nop
    ld c, $e0
    nop
    rlca
    ld hl, sp-$01
    ld a, b
    add a
    add c
    ld a, a

jr_010_6797:
    ld e, $fe
    ldh [$ffe0], a
    rst $38
    nop
    nop
    ld a, [bc]

jr_010_679f:
    or $34
    call z, $3ccc
    ld l, a

jr_010_67a5:
    jr jr_010_679f

jr_010_67a7:
    ldh a, [$fff0]
    inc bc
    db $10
    rst $30
    rst $30
    and c
    ld c, $ff
    rst $28
    rst $28
    ld a, l
    ld a, l
    rst $30
    rst $30
    cp d
    cp d
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0420], sp
    sbc a
    ld de, $8cff
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    rst $18
    di
    inc e
    db $e3
    add hl, de
    rst $20
    inc bc
    ld bc, $7fef
    rst $38
    xor a
    ld a, a
    add e
    ld a, a
    ldh [$ff9f], a
    ld a, [hl]
    ld h, c
    rst $38
    rra
    ld e, $03
    inc bc
    nop
    nop
    db $ed
    cp $ff
    pop hl
    cp $c3
    db $fd
    rra
    db $e3
    inc l
    call c, $f8fb
    jr c, @+$03

    ld b, $fe
    cp c
    ld a, h
    and e
    db $e4
    rst $38
    sbc a
    add hl, sp
    ld c, [hl]
    ld a, e
    inc l
    push af
    bit 7, a
    rst $38
    ld h, l
    rra
    ld c, $ef
    ld [hl], d
    ld [hl], a
    cp c
    rst $18
    rst $38
    cp d
    db $ed
    db $db
    ld a, a
    ret z

    cp [hl]
    ld d, d
    xor $ff
    inc e
    call c, $fbc0
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    ld bc, $feff
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rlca
    rst $38
    inc b
    jp c, $44db

    ld b, h
    adc c
    adc c
    ld [hl+], a
    rst $38
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $ce
    rst $38
    ccf
    ccf
    rst $38
    cpl
    cpl
    jp c, $2dda

    rst $38
    dec l
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_010_723d

    rst $38
    adc l
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    ei
    and e
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    ld a, a
    inc d
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, c
    dec e
    rst $38
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $38
    call nc, $ecec
    db $f4
    ld [$f6f6], a
    ld a, [$f6ff]
    ld a, [$fafc]
    db $fd
    ei
    di
    db $fd
    ld a, a
    db $e3
    db $fd
    di
    db $fd
    ldh [c], a
    db $fc
    ldh a, [c]
    jr nz, jr_010_68ab

jr_010_68ab:
    rst $38
    ld a, [$eafc]
    db $fc
    ldh [c], a
    db $fc
    db $e4
    ld a, [$c6ff]
    ld a, [$221c]
    inc e
    ld a, a
    ld h, e
    ld a, $ff
    ld e, [hl]
    ccf
    ld a, b
    rlca
    ld b, d
    ccf
    ld c, [hl]
    ccf
    rst $38
    adc $bf
    xor l
    xor l
    ei
    ld a, [$797e]
    rst $38
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    set 7, a
    ld l, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ld sp, hl
    rst $38
    nop
    ld hl, $2483
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    rst $30
    dec b
    dec b
    dec bc
    ld b, c
    dec h
    dec c
    ld c, $6e
    ld [hl], c
    rst $08
    ld [hl], a
    adc a
    sbc a
    ld a, a
    db $10
    jr @+$22

    jr jr_010_691b

jr_010_691b:
    nop
    rrca
    db $fc
    inc bc
    ei
    db $fc
    pop bc
    nop
    dec b
    ld bc, $001f
    rlca
    add hl, hl
    rst $38
    cp [hl]
    and b
    ld hl, $401e
    ccf
    ret nz

    cp a
    rst $38
    ld b, b
    ccf
    jp nz, Jump_010_61bd

    ld e, $31
    ld c, $ff
    and h
    and h
    ld bc, $ca01
    ld c, d
    db $ed
    ld hl, $52ff
    adc h
    ld h, c
    sbc [hl]
    ld c, c
    or [hl]
    ld d, c
    xor [hl]
    ldh a, [$ff2f]
    inc bc
    rra
    nop
    rra
    nop
    rlca
    cpl
    cp l
    reti


    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    adc $bf
    ld c, [hl]
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    dec de
    rst $38
    rla
    dec hl
    scf
    ld sp, $332f
    cpl
    ld d, e
    ld a, a
    ld l, a
    ld h, a
    ld e, a
    daa
    ld e, a
    and a
    rst $18
    add l
    ld c, $f8
    rra
    nop
    rrca
    db $10
    rra
    nop
    nop
    nop
    cp b
    and a
    inc l
    rst $38
    inc hl
    ld a, [bc]
    add hl, bc
    and a
    and h
    inc d
    db $10
    adc b
    rst $38
    add b
    inc h
    jr nz, jr_010_6a29

    ld c, h
    and e
    ld e, h
    adc [hl]
    rst $38
    ld [hl], b
    cp d
    ld b, d
    ld h, h
    inc b
    ld [de], a
    ld [bc], a
    dec c
    rra
    dec b
    ld [de], a
    ld [bc], a
    pop af
    ld de, $032f
    rra
    nop
    rra
    nop
    cp $07
    ccf
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $ff
    ldh a, [c]
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    rst $38
    dec c
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $39
    rst $38
    rst $38
    push bc
    ld a, a
    cp l
    ld a, a
    ld hl, sp+$06
    add l
    rst $28
    ld a, a
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    xor $ff
    db $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h

jr_010_6a29:
    ld e, c
    ld [hl], d
    rst $38
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $38
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $38
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $38
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$aff7], sp
    db $fd
    rst $18
    dec h
    nop
    ld h, a
    ld e, a
    ld d, a
    ld l, a
    ld d, c
    ld l, a
    db $f4
    cpl
    rrca
    and e
    rrca
    ei
    jr nz, jr_010_6a61

jr_010_6a61:
    di
    rst $38
    ld h, c
    rst $38
    rst $38
    cp h
    add h
    dec h
    add hl, de
    ld d, d
    ld c, h
    xor c
    and [hl]
    rst $38
    dec a
    ld [bc], a
    db $e3
    sbc h
    ld sp, $3f0e
    ld b, b
    rst $38
    and h
    and h
    ld a, c
    ld bc, $7a86
    dec e
    push hl
    rst $38
    ld [hl-], a
    adc $6d
    sub c
    jp nz, $bd3c

    ld b, c
    ei
    rst $30
    rst $10
    nop
    ld b, a
    db $fd
    xor a
    rst $28
    db $fd
    rst $38
    rst $38
    db $fd
    or l
    cp [hl]
    cp [hl]
    rst $28
    db $fd
    ld d, a
    rst $38
    rst $38
    sub $ff
    ld a, a
    rst $38
    jp c, $4aff

    rst $38
    rst $38
    ld l, a
    rst $38
    cp d
    rst $38
    or [hl]
    rst $38
    ld d, h
    xor e
    rst $38
    ld d, l
    xor d
    add d
    ld a, l
    sub c
    ld l, [hl]
    ld d, h
    xor e
    rst $38
    ld b, h
    cp e
    xor c
    ld d, [hl]
    add hl, hl
    sub $c0
    ccf
    ld a, [$44e0]
    ld a, a
    jr nc, jr_010_6ac8

    nop
    rst $38

jr_010_6ac8:
    ld h, c
    rst $18
    ld b, c
    rst $28
    pop de
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    rst $38
    nop
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    rst $38
    cp a
    cp a
    ld a, l
    ld h, c
    db $e3
    db $dd
    pop hl
    sbc $ff
    pop hl
    sbc $7d
    ld h, d
    rst $18
    db $dd
    rst $30
    push af
    rst $38
    ld e, l
    ld b, c
    db $e3
    db $dd
    ld h, c
    ld e, [hl]
    pop hl
    sbc $ff
    ld e, c
    ld b, [hl]
    cp l
    cp d
    ld l, e
    ld l, c
    or [hl]
    or h
    rst $38
    sbc l
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    ld a, a
    adc l
    ld a, a
    rst $38
    adc e
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    rst $38
    db $10
    db $10
    add c
    add c
    jr z, jr_010_6b43

    ld [bc], a
    ld [bc], a
    rst $38
    ld c, l
    ld c, l
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    rst $38
    ld b, d
    ld b, d
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    rst $38
    db $ec
    inc e
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    rst $38
    inc hl
    inc hl
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, [hl]

jr_010_6b43:
    ld [hl], d
    ld c, e
    call z, $3211
    add h
    adc l
    rst $38
    jr jr_010_6b65

    ld a, l
    ld a, l
    rra
    rla
    ld c, a
    ld c, e
    rst $38
    rst $20
    ret nz

    ld a, $29
    inc e
    inc bc
    dec sp
    scf
    rst $38
    call c, $ffdc
    cp a
    rst $38
    rst $28
    rst $38
    ret nz

jr_010_6b65:
    ld a, a
    ldh a, [rIF]
    ld b, $ff
    ld h, e
    cp a
    inc e
    jr nz, jr_010_6bb7

    rst $38
    ld a, $32
    cp $e6
    db $fc
    call z, Call_000_1efe
    rst $38
    ld a, [hl-]
    jp z, Jump_010_6296

    ld e, h
    and h
    ldh [$ff9f], a
    rst $38
    add e
    ld a, h
    ld sp, hl
    add [hl]
    and e
    sbc h
    ld l, l
    ld d, e
    rst $38
    pop de
    call $bfb7
    ld d, l
    ld d, l
    adc [hl]
    halt
    rst $38
    cp a
    ld b, c
    ld b, c
    cp [hl]
    ld [hl], a
    adc c
    sbc [hl]
    ldh [c], a
    rst $38
    push hl
    push af
    ld a, [hl+]
    ld a, [hl+]
    cp l
    cp l
    add e
    ld a, [hl]
    ei
    jp $4d3e


    nop
    and c
    ld e, [hl]
    push de
    ld a, [hl+]
    rst $38
    rlca
    nop
    add c
    ld a, [hl]
    sub b
    ld c, l
    ld h, h
    ld e, e

jr_010_6bb7:
    ld [hl], c
    dec [hl]
    ldh [rKEY1], a
    db $10
    ld c, [hl]
    db $db
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    ld a, e
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    cp $61
    ld b, l
    cp a
    cp a
    ld l, l
    ld l, l
    rst $30
    add a
    adc a
    rst $38
    ld [hl], a
    ld c, $f6
    ld [hl], e
    add e
    sbc $1e
    rst $30
    rst $38
    ld [hl], a
    ld a, [hl+]
    ld a, [hl+]
    rst $30
    rst $00
    call $8bb5
    rst $38
    ld [hl], e
    ld a, $ce
    ld e, l
    sbc l
    rst $38
    ld a, a
    or l
    rst $38
    dec [hl]
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    cp $ff
    add $bd
    sbc c
    cp a
    db $db
    or $d2
    push af
    rst $38
    reti


    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    rst $38
    ld sp, $a1bd
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $eeff

    ld [$544f], sp
    call c, $9b1a
    ld [hl], $ff
    or [hl]
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $38
    rst $18
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    rst $38
    ld l, l
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $ff
    or $70
    ld l, a
    di
    adc $b0
    xor a
    dec [hl]
    rst $38
    cpl
    ld a, b
    ld [hl], a
    ld a, [$f8d5]
    rst $20
    ld a, c
    rst $38
    halt
    ld c, h
    or e
    inc hl
    call c, $ff19
    add [hl]
    rst $38
    ei
    ld h, b
    rst $38
    jp z, $2435

    db $db
    rst $10
    rst $38
    ld a, [hl]
    sbc [hl]
    ld h, [hl]
    ld e, d
    xor d
    ld e, $ea
    sbc [hl]
    rst $38
    and $6c
    call nc, $f40c
    ld c, [hl]
    or $8e
    ld sp, hl
    or $2f
    add hl, hl
    dec bc
    ld l, c
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    cp $21
    dec e
    nop
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    rst $38
    inc de
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    rst $38
    ld [hl], a
    ld a, b
    jp hl


    or $d7
    xor $af
    sbc $ff
    xor e
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    db $fd
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ei
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    rst $38
    db $fd
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    dec b
    rst $38
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    rst $38
    cp a
    cp a
    ld l, a
    ld h, c
    pop af
    xor $f9
    and $ff
    ldh a, [c]
    db $ed
    ld h, h
    ld e, e
    rst $28
    call nc, $cfff
    rst $38
    rst $30
    rst $30
    xor a
    and c
    pop af
    xor $e9
    and $ff
    or d
    xor l
    db $e4
    db $db
    cp a
    add h
    ld a, a
    ld a, a
    rst $38
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    rst $38
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    rst $38
    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $38
    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    rst $38
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    rst $38
    ld d, c
    rst $28
    xor a
    or b
    and $f9
    adc $f1
    rst $38
    ld c, c
    call Call_000_3b32
    dec h
    and $16
    add hl, de
    rst $38
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    add sp, $2f
    add sp, -$01
    ld a, [hl-]
    scf
    ld a, c
    ld h, [hl]
    ld a, e
    ld b, a
    ld a, h
    ld [hl], e
    rst $38
    call c, $bfdb
    cp h
    and a
    and a

jr_010_6d48:
    rrca
    ld c, $ff
    ld c, h
    rst $38
    or c
    xor $4c
    ei
    inc sp
    sbc $f7
    ret z

    cp a
    jr nz, jr_010_6d48

    ld h, a
    cp e
    cp d
    xor $d2
    rst $38
    inc c
    db $f4
    sbc $f6
    ld e, $e6
    cp [hl]
    ld b, d
    ccf
    ld a, [hl]
    cp d
    xor $6e
    add h
    add h
    cpl
    rrca
    dec bc
    ld a, c
    rst $28
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, $7e01

    ld b, c
    db $10
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    db $fc
    ld b, b
    dec l
    ld h, b
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    rst $38
    adc $ef
    ldh [$ff75], a
    ldh a, [$ffbb]
    ld a, b
    ld e, l
    rst $38
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, $ff29

    ret c

    add hl, hl
    ret c

    dec l
    call c, $da2b
    dec hl
    rst $38
    jp c, $dc2d

    dec l
    call c, $2baf
    xor a
    rst $38
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    rst $38
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    rst $38
    sbc a
    sbc l
    rst $38
    ld l, l
    ccf
    jp Jump_010_5da3


    ld c, [hl]
    or b
    or e
    rst $38
    ld b, e
    ld c, [hl]
    or [hl]
    rst $30
    ld b, a
    rst $30
    sub a
    sbc l
    rst $38
    ld h, l
    scf

jr_010_6ddc:
    res 4, e
    ld e, l
    ld c, a
    or e
    or a
    rra
    ld b, a
    ld c, [hl]
    or [hl]
    rst $38
    ld c, a
    nop
    ld [$2f00], sp
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_6e04:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_6e15:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_010_6ddc

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_010_6e3c

    rst $38
    rst $38

jr_010_6e3c:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_010_6e04

    jr nc, jr_010_6e15

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, rJOYP
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_010_6eb9

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_010_6eb9:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_010_6ef3

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_010_6ef3:
    jr nz, jr_010_6ef5

jr_010_6ef5:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_010_6efd

jr_010_6efd:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, $01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [rWave_d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_010_6f56

jr_010_6f56:
    push de
    jr nz, jr_010_6f59

jr_010_6f59:
    pop de
    jr nz, jr_010_6f5c

jr_010_6f5c:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_010_6fa7

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_010_6faa

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_010_6fa7:
    ld [bc], a
    rlca
    ei

jr_010_6faa:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_010_7008

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_010_6fef

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, jr_010_7053

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp $679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_010_6fef:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_010_7008:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    xor d
    jr nz, jr_010_7040

    inc b
    jr nz, jr_010_701d

jr_010_701d:
    ld [$0020], sp
    db $10
    jr nz, jr_010_7023

jr_010_7023:
    nop
    rst $38
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    ld d, d
    xor l
    rst $38
    ld l, e
    sub l
    or a
    ret


    or c
    adc $5a
    ld h, a
    rst $38
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $18
    inc a
    rst $38

jr_010_7040:
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $10
    inc l
    or a
    ld h, [hl]

jr_010_704a:
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    jr nc, @+$29

    sbc d

jr_010_7053:
    ld a, [hl]
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    ldh [$ff65], a
    jr z, jr_010_7081

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    nop
    ld a, [bc]
    ccf
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $20
    jr nz, @+$05

    jr nz, jr_010_70f7

    jr z, jr_010_704a

    inc b
    ld hl, sp+$14
    add sp, $38
    jr nz, @+$22

jr_010_7081:
    rst $38
    ld [hl], h
    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf
    jp z, $ffbd

    ld b, h
    cp e
    swap a
    db $e4
    rra
    cp e
    ld c, a
    rst $38
    ld [hl+], a
    rst $18
    adc b
    ld a, a
    dec d
    rst $38
    ld l, e
    rst $38
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    sbc $ee
    rst $38
    halt
    rst $38
    push de
    db $dd
    sub $de
    sub [hl]
    sbc [hl]
    rst $38
    rla
    rra
    sub l
    sbc l
    rla
    rra
    dec d
    dec e
    rst $38
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    ld e, h
    ld a, h
    rst $38
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    dec e
    dec d
    rst $38
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    sub e
    db $fd
    rst $38
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_010_70f7

    ld [de], a
    ld l, [hl]
    pop hl
    rlca
    jr jr_010_70f8

    inc a
    stop
    jr jr_010_70fd

    and c
    ld [$afff], sp
    or c
    ld d, a
    ld e, b
    xor l
    xor [hl]
    ld a, [bc]
    dec bc
    rst $38
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_010_70f7:
    inc hl

jr_010_70f8:
    inc hl
    rst $38
    cp c
    ld b, [hl]
    adc a

jr_010_70fd:
    ld [hl], b
    jp $fa3c


    dec b
    rst $38
    cp a
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    sbc [hl]
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    ldh a, [rWave_7]
    add b
    cp a
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    ret nz

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld [$df07], sp
    dec b
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_010_7158

    ld b, $00
    ei
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ld h, b
    ret nc

    cp $02
    jr nz, jr_010_70f8

    ld c, a
    db $ed
    inc de
    xor $11
    cp c
    rst $38
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    ld e, $76
    rst $38

jr_010_7158:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    db $fd
    sub d
    rst $38
    ld [hl], d

jr_010_7162:
    rst $20
    rra
    cp h
    jp $fc03


    sbc h
    rst $38
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    inc e
    jr jr_010_7162

    inc d
    jr z, @+$36

    set 4, c
    jr @+$01

    add l
    adc c
    rst $38
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rla
    jr @+$01

    dec e
    db $e3
    ldh [$ff1f], a
    add hl, de
    cp $2d
    ld [hl-], a
    rst $38

jr_010_718f:
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    ld d, c
    xor $bf
    db $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld [$ff20], sp
    ccf
    ld l, h
    sbc a
    call c, $db3f
    inc a
    call nz, $3bff
    rst $20
    sbc a
    db $ec
    scf
    db $eb
    inc [hl]
    sub $ff
    add sp, -$1a
    sbc b
    ld b, [hl]
    cp b
    ld c, d
    or h
    sub $ff
    xor b
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    ld a, a
    nop

jr_010_71c7:
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, $44c2

    ld b, a
    rst $38
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt

jr_010_71d5:
    adc [hl]
    add [hl]
    xor $7b
    and $fe
    ld b, b
    ld [hl-], a
    cp $06
    ld c, $f6
    cpl
    dec c
    ld a, b
    rra
    nop
    rra
    nop
    rst $08
    rra
    inc c
    inc bc
    ld a, [bc]
    dec b
    and c
    jr nc, jr_010_718f

    push bc
    rra
    jr jr_010_71d5

    jr z, jr_010_71c7

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    rst $38
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    sbc [hl]
    halt
    rst $38
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $08
    pop de
    rst $38
    inc sp
    and l
    rst $18
    ldh [rIE], a
    inc l
    rst $38
    adc h
    xor a
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    ld [hl], b
    ld d, c
    add c

jr_010_7222:
    rst $38
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    inc c
    rst $38
    rst $38
    jr nc, jr_010_7222

    xor e
    db $ec
    and h
    ei
    rlca
    rst $38
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    add sp, -$19

Jump_010_723d:
    rst $38
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $e2a4

    rst $18
    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    ld [$629d], sp
    rst $38
    pop af
    ld c, $c3
    inc a
    ld e, a
    and b
    db $fd
    inc bc
    rst $38
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    db $f4
    adc h
    rst $38
    ld [$b61a], a
    halt
    ld d, l
    push de
    or d
    or d
    rst $38
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    add d
    ccf
    ldh [rIE], a
    rst $18
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    reti


    ret


    ccf
    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    ldh a, [$ff2f]
    dec c
    rra
    nop
    rra
    nop
    add hl, bc
    jr nz, @+$0b

    ld b, $09
    ld b, $cf
    inc b
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, jr_010_72e7

    or b
    ld a, a
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld [hl], b
    ld [bc], a
    ld b, b
    nop
    ld [$ffbd], sp
    inc l
    nop
    rlca
    ld b, $01
    ld bc, $01e8
    rst $38
    rst $38
    or $6b
    cp $33
    cp $9b
    ld a, [hl]
    ld c, l
    rst $38
    ccf
    ld h, $1f
    inc de
    ccf
    add hl, sp
    rst $38
    ldh [$fffb], a
    ld b, $fb
    dec h
    nop
    add [hl]
    ld a, e
    add $bb
    and $77
    db $db
    rra
    xor $20
    nop
    ldh [$ff1f], a
    db $ec
    add l
    nop
    rst $38
    inc bc
    nop
    dec c
    inc bc
    db $10
    inc c
    inc hl
    db $10

jr_010_72e7:
    rst $38
    ld h, $11
    ld c, d
    dec h
    ld c, d
    dec h
    jp z, $ffa5

    ret nz

    nop
    jr nc, jr_010_72f5

jr_010_72f5:
    ret z

    ret nz

    db $f4
    jr nc, @+$01

    db $f4
    sub b
    jp c, $daa8

    xor b
    db $db
    xor c
    pop af
    rst $38
    add hl, de
    nop
    pop af
    rlca
    db $ec
    ld [$f749], sp
    inc e
    db $e3
    rst $38
    rst $38
    nop
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    or l
    dec hl
    ret nc

    add hl, bc
    ret


    ld [bc], a
    ld bc, $0606
    add c
    inc bc
    ld a, [$d0f8]

jr_010_7325:
    ld a, [bc]
    ld d, b
    inc bc
    add b
    inc bc
    ret nc

    sub b
    rst $38
    cp a
    ld a, a
    rst $38
    cp a
    rst $10
    cp a
    ld h, b
    sbc a
    ldh [c], a
    ldh [c], a
    add $ff
    add $a9
    xor c
    ld bc, $0601
    ld [bc], a
    ld c, [hl]
    rst $38
    ld c, b
    ld [bc], a
    ld bc, $5057
    jp z, $05ca

    rst $38
    dec b
    jr z, jr_010_7376

    add h
    add h
    or a
    or a
    rst $38
    rst $38
    add c
    db $db
    inc h
    inc h
    db $db
    ld hl, $201e
    rst $38
    rra
    or b
    xor a
    or b
    xor a
    cp b
    sub a
    ld [hl-], a
    rra
    dec l
    ld [hl], b
    ld l, a
    adc b
    add a
    cpl
    db $10
    rra
    nop
    add hl, bc
    db $10
    ld hl, sp+$0f
    ld de, $110b

jr_010_7376:
    rlca
    db $10
    sbc a
    ld l, [hl]
    rst $18
    and b
    rst $38
    sbc a
    adc $40
    jr nz, jr_010_73d1

    jr nz, jr_010_7325

    rrca
    pop hl
    rrca
    ld b, b
    ld a, a
    jr nz, @-$2f

    and b
    ld a, [bc]
    ld [$08fa], sp
    and c
    rrca
    cp $e1
    rrca
    ld a, [bc]
    ld [$09fb], sp
    xor d
    rst $38
    push af
    cp $3a
    db $10
    ld hl, $41fe
    cp $a9
    cp $51
    ccf
    cp $e9
    cp $f5
    cp $b9
    ld b, b
    nop
    dec c
    ld a, [de]
    rst $18
    ldh [$ffe0], a
    ldh [rNR41], a
    ld h, b
    jr nz, jr_010_73b9

jr_010_73b9:
    ld a, [hl]
    ld a, $ff
    ld a, [hl]
    ld [bc], a
    ld b, $02
    ld a, [hl]
    ld a, e
    ld [hl], b
    jr nc, @+$01

    cp b
    sbc b
    ld e, h
    call z, $67af
    ld d, a
    or e
    rst $38
    and h
    db $d3
    cp d

jr_010_73d1:
    ret


    jp nc, $2269

    ld hl, $0bff
    ld [$d1d6], sp
    cpl
    inc l
    add [hl]
    add c
    rst $38
    ld a, [de]
    add hl, de
    sub [hl]
    sub l
    call nz, $48c3
    rst $38
    rst $38
    and d
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc b
    sub a
    rst $38
    inc e
    dec bc
    xor b
    and a
    add hl, bc
    ld b, $4c
    ld b, e
    ccf
    sub h
    sub e
    inc c
    inc bc
    xor b
    and a
    ld c, a
    ld c, $1f
    nop
    ld hl, sp+$09
    rrca
    rrca
    ld de, $110b
    rst $38
    ld l, [hl]
    rst $38
    ld [hl], $ff
    rst $30
    sbc b
    ld a, a
    ld c, h
    nop
    ld [hl+], a
    ld [de], a
    ccf
    jr c, @+$01

    db $fd
    ldh [$ffc5], a
    rrca
    rst $38
    nop
    cp a
    ld a, a
    add b
    ld a, a
    ei
    rst $38

jr_010_7430:
    nop
    push bc
    rrca
    rst $38
    nop
    db $fd
    cp $01
    db $ed
    cp $12
    inc e
    rst $38
    cp $42
    nop
    db $ec
    rst $38
    add b
    xor $20
    jr nz, jr_010_7430

    cp $f1
    nop
    db $10
    pop de
    cp $a3
    sbc a
    db $fc
    dec b
    ld a, [$d42b]
    db $fc
    jr nz, jr_010_7457

jr_010_7457:
    ld a, [hl+]
    rlca
    sbc a
    ld a, e
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld a, $21

jr_010_7460:
    db $10
    ld b, d
    nop
    ccf
    rst $38
    ld l, l
    or h
    db $fd
    inc b
    ld bc, $fdfc
    nop
    rst $38
    db $fd
    ld hl, sp-$13
    jr jr_010_7460

Jump_010_7473:
    ret c

    ld l, l
    ret c

    rst $38
    inc [hl]
    inc sp
    ld l, h
    ld l, e
    ld a, [hl-]
    dec a
    adc h
    adc e
    rst $38
    inc e
    dec de
    ld a, h
    ld [hl], e
    jr c, @+$39

    db $ec
    db $eb
    sub a
    xor l
    rst $38
    rst $30
    jr nc, jr_010_74b4

    ei
    ldh [rIF], a
    and e
    ld h, $28
    rst $38
    daa
    adc h
    add e
    ld b, h
    ld b, e
    inc a
    inc sp
    add hl, de
    ld a, a
    ld d, $c4
    jp Jump_000_2b6c


    cp c
    ld b, $4f
    ld c, $70
    rra
    nop
    rrca
    db $10
    rrca
    ld bc, $1106
    inc b
    rlca
    ld b, $25

jr_010_74b4:
    nop
    rst $38
    rrca
    ld c, $ff
    ld hl, sp-$01
    db $fc
    cp $fa
    rst $38
    db $fc
    ei
    ld sp, hl
    add e
    sub h
    ld a, c
    jp nz, $ff44

    rst $38
    ld a, [hl]
    add c
    ld a, h
    rst $38
    ccf
    ld a, a
    ld e, a
    rst $38
    ccf
    ld e, a
    rra
    ld b, c
    ld hl, $c19e
    and b
    rst $38
    ld a, a
    ld a, [hl]
    add a
    ld a, $3c
    nop
    ld b, d
    inc a
    rst $38
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    jp $bd3c


    ld b, d
    cp $81

jr_010_74ed:
    nop
    ld bc, $5901
    ld e, c
    ld [hl], h
    ld [hl], h
    ld hl, $2177
    adc b
    adc b
    ldh [c], a
    jr nc, @+$01

    cp h
    add b
    add hl, bc
    ld [bc], a
    ei
    sbc c
    ld h, [hl]
    and e
    rrca
    ldh [$ffa0], a
    ld h, b
    and b
    ldh [rWave_f], a
    jr nz, jr_010_74ed

    ldh [$ff80], a
    ld a, a
    ld l, l
    ld b, b
    rrca
    ld c, c
    nop
    rst $38
    ld b, h
    add h
    jp nc, $8e12

    ld c, $75
    or l
    rst $38
    jp c, Jump_010_770a

    add [hl]
    inc d
    db $eb
    jr nz, @-$1f

    rst $38
    ld c, h
    ld c, h
    jr jr_010_7544

    add h
    add h
    ld hl, $ff21
    call nc, Call_010_7fd4
    sbc c
    reti


    ld h, $0a
    push af
    rst $38
    ld [de], a
    ld [de], a
    add c
    add c
    scf
    scf
    ld de, $ff11
    add d

jr_010_7544:
    add d
    push af
    or l
    ld a, [$701a]
    add b
    add b
    ld c, a
    ld c, $1f
    nop
    add sp, $1d
    rrca
    ld bc, $010c
    rst $20
    rrca
    inc bc
    db $10
    ldh a, [c]
    rst $38
    adc c
    db $fc
    di
    db $fd
    ei
    db $fd
    ei
    db $dd
    rst $38
    di
    or l
    db $eb
    ld l, d
    push de
    daa
    ld a, [$df4f]
    sub c
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld hl, $ef00
    rst $18
    rst $08
    rla
    rst $38
    rst $28
    cp a
    pop bc
    rrca
    ld b, l
    nop
    jp $ffbd


    rst $38
    jp $00ff


    db $dd
    db $dd
    sub d
    sub d
    rst $38
    ret


    ret


    add e
    add e
    push de
    push de
    adc b
    adc b
    rst $28
    dec d
    dec d
    and l
    ld e, d
    dec h
    nop
    push hl
    ld a, [de]
    rst $20
    rla
    sbc c
    rst $20
    db $db
    ld bc, $ed0f
    jr nz, jr_010_75a7

jr_010_75a7:
    adc l

jr_010_75a8:
    rrca
    add c
    db $10
    ld e, a
    ld h, a
    jp c, $00ff

    db $eb
    and d
    ld l, $f6
    ret nz

    ld l, $f5
    db $fd
    or d
    ld b, l
    xor d
    and b
    cpl
    sbc $ff
    db $f4
    rst $38
    rst $18
    ld sp, hl
    rst $38
    db $fc
    rst $38
    xor $40
    ld bc, $60a0
    rst $38
    jp nc, $a512

    ld h, l
    ld [hl], $c6
    pop af
    ld de, $aa3f
    ld c, d
    pop bc
    ld bc, $5595
    ld l, a
    ld c, $0b
    ld d, c
    rst $38
    daa
    call c, $00ff
    sub a
    sbc d
    rst $28
    ld a, [$4fff]
    ldh a, [c]
    rst $38
    nop
    ld sp, $b9d2
    sbc $d7
    nop
    rst $38
    ld de, $4880
    ld d, [hl]
    ret nz

    ld c, b
    rra
    rst $38
    db $fd
    scf
    ld b, b
    ld c, c
    nop
    rst $38
    sub h
    rst $38
    ld l, l
    rst $38
    push bc
    xor e
    jr nz, @+$09

    cp a
    or d
    ld c, h
    ld [$001f], a
    ld l, $03
    db $fc
    rst $18
    ld b, [hl]
    ld a, [$fbac]
    ld a, c
    ld b, $20
    ret nz

    ccf
    rst $18
    ld [hl], h
    ld e, a
    ld a, [hl+]
    ld e, a
    ld e, $06
    jr nz, jr_010_75a8

    ld a, l
    rst $38
    db $10
    rst $28
    ld b, l
    cp d
    inc hl
    call c, $b357
    rst $38
    ld [hl], $c6
    jp hl


    add hl, hl
    ld d, [hl]
    sub [hl]
    add d
    ld a, l
    rst $38
    inc d
    db $eb
    ld d, e
    xor h
    db $fd
    ld [$4a4a], sp
    rst $38
    cp l
    cp l
    ld a, [hl+]
    ld a, [hl+]
    ld d, h
    ld d, h
    ld [hl], $36
    rst $38
    add c
    add c
    ld c, b
    ld c, b
    ld [de], a
    ld [de], a
    ld h, h
    ld h, h
    rst $38
    rst $30
    db $10
    sbc e
    ld h, h
    nop
    rst $38
    dec bc
    rst $38
    jp hl


    add l
    and b
    ld d, b
    and c
    rlca
    cp l
    ld h, b
    dec a
    ld a, a
    rst $38
    inc d
    rst $38
    dec bc
    xor d
    and l
    ld c, $01
    and h
    and e
    call z, $cb7f
    add d
    add l
    ld c, h
    ld c, e
    or h
    or e
    dec c
    ld e, l
    jp hl


    or $82
    rrca
    ld hl, $dd30
    or b
    ld d, [hl]
    db $fd
    rst $38
    ld l, b
    rst $38
    adc b
    or d
    ld d, d
    ld [hl], a
    add a
    and c
    ld b, c
    ld [hl], d
    ld a, a
    add d
    or h
    ld b, h
    ld a, e
    cp e
    sub b
    ld d, b
    cpl
    rrca
    ld b, h
    ld c, [hl]
    rra
    ld e, $00
    rst $28
    jp nz, $030e

    ld d, $01
    ld e, h
    cp [hl]
    inc b
    ld [hl], $21
    db $fd
    nop
    ld b, [hl]
    rlca
    ld h, c
    and e
    ld h, c

jr_010_76b2:
    dec b
    jr nz, jr_010_76b2

    rrca
    jr nz, jr_010_76ba

jr_010_76b8:
    jr nz, jr_010_76b8

jr_010_76ba:
    add hl, bc
    ld h, b
    ld a, [$edff]
    rst $38
    inc de
    inc de
    push hl
    rst $38
    push hl
    ld l, b
    ld l, b
    or l
    or l
    ld a, [bc]
    ld a, [bc]
    or h
    cp a
    or h
    ld c, l
    ld c, l
    sub b
    sub e
    ld a, a
    db $10
    ld h, d
    rst $18
    di
    rst $38
    ld l, a
    ld [hl], b
    ld h, d
    ld bc, $7f16
    rst $38
    ld h, [hl]
    ld h, c
    rst $38
    adc [hl]
    add c
    db $e4
    db $e3
    or d
    or c
    ld l, e
    ld l, b
    rst $38
    or d
    or c
    call nc, $a4d3
    and e
    ld h, d
    ld h, c
    rst $38
    or $f1
    push bc
    jp nz, $a1aa

    add hl, de
    jr jr_010_773c

    ld d, d
    ld d, c
    and h
    and e
    call $2fc2
    inc c
    rra
    nop
    nop
    rra
    nop

Jump_010_770a:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop

jr_010_771d:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    nop
    inc bc
    nop
    cpl
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_773c:
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_7745:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_010_771d

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_010_777d

    rst $38
    rst $38

jr_010_777d:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_010_7745

    jr nc, jr_010_77b6

    cp a
    ccf
    ld b, b
    ccf
    ccf
    inc d
    dec b
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    jp $00fc


    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop

jr_010_77b6:
    nop
    nop
    ld a, a
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ld bc, $c0e0
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    ld de, $0000
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld h, h
    ld h, h
    ld h, h
    inc b
    add hl, bc
    ld a, [bc]
    reti


    dec bc
    jr z, jr_010_77e4

jr_010_77e4:
    add hl, bc
    ld [bc], a
    ld bc, $1013
    ld [bc], a
    inc b
    ld d, d
    adc l
    ld d, e
    stop
    ld d, l
    ld d, [hl]
    ld h, c
    nop
    and b
    nop
    add hl, bc
    inc b
    ld [hl+], a
    db $fd
    ld [de], a
    db $10
    ld [bc], a
    inc b
    ld e, e
    ld h, d
    ld h, c
    ld h, c
    ld h, a
    ld a, e
    ld h, l
    ld h, [hl]
    ld d, b
    nop
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    add hl, bc
    ld b, $fd
    ld a, [de]
    ld de, $0402
    ld l, e
    ld l, c
    ld h, c
    dec [hl]
    ld [hl], $7d
    ld h, c
    ld b, b
    nop
    ld e, l
    ld c, [hl]
    scf
    jr c, jr_010_785a

    add hl, bc
    ld [$2afb], sp
    ld de, $0420
    inc d
    ld l, d
    ld h, c
    ld h, a
    ld b, l
    ld a, l
    ld b, [hl]
    ld b, c
    nop
    ld e, l
    ld e, [hl]
    ld b, a
    ld c, b
    ld c, c
    add hl, bc
    ld a, [bc]
    rst $38
    ld a, [hl-]
    ld de, $2211
    inc hl
    inc h
    ld e, e
    ld h, c
    db $fd
    ld h, e
    pop hl
    inc bc
    ld h, c
    ld h, c
    ld e, l
    inc a
    dec a
    ld a, $96
    ld a, [bc]
    inc b
    dec de
    ld hl, $0210
    inc [hl]
    nop
    ld b, $22
    inc b
    ld h, c
    rst $28
    ld h, c

jr_010_785a:
    ld c, h
    ld c, l
    ld c, [hl]
    ld a, [bc]
    inc b
    dec hl
    ld [hl-], a
    dec b
    ld c, a
    ld b, $22
    ld b, h
    ld l, d
    dec b
    ld [$0420], sp
    ld e, [hl]
    ld a, [bc]
    ld [$3b7f], sp
    ld [hl-], a
    dec d
    ld d, $33
    ld b, h
    ld e, e
    dec b
    ld [$01fc], sp
    ld [bc], a
    ld a, [bc]
    ld [$324a], sp
    dec h
    ld h, $33
    ld b, h
    cp h
    ld bc, $2206
    inc c
    ld h, c
    ld h, c
    ld c, l
    ld c, [hl]
    ld a, [bc]
    inc c
    ld c, e
    ccf
    ld [$4241], sp
    ld b, e
    ld d, h
    ld l, d
    ld bc, $0210
    ld [$00fc], sp
    ld [bc], a
    ld a, [bc]
    inc c
    rla
    jr jr_010_78ae

    dec c
    ld e, c
    dec a
    db $d3
    ld l, $61
    ld de, $f10c
    inc bc
    ld h, e
    inc c

jr_010_78ae:
    ld [$2827], sp
    rst $18
    inc e
    dec e
    ld c, h
    ld c, h
    ld c, h
    db $e4
    ld bc, $6261
    adc [hl]
    dec c
    ld [$6851], sp
    ld l, $c1
    rlca
    push af
    inc bc
    ld c, $08
    ld d, c
    ld hl, $f25b
    ld bc, $0390
    inc d
    ld b, $0c
    db $10
    ld d, c
    or d
    dec bc
    and d
    dec b
    inc c
    inc de
    ld [$100c], sp
    ld d, c
    ld l, d
    sub l
    dec b
    rrca
    ld [$0604], sp
    or [hl]
    dec b
    nop
    ld [de], a
    ld [bc], a
    inc c
    db $10
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    nop
    inc b
    rst $18
    dec b
    ld b, $05
    ld b, $01
    jr jr_010_792a

jr_010_792a:
    ld d, c
    ld d, d
    rst $30
    ld d, e
    add hl, bc
    xor b
    jr jr_010_7932

jr_010_7932:
    dec d
    ld d, $15
    ld d, $1e
    add hl, bc
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    add hl, bc
    ld [bc], a
    pop hl
    inc bc
    add hl, bc
    dec b
    rst $08
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec bc
    dec bc
    inc b
    dec bc
    ld [bc], a
    add hl, de
    ld a, [de]
    ld h, e
    dec de
    inc e
    add hl, bc
    ld b, $eb
    inc bc
    ld hl, $0109
    ld bc, $020f
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    pop bc
    jr jr_010_7989

    ld [bc], a
    rrca
    ld [bc], a
    ret nz

    rlca
    ld [bc], a
    pop hl
    dec de
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    add c

jr_010_7989:
    ld e, $03
    inc b
    di
    inc bc
    inc b
    add hl, bc
    jr nz, jr_010_799f

    inc b
    inc de
    inc d
    inc de
    inc d
    call z, $020f
    daa
    ld [hl+], a
    jr nz, jr_010_79de

    cpl

jr_010_799f:
    nop
    add hl, bc
    inc h
    jr nc, jr_010_79f4

    jr jr_010_79d5

    nop
    add hl, bc
    ld h, $2f
    add hl, hl
    nop
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_79d5:
    nop
    rra
    nop
    ld bc, $ae12
    ld b, $00
    cpl

jr_010_79de:
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_79f4:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld [bc], a
    ld c, e
    nop
    ld d, l
    rra
    nop
    jp $bf00


    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    inc e
    rra
    nop
    dec l
    nop
    ld bc, $4055
    ld d, h
    nop
    ld [hl], d
    rlca
    ld e, a
    nop
    ld [$0a60], a
    rst $10
    ld bc, $ff09
    add b
    ld [bc], a
    nop
    rst $38
    nop
    ccf
    nop
    ld [hl+], a
    xor d
    xor d
    xor d
    adc b
    ld b, b
    nop
    inc [hl]
    nop
    db $fc
    cpl
    dec b
    or h
    nop
    rst $38
    rst $38
    ld a, [$bfaa]
    rst $38
    adc a
    rst $38
    jp z, $8faa

    ld e, a
    nop
    di
    nop
    ldh [rSB], a
    ld sp, hl
    ld c, l
    ld d, [hl]
    jr nc, jr_010_7a72

    ldh a, [rHDMA5]

jr_010_7a72:
    add b
    ld [bc], a
    jr nz, jr_010_7a76

jr_010_7a76:
    ldh a, [$ff50]
    inc b
    adc e
    rrca
    ret nz

    and b
    inc b
    inc bc
    ldh a, [c]
    nop
    ccf
    dec b
    and [hl]
    dec b
    ldh a, [c]
    ld l, d
    and c
    dec b
    jp nz, $0557

    add d
    ldh a, [rTIMA]
    jp nz, $4002

    ld b, $1b
    ret nz

    sbc d
    ld d, c
    nop
    ld d, l
    ld a, a
    ld d, b
    dec b
    and d
    dec b
    pop af
    dec b
    cp b
    xor a
    dec b
    ccf
    dec b
    ld b, [hl]
    dec bc
    ldh a, [rP1]
    ccf
    ld h, b
    inc b
    nop
    reti


    rrca
    ld e, a
    nop
    pop af
    nop
    pop bc
    ld b, l
    ldh [rSB], a
    pop af
    dec b
    ld b, d
    ld d, c
    nop
    dec h
    add b
    ld [bc], a
    xor a
    dec b
    ccf
    dec b
    and $10
    push af
    ld h, c
    add hl, bc
    scf
    push bc
    ld d, l
    ld c, a
    ld e, c
    nop
    pop bc
    ld b, l
    ld d, c
    nop
    ld b, c
    ld bc, $c00b
    nop
    ld b, c
    dec bc
    and b
    ret nc

    rlca
    ld [hl+], a
    ld [$05af], sp
    ccf
    dec b
    xor h
    ld c, a
    dec bc
    ld e, l
    nop
    jp nz, Jump_010_51a8

    nop
    xor d
    ldh [rSB], a
    ldh a, [c]
    ld b, l
    xor b
    sub c
    dec bc
    ld d, h
    xor a
    dec b
    xor a
    dec b
    xor d
    dec b
    ld d, l
    and b
    dec b
    adc e
    pop bc
    ld d, l
    and c
    dec b
    ld bc, $0a52
    ld c, h
    ld b, $f5
    ld a, [bc]
    ldh a, [rP1]
    pop af
    dec b
    xor a
    dec b
    ccf
    dec b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld b, b
    or h
    nop
    sub a
    add hl, hl
    ld [hl-], a
    ld a, [hl+]
    xor a
    dec [hl]
    rst $08
    dec [hl]
    ld [de], a
    dec bc
    rrca
    or d
    dec bc
    nop
    nop
    inc c
    ld e, a
    dec l
    ld c, a
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    ld l, a
    ld b, b
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    dec b
    inc d
    nop
    nop
    inc b
    rst $38
    ld [$e8f4], sp
    db $f4
    cp h
    ld a, d
    db $e4
    sbc d
    rst $38
    ld a, [hl-]
    dec h
    ld c, $09
    ld bc, $0302
    ld [bc], a
    rst $38
    nop
    jr jr_010_7b5f

jr_010_7b5f:
    ld [$0100], sp
    ld bc, rJOYP
    ld bc, $0202
    dec b
    dec b
    add e
    inc b
    adc e
    rst $38
    ld h, b
    ld de, $9160
    and b
    ld e, b
    db $10
    add sp, -$09
    db $10
    add sp, -$10
    jr nz, jr_010_7b7c

jr_010_7b7c:
    ld [hl], b
    add sp, -$01
    nop
    sbc a
    dec b
    jp nz, $0304

    dec b
    ldh [rSB], a
    jr nz, jr_010_7b8a

jr_010_7b8a:
    dec e
    rst $38
    ld a, l
    add d
    nop
    ret nz

    add b
    ld [hl], b
    ldh [rNR32], a
    rst $38
    jr c, @-$37

    rlca
    cp b
    nop
    rra
    nop

jr_010_7b9c:
    add a
    rst $38
    nop
    ret nz

    nop
    rrca
    ld bc, $0106
    ld [bc], a
    rst $38
    nop
    add c
    nop
    pop bc
    add b
    ld h, c
    nop
    pop bc
    rst $38
    ld bc, $0000
    db $fc
    ld hl, sp+$04
    jr jr_010_7b9c

    ei
    sbc b
    ld h, h
    inc hl
    nop
    jr @-$1a

    ld [$0807], sp
    rst $18
    rlca
    add hl, bc
    rlca
    inc b
    dec bc
    jr nz, jr_010_7bca

jr_010_7bca:
    inc bc
    dec b
    rst $38
    inc bc
    inc b
    inc bc
    cp $ff
    ld c, a
    rst $38
    ld hl, sp-$01
    rst $38
    cpl
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    jp $ffff


    rra
    rst $38
    cpl
    ret nz

    xor a
    ret nz

    rra
    cp a
    ldh [$ffdf], a
    ldh [$ff08], a
    ldh a, [rBCPS]
    ld de, $f007
    rst $30
    daa
    rra
    cpl
    ld [hl+], a
    nop
    rst $20
    rra
    rst $30
    rrca
    db $fd
    ldh a, [rNR41]
    nop
    rst $38
    cp $ff
    cp $fd
    rst $38
    ld a, [$0013]
    rrca
    ld b, b
    inc bc
    rlca
    adc b
    rlca
    adc b
    add a
    rst $30
    ld c, b
    add e
    ld b, h
    inc hl
    nop
    rst $38
    nop
    db $e3
    nop
    ei
    ld hl, $20c0
    nop
    ret nc

    and c
    ld d, b
    and c
    ld d, b
    rst $38
    and b
    ld d, b
    ccf
    ret nz

    ldh a, [rIF]
    adc h
    ld [hl], e
    rst $38
    xor l
    ld [hl], e
    or a
    ld l, c
    and a
    ld d, c
    and e
    ld b, h
    ld a, a
    jp $c120


    ld [bc], a
    inc de
    db $ec
    inc a
    ldh [c], a
    inc bc
    db $fd
    rst $00
    ldh [$ff03], a
    ccf
    rst $38
    cp a
    ld a, a
    db $fc
    inc bc
    rst $38
    ld a, [hl]
    ld sp, hl
    ei
    db $f4
    db $eb
    ldh a, [$ff93]
    add sp, -$01
    and e
    ret nc

    and c
    jp nc, $a241

    ld b, $f9
    rst $18
    ld sp, hl
    cp $fc
    rst $38
    ret nz

    jr nz, jr_010_7c6a

    rra
    db $fc
    rst $38
    inc c
    di
    db $10

jr_010_7c6a:
    db $ec
    inc bc
    nop
    add [hl]
    ld b, c
    rst $38
    ld l, a
    sub e
    ld e, $e7
    ld hl, sp+$07
    rlca
    ld sp, hl
    rst $38
    ld bc, $0006
    ld bc, $5789
    or h
    ld l, a
    rst $38
    ld d, a
    xor a
    ld h, b
    sbc a
    inc hl
    call c, $f3fc
    rst $38
    ldh a, [$ffec]
    and b
    ld e, b
    sub b
    db $ec
    ld [$fff4], sp
    ret z

    db $f4
    ld a, b
    add h
    add h
    ld a, e
    inc bc
    adc h
    rst $38
    nop
    inc bc
    nop
    nop
    inc b
    db $e3
    ld [bc], a
    dec b
    cp $90
    dec c
    dec a
    ld a, $c1
    db $d3
    inc l
    jr nc, @-$33

    rst $38
    db $10
    ld l, b
    add b
    ld h, b
    ld h, b
    sbc b

jr_010_7cb6:
    ret c

    rst $20
    rst $30
    rst $30
    ld hl, sp-$01
    nop
    ld c, $80
    ld a, a
    ld h, b
    sbc a
    rst $38
    ld bc, $0206
    dec c
    inc c
    di
    db $f4
    rrca

jr_010_7ccb:
    rst $38
    rst $38
    rst $38
    rst $08
    ldh a, [$ff08]
    rst $30
    add hl, bc
    rst $30
    rst $18
    jr z, jr_010_7ccb

    ld [$88f4], sp
    ld b, b
    nop
    ld [$bff7], sp
    rst $38
    nop
    db $10
    rst $28
    ret nc

    rst $28
    add b

jr_010_7ce6:
    dec d
    ld bc, $21fe
    nop
    ld b, $39
    jr c, jr_010_7cb6

    db $e3
    rra
    rlca
    rst $28
    rst $38
    inc bc
    rst $38
    ld a, a
    ld [hl+], a
    nop
    dec bc
    rst $38
    add hl, bc

jr_010_7cfc:
    cp [hl]
    ld h, d
    rrca
    rst $20
    ld hl, sp-$39
    ld hl, sp-$09
    jr nz, jr_010_7d06

jr_010_7d06:
    db $e4
    rst $28
    ld hl, sp+$08
    ldh a, [$ff88]
    jr nc, @+$1b

    inc de
    rrca
    dec bc
    cp $20
    dec d
    dec c
    inc bc
    db $f4
    inc bc
    ldh a, [c]
    ld bc, $aff1
    nop
    ldh a, [rP1]
    rst $38
    ret nz

    dec bc
    ccf
    ld [bc], a
    ld [de], a
    inc [hl]
    cp $20
    dec d
    sbc a
    ld a, a
    ldh a, [rIE]
    ld a, $ff
    db $e4
    jp nc, $1302

    rra
    jr nz, jr_010_7d4c

    ld h, c
    ld [$a00e], sp
    ld d, $f1
    cp $ff
    db $fd
    cp $fe
    db $fd
    inc bc
    db $fd
    add l
    ei
    ld a, a
    ld b, c
    and b
    add b
    ld b, c
    add b

jr_010_7d4c:
    nop
    nop
    jr nc, jr_010_7d50

jr_010_7d50:
    rst $38
    nop
    db $10
    stop
    db $10
    jr z, jr_010_7ce6

    ld a, a
    rst $38
    ret nz

    ccf
    reti


    ld a, $7a
    sbc l
    ld h, d
    inc e
    rst $38
    inc [hl]
    ld c, b
    jr c, jr_010_7d6b

    jr @+$22

    add c
    ld b, d

jr_010_7d6b:
    pop af
    add c
    pop hl
    inc e
    db $10
    ld hl, $0040
    add c
    nop
    add c
    ldh [$ff9f], a
    ld d, b

jr_010_7d79:
    ret nz

    jr nz, jr_010_7cfc

    ld h, b
    ld b, b
    inc bc
    ld hl, $0100
    db $fc
    and b
    inc bc
    jr nc, @+$20

    nop
    ldh a, [$ff60]
    sbc b
    ldh a, [rBCPS]
    rst $38
    ld h, b
    sbc b
    nop
    ld hl, sp+$00
    ldh a, [rLCDC]
    or b
    xor a
    ld b, b
    and b
    nop
    ldh [rNR41], a
    nop
    ld b, b
    inc h
    nop
    nop
    rst $38
    nop
    ld a, b
    jr nc, @-$32

    ld c, b
    or h
    ld a, b
    or h
    rst $38
    jr nc, jr_010_7d79

    nop
    db $fc
    nop
    ld a, b
    ld [$bf30], sp
    ld [$0410], sp
    jr jr_010_7dbd

    ld [$0025], sp
    dec de

jr_010_7dbd:
    sbc a
    ld h, a
    dec b
    dec de
    inc bc
    inc b
    and c
    inc de
    inc b
    add hl, hl
    or $ff
    ld hl, sp-$0a
    ld [$dcf6], sp
    ld a, [hl-]
    inc l
    jp c, $1cff

    ld [hl+], a
    ld b, $18
    ld [bc], a
    inc b
    db $10
    cpl
    db $fd
    ld de, $0020
    ld [de], a
    cpl
    inc d
    cpl
    db $10
    rrca
    ld e, a
    db $10
    rrca
    ld [$3817], sp
    ret nz

    rra
    add b
    ldh [rNR43], a
    rst $10
    ld a, a
    rst $38
    jr nc, jr_010_7df4

jr_010_7df4:
    inc e
    ccf
    nop
    ld [de], a
    rst $38
    rst $38
    rst $10
    dec de
    rst $38
    add hl, hl
    and b
    inc hl
    cp $40
    inc h
    pop bc
    cp $ff
    rst $08
    ldh a, [$ff1f]
    ldh [$ff9f], a
    ldh [$ff2f], a
    ret nz

    rst $18
    jr nc, @-$3e

    ld [hl], b
    add b
    ldh a, [rP1]
    ld de, $3f4f
    ld a, a
    jr nz, @+$21

    inc de
    rrca
    add hl, bc
    rlca
    or $e2
    ld de, $01ea
    ld [de], a
    adc e
    ldh [c], a
    inc hl
    ld a, a
    ret nz

    ld h, $c7
    ccf
    jr nc, @-$3f

    rst $08
    db $e4
    ld hl, sp-$18
    db $f4
    ld [$2db0], sp
    ret nc

    rst $38
    add sp, -$10
    db $ec
    db $fc
    di
    ccf
    db $fc
    jr c, @+$01

    nop
    jr c, jr_010_7e89

    ld h, h
    jr jr_010_7eac

    sbc d
    ldh [c], a
    rst $38
    inc e
    ldh a, [c]
    dec a
    pop bc
    ld a, $ff
    ld a, [hl]
    ld de, $00ef
    ld bc, $0310
    sub b
    dec e
    rlca
    ld bc, $1f04
    inc bc
    inc c
    inc bc
    rrca
    sub a
    and b
    ld [de], a
    jr nz, jr_010_7e67

jr_010_7e67:
    ld d, b
    nop
    push hl
    ld b, b
    ld hl, $c000
    and c
    nop
    pop hl
    inc de
    ret nz

    nop
    ret nz

    ccf
    ld b, b
    and b

jr_010_7e78:
    ld b, b
    jr nc, jr_010_7edb

    inc e
    sub [hl]
    dec [hl]
    jr nc, jr_010_7eb4

jr_010_7e80:
    adc a
    ld bc, $0706
    add hl, sp
    add d
    db $10
    ldh [rSB], a

jr_010_7e89:
    ld b, b
    inc de
    ld h, b
    rst $28
    ret nz

    or b
    ldh [$ffde], a
    jp c, $0137

    nop
    rlca
    cp $a1
    db $10
    ld [$0814], sp
    inc d
    jr jr_010_7ec3

    jr jr_010_7e80

    ld h, h
    jr z, jr_010_7e78

    ld a, b
    or h
    add b
    inc de
    ld [hl], b
    jr nc, @+$01

    ld c, h

jr_010_7eac:
    inc a
    inc de
    dec sp
    inc e
    jr nz, jr_010_7ed1

    ld [hl+], a
    rst $30

jr_010_7eb4:
    rra
    inc a
    rra
    sub [hl]
    ld a, [hl-]
    ret nz

    ret nz

    jr nc, jr_010_7eed

    rst $38
    call z, $f30c
    inc c
    rla

jr_010_7ec3:
    ld [$0b17], sp
    ld l, e
    rla
    add hl, bc
    ld h, b
    nop
    ld [$0060], sp
    dec bc
    rla
    inc hl

jr_010_7ed1:
    db $10
    db $fd
    cp a
    ld h, b
    ld e, $38
    rst $38
    di
    db $fc
    adc h

jr_010_7edb:
    ldh a, [$ff9f]
    di
    db $fc
    rst $20
    ld hl, sp+$0f
    ld b, b
    db $10
    db $e3
    rrca
    ldh a, [$ffdf]
    nop
    inc l
    inc de
    inc hl
    inc e

jr_010_7eed:
    ld hl, $f134
    rrca
    ei
    rst $30
    rrca
    ld b, c
    nop
    ld a, l
    rst $38
    ld e, $ff
    jp $3fff


    cp b
    rst $00
    rst $00
    ld hl, sp-$74
    ldh a, [$ffe4]
    rlca
    ld hl, sp-$34
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_010_7fd4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_010_7fda:
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
    rst $38
    rst $38
