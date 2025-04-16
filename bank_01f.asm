; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    rra
    nop
    inc b
    or b
    cpl
    ld bc, $001f
    rra
    nop
    ld l, c
    nop
    inc bc
    inc bc
    ld b, c
    ld bc, $8102
    ld [bc], a
    rst $00
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    jp Jump_000_0400


    dec c
    inc b
    ld b, c
    ld bc, $0505
    ld h, a
    inc b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    inc c
    rra
    nop
    add hl, bc
    ld a, [bc]
    ld b, $06
    ld h, a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
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
    rla
    nop
    ld a, a
    dec sp
    ld h, b
    inc b
    ld l, [hl]
    ld de, $2677
    ld a, a
    dec sp
    ld b, h
    nop
    ld a, [bc]
    dec c
    ld [de], a
    ld l, $7f
    dec sp
    nop
    nop
    ld [hl], d
    dec b
    ld a, c
    ld e, $ff
    ld a, a
    nop
    nop
    ld [hl], d
    dec b
    rra
    nop
    rra
    inc bc
    nop
    nop
    ld [hl], d
    dec b
    ld a, c
    ld e, $ff
    ld a, a
    nop
    nop
    ld [hl], d
    dec b
    ld b, b
    ld a, [hl]
    db $ec
    inc bc
    nop
    nop
    ld [hl], d
    dec b
    pop hl
    dec b
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    push hl
    push af
    ld l, $c6
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_000_228a
    call ZeroOutVRAM
    call Call_000_323d
    call Call_01f_416e
    ld hl, $7614
    ld c, $1d
    ld de, $8000
    call Call_000_31a0
    ld hl, $79d4
    ld c, $05
    ld de, $9800
    call Call_000_31a0
    ld hl, $4762
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $5ce5
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


Call_01f_416e:
    ld hl, $4001
    ld a, $11
    ld de, $9000
    ld bc, $0800
    call Call_000_2308
    ld hl, $4801
    ld a, $11
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
    call Call_01f_678e
    call Call_000_33c4
    ld hl, $cdae
    inc [hl]
    inc hl
    inc [hl]
    ld hl, $d607
    inc [hl]
    call Call_01f_4b85
    push hl
    push af
    ld l, $bf
    ld h, $5c
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_01f_43e1
    call Call_01f_4293
    ld a, [$d605]
    or a
    jr z, jr_01f_41ee

    call Call_01f_443c
    call Call_01f_465d
    call Call_01f_46e6
    ld a, [$ce05]
    cp $02
    jr z, jr_01f_41eb

    call Call_01f_692f

jr_01f_41eb:
    call Call_01f_689a

jr_01f_41ee:
    call Call_01f_4272
    ret


Call_01f_41f2:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    call Call_000_0924
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
    call Call_01f_6771
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6771
    ld [hl+], a
    ld a, [$cd28]
    push af
    swap a
    and $0f
    call Call_01f_6771
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6771
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld a, [$cd61]
    push af
    swap a
    and $0f
    call Call_01f_6771
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6771
    ld [hl+], a
    ld a, [$d635]
    push af
    swap a
    and $0f
    call Call_01f_6771
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6771
    ld [hl+], a
    ld a, [$d607]
    push af
    swap a
    and $0f
    call Call_01f_6771
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6771
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$ff97]
    add $0e
    ldh [$ff97], a
    ret


Call_01f_4272:
    ld a, [$d605]
    or a
    ret z

    ld a, [$d607]
    cp $ff
    ret nz

    xor a
    ld [$cdb4], a
    ld [$d605], a
    call Call_01f_687b
    ld hl, $4b5b
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Call_01f_4293:
    ld a, [$cdaf]
    and $0f
    jr nz, jr_01f_42a8

    ld hl, $cdbb
    ld b, $04
    call Call_01f_41f2
    inc hl
    ld b, $03
    call Call_01f_41f2

jr_01f_42a8:
    ld a, [$cdb5]
    or a
    ret z

    dec a
    rst $00
    cp c
    ld b, d
    rlca
    ld b, e
    inc a
    ld b, e
    ld h, a
    ld b, e
    add b
    ld b, e
    ld a, [$c0be]
    cp $01
    jr nz, jr_01f_42da

    xor a
    ld [$c0be], a
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $9900
    ld b, $40

jr_01f_42ce:
    call Call_000_0da9
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_01f_42ce

    ld c, $4f
    xor a
    ldh [c], a

jr_01f_42da:
    ld c, $30
    ld b, $1c
    ld hl, $4392
    call Call_01f_4381
    ld c, $70
    ld b, $1c
    ld hl, $43b2
    call Call_01f_4381
    ld c, $30
    ld b, $44
    ld a, [$cec8]
    or a
    jr z, jr_01f_4300

    ld hl, $43db
    call Call_01f_43ca
    jr jr_01f_4306

jr_01f_4300:
    ld hl, $43c2
    call Call_01f_4381

jr_01f_4306:
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

    call $5126
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
    ld hl, $4392
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_01f_4381
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

    call Call_01f_52b0
    ld a, [hl]
    cp $ff
    ret z

    and $0f
    ld hl, $43ba
    cp $03
    jr z, jr_01f_435f

    ld hl, $43b2

jr_01f_435f:
    ld c, $70
    ld b, $3c
    call Call_01f_4381
    ret


    ld c, $48
    ld b, $44
    ld a, [$cec8]
    or a
    jr z, jr_01f_4379

    ld hl, $43db
    call Call_01f_43ca
    jr jr_01f_437f

jr_01f_4379:
    ld hl, $43c2
    call Call_01f_4381

jr_01f_437f:
    ret


    ret


Call_01f_4381:
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


    daa
    ld l, d
    or $69
    ld e, b
    ld l, d
    or $69
    db $eb
    ld l, d
    cp d
    ld l, d
    inc e
    ld l, e
    cp d
    ld l, d
    xor a
    ld l, e
    ld a, [hl]
    ld l, e
    ldh [rOCPD], a
    ld a, [hl]
    ld l, e
    ld [hl], e
    ld l, h
    ld b, d
    ld l, h
    and h
    ld l, h
    ld b, d
    ld l, h
    daa
    ld l, l
    daa
    ld l, l
    ld b, $6d
    ld b, $6d
    adc e
    ld l, c
    adc e
    ld l, c
    ld l, d
    ld l, c
    ld l, d
    ld l, c
    ld b, a
    ld l, [hl]
    ld l, h
    ld l, [hl]
    ld b, a
    ld l, [hl]
    ld [hl+], a
    ld l, [hl]

Call_01f_43ca:
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


    or e
    ld l, l
    ret c

    ld l, l
    sub d
    ld l, l

Call_01f_43e1:
    ld a, [$cd98]
    bit 4, a
    ret nz

    ld a, [$cdb4]
    or a
    ret z

    ld hl, $4412
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
    ld hl, $440d
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a
    jr jr_01f_442c

    ld e, b
    jr jr_01f_442f

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

jr_01f_442c:
    ld a, [hl-]
    inc d
    ld l, d

jr_01f_442f:
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

Call_01f_443c:
    ld a, [$ce00]
    or a
    ret nz

    ld a, [$ce05]
    cp $02
    ret nz

    ld a, [$ce07]
    or a
    jr nz, jr_01f_4493

    ld a, [$ce04]
    and $1f
    rst $00
    sub a
    ld b, h
    and b
    ld b, h
    and h
    ld b, h
    and b
    ld b, h
    xor l
    ld b, h
    call z, $d044
    ld b, h
    ldh a, [rLY]
    rst $30
    ld b, h
    ld e, b
    ld b, l
    ld e, h
    ld b, l
    ldh a, [c]
    ld b, l
    ld hl, sp+$45
    rlca
    ld b, [hl]
    dec bc
    ld b, [hl]
    ld [hl+], a
    ld b, [hl]
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    inc l
    ld b, [hl]
    ld [hl], $46

jr_01f_4493:
    call Call_01f_463f
    ret


    call Call_01f_463f
    ld a, $01
    call Call_01f_4647
    ret


    call Call_01f_463f
    ret


    call Call_01f_463f
    ld a, $03
    call Call_01f_4647
    ret


    call Call_01f_44b9
    call Call_01f_463f
    ld a, $05
    call Call_01f_4647
    ret


Call_01f_44b9:
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


    call Call_01f_463f
    ret


    call Call_01f_463f
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
    call Call_01f_4650
    ret


    call Call_01f_44b9
    call Call_01f_463f
    ret


    call Call_01f_463f
    ld a, $09
    call Call_01f_4647

Jump_01f_44ff:
    ld a, [$cde0]
    rst $00
    dec bc
    ld b, l
    inc l
    ld b, l
    ld b, b
    ld b, l
    ld c, h
    ld b, l
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


    call Call_01f_463f
    ret


    call Call_01f_463f
    ld hl, $456f
    push hl
    ld a, [$cde0]
    rst $00
    ld [hl], l
    ld b, l
    and h
    ld b, l
    rst $00
    ld b, l
    db $dd
    ld b, l
    ld a, $0b
    call Call_01f_4650
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
    call $5126
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
    call Call_01f_52b0
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


    call Call_01f_463f
    jp Jump_01f_44ff


    ld a, $0d
    call Call_01f_4647
    ld a, [$cddf]
    ld [$cd99], a
    call Call_01f_463f
    ret


    call Call_01f_463f
    ret


    ld a, [$cdb8]
    ld [$cdbf], a
    ld a, $0f
    ld b, $01
    call Call_01f_4650
    ld a, [$cddf]
    ld [$cdb7], a
    call Call_01f_463f
    ret


    ld a, [$cddf]
    ld [$cdb7], a
    call Call_01f_463f
    ret


    ld a, $01
    ld [$ce0a], a
    call Call_01f_463f
    ret


    ret


    call Call_01f_463f
    ld a, $01
    ld [$ce09], a
    ret


Call_01f_463f:
    xor a
    ld [$ce05], a
    ld [$ce08], a
    ret


Call_01f_4647:
    ld c, a
    ld a, $01
    ld [$cdbf], a
    ld a, c
    ld b, $01

Call_01f_4650:
    ld [$cdff], a
    ld a, b
    ld [$ce02], a
    ld a, $02
    ld [$ce00], a
    ret


Call_01f_465d:
    ld a, [$ce00]
    or a
    jr z, jr_01f_46db

    cp $01
    jr z, jr_01f_4696

    xor a
    ld [$ce01], a
    inc a
    ld [$ce00], a
    ld a, [$ce02]
    or a
    jr z, jr_01f_4696

    ld b, a
    ld hl, $cdbf
    xor a

jr_01f_467a:
    add [hl]
    inc hl
    dec b
    jr nz, jr_01f_467a

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

jr_01f_4696:
    ld d, $80
    ld a, [$d601]
    or a
    jr nz, jr_01f_46a0

    ld d, $40

jr_01f_46a0:
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
    jr nz, jr_01f_46d7

    ld [$ce02], a
    ld [$ce00], a
    ret


jr_01f_46d7:
    ld [$ce02], a
    ret


jr_01f_46db:
    xor a
    ld [$d62d], a
    ld [$d62e], a
    ld [$d62f], a
    ret


Call_01f_46e6:
    ld hl, $d627
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    or b
    jr nz, jr_01f_4730

    or [hl]
    jr nz, jr_01f_4730

    ld a, [$ce05]
    cp $01
    ret nz

    ld a, [$ce04]
    cp $1f
    jr z, jr_01f_4716

    ld a, [$ce08]
    dec a
    ld b, a
    ld hl, $cddf
    xor a
    ld e, a

jr_01f_4709:
    add [hl]
    ld d, a
    ld a, e
    or [hl]
    ld e, a
    ld a, d
    inc hl
    dec b
    jr nz, jr_01f_4709

    cp [hl]
    jr nz, jr_01f_4723

jr_01f_4716:
    ld a, $02
    ld [$ce05], a
    ld [$ce06], a
    xor a
    ld [$ce07], a
    ret


jr_01f_4723:
    ld a, $02
    ld [$ce05], a
    ld [$ce06], a
    dec a
    ld [$ce07], a
    ret


jr_01f_4730:
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


    adc e
    ld e, h
    and c
    ld c, e
    or [hl]
    call Call_01f_4db9
    and l
    ld c, l
    xor h
    ld c, l
    inc b
    adc h
    ld c, [hl]
    or [hl]
    call $6814
    ld b, a
    ld e, [hl]
    ld e, h
    ld l, c
    ld c, e
    ld [hl], b
    ld e, h
    ld [hl], a
    ld c, e
    and b
    ld c, [hl]
    rst $00
    ld e, a
    xor a
    ld c, [hl]
    add b
    ld e, h
    push hl
    ld d, h
    inc bc
    ld d, l
    ld c, l
    ld c, e
    add $57
    sbc b
    ld b, a
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    sub b
    ld b, a
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, $9057
    ld b, a
    jr z, jr_01f_47fd

    inc b
    and l
    ld c, l
    ld c, c
    ld e, b
    dec b
    sbc a
    ld b, a
    sub b
    ld b, a
    add e
    ld e, b
    xor l
    ld e, b
    ld b, $a5
    ld c, l
    or [hl]
    ld e, b
    rlca
    xor a
    ld b, a
    ldh a, [$ff58]
    and l
    ld c, l
    xor h
    ld c, l
    inc d
    and b
    ld c, [hl]
    push af
    ld e, a
    db $f4
    ld d, h
    xor a
    ld c, [hl]
    ccf
    ld d, l
    and l
    ld c, l
    xor h
    ld c, l
    ld d, b
    rst $00
    ld c, [hl]
    adc $4e
    and c
    ld c, e
    or [hl]
    call Call_01f_4ea0
    ld h, l
    ld h, b
    xor a
    ld c, [hl]
    xor d
    ld c, e
    jp hl


    ld c, h
    di
    ld c, e
    ld bc, $4ed7
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    xor $47
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l

