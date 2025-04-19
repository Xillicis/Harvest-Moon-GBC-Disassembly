; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ccf
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    call Call_03f_4092
    ld hl, $74aa
    ld c, $3d
    ld de, $8000
    call Call_000_31a0
    ld hl, $7b00
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld hl, $4665
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $5bd4
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld a, $df
    ld [$cb5c], a
    ld a, $e9
    ld [$cd9b], a
    ld a, $ea
    ld [$cd9a], a
    xor a
    ld [$cdae], a
    ld [$cdb4], a
    ld [$cdb5], a
    ld [$cdb6], a
    ld hl, $cdbf
    ld bc, $0121
    call ZeroOutHL
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $22
    call Call_000_25c5
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rSB], a
    ldh [rSC], a
    xor a
    ldh [rIF], a
    ld a, $0d
    ldh [rIE], a
    ret


Call_03f_4092:
    ld hl, $4001
    ld a, $31
    ld de, $9000
    ld bc, $0800
    call Call_000_2308
    ld hl, $4801
    ld a, $31
    ld de, $8800
    ld bc, $0800
    call Call_000_2308
    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$c0a3]
    ld [$c0a4], a
    ld hl, $cee0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, l
    ld [$cee0], a
    ld a, h
    ld [$cee1], a
    call Call_03f_6665
    call Call_000_33c4
    ld hl, $cdae
    inc [hl]
    inc hl
    inc [hl]
    ld hl, $d607
    inc [hl]
    call Call_03f_4a88
    push hl
    push af
    ld l, $ae
    ld h, $5b
    ld a, $3f
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_03f_42e4
    call Call_03f_41b7
    ld a, [$d605]
    or a
    jr z, jr_03f_4112

    call Call_03f_433f
    call Call_03f_4560
    call Call_03f_45e9
    ld a, [$ce05]
    cp $02
    jr z, jr_03f_410f

    call Call_03f_6806

jr_03f_410f:
    call Call_03f_6771

jr_03f_4112:
    call Call_03f_4196
    ret


Call_03f_4116:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    call Call_000_0924

Call_03f_4120:
    ld a, $0d
    ld a, $9a
    ld [hl+], a
    ld a, $23
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld a, [$cd29]
    push af
    swap a
    and $0f
    call Call_03f_6648
    ld [hl+], a
    pop af
    and $0f
    call Call_03f_6648
    ld [hl+], a
    ld a, [$cd28]
    push af
    swap a
    and $0f
    call Call_03f_6648
    ld [hl+], a
    pop af
    and $0f
    call Call_03f_6648
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld a, [$cd61]
    push af
    swap a
    and $0f
    call Call_03f_6648
    ld [hl+], a
    pop af
    and $0f
    call Call_03f_6648
    ld [hl+], a
    ld a, [$d635]
    push af
    swap a
    and $0f
    call Call_03f_6648
    ld [hl+], a
    pop af
    and $0f
    call Call_03f_6648
    ld [hl+], a
    ld a, [$d607]
    push af
    swap a
    and $0f
    call Call_03f_6648
    ld [hl+], a
    pop af
    and $0f
    call Call_03f_6648
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$ff97]
    add $0e
    ldh [$ff97], a
    ret


Call_03f_4196:
    ld a, [$d605]
    or a
    ret z

    ld a, [$d607]
    cp $ff
    ret nz

    xor a
    ld [$cdb4], a
    ld [$d605], a
    call Call_03f_6752
    ld hl, $4a5e
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Call_03f_41b7:
    ld a, [$cdaf]
    and $0f
    jr nz, jr_03f_41cc

    ld hl, $cdbb
    ld b, $04
    call Call_03f_4116
    inc hl
    ld b, $03
    call Call_03f_4116

jr_03f_41cc:
    ld a, [$cdb5]
    or a
    ret z

    dec a
    rst $00
    db $dd
    ld b, c
    ld a, [bc]
    ld b, d
    ccf
    ld b, d
    ld l, d
    ld b, d
    add e
    ld b, d
    ld c, $30
    ld b, $1c
    ld hl, $4295
    call Call_03f_4284
    ld c, $70
    ld b, $1c
    ld hl, $42b5
    call Call_03f_4284
    ld c, $30
    ld b, $44
    ld a, [$cec8]
    or a
    jr z, jr_03f_4203

    ld hl, $42de
    call Call_03f_42cd
    jr jr_03f_4209

jr_03f_4203:
    ld hl, $42c5
    call Call_03f_4284

jr_03f_4209:
    ret


    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call $5015
    ld a, $15
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    and $03
    add a
    add a
    add a
    ld c, $70
    ld b, $4c
    ld hl, $4295
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_03f_4284
    ret


    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call Call_03f_519f
    ld a, [hl]
    cp $ff
    ret z

    and $0f
    ld hl, $42bd
    cp $03
    jr z, jr_03f_4262

    ld hl, $42b5

jr_03f_4262:
    ld c, $70
    ld b, $3c
    call Call_03f_4284
    ret


    ld c, $48
    ld b, $44
    ld a, [$cec8]
    or a
    jr z, jr_03f_427c

    ld hl, $42de
    call Call_03f_42cd
    jr jr_03f_4282

jr_03f_427c:
    ld hl, $42c5
    call Call_03f_4284

jr_03f_4282:
    ret


    ret


Call_03f_4284:
    ld a, [$cdbb]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    ld [hl], d
    ld l, b
    ld b, c
    ld l, b
    and e
    ld l, b
    ld b, c
    ld l, b
    ld [hl], $69
    dec b
    ld l, c
    ld h, a
    ld l, c
    dec b
    ld l, c
    ld a, [$c969]
    ld l, c
    dec hl
    ld l, d
    ret


    ld l, c
    cp [hl]
    ld l, d
    adc l
    ld l, d
    rst $28
    ld l, d
    adc l
    ld l, d
    ld [hl], d
    ld l, e
    ld [hl], d
    ld l, e
    ld d, c
    ld l, e
    ld d, c
    ld l, e
    cp $6b
    cp $6b
    db $dd
    ld l, e
    db $dd
    ld l, e
    ld e, $6d
    ld b, e
    ld l, l
    ld e, $6d
    ld sp, hl
    ld l, h

Call_03f_42cd:
    ld a, [$cdbc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    adc d
    ld l, h
    xor a
    ld l, h
    ld l, c
    ld l, h

Call_03f_42e4:
    ld a, [$cd98]
    bit 4, a
    ret nz

    ld a, [$cdb4]
    or a
    ret z

    ld hl, $4315
    dec a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cd99]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4310
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a
    jr jr_03f_432f

    ld e, b
    jr jr_03f_4332

    ld b, b
    ld e, b
    ld b, b
    db $10
    ld [hl], b
    ld l, b
    ld [hl], b
    db $10
    add b
    ld l, b
    add b
    db $10
    add b
    ld [hl], b
    add b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    inc d

jr_03f_432f:
    ld a, [hl-]
    inc d
    ld l, d

jr_03f_4332:
    inc d
    ld a, [bc]
    inc l
    ld a, [hl-]
    inc l
    ld l, d
    inc l
    ld a, [bc]
    ld b, h
    ld a, [hl-]
    ld b, h
    ld l, d
    ld b, h

Call_03f_433f:
    ld a, [$ce00]
    or a
    ret nz

    ld a, [$ce05]
    cp $02
    ret nz

    ld a, [$ce07]
    or a
    jr nz, jr_03f_4396

    ld a, [$ce04]
    and $1f
    rst $00
    sbc d
    ld b, e
    and e
    ld b, e
    and a
    ld b, e
    and e
    ld b, e
    or b
    ld b, e
    rst $08
    ld b, e
    db $d3
    ld b, e
    di
    ld b, e
    ld a, [$5b43]
    ld b, h
    ld e, a
    ld b, h
    push af
    ld b, h
    ei
    ld b, h
    ld a, [bc]
    ld b, l
    ld c, $45
    dec h
    ld b, l
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    cpl
    ld b, l
    add hl, sp
    ld b, l

jr_03f_4396:
    call Call_03f_4542
    ret


    call Call_03f_4542
    ld a, $01
    call Call_03f_454a
    ret


    call Call_03f_4542
    ret


    call Call_03f_4542
    ld a, $03
    call Call_03f_454a
    ret


    call Call_03f_43bc
    call Call_03f_4542
    ld a, $05
    call Call_03f_454a
    ret


Call_03f_43bc:
    ld hl, $cde0
    ld de, $cdb0
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


    call Call_03f_4542
    ret


    call Call_03f_4542
    ld hl, $b8f4
    ld de, $cdbf
    ld a, $05
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $07
    ld b, $05
    call Call_03f_4553
    ret


    call Call_03f_43bc
    call Call_03f_4542
    ret


    call Call_03f_4542
    ld a, $09
    call Call_03f_454a

Jump_03f_4402:
    ld a, [$cde0]
    rst $00
    ld c, $44
    cpl
    ld b, h
    ld b, e
    ld b, h
    ld c, a
    ld b, h
    ld hl, $cde1
    ld de, $ce0b
    ld b, $0b
    call CopyHLtoDE
    ld a, $09
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$ce0b]
    res 7, a
    ld [$ce0b], a
    ret


    ld hl, $cde1
    ld de, $ce25
    ld b, $03
    call CopyHLtoDE
    ld a, [$ce25]
    res 7, a
    ld [$ce25], a
    ret


    ld hl, $cde1
    ld de, $ce31
    ld b, $06
    call CopyHLtoDE
    ret


    ld hl, $cde1
    ld de, $ce37
    ld b, $02
    call CopyHLtoDE
    ret


    call Call_03f_4542
    ret


    call Call_03f_4542
    ld hl, $4472
    push hl
    ld a, [$cde0]
    rst $00
    ld a, b
    ld b, h
    and a
    ld b, h
    jp z, $e044

    ld b, h
    ld a, $0b
    call Call_03f_4553
    ret


    ld de, $cdbf
    ld a, $0f
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5015
    ld b, $0b
    call CopyHLtoDE
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld b, $0f
    ret


    ld de, $cdbf
    ld a, $05
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_03f_519f
    ld b, $03
    call CopyHLtoDE
    ld b, $05
    ret


    ld de, $cdbf
    ld a, $08
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld hl, $cec8
    ld b, $06
    call CopyHLtoDE
    ld b, $08
    ret


    ld de, $cdbf
    xor a
    ld [de], a
    inc de
    ld a, $03
    ld [de], a
    inc de
    ld a, [$cdb6]
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld b, $04
    ret


    call Call_03f_4542
    jp Jump_03f_4402


    ld a, $0d
    call Call_03f_454a
    ld a, [$cddf]
    ld [$cd99], a
    call Call_03f_4542
    ret


    call Call_03f_4542
    ret


    ld a, [$cdb8]
    ld [$cdbf], a
    ld a, $0f
    ld b, $01
    call Call_03f_4553
    ld a, [$cddf]
    ld [$cdb7], a
    call Call_03f_4542
    ret


    ld a, [$cddf]
    ld [$cdb7], a
    call Call_03f_4542
    ret


    ld a, $01
    ld [$ce0a], a
    call Call_03f_4542
    ret


    ret


    call Call_03f_4542
    ld a, $01
    ld [$ce09], a
    ret


Call_03f_4542:
    xor a
    ld [$ce05], a
    ld [$ce08], a
    ret


Call_03f_454a:
    ld c, a
    ld a, $01
    ld [$cdbf], a
    ld a, c
    ld b, $01

Call_03f_4553:
    ld [$cdff], a
    ld a, b
    ld [$ce02], a
    ld a, $02
    ld [$ce00], a
    ret


Call_03f_4560:
    ld a, [$ce00]
    or a
    jr z, jr_03f_45de

    cp $01
    jr z, jr_03f_4599

    xor a
    ld [$ce01], a
    inc a
    ld [$ce00], a
    ld a, [$ce02]
    or a
    jr z, jr_03f_4599

    ld b, a
    ld hl, $cdbf
    xor a

jr_03f_457d:
    add [hl]
    inc hl
    dec b
    jr nz, jr_03f_457d

    ld b, a
    ld hl, $cdbf
    ld a, [$ce02]
    ld c, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], b
    ld a, c
    inc a
    ld [$ce02], a
    ld [$ce03], a

jr_03f_4599:
    ld d, $80
    ld a, [$d601]
    or a
    jr nz, jr_03f_45a3

    ld d, $40

jr_03f_45a3:
    ld a, [$cdff]
    or d
    ld [$d62d], a
    ld hl, $cdbf
    ld a, [$ce01]
    ld c, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    and $0f
    or d
    ld [$d62e], a
    ld a, b
    swap a
    and $0f
    or d
    ld [$d62f], a
    ld a, c
    inc a
    ld [$ce01], a
    ld a, [$ce02]
    dec a
    jr nz, jr_03f_45da

    ld [$ce02], a
    ld [$ce00], a
    ret


jr_03f_45da:
    ld [$ce02], a
    ret


jr_03f_45de:
    xor a
    ld [$d62d], a
    ld [$d62e], a
    ld [$d62f], a
    ret


Call_03f_45e9:
    ld hl, $d627
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    or b
    jr nz, jr_03f_4633

    or [hl]
    jr nz, jr_03f_4633

    ld a, [$ce05]
    cp $01
    ret nz

    ld a, [$ce04]
    cp $1f
    jr z, jr_03f_4619

    ld a, [$ce08]
    dec a
    ld b, a
    ld hl, $cddf
    xor a
    ld e, a

jr_03f_460c:
    add [hl]
    ld d, a
    ld a, e
    or [hl]
    ld e, a
    ld a, d
    inc hl
    dec b
    jr nz, jr_03f_460c

    cp [hl]
    jr nz, jr_03f_4626

jr_03f_4619:
    ld a, $02
    ld [$ce05], a
    ld [$ce06], a
    xor a
    ld [$ce07], a
    ret


jr_03f_4626:
    ld a, $02
    ld [$ce05], a
    ld [$ce06], a
    dec a
    ld [$ce07], a
    ret


jr_03f_4633:
    ld a, $01
    ld [$ce05], a
    ld a, [$d627]
    and $1f
    ld [$ce04], a
    ld a, [$ce08]
    ld c, a
    ld hl, $cddf
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$d628]
    and $0f
    ld b, a
    ld a, [$d629]
    swap a
    and $f0
    or b
    ld [hl], a
    ld a, c
    cp $1f
    ret z

    inc a
    ld [$ce08], a
    ret


    ld a, d
    ld e, e
    and h
    ld c, d
    or [hl]
    call Call_03f_4ca8
    sub h
    ld c, h
    sbc e
    ld c, h
    inc b
    ld a, e
    ld c, l
    or [hl]
    call Call_03f_6b14
    ld b, [hl]
    ld c, l
    ld e, e
    ld l, h
    ld c, d
    ld e, a
    ld e, e
    ld a, d
    ld c, d
    adc a
    ld c, l
    sbc [hl]
    ld e, [hl]
    sbc [hl]
    ld c, l
    ld l, a
    ld e, e
    call nc, $f253
    ld d, e
    ld d, b
    ld c, d
    or l
    ld d, [hl]
    sbc e
    ld b, [hl]
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    sub e
    ld b, [hl]
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    sub e
    ld b, [hl]
    rla
    ld d, a
    inc b
    sub h
    ld c, h
    jr c, jr_03f_4704

    dec b
    and d
    ld b, [hl]
    sub e
    ld b, [hl]
    ld [hl], d
    ld d, a
    sbc h
    ld d, a
    ld b, $94
    ld c, h
    and l
    ld d, a
    rlca
    or d
    ld b, [hl]
    rst $18
    ld d, a
    sub h
    ld c, h
    sbc e
    ld c, h
    inc d
    adc a
    ld c, l
    call z, $e35e
    ld d, e
    sbc [hl]
    ld c, l
    ld l, $54
    sub h
    ld c, h
    sbc e
    ld c, h
    ld d, b
    or [hl]
    ld c, l
    cp l
    ld c, l
    and h
    ld c, d
    or [hl]
    call Call_03f_4d8f
    inc a
    ld e, a
    sbc [hl]
    ld c, l
    xor l
    ld c, d
    ret c

    ld c, e
    or $4a
    ld bc, $4dc6
    adc a
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    pop af
    ld b, [hl]
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    pop af
    ld b, [hl]

jr_03f_4704:
    rst $28
    ld e, d
    inc c
    sub h
    ld c, h
    jr c, jr_03f_4762

    dec c
    nop
    ld b, a
    pop af
    ld b, [hl]
    db $e3
    ld d, e
    ld hl, $1e5b
    ld b, a
    db $fd
    ld b, a
    rst $00
    ld c, b

jr_03f_471a:
    ld c, d
    ld c, c
    ld b, $4a
    xor l
    ld c, d
    rst $30
    ld c, e
    ld b, d
    ld c, e
    ld [bc], a
    xor a
    ld c, l
    ld h, b
    ld c, [hl]
    inc h
    ld e, c
    add hl, sp
    ld b, a
    cpl
    ld b, a
    adc a
    ld c, l
    call nc, $9e5f
    ld c, l
    or l
    ld d, [hl]
    ld d, e
    ld b, a
    adc a
    ld c, l
    db $f4
    ld e, [hl]
    sbc [hl]
    ld c, l
    xor c
    ld c, [hl]
    dec hl
    ld d, b
    ld h, b
    ld d, d
    ccf
    ld b, a
    adc a
    ld c, l
    jr jr_03f_47aa

    sbc [hl]
    ld c, l
    xor a
    ld c, l
    push af
    ld d, c
    ld d, e
    ld b, a
    adc a
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    ld e, c
    ld b, a
    sub h

jr_03f_4762:
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    ld e, c
    ld b, a
    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_47ca

    rrca
    ld l, b
    ld b, a
    ld e, c
    ld b, a
    jr c, jr_03f_47d5

    db $e4
    ld b, a
    adc a
    ld c, l
    xor d
    ld e, a
    sub h
    ld c, h
    sbc e
    ld c, h
    jr z, jr_03f_471a

    ld c, h
    cp e
    ld d, [hl]
    add a
    ld b, a
    ld a, [hl-]
    ld e, b
    ld [$4c94], sp
    jr c, jr_03f_47e9

    add hl, bc
    add a
    ld b, a
    add a
    ld b, a
    ld [hl], d
    ld d, a
    ld [hl], c
    ld e, b
    ld a, [bc]
    sub h
    ld c, h
    and l
    ld d, a
    dec bc
    sub a
    ld b, a
    rst $18
    ld d, a
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10

jr_03f_47aa:
    add d
    ld e, b
    jp nz, $9458

    ld c, h
    cp e
    ld d, [hl]
    or b
    ld b, a
    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_4812

    rrca
    or b
    ld b, a
    or b
    ld b, a
    jr c, jr_03f_481d

    rst $10
    ld b, a
    dec b
    ld e, c
    db $e3
    ld d, e
    adc a
    ld c, l

jr_03f_47ca:
    or h
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    or l
    ld d, [hl]