jr_01f_47fd:
    call z, $ee57
    ld b, a
    nop
    ld e, h
    inc c
    and l
    ld c, l
    ld c, c
    ld e, b
    dec c
    db $fd
    ld b, a
    xor $47
    db $f4
    ld d, h
    ld [hl-], a
    ld e, h
    dec de
    ld c, b
    ld a, [$c448]
    ld c, c
    ld b, a
    ld c, d
    inc bc
    ld c, e
    xor d
    ld c, e
    ld [$3f4d], sp
    ld c, h
    ld [bc], a
    ret nz

    ld c, [hl]
    ld [hl], c
    ld c, a
    dec [hl]
    ld e, d

jr_01f_4828:
    ld [hl], $48
    inc l
    ld c, b
    and b
    ld c, [hl]
    db $fd
    ld h, b
    xor a
    ld c, [hl]
    add $57
    ld d, b
    ld c, b
    and b
    ld c, [hl]
    dec e
    ld h, b
    xor a
    ld c, [hl]
    cp d
    ld c, a
    inc a
    ld d, c
    ld [hl], c
    ld d, e
    inc a
    ld c, b
    and b
    ld c, [hl]
    ld b, c
    ld h, b
    xor a
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld b, $53
    ld d, b
    ld c, b
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    ld d, [hl]
    ld c, b
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, Call_01f_5657
    ld c, b
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    ld h, l
    ld c, b
    ld d, [hl]
    ld c, b
    ld c, c
    ld e, h
    pop hl
    ld c, b
    and b
    ld c, [hl]
    db $d3
    ld h, b
    and l
    ld c, l
    xor h
    ld c, l
    jr z, jr_01f_4828

    ld c, l
    call z, $8457
    ld c, b
    ld c, e
    ld e, c
    ld [$4da5], sp
    ld c, c
    ld e, b
    add hl, bc
    add h
    ld c, b
    add h
    ld c, b
    add e
    ld e, b
    add d
    ld e, c
    ld a, [bc]
    and l
    ld c, l
    or [hl]
    ld e, b
    dec bc
    sub h
    ld c, b
    ldh a, [$ff58]
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    sub e
    ld e, c
    db $d3
    ld e, c
    and l
    ld c, l
    call z, $ad57
    ld c, b
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    xor l
    ld c, b
    xor l
    ld c, b
    ld c, c
    ld e, h
    call nc, Call_000_1648
    ld e, d
    db $f4
    ld d, h
    and b
    ld c, [hl]
    db $dd
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h
    ld c, l
    ld b, [hl]
    add $57
    db $d3
    ld b, a
    and b
    ld c, [hl]
    ld l, a
    ld h, c
    and l
    ld c, l
    xor h
    ld c, l
    ld a, b
    add $57
    pop hl
    ld c, b
    and b
    ld c, [hl]
    di
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h
    ld c, l
    ld b, [hl]
    db $f4
    ld d, h
    add $57
    db $d3
    ld b, a
    and b
    ld c, [hl]
    ld h, l
    ld h, c
    add $57
    push hl
    ld c, b
    xor d
    ld c, e
    inc e
    ld c, l
    inc [hl]
    ld c, h
    inc bc
    ret nz

    ld c, [hl]
    xor a
    ld c, a
    dec [hl]
    ld e, d
    dec d
    ld c, c
    dec bc
    ld c, c

jr_01f_490b:
    and b
    ld c, [hl]
    dec de
    ld h, c
    xor a
    ld c, [hl]
    add $57
    inc sp
    ld c, c
    and b
    ld c, [hl]
    cpl
    ld h, b
    xor a
    ld c, [hl]
    cp a
    ld d, c
    ld e, e
    ld d, d
    ld [hl], c
    ld d, e
    dec de
    ld c, c
    sbc [hl]
    ld e, d
    dec de
    ld c, c
    and b
    ld c, [hl]
    ld d, e
    ld h, b
    xor a
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld b, $53
    inc sp
    ld c, c
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    add hl, sp
    ld c, c
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, $3957
    ld c, c
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    ld c, b
    ld c, c
    add hl, sp
    ld c, c
    ld c, c
    ld e, h
    pop hl
    ld c, b
    and b
    ld c, [hl]
    db $d3
    ld h, b
    and l
    ld c, l
    xor h
    ld c, l
    jr z, jr_01f_490b

    ld c, l
    call z, Call_01f_6757
    ld c, c
    ld h, c
    ld e, d
    ld [$4da5], sp
    ld c, c
    ld e, b
    add hl, bc
    ld h, a
    ld c, c
    ld h, a
    ld c, c
    add e
    ld e, b
    adc h
    ld e, d
    ld a, [bc]
    and l
    ld c, l
    or [hl]
    ld e, b
    dec bc
    ld [hl], a
    ld c, c
    ldh a, [$ff58]
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    ret nz

    ld e, d
    nop
    ld e, e
    and l
    ld c, l
    call z, $9057
    ld c, c
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    sub b
    ld c, c
    sub b
    ld c, c
    ld c, c
    ld e, h
    or a
    ld c, c
    dec e
    ld e, e
    db $f4
    ld d, h
    and b
    ld c, [hl]
    db $dd
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h

jr_01f_49b1:
    ld c, l
    ld b, [hl]
    add $57
    db $d3
    ld b, a
    and b
    ld c, [hl]
    add hl, sp
    ld h, c
    and l
    ld c, l
    xor h
    ld c, l
    ld a, b
    add $57
    pop hl
    ld c, b
    xor d
    ld c, e
    inc [hl]
    ld c, l
    ccf
    ld c, h
    inc b
    add $52
    and b
    ld c, [hl]
    ld a, e
    ld h, b
    xor a
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld b, $53
    reti


    ld c, c
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    rst $18
    ld c, c
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, $df57
    ld c, c
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    xor $49
    rst $18
    ld c, c
    ld c, c
    ld e, h
    pop hl
    ld c, b
    and b
    ld c, [hl]
    db $d3
    ld h, b
    and l
    ld c, l
    xor h
    ld c, l
    jr z, jr_01f_49b1

    ld c, l
    call z, $0d57
    ld c, d
    inc a
    ld e, e
    ld [$4da5], sp
    ld c, c
    ld e, b
    add hl, bc
    dec c
    ld c, d
    dec c
    ld c, d
    add e
    ld e, b
    ld e, d
    ld e, e
    ld a, [bc]
    and l
    ld c, l
    or [hl]
    ld e, b
    dec bc
    dec e
    ld c, d
    ldh a, [$ff58]
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    ld l, l
    ld e, e
    ld a, d
    ld e, e
    db $f4
    ld d, h
    add $52
    and b
    ld c, [hl]
    db $dd
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h
    ld c, l
    ld b, [hl]
    add $57
    db $d3
    ld b, a
    xor d
    ld c, e
    dec [hl]

jr_01f_4a4a:
    ld c, l
    ld d, c
    ld c, h
    dec b
    cp c
    ld c, [hl]
    rst $38
    ld d, e
    ld c, b
    ld e, d
    ld h, d
    ld c, d
    ld e, b
    ld c, d
    and b
    ld c, [hl]
    add l
    ld h, c
    xor a
    ld c, [hl]
    add $57
    ld [hl], d
    ld c, d
    dec l
    ld d, h
    ld d, b
    ld c, d
    and b
    ld c, [hl]
    adc e
    ld h, b
    xor a
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld b, $53
    ld [hl], d
    ld c, d
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    ld a, b
    ld c, d
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, Call_01f_7857
    ld c, d
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    add a
    ld c, d
    ld a, b
    ld c, d
    ld c, c
    ld e, h
    pop hl
    ld c, b
    and b
    ld c, [hl]
    db $d3
    ld h, b
    and l
    ld c, l
    xor h
    ld c, l
    jr z, jr_01f_4a4a

    ld c, l
    call z, $a657
    ld c, d
    adc b
    ld e, e
    ld [$4da5], sp
    ld c, c
    ld e, b
    add hl, bc
    and [hl]
    ld c, d
    and [hl]
    ld c, d
    add e
    ld e, b
    and e
    ld e, e
    ld a, [bc]
    and l
    ld c, l
    or [hl]
    ld e, b
    dec bc
    or [hl]
    ld c, d
    ldh a, [$ff58]
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    or [hl]
    ld e, e
    ret nc

    ld e, e
    and l
    ld c, l
    call z, $cf57
    ld c, d
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    rst $08
    ld c, d
    rst $08
    ld c, d
    ld c, c
    ld e, h
    or $4a
    sbc $5b
    db $f4
    ld d, h
    and b
    ld c, [hl]
    db $dd
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h
    ld c, l
    ld b, [hl]
    add $57
    db $d3
    ld b, a
    and b
    ld c, [hl]
    ld c, a
    ld h, c
    and l
    ld c, l
    xor h
    ld c, l
    ld a, b
    add $57
    pop hl
    ld c, b
    and b
    ld c, [hl]
    sbc l
    ld h, b
    xor a
    ld c, [hl]
    ret nz

    ld c, [hl]
    ld b, $53
    rrca
    ld c, e
    and b
    ld c, [hl]
    ret


    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    push hl
    ld d, h
    inc bc
    ld d, l
    dec d
    ld c, e
    and l
    ld c, l
    xor h
    ld c, l
    db $10
    and l
    ld c, l
    call z, Call_000_1557
    ld c, e
    ld de, $0e5c
    and l
    ld c, l
    ld c, c
    ld e, b
    rrca
    inc h
    ld c, e
    dec d
    ld c, e
    ld c, c
    ld e, h
    ldh a, [c]
    ld c, b
    db $f4
    ld d, h
    ld l, [hl]
    ld d, l
    and b
    ld c, [hl]
    or e
    ld h, b
    xor a
    ld c, [hl]
    and l
    ld c, l
    xor h
    ld c, l
    ld b, [hl]
    ld hl, $c655
    ld d, a
    ld c, c
    ld c, e
    db $f4
    ld d, h
    and b
    ld c, [hl]
    dec bc
    ld h, b
    xor a
    ld c, [hl]
    ld hl, $c655
    ld d, a
    ld c, c
    ld c, e
    db $f4
    ld d, h
    and b
    ld c, [hl]
    dec bc
    ld h, b
    xor a
    ld c, [hl]
    ld hl, $c655
    ld d, a
    ld h, l
    ld c, e
    db $f4
    ld d, h
    and b
    ld c, [hl]
    and e
    ld h, c
    xor a
    ld c, [hl]
    ld hl, $c655
    ld d, a
    ld [hl], e
    ld c, e
    db $f4
    ld d, h
    and b
    ld c, [hl]
    call $af61
    ld c, [hl]
    ld hl, $c655
    ld d, a
    add c
    ld c, e

Call_01f_4b85:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4b98
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

jr_01f_4bb3:
    push bc
    ld b, $11
    ld a, $af

jr_01f_4bb8:
    ld [hl+], a
    dec b
    jr nz, jr_01f_4bb8

    pop bc
    ld a, $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_4bb3

    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e

jr_01f_4bd0:
    ld a, [hl+]
    or a
    jr z, jr_01f_4bde

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    call CopyHLtoDE
    jr jr_01f_4bd0

jr_01f_4bde:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld bc, $4bea
    push bc
    ld l, e
    ld h, a
    jp hl


    pop hl
    ld a, [hl+]
    ld [$cdb5], a
    call Call_000_2273
    ret


    ld hl, $7614
    ld c, $1d
    ld de, $8000
    call Call_000_31a0
    ld hl, $79f0
    ld c, $0b
    ld de, $8ec0
    call Call_000_31a0
    ld hl, $7a2e
    ld c, $0b
    ld de, $8f80
    call Call_000_31a0
    ld hl, $98ec
    ld a, $ec
    call Call_01f_4c2b
    ld hl, $990c
    ld a, $f8
    call Call_01f_4c2b
    ld hl, $992c
    call Call_01f_4c2b
    ret


Call_01f_4c2b:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ret


    ld hl, $7aad
    ld c, $0b
    ld de, $8380
    call Call_000_31a0
    call Call_01f_416e
    ld hl, $4f01
    ld a, $11
    ld de, $8f00
    ld bc, $0100
    call Call_000_2308
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4001
    ld c, $1f
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $57ae
    ld c, $1c
    ld de, $8000
    call Call_000_31a0
    ld hl, $8000

jr_01f_4c73:
    ld bc, $4cb5

jr_01f_4c76:
    ld a, [bc]
    or a
    jr z, jr_01f_4c88

    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    push bc
    ld b, $40
    call CopyHLtoDE
    pop bc
    jr jr_01f_4c76

jr_01f_4c88:
    ld bc, $cece
    ld hl, $4cc8

jr_01f_4c8e:
    ld a, [hl+]
    or a
    jr z, jr_01f_4ca1

    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld a, [bc]
    inc bc
    push bc
    call Call_01f_4cdb
    pop bc
    pop hl
    jr jr_01f_4c8e

jr_01f_4ca1:
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
    jr nc, jr_01f_4c73

    nop

Call_01f_4cdb:
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
    jr z, jr_01f_4d54

    dec e
    ld [hl+], a
    dec l
    ld [hl+], a
    jr z, jr_01f_4d5a

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

jr_01f_4d54:
    xor a
    ld l, [hl]
    ld l, a
    call c, $dedc

jr_01f_4d5a:
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
    jr c, jr_01f_4db6

    inc hl
    ret


jr_01f_4db6:
    dec hl
    dec hl
    ret


Call_01f_4db9:
    push bc
    ld hl, $4ddc
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


    ld [$0e4e], sp
    ld c, [hl]
    inc d
    ld c, [hl]
    ld a, [de]
    ld c, [hl]
    jr nz, jr_01f_4e34

    ld h, $4e
    inc l
    ld c, [hl]
    ld [hl-], a
    ld c, [hl]
    jr c, @+$50

    ld a, $4e
    ld b, h
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld e, h
    ld c, [hl]
    ld h, d
    ld c, [hl]
    ld l, b
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld [hl], h
    ld c, [hl]
    ld a, d
    ld c, [hl]
    add b
    ld c, [hl]
    add [hl]
    ld c, [hl]
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

jr_01f_4e34:
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
    jr nc, jr_01f_4e9d

    inc a
    ld [bc], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_4e9d:
    inc hl
    inc hl
    ret


Call_01f_4ea0:
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
    jr nz, jr_01f_4f08

    bit 1, a
    jr nz, jr_01f_4f12

    ld bc, $cd99
    bit 4, a
    jr nz, jr_01f_4f21

    bit 5, a
    jr nz, jr_01f_4f35

    bit 6, a
    jr nz, jr_01f_4f49

    bit 7, a
    jr nz, jr_01f_4f5d

    dec hl
    dec hl
    ret


jr_01f_4f08:
    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    ret


jr_01f_4f12:
    xor a
    ld [$cdb4], a
    ld a, $04
    ld [$cd99], a
    ld a, $51
    call Call_000_25cb
    ret


jr_01f_4f21:
    ld a, [bc]
    bit 0, a
    jr nz, jr_01f_4f32

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_01f_4f32:
    dec hl
    dec hl
    ret


jr_01f_4f35:
    ld a, [bc]
    bit 0, a
    jr z, jr_01f_4f46

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_01f_4f46:
    dec hl
    dec hl
    ret


jr_01f_4f49:
    ld a, [bc]
    bit 1, a
    jr z, jr_01f_4f5a

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_01f_4f5a:
    dec hl
    dec hl
    ret


jr_01f_4f5d:
    ld a, [bc]
    bit 1, a
    jr nz, jr_01f_4f6e

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a

jr_01f_4f6e:
    dec hl
    dec hl
    ret


    push bc
    xor a
    ld [$cdb7], a
    ld hl, $ce40
    ld c, $16
    call Call_01f_4f80
    pop hl
    ret


Call_01f_4f80:
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

jr_01f_4f93:
    ld a, [hl]
    cp $ff
    jr z, jr_01f_4fa4

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cda0]
    inc a
    ld [$cda0], a

jr_01f_4fa4:
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_4f93

    ret


    push bc
    ld hl, $ce98
    ld c, $0c
    call Call_01f_4f80
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
    jr z, jr_01f_500e

    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5126
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
    ld hl, $502c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_01f_4ffe:
    call Call_000_0930
    ld b, $19
    call CopyHLtoDE
    ldh a, [$ff97]
    add $18
    ldh [$ff97], a
    pop hl
    ret


jr_01f_500e:
    ld hl, $5013
    jr jr_01f_4ffe

    sbc b
    daa
    ld a, [bc]
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, Call_01f_6798
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

jr_01f_5045:
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
    jr nc, jr_01f_5045

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
    jr z, jr_01f_50c6

    call c, $dcdc
    call c, $dcdc
    call c, Call_01f_6798
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b
    daa

jr_01f_50ab:
    ld a, [bc]
    ld [bc], a
    jr z, jr_01f_50df

    call c, $dcdc
    call c, $dcdc
    call c, Call_01f_6798
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800
    daa

jr_01f_50c4:
    ld a, [bc]
    inc c

jr_01f_50c6:
    ld a, [de]
    dec l
    ld e, $1d
    call c, Call_000_2802
    jr nc, jr_01f_50ab

    sbc b
    ld h, a
    ld [$1e07], sp
    ld a, [de]
    dec h
    dec l
    ld hl, $dc32
    nop
    sbc b

jr_01f_50dc:
    daa
    ld a, [bc]
    inc c

jr_01f_50df:
    ld a, [de]
    dec l
    ld e, $1d
    call c, Call_000_2802
    jr nc, jr_01f_50c4

    sbc b
    ld h, a
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $9800

jr_01f_50f5:
    daa
    ld a, [bc]
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    call c, Call_000_2802
    jr nc, jr_01f_50dc

    call c, Call_01f_6798
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
    jr nc, jr_01f_50f5

    call c, Call_01f_6798
    ld [$2714], sp
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    call c, $8700
    ld hl, $5134
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
    jr z, jr_01f_51a6

    ld a, [$cd99]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $5126
    ld a, [hl]
    res 7, a
    cp $02
    ld b, $00
    jr nz, jr_01f_5189

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
    jr nz, jr_01f_5189

    ld a, c
    ld b, $03
    cp $a0
    jr nc, jr_01f_5189

    dec b
    cp $50
    jr nc, jr_01f_5189

    dec b
    cp $0a
    jr nc, jr_01f_5189

    dec b

jr_01f_5189:
    ld hl, $51ab
    ld a, b
    add a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_01f_5196:
    call Call_000_0930
    ld b, $05
    call CopyHLtoDE
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ret


jr_01f_51a6:
    ld hl, $51ab
    jr jr_01f_5196

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
    jr z, jr_01f_51fd

    call Call_01f_52b0
    ld a, [hl]
    cp $ff
    jr z, jr_01f_51fd

    res 7, a
    ld hl, $5227
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


jr_01f_51fd:
    ld hl, $5210
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
    jr nz, jr_01f_524f

    dec [hl]
    ld h, l
    xor c
    xor a
    nop
    sbc b
    ld c, d
    add hl, bc
    call c, Call_000_02dc
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

jr_01f_524f:
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
    jr z, jr_01f_5298

    call Call_01f_52b0
    ld a, [hl]
    cp $ff
    jr z, jr_01f_5298

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $529a
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

jr_01f_5298:
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

Call_01f_52b0:
    add a
    ld hl, $52be
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
    ld hl, $52f3
    ld b, $03
    call CopyHLtoDE
    ld hl, $cec9
    ld b, $04
    call CopyHLtoDE
    ld hl, $52f6
    ld a, [$cec8]
    or a
    jr z, jr_01f_52e6

    ld hl, $52fe

jr_01f_52e6:
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
    jr nz, jr_01f_5322

    bit 1, a
    jr nz, jr_01f_5334

    bit 4, a
    jr nz, jr_01f_5346

    bit 5, a
    jr nz, jr_01f_535c

    dec hl
    dec hl
    ret


jr_01f_5322:
    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
    ld [$cdb8], a
    inc hl
    inc hl
    ret


jr_01f_5334:
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


jr_01f_5346:
    ld a, [$cd99]
    or a
    jr nz, jr_01f_5359

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce

jr_01f_5359:
    dec hl
    dec hl
    ret


jr_01f_535c:
    ld a, [$cd99]
    or a
    jr z, jr_01f_536e

    xor a
    ld [$cd99], a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce

jr_01f_536e:
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
    jr nz, jr_01f_539e

    bit 1, a
    jr nz, jr_01f_53c6

    ld bc, $cd99
    bit 4, a
    jr nz, jr_01f_53c9

    bit 5, a
    jr nz, jr_01f_53e1

    bit 6, a
    jr nz, jr_01f_53eb

    bit 7, a
    jr nz, jr_01f_53f5

    dec hl
    dec hl
    ret


jr_01f_539e:
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
    jr z, jr_01f_53bd

    xor a
    ld [$cdb4], a
    ld a, $42
    call Call_000_25cb
    pop hl
    inc hl
    inc hl
    ret


jr_01f_53bd:
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ret


jr_01f_53c6:
    dec hl
    dec hl
    ret


jr_01f_53c9:
    ld a, [bc]
    bit 0, a
    jr nz, jr_01f_53de

    set 0, a
    ld [bc], a

jr_01f_53d1:
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_53de:
    dec hl
    dec hl
    ret


jr_01f_53e1:
    ld a, [bc]
    bit 0, a
    jr z, jr_01f_53de

    res 0, a
    ld [bc], a
    jr jr_01f_53d1

jr_01f_53eb:
    ld a, [bc]
    bit 1, a
    jr z, jr_01f_53de

    res 1, a
    ld [bc], a
    jr jr_01f_53d1

jr_01f_53f5:
    ld a, [bc]
    bit 1, a
    jr nz, jr_01f_53de

    set 1, a
    ld [bc], a
    jr jr_01f_53d1

    ld a, [$cd99]
    add a
    ld hl, $541b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld h, b
    ld l, c
    ret


    add a
    ld h, [hl]
    sub c
    ld h, [hl]
    sbc e
    ld h, [hl]
    and l
    ld h, [hl]
    xor a
    ld h, [hl]
    cp c
    ld h, [hl]
    jp $cd66


    ld h, [hl]
    rst $10
    ld h, [hl]
    ld h, b
    ld l, c
    ld a, $04
    ld [$cdb4], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01f_5458

    bit 1, a
    jr nz, jr_01f_547c

    ld bc, $cdbd
    bit 4, a
    jr nz, jr_01f_547f

    bit 5, a
    jr nz, jr_01f_5499

    inc bc
    bit 6, a
    jr nz, jr_01f_54a1

    bit 7, a
    jr nz, jr_01f_54a9

    call Call_01f_54b2
    dec hl
    dec hl
    ret


jr_01f_5458:
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
    jr z, jr_01f_5477

    ld a, b
    ld [$cdb6], a
    ld a, $42
    call Call_000_25cb
    inc hl
    inc hl
    ret


jr_01f_5477:
    ld a, $51
    call Call_000_25cb

jr_01f_547c:
    dec hl
    dec hl
    ret


jr_01f_547f:
    ld a, [bc]
    cp $02
    jr z, jr_01f_5496

    inc a
    ld [bc], a

jr_01f_5486:
    call Call_01f_54b2
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd98], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_5496:
    dec hl
    dec hl
    ret


jr_01f_5499:
    ld a, [bc]
    or a
    jr z, jr_01f_5496

    dec a
    ld [bc], a
    jr jr_01f_5486

jr_01f_54a1:
    ld a, [bc]
    or a
    jr z, jr_01f_5496

    dec a
    ld [bc], a
    jr jr_01f_5486

jr_01f_54a9:
    ld a, [bc]
    cp $02
    jr z, jr_01f_5496

    inc a
    ld [bc], a
    jr jr_01f_5486

Call_01f_54b2:
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
    jr nz, jr_01f_54e4

    dec hl
    dec hl
    ret


jr_01f_54e4:
    ret


    push bc
    ld a, $4d
    call Call_000_25c5
    call Call_01f_683c
    xor a
    ld [$cdb9], a
    pop hl
    ret


    push bc
    call Call_01f_687b
    xor a
    ld [$d605], a
    ld a, $22
    call Call_000_25c5
    pop hl
    ret


    ld h, b
    ld l, c
    call Call_01f_688e
    ld a, [$d605]
    jr nz, jr_01f_551a

    ld a, [$cdae]
    cp $ff
    jr z, jr_01f_551d

    call Call_01f_6885
    dec hl
    dec hl
    ret


jr_01f_551a:
    inc hl
    inc hl
    ret


jr_01f_551d:
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

jr_01f_5574:
    push bc
    call Call_01f_5644
    pop bc
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5574

    call Call_01f_5683
    call Call_01f_569b
    ld hl, $ce40
    ld de, $b949
    ld b, $58
    call CopyHLtoDE
    ld a, [$b949]
    cp $ff
    jr z, jr_01f_55a1

    and $07
    ld [$b949], a

jr_01f_55a1:
    ld a, [$b95f]
    cp $ff
    jr z, jr_01f_55ad

    and $07
    ld [$b95f], a

jr_01f_55ad:
    ld a, [$b975]
    cp $ff
    jr z, jr_01f_55b9

    and $07
    ld [$b975], a

jr_01f_55b9:
    ld a, [$b98b]
    cp $ff
    jr z, jr_01f_55c5

    and $07
    ld [$b98b], a

jr_01f_55c5:
    call Call_01f_56e3
    call nc, Call_01f_56fe
    call Call_01f_571e
    ld b, $04
    ld hl, $ce98

jr_01f_55d3:
    push bc
    call Call_01f_5754
    pop bc
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_55d3

    ld hl, $ce98
    ld de, $b9a7
    ld b, $30
    call CopyHLtoDE
    ld a, [$b9a7]
    cp $ff
    jr z, jr_01f_55fa

    and $07
    ld [$b9a7], a