jr_03f_47d5:
    sub $46
    adc a
    ld c, l
    ld b, [hl]
    ld h, b
    sub h
    ld c, h
    sbc e
    ld c, h
    ld a, b
    or l
    ld d, [hl]
    db $e4
    ld b, a
    adc a
    ld c, l
    jp z, $9e5f

jr_03f_47e9:
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    db $e3
    ld d, e
    or l
    ld d, [hl]
    sub $46
    adc a
    ld c, l
    inc a
    ld h, b
    or l
    ld d, [hl]
    add sp, $47

jr_03f_47fd:
    xor l
    ld c, d
    dec bc
    ld c, h
    scf
    ld c, e
    inc bc
    xor a
    ld c, l
    sbc [hl]
    ld c, [hl]
    inc h
    ld e, c
    jr jr_03f_4854

    ld c, $48
    adc a
    ld c, l
    ldh a, [c]
    ld e, a

jr_03f_4812:
    sbc [hl]
    ld c, l
    or l
    ld d, [hl]
    ld [hl], $48
    adc a
    ld c, l
    ld b, $5f
    sbc [hl]

jr_03f_481d:
    ld c, l
    xor [hl]
    ld d, b
    ld c, d
    ld d, c
    ld h, b
    ld d, d
    ld e, $48
    adc l
    ld e, c
    ld e, $48
    adc a
    ld c, l
    ld a, [hl+]
    ld e, a
    sbc [hl]
    ld c, l
    xor a
    ld c, l
    push af
    ld d, c
    ld [hl], $48
    adc a
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    inc a
    ld c, b
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    inc a
    ld c, b
    nop
    ld e, e
    ld c, $94
    ld c, h

jr_03f_4854:
    jr c, jr_03f_48ad

    rrca
    ld c, e
    ld c, b
    inc a
    ld c, b
    jr c, jr_03f_48b8

    db $e4
    ld b, a
    adc a
    ld c, l
    xor d
    ld e, a
    sub h
    ld c, h
    sbc e
    ld c, h
    jr z, jr_03f_47fd

    ld c, h
    cp e
    ld d, [hl]
    ld l, d
    ld c, b
    ld d, b
    ld e, c
    ld [$4c94], sp
    jr c, jr_03f_48cc

    add hl, bc
    ld l, d
    ld c, b
    ld l, d
    ld c, b
    ld [hl], d
    ld d, a
    ld a, e
    ld e, c
    ld a, [bc]
    sub h
    ld c, h
    and l
    ld d, a
    dec bc
    ld a, d
    ld c, b
    rst $18
    ld d, a
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    xor a
    ld e, c
    rst $28
    ld e, c
    sub h
    ld c, h
    cp e
    ld d, [hl]
    sub e
    ld c, b
    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_48f5

    rrca
    sub e
    ld c, b
    sub e
    ld c, b

jr_03f_48a3:
    jr c, jr_03f_4900

    cp d
    ld c, b
    inc c
    ld e, d
    db $e3
    ld d, e
    adc a
    ld c, l

jr_03f_48ad:
    or h
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    or l
    ld d, [hl]

jr_03f_48b8:
    sub $46
    adc a
    ld c, l
    db $10
    ld h, b
    sub h
    ld c, h
    sbc e
    ld c, h
    ld a, b
    or l
    ld d, [hl]
    db $e4
    ld b, a
    xor l
    ld c, d
    inc hl
    ld c, h
    ld b, d

jr_03f_48cc:
    ld c, e
    inc b
    or l
    ld d, c
    adc a
    ld c, l
    ld d, d
    ld e, a
    sbc [hl]
    ld c, l
    xor a
    ld c, l
    push af
    ld d, c
    call c, $8f48
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    ldh [c], a
    ld c, b
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    ldh [c], a
    ld c, b

jr_03f_48f5:
    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_4953

    rrca
    pop af
    ld c, b
    ldh [c], a

jr_03f_4900:
    ld c, b
    jr c, jr_03f_495e

    db $e4
    ld b, a
    adc a
    ld c, l
    xor d
    ld e, a
    sub h
    ld c, h
    sbc e
    ld c, h
    jr z, jr_03f_48a3

    ld c, h
    cp e
    ld d, [hl]
    db $10
    ld c, c
    dec hl
    ld e, d
    ld [$4c94], sp
    jr c, jr_03f_4972

    add hl, bc
    db $10
    ld c, c
    db $10
    ld c, c
    ld [hl], d
    ld d, a
    ld c, c
    ld e, d
    ld a, [bc]
    sub h
    ld c, h
    and l
    ld d, a
    dec bc
    jr nz, jr_03f_4975

    rst $18
    ld d, a
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    ld e, h
    ld e, d
    ld l, c
    ld e, d
    db $e3
    ld d, e
    or l
    ld d, c
    adc a

jr_03f_493c:
    ld c, l
    or h
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    or l
    ld d, [hl]
    sub $46
    xor l
    ld c, d
    inc h
    ld c, h
    ld d, h
    ld c, e
    dec b
    xor b
    ld c, l

jr_03f_4953:
    xor $52
    scf
    ld e, c
    ld h, l
    ld c, c
    ld e, e
    ld c, c
    adc a
    ld c, l
    ld e, h

jr_03f_495e:
    ld h, b
    sbc [hl]
    ld c, l
    or l
    ld d, [hl]
    ld [hl], l
    ld c, c
    inc e
    ld d, e
    ld d, e
    ld c, c
    adc a
    ld c, l
    ld h, d
    ld e, a
    sbc [hl]
    ld c, l
    xor a
    ld c, l
    push af

jr_03f_4972:
    ld d, c
    ld [hl], l
    ld c, c

jr_03f_4975:
    adc a
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    ld a, e
    ld c, c
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    ld a, e
    ld c, c
    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_49ec

    rrca
    adc d
    ld c, c
    ld a, e
    ld c, c
    jr c, jr_03f_49f7

    db $e4
    ld b, a
    adc a
    ld c, l
    xor d
    ld e, a
    sub h
    ld c, h
    sbc e
    ld c, h
    jr z, jr_03f_493c

    ld c, h
    cp e
    ld d, [hl]
    xor c
    ld c, c
    ld [hl], a
    ld e, d
    ld [$4c94], sp
    jr c, jr_03f_4a0b

    add hl, bc
    xor c
    ld c, c
    xor c
    ld c, c
    ld [hl], d
    ld d, a
    sub d
    ld e, d
    ld a, [bc]
    sub h
    ld c, h
    and l
    ld d, a
    dec bc
    cp c
    ld c, c
    rst $18
    ld d, a
    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    and l
    ld e, d
    cp a
    ld e, d
    sub h
    ld c, h
    cp e
    ld d, [hl]
    jp nc, $0049

    ld e, e
    ld c, $94
    ld c, h
    jr c, jr_03f_4a34

    rrca
    jp nc, $d249

    ld c, c
    jr c, jr_03f_4a3f

    ld sp, hl
    ld c, c
    call $e35a
    ld d, e
    adc a

Call_03f_49eb:
    ld c, l

jr_03f_49ec:
    or h
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    or l
    ld d, [hl]

jr_03f_49f7:
    sub $46
    adc a
    ld c, l
    ld h, $60
    sub h
    ld c, h
    sbc e
    ld c, h
    ld a, b
    or l
    ld d, [hl]
    db $e4
    ld b, a
    adc a
    ld c, l
    ld [hl], h
    ld e, a
    sbc [hl]

jr_03f_4a0b:
    ld c, l
    xor a
    ld c, l
    push af
    ld d, c
    ld [de], a
    ld c, d
    adc a
    ld c, l
    and b
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    call nc, $f253
    ld d, e
    jr jr_03f_4a6a

    sub h
    ld c, h
    sbc e
    ld c, h
    db $10
    sub h
    ld c, h
    cp e
    ld d, [hl]
    jr jr_03f_4a75

    nop
    ld e, e
    ld c, $94
    ld c, h
    jr c, @+$59

    rrca
    daa

jr_03f_4a34:
    ld c, d
    jr jr_03f_4a81

    jr c, @+$5d

    push af
    ld b, a
    db $e3
    ld d, e
    ld e, l
    ld d, h

jr_03f_4a3f:
    adc a
    ld c, l
    adc d
    ld e, a
    sbc [hl]
    ld c, l
    sub h
    ld c, h
    sbc e
    ld c, h
    ld b, [hl]
    db $10
    ld d, h
    or l
    ld d, [hl]
    ld c, h
    ld c, d
    db $e3
    ld d, e
    adc a
    ld c, l
    ldh [c], a
    ld e, [hl]
    sbc [hl]
    ld c, l
    db $10
    ld d, h
    or l
    ld d, [hl]
    ld c, h
    ld c, d
    db $e3
    ld d, e
    adc a
    ld c, l
    ldh [c], a
    ld e, [hl]
    sbc [hl]
    ld c, l
    db $10
    ld d, h
    or l
    ld d, [hl]

jr_03f_4a6a:
    ld l, b
    ld c, d
    db $e3
    ld d, e
    adc a
    ld c, l
    ld a, d
    ld h, b
    sbc [hl]
    ld c, l
    db $10

jr_03f_4a75:
    ld d, h
    or l
    ld d, [hl]
    halt
    ld c, d
    db $e3
    ld d, e
    adc a
    ld c, l
    and h
    ld h, b
    sbc [hl]

jr_03f_4a81:
    ld c, l
    db $10
    ld d, h
    or l
    ld d, [hl]
    add h
    ld c, d

Call_03f_4a88:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4a9b
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    ret


    push bc
    call SafeTurnOffLCDDuringVBlank
    ld b, $0b
    ld hl, $9822

jr_03f_4ab6:
    push bc
    ld b, $11
    ld a, $af

jr_03f_4abb:
    ld [hl+], a
    dec b
    jr nz, jr_03f_4abb

    pop bc
    ld a, $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_4ab6

    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e

jr_03f_4ad3:
    ld a, [hl+]
    or a
    jr z, jr_03f_4ae1

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    call CopyHLtoDE
    jr jr_03f_4ad3

jr_03f_4ae1:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld bc, $4aed
    push bc
    ld l, e
    ld h, a
    jp hl


    pop hl
    ld a, [hl+]
    ld [$cdb5], a
    call Call_000_2273
    ret


    ld hl, $74aa
    ld c, $3d
    ld de, $8000
    call Call_000_31a0
    ld hl, $7af6
    ld c, $2b
    ld de, $8ec0
    call Call_000_31a0
    ld hl, $7b34
    ld c, $2b
    ld de, $8f80
    call Call_000_31a0
    ld hl, $98ec
    ld a, $ec
    call Call_03f_4b2e
    ld hl, $990c
    ld a, $f8
    call Call_03f_4b2e
    ld hl, $992c
    call Call_03f_4b2e
    ret


Call_03f_4b2e:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ret


    ld hl, $7bb3
    ld c, $2b
    ld de, $8380
    call Call_000_31a0
    call Call_03f_4092
    ld hl, $4f01
    ld a, $31
    ld de, $8f00
    ld bc, $0100
    call Call_000_2308
    ret


    ld hl, $5936
    ld c, $3c
    ld de, $8000
    call Call_000_31a0
    ld hl, $8000

jr_03f_4b62:
    ld bc, $4ba4

jr_03f_4b65:
    ld a, [bc]
    or a
    jr z, jr_03f_4b77

    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    push bc
    ld b, $40
    call CopyHLtoDE
    pop bc
    jr jr_03f_4b65

jr_03f_4b77:
    ld bc, $cece
    ld hl, $4bb7

jr_03f_4b7d:
    ld a, [hl+]
    or a
    jr z, jr_03f_4b90

    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld a, [bc]
    inc bc
    push bc
    call Call_03f_4bca
    pop bc
    pop hl
    jr jr_03f_4b7d

jr_03f_4b90:
    ld hl, $90a0
    ld de, $8000
    ld b, $60
    call CopyHLtoDE
    ld hl, $91a0
    ld b, $40
    call CopyHLtoDE
    ret


    ret nz

    adc a
    ret nz

    sub h
    ret nz

    sub l
    ret nz

    sub [hl]
    ret nz

    sub a
    ret nz

    adc b
    ret nz

    adc c
    ret nz

    adc [hl]
    add b
    adc a
    nop
    ld h, h
    sbc b
    ld l, d
    sbc b
    ld [hl], b
    sbc b
    call nz, $ca98
    sbc b
    ret nc

    sbc b
    inc h
    sbc c
    ld a, [hl+]
    sbc c
    jr nc, jr_03f_4b62

    nop

Call_03f_4bca:
    push hl
    call Call_000_3304
    pop hl
    ld a, [$ccd0]
    ld [hl+], a
    ld a, [$ccd1]
    ld [hl+], a
    ret


    and l
    sbc b
    dec c
    ld [bc], a
    ld c, $16
    xor a
    xor a
    xor a
    ld [bc], a
    rlca
    ld [$0a02], sp
    inc b
    dec c
    ld b, l
    sbc c
    dec bc
    rrca
    inc b
    inc de
    xor a
    xor a
    xor a
    xor a
    ld [de], a
    inc b
    inc b
    inc bc
    nop
    ld [hl+], a
    sbc b
    inc b
    ld [de], a
    ld [hl+], a
    inc sp
    ld e, $a7
    sbc b
    add hl, bc
    inc c
    ld [hl+], a
    dec h
    inc h
    xor a
    ld [de], a
    ld [hl+], a
    inc sp
    ld e, $00
    ld b, d
    sbc b
    ld [$2212], sp
    inc sp
    ld e, $43
    ld b, e
    ld b, e
    ld b, e
    add d
    sbc b
    add hl, bc
    ld [bc], a
    jr z, jr_03f_4c43

    dec e
    ld [hl+], a
    dec l
    ld [hl+], a
    jr z, jr_03f_4c49

    nop
    nop
    ld b, d
    sbc b
    ld c, $4c
    ld c, l
    xor a
    xor a
    xor a
    xor a
    ld e, h
    ld e, l
    xor a
    xor a
    xor a
    xor a
    ld l, h
    ld l, l
    ld h, d
    sbc b
    ld de, $4f4e
    call c, $dedc
    xor a
    ld e, [hl]
    ld e, a
    call c, $dedc

jr_03f_4c43:
    xor a
    ld l, [hl]
    ld l, a
    call c, $dedc

jr_03f_4c49:
    and d
    sbc b
    ld c, $7c
    ld a, l
    xor a
    xor a
    xor a
    xor a
    adc h
    adc l
    xor a
    xor a
    xor a
    xor a
    sbc h
    sbc l
    jp nz, $1198

    ld a, [hl]
    ld a, a
    call c, $dedc
    xor a
    adc [hl]
    adc a
    call c, $dedc
    xor a
    sbc [hl]
    sbc a
    call c, $dedc
    ld [bc], a
    sbc c
    ld c, $ec
    db $ed
    xor a
    xor a
    xor a
    xor a
    ld hl, sp-$07
    xor a
    xor a
    xor a
    xor a
    db $ec
    db $ed
    ld [hl+], a
    sbc c
    ld de, $efee
    call c, $dedc
    xor a
    ld a, [$dcfb]
    call c, $afde
    xor $ef
    call c, $dedc
    nop
    ld h, b
    ld l, c
    xor a
    ld [$cdae], a
    ret


    ld h, b
    ld l, c
    ld a, [$cdae]
    cp [hl]
    jr c, jr_03f_4ca5

    inc hl
    ret


jr_03f_4ca5:
    dec hl
    dec hl
    ret


Call_03f_4ca8:
    push bc
    ld hl, $4ccb
    ld a, [$cdb6]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    push bc
    call Call_000_0930
    call CopyHLtoDE
    pop bc
    ldh a, [$ff97]
    add b
    dec a
    ldh [$ff97], a
    pop hl
    ret


    rst $30
    ld c, h
    db $fd
    ld c, h
    inc bc
    ld c, l
    add hl, bc
    ld c, l
    rrca
    ld c, l
    dec d
    ld c, l
    dec de
    ld c, l
    ld hl, $274d
    ld c, l
    dec l
    ld c, l
    inc sp
    ld c, l
    add hl, sp
    ld c, l
    ccf
    ld c, l
    ld b, l
    ld c, l
    ld c, e
    ld c, l
    ld d, c
    ld c, l
    ld d, a
    ld c, l
    ld e, l
    ld c, l
    ld h, e
    ld c, l
    ld l, c
    ld c, l
    ld l, a
    ld c, l
    ld [hl], l
    ld c, l
    dec b
    sbc b
    add [hl]
    ld bc, $0016
    dec b
    sbc b
    add a
    ld bc, $001e
    dec b
    sbc b
    adc b
    ld bc, $0025
    dec b
    sbc b
    adc c
    ld bc, $001c
    dec b
    sbc b
    adc d
    ld bc, $0028
    dec b
    sbc b
    adc e
    ld bc, $0026
    dec b
    sbc b
    adc h
    ld bc, $001e
    dec b
    sbc b
    ret


    ld bc, $0013
    dec b
    sbc b
    jp z, $2801

    nop
    dec b
    sbc c
    inc h
    ld bc, $00af
    dec b
    sbc c
    inc b
    ld bc, $0011
    dec b
    sbc c
    dec b
    ld bc, $001a
    dec b
    sbc c
    ld b, $01
    daa
    nop
    dec b
    sbc c
    rlca
    ld bc, $001c
    dec b
    sbc c
    ld [$2101], sp
    nop
    dec b
    sbc c
    ld a, [bc]
    ld bc, $0002
    dec b
    sbc c
    dec bc
    ld bc, $001e
    dec b
    sbc c
    inc c
    ld bc, $0027
    dec b
    sbc c
    dec c
    ld bc, $002d
    dec b
    sbc c
    ld c, $01
    ld e, $00
    dec b
    sbc c
    rrca
    ld bc, $002b
    dec b
    sbc c
    nop
    ld bc, $004d
    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    cp [hl]
    inc hl
    jr nc, jr_03f_4d8c

    inc a
    ld [bc], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_4d8c:
    inc hl
    inc hl
    ret


Call_03f_4d8f:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6b]
    or a
    ret nz

    dec hl
    dec hl
    ret


    xor a
    ld [$cdbd], a
    ld [$cdbe], a
    ld h, b
    ld l, c
    xor a
    ld [$cd99], a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cdba], a
    ret


    ld h, b
    ld l, c
    ld a, [$cdba]
    ld [$cd99], a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cdb7], a
    ld a, $01
    ld [$cdb4], a
    ld a, [$cd99]
    ld [$cdba], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03f_4df7

    bit 1, a
    jr nz, jr_03f_4e01

    ld bc, $cd99
    bit 4, a
    jr nz, jr_03f_4e10

    bit 5, a
    jr nz, jr_03f_4e24

    bit 6, a
    jr nz, jr_03f_4e38

    bit 7, a
    jr nz, jr_03f_4e4c

    dec hl
    dec hl
    ret


jr_03f_4df7:
    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    ret


jr_03f_4e01:
    xor a
    ld [$cdb4], a
    ld a, $04
    ld [$cd99], a
    ld a, $51
    call Call_000_25cb
    ret


jr_03f_4e10:
    ld a, [bc]
    bit 0, a
    jr nz, jr_03f_4e21

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_03f_4e21:
    dec hl
    dec hl
    ret


jr_03f_4e24:
    ld a, [bc]
    bit 0, a
    jr z, jr_03f_4e35

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_03f_4e35:
    dec hl
    dec hl
    ret


jr_03f_4e38:
    ld a, [bc]
    bit 1, a
    jr z, jr_03f_4e49

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_03f_4e49:
    dec hl
    dec hl
    ret


jr_03f_4e4c:
    ld a, [bc]
    bit 1, a
    jr nz, jr_03f_4e5d

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_03f_4e5d:
    dec hl
    dec hl
    ret


    push bc
    xor a
    ld [$cdb7], a
    ld hl, $ce40
    ld c, $16
    call Call_03f_4e6f
    pop hl
    ret


Call_03f_4e6f:
    push hl
    ld hl, $cd9f
    ld a, $ff
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    xor a
    ld [$cda0], a
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_03f_4e82:
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4e93

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cda0]
    inc a
    ld [$cda0], a

jr_03f_4e93:
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_4e82

    ret


    push bc
    ld hl, $ce98
    ld c, $0c
    call Call_03f_4e6f
    pop hl
    ret


    push bc
    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4efd

    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5015
    ld a, [hl]
    res 7, a
    add a
    push af
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add [hl]
    push af
    add a
    add a
    add a
    ld b, a
    add b
    add b
    ld b, a
    pop af
    add b
    ld hl, $4f1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_03f_4eed:
    call Call_000_0930
    ld b, $19
    call CopyHLtoDE
    ldh a, [$ff97]
    add $18
    ldh [$ff97], a
    pop hl
    ret


jr_03f_4efd:
    ld hl, $4f02
    jr jr_03f_4eed

    sbc b
    daa
    ld a, [bc]
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, Call_03f_6798
    ld [$dcdc], sp
    call c, $dcdc
    call c, $dcdc
    nop
    sbc b
    daa
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    dec h
    rra
    call c, $dcdc
    call c, $dcdc
    sbc b
    ld h, a
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop

jr_03f_4f34:
    sbc b
    daa
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    dec h
    rra
    call c, $dcdc
    call c, $dcdc
    sbc b
    ld h, a
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800
    daa
    ld a, [bc]
    inc c
    ld e, $1d
    call c, Call_000_2802
    jr nc, jr_03f_4f34

    call c, $98dc
    ld h, a
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b
    daa
    ld a, [bc]
    inc c
    ld e, $1d
    call c, Call_000_2802
    jr nc, @-$22

    call c, $98dc
    ld h, a
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800
    daa
    ld a, [bc]
    ld [bc], a
    jr z, jr_03f_4fb5

    call c, $dcdc
    call c, $dcdc
    call c, Call_03f_6798
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b
    daa

jr_03f_4f9a:
    ld a, [bc]
    ld [bc], a
    jr z, jr_03f_4fce

    call c, $dcdc
    call c, $dcdc
    call c, Call_03f_6798
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800
    daa

jr_03f_4fb3:
    ld a, [bc]
    inc c

jr_03f_4fb5:
    ld a, [de]
    dec l
    ld e, $1d
    call c, Call_000_2802
    jr nc, jr_03f_4f9a

    sbc b
    ld h, a
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b

jr_03f_4fcb:
    daa
    ld a, [bc]
    inc c

jr_03f_4fce:
    ld a, [de]
    dec l
    ld e, $1d
    call c, Call_000_2802
    jr nc, jr_03f_4fb3

    sbc b
    ld h, a
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800

jr_03f_4fe4:
    daa
    ld a, [bc]
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    call c, Call_000_2802
    jr nc, jr_03f_4fcb

    call c, Call_03f_6798
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b
    daa
    ld a, [bc]
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    call c, Call_000_2802
    jr nc, jr_03f_4fe4

    call c, Call_03f_6798
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $8700
    ld hl, $5023
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld b, b
    adc $56
    adc $6c
    adc $82
    adc $c5
    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_03f_5095

    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5015
    ld a, [hl]
    res 7, a
    cp $02
    ld b, $00
    jr nz, jr_03f_5078

    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_03f_5078

    ld a, c
    ld b, $03
    cp $a0
    jr nc, jr_03f_5078

    dec b
    cp $50
    jr nc, jr_03f_5078

    dec b
    cp $0a
    jr nc, jr_03f_5078

    dec b

jr_03f_5078:
    ld hl, $509a
    ld a, b
    add a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_03f_5085:
    call Call_000_0930
    ld b, $05
    call CopyHLtoDE
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ret


jr_03f_5095:
    ld hl, $509a
    jr jr_03f_5085

    sbc b
    or c
    ld bc, $00dc
    sbc b
    or c
    ld bc, $0012
    sbc b
    or c
    ld bc, $000c
    sbc b
    or c
    ld bc, $000b
    push bc
    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_03f_50ec

    call Call_03f_519f
    ld a, [hl]
    cp $ff
    jr z, jr_03f_50ec

    res 7, a
    ld hl, $5116
    push af
    add a
    add a
    ld b, a
    add a
    add b
    ld b, a
    pop af
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0930
    ld b, $0d
    call CopyHLtoDE
    ldh a, [$ff97]
    add $0c
    ldh [$ff97], a
    pop hl
    ret


jr_03f_50ec:
    ld hl, $50ff
    call Call_000_0930
    ld b, $17
    call CopyHLtoDE
    ldh a, [$ff97]
    add $16
    ldh [$ff97], a
    pop hl
    ret


    sbc b
    ld c, d
    add hl, bc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    sbc b
    adc h
    rlca
    call c, $dcdc
    call c, $dcdc
    call c, $9800
    ld c, d
    add hl, bc
    call c, $04dc
    jr nz, jr_03f_513e

    dec [hl]
    ld h, l
    xor c
    xor a
    nop
    sbc b
    ld c, d
    add hl, bc
    call c, $02dc
    ld hl, $1c22
    inc h
    call c, $00dc
    sbc b
    ld c, d
    add hl, bc
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    call c, $00dc
    sbc b

jr_03f_513e:
    ld c, d
    add hl, bc
    ld b, $4c
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $28
    nop
    push bc
    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_03f_5187

    call Call_03f_519f
    ld a, [hl]
    cp $ff
    jr z, jr_03f_5187

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $5189
    push af
    add a
    ld b, a
    add a
    add a
    add b
    ld b, a
    pop af
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0930
    ld b, $0b
    call CopyHLtoDE
    ldh a, [$ff97]
    add $0a
    ldh [$ff97], a

jr_03f_5187:
    pop hl
    ret


    sbc b
    adc h
    rlca
    rlca
    ld e, $1a
    dec h
    dec l
    ld hl, $0032
    sbc b
    adc h
    rlca
    inc d
    daa
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    nop

Call_03f_519f:
    add a
    ld hl, $51ad
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    sbc b
    adc $a4
    adc $b0
    adc $bc
    adc $c5
    call Call_000_0930
    ld hl, $51e2
    ld b, $03
    call CopyHLtoDE
    ld hl, $cec9
    ld b, $04
    call CopyHLtoDE
    ld hl, $51e5
    ld a, [$cec8]
    or a
    jr z, jr_03f_51d5

    ld hl, $51ed

jr_03f_51d5:
    ld b, $08
    call CopyHLtoDE
    ldh a, [$ff97]
    add $0e
    ldh [$ff97], a
    pop hl
    ret


    sbc b
    ld h, a
    inc b
    sbc b
    xor b
    inc b
    ld [bc], a
    ld a, [de]
    dec l
    call c, $9800
    xor b
    inc b
    inc bc
    jr z, @+$22

    call c, Call_000_3e00
    inc bc
    ld [$cdb4], a
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03f_5211

    bit 1, a
    jr nz, jr_03f_5223

    bit 4, a
    jr nz, jr_03f_5235

    bit 5, a
    jr nz, jr_03f_524b

    dec hl
    dec hl
    ret


jr_03f_5211:
    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
    ld [$cdb8], a
    inc hl
    inc hl
    ret


jr_03f_5223:
    xor a
    ld [$cdb4], a
    ld a, $51
    call Call_000_25cb
    ld a, $01
    ld [$cdb8], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_5235:
    ld a, [$cd99]
    or a
    jr nz, jr_03f_5248

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce

jr_03f_5248:
    dec hl
    dec hl
    ret


jr_03f_524b:
    ld a, [$cd99]
    or a
    jr z, jr_03f_525d

    xor a
    ld [$cd99], a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce

jr_03f_525d:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $02
    ld [$cdb4], a
    ld a, [$cd99]
    ld [$cdb6], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03f_528d

    bit 1, a
    jr nz, jr_03f_52b5

    ld bc, $cd99
    bit 4, a
    jr nz, jr_03f_52b8

    bit 5, a
    jr nz, jr_03f_52d0

    bit 6, a
    jr nz, jr_03f_52da

    bit 7, a
    jr nz, jr_03f_52e4

    dec hl
    dec hl
    ret


jr_03f_528d:
    push hl
    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_03f_52ac

    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    pop hl
    inc hl
    inc hl
    ret


jr_03f_52ac:
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ret


jr_03f_52b5:
    dec hl
    dec hl
    ret


jr_03f_52b8:
    ld a, [bc]
    bit 0, a
    jr nz, jr_03f_52cd

    set 0, a
    ld [bc], a

jr_03f_52c0:
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_52cd:
    dec hl
    dec hl
    ret


jr_03f_52d0:
    ld a, [bc]
    bit 0, a
    jr z, jr_03f_52cd

    res 0, a
    ld [bc], a
    jr jr_03f_52c0

jr_03f_52da:
    ld a, [bc]
    bit 1, a
    jr z, jr_03f_52cd

    res 1, a
    ld [bc], a
    jr jr_03f_52c0

jr_03f_52e4:
    ld a, [bc]
    bit 1, a
    jr nz, jr_03f_52cd

    set 1, a
    ld [bc], a
    jr jr_03f_52c0

    ld a, [$cd99]
    add a
    ld hl, $530a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6c], a

Jump_03f_52ff:
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld h, b
    ld l, c
    ret


    ld e, [hl]
    ld h, l
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld a, h
    ld h, l
    add [hl]
    ld h, l
    sub b
    ld h, l
    sbc d
    ld h, l
    and h
    ld h, l
    xor [hl]
    ld h, l
    ld h, b
    ld l, c
    ld a, $04
    ld [$cdb4], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03f_5347

    bit 1, a
    jr nz, jr_03f_536b

    ld bc, $cdbd
    bit 4, a
    jr nz, jr_03f_536e

    bit 5, a
    jr nz, jr_03f_5388

    inc bc
    bit 6, a
    jr nz, jr_03f_5390

    bit 7, a
    jr nz, jr_03f_5398

    call Call_03f_53a1
    dec hl
    dec hl
    ret


jr_03f_5347:
    push hl
    ld a, [$cd99]
    ld b, a
    ld hl, $cece
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_03f_5366

    ld a, b
    ld [$cdb6], a
    ld a, $42
    call Call_000_25cb
    inc hl
    inc hl
    ret


jr_03f_5366:
    ld a, $51
    call Call_000_25cb

jr_03f_536b:
    dec hl
    dec hl
    ret


jr_03f_536e:
    ld a, [bc]
    cp $02
    jr z, jr_03f_5385

    inc a
    ld [bc], a

jr_03f_5375:
    call Call_03f_53a1
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_5385:
    dec hl
    dec hl
    ret


jr_03f_5388:
    ld a, [bc]
    or a
    jr z, jr_03f_5385

    dec a
    ld [bc], a
    jr jr_03f_5375

jr_03f_5390:
    ld a, [bc]
    or a
    jr z, jr_03f_5385

    dec a
    ld [bc], a
    jr jr_03f_5375

jr_03f_5398:
    ld a, [bc]
    cp $02
    jr z, jr_03f_5385

    inc a
    ld [bc], a
    jr jr_03f_5375

Call_03f_53a1:
    ld a, [$cdbe]
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$cdbd]
    add b
    ld [$cd99], a
    ret


    ld hl, $cece
    ld a, [$cdb6]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cd92], a
    xor a
    ld [$cd93], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $01
    jr nz, jr_03f_53d3

    dec hl
    dec hl
    ret


jr_03f_53d3:
    ret


    push bc
    ld a, $4d
    call Call_000_25c5
    call Call_03f_6713
    xor a
    ld [$cdb9], a
    pop hl
    ret


    push bc
    call Call_03f_6752
    xor a
    ld [$d605], a
    ld a, $22
    call Call_000_25c5
    pop hl
    ret


    ld h, b
    ld l, c
    call Call_03f_6765
    ld a, [$d605]
    jr nz, jr_03f_5409

    ld a, [$cdae]
    cp $ff
    jr z, jr_03f_540c

    call Call_03f_675c
    dec hl
    dec hl
    ret


jr_03f_5409:
    inc hl
    inc hl
    ret


jr_03f_540c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$d605], a
    ldh [rSTAT], a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $04
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    push bc
    ld hl, $b949
    ld de, $ce40
    ld b, $58
    call CopyHLtoDE
    ld hl, $b9a7
    ld de, $ce98
    ld b, $30
    call CopyHLtoDE
    ld hl, $b8db
    ld de, $cec8
    ld b, $06
    call CopyHLtoDE
    ld hl, $b8d2
    ld de, $cece
    ld b, $09
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld b, $04
    ld hl, $ce40

jr_03f_5463:
    push bc
    call Call_03f_5533
    pop bc
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_5463

    call Call_03f_5572
    call Call_03f_558a
    ld hl, $ce40
    ld de, $b949
    ld b, $58
    call CopyHLtoDE
    ld a, [$b949]
    cp $ff
    jr z, jr_03f_5490

    and $07
    ld [$b949], a

jr_03f_5490:
    ld a, [$b95f]
    cp $ff
    jr z, jr_03f_549c

    and $07
    ld [$b95f], a

jr_03f_549c:
    ld a, [$b975]
    cp $ff
    jr z, jr_03f_54a8

    and $07
    ld [$b975], a

jr_03f_54a8:
    ld a, [$b98b]
    cp $ff
    jr z, jr_03f_54b4

    and $07
    ld [$b98b], a

jr_03f_54b4:
    call Call_03f_55d2
    call nc, Call_03f_55ed
    call Call_03f_560d
    ld b, $04
    ld hl, $ce98

jr_03f_54c2:
    push bc
    call Call_03f_5643
    pop bc
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_54c2

    ld hl, $ce98
    ld de, $b9a7
    ld b, $30
    call CopyHLtoDE
    ld a, [$b9a7]
    cp $ff
    jr z, jr_03f_54e9

    and $07
    ld [$b9a7], a

jr_03f_54e9:
    ld a, [$b9b3]
    cp $ff
    jr z, jr_03f_54f5

    and $07
    ld [$b9b3], a

jr_03f_54f5:
    ld a, [$b9bf]
    cp $ff
    jr z, jr_03f_5501

    and $07
    ld [$b9bf], a

Jump_03f_5501:
jr_03f_5501:
    ld a, [$b9cb]
    cp $ff
    jr z, jr_03f_550d

    and $07
    ld [$b9cb], a

jr_03f_550d:
    ld hl, $cec8
    ld de, $b8db
    ld b, $06
    call CopyHLtoDE
    ld hl, $cece
    ld de, $b8d2
    ld b, $09
    call CopyHLtoDE
    ld b, $09
    ld c, $00

jr_03f_5527:
    ld a, c
    push bc
    call Call_03f_564a
    pop bc
    inc c
    dec b
    jr nz, jr_03f_5527

    pop hl
    ret


Call_03f_5533:
    ld a, [hl]
    cp $ff
    ret z

    bit 7, [hl]
    ret z

    res 7, [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_03f_5543

    inc a
    ld [hl], a

jr_03f_5543:
    push hl
    ld a, $15
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jr z, jr_03f_5553

    inc a
    inc [hl]

jr_03f_5553:
    pop hl
    ld a, [hl]
    cp $03
    ret nz

    push hl
    ld hl, $ce40
    ld c, $16
    call Call_03f_4e6f
    pop hl
    ld a, [$cda0]
    cp $04
    ret nc

    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], $15
    pop hl
    ret


Call_03f_5572:
    ld b, $04
    ld hl, $ce40

jr_03f_5577:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_03f_55a9

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_5577

    ret


Call_03f_558a:
    ld b, $04
    ld hl, $ce40

jr_03f_558f:
    push hl
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 7, [hl]
    pop hl
    jr nz, jr_03f_55b0

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_558f

    ret


jr_03f_55a9:
    ld b, $04
    ld hl, $ce40
    jr jr_03f_55ba

jr_03f_55b0:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    ret z

jr_03f_55ba:
    push hl
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    res 7, [hl]
    pop hl
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_55ba

    ret


Call_03f_55d2:
    ld b, $04
    ld hl, $ce98

jr_03f_55d7:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_03f_55eb

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_55d7

    or a
    ret


jr_03f_55eb:
    scf
    ret


Call_03f_55ed:
    ld a, [$cdaf]
    and $3f
    or a
    ret nz

    ld b, $04
    ld hl, $ce98

jr_03f_55f9:
    ld a, [hl]
    cp $82
    jr z, jr_03f_560a

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_55f9

    ret


jr_03f_560a:
    ld [hl], $03
    ret


Call_03f_560d:
    ld b, $03
    ld hl, $ce98

jr_03f_5612:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_03f_5625

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_5612

    ret


jr_03f_5625:
    push hl
    ld de, $ce25
    ld b, $0c
    call CopyHLtoDE
    ld hl, $cebc
    pop de
    ld b, $0c
    call CopyHLtoDE
    ld hl, $ce25
    ld de, $cebc
    ld b, $0c
    call CopyHLtoDE
    ret


Call_03f_5643:
    ld a, [hl]
    cp $ff
    ret z

    res 7, [hl]
    ret


Call_03f_564a:
    ld b, a
    add a
    add a
    add b
    ld hl, $567d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    or a
    jr z, jr_03f_566e

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    push hl
    call Call_03f_56aa
    pop hl
    ret z

    ld a, $01
    ld [de], a
    ret


jr_03f_566e:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    ld a, [hl+]
    call Call_03f_56aa
    ret nz

    ld a, $ff
    ld [hl], a
    ret


    jp nc, $b5b8

    cp b
    inc b
    db $d3
    cp b
    or [hl]
    cp b
    dec b
    call nc, $b7b8
    cp b
    ld b, $d5
    cp b
    cp b
    cp b
    rlca
    sub $b8
    cp c
    cp b
    ld c, [hl]
    rst $10
    cp b
    cp d
    cp b
    ld c, a
    ret c

    cp b
    cp e
    cp b
    ld d, b
    reti


    cp b
    cp h
    cp b
    ld d, c
    jp c, $b4b8

    cp b
    inc bc