jr_01f_55fa:
    ld a, [$b9b3]
    cp $ff
    jr z, jr_01f_5606

    and $07
    ld [$b9b3], a

jr_01f_5606:
    ld a, [$b9bf]
    cp $ff
    jr z, jr_01f_5612

    and $07
    ld [$b9bf], a

jr_01f_5612:
    ld a, [$b9cb]
    cp $ff
    jr z, jr_01f_561e

    and $07
    ld [$b9cb], a

jr_01f_561e:
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

jr_01f_5638:
    ld a, c
    push bc
    call Call_01f_575b
    pop bc
    inc c
    dec b
    jr nz, jr_01f_5638

    pop hl
    ret


Call_01f_5644:
    ld a, [hl]
    cp $ff
    ret z

    bit 7, [hl]
    ret z

    res 7, [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_01f_5654

    inc a
    ld [hl], a

jr_01f_5654:
    push hl
    ld a, $15

Call_01f_5657:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jr z, jr_01f_5664

    inc a
    inc [hl]

jr_01f_5664:
    pop hl
    ld a, [hl]
    cp $03
    ret nz

    push hl
    ld hl, $ce40
    ld c, $16
    call Call_01f_4f80
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


Call_01f_5683:
    ld b, $04
    ld hl, $ce40

jr_01f_5688:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_56ba

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5688

    ret


Call_01f_569b:
    ld b, $04
    ld hl, $ce40

jr_01f_56a0:
    push hl
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 7, [hl]
    pop hl
    jr nz, jr_01f_56c1

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_56a0

    ret


jr_01f_56ba:
    ld b, $04
    ld hl, $ce40
    jr jr_01f_56cb

jr_01f_56c1:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    ret z

jr_01f_56cb:
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
    jr nz, jr_01f_56cb

    ret


Call_01f_56e3:
    ld b, $04
    ld hl, $ce98

jr_01f_56e8:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_56fc

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_56e8

    or a
    ret


jr_01f_56fc:
    scf
    ret


Call_01f_56fe:
    ld a, [$cdaf]
    and $3f
    or a
    ret nz

    ld b, $04
    ld hl, $ce98

jr_01f_570a:
    ld a, [hl]
    cp $82
    jr z, jr_01f_571b

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_570a

    ret


jr_01f_571b:
    ld [hl], $03
    ret


Call_01f_571e:
    ld b, $03
    ld hl, $ce98

jr_01f_5723:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_5736

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5723

    ret


jr_01f_5736:
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


Call_01f_5754:
    ld a, [hl]
    cp $ff
    ret z

    res 7, [hl]
    ret


Call_01f_575b:
    ld b, a
    add a
    add a
    add b
    ld hl, $578e
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
    jr z, jr_01f_577f

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    push hl
    call Call_01f_57bb
    pop hl
    ret z

    ld a, $01
    ld [de], a
    ret


jr_01f_577f:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    ld a, [hl+]
    call Call_01f_57bb
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

Call_01f_57bb:
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
    jr z, jr_01f_57e6

    call Call_01f_5c22
    jr nz, jr_01f_57e3

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


jr_01f_57e3:
    dec hl
    dec hl
    ret


jr_01f_57e6:
    call Call_01f_5c2c
    jr nz, jr_01f_5812

    xor a
    ld [$ce06], a
    ld a, [$ce07]
    or a
    jr nz, jr_01f_580a

    inc hl
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_01f_5806

    xor a
    ld [$cdb9], a
    inc hl
    ret


jr_01f_5806:
    dec hl
    dec hl
    dec hl
    dec hl

jr_01f_580a:
    ld a, $1f
    call Call_01f_4647
    dec hl
    dec hl
    ret


jr_01f_5812:
    ld a, [$cdae]
    cp $ff
    jr nz, jr_01f_57e3

    ld a, [$cdb9]
    inc a
    ld [$cdb9], a
    cp $03
    jr nz, jr_01f_57e3

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
    call Call_01f_4650
    pop hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_587d

    call Call_01f_5c2c
    jr z, jr_01f_5860

    ld a, [$cdae]
    cp $3f
    jr z, jr_01f_586b

    dec hl
    dec hl
    ret


jr_01f_5860:
    xor a
    ld [$ce06], a
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr z, jr_01f_587d

jr_01f_586b:
    ld a, [$cdb9]
    inc a
    ld [$cdb9], a
    cp $03
    jr c, jr_01f_5878

    inc hl
    inc hl

jr_01f_5878:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_587d:
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
    jr z, jr_01f_589d

    call Call_01f_5c22
    jr nz, jr_01f_589a

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, h
    ld c, l
    ld l, e
    ld h, a
    jp hl


jr_01f_5898:
    dec hl
    dec hl

jr_01f_589a:
    dec hl
    dec hl
    ret


jr_01f_589d:
    call Call_01f_5c2c
    jr nz, jr_01f_589a

    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_01f_5898

    inc hl
    ret


    push bc
    ld a, $06
    call Call_01f_4647
    pop hl
    inc hl
    ret


    xor a
    ld [$ce0a], a
    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_58e7

    call Call_01f_5c2c
    jr z, jr_01f_58d1

    ld a, [$cdae]
    cp $3f
    jr z, jr_01f_58eb

    dec hl
    dec hl
    ret


jr_01f_58d1:
    xor a
    ld [$ce06], a
    ld b, [hl]
    ld a, [$ce04]
    cp b
    jr nz, jr_01f_58eb

    ld a, [$ce07]
    or a
    jr nz, jr_01f_58eb

    ld a, $1e
    call Call_01f_4647

jr_01f_58e7:
    inc hl
    inc hl
    inc hl
    ret


jr_01f_58eb:
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
    call Call_01f_5c22
    jr nz, jr_01f_590c

    ld a, $0e
    call Call_01f_4647
    pop hl
    ret


jr_01f_590c:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb7]
    or a
    jr z, jr_01f_5922

    dec a
    jr nz, jr_01f_591e

    inc hl
    inc hl
    ret


jr_01f_591e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_5922:
    ld a, [$cdae]
    cp $3f
    jr nz, jr_01f_592b

    dec hl
    dec hl

jr_01f_592b:
    dec hl
    dec hl
    ret


    push bc
    call Call_01f_5c22
    jr nz, jr_01f_593b

    ld a, $10
    call Call_01f_4647
    pop hl
    ret


jr_01f_593b:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb7]
    or a
    jr z, jr_01f_5948

    ret


jr_01f_5948:
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
    call $5126
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
    call Call_01f_4650
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
    call Call_01f_4650
    pop hl
    inc hl
    ret


    push bc
    ld a, [$ce0b]
    cp $03
    jr nz, jr_01f_59b2

    ld b, $04
    ld hl, $ce40

jr_01f_59a0:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_59b8

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_59a0

jr_01f_59b2:
    xor a
    ld [$cdb8], a
    pop hl
    ret


jr_01f_59b8:
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
    jr z, jr_01f_59b2

    ld a, $01
    ld [$cdb8], a
    pop hl
    ret


    push bc
    ld hl, $ce0b
    ld a, [hl+]
    cp $ff
    jr z, jr_01f_5a09

    res 7, a
    cp $05
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_5a0f

    inc hl
    inc hl
    ld a, [hl+]
    cp $03
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $03
    jr nc, jr_01f_5a0f

    ld a, [hl+]
    cp $02
    jr nc, jr_01f_5a0f

    pop hl
    ret


jr_01f_5a09:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


jr_01f_5a0f:
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
    call $5126
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
    jr nz, jr_01f_5a44

    ld a, $01
    ld [$cdb8], a
    inc hl
    inc hl

jr_01f_5a44:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld hl, $b8d2
    ld e, $09

jr_01f_5a4d:
    ld a, [hl+]
    or a
    jr nz, jr_01f_5a5b

    dec e
    jr nz, jr_01f_5a4d

    ld a, $01
    ld [$cdb8], a
    inc bc
    inc bc

jr_01f_5a5b:
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
    call Call_01f_52b0
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
    call Call_01f_4650
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
    call Call_01f_4650
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
    call Call_01f_52b0
    ld a, [hl]
    pop hl
    or a
    jr z, jr_01f_5ab7

    inc hl
    inc hl
    ret


jr_01f_5ab7:
    ld a, $51
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld a, [$ce25]
    cp $03
    jr nz, jr_01f_5adf

    ld b, $04
    ld hl, $ce98

jr_01f_5acd:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_5ae5

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5acd

jr_01f_5adf:
    xor a
    ld [$cdb8], a
    pop hl
    ret


jr_01f_5ae5:
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
    jr z, jr_01f_5adf

    ld a, $01
    ld [$cdb8], a
    pop hl
    ret


    push bc
    ld hl, $ce25
    ld a, [hl+]
    cp $ff
    jr z, jr_01f_5b15

    res 7, a
    cp $04
    jr nc, jr_01f_5b17

    inc hl
    ld a, [hl+]
    cp $02
    jr nc, jr_01f_5b17

jr_01f_5b15:
    pop hl
    ret


jr_01f_5b17:
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
    call Call_01f_52b0
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
    call Call_01f_4650
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
    call Call_01f_4650
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
    call Call_01f_4650
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
    call Call_01f_4650
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
    jr c, jr_01f_5bcb

    inc a

jr_01f_5bcb:
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
    jr z, jr_01f_5bfe

    inc [hl]

jr_01f_5bfe:
    pop hl
    ret


    push bc
    ld a, [$cd99]
    ld [$cdbf], a
    ld a, $0c
    ld b, $01
    call Call_01f_4650
    pop hl
    inc hl
    ret


    push bc
    ld a, [$cdb8]
    ld [$cdbf], a
    ld a, $0e
    ld b, $01
    call Call_01f_4650
    pop hl
    inc hl
    ret


Call_01f_5c22:
    ld a, [$ce00]
    or a
    ret nz

    ld a, [$ce02]
    or a
    ret


Call_01f_5c2c:
    ld a, [$ce06]
    cp $02
    ret


    ld h, b
    ld l, c
    ld a, [$cd99]
    cp $04
    jr z, jr_01f_5c3e

    ld [$cdba], a

jr_01f_5c3e:
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
    jr nz, jr_01f_5c5a

    ld a, [$cdb8]
    or a
    jr nz, jr_01f_5c5a

    inc hl
    inc hl
    ret


jr_01f_5c5a:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr nz, jr_01f_5c6c

    inc hl
    inc hl
    ret


jr_01f_5c6c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $f0
    jr nz, jr_01f_5c7c

    inc hl
    inc hl
    ret


jr_01f_5c7c:
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
    ld bc, $5cd2
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


    rst $18
    ld e, h
    push hl
    ld e, h
    ld h, b
    ld l, c
    push hl
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld hl, $6267
    ld a, b
    cp h
    jr nz, jr_01f_5d01

    ld a, c
    cp l
    jr nz, jr_01f_5d01

    ld a, $01
    ld [$c0be], a

jr_01f_5d01:
    pop bc
    pop hl
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
    jr z, jr_01f_5d73

jr_01f_5d24:
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
    jr c, jr_01f_5d44

    ld de, $99f2

jr_01f_5d44:
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
    jr z, jr_01f_5d6e

    dec hl
    dec hl
    ret


jr_01f_5d6e:
    xor a
    ld [$cd98], a
    ret


jr_01f_5d73:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_01f_5d8b

    ld a, [de]
    cp $ef
    jr nz, jr_01f_5d24

    jr jr_01f_5d73

jr_01f_5d8b:
    pop hl
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    call Call_01f_5d96

Call_01f_5d96:
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
    jr z, jr_01f_5dac

jr_01f_5da6:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_01f_5da6

jr_01f_5dac:
    pop hl
    ret


    push bc
    ld hl, $99c2
    ld b, $10

jr_01f_5db4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5db4

    ld a, [$cb5c]
    ld [hl], a

jr_01f_5dbe:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5dbe

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_01f_5db4

    ld hl, $9a02
    ld b, $10

jr_01f_5dd0:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5dd0

    ld a, [$cb5c]
    ld [hl], a

jr_01f_5dda:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5dda

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_01f_5dd0

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
    jr nz, jr_01f_5e09

    ld a, [$cd98]
    cp [hl]
    jr z, jr_01f_5e09

    dec hl
    dec hl
    ret


jr_01f_5e09:
    inc hl
    ret


    push bc
    ld a, [$cd9c]
    cp $ff
    jr z, jr_01f_5e40

    ld de, $cd73
    call Call_01f_5e42
    ld a, [$cd9d]
    cp $ff
    jr z, jr_01f_5e40

    ld de, $cd7e
    call Call_01f_5e42
    ld a, [$cd9e]
    cp $ff
    jr z, jr_01f_5e40

    ld de, $cd83
    call Call_01f_5e42
    ld a, [$cd9f]
    cp $ff
    jr z, jr_01f_5e40

    ld de, $cd8e
    call Call_01f_5e42

jr_01f_5e40:
    pop hl
    ret


Call_01f_5e42:
    push de
    call Call_01f_5e4e
    inc hl
    pop de
    ld b, $04
    call CopyHLtoDE
    ret


Call_01f_5e4e:
    add a
    ld hl, $5e5c
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
    call Call_01f_5e4e
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
    ld hl, $5f83
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
    ld hl, $5ebc
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

jr_01f_5ec0:
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
    jr z, jr_01f_5efa

    ld a, [de]