Call_03f_56aa:
    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_03f_56d5

    call Call_03f_5b11
    jr nz, jr_03f_56d2

    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, h
    ld c, l
    ld l, e
    ld h, a
    jp hl


jr_03f_56d2:
    dec hl
    dec hl
    ret


jr_03f_56d5:
    call Call_03f_5b1b
    jr nz, jr_03f_5701

    xor a
    ld [$ce06], a
    ld a, [$ce07]
    or a
    jr nz, jr_03f_56f9

    inc hl
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_03f_56f5

    xor a
    ld [$cdb9], a
    inc hl
    ret


jr_03f_56f5:
    dec hl
    dec hl
    dec hl
    dec hl

jr_03f_56f9:
    ld a, $1f
    call Call_03f_454a
    dec hl
    dec hl

Call_03f_5700:
    ret


jr_03f_5701:
    ld a, [$cdae]
    cp $ff
    jr nz, jr_03f_56d2

    ld a, [$cdb9]
    inc a
    ld [$cdb9], a
    cp $03
    jr nz, jr_03f_56d2

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld hl, $b8f4
    ld de, $cdbf
    ld a, $05
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $04
    ld b, $05
    call Call_03f_4553
    pop hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_03f_576c

    call Call_03f_5b1b
    jr z, jr_03f_574f

    ld a, [$cdae]
    cp $3f
    jr z, jr_03f_575a

    dec hl
    dec hl
    ret


jr_03f_574f:
    xor a
    ld [$ce06], a
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr z, jr_03f_576c

jr_03f_575a:
    ld a, [$cdb9]
    inc a
    ld [$cdb9], a
    cp $03
    jr c, jr_03f_5767

    inc hl
    inc hl

jr_03f_5767:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_576c:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_03f_578c

    call Call_03f_5b11
    jr nz, jr_03f_5789

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, h
    ld c, l
    ld l, e
    ld h, a
    jp hl


jr_03f_5787:
    dec hl
    dec hl

jr_03f_5789:
    dec hl
    dec hl
    ret


jr_03f_578c:
    call Call_03f_5b1b
    jr nz, jr_03f_5789

    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_03f_5787

    inc hl
    ret


    push bc
    ld a, $06
    call Call_03f_454a
    pop hl
    inc hl
    ret


    xor a
    ld [$ce0a], a
    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_03f_57d6

    call Call_03f_5b1b
    jr z, jr_03f_57c0

    ld a, [$cdae]
    cp $3f
    jr z, jr_03f_57da

    dec hl
    dec hl
    ret


jr_03f_57c0:
    xor a
    ld [$ce06], a
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_03f_57da

    ld a, [$ce07]
    or a
    jr nz, jr_03f_57da

    ld a, $1e
    call Call_03f_454a

jr_03f_57d6:
    inc hl
    inc hl
    inc hl
    ret


jr_03f_57da:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    ret nz

    ld a, [$ce0a]
    or a
    ret nz

    dec hl
    dec hl
    ret


    push bc
    call Call_03f_5b11
    jr nz, jr_03f_57fb

    ld a, $0e
    call Call_03f_454a
    pop hl
    ret


jr_03f_57fb:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb7]
    or a
    jr z, jr_03f_5811

    dec a
    jr nz, jr_03f_580d

    inc hl
    inc hl
    ret


jr_03f_580d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03f_5811:
    ld a, [$cdae]
    cp $3f
    jr nz, jr_03f_581a

    dec hl
    dec hl

jr_03f_581a:
    dec hl
    dec hl
    ret


    push bc
    call Call_03f_5b11
    jr nz, jr_03f_582a

    ld a, $10
    call Call_03f_454a
    pop hl
    ret


jr_03f_582a:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb7]
    or a
    jr z, jr_03f_5837

    ret


jr_03f_5837:
    dec hl
    dec hl
    ret


    push bc
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5015
    ld de, $cdbf
    ld a, $0f
    ld [de], a
    xor a
    inc de
    ld [de], a
    inc de
    ld b, $0b
    call CopyHLtoDE
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $08
    ld b, $0f
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbf
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$ce0b]
    cp $03
    jr nz, jr_03f_58a1

    ld b, $04
    ld hl, $ce40

jr_03f_588f:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_03f_58a7

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_588f

jr_03f_58a1:
    xor a
    ld [$cdb8], a
    pop hl
    ret


jr_03f_58a7:
    ld a, $04
    sub b
    ld b, a
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr z, jr_03f_58a1

    ld a, $01
    ld [$cdb8], a
    pop hl
    ret


    push bc
    ld hl, $ce0b
    ld a, [hl+]
    cp $ff
    jr z, jr_03f_58f8

    res 7, a
    cp $05
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $ea
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $ea
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $ea
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $ea
    jr nc, jr_03f_58fe

    inc hl
    inc hl
    ld a, [hl+]
    cp $03
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $03
    jr nc, jr_03f_58fe

    ld a, [hl+]
    cp $02
    jr nc, jr_03f_58fe

    pop hl
    ret


jr_03f_58f8:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


jr_03f_58fe:
    ld a, $01
    ld [$cdb8], a
    pop hl
    ret


    push bc
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5015
    ld d, h
    ld e, l
    ld hl, $ce0b
    set 7, [hl]
    ld b, $16
    call CopyHLtoDE
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$cda0]
    or a
    jr nz, jr_03f_5933

    ld a, $01
    ld [$cdb8], a
    inc hl
    inc hl

jr_03f_5933:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld hl, $b8d2
    ld e, $09

jr_03f_593c:
    ld a, [hl+]
    or a
    jr nz, jr_03f_594a

    dec e
    jr nz, jr_03f_593c

    ld a, $01
    ld [$cdb8], a
    inc bc
    inc bc

jr_03f_594a:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_03f_519f
    ld de, $cdbf
    ld a, $05
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    ld b, $03
    call CopyHLtoDE
    ld a, $08
    ld b, $05
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbf
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_03f_519f
    ld a, [hl]
    pop hl
    or a
    jr z, jr_03f_59a6

    inc hl
    inc hl
    ret


jr_03f_59a6:
    ld a, $51
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld a, [$ce25]
    cp $03
    jr nz, jr_03f_59ce

    ld b, $04
    ld hl, $ce98

jr_03f_59bc:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_03f_59d4

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03f_59bc

jr_03f_59ce:
    xor a
    ld [$cdb8], a
    pop hl
    ret


jr_03f_59d4:
    ld a, $04
    sub b
    ld b, a
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr z, jr_03f_59ce

    ld a, $01
    ld [$cdb8], a
    pop hl
    ret


    push bc
    ld hl, $ce25
    ld a, [hl+]
    cp $ff
    jr z, jr_03f_5a04

    res 7, a
    cp $04
    jr nc, jr_03f_5a06

    inc hl
    ld a, [hl+]
    cp $02
    jr nc, jr_03f_5a06

jr_03f_5a04:
    pop hl
    ret


jr_03f_5a06:
    ld a, $01
    ld [$cdb8], a
    ret


    push bc
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_03f_519f
    ld d, h
    ld e, l
    ld hl, $ce25
    set 7, [hl]
    ld b, $0c
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld de, $cdbf
    ld a, $08
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld hl, $cec8
    ld b, $06
    call CopyHLtoDE
    ld a, $08
    ld b, $08
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbf
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_03f_4553
    pop hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$cec8]
    or a
    ret z

    ld a, $01
    ld [$cec8], a
    ret


    push bc
    ld de, $cec8
    ld hl, $ce31
    ld b, $06
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld hl, $cdbf
    ld a, $03
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [$cdb6]
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, $08
    ld b, $0e
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbf
    xor a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cece
    ld a, [$ce37]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $63
    ld a, $00
    jr c, jr_03f_5aba

    inc a

jr_03f_5aba:
    ld [$cdb8], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$ce37]
    cp $0a
    ret c

    ld a, $01
    ld [$cdb8], a
    ret


    push bc
    ld hl, $cece
    ld a, [$cdb6]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $cece
    ld a, [$ce37]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_03f_5aed

    inc [hl]

jr_03f_5aed:
    pop hl
    ret


    push bc
    ld a, [$cd99]
    ld [$cdbf], a
    ld a, $0c
    ld b, $01
    call Call_03f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$cdb8]
    ld [$cdbf], a
    ld a, $0e
    ld b, $01
    call Call_03f_4553
    pop hl
    inc hl
    ret


Call_03f_5b11:
    ld a, [$ce00]
    or a
    ret nz

    ld a, [$ce02]
    or a
    ret


Call_03f_5b1b:
    ld a, [$ce06]
    cp $02
    ret


    ld h, b
    ld l, c
    ld a, [$cd99]
    cp $04
    jr z, jr_03f_5b2d

    ld [$cdba], a

jr_03f_5b2d:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$cdb7]
    or a
    jr nz, jr_03f_5b49

    ld a, [$cdb8]
    or a
    jr nz, jr_03f_5b49

    inc hl
    inc hl
    ret


jr_03f_5b49:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr nz, jr_03f_5b5b

    inc hl
    inc hl
    ret


jr_03f_5b5b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $f0
    jr nz, jr_03f_5b6b

    inc hl
    inc hl
    ret


jr_03f_5b6b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    call Call_000_2527
    ld a, $46
    call Call_000_25cb
    pop hl
    ret


    push bc
    ld a, $03
    ld [$d602], a
    xor a
    ld [$d600], a
    ld [$d605], a
    ld [$d601], a
    ld [$d604], a
    ld [$d603], a
    ld [$d633], a
    ld [$d638], a
    ld [$d635], a
    ld [$d63a], a
    ld [$d637], a
    ld [$d63c], a
    ld a, $eb
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    pop hl
    ret


    ld hl, $cd6c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $5bc1
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $cd98
    inc [hl]
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    adc $5b
    call nc, $605b
    ld l, c
    ld a, [hl+]
    ld [$cd70], a
    ld a, [hl+]
    ld [$cd71], a
    ld a, [hl+]
    ld [$cd6e], a
    ld a, [hl+]
    ld [$cd6f], a
    ret


    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $ef
    jr z, jr_03f_5c4a

jr_03f_5bfb:
    push af
    inc de
    ld a, e
    ld [$cd70], a
    ld a, d
    ld [$cd71], a
    pop af
    ld c, a
    push bc
    ld a, [$cd6f]
    push af
    inc a
    ld [$cd6f], a
    pop af
    ld de, $99c2
    cp $90
    jr c, jr_03f_5c1b

    ld de, $99f2

jr_03f_5c1b:
    sub $80
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    pop bc
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_03f_5c45

    dec hl
    dec hl
    ret


jr_03f_5c45:
    xor a
    ld [$cd98], a
    ret


jr_03f_5c4a:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_03f_5c62

    ld a, [de]
    cp $ef
    jr nz, jr_03f_5bfb

    jr jr_03f_5c4a

jr_03f_5c62:
    pop hl
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    call Call_03f_5c6d

Call_03f_5c6d:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld b, a
    or a
    jr z, jr_03f_5c83

jr_03f_5c7d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_03f_5c7d

jr_03f_5c83:
    pop hl
    ret


    push bc
    ld hl, $99c2
    ld b, $10

jr_03f_5c8b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_5c8b

    ld a, [$cb5c]
    ld [hl], a

jr_03f_5c95:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_5c95

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_03f_5c8b

    ld hl, $9a02
    ld b, $10

jr_03f_5ca7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_5ca7

    ld a, [$cb5c]
    ld [hl], a

jr_03f_5cb1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_5cb1

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_03f_5ca7

    pop hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6b], a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_03f_5ce0

    ld a, [$cd98]
    cp [hl]
    jr z, jr_03f_5ce0

    dec hl
    dec hl
    ret


jr_03f_5ce0:
    inc hl
    ret


    push bc
    ld a, [$cd9c]
    cp $ff
    jr z, jr_03f_5d17

    ld de, $cd73
    call Call_03f_5d19
    ld a, [$cd9d]
    cp $ff
    jr z, jr_03f_5d17

    ld de, $cd7e
    call Call_03f_5d19
    ld a, [$cd9e]
    cp $ff
    jr z, jr_03f_5d17

    ld de, $cd83
    call Call_03f_5d19
    ld a, [$cd9f]
    cp $ff
    jr z, jr_03f_5d17

    ld de, $cd8e
    call Call_03f_5d19

jr_03f_5d17:
    pop hl
    ret


Call_03f_5d19:
    push de
    call Call_03f_5d25
    inc hl
    pop de
    ld b, $04
    call CopyHLtoDE
    ret


Call_03f_5d25:
    add a
    ld hl, $5d33
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld b, b
    adc $56
    adc $6c
    adc $82
    adc $c5
    ld a, [$cdb6]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_03f_5d25
    inc hl
    ld de, $cd72
    ld b, $04
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld a, [$cdb6]
    add a
    add a
    ld hl, $5e5a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd72
    ld b, $04
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld a, [$cdb6]
    add a
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$cdb6]
    add a
    add a
    add a
    add b
    ld hl, $5d93
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd72
    ld b, $0e
    call CopyHLtoDE
    pop hl
    ret


    inc de
    ld l, $2b
    daa

jr_03f_5d97:
    ld [hl+], a
    add hl, hl
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rrca
    jr z, jr_03f_5dd1

    ld a, [de]

jr_03f_5da5:
    dec l
    jr z, jr_03f_5d97

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    inc de
    jr z, jr_03f_5dd8

    ld a, [de]
    dec l
    jr z, jr_03f_5da5

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03f_5deb

    daa
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    inc b
    jr nz, jr_03f_5dee

    add hl, hl
    dec h
    ld a, [de]

jr_03f_5dd1:
    daa
    dec l
    rst $28
    ld [de], a
    ld e, $1e
    dec e

jr_03f_5dd8:
    inc l
    rrca
    ld e, $1a
    daa
    ld l, $2d
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    ld [bc], a
    ld a, [de]
    dec hl
    dec hl

jr_03f_5deb:
    jr z, @+$2f

    rst $28

jr_03f_5dee:
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    ld bc, $282b
    inc e
    inc e
    jr z, @+$27

    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    push bc
    ld a, [$cd9c]
    cp $ff
    jr z, jr_03f_5e52

    ld de, $cd73
    ld hl, $5e5a
    call Call_03f_5e54
    ld a, [$cd9d]
    cp $ff
    jr z, jr_03f_5e52

    ld de, $cd7e
    ld hl, $5e5e
    call Call_03f_5e54

jr_03f_5e32:
    ld a, [$cd9e]
    cp $ff
    jr z, jr_03f_5e52

    ld de, $cd83
    ld hl, $5e62
    call Call_03f_5e54
    ld a, [$cd9f]
    cp $ff
    jr z, jr_03f_5e52

    ld de, $cd8e
    ld hl, $5e66
    call Call_03f_5e54

jr_03f_5e52:
    pop hl
    ret


Call_03f_5e54:
    ld b, $04
    call CopyHLtoDE
    ret


    dec [hl]
    rst $28
    ld [de], a
    inc de
    ld [hl], $ef
    dec c
    inc bc
    scf
    rst $28
    ld de, $3803
    rst $28
    inc de
    rlca

jr_03f_5e6a:
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_03f_5e9d

    push hl
    ld de, $9a11
    ld a, [$cd9b]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr nz, jr_03f_5e85

    ld a, [$cd9b]
    ld b, a

jr_03f_5e85:
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    dec hl
    dec hl
    ret


jr_03f_5e9d:
    ret


    add l
    ld e, h
    ret c

    ld e, e
    ld a, [hl]
    ld h, d
    jr nz, @-$7e

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    sbc [hl]
    ld h, d
    jr nz, jr_03f_5e32

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    cp [hl]
    ld h, d
    jr nz, @-$7e

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e

jr_03f_5ec4:
    sbc $62
    jr nz, @-$7e

    adc $5b
    call nc, Call_03f_6860
    ld e, h

jr_03f_5ece:
    cp $60
    ld [hl], d
    call $b020
    call $cd8a
    inc b
    ret c

    ld e, e
    ld [hl], d
    call $8020
    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e
    sbc $60
    jr nz, jr_03f_5e6a

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b
    ldh a, [$ff5e]
    ld l, b
    ld e, h
    ld e, [hl]
    ld h, d
    ld [hl], d
    call Call_03f_4120

jr_03f_5efc:
    adc $72
    call $e200
    ld e, h
    adc $5b
    adc $60

jr_03f_5f06:
    ld l, b
    ld e, h
    ld e, [hl]
    ld h, d
    ld [hl], d
    call $9920
    adc $73
    call $1100
    ld e, [hl]
    adc $5b
    adc $60
    ld l, b
    ld e, h
    ld e, [hl]
    ld h, c

jr_03f_5f1c:
    ld [hl], d
    call Call_03f_4120
    adc $72
    call $3b00
    ld e, l

jr_03f_5f26:
    adc $5b
    adc $60
    ld l, b
    ld e, h
    ld e, [hl]
    ld h, c
    ld [hl], d
    call Call_03f_4120
    adc $72
    call Call_03f_5700
    ld e, l
    adc $5b
    adc $60

jr_03f_5f3c:
    add l
    ld e, h
    ret c

    ld e, e
    ld e, $61
    jr nz, jr_03f_5ec4

    db $eb
    ld e, e

jr_03f_5f46:
    ld l, d
    ld e, [hl]
    ret c

    ld e, e
    ld a, $61
    jr nz, jr_03f_5ece

    adc $5b

jr_03f_5f50:
    call nc, Call_03f_6860
    ld e, h
    ld e, [hl]
    ld h, c
    ld [hl], d
    call $c920
    adc $72

jr_03f_5f5c:
    call $ce04
    ld e, e
    adc $60
    ld l, b
    ld e, h
    ld e, [hl]
    ld h, c
    ld [hl], d
    call Call_03f_4120
    adc $72
    call Call_03f_7000
    ld e, l
    adc $5b
    adc $60
    add l
    ld e, h
    ret c

    ld e, e
    sbc $61

jr_03f_5f7a:
    jr nz, jr_03f_5efc

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e
    cp $61
    jr nz, jr_03f_5f06

jr_03f_5f86:
    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e
    ld e, $62
    jr nz, @-$7e

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e

jr_03f_5f98:
    ld a, $62
    jr nz, jr_03f_5f1c

    adc $5b
    call nc, $d860
    ld e, e

jr_03f_5fa2:
    sbc $62
    jr nz, jr_03f_5f26

    adc $5b
    call nc, $d860
    ld e, e
    ld a, [hl]
    ld h, c

jr_03f_5fae:
    jr nz, @-$7e

    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e

jr_03f_5fb8:
    sbc [hl]
    ld h, c
    jr nz, jr_03f_5f3c

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e

jr_03f_5fc2:
    cp [hl]
    ld h, c
    jr nz, jr_03f_5f46

    adc $5b
    call nc, $d860
    ld e, e
    ld e, $63

jr_03f_5fce:
    jr nz, jr_03f_5f50

    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e

jr_03f_5fd8:
    cp $62
    jr nz, jr_03f_5f5c

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e

jr_03f_5fe4:
    ld e, $63
    jr nz, @-$7e

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b

jr_03f_5ff0:
    xor $5f
    add l
    ld e, h
    ret c

    ld e, e
    cp $62
    jr nz, jr_03f_5f7a

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e

jr_03f_6002:
    ld e, $63
    jr nz, jr_03f_5f86

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b

jr_03f_600e:
    inc c
    ld h, b
    add l
    ld e, h
    ret c

    ld e, e
    cp $62
    jr nz, jr_03f_5f98

    db $eb
    ld e, e

jr_03f_601a:
    ld l, d
    ld e, [hl]
    ret c

    ld e, e
    ld e, $63
    jr nz, jr_03f_5fa2

    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e
    cp $62

jr_03f_602c:
    jr nz, jr_03f_5fae

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e
    ld e, $63
    jr nz, jr_03f_5fb8

jr_03f_6038:
    adc $5b
    call nc, $d860
    ld e, e
    sbc $63
    jr nz, jr_03f_5fc2

    adc $5b

jr_03f_6044:
    call nc, $8560
    ld e, h
    ret c

    ld e, e
    cp $62
    jr nz, jr_03f_5fce

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret c

    ld e, e
    ld e, $63
    jr nz, jr_03f_5fd8

    adc $5b
    call nc, $8560
    ld e, h
    ret c

    ld e, e
    cp $62
    jr nz, jr_03f_5fe4

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    ld e, $63
    jr nz, jr_03f_5ff0

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b
    halt
    ld h, b
    add l
    ld e, h
    ret c

    ld e, e
    sbc [hl]
    ld h, h
    jr nz, jr_03f_6002

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    cp [hl]
    ld h, h
    jr nz, jr_03f_600e

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    sbc $64
    jr nz, jr_03f_601a

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b
    and b
    ld h, b
    add l
    ld e, h
    ret c

    ld e, e
    cp $64
    jr nz, jr_03f_602c

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    ld e, $65
    jr nz, jr_03f_6038

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    add l
    ld e, h
    ret c

    ld e, e
    ld a, $65
    jr nz, jr_03f_6044

    db $eb
    ld e, e
    ld l, d
    ld e, [hl]
    ret nz

    ld e, h
    adc $5b
    jp z, $d860

    ld e, e
    ld [hl], d
    call $8020
    add l
    ld e, h
    db $eb
    ld e, e
    ret nz

    ld e, h
    adc $5b
    jp c, Jump_000_1360

    ld hl, $ef1e
    dec h
    ld [hl+], a
    daa
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    dec de
    ld l, $2c
    ld [hl-], a
    inc de
    dec hl
    ld [hl-], a
    rst $28
    ld a, [de]
    jr nz, @+$1c

    ld [hl+], a
    daa
    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    jp hl


    jr @+$2a

    ld l, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    inc e
    jr z, jr_03f_6130

    daa
    ld e, $1c
    dec l
    ld b, h
    ld e, $1d
    rst $28
    jr nc, jr_03f_6135

    dec l
    ld hl, $efef
    rst $28
    rst $28
    rst $28
    call c, $efef
    rst $28
    ld [de], a
    ld e, $25
    ld e, $1c
    dec l
    rst $28
    dec l
    ld hl, $ef1e
    ld h, $1e
    daa
    ld l, $dc
    rrca
    dec h

jr_03f_6130:
    ld e, $1a
    inc l
    ld e, $ef

jr_03f_6135:
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    rst $28
    rst $28
    rst $28

jr_03f_613d:
    jp hl


    dec l
    ld hl, $ef1e
    ld bc, $1bef
    ld l, $2d
    dec l
    jr z, jr_03f_6171

    rst $28
    dec l
    jr z, jr_03f_613d

    ld e, $27
    dec e
    call c, $efef
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
    rst $28
    rst $28
    rst $28
    call c, Call_000_18ef
    inc b

jr_03f_6171:
    ld [de], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_6178:
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $04
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_03f_61a8

    daa
    jr nz, jr_03f_6178

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nc, jr_03f_61b1

    ld [hl+], a
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc b
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_03f_61c4

    rst $28
    ld [hl+], a

jr_03f_61a8:
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rra
    ld [hl+], a
    daa

jr_03f_61b1:
    ld [hl+], a
    inc l
    ld hl, $1d1e
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $25
    ld e, $1c
    dec l

jr_03f_61c4:
    rst $28
    dec l
    ld hl, $ef1e
    ld h, $1e
    daa
    ld l, $dc
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
    ld d, $28

jr_03f_61e0:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03f_6215

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    rst $28
    dec l
    jr z, jr_03f_61e0

    rra
    ld [hl+], a
    daa
    ld [hl+], a
    inc l
    ld hl, $2def
    ld hl, $ef1e
    rst $28
    jp hl


    ld e, $31
    inc e
    ld hl, $271a
    jr nz, jr_03f_6224

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03f_6215

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_03f_6215:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $13
    ld hl, $271a
    inc h

jr_03f_6223:
    rst $28

jr_03f_6224:
    ld [hl-], a
    jr z, jr_03f_6255

    rst $28
    rra
    jr z, jr_03f_6256

    rst $28
    rst $28
    rst $28
    ld l, $2c
    ld [hl+], a
    daa
    jr nz, jr_03f_6223

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    rst $28
    ld de, $271a
    inc e
    ld hl, $0def
    ld e, $2d
    jr nc, jr_03f_6273

    dec hl
    inc h
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_6255:
    rst $28

jr_03f_6256:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    xor a
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    xor a
    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_03f_6273:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec h
    jr z, jr_03f_62b0

    inc h
    rst $28
    rra
    jr z, @+$2d

    rst $28
    ld a, [de]
    rst $28
    rra
    dec hl
    ld [hl+], a
    ld e, $27
    dec e
    rst $28
    rra
    jr z, jr_03f_62c5

    rst $28
    rst $28
    rst $28
    jp hl


    ld [hl-], a
    jr z, jr_03f_62cf

    call c, $efef
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
    rrca
    dec h

jr_03f_62b0:
    ld e, $1a
    inc l
    ld e, $ef
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    rst $28
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $ef1e
    nop
    rst $28
    dec de

jr_03f_62c5:
    ld l, $2d
    dec l
    jr z, jr_03f_62f1

    call c, $efef
    rst $28
    rst $28

jr_03f_62cf:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_62d5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld d, $1a
    ld [hl+], a
    dec l
    ld [hl+], a
    daa
    jr nz, jr_03f_62d5

    rra
    jr z, jr_03f_6314

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    inc e
    jr z, jr_03f_6318

jr_03f_62f1:
    daa
    ld e, $1c
    dec l
    ld [hl+], a
    jr z, jr_03f_631f

    call c, $dcdc
    rst $28
    rst $28
    rst $28
    jr jr_03f_6328

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    daa
    jr z, jr_03f_6336

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld e, $31
    inc e
    ld hl, $271a

jr_03f_6314:
    jr nz, jr_03f_6334

    rst $28
    ld [hl+], a

jr_03f_6318:
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc b

jr_03f_631f:
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, @+$20

    rst $28
    rst $28

jr_03f_6328:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc e
    ld a, [de]
    daa
    inc e
    ld e, $25

jr_03f_6334:
    ld e, $1d

jr_03f_6336:
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03f_6368

    ld l, $ef
    dec e
    jr z, @+$29

    ld c, e
    dec l
    rst $28

jr_03f_6348:
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    dec l
    jr z, jr_03f_6348

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [hl-], a
    jr z, @+$30

    rst $28
    inc e
    ld a, [de]
    daa
    rst $28
    jr z, @+$29

jr_03f_6368:
    dec h
    ld [hl-], a
    rst $28
    ld e, $31
    ld b, h
    inc e
    ld hl, $271a
    jr nz, jr_03f_6392

    rst $28
    dec [hl]
    rst $28
    ld b, $28
    dec h
    dec e
    ld e, $27
    jp hl


    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    call c, $04ef
    ld sp, $211c
    ld a, [de]
    daa
    ld b, h
    jr nz, jr_03f_63ae

    rst $28
    inc e

jr_03f_6392:
    ld a, [de]
    daa
    inc e
    ld e, $25
    ld e, $1d
    call c, $efef
    rst $28
    rst $28
    jr @+$2a

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    jr z, jr_03f_63cf

    dec h
    ld [hl-], a
    rst $28
    inc e
    ld a, [de]
    ld b, h

jr_03f_63ae:
    dec hl
    dec hl
    ld [hl-], a
    rst $28
    ld a, [de]
    rst $28
    ld h, $1a
    ld sp, $28ef
    rra
    rst $28
    dec a
    dec a
    jp hl


    inc l
    ld e, $1e
    dec e
    inc l
    call c, $04ef
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_03f_63eb

    rst $28
    inc e

jr_03f_63cf:
    ld a, [de]
    daa
    inc e
    ld e, $25
    ld e, $1d
    rst $28
    rst $28

jr_03f_63d8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03f_6408

    dec l
    ld [hl+], a
    daa
    ld l, $22
    daa
    jr nz, jr_03f_63d8

    rst $28
    rst $28

jr_03f_63eb:
    rst $28
    rst $28
    rst $28
    inc b
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_03f_6414

    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03f_6428

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    jr z, jr_03f_642f

jr_03f_6408:
    dec h
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    inc b
    ld sp, $211c
    ld a, [de]
    daa

jr_03f_6414:
    jr nz, jr_03f_6434

    rst $28
    dec [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    add hl, hl
    dec hl
    ld e, $20
    daa
    ld a, [de]
    daa
    dec l
    rst $28
    inc e

jr_03f_6428:
    jr z, jr_03f_645a

    call c, $efef
    rst $28
    inc b

jr_03f_642f:
    ld sp, $211c
    ld a, [de]
    daa

jr_03f_6434:
    jr nz, jr_03f_6454

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc e
    ld a, [de]
    daa
    inc e
    ld e, $25
    ld e, $1d
    call c, $efef
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

jr_03f_6454:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_645a:
    rst $28
    rst $28
    rst $28
    rst $28
    jr @+$2a

    ld l, $ef
    dec e
    jr z, jr_03f_648c

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    dec l
    ld hl, $ef1e
    inc l
    ld e, $1e
    dec e
    inc l
    rst $28
    dec l
    jr z, @-$0f

    rst $28
    rst $28
    jp hl


    ld e, $31
    inc e
    ld hl, $271a
    jr nz, jr_03f_64a4

    call c, $04ef
    ld sp, $211c

jr_03f_648c:
    ld a, [de]
    ld b, h
    daa
    jr nz, jr_03f_64af

    rst $28
    inc e
    ld a, [de]
    daa
    inc e
    ld e, $25
    ld e, $1d
    call c, $efef
    rst $28
    ld [$21ef], sp
    ld e, $1a
    dec hl

jr_03f_64a4:
    dec e
    rst $28
    dec l
    ld hl, $2d1a
    rst $28
    ld a, [de]
    rst $28
    rst $28
    inc e

jr_03f_64af:
    ld a, [de]
    dec h
    rra
    rst $28
    jr nc, jr_03f_64cf

    inc l
    rst $28
    dec de
    jr z, jr_03f_64e5

    daa
    call c, $e9ef
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, jr_03f_64ee

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    ld a, [de]

jr_03f_64cf:
    rra
    dec l
    ld e, $2b
    rst $28
    ld [hl-], a
    jr z, jr_03f_6505

    rst $28
    ld hl, $2f1a
    ld e, $ef
    jp hl


    daa
    ld a, [de]

jr_03f_64e0:
    ld h, $1e
    dec e
    rst $28
    ld [hl+], a

jr_03f_64e5:
    dec l
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_64ee:
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
    ld c, $21
    rst $28
    dec c
    jr z, jr_03f_64e0

    rst $28

jr_03f_6505:
    ld [$532d], sp
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    jr nc, @+$21

    ld l, $25
    call c, $dcdc
    rst $28
    rst $28
    rst $28
    rst $28

jr_03f_651a:
    rst $28
    rst $28
    rst $28
    jp hl


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nz, jr_03f_654f

    rst $28
    dec l
    jr z, jr_03f_651a

    rst $28
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_03f_655f

    dec hl
    rst $28
    dec de
    ld a, [de]
    dec hl
    daa
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1c1e
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_03f_6575

    dec hl
    rst $28
    inc e
    jr z, @+$32

    call c, $efef

jr_03f_654f:
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
    jp hl


    ret c

jr_03f_655f:
    ld e, e
    cp b
    ld h, l
    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    ret z

    ld h, l
    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    ret c

jr_03f_6575:
    ld h, l
    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    add sp, $65
    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    ld hl, sp+$65
    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    ld [$1066], sp
    add b
    adc $5b
    call nc, $d860
    ld e, e
    jr @+$68

    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    jr z, jr_03f_660e

    db $10
    add b
    adc $5b
    call nc, $d860
    ld e, e
    jr c, jr_03f_6618

    db $10
    add b
    adc $5b
    call nc, $ef60
    rst $28
    inc de
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl

jr_03f_65c0:
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    jr z, jr_03f_65fa

    ld a, [de]
    dec l
    jr z, jr_03f_65c0

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    jr z, jr_03f_6603

    ld a, [de]
    dec l
    jr z, @-$0f

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03f_6619

    daa
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    inc b

jr_03f_65fa:
    jr nz, jr_03f_661c

    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    ld [de], a

jr_03f_6603:
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rrca
    ld e, $1a
    daa

jr_03f_660e:
    ld l, $2d
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28

jr_03f_6618:
    rst $28

jr_03f_6619:
    rst $28
    ld [bc], a
    ld a, [de]

jr_03f_661c:
    dec hl
    dec hl
    jr z, jr_03f_664d

    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    ld bc, $282b
    inc e
    inc e
    jr z, jr_03f_6655

    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28

Call_03f_6648:
    push hl
    ld hl, $6655
    add l

jr_03f_664d:
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


jr_03f_6655:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_6694

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

Call_03f_6665:
    ld a, [$d605]
    and a
    ret z

    ld a, [$d604]
    and a
    ret nz

    ld a, [$d600]
    and a
    ret z

    ld a, [$d604]
    and a
    ret nz

    ld a, $81
    ldh [rSC], a
    ret


    xor a
    ld [$d607], a
    ld a, [$d605]
    and a
    jr nz, jr_03f_66c5

    ld a, [$d606]
    and a
    jr z, jr_03f_66bb

    ldh a, [rSB]
    cp $5e
    jr z, jr_03f_66a7

jr_03f_6694:
    cp $fe
    jr z, jr_03f_66af

    xor a
    ld [$d600], a
    ld a, $5e
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_03f_6712


jr_03f_66a7:
    ld a, $01
    ld [$d600], a
    ld [$d601], a

jr_03f_66af:
    ld a, $01
    ld [$d605], a
    ld a, [$d602]
    inc a
    ld [$d602], a

jr_03f_66bb:
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_03f_6712


jr_03f_66c5:
    ld a, $01
    ld [$d604], a
    ld a, [$d600]
    xor $01
    ld [$d600], a
    ld hl, $d610
    ld a, [$d603]
    ld e, a
    xor a
    ld d, a
    add hl, de
    ldh a, [rSB]
    ld [hl], a
    ld hl, $d620
    add hl, de
    ld a, [hl]
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ld a, [$d603]
    inc a
    ld [$d603], a
    ld b, a
    ld a, [$d602]
    cp b
    jp nz, Jump_03f_6708

    xor a
    ld [$d603], a
    ld [$d604], a
    call Call_03f_67dc
    call Call_03f_67a5
    jr jr_03f_6712

Jump_03f_6708:
    ld a, [$d600]
    and a
    jr z, jr_03f_6712

    ld a, $06
    ldh [rTAC], a

Jump_03f_6712:
jr_03f_6712:
    ret


Call_03f_6713:
    ld a, $03
    ld [$d602], a
    xor a
    ld [$d600], a
    ld [$d605], a
    ld [$d601], a
    ld [$d604], a
    ld [$d603], a
    ld [$d633], a
    ld [$d638], a
    ld [$d635], a
    ld [$d63a], a
    ld [$d637], a
    ld [$d63c], a
    ld a, $eb
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    ld b, $80
    ld hl, $d606
    ld a, $5e
    ldh [rSB], a
    ld [hl], a
    ld a, b
    ldh [rSC], a
    ret


Call_03f_6752:
    xor a
    ldh [rSB], a
    ld [$d606], a
    ld [$d601], a
    ret


Call_03f_675c:
    ld a, $fe
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_03f_6765:
    ld a, [$d605]
    and a
    ret z

    ret


jr_03f_676b:
    dec bc
    ld a, b
    or c
    jr nz, jr_03f_676b

    ret


Call_03f_6771:
    di
    ld a, $01
    ld [$d637], a
    ld a, [$d633]
    ld l, a
    ld h, $d4
    ld b, $00
    ld de, $d62d
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    jr nz, jr_03f_6798

    jr c, jr_03f_6798

    ei
    ret


Call_03f_6798:
jr_03f_6798:
    ld a, l
    ld [$d633], a
    xor a
    ld hl, $d62d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


Call_03f_67a5:
    ld a, [$d637]
    and a
    jr z, jr_03f_67d4

    xor a
    ld [$d637], a
    ld a, [$d635]
    ld l, a
    ld h, $d4
    ld b, $00
    ld de, $d620
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    jr nz, jr_03f_67cf

    jr c, jr_03f_67cf

    ret


jr_03f_67cf:
    ld a, l
    ld [$d635], a
    ret


jr_03f_67d4:
    xor a
    ld hl, $d620
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_03f_67dc:
    ld a, $01
    ld [$d63c], a
    ld a, [$d638]
    ld l, a
    ld h, $d5
    ld b, $00
    ld de, $d611
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    jr nz, jr_03f_6801

    jr c, jr_03f_6801

    ret


jr_03f_6801:
    ld a, l
    ld [$d638], a
    ret


Call_03f_6806:
    di
    ld a, [$d63c]
    and a
    jr z, jr_03f_6838

    xor a
    ld [$d63c], a
    ld a, [$d63a]
    ld l, a
    ld h, $d5
    ld b, $00
    ld de, $d627
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    jr nz, jr_03f_6832

    jr c, jr_03f_6832

    ei
    ret


jr_03f_6832:
    ld a, l
    ld [$d63a], a
    ei
    ret


jr_03f_6838:
    xor a
    ld hl, $d627
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]

Call_03f_6860:
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc

Call_03f_6b14:
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    ld [bc], a
    inc b
    dec e
    nop
    ld [bc], a
    db $fc
    inc e
    nop
    ld [bc], a
    db $f4
    dec de
    nop
    ld a, [$1a04]
    nop
    ld a, [$19fc]
    nop
    ld a, [$18f4]
    nop
    ldh a, [c]
    db $fc
    rla
    nop
    ldh a, [c]
    db $f4
    ld d, $00
    add b
    ld [bc], a
    inc b
    dec h
    nop
    ld [bc], a
    db $fc
    inc h
    nop
    ld [bc], a
    db $f4
    inc hl
    nop
    ld a, [$2204]
    nop
    ld a, [$21fc]
    nop
    ld a, [$20f4]
    nop
    ldh a, [c]
    db $fc
    rra
    nop
    ldh a, [c]
    db $f4
    ld e, $00
    add b
    ld [bc], a
    inc b
    ld l, $00
    ld [bc], a
    db $fc
    dec l
    nop
    ld [bc], a
    db $f4
    inc l
    nop
    ld a, [$2b04]
    nop
    ld a, [$2afc]
    nop
    ld a, [$29f4]
    nop
    ldh a, [c]
    inc b
    jr z, jr_03f_6baf

jr_03f_6baf:
    ldh a, [c]
    db $fc
    daa
    nop
    ldh a, [c]
    db $f4
    ld h, $00
    add b
    ld [bc], a
    inc b
    scf
    nop
    ld [bc], a
    db $fc
    ld [hl], $00
    ld [bc], a
    db $f4
    dec [hl]
    nop
    ld a, [$3404]
    nop
    ld a, [$33fc]
    nop
    ld a, [$32f4]
    nop
    ldh a, [c]
    inc b
    ld sp, $f200
    db $fc
    jr nc, jr_03f_6bd8

jr_03f_6bd8:
    ldh a, [c]
    db $f4
    cpl
    nop
    add b
    ld [bc], a
    inc b
    ccf
    nop
    ld [bc], a
    db $fc
    ld a, $00
    ld [bc], a
    db $f4
    dec a
    nop
    ld a, [$3c04]
    nop
    ld a, [$3bfc]
    nop
    ld a, [$3af4]
    nop
    ldh a, [c]
    db $fc
    add hl, sp
    nop
    ldh a, [c]
    db $f4
    jr c, jr_03f_6bfd

jr_03f_6bfd:
    add b
    ld [bc], a
    inc b
    ld b, a
    nop
    ld [bc], a
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    db $f4
    ld b, l
    nop
    ld a, [$4404]
    nop
    ld a, [$43fc]
    nop
    ld a, [$42f4]
    nop
    ldh a, [c]
    db $fc
    ld b, c
    nop
    ldh a, [c]
    db $f4
    ld b, b
    nop
    add b
    ld [bc], a
    inc b
    ld d, b
    nop
    ld [bc], a
    db $fc
    ld c, a
    nop
    ld [bc], a
    db $f4
    ld c, [hl]
    nop
    ld a, [$4d04]
    nop
    ld a, [$4cfc]
    nop
    ld a, [$4bf4]
    nop
    ldh a, [c]
    inc b
    ld c, d
    nop
    ldh a, [c]
    db $fc
    ld c, c
    nop
    ldh a, [c]
    db $f4
    ld c, b
    nop
    add b
    ld [bc], a
    inc b
    ld e, c
    nop
    ld [bc], a
    db $fc
    ld e, b
    nop
    ld [bc], a
    db $f4
    ld d, a
    nop
    ld a, [$5604]
    nop
    ld a, [$55fc]
    nop
    ld a, [$54f4]
    nop
    ldh a, [c]
    inc b
    ld d, e
    nop
    ldh a, [c]
    db $fc
    ld d, d
    nop
    ldh a, [c]
    db $f4
    ld d, c
    nop
    add b
    ld [bc], a
    inc b
    ccf
    nop
    ld [bc], a
    db $fc
    ld a, $00
    ld [bc], a
    db $f4
    dec a
    nop
    ld a, [$3c04]
    nop
    ld a, [$3bfc]
    nop
    ld a, [$3af4]
    nop
    ldh a, [c]
    db $fc
    add hl, sp
    nop
    ldh a, [c]
    db $f4
    jr c, jr_03f_6c89

jr_03f_6c89:
    add b
    ld [bc], a
    inc b
    ld c, b
    nop
    ld [bc], a
    db $fc
    ld b, a
    nop
    ld [bc], a
    db $f4
    ld b, [hl]
    nop
    ld a, [$4504]
    nop
    ld a, [$44fc]
    nop
    ld a, [$43f4]
    nop
    ldh a, [c]
    inc b
    ld b, d
    nop
    ldh a, [c]
    db $fc
    ld b, c
    nop
    ldh a, [c]
    db $f4
    ld b, b
    nop
    add b
    ld [bc], a
    inc b
    ld d, c
    nop
    ld [bc], a
    db $fc
    ld d, b
    nop
    ld [bc], a
    db $f4
    ld c, a
    nop
    ld a, [$4e04]
    nop
    ld a, [$4dfc]
    nop
    ld a, [$4cf4]
    nop
    ldh a, [c]
    inc b
    ld c, e
    nop
    ldh a, [c]
    db $fc
    ld c, d
    nop
    ldh a, [c]
    db $f4
    ld c, c
    nop
    add b
    ld a, [$53ee]
    nop
    ld [bc], a
    ld b, $5a
    nop
    ld [bc], a
    cp $59
    nop
    ld [bc], a
    or $58
    nop
    ld [bc], a
    xor $57
    nop
    ld a, [$5606]
    nop
    ld a, [$55fe]
    nop
    ld a, [$54f6]
    nop
    ldh a, [c]
    rst $30
    ld d, d
    nop
    add b
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $fc
    ld h, d
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6004]
    nop
    ld a, [$5ffc]
    nop
    ld a, [$5ef4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    inc b
    ld h, a
    nop
    ld [bc], a
    db $fc
    ld h, [hl]
    nop
    ld [bc], a
    db $f4
    ld h, l
    nop
    ld a, [$6404]
    nop
    ld a, [$5ffc]
    nop
    ld a, [$5ef4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    inc b
    ld l, l
    nop
    ld [bc], a
    db $fc
    ld l, h
    nop
    ld [bc], a
    db $f4
    ld l, e
    nop
    ld a, [$6a04]
    nop
    ld a, [$69fc]
    nop
    ld a, [$68f4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    db $fc
    ld [hl], b
    nop
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6ffc]
    nop
    ld a, [$6ef4]
    nop
    ld a, [$6004]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    db $fc
    ld [hl], e
    nop
    ld a, [$72fc]
    nop
    ld a, [$71f4]
    nop
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6004]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    inc b
    ld [$007f], sp
    inc b
    nop
    ld a, [hl]
    nop
    inc b
    ld hl, sp+$7d
    nop
    inc b
    ldh a, [$ff7c]
    nop
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $fc
    ld hl, sp+$79
    nop
    db $fc
    ldh a, [$ff78]
    nop
    db $f4
    ld [$0077], sp
    db $f4
    nop
    halt
    nop
    db $f4
    ld hl, sp+$75
    nop
    db $f4
    ldh a, [$ff74]
    nop
    add b
    inc b
    ld [$008b], sp
    inc b
    nop
    adc d
    nop
    inc b
    ld hl, sp-$77
    nop
    inc b
    ldh a, [$ff88]
    nop
    db $fc
    ld [$0087], sp
    db $fc
    nop
    add [hl]
    nop
    db $fc
    ld hl, sp-$7b
    nop
    db $fc
    ldh a, [$ff84]
    nop
    db $f4
    ld [$0083], sp
    db $f4
    nop
    add d
    nop
    db $f4
    ld hl, sp-$7f
    nop
    db $f4
    ldh a, [$ff80]
    nop
    add b
    inc b
    ld [$0097], sp
    inc b
    nop
    sub [hl]
    nop
    inc b
    ld hl, sp-$6b
    nop
    inc b
    ldh a, [$ff94]
    nop
    db $fc
    ld [$0093], sp
    db $fc
    nop
    sub d
    nop
    db $fc
    ld hl, sp-$6f
    nop
    db $fc
    ldh a, [$ff90]
    nop
    db $f4
    ld [$008f], sp
    db $f4
    nop
    adc [hl]
    nop
    db $f4
    ld hl, sp-$73
    nop
    db $f4
    ldh a, [$ff8c]
    nop
    add b
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $4001
    ld a, $31
    ld de, $9010
    ld bc, $07f0
    call Call_000_2308
    ld hl, $47f1
    ld a, $31
    ld de, $8800
    ld bc, $0800
    call Call_000_2308
    ld hl, $c0a3
    ld a, $6c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$ccd2], a
    ld [$cb68], a
    ld a, [$b885]
    ld [$ccd3], a
    ld a, [$b884]
    ld [$ccd4], a
    ld a, [sCurrentDayCounter]
    ld [$ccd5], a
    ld a, $01
    ld [$ccd6], a
    ld a, $19
    ld [$9824], a
    ld a, $05
    ld [$9825], a
    ld a, $01
    ld [$9826], a
    ld a, $12
    ld [$9827], a
    ld a, $0d
    ld [$9844], a
    ld a, $0f
    ld [$9845], a
    ld a, $0e
    ld [$9846], a
    ld a, $14
    ld [$9847], a
    ld a, $08
    ld [$9848], a
    ld a, $04
    ld [$9864], a
    ld a, $01
    ld [$9865], a
    ld a, $19
    ld [$9866], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_03f_7116
    ld a, [$ccd3]
    ld hl, $982a
    call Call_03f_70e1
    ld a, [$ccd4]
    ld hl, $984a
    call Call_03f_70e1
    ld a, [$ccd5]
    ld hl, $986a
    call Call_03f_70e1
    xor a
    ld [$ccd2], a
    ret


    ld a, [$ccd2]
    cp $00
    call z, Call_03f_6f82
    cp $01
    call z, Call_03f_7008
    cp $02
    call z, Call_03f_7038
    cp $03
    call z, Call_03f_7068
    ld a, [$c0a8]
    and $07
    cp $07
    jr nz, jr_03f_6f2f

    ldh a, [$ff8a]
    cp $40
    jp z, Jump_03f_6f60

    ldh a, [$ff8a]
    cp $80
    jp z, Jump_03f_6f71

jr_03f_6f2f:
    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $00
    ld [$c910], a
    xor a
    ld [$c911], a
    ld a, [$ccd3]
    ld [$b885], a
    ld a, [$ccd4]
    ld [$b884], a
    ld a, [$ccd5]
    ld [sCurrentDayCounter], a
    call Call_000_07ab
    call Call_000_08b7
    ret


Jump_03f_6f60:
    ld a, [$ccd2]
    cp $00
    ret z

    ld [$ccd6], a
    dec a
    ld [$ccd2], a
    call Call_03f_7116
    ret


Jump_03f_6f71:
    ld a, [$ccd2]
    cp $03
    ret z

    ld [$ccd6], a
    inc a
    ld [$ccd2], a
    call Call_03f_7116
    ret


Call_03f_6f82:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_03f_6f8e

    cp $10
    jr z, jr_03f_6fa2

    jr jr_03f_6fb4

jr_03f_6f8e:
    ld a, [$cb68]
    cp $00
    jr z, jr_03f_6f9b

    dec a
    ld [$cb68], a
    jr jr_03f_6fb4

jr_03f_6f9b:
    ld a, $26
    ld [$cb68], a
    jr jr_03f_6fb4

jr_03f_6fa2:
    ld a, [$cb68]
    cp $26
    jr z, jr_03f_6faf

    inc a
    ld [$cb68], a
    jr jr_03f_6fb4

jr_03f_6faf:
    ld a, $00
    ld [$cb68], a

jr_03f_6fb4:
    ldh a, [$ff8b]
    and $01
    jr z, jr_03f_6ff3

    call Call_000_2527
    ld hl, $716e
    ld a, [$cb68]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $01
    jr nz, jr_03f_6fd7

    ld a, b
    call Call_000_25ce
    jr jr_03f_6ff3

jr_03f_6fd7:
    cp $02
    jr nz, jr_03f_6fe1

    ld a, b
    call Call_000_25cb
    jr jr_03f_6ff3

jr_03f_6fe1:
    cp $03
    jr nz, jr_03f_6feb

    ld a, b
    call Call_000_25c8
    jr jr_03f_6ff3

jr_03f_6feb:
    cp $04
    jr nz, jr_03f_6ff3

    ld a, b
    call Call_000_25c5

jr_03f_6ff3:
    ld hl, $716e
    ld a, [$cb68]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

Call_03f_7000:
    ld a, [hl+]
    ld hl, $980a
    call Call_03f_70b0
    ret


Call_03f_7008:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_03f_7014

    cp $10
    jr z, jr_03f_7021

    jr jr_03f_702c

jr_03f_7014:
    ld a, [$ccd3]
    cp $00
    jr z, jr_03f_7035

    dec a
    ld [$ccd3], a
    jr jr_03f_702c

jr_03f_7021:
    ld a, [$ccd3]
    cp $63
    jr z, jr_03f_7035

    inc a
    ld [$ccd3], a

jr_03f_702c:
    ld a, [$ccd3]
    ld hl, $982a
    call Call_03f_70e1

jr_03f_7035:
    ld a, $63
    ret


Call_03f_7038:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_03f_7044

    cp $10
    jr z, jr_03f_7051

    jr jr_03f_705c

jr_03f_7044:
    ld a, [$ccd4]
    cp $00
    jr z, jr_03f_7065

    dec a
    ld [$ccd4], a
    jr jr_03f_705c

jr_03f_7051:
    ld a, [$ccd4]
    cp $03
    jr z, jr_03f_7065

    inc a
    ld [$ccd4], a

jr_03f_705c:
    ld a, [$ccd4]
    ld hl, $984a
    call Call_03f_70e1

jr_03f_7065:
    ld a, $63
    ret


Call_03f_7068:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_03f_7074

    cp $10
    jr z, jr_03f_7081

    jr jr_03f_708c

jr_03f_7074:
    ld a, [$ccd5]
    cp $00
    jr z, jr_03f_7095

    dec a
    ld [$ccd5], a
    jr jr_03f_708c

jr_03f_7081:
    ld a, [$ccd5]
    cp $1d
    jr z, jr_03f_7095

    inc a
    ld [$ccd5], a

jr_03f_708c:
    ld a, [$ccd5]
    ld hl, $986a
    call Call_03f_70e1

jr_03f_7095:
    ld a, $63
    ret


    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03f_70d0

    inc l
    dec l
    ld l, $2f
    jr nc, @+$3d

    inc a
    dec a
    ld a, $3f
    ld b, b

Call_03f_70b0:
    push hl
    ld b, a
    srl a
    srl a
    srl a
    srl a
    ld hl, $7098
    add l
    ld l, a
    ld a, $00
    adc h

Jump_03f_70c2:
    ld h, a
    ld a, [hl]
    ldh [$ffae], a
    ld a, b
    and $0f
    ld hl, $7098
    add l
    ld l, a
    ld a, $00

jr_03f_70d0:
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ffaf], a
    ld a, $ff
    ldh [$ffb0], a
    pop hl
    ld de, $ffae
    call Call_000_0a93
    ret


Call_03f_70e1:
    ld b, a
    ld a, [$ccd2]
    cp $04
    jr nc, jr_03f_70ea

    inc b

jr_03f_70ea:
    ld a, b
    push hl
    ld h, $00
    ld l, a
    call Call_000_325c
    pop hl
    ld a, [$ccd0]
    cp $af
    jr nz, jr_03f_70ff

    ld a, $ff
    ld [$ccd0], a

jr_03f_70ff:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_70ff

    ld a, [$ccd0]
    inc a
    ld [hl+], a

jr_03f_710a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_710a

    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_03f_7116:
    ld a, [$ccd2]
    cp $12
    jr nc, jr_03f_712b

    ld a, [$ccd2]
    ld c, $20
    call Multiply8Bit
    ld bc, $9800
    add hl, bc
    jr jr_03f_7139

jr_03f_712b:
    ld a, [$ccd2]
    sub $12
    ld c, $20
    call Multiply8Bit
    ld bc, $988a
    add hl, bc

jr_03f_7139:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_7139

    ld a, $7e
    ld [hl], a
    ld a, [$ccd6]
    cp $12
    jr nc, jr_03f_7157

    ld a, [$ccd6]
    ld c, $20
    call Multiply8Bit
    ld bc, $9800
    add hl, bc
    jr jr_03f_7165

jr_03f_7157:
    ld a, [$ccd6]
    sub $12
    ld c, $20
    call Multiply8Bit
    ld bc, $988a
    add hl, bc

jr_03f_7165:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_7165

    xor a
    ld [hl], a
    ret


    nop
    inc b
    inc b
    inc b
    ld [$0b03], sp
    inc bc
    rrca
    inc b
    inc de
    inc b
    rla
    inc b
    dec de
    inc bc
    ld e, $04
    ld [hl+], a
    inc b
    ld h, $04
    ld a, [hl+]
    inc b
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0133
    inc [hl]
    ld bc, $0135
    ld [hl], $01
    scf
    ld bc, $0238
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $013d
    ld a, $01
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0242
    ld b, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld c, b
    ld bc, $044d
    ld d, c
    ld [bc], a
    ld d, e
    ld bc, $0454
    ld d, h
    inc b

jr_03f_71be:
    ldh a, [rLY]
    cp $67
    jr z, jr_03f_71c8

    jr nc, jr_03f_71db

    jr jr_03f_71be

jr_03f_71c8:
    ldh a, [rLCDC]
    bit 5, a
    jr z, jr_03f_71da

jr_03f_71ce:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_71ce

    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a

jr_03f_71da:
    ret


jr_03f_71db:
    ret


    ldh a, [rLY]
    cp $8f
    jr z, jr_03f_71e5

    ret nc

    jr jr_03f_71db

jr_03f_71e5:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03f_71e5

    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, $66
    ldh [rLYC], a
    ret


    nop
    db $10
    call nz, $012f
    ld c, e
    nop
    rst $38
    inc e
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, h
    ld b, h
    ccf
    nop
    nop
    ld de, $4411
    ld b, h
    ld b, c
    nop
    dec c
    ld [bc], a
    rst $28
    xor d
    xor d
    ld d, l
    ld d, l
    ld b, l
    nop
    cp e
    cp e
    xor $bd
    xor $0d
    inc b
    cp e
    cp e
    rst $38
    rst $38
    ld l, l
    ld bc, $3bbb
    rst $38
    xor $40
    nop

jr_03f_722b:
    ld d, l
    rst $38
    xor d
    ld b, b
    nop
    ld c, $07
    ld a, [$0022]
    inc bc
    add b
    nop
    ld a, $f1
    ld hl, sp+$07
    jr nc, jr_03f_722b

    rst $08
    rlca
    add hl, bc
    ldh a, [$fff0]
    pop hl
    inc c
    rrca
    ld hl, sp+$1f
    rst $38
    ldh a, [$ff74]
    set 0, b
    ccf
    ld [hl], b
    rst $28
    nop

jr_03f_7251:
    rst $38
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp-$08
    ld hl, sp-$10

jr_03f_725a:
    rst $38
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    ldh [$ffe0], a
    rlca
    db $fd
    rlca
    pop hl
    inc c
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld a, [hl]
    ld h, c
    nop
    jr nz, jr_03f_7251

    nop
    rst $38
    ldh a, [$ff7f]
    ld b, d
    inc bc
    ei
    rrca
    ld a, a
    add b
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    adc h
    ld [hl], a
    rra
    ldh [$ff82], a
    ld a, l