jr_01f_5ece:
    dec l
    jr z, jr_01f_5ec0

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    inc de
    jr z, jr_01f_5f01

    ld a, [de]
    dec l
    jr z, jr_01f_5ece

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_01f_5f14

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
    jr nz, jr_01f_5f17

    add hl, hl
    dec h
    ld a, [de]

jr_01f_5efa:
    daa
    dec l
    rst $28
    ld [de], a
    ld e, $1e
    dec e

jr_01f_5f01:
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

jr_01f_5f14:
    jr z, @+$2f

    rst $28

jr_01f_5f17:
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
    jr z, jr_01f_5f7b

    ld de, $cd73
    ld hl, $5f83
    call Call_01f_5f7d
    ld a, [$cd9d]
    cp $ff
    jr z, jr_01f_5f7b

    ld de, $cd7e
    ld hl, $5f87
    call Call_01f_5f7d

jr_01f_5f5b:
    ld a, [$cd9e]
    cp $ff
    jr z, jr_01f_5f7b

    ld de, $cd83
    ld hl, $5f8b
    call Call_01f_5f7d
    ld a, [$cd9f]
    cp $ff
    jr z, jr_01f_5f7b

    ld de, $cd8e
    ld hl, $5f8f
    call Call_01f_5f7d

jr_01f_5f7b:
    pop hl
    ret


Call_01f_5f7d:
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

jr_01f_5f93:
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01f_5fc6

    push hl
    ld de, $9a11
    ld a, [$cd9b]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr nz, jr_01f_5fae

    ld a, [$cd9b]
    ld b, a

jr_01f_5fae:
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


jr_01f_5fc6:
    ret


    xor [hl]
    ld e, l
    jp hl


    ld e, h
    and a
    ld h, e
    jr nz, @-$7e

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rst $00
    ld h, e
    jr nz, jr_01f_5f5b

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rst $20
    ld h, e
    jr nz, @-$7e

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h

jr_01f_5fed:
    rlca
    ld h, h
    jr nz, @-$7e

    rst $18
    ld e, h
    db $fd
    ld h, c
    sub c
    ld e, l

jr_01f_5ff7:
    daa
    ld h, d
    ld [hl], d
    call $b020
    call $cd8a
    inc b
    jp hl


    ld e, h
    ld [hl], d
    call $8020
    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rlca
    ld h, d
    jr nz, jr_01f_5f93

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h
    add hl, de
    ld h, b
    sub c
    ld e, l
    add a
    ld h, e
    ld [hl], d
    call $4120

jr_01f_6025:
    adc $72
    call Call_000_0b00
    ld e, [hl]
    rst $18
    ld e, h
    rst $30
    ld h, c

jr_01f_602f:
    sub c
    ld e, l
    add a
    ld h, e
    ld [hl], d
    call $9920
    adc $73
    call $3a00
    ld e, a
    rst $18
    ld e, h
    rst $30
    ld h, c
    sub c
    ld e, l
    add a
    ld h, d

jr_01f_6045:
    ld [hl], d
    call $4120
    adc $72
    call Call_01f_6400
    ld e, [hl]

jr_01f_604f:
    rst $18
    ld e, h
    rst $30
    ld h, c
    sub c
    ld e, l
    add a
    ld h, d
    ld [hl], d
    call $4120
    adc $72
    call $8000
    ld e, [hl]
    rst $18
    ld e, h
    rst $30
    ld h, c

jr_01f_6065:
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    ld b, a
    ld h, d
    jr nz, jr_01f_5fed

    inc d
    ld e, l

jr_01f_606f:
    sub e
    ld e, a
    jp hl


    ld e, h
    ld h, a
    ld h, d
    jr nz, jr_01f_5ff7

    rst $18
    ld e, h

jr_01f_6079:
    db $fd
    ld h, c
    sub c
    ld e, l
    add a
    ld h, d
    ld [hl], d
    call $c920
    adc $72

jr_01f_6085:
    call $df04
    ld e, h
    rst $30
    ld h, c
    sub c
    ld e, l
    add a
    ld h, d
    ld [hl], d
    call $4120
    adc $72
    call $9900
    ld e, [hl]
    rst $18
    ld e, h
    rst $30
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rlca
    ld h, e

jr_01f_60a3:
    jr nz, jr_01f_6025

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h
    daa
    ld h, e
    jr nz, jr_01f_602f

jr_01f_60af:
    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    ld b, a
    ld h, e
    jr nz, @-$7e

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h

jr_01f_60c1:
    ld h, a
    ld h, e
    jr nz, jr_01f_6045

    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h

jr_01f_60cb:
    rlca
    ld h, h
    jr nz, jr_01f_604f

    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    and a
    ld h, d

jr_01f_60d7:
    jr nz, @-$7e

    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h

jr_01f_60e1:
    rst $00
    ld h, d
    jr nz, jr_01f_6065

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h

jr_01f_60eb:
    rst $20
    ld h, d
    jr nz, jr_01f_606f

    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld b, a
    ld h, h

jr_01f_60f7:
    jr nz, jr_01f_6079

    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h

jr_01f_6101:
    daa
    ld h, h
    jr nz, jr_01f_6085

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h

jr_01f_610d:
    ld b, a
    ld h, h
    jr nz, @-$7e

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h

jr_01f_6119:
    rla
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, h
    jr nz, jr_01f_60a3

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h

jr_01f_612b:
    ld b, a
    ld h, h
    jr nz, jr_01f_60af

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h

jr_01f_6137:
    dec [hl]
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, h
    jr nz, jr_01f_60c1

    inc d
    ld e, l

jr_01f_6143:
    sub e
    ld e, a
    jp hl


    ld e, h
    ld b, a
    ld h, h
    jr nz, jr_01f_60cb

    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, h

jr_01f_6155:
    jr nz, jr_01f_60d7

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h
    ld b, a
    ld h, h
    jr nz, jr_01f_60e1

jr_01f_6161:
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    rlca
    ld h, l
    jr nz, jr_01f_60eb

    rst $18
    ld e, h

jr_01f_616d:
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, h
    jr nz, jr_01f_60f7

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, h
    ld b, a
    ld h, h
    jr nz, jr_01f_6101

    rst $18
    ld e, h
    db $fd
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, h
    jr nz, jr_01f_610d

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    ld b, a
    ld h, h
    jr nz, jr_01f_6119

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h
    sbc a
    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rst $00
    ld h, l
    jr nz, jr_01f_612b

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rst $20
    ld h, l
    jr nz, jr_01f_6137

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    rlca
    ld h, [hl]
    jr nz, jr_01f_6143

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h
    ret


    ld h, c
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    daa
    ld h, [hl]
    jr nz, jr_01f_6155

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    ld b, a
    ld h, [hl]
    jr nz, jr_01f_6161

    inc d
    ld e, l
    sub e
    ld e, a
    xor [hl]
    ld e, l
    jp hl


    ld e, h
    ld h, a
    ld h, [hl]
    jr nz, jr_01f_616d

    inc d
    ld e, l
    sub e
    ld e, a
    jp hl


    ld e, l
    rst $18
    ld e, h
    di
    ld h, c
    jp hl


    ld e, h
    ld [hl], d
    call $8020
    xor [hl]
    ld e, l
    inc d
    ld e, l
    jp hl


    ld e, l
    rst $18
    ld e, h
    inc bc
    ld h, d
    inc de
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
    jr z, jr_01f_6259

    daa
    ld e, $1c
    dec l
    ld b, h
    ld e, $1d
    rst $28
    jr nc, jr_01f_625e

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

jr_01f_6259:
    ld e, $1a
    inc l
    ld e, $ef

jr_01f_625e:
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    rst $28
    rst $28
    rst $28

jr_01f_6266:
    jp hl


    dec l
    ld hl, $ef1e
    ld bc, $1bef
    ld l, $2d
    dec l
    jr z, jr_01f_629a

    rst $28
    dec l
    jr z, jr_01f_6266

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

jr_01f_629a:
    ld [de], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01f_62a1:
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $04
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_01f_62d1

    daa
    jr nz, jr_01f_62a1

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
    jr nc, jr_01f_62da

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
    jr nz, jr_01f_62ed

    rst $28
    ld [hl+], a

jr_01f_62d1:
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rra
    ld [hl+], a
    daa

jr_01f_62da:
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

jr_01f_62ed:
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

jr_01f_6309:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_01f_633e

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    rst $28
    dec l
    jr z, jr_01f_6309

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
    jr nz, jr_01f_634d

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_01f_633e

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_01f_633e:
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

jr_01f_634c:
    rst $28

jr_01f_634d:
    ld [hl-], a
    jr z, jr_01f_637e

    rst $28
    rra
    jr z, jr_01f_637f

    rst $28
    rst $28
    rst $28
    ld l, $2c
    ld [hl+], a
    daa
    jr nz, jr_01f_634c

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
    jr nc, jr_01f_639c

    dec hl
    inc h
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01f_637e:
    rst $28

jr_01f_637f:
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

jr_01f_639c:
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
    jr z, jr_01f_63d9

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
    jr z, jr_01f_63ee

    rst $28
    rst $28
    rst $28
    jp hl


    ld [hl-], a
    jr z, jr_01f_63f8

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

jr_01f_63d9:
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

jr_01f_63ee:
    ld l, $2d
    dec l
    jr z, jr_01f_641a

    call c, $efef
    rst $28
    rst $28

jr_01f_63f8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01f_63fe:
    rst $28
    rst $28

Call_01f_6400:
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
    jr nz, jr_01f_63fe

    rra
    jr z, jr_01f_643d

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    inc e
    jr z, jr_01f_6441

jr_01f_641a:
    daa
    ld e, $1c
    dec l
    ld [hl+], a
    jr z, jr_01f_6448

    call c, $dcdc
    rst $28
    rst $28
    rst $28
    jr jr_01f_6451

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    daa
    jr z, jr_01f_645f

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld e, $31
    inc e
    ld hl, $271a

jr_01f_643d:
    jr nz, jr_01f_645d

    rst $28
    ld [hl+], a

jr_01f_6441:
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc b

jr_01f_6448:
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, @+$20

    rst $28
    rst $28

jr_01f_6451:
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

jr_01f_645d:
    ld e, $1d

jr_01f_645f:
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_01f_6491

    ld l, $ef
    dec e
    jr z, @+$29

    ld c, e
    dec l
    rst $28

jr_01f_6471:
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    dec l
    jr z, jr_01f_6471

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

jr_01f_6491:
    dec h
    ld [hl-], a
    rst $28
    ld e, $31
    ld b, h
    inc e
    ld hl, $271a
    jr nz, jr_01f_64bb

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
    jr nz, jr_01f_64d7

    rst $28
    inc e

jr_01f_64bb:
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
    jr z, jr_01f_64f8

    dec h
    ld [hl-], a
    rst $28
    inc e
    ld a, [de]
    ld b, h

jr_01f_64d7:
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
    jr nz, jr_01f_6514

    rst $28
    inc e

jr_01f_64f8:
    ld a, [de]
    daa
    inc e
    ld e, $25
    ld e, $1d
    rst $28
    rst $28

jr_01f_6501:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_01f_6531

    dec l
    ld [hl+], a
    daa
    ld l, $22
    daa
    jr nz, jr_01f_6501

    rst $28
    rst $28

jr_01f_6514:
    rst $28
    rst $28
    rst $28
    inc b
    ld sp, $211c
    ld a, [de]
    daa
    jr nz, jr_01f_653d

    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_01f_6551

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    jr z, jr_01f_6558

jr_01f_6531:
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

jr_01f_653d:
    jr nz, jr_01f_655d

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

jr_01f_6551:
    jr z, jr_01f_6583

    call c, $efef
    rst $28
    inc b

jr_01f_6558:
    ld sp, $211c
    ld a, [de]
    daa

jr_01f_655d:
    jr nz, jr_01f_657d

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

jr_01f_657d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01f_6583:
    rst $28
    rst $28
    rst $28
    rst $28
    jr @+$2a

    ld l, $ef
    dec e
    jr z, jr_01f_65b5

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
    jr nz, jr_01f_65cd

    call c, $04ef
    ld sp, $211c

jr_01f_65b5:
    ld a, [de]
    ld b, h
    daa
    jr nz, jr_01f_65d8

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

jr_01f_65cd:
    dec e
    rst $28
    dec l
    ld hl, $2d1a
    rst $28
    ld a, [de]
    rst $28
    rst $28
    inc e

jr_01f_65d8:
    ld a, [de]
    dec h
    rra
    rst $28
    jr nc, jr_01f_65f8

    inc l
    rst $28
    dec de
    jr z, jr_01f_660e

    daa
    call c, $e9ef
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, jr_01f_6617

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    ld a, [de]

jr_01f_65f8:
    rra
    dec l
    ld e, $2b
    rst $28
    ld [hl-], a
    jr z, jr_01f_662e

    rst $28
    ld hl, $2f1a
    ld e, $ef
    jp hl


    daa
    ld a, [de]

jr_01f_6609:
    ld h, $1e
    dec e
    rst $28
    ld [hl+], a

jr_01f_660e:
    dec l
    call c, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_01f_6617:
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
    jr z, jr_01f_6609

    rst $28

jr_01f_662e:
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

jr_01f_6643:
    rst $28
    rst $28
    rst $28
    jp hl


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nz, jr_01f_6678

    rst $28
    dec l
    jr z, jr_01f_6643

    rst $28
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_01f_6688

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
    jr z, @+$30

    dec hl
    rst $28
    inc e
    jr z, jr_01f_66a5

    call c, $efef

jr_01f_6678:
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


    jp hl


jr_01f_6688:
    ld e, h
    pop hl
    ld h, [hl]
    db $10
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    pop af
    ld h, [hl]
    db $10
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld bc, $1067
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c

jr_01f_66a5:
    jp hl


    ld e, h
    ld de, $1067
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld hl, $1067
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld sp, $1067
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld b, c
    ld h, a
    db $10
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld d, c
    ld h, a
    db $10
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    jp hl


    ld e, h
    ld h, c
    ld h, a
    db $10
    add b
    rst $18
    ld e, h
    db $fd
    ld h, c
    rst $28
    rst $28
    inc de
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl

jr_01f_66e9:
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
    jr z, jr_01f_6723

    ld a, [de]
    dec l
    jr z, jr_01f_66e9

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    jr z, jr_01f_672c

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
    jr z, jr_01f_6742

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

jr_01f_6723:
    jr nz, jr_01f_6745

    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    ld [de], a

jr_01f_672c:
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
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
    rst $28

jr_01f_6742:
    rst $28
    ld [bc], a
    ld a, [de]

jr_01f_6745:
    dec hl
    dec hl
    jr z, jr_01f_6776

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

Call_01f_6757:
    jr z, jr_01f_677e

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

Call_01f_6771:
    push hl
    ld hl, $677e
    add l

jr_01f_6776:
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


jr_01f_677e:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_67bd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

Call_01f_678e:
    ld a, [$d605]
    and a
    ret z

    ld a, [$d604]
    and a
    ret nz

Call_01f_6798:
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
    jr nz, jr_01f_67ee

    ld a, [$d606]
    and a
    jr z, jr_01f_67e4

    ldh a, [rSB]
    cp $5e
    jr z, jr_01f_67d0

jr_01f_67bd:
    cp $fe
    jr z, jr_01f_67d8

    xor a
    ld [$d600], a
    ld a, $5e
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_01f_683b


jr_01f_67d0:
    ld a, $01
    ld [$d600], a
    ld [$d601], a

jr_01f_67d8:
    ld a, $01
    ld [$d605], a
    ld a, [$d602]
    inc a
    ld [$d602], a

jr_01f_67e4:
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_01f_683b


jr_01f_67ee:
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
    jp nz, Jump_01f_6831

    xor a
    ld [$d603], a
    ld [$d604], a
    call Call_01f_6905
    call Call_01f_68ce
    jr jr_01f_683b

Jump_01f_6831:
    ld a, [$d600]
    and a
    jr z, jr_01f_683b

    ld a, $06
    ldh [rTAC], a

Jump_01f_683b:
jr_01f_683b:
    ret


Call_01f_683c:
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


Call_01f_687b:
    xor a
    ldh [rSB], a
    ld [$d606], a
    ld [$d601], a
    ret


Call_01f_6885:
    ld a, $fe
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_01f_688e:
    ld a, [$d605]
    and a
    ret z

    ret


jr_01f_6894:
    dec bc
    ld a, b
    or c
    jr nz, jr_01f_6894

    ret


Call_01f_689a:
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
    jr nz, jr_01f_68c1

    jr c, jr_01f_68c1

    ei
    ret


jr_01f_68c1:
    ld a, l
    ld [$d633], a
    xor a
    ld hl, $d62d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


Call_01f_68ce:
    ld a, [$d637]
    and a
    jr z, jr_01f_68fd

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
    jr nz, jr_01f_68f8

    jr c, jr_01f_68f8

    ret


jr_01f_68f8:
    ld a, l
    ld [$d635], a
    ret


jr_01f_68fd:
    xor a
    ld hl, $d620
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01f_6905:
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
    jr nz, jr_01f_692a

    jr c, jr_01f_692a

    ret


jr_01f_692a:
    ld a, l
    ld [$d638], a
    ret


Call_01f_692f:
    di
    ld a, [$d63c]
    and a
    jr z, jr_01f_6961

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
    jr nz, jr_01f_695b

    jr c, jr_01f_695b

    ei
    ret


jr_01f_695b:
    ld a, l
    ld [$d63a], a
    ei
    ret


jr_01f_6961:
    xor a
    ld hl, $d627
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


    ld [bc], a
    inc b
    sbc a
    ld [de], a
    ld [bc], a
    db $fc
    sbc [hl]
    ld [de], a
    ld [bc], a
    db $f4
    sbc l
    ld [de], a
    ld a, [$9c04]
    ld [de], a
    ld a, [$9bfc]
    ld [de], a
    ld a, [$9af4]
    ld [de], a
    ldh a, [c]
    db $fc
    sbc c
    ld [de], a
    ldh a, [c]
    db $f4
    sbc b
    ld [de], a
    add b
    ld [bc], a
    inc b
    and a
    ld [de], a
    ld [bc], a
    db $fc
    and [hl]
    ld [de], a
    ld [bc], a
    db $f4
    and l
    ld [de], a
    ld a, [$a404]
    ld [de], a
    ld a, [$a3fc]
    ld [de], a
    ld a, [$a2f4]
    ld [de], a
    ldh a, [c]
    db $fc
    and c
    ld [de], a
    ldh a, [c]
    db $f4
    and b
    ld [de], a
    add b
    ldh a, [c]
    inc b
    xor d
    ld [de], a
    ldh a, [c]
    db $fc
    xor c
    ld [de], a
    ldh a, [c]
    db $f4
    xor b
    ld [de], a
    ld [bc], a
    inc b
    or b
    ld [de], a
    ld [bc], a
    db $fc
    xor a
    ld [de], a
    ld [bc], a
    db $f4
    xor [hl]
    ld [de], a
    ld a, [$ad04]
    ld [de], a
    ld a, [$acfc]
    ld [de], a
    ld a, [$abf4]
    ld [de], a
    add b
    ld [bc], a
    inc b
    cp c
    ld [de], a
    ld [bc], a
    db $fc
    cp b
    ld [de], a
    ld [bc], a
    db $f4
    or a
    ld [de], a
    ld a, [$b604]
    ld [de], a
    ld a, [$b5fc]
    ld [de], a
    ld a, [$b4f4]
    ld [de], a
    ldh a, [c]
    inc b
    or e
    ld [de], a
    ldh a, [c]
    db $fc
    or d
    ld [de], a
    ldh a, [c]
    db $f4
    or c
    ld [de], a
    add b
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld [$1307], sp
    db $fc
    nop
    ld b, $13
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld [$1303], sp
    db $f4
    nop
    ld [bc], a
    inc de
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    inc b
    ld [$130e], sp
    inc b
    nop
    dec c
    inc de
    inc b
    ld hl, sp+$0c
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld [$1307], sp
    db $fc
    nop
    ld b, $13
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld [$1303], sp
    db $f4
    nop
    ld [bc], a
    inc de
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    inc b
    ld [$1311], sp
    inc b
    nop
    db $10
    inc de
    inc b
    ld hl, sp+$0f
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld [$1307], sp
    db $fc
    nop
    ld b, $13
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld [$1303], sp
    db $f4
    nop
    ld [bc], a
    inc de
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld [$1307], sp
    db $fc
    nop
    ld b, $13
    db $f4
    ld [$1303], sp
    db $f4
    nop
    ld [bc], a
    inc de
    db $fc
    ld hl, sp+$15
    inc d
    db $fc
    ldh a, [rNR14]
    inc d
    db $f4
    ld hl, sp+$13
    inc de
    db $f4
    ldh a, [rNR12]
    inc de
    add b
    db $fc
    ld [$1377], sp
    db $fc
    nop
    halt
    inc de
    db $f4
    ld [$1375], sp
    db $f4
    nop
    ld [hl], h
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$1377], sp
    db $fc
    nop
    halt
    inc de
    db $f4
    ld [$1375], sp
    db $f4
    nop
    ld [hl], h
    inc de
    inc b
    ld [$130e], sp
    inc b
    nop
    dec c
    inc de
    inc b
    ld hl, sp+$0c
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$1377], sp
    db $fc
    nop
    halt
    inc de
    db $f4
    ld [$1375], sp
    db $f4
    nop
    ld [hl], h
    inc de
    inc b
    ld [$1311], sp
    inc b
    nop
    db $10
    inc de
    inc b
    ld hl, sp+$0f
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld hl, sp+$15
    inc d
    db $fc
    ldh a, [rNR14]
    inc d
    db $f4
    ld hl, sp+$13
    inc de
    db $f4
    ldh a, [rNR12]
    inc de
    db $fc
    ld [$1377], sp
    db $fc
    nop
    halt
    inc de
    db $f4
    ld [$1375], sp
    db $f4
    nop
    ld [hl], h
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    add b
    db $fc
    ld [$137b], sp
    db $fc
    nop
    ld a, d
    inc de
    db $f4
    ld [$1379], sp
    db $f4
    nop
    ld a, b
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137b], sp
    db $fc
    nop
    ld a, d
    inc de
    db $f4
    ld [$1379], sp
    db $f4
    nop
    ld a, b
    inc de
    inc b
    ld [$130e], sp
    inc b
    nop
    dec c
    inc de
    inc b
    ld hl, sp+$0c
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137b], sp
    db $fc
    nop
    ld a, d
    inc de
    db $f4
    ld [$1379], sp
    db $f4
    nop
    ld a, b
    inc de
    inc b
    ld [$1311], sp
    inc b
    nop
    db $10
    inc de
    inc b
    ld hl, sp+$0f
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137b], sp
    db $fc
    nop
    ld a, d
    inc de
    db $f4
    ld [$1379], sp
    db $f4
    nop
    ld a, b
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$15
    inc d
    db $fc
    ldh a, [rNR14]
    inc d
    db $f4
    ld hl, sp+$13
    inc de
    db $f4
    ldh a, [rNR12]
    inc de
    add b
    db $fc
    ld [$137f], sp
    db $fc
    nop
    ld a, [hl]
    inc de
    db $f4
    ld [$137d], sp
    db $f4
    nop
    ld a, h
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137f], sp
    db $fc
    nop
    ld a, [hl]
    inc de
    db $f4
    ld [$137d], sp
    db $f4
    nop
    ld a, h
    inc de
    inc b
    ld [$130e], sp
    inc b
    nop
    dec c
    inc de
    inc b
    ld hl, sp+$0c
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137f], sp
    db $fc
    nop
    ld a, [hl]
    inc de
    db $f4
    ld [$137d], sp
    db $f4
    nop
    ld a, h
    inc de
    inc b
    ld [$1311], sp
    inc b
    nop
    db $10
    inc de
    inc b
    ld hl, sp+$0f
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$05
    inc d
    db $fc
    ldh a, [rDIV]
    inc d
    db $f4
    ld hl, sp+$01
    inc de
    db $f4
    ldh a, [rP1]
    inc de
    add b
    db $fc
    ld [$137f], sp
    db $fc
    nop
    ld a, [hl]
    inc de
    db $f4
    ld [$137d], sp
    db $f4
    nop
    ld a, h
    inc de
    inc b
    ld [$130b], sp
    inc b
    nop
    ld a, [bc]
    inc de
    inc b
    ld hl, sp+$09
    inc d
    inc b
    ldh a, [$ff08]
    inc d
    db $fc
    ld hl, sp+$15
    inc d
    db $fc
    ldh a, [rNR14]
    inc d
    db $f4
    ld hl, sp+$13
    inc de
    db $f4
    ldh a, [rNR12]
    inc de
    add b
    db $f4
    db $fc
    rla
    dec d
    db $f4
    db $f4
    ld d, $15
    ld [bc], a
    inc b
    dec e
    dec d
    ld [bc], a
    db $fc
    inc e
    ld d, $02
    db $f4
    dec de
    ld d, $fa
    inc b
    ld a, [de]
    dec d
    ld a, [$19fc]
    ld d, $fa
    db $f4
    jr @+$18

    add b
    ld [bc], a
    inc b
    dec h
    dec d
    ld [bc], a
    db $fc
    inc h
    ld d, $02
    db $f4
    inc hl
    ld d, $fa
    inc b
    ld [hl+], a
    dec d
    ld a, [$21fc]
    dec d
    ld a, [$20f4]
    dec d
    ldh a, [c]
    db $fc
    rra
    dec d
    ldh a, [c]
    db $f4
    ld e, $15
    add b
    ld [bc], a
    inc b
    ld l, $15
    ld [bc], a
    db $fc
    dec l
    ld d, $02
    db $f4
    inc l
    ld d, $fa
    inc b
    dec hl
    dec d
    ld a, [$2afc]
    ld d, $fa
    db $f4
    add hl, hl
    ld d, $f2
    inc b
    jr z, @+$17

    ldh a, [c]
    db $fc
    daa
    dec d
    ldh a, [c]
    db $f4
    ld h, $15
    add b
    ld [bc], a
    inc b
    scf
    dec d
    ld [bc], a
    db $fc
    ld [hl], $16
    ld [bc], a
    db $f4
    dec [hl]
    ld d, $fa
    inc b
    inc [hl]
    dec d
    ld a, [$33fc]
    ld d, $fa
    db $f4
    ld [hl-], a
    ld d, $f2
    inc b
    ld sp, $f215
    db $fc
    jr nc, @+$17

    ldh a, [c]
    db $f4
    cpl
    dec d
    add b
    ld [bc], a
    inc b
    ccf
    ld de, $fc02
    ld a, $11
    ld [bc], a
    db $f4
    dec a
    ld de, $04fa
    inc a
    ld de, $fcfa
    dec sp
    ld de, $f4fa
    ld a, [hl-]
    ld de, $fcf2
    add hl, sp
    ld de, $f4f2
    jr c, @+$13

    add b
    ld [bc], a
    inc b
    ld c, b
    ld de, $fc02
    ld b, a
    ld de, $f402
    ld b, [hl]
    ld de, $04fa
    ld b, l
    ld de, $fcfa
    ld b, h
    ld de, $f4fa
    ld b, e
    ld de, $04f2
    ld b, d
    ld de, $fcf2
    ld b, c
    ld de, $f4f2
    ld b, b
    ld de, $0280
    inc b
    ld d, c
    ld de, $fc02
    ld d, b
    ld de, $f402
    ld c, a
    ld de, $04fa
    ld c, [hl]
    ld de, $fcfa
    ld c, l
    ld de, $f4fa
    ld c, h
    ld de, $04f2
    ld c, e
    ld de, $fcf2
    ld c, d
    ld de, $f4f2
    ld c, c
    ld de, $fa80
    xor $53
    ld de, $0602
    ld e, d
    ld de, $fe02
    ld e, c
    ld de, $f602
    ld e, b
    ld de, $ee02
    ld d, a
    ld de, $06fa
    ld d, [hl]
    ld de, $fefa
    ld d, l
    ld de, $f6fa
    ld d, h
    ld de, $f7f2
    ld d, d
    ld de, $0280
    inc b
    ld h, e
    ld de, $fc02
    ld h, d
    ld de, $f402
    ld h, c
    ld de, $04fa
    ld h, b
    ld de, $fcfa
    ld e, a
    ld de, $f4fa
    ld e, [hl]
    ld de, $04f2
    ld e, l
    ld de, $fcf2
    ld e, h
    ld de, $f4f2
    ld e, e
    ld de, $0280
    inc b
    ld h, a
    ld de, $fc02
    ld h, [hl]
    ld de, $f402
    ld h, l
    ld de, $04fa
    ld h, h
    ld de, $fcfa
    ld e, a
    ld de, $f4fa
    ld e, [hl]
    ld de, $04f2
    ld e, l
    ld de, $fcf2
    ld e, h
    ld de, $f4f2
    ld e, e
    ld de, $0280
    inc b
    ld l, l
    ld de, $fc02
    ld l, h
    ld de, $f402
    ld l, e
    ld de, $04fa
    ld l, d
    ld de, $fcfa
    ld l, c
    ld de, $f4fa
    ld l, b
    ld de, $04f2
    ld e, l
    ld de, $fcf2
    ld e, h
    ld de, $f4f2
    ld e, e
    ld de, $0280
    db $fc
    ld [hl], b
    ld de, $0402
    ld h, e
    ld de, $f402
    ld h, c
    ld de, $fcfa
    ld l, a
    ld de, $f4fa
    ld l, [hl]
    ld de, $04fa
    ld h, b
    ld de, $04f2
    ld e, l
    ld de, $fcf2
    ld e, h
    ld de, $f4f2
    ld e, e
    ld de, $0280
    db $fc
    ld [hl], e
    ld de, $fcfa
    ld [hl], d
    ld de, $f4fa
    ld [hl], c
    ld de, $0402
    ld h, e
    ld de, $f402
    ld h, c
    ld de, $04fa
    ld h, b
    ld de, $04f2
    ld e, l
    ld de, $fcf2
    ld e, h
    ld de, $f4f2
    ld e, e
    ld de, $0480
    ld [$177f], sp
    inc b
    nop
    ld a, [hl]
    rla
    inc b
    ld hl, sp+$7d
    rla
    inc b
    ldh a, [$ff7c]
    rla
    db $fc
    ld [$177b], sp
    db $fc
    nop
    ld a, d
    rla
    db $fc
    ld hl, sp+$79
    rla
    db $fc
    ldh a, [$ff78]
    rla
    db $f4
    ld [$1777], sp
    db $f4
    nop
    halt
    rla
    db $f4
    ld hl, sp+$75
    rla
    db $f4
    ldh a, [$ff74]
    rla
    add b
    inc b
    ld [$108b], sp
    inc b
    nop
    adc d
    db $10
    inc b
    ld hl, sp-$77
    db $10
    inc b
    ldh a, [$ff88]
    db $10
    db $fc
    ld [$1087], sp
    db $fc
    nop
    add [hl]
    db $10
    db $fc
    ld hl, sp-$7b
    db $10
    db $fc
    ldh a, [$ff84]
    db $10
    db $f4
    ld [$1083], sp
    db $f4
    nop
    add d
    db $10
    db $f4
    ld hl, sp-$7f
    db $10
    db $f4
    ldh a, [$ff80]
    db $10
    add b
    inc b
    ld [$1097], sp
    inc b
    nop
    sub [hl]
    db $10
    inc b
    ld hl, sp-$6b
    db $10
    inc b
    ldh a, [$ff94]
    db $10
    db $fc
    ld [$1093], sp
    db $fc
    nop
    sub d
    db $10
    db $fc
    ld hl, sp-$6f
    db $10
    db $fc
    ldh a, [$ff90]
    db $10
    db $f4
    ld [$108f], sp
    db $f4
    nop
    adc [hl]
    db $10
    db $f4
    ld hl, sp-$73
    db $10
    db $f4
    ldh a, [$ff8c]
    db $10
    add b
    call Call_000_228a
    call ZeroOutVRAM
    call Call_000_323d
    ld hl, $4001
    ld a, $11
    ld de, $9010
    ld bc, $07f0
    call Call_000_2308
    ld hl, $47f1
    ld a, $11
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
    ld a, [$b883]
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
    call Call_01f_723f
    ld a, [$ccd3]
    ld hl, $982a
    call Call_01f_720a
    ld a, [$ccd4]
    ld hl, $984a
    call Call_01f_720a
    ld a, [$ccd5]
    ld hl, $986a
    call Call_01f_720a
    xor a
    ld [$ccd2], a
    ret


    ld a, [$ccd2]
    cp $00
    call z, Call_01f_70ab
    cp $01
    call z, Call_01f_7131
    cp $02
    call z, Call_01f_7161
    cp $03
    call z, Call_01f_7191
    ld a, [$c0a8]
    and $07
    cp $07
    jr nz, jr_01f_7058

    ldh a, [$ff8a]
    cp $40
    jp z, Jump_01f_7089

    ldh a, [$ff8a]
    cp $80
    jp z, Jump_01f_709a