jr_03f_728a:
    ld [$f7ff], sp
    ld bc, $03fe
    db $fc
    jr c, jr_03f_728a

    add c
    rst $00
    ld a, [hl]
    rlca
    rlca
    ld b, c
    ld [de], a
    jp Jump_000_2105


    ld b, $27
    ld hl, sp-$01
    pop hl
    ld e, $78
    add a
    ldh a, [rIF]

jr_03f_72a7:
    ret nz

    ccf
    rst $38
    add e
    ld a, h
    ld b, $f9
    adc b
    ld [hl], a
    ldh [$ffe0], a
    cp $4b
    inc d
    ld hl, sp+$07
    add c
    ld a, [hl]
    rra
    ldh [rNR23], a
    ccf
    rst $20
    jr jr_03f_72a7

    db $10
    rst $28
    db $10
    ld b, b
    ld [$162d], sp
    ld a, e
    ld b, b
    cp a
    and c
    dec b
    rlca
    ld hl, sp+$0c
    di
    add c
    ld [$82fb], sp
    ld a, l
    dec hl
    jr jr_03f_725a

    add d
    dec b
    ld a, [$df83]
    ld a, h
    add d
    ld a, l
    ld bc, $83fe
    ld c, $04
    ei
    cp $2b
    ld a, [de]
    inc b
    inc b
    and b
    ld e, a
    ld b, b
    cp a
    add b
    rst $38

jr_03f_72f1:
    ld a, a
    ld b, b

jr_03f_72f3:
    cp a
    nop
    rst $38
    adc b
    ld [hl], a
    jr jr_03f_72f1

    rst $20
    inc d
    db $e3
    daa
    inc e
    ld [$1808], sp
    jr jr_03f_72f3

    inc e
    inc e
    inc bc
    db $fc
    inc hl
    ld [de], a
    nop
    rst $38
    ld de, $eedf
    cp a
    ld b, c
    rst $28
    inc b
    daa
    ld e, $11
    ld de, $beff
    cp a
    ei
    rst $38
    inc d
    db $eb
    ld [$fff7], sp
    db $10
    rst $28
    ld [bc], a
    db $fd
    add l
    ld a, b
    ld l, e
    ld [de], a
    rst $20
    ld a, d
    ld [$a05d], sp
    dec de
    ld b, c
    jr nz, jr_03f_7334

    ld [bc], a
    add a

jr_03f_7334:
    rst $08
    add a
    db $ed
    rst $28
    rst $30
    and b
    rla
    inc bc
    ld d, $05
    ld a, [$1dff]

jr_03f_7341:
    ldh [c], a
    xor [hl]
    ld c, b
    rst $30
    nop
    db $dd
    add b
    ld a, [hl]
    inc hl
    ld [hl+], a
    dec b
    dec b
    dec e
    dec e
    or a
    cp a
    nop
    ld [de], a
    rst $38
    rst $38
    ld b, l
    jr c, jr_03f_7341

    ld d, c
    dec a
    nop
    xor d
    cp a
    jr nz, jr_03f_73b6

    inc b
    cp d
    nop
    ld [hl], l
    ret nc

    jr @-$37

    rst $38
    rst $00
    xor [hl]
    rst $28
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    cp $94
    ld hl, $639c
    rst $28
    ld [$00d4], sp
    rst $38
    rst $18
    ld b, d
    ld d, [hl]
    nop
    rst $38
    sub b
    pop de
    ld a, [de]
    sbc h
    sbc h
    push de
    rst $30
    jr nc, jr_03f_73aa

    cp l
    ld [hl], b
    inc hl
    ld l, a
    or d
    inc hl
    db $ed
    ld [$aa5f], sp
    nop
    sub a
    nop
    halt
    ld d, l
    ld a, [bc]
    nop
    pop hl
    ld bc, $49fe
    dec h
    ld e, d
    ld d, b
    and d
    jr nz, jr_03f_7411

    ld a, [bc]
    add $a8
    ld [hl], b
    ld e, $f0
    add hl, de
    ret nc

jr_03f_73aa:
    ld e, $af
    ret nz

    dec b
    push af
    ld e, b
    daa
    rst $10
    rst $38
    ld [bc], a
    cp e
    add b

jr_03f_73b6:
    xor l
    inc b
    rst $30
    nop
    db $fd
    ldh [c], a
    ld [hl], h
    ld c, $fd
    ld b, b
    add hl, bc
    push bc
    rlca
    pop bc
    add hl, hl
    ld [hl], $12
    db $ec
    cp a
    nop
    rst $10
    nop
    ld [$f700], a
    sub d
    ld [hl+], a
    cp l
    db $db
    nop
    db $ed
    rra
    inc h
    nop
    db $dd
    nop
    ld [bc], a
    ld d, l
    nop
    cp c
    xor d
    rrca
    dec l
    ret nc

    dec l
    ld [hl], a
    nop
    xor e
    jp nz, Jump_03f_5501

    inc l
    rrca
    cpl
    inc bc
    ld [$ee00], sp
    jp nz, $4003

    rrca
    ld [bc], a
    or d
    ld sp, $f6e7
    nop
    cp e
    add $05
    rrca
    ld [bc], a
    rst $38
    rst $38
    push de
    ldh [$ffc8], a
    dec b
    rrca
    ld [bc], a
    ld bc, $0f06
    ld [bc], a
    ld c, c
    scf
    dec c
    ldh a, [c]
    add hl, de
    rst $38

jr_03f_7411:
    and $23
    call c, $974b
    sub [hl]
    dec hl
    dec [hl]
    rra
    ld c, e
    adc a
    ld a, a
    xor [hl]
    inc de
    inc hl
    inc a
    ld d, b
    dec l
    ld [hl], h
    rra
    rst $38
    call nz, $873f
    ld a, b
    dec c
    ldh a, [c]
    ld a, [bc]
    push af
    rst $38
    sub l
    ld [$fd42], a
    push bc
    ld a, [$f54a]
    adc h
    inc bc
    inc l
    add b
    cpl
    nop
    ret nz

    ld [hl+], a
    nop
    rra
    nop
    ld c, e
    nop
    inc bc
    ld a, a
    rst $38
    sub a
    ld c, c
    inc bc
    rst $38
    xor [hl]
    inc de
    add l
    nop
    db $fc
    add l
    ld a, [de]
    dec b
    dec de
    call nc, Call_03f_49eb
    and $c1
    rst $38
    rst $38
    ld c, d
    push af
    push bc
    ld [$f74a], a
    push bc
    ld [$48e3], a
    rst $30
    ld h, e
    ld a, [de]
    ld h, a
    ld [bc], a
    ld bc, $c03a
    rst $38
    ld b, b
    ld c, h
    jr nz, jr_03f_7472

jr_03f_7472:
    ld h, c
    nop
    ld e, h
    and e
    add l
    rlca
    db $e3
    rlca
    db $fc
    ld b, $06
    rst $10
    ld bc, $96ff
    add b
    ld b, $ec
    ld c, $06
    call nz, $ffeb
    ld b, c
    cp $c2
    db $ed
    pop bc
    cp $d5
    ld [$cbbf], a
    cp $d3
    xor $e7
    sbc $0c
    ld [$ff20], sp
    xor [hl]
    ld d, c
    ld d, a
    adc b
    adc e
    inc b
    inc b
    inc bc
    rst $38
    inc bc
    nop
    ld [hl], c
    nop
    ld [hl], c
    jr nc, @+$73

jr_03f_74ac:
    jr nc, jr_03f_74ac

    dec c

jr_03f_74af:
    ld a, [bc]
    scf
    ldh a, [$ff1f]
    db $fc
    xor a
    ld a, [hl]
    rra
    rst $38
    rst $38
    rst $08
    ccf
    add hl, sp
    add $3d
    jp nc, $57f1

    ld e, $ef
    rra
    ret nc

    ld b, d
    ld bc, $4372
    ld bc, $0021
    ld a, a
    rlca
    rst $38
    sbc c
    ld h, a
    rst $00
    ccf
    ld e, a
    ld h, $1a
    ldh a, [c]
    db $10
    ld b, l
    add b
    sub b
    ld b, d
    ld [hl], a
    ld c, l
    ret nz

    push af
    add b
    ei
    cp c
    nop
    ld h, c
    ld a, [de]
    inc b
    jr jr_03f_7527

    rst $38
    ld a, [hl]
    ld c, c
    ld c, a
    ld [hl], c
    adc a
    jr nc, jr_03f_74af

jr_03f_74f1:
    ld [hl], c
    rst $38
    jr z, jr_03f_750f

    ld [de], a
    ld c, c
    ld e, b
    ld d, c
    rrca
    xor a
    ldh a, [rIE]
    nop
    ld a, [$25e0]
    ld [bc], a
    dec b
    inc e
    rrca

jr_03f_7505:
    ld hl, sp+$0f
    ld d, e
    rrca
    ld d, l
    ld [$1502], sp
    nop
    ld a, [hl+]

jr_03f_750f:
    ld [$fd10], sp
    nop
    ld hl, $1d00
    nop
    jr nz, jr_03f_7528

    jr nz, jr_03f_7505

    ld [$4c60], a
    ldh [rNR50], a
    nop
    ret nz

    ld hl, $784d
    ld b, b
    sub b

jr_03f_7527:
    rst $38

jr_03f_7528:
    ld b, e
    jr nz, jr_03f_752f

    inc hl
    db $10
    daa
    nop

jr_03f_752f:
    rst $30
    rst $18
    dec b
    ld [hl-], a
    sub b
    ld [hl+], a
    add b
    dec e
    ld a, [de]
    ret nz

    ld b, b
    rst $38
    jr nz, jr_03f_753d

jr_03f_753d:
    db $10
    sub b
    ld [$c800], sp
    adc b
    rst $38
    inc b
    inc b
    ld a, [bc]
    db $10
    ld a, [bc]
    ccf
    rst $38
    rra
    ldh a, [c]
    jr nc, jr_03f_7557

    rlca
    jr nz, jr_03f_7552

jr_03f_7552:
    ld [hl], c
    db $10
    ld bc, $80ff

jr_03f_7557:
    ld a, d
    rst $38
    ld [$0825], sp
    db $10
    add b
    db $10
    jr nz, jr_03f_74f1

    ld a, a
    nop
    cp [hl]
    add b
    jr nc, @+$29

    db $10
    dec b
    dec e
    ld e, $f7
    and b
    nop
    ld d, b
    jr nz, jr_03f_7575

    jr nz, @+$03

    jr nz, jr_03f_757c

jr_03f_7575:
    cp a
    ldh [rIF], a
    inc de
    rst $18
    rrca
    ld e, a

jr_03f_757c:
    db $10
    inc c

jr_03f_757e:
    rra
    cp $40
    inc b
    ld e, $fe
    jr jr_03f_757e

    inc bc
    di
    rrca
    dec a
    rst $28
    inc hl
    inc hl
    ld a, $01
    rst $38
    jr nc, jr_03f_75c6

    add hl, bc
    ld d, e
    inc de
    rst $28
    ret nz

    jr nc, jr_03f_75c9

    ldh [rNR10], a
    nop
    ret nz

    ret nz

    rrca
    rst $38
    stop
    rrca
    rlca
    nop
    add hl, de
    ldh [rTAC], a
    rst $38
    ld hl, sp-$7f
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ldh [$fffb], a
    rst $38
    ldh a, [rWave_0]
    ld h, e
    rra
    rra
    rlca
    rlca
    ld bc, $01fd
    pop hl
    ld h, $a1
    ld b, d
    ld c, [hl]
    sub c
    add c
    ld a, [hl]
    rst $30

jr_03f_75c6:
    rst $38
    nop
    ccf

jr_03f_75c9:
    nop
    add hl, hl
    ldh a, [rP1]
    ld a, b
    add b
    ldh a, [c]
    ld bc, $815d
    ld d, [hl]
    ld h, l
    add b
    ld e, b
    dec e
    sub l
    ld a, [bc]
    ld c, $d3
    ldh a, [$fffc]
    ret nz

    ld bc, $1215
    dec b
    ld a, [hl-]
    inc d
    rla
    ld [$c8ff], sp
    daa
    rlca
    ld hl, sp-$03
    nop
    pop af
    nop
    cp a
    inc bc
    ld bc, $4143
    sub a
    inc bc
    ld bc, $0761
    ei
    rst $38
    cp $10
    nop
    db $fd
    db $fd
    cp l
    db $fd
    ei
    ld e, a
    ei
    rst $38
    rra
    ld a, a
    or a
    or b
    ld b, [hl]
    rst $28
    jr nc, @+$4b

    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rra
    rst $18
    scf
    cp a
    or a
    ld l, a
    ld l, a
    rst $28
    rst $28
    rst $18
    stop
    sbc a
    db $fc
    stop
    ld d, d
    inc d
    add b
    rst $38
    add b
    ld hl, sp-$79
    ret nz

    cp a
    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    ret nz

    stop
    add b
    ld l, [hl]
    stop
    add a
    add b
    ccf
    ld h, b
    inc [hl]
    ld a, a
    ld bc, $0b20
    db $fd
    rra
    ld hl, $0400
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, c
    cp $42
    dec bc
    ld h, c
    ld [hl-], a
    db $fc
    inc b
    cp $02
    jr nz, jr_03f_7659

jr_03f_7659:
    rst $18
    cp $3c
    ret nz

    ld a, $c0
    ld [de], a
    ld [bc], a
    ldh [rIF], a
    ld d, l
    ldh a, [rNR42]
    nop
    ccf
    stop
    rra
    ld [de], a
    nop
    rrca
    ld [de], a
    nop
    ld e, a
    inc d
    db $10
    and l
    add h
    dec bc
    and b
    ld c, $80
    inc h
    scf
    rst $18
    rst $28
    rst $38
    ld a, e
    rst $38
    cp $58
    ld [hl], e
    rst $08
    adc e
    rst $38
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld e, a
    ld d, [hl]
    cp e
    xor a
    and [hl]
    ld b, b
    nop
    and h
    ld [hl], e
    ei
    ld de, $f700
    rst $38
    rst $30
    and [hl]
    or $56
    or $a6
    or $54
    db $fd
    db $f4
    ld b, b
    dec bc
    inc e
    cp [hl]
    ld e, c
    cp [hl]
    ld d, c
    ld a, $ff
    pop bc
    ld a, $c1
    inc [hl]
    jp z, $e618

    sbc a
    rst $38
    sbc a
    inc e
    inc e
    jr @+$1a

    db $10
    db $10
    ld bc, $00ff
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    jr @-$60

    rst $38
    ld h, c
    ldh [$ff1f], a
    add b
    ld a, a
    ld bc, $3afe
    rst $38
    call nz, $04c0
    inc b
    nop
    ld l, b
    db $10
    ld a, [hl]
    rst $38
    ld e, $e0
    ldh [rSVBK], a
    nop
    adc c
    ld bc, $793f
    ld a, [hl-]
    ldh a, [$ff6e]
    inc b
    jr c, jr_03f_76e9

jr_03f_76e9:
    rst $38
    ei
    inc b
    or b
    ld h, d
    rrca
    nop
    ld bc, $0200
    ld b, b
    rla
    ld h, b
    nop
    db $10
    ld bc, $5705
    ei
    rlca
    ld hl, sp+$21
    nop
    add a
    ld a, b
    ld l, a
    db $10
    rlca
    rst $28
    ld [$816a], sp
    ld de, $7160
    rst $00
    rlca
    daa
    rst $20
    rlca
    sub a
    add a
    ldh a, [$ff59]
    ld d, c
    ld [hl], l
    nop
    push de
    dec d
    rst $38
    ld [$e10a], a
    dec e
    ldh [$ff1f], a
    ld hl, sp+$1f

jr_03f_7723:
    ld a, a
    cp $0f
    rst $38
    rrca
    ccf
    rst $08
    ld [$57e0], a
    db $eb
    cp $e3
    ld [hl-], a
    jr z, jr_03f_7723

    or b
    inc e
    jr nc, jr_03f_7795

    ld d, l
    rst $38
    xor [hl]
    and l
    ld e, l
    ld d, [hl]
    xor d
    and l
    ld d, h
    ld e, e
    rst $38
    cp b
    and a
    ld l, b
    ld d, a
    call z, $a4f3
    db $f4
    rst $38
    ld d, h
    db $f4
    and l
    push af
    ld d, e
    ldh a, [c]
    and a
    db $f4
    rst $38
    ld c, a
    add sp, -$71
    ret z

    ld c, a
    call z, $9862
    ld a, a
    adc b
    ld [hl], b
    ld bc, $10f0
    pop hl
    nop
    jr nz, jr_03f_7766

jr_03f_7766:
    ccf
    ld hl, $01c0
    ret nz

    ld a, a
    ld h, b
    nop

jr_03f_776e:
    ld [hl], $48
    ld b, h
    rst $38
    add h

jr_03f_7773:
    ld a, b
    ld b, b
    cp h

jr_03f_7776:
    nop
    db $fc
    sub b
    ld l, h
    rst $08
    jr @-$1a

    jr jr_03f_7773

    ld hl, $1000
    ld a, l
    jr nc, @+$01

    cp c
    ld h, b
    ldh a, [c]
    ld b, d
    pop af
    dec l
    ldh [rP1], a
    inc bc
    sub b
    dec e
    ld [bc], a
    jp z, RST_20

    inc bc

jr_03f_7795:
    ld [hl+], a
    nop
    ld [bc], a
    ld a, [bc]
    ld c, b
    ldh [rP1], a
    jr nz, jr_03f_776e

    rst $38
    ld [$10f0], sp
    add sp, -$80
    ld a, b
    add b
    ld a, b
    cp a
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    add b
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld h, b
    di
    rst $38
    jr nz, jr_03f_7795

    jr z, jr_03f_77db

    nop
    rra
    rst $28
    adc a
    ld a, a
    rst $38
    ld c, a
    ccf
    ld l, d
    ld e, $45
    ccf
    ld b, [hl]
    ccf
    cp a
    di
    rrca
    ret


    inc bc
    rst $38
    db $10
    ld h, d
    ld h, d
    inc bc
    db $fd
    cp $43
    ld b, b
    inc b
    rst $18
    and b
    cp b
    ld b, b
    ld a, e
    xor a
    add b

jr_03f_77db:
    ldh a, [$ff03]
    db $f4
    jr nz, jr_03f_77e0

jr_03f_77e0:
    ldh a, [c]
    jr nz, jr_03f_780b

    sbc a
    rst $18
    sbc b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld [hl], $36
    ldh [rP1], a
    rst $38
    ret nz

    add b
    ld b, b
    ld h, b
    nop
    jr nz, jr_03f_7776

    jr nz, @+$81

    add b
    db $10
    add b
    sub b
    ld b, b
    sub c
    ld h, b
    dec c
    ld d, b
    rst $28
    jr @-$1a

    db $10
    db $ec
    ret nc

    jr nz, jr_03f_7881

    sbc b
    ld h, b