jr_01f_7058:
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
    ld [$b883], a
    call Call_000_07ab
    call Call_000_08b7
    ret


Jump_01f_7089:
    ld a, [$ccd2]
    cp $00
    ret z

    ld [$ccd6], a
    dec a
    ld [$ccd2], a
    call Call_01f_723f
    ret


Jump_01f_709a:
    ld a, [$ccd2]
    cp $03
    ret z

    ld [$ccd6], a
    inc a
    ld [$ccd2], a
    call Call_01f_723f
    ret


Call_01f_70ab:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_70b7

    cp $10
    jr z, jr_01f_70cb

    jr jr_01f_70dd

jr_01f_70b7:
    ld a, [$cb68]
    cp $00
    jr z, jr_01f_70c4

    dec a
    ld [$cb68], a
    jr jr_01f_70dd

jr_01f_70c4:
    ld a, $26
    ld [$cb68], a
    jr jr_01f_70dd

jr_01f_70cb:
    ld a, [$cb68]
    cp $26
    jr z, jr_01f_70d8

    inc a
    ld [$cb68], a
    jr jr_01f_70dd

jr_01f_70d8:
    ld a, $00
    ld [$cb68], a

jr_01f_70dd:
    ldh a, [$ff8b]
    and $01
    jr z, jr_01f_711c

    call Call_000_2527
    ld hl, $7297
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
    jr nz, jr_01f_7100

    ld a, b
    call Call_000_25ce
    jr jr_01f_711c

jr_01f_7100:
    cp $02
    jr nz, jr_01f_710a

    ld a, b
    call Call_000_25cb
    jr jr_01f_711c

jr_01f_710a:
    cp $03
    jr nz, jr_01f_7114

    ld a, b
    call Call_000_25c8
    jr jr_01f_711c

jr_01f_7114:
    cp $04
    jr nz, jr_01f_711c

    ld a, b
    call Call_000_25c5

jr_01f_711c:
    ld hl, $7297
    ld a, [$cb68]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld hl, $980a
    call Call_01f_71d9
    ret


Call_01f_7131:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_713d

    cp $10
    jr z, jr_01f_714a

    jr jr_01f_7155

jr_01f_713d:
    ld a, [$ccd3]
    cp $00
    jr z, jr_01f_715e

    dec a
    ld [$ccd3], a
    jr jr_01f_7155

jr_01f_714a:
    ld a, [$ccd3]
    cp $63
    jr z, jr_01f_715e

    inc a
    ld [$ccd3], a

jr_01f_7155:
    ld a, [$ccd3]
    ld hl, $982a
    call Call_01f_720a

jr_01f_715e:
    ld a, $63
    ret


Call_01f_7161:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_716d

    cp $10
    jr z, jr_01f_717a

    jr jr_01f_7185

jr_01f_716d:
    ld a, [$ccd4]
    cp $00
    jr z, jr_01f_718e

    dec a
    ld [$ccd4], a
    jr jr_01f_7185

jr_01f_717a:
    ld a, [$ccd4]
    cp $03
    jr z, jr_01f_718e

    inc a
    ld [$ccd4], a

jr_01f_7185:
    ld a, [$ccd4]
    ld hl, $984a
    call Call_01f_720a

jr_01f_718e:
    ld a, $63
    ret


Call_01f_7191:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_719d

    cp $10
    jr z, jr_01f_71aa

    jr jr_01f_71b5

jr_01f_719d:
    ld a, [$ccd5]
    cp $00
    jr z, jr_01f_71be

    dec a
    ld [$ccd5], a
    jr jr_01f_71b5

jr_01f_71aa:
    ld a, [$ccd5]
    cp $1d
    jr z, jr_01f_71be

    inc a
    ld [$ccd5], a

jr_01f_71b5:
    ld a, [$ccd5]
    ld hl, $986a
    call Call_01f_720a

jr_01f_71be:
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
    jr nz, jr_01f_71f9

    inc l
    dec l
    ld l, $2f
    jr nc, @+$3d

    inc a
    dec a
    ld a, $3f
    ld b, b

Call_01f_71d9:
    push hl
    ld b, a
    srl a
    srl a
    srl a
    srl a
    ld hl, $71c1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ffae], a
    ld a, b
    and $0f
    ld hl, $71c1
    add l
    ld l, a
    ld a, $00

jr_01f_71f9:
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


Call_01f_720a:
    ld b, a
    ld a, [$ccd2]
    cp $04
    jr nc, jr_01f_7213

    inc b

jr_01f_7213:
    ld a, b
    push hl
    ld h, $00
    ld l, a
    call Call_000_325c
    pop hl
    ld a, [$ccd0]
    cp $af
    jr nz, jr_01f_7228

    ld a, $ff
    ld [$ccd0], a

jr_01f_7228:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7228

    ld a, [$ccd0]
    inc a
    ld [hl+], a

jr_01f_7233:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7233

    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_01f_723f:
    ld a, [$ccd2]
    cp $12
    jr nc, jr_01f_7254

    ld a, [$ccd2]
    ld c, $20
    call Multiply8Bit
    ld bc, $9800
    add hl, bc
    jr jr_01f_7262

jr_01f_7254:
    ld a, [$ccd2]
    sub $12
    ld c, $20
    call Multiply8Bit
    ld bc, $988a
    add hl, bc

jr_01f_7262:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7262

    ld a, $7e
    ld [hl], a
    ld a, [$ccd6]
    cp $12
    jr nc, jr_01f_7280

    ld a, [$ccd6]
    ld c, $20
    call Multiply8Bit
    ld bc, $9800
    add hl, bc
    jr jr_01f_728e

jr_01f_7280:
    ld a, [$ccd6]
    sub $12
    ld c, $20
    call Multiply8Bit
    ld bc, $988a
    add hl, bc

jr_01f_728e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_728e

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
    nop
    inc b
    rst $20
    jr nc, jr_01f_72ef

    ld [bc], a
    cpl
    nop

jr_01f_72ef:
    and l
    nop
    ld sp, $0000
    rst $08
    inc d
    dec d
    ld [de], a
    inc de
    cpl
    nop
    jp Jump_000_3400


    dec [hl]
    ccf
    nop
    nop
    inc b
    dec b
    ld [hl+], a
    inc hl
    cpl
    nop
    jp $1b00


    inc h
    dec h
    ld bc, $3204
    inc sp
    cpl
    nop
    jp Jump_000_0300


    inc b
    ld h, e
    db $10
    ld de, $002f
    jp Jump_000_0300


    inc b
    jr nz, jr_01f_7343

    cpl
    nop
    nop
    jp $0f00


    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl

jr_01f_7343:
    nop
    rrca
    inc b
    nop
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    ldh a, [$ff2f]
    nop
    rrca
    inc b
    rrca
    inc b
    ld a, [bc]
    inc b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    xor $0c
    inc b
    ld b, b
    rlca
    ld b, $27
    nop
    ld d, d
    ld d, e
    ld d, h
    dec [hl]
    ld d, l
    add hl, bc
    ld bc, $ed41
    ld [hl], $50
    ld d, c
    cpl
    jr c, jr_01f_73ab

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
    ld a, h
    ld c, [hl]
    add h
    nop
    and b
    ld e, l
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    rra
    nop
    ld a, a
    ld b, a
    ld a, h

jr_01f_73ab:
    ld c, [hl]
    add h
    nop
    ccf
    ld [bc], a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    ccf
    ld [bc], a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    ldh [$ff60], a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    and b
    ld e, l
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    rra
    nop
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    sbc h
    add hl, bc
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    sbc h
    add hl, bc
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    ldh [$ff60], a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    push af
    ld bc, $0000
    dec b
    nop
    call $f500
    ld bc, $0000
    ldh [rP1], a
    ret nz

    ld bc, $01f5
    nop
    nop
    and b
    ld h, l
    call $f500
    ld bc, $0000
    ld h, e
    inc c
    ld c, d
    add hl, hl
    push af
    ld bc, $0000
    rrca
    nop
    call $f500
    ld bc, $0000
    ret nz

    ld bc, $00cd
    call RST_00
    nop
    ret nz

    ld bc, $0005
    push af
    ld bc, $0000
    ret nz

    ld bc, $00cd
    push af
    ld bc, $0000
    dec b
    nop
    call $f500
    ld bc, $0000
    ldh [rP1], a
    ret nz

    ld bc, $01f5
    nop
    nop
    and b
    ld h, l
    call $f500
    ld bc, $0000
    ld h, e
    inc c
    ld c, d
    add hl, hl
    push af
    ld bc, $0000
    rrca
    nop
    call $f500
    ld bc, $0000
    ret nz

    ld bc, $00cd
    call RST_00
    nop
    ret nz

    ld bc, $0005
    push af
    ld bc, $00e0
    ret nz

    ld bc, $0016
    push af
    ld bc, $0000
    dec b
    nop
    call $f500
    ld bc, $0000
    jr z, jr_01f_74a8

jr_01f_74a8:
    xor e
    nop
    push af
    ld bc, $0000
    and b
    ld h, l
    call $f500
    ld bc, $0000
    ld h, e
    inc c
    ld c, d
    add hl, hl
    push af
    ld bc, $0000
    rrca
    nop
    call $f500
    ld bc, $0000
    ret nz

    ld bc, $00cd
    call RST_00
    nop
    ret nz

    ld bc, $0005
    push af
    ld bc, $0000
    ret nz

    ld bc, $2c0b
    rst $30
    ld a, $00
    nop
    rst $00
    inc c
    adc $21
    rst $30
    ld a, $00
    nop
    xor b
    nop
    adc $21
    rst $30
    ld a, $00
    nop
    or b
    ld h, d
    adc $21
    rst $30
    ld a, $00
    nop
    add $0c
    adc $21
    rst $30
    ld a, $00
    nop
    xor b
    nop
    or c
    dec e
    rst $30
    ld a, $00
    nop
    ret nz

    ld bc, $21ce
    adc $21
    nop
    nop
    ret nz

    ld bc, $0cc7
    rst $30
    ld a, $00
    nop
    ret nz

    ld bc, $000f
    ccf
    rra
    ld b, h
    nop
    ld c, a
    dec b
    rla
    ld [de], a
    ccf
    rra
    ldh [rP1], a
    pop hl
    dec b
    jp nz, Jump_000_3f0a

    rra
    add [hl]
    nop
    ld h, c
    ld a, [hl]
    rla
    ld [de], a
    ccf
    rra
    and l
    inc d
    add hl, hl
    dec h
    db $10
    ld b, d
    ccf
    rra
    ld h, $04
    sub a
    nop
    rst $10
    ld hl, $1f3f
    ldh [rP1], a
    jp nz, $170a

    ld [de], a
    rla
    ld [de], a
    and e
    inc b
    jp nz, $4f0a

    dec b
    ccf
    rra
    ldh [rP1], a
    jp nz, $170a

    ld [de], a
    ccf
    rra
    ld b, h
    nop
    ld c, a
    dec b
    rla
    ld [de], a
    ccf
    rra
    ldh [rP1], a
    pop hl
    dec b
    jp nz, Jump_000_3f0a

    rra
    add [hl]
    nop
    ld h, c
    ld a, [hl]
    rla
    ld [de], a
    ccf
    rra
    and l
    inc d
    add hl, hl
    dec h
    db $10
    ld b, d
    ccf
    rra
    ld h, $04
    sub a
    nop
    rst $10
    ld hl, $1f3f
    ldh [rP1], a
    jp nz, $170a

    ld [de], a
    rla
    ld [de], a
    and e
    inc b
    jp nz, $4f0a

    dec b
    ccf
    rra
    ldh [rP1], a
    jp nz, Jump_000_1f0a

    nop
    ccf
    rra
    ld b, h
    nop
    ld c, a
    dec b
    rla
    ld [de], a
    ccf
    rra
    ld h, l
    inc b
    jr nc, jr_01f_75b9

    or e
    dec e
    ccf
    rra
    add [hl]
    nop
    ld h, c
    ld a, [hl]
    rla
    ld [de], a
    ccf
    rra
    and l
    inc d
    add hl, hl
    dec h
    db $10

jr_01f_75b9:
    ld b, d
    ccf
    rra
    ld h, $04
    sub a
    nop
    rst $10
    ld hl, $1f3f
    ldh [rP1], a
    jp nz, $170a

    ld [de], a
    rla
    ld [de], a
    and e
    inc b
    jp nz, $4f0a

    dec b
    ccf
    rra
    ldh [rP1], a
    jp nz, $130a

    ld c, h
    rst $38
    ld e, a
    ld b, h
    nop
    adc l
    ld hl, $3eb6
    rst $38
    ld e, a
    ld h, a
    inc b
    adc a
    ld hl, $3eb6
    rst $38
    ld e, a
    add [hl]
    nop
    sbc b
    ld a, a
    or [hl]
    ld a, $ff
    ld e, a
    and l
    inc d
    adc $2d
    or [hl]
    ld a, $ff
    ld e, a
    ld h, a
    inc b
    adc a
    ld hl, $3eb9
    rst $38
    ld e, a
    ldh [rP1], a
    jp nz, $b60a

    ld a, $b6
    ld a, $a3
    inc b
    jp nz, $8d0a

    ld hl, $5fff
    ldh [rP1], a
    jp nz, $970a

    nop
    nop
    inc b
    jr nc, jr_01f_764d

    ld bc, $001f
    rra
    nop
    add a
    nop
    ld bc, $0d01
    ld bc, $012b
    ld b, b
    rrca
    ld [bc], a
    dec l
    ld bc, $052f
    ld c, a
    ld bc, $020f
    add l
    ld bc, $1f04
    nop
    ld bc, $0f04
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
    dec c
    rrca
    pop bc
    inc bc

jr_01f_764d:
    stop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    ld h, l
    ld [de], a
    ld bc, $0001
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld h, e
    ld d, $c1
    rla
    ld hl, $0f02
    ld [bc], a
    rrca
    ld [bc], a
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
    dec e
    nop
    ld a, h
    ld c, [hl]
    add h
    nop
    and b
    ld e, l
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    rra
    nop
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ccf
    ld [bc], a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    ld a, h
    ld c, [hl]
    add h
    nop
    rla
    ld [de], a
    rst $38
    ld a, a
    ld a, h
    ld c, [hl]
    add h
    nop
    sbc a
    ld e, d
    rst $38
    ld a, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld sp, rWave_7
    ld a, a
    nop
    nop
    ldh [$ff7f], a
    ldh [$ff7f], a
    ldh [$ff7f], a
    nop
    inc b
    add [hl]
    inc de
    nop
    inc b
    inc b
    xor a
    ld bc, $01c7
    ld hl, $9300
    ld [bc], a
    ld bc, $0101
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rst $28
    ld bc, $0227
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    add hl, bc
    ld [bc], a
    ld c, e
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    dec l
    ld a, [bc]
    ld l, c
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, $c5
    add hl, bc
    inc bc
    inc bc
    rrca
    ld a, [bc]
    rrca
    ld [bc], a
    xor a
    dec d
    rst $00
    dec c
    cpl
    ld [bc], a
    nop
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
    add hl, bc
    ld e, $87
    add hl, de
    cpl
    ld a, [de]
    nop
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
    inc de
    nop
    nop
    inc b
    ld bc, $1f04
    nop
    jp Jump_01f_7f00


    ld [bc], a
    adc a
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rra
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec d
    inc c
    cpl
    ld bc, $00ef
    cpl
    ld bc, $0f00
    db $10
    ld c, a
    ld b, $0f
    ld [bc], a
    ld c, a
    ld [$062f], sp
    rrca
    rlca
    ld c, a
    ld bc, $0606
    add hl, bc
    inc bc
    inc bc
    ld [bc], a
    rlc l
    ld bc, $0010
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rlca
    ld b, $30
    call Call_000_0f09
    ld [bc], a
    rrca
    ld [bc], a
    and l
    ld [bc], a
    inc b
    inc b
    ld b, c
    nop
    rst $08
    dec c
    nop
    add hl, bc
    ld [bc], a
    and h
    db $10
    rrca
    inc c
    ld [bc], a
    inc b
    ld l, a
    ld bc, $020f
    rra
    nop
    rrca
    ld [de], a
    nop
    ld l, c
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec bc
    ld [bc], a
    adc c
    add hl, de
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    ld e, $20
    rst $28
    ld bc, $020f
    rrca
    ld [bc], a
    rra
    nop
    sub c
    inc hl
    ld [bc], a
    ccf
    ld bc, $020f
    nop
    ld b, [hl]
    jr jr_01f_782a

    dec e
    pop hl
    rra
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rst $28
    ld [$23e7], sp
    rrca
    ld [$1f00], sp
    nop
    stop
    ld a, h
    ld c, [hl]
    and l
    nop
    ld b, b
    ld a, [bc]
    rst $38
    ld a, a
    ld hl, $7811
    call Call_000_03dd
    ld hl, $751a
    call Call_000_039b
    ld c, $4f
    ld a, $01
    ldh [c], a

jr_01f_782a:
    ld hl, $76e8
    ld c, $1f
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ret


    ld hl, $751a
    call Call_000_039b
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $7777
    ld c, $1f
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ret


jr_01f_7855:
    ldh a, [rLY]

Call_01f_7857:
    cp $67
    jr z, jr_01f_785f

    jr nc, jr_01f_7872

    jr jr_01f_7855

jr_01f_785f:
    ldh a, [rLCDC]
    bit 5, a
    jr z, jr_01f_7871

jr_01f_7865:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7865

    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a

jr_01f_7871:
    ret


jr_01f_7872:
    ret


    ldh a, [rLY]
    cp $8f
    jr z, jr_01f_787c

    ret nc

    jr jr_01f_7872

jr_01f_787c:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_787c

    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, $66
    ldh [rLYC], a
    ret


    ld hl, $739a
    ld a, [$b8db]
    cp $01
    jr z, jr_01f_789a

    ld hl, $73da

jr_01f_789a:
    call Call_000_03ab
    ret


    ld a, [$b882]
    cp $06
    jr c, jr_01f_78ce

    cp $12
    jr nc, jr_01f_78ce

    ld a, [$c0bd]
    cp $01
    jr z, jr_01f_78bd

    cp $02
    jr z, jr_01f_78c2

    cp $03
    jr z, jr_01f_78c7

    ld hl, $751a
    jr jr_01f_78ca

jr_01f_78bd:
    ld hl, $755a
    jr jr_01f_78ca

jr_01f_78c2:
    ld hl, $759a
    jr jr_01f_78ca

jr_01f_78c7:
    ld hl, $75da

jr_01f_78ca:
    call Call_000_039b
    ret


jr_01f_78ce:
    ld a, [$c0bd]
    cp $01
    jr z, jr_01f_78e2

    cp $02
    jr z, jr_01f_78e7

    cp $03
    jr z, jr_01f_78ec

    ld hl, $741a
    jr jr_01f_78ef

jr_01f_78e2:
    ld hl, $745a
    jr jr_01f_78ef

jr_01f_78e7:
    ld hl, $749a
    jr jr_01f_78ef

jr_01f_78ec:
    ld hl, $74da

jr_01f_78ef:
    call Call_000_039b
    ret


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $761a
    ld c, $1f
    ld de, $9800
    call Call_000_31a0
    ld c, $4f
    xor a
    ldh [c], a
    ld a, [$b884]
    cp $01
    jr z, jr_01f_791b

    cp $02
    jr z, jr_01f_7920

    cp $03
    jr z, jr_01f_7925

    ld hl, $751a
    jr jr_01f_7928

jr_01f_791b:
    ld hl, $755a
    jr jr_01f_7928

jr_01f_7920:
    ld hl, $759a
    jr jr_01f_7928

jr_01f_7925:
    ld hl, $75da

jr_01f_7928:
    call Call_000_039b
    ld hl, $76a8
    call Call_000_03ab
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01f_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