jr_03f_780b:
    push bc
    nop
    or b
    ld [hl-], a
    ld d, e
    ld d, c
    add [hl]
    ld [hl], c
    add hl, sp
    add [hl]
    ld [bc], a
    ld bc, $fe02
    sub b
    ld a, [de]
    ld hl, $6011
    db $10
    jr nz, jr_03f_7821

jr_03f_7821:
    nop
    ld c, a
    rra
    nop
    ldh [rTMA], a
    ld h, e
    ld c, e
    ld b, $02
    ld b, $50
    cpl
    rst $38
    ldh [rP1], a
    ldh [$ff91], a
    ld h, b
    ld bc, $5100
    adc a
    nop
    dec hl
    nop
    sub l
    pop hl
    rrca
    rst $20
    ld bc, $8dd0
    and h
    rst $38
    ld bc, $6296
    sub l
    ld h, c
    sub [hl]
    ld h, d
    ld h, l
    rst $38
    add c
    ld h, $82
    adc l
    dec b
    ld a, [de]
    ld a, [bc]
    rst $38
    push af
    ld [bc], a
    ret nz

    dec bc
    inc bc
    ld b, e
    nop
    ld a, [$f507]
    rrca
    rst $38
    ret c

    ld de, $28ac
    ld a, a
    ld a, b
    ld a, [$ffea]
    db $eb
    ld b, b
    or a
    and d
    ld e, l
    ld e, l
    xor d
    xor d
    rst $38
    rst $28
    pop af
    rst $10
    ld hl, sp-$79
    db $fc
    dec d
    rst $38
    rst $18
    cp a
    rst $38
    ld e, l
    rst $38
    and d

jr_03f_7881:
    ld b, b
    sub e
    ld c, d
    nop
    rst $38
    ld [$08e0], sp
    nop
    ld hl, sp+$00
    db $f4
    ld [hl], b
    db $d3
    db $eb
    add sp, -$5f
    sub a
    db $10
    sub e
    ldh [rHDMA1], a
    sub e
    adc a
    ld hl, sp-$05
    rla
    db $fc
    ld bc, $8495
    ld bc, $0700
    nop
    rst $28
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ldh a, [rWave_8]
    ldh [rP1], a
    sbc [hl]
    ld sp, hl
    ldh [$ffc3], a
    ld d, c
    db $e4
    ld de, $7f00
    add b
    nop
    ei
    rst $38
    nop
    add a
    ld a, b
    inc bc
    db $fc
    ld bc, $0279
    ld a, a
    add d
    ld c, h
    ld c, b
    jr nc, jr_03f_78cf

    nop
    rst $38
    ret nz

    ld [hl+], a
    db $f4
    ldh a, [rP1]

jr_03f_78cf:
    ldh [$ff90], a
    rst $08
    jp nz, $0156

    add b
    ld bc, $fd80
    add c
    add b
    dec h
    inc c
    inc bc
    inc [hl]
    ld bc, $39c2
    ei
    ld [bc], a
    push de
    rlca
    ld h, d
    pop af
    ld c, $f9
    ld b, $d5
    rst $38
    ld a, [hl+]
    dec [hl]
    dec d
    ret nz

    ccf
    ld bc, $02e5
    rst $38
    adc [hl]
    dec b
    ld [hl], l
    ld a, [hl+]
    xor d
    dec d
    push de
    ld a, [bc]
    rst $38
    ld a, [$1fea]
    rst $38
    nop
    and $1b
    adc l
    rst $38
    ld [hl], e
    ld a, d
    adc a
    push de
    ld a, a
    ld [$f53f], a
    pop bc
    rrca
    rst $20
    and b
    and c
    and c
    nop
    and d
    add h
    sbc [hl]
    add e
    nop
    nop
    rst $38
    rst $38
    ld d, l
    ld b, l
    ld hl, sp-$5d
    or b
    rra
    add sp, -$41
    rst $18
    ld d, b
    ld e, a
    cp e
    cp a
    db $fd
    add b
    and b
    cp d
    rst $38
    rst $38
    ld e, h
    db $fc
    db $e3
    di
    ld c, a
    rst $28
    or a
    rst $30
    rst $38
    ld e, e
    ei
    dec e
    db $fd
    ld a, $fe
    ld bc, $bffe
    add b
    db $e3
    ld b, [hl]
    ldh a, [$ffc3]
    ld hl, sp-$80
    ld b, l
    db $fc
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ld a, a
    nop
    db $e3
    sbc h
    rst $38
    ldh a, [$ffcf]
    ld hl, sp-$39
    rst $18
    ret nz

    call z, $fdc3
    jp $3cd0


    ld hl, sp+$07
    inc bc
    ld hl, sp+$0c
    pop hl
    rst $38
    add b
    inc e
    rrca
    ldh [$fffe], a
    nop
    nop
    add c
    db $fd
    ld bc, $5710
    ld hl, sp+$07
    pop hl
    ld e, $1c
    db $e3
    ei
    ldh [$ff1f], a
    add b
    ld b, [hl]
    ld a, [hl]
    rst $38
    ld bc, $3388
    rst $38
    nop
    ld c, a
    jr nz, jr_03f_79aa

    ret z

    rra
    sbc l
    ccf
    rst $38
    ld a, $7f
    ld e, [hl]
    rst $38
    ld c, a
    rst $38
    inc sp
    call z, $4eff
    or b
    db $10
    ldh [rNR10], a
    ldh [rNR42], a
    pop bc
    ei
    ld b, b
    add b
    ld b, b
    dec sp
    add b
    ld bc, $201d

jr_03f_79aa:
    adc [hl]
    rst $30
    ld de, $00c7
    ldh [$ff99], a
    rst $00
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld h, e
    rst $38
    ld e, $e3
    adc a
    ld [hl], c
    ld b, [hl]
    add hl, sp
    rst $38
    inc sp
    inc c
    rrca
    nop
    ret nz

    rst $00
    ld [hl], b
    ld [hl], a
    rst $38
    ld a, b
    ld a, e
    db $fd
    db $fd
    db $db
    db $db
    ld a, [$fff0]
    rst $30
    or $df
    rst $18
    ld [hl], l
    ld [hl], l
    rst $18
    rst $18
    ld e, a
    db $fd
    db $fd
    ld [bc], a
    rst $38
    ld h, $20
    ld d, [hl]
    add hl, bc
    jr nc, jr_03f_7a0c

    rst $30
    adc d
    rst $38
    ld hl, $a980
    db $e4
    rst $38
    db $e4
    ld a, a
    rst $38
    call nz, $567f
    ld a, a
    jp nc, Jump_03f_52ff

    ld a, a
    db $fd
    inc hl
    add b
    ld [hl], b
    inc a
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    rst $30
    cp $fe
    ld a, [hl]
    jr nc, jr_03f_7a51

    cpl
    cpl
    rst $08
    rst $08
    rst $30

jr_03f_7a0c:
    ld b, c
    rst $38
    ld b, e
    ld [hl+], a
    nop
    add e
    rst $38
    xor d
    rst $18
    adc a
    call nc, $b4af
    rst $08
    nop
    ld a, [hl-]
    ld [de], a
    nop
    and b
    ld a, b
    db $10
    ld a, a
    jr nz, jr_03f_7a4c

    nop
    ld c, b
    ld b, $ff
    ld [$0020], sp
    rst $30
    rst $38
    rst $38
    ld hl, sp-$5e
    xor [hl]
    rra
    rst $38
    rst $30
    rst $30
    halt
    ld de, $f842
    ld hl, sp-$5b
    ld a, d
    ld b, a
    rst $38
    db $e3
    ld h, b
    rrca
    ld a, a
    push hl
    ei
    ld a, [de]
    push af
    ld d, $f9
    add hl, de
    ld [hl], b
    ld c, [hl]
    ei

jr_03f_7a4c:
    add b
    add b
    ld hl, $004c

jr_03f_7a51:
    ld [bc], a
    inc b
    dec b
    nop
    rst $38
    add hl, bc
    nop
    ld b, $00
    nop
    ld h, e
    rst $38
    halt
    cp a
    cp $a7
    rst $38
    and e
    ei
    and a
    jr nz, jr_03f_7a6d

    add c
    rst $38
    rst $38
    and c
    rst $38
    ld a, b

jr_03f_7a6d:
    ld a, e
    ld [hl], c
    ld [hl], a
    jr nc, @+$01

    scf
    inc [hl]
    scf
    jr nc, jr_03f_7aae

    nop
    inc bc
    inc c
    rst $38
    dec c
    inc a
    dec a
    rst $30
    rst $30
    cp [hl]
    cp a
    xor $ff
    rst $28
    ld a, d
    dec sp
    cp $d7
    rst $38
    dec sp
    cp e
    xor a
    sub d
    rst $38
    ld a, [hl]
    add hl, bc
    nop
    add hl, bc
    inc de
    ret nz

    ld c, $ab
    rst $38
    rst $38
    push de
    rst $38
    ld l, l
    cp $81
    cp $12
    rst $28
    rst $38
    inc b
    rst $38
    add hl, de
    ld b, d
    ld d, l
    jp $f0ff


    rst $38
    ccf
    ld a, h
    inc bc

jr_03f_7aae:
    di
    di

jr_03f_7ab0:
    db $fc
    db $fc
    rst $18
    rst $30
    rst $18
    ldh [$ffe0], a

jr_03f_7ab7:
    ld [hl+], a
    or [hl]
    jr nc, jr_03f_7ab7

    nop
    adc a
    rst $38
    rst $38
    ld a, [$87ff]
    rst $38
    add d
    rst $38
    ld b, c
    ld a, [de]
    ret nz

    inc de
    ld [hl], b
    jr nz, jr_03f_7acc

jr_03f_7acc:
    nop
    jr nc, jr_03f_7ab0

    and c
    ld h, e
    or h
    and d
    or d
    rst $38
    rst $38
    ld sp, $c8ff
    rst $38
    ld b, $ff
    pop bc
    rst $28
    rst $38
    ld h, [hl]
    rst $38
    sbc b
    nop
    and e
    nop
    nop
    ccf
    rst $30
    ccf
    ld hl, sp-$08
    pop bc
    or a
    ld h, a
    ld h, a
    ld e, $1e
    ld e, a
    nop
    nop
    rla
    rst $38
    ret nc

    add b
    inc bc
    ld [hl], $00
    and e
    sbc a
    ccf
    rst $38
    db $fd
    rst $38
    or $00
    ld [hl], c
    pop hl
    cp c
    or $ff
    or $f8
    ld hl, sp-$20
    ldh [rSB], a
    ld bc, rTMA
    ld b, $a9
    rst $38
    or c
    rst $38
    ld d, e
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    jp $e15f


    rst $18
    pop hl
    rst $38
    rst $38
    pop bc
    jr c, jr_03f_7b5f

    inc [hl]
    dec [hl]
    jr jr_03f_7b45

    inc b
    rst $38
    inc bc
    inc a
    inc bc
    ld e, [hl]

jr_03f_7b30:
    ld b, c
    sbc $c1
    ld a, $ff
    ld bc, $dedf
    ld a, d
    ld a, b
    xor $ec
    cp $ff
    db $fc
    or [hl]
    or h
    rst $38
    ldh [$ffe3], a
    ret nz

jr_03f_7b45:
    jp nz, $81ff

    ld hl, $87fe
    db $fc
    inc de
    db $fc
    inc bc
    rst $38
    db $fc
    ld c, e
    db $fc
    rra
    ldh [rWave_f], a
    ret nz

    ld a, a
    rst $38
    add b
    ccf
    ld bc, $011f
    dec e

jr_03f_7b5f:
    ld bc, $ff1f
    inc bc
    rra
    inc bc
    ld a, $87
    jr c, jr_03f_7b30

    ld d, $d1
    rst $28
    db $10
    inc hl
    or c
    cp h
    jr nz, jr_03f_7b72

jr_03f_7b72:
    ld sp, hl
    ld d, c
    ld [hl], b
    rrca
    ld a, l
    jp hl


    ld a, a
    jp nz, Jump_03f_70c2

    call z, $f00e
    ld b, h
    ld sp, hl
    rst $38
    add c
    reti


    add c
    or b
    sub c
    ld [hl], b
    sub b
    ld bc, $6101
    ld a, [de]
    ei
    ei
    rst $20
    rst $18
    rst $38
    or e
    add e
    ld a, h
    add b
    ld d, $30
    rst $38
    dec bc
    db $fc
    and d
    ld l, l
    ld h, e
    sub d
    ldh [$ffe0], a
    jr nc, jr_03f_7bd3

    ld [$fe08], sp
    dec d
    rst $00
    cp $ff
    cp h
    rst $38
    sbc h
    rst $38
    sbc d
    xor [hl]
    ld c, $7d
    db $f4
    rst $08
    add sp, $70
    ld h, a
    ld sp, $1200
    add d
    cp $32
    add a
    scf
    rlca
    rrca
    rrca
    rra
    rra
    ld sp, $31df
    ld b, c
    ld b, c
    add d
    add d
    pop hl
    sub [hl]
    dec sp
    ei
    xor $e1
    ld a, b
    db $d3

jr_03f_7bd3:
    rst $38
    ld a, b
    db $10
    ld [hl], h
    add c
    rst $38
    adc $fb
    pop af
    call nz, Call_000_1ea0
    db $fc
    rst $38
    di
    di
    ld a, b
    rst $28
    ld a, b
    jr nc, jr_03f_7c18

    ld c, $20
    ld b, e
    rst $38
    db $fc
    ld e, h
    rst $38
    ld e, b
    ld hl, sp-$10
    ret c

    ret nc

    ld [hl], b
    ldh [$fff1], a
    rst $38
    ldh [$ffd3], a
    ldh [$ffdf], a
    ldh [$ff03], a
    db $fc
    and a
    rst $38
    ld hl, sp+$0f
    ldh a, [$ff2f]
    ldh a, [$ff1f]
    ld h, b
    rra
    ei
    jr nz, jr_03f_7c4b

    ld h, b
    ld [hl], e
    db $eb
    rla
    ld d, a
    cpl
    cpl
    rst $38
    ld e, a
    cp a
    ld e, a
    rst $18

jr_03f_7c18:
    ccf
    rst $38
    ccf
    cp a
    ld sp, hl
    ld a, a
    ld de, $2c16
    sbc d
    rst $38
    rst $18
    rst $18
    push af
    push de
    rst $38
    jp z, $ddc0

    call z, $caee
    or a
    or a
    ld a, a
    db $db
    db $db
    nop
    rst $38
    and b
    ld a, a
    db $eb
    ret nz

    ld [bc], a
    rst $38
    rst $30
    ccf
    push af
    ccf
    ret z

    ld a, a
    and h
    ld a, a
    rst $38
    call nz, $ff83
    nop
    rst $28
    rra
    cp a

jr_03f_7c4b:
    ld a, a
    add sp, $72
    db $10
    ld hl, $1c77
    add h
    ld [$d620], sp
    ld b, a
    cp a
    add a
    cp $00
    inc e
    and $f9
    and $f9
    db $f4
    ei
    ld hl, sp-$25
    ld [$80f0], sp
    ld a, d
    ld hl, sp+$00
    inc d
    ret


    nop
    ld sp, hl
    xor a
    rst $38
    inc a
    rst $38
    inc e
    ld [hl-], a
    sub e
    ld hl, sp+$40
    inc c
    ld [hl], b
    ld a, a
    rst $38
    ld sp, hl
    ld sp, hl
    inc a
    inc a
    inc e
    inc e
    ld b, l
    and [hl]
    rst $10
    add b
    nop
    add c
    ldh a, [$ff94]
    ld e, h
    add b
    dec [hl]
    rlca
    rst $38
    push af
    dec de
    add b
    nop
    ld e, a
    nop
    ld a, [hl+]
    add b
    add b
    ld d, b
    ld d, b
    rst $20
    ld c, b
    ld c, b
    inc b
    jr nc, jr_03f_7ce6

    pop hl
    and [hl]
    adc h
    rst $38
    res 5, a
    rst $38
    ld b, [hl]
    rst $38
    ld c, l
    ld h, b
    nop
    rst $08
    jr nz, jr_03f_7cae

jr_03f_7cae:
    ld c, a
    ld a, [hl+]
    ld c, $91
    pop hl
    ld b, b
    dec hl
    pop af
    jr nz, jr_03f_7cb8

jr_03f_7cb8:
    ld sp, hl
    ldh [rNR42], a
    rrca
    sub e
    rst $38
    nop
    nop
    rst $10
    ldh [$ffb1], a
    ret nz

    or b
    ret nz

    pop hl
    jr c, jr_03f_7d2b

    ld a, b
    add c
    ld c, c
    ld h, d
    ld a, e
    ld c, b
    xor d
    ccf
    ret nz

    cpl
    ccf
    ret nz

    ld c, a
    add b
    rst $08
    nop
    adc $e2
    sbc [hl]
    and h
    sbc a
    sbc h
    ld c, b
    xor h
    add l
    rrca
    rst $38
    rst $38
    db $fd

jr_03f_7ce6:
    stop
    dec d
    push hl
    cp $bb
    ld bc, $e0fc
    ld d, l
    ld a, [$f007]
    ldh [$ff9a], a
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $28
    rst $28
    ld a, e
    ld a, e
    db $dd
    db $ed
    db $dd
    pop bc
    xor $80
    ld a, a
    add c
    inc e
    db $10
    rst $38
    add h
    ei
    rst $38
    ld [hl+], a
    cp d
    sbc [hl]
    rst $18
    rst $18
    ld a, a
    ld a, a
    db $ec
    db $e3
    rst $28
    db $fc
    nop
    inc d
    ld b, b
    daa
    jr nz, @-$7d

    cpl
    ldh a, [$ff8f]
    dec de
    ldh a, [rNR22]
    ret nz

    ld [hl], l
    db $f4
    ei
    ld b, b
    inc de
    ldh [rWave_b], a

jr_03f_7d2b:
    ld b, c
    nop
    adc c
    inc b
    ret nz

    inc [hl]
    dec c
    or h
    jr nc, jr_03f_7d35

jr_03f_7d35:
    ld [hl-], a
    or b
    dec de
    ld b, h
    nop
    ld a, h
    cp l
    db $fc
    jp hl


    or c
    ret nz

    nop
    add e
    inc bc
    rst $20
    db $ec
    add c
    ld b, $c0
    rst $10
    inc sp
    ld de, $ba25
    ld b, c
    ld [$f2a0], a
    ld [hl], d
    adc l
    push bc
    xor $8f
    inc de
    ld bc, $226a
    push hl
    ld bc, $2943
    ld [hl-], a
    dec bc
    rst $38
    ld a, e
    rrca
    rrca
    pop bc
    sub [hl]
    inc hl
    ld [bc], a
    dec c
    add hl, bc
    jr nc, jr_03f_7db9

    ld [hl-], a
    ldh [c], a
    db $eb
    cp $30
    adc b
    pop hl
    ld [hl], $7f
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

jr_03f_7db9:
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
