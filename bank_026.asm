; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld h, $cd
    adc d
    ld [hl+], a
    call ClearBGMap1
    call Call_000_323d
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
    ld hl, $7b00
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld hl, $9980
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call CopyHLtoDE
    ld hl, $45a4
    call Call_026_445e
    call Call_026_4376
    ld a, $af
    ld [$cb5c], a
    ld hl, $419b
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $01
    ld [$cd63], a
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld [$cd6e], a
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
    ld a, $07
    ldh [$ff96], a
    ld a, $88
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $22
    call Call_000_25c5
    ld a, $e3
    ld [$c0a2], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld a, $90
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    and h
    ld b, l
    inc d
    ld [bc], a
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_026_41a5
    call Call_026_40d5
    call Call_026_4136
    call Call_026_410c
    ret


Call_026_40d5:
    ld hl, $cd6d
    inc [hl]
    ld a, [$cd6e]
    bit 0, a
    jr z, jr_026_40e3

    bit 4, [hl]
    ret nz

jr_026_40e3:
    ld hl, $44b7
    ld a, [$cd63]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cd6c]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4107
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_026_410c:
    ld a, [$cd6e]
    bit 1, a
    ret z

    ld de, $9c91
    ld b, $ae
    ld a, [$cd6d]
    bit 4, a
    jr nz, jr_026_4121

    ld a, $ae
    ld b, a

jr_026_4121:
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
    ret


Call_026_4136:
    ld a, [$cd63]
    add a
    ld hl, $4167
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $04
    ret c

    push hl
    ld a, [$cd65]
    or a
    jr z, jr_026_4157

    ld bc, $0047
    ld hl, $4175
    call Call_000_20de

jr_026_4157:
    pop hl
    ld a, [$cd65]
    cp [hl]
    ret z

    ld bc, $8848
    ld hl, $417e
    call Call_000_20de
    ret


    dec b
    nop
    ld [$0840], sp
    jr @+$05

    nop
    ld [$0918], sp
    jr nz, @+$0a

    jr jr_026_4176

jr_026_4176:
    nop
    db $eb
    nop
    nop
    ld [$00ec], sp
    add b
    nop
    nop
    db $ed
    nop
    nop
    ld [$00ee], sp
    add b
    pop bc
    ld b, c
    rst $28
    ld b, h
    ld [$7505], sp
    ld b, e
    dec [hl]
    ld b, d
    sub e
    ld b, c
    pop bc
    ld b, c
    and h
    ld b, l
    inc d
    ld [bc], a
    halt
    ld b, e
    rst $28
    ld b, e
    ld b, $44
    inc c
    ld b, a
    jp $0842


    nop

Call_026_41a5:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $41b8
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
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, d
    push hl
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld de, $9821
    call Call_026_4463
    pop hl
    ld a, [hl+]
    ld b, a
    push hl
    or a
    jr z, jr_026_41e2

    ld l, e
    ld h, d
    call Call_026_4200

jr_026_41e2:
    ld hl, $9c42
    ld b, $03
    call Call_026_4200
    ld a, $74
    ldh [rLYC], a
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld bc, $41fb
    push bc
    ld h, d
    ld l, e
    jp hl


    call Call_000_2273
    pop hl
    ret


Call_026_4200:
jr_026_4200:
    ld c, $10
    ld a, [$cb5c]

jr_026_4205:
    ld [hl+], a
    dec c
    jr nz, jr_026_4205

    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_026_4200

    ret


    cp c
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
    cp c
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
    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ld a, [$cd6c]
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


    ldh a, [$ff8b]
    bit 1, a
    jr nz, jr_026_42a6

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_026_4278

    bit 7, a
    jr nz, jr_026_425e

    ret


jr_026_425e:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    inc a
    cp $06
    jr c, jr_026_4270

    dec a
    ld [hl], a
    pop hl
    ret


jr_026_4270:
    ld [hl], a
    ld a, $48
    call Call_000_25ce
    pop hl
    ret


jr_026_4278:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    sub $01
    jr nc, jr_026_4289

    inc a
    ld [hl], a
    pop hl
    ret


jr_026_4289:
    ld [hl], a
    ld a, $48
    call Call_000_25ce
    pop hl
    ret


    push hl
    ld a, $42
    call Call_000_25cb
    pop hl
    ld a, [$cd6c]
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


jr_026_42a6:
    push hl
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ld a, $05
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$c910], a
    ret


    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    ld c, [hl]
    bit 1, a
    jr nz, jr_026_4336

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_026_430b

    bit 7, a
    jr nz, jr_026_42df

    ret


jr_026_42df:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    cp c
    jr nc, jr_026_430a

    inc a
    push af
    ld a, [$cd6c]
    cp $04
    jr c, jr_026_42fc

    ld a, [$cd65]
    add $10
    ld [$cd65], a
    jr jr_026_4300

jr_026_42fc:
    inc a
    ld [$cd6c], a

jr_026_4300:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_25ce
    ret


jr_026_430a:
    ret


jr_026_430b:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    or a
    jr z, jr_026_4335

    dec a
    push af
    ld a, [$cd6c]
    or a
    jr nz, jr_026_4327

    ld a, [$cd65]
    sub $10
    ld [$cd65], a
    jr jr_026_432b

jr_026_4327:
    dec a
    ld [$cd6c], a

jr_026_432b:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_25ce
    ret


jr_026_4335:
    ret


jr_026_4336:
    push hl
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ld a, $05
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$c910], a
    ret


    push hl
    ld a, [$cd6b]
    ld hl, $cd6f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr nz, jr_026_436d

    inc hl
    inc hl
    ld a, $42
    call Call_000_25cb
    ret


jr_026_436d:
    ld a, $51
    call Call_000_25cb
    dec hl
    dec hl
    ret


    ret


Call_026_4376:
    call Call_026_43e5
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $01
    ld [$cd63], a
    ld a, [$b8d2]
    ld hl, $986c
    call Call_026_43d7
    ld a, [sNumPotatoSeeds]
    ld hl, $98ac
    call Call_026_43d7
    ld a, [$b8d4]
    ld hl, $98ec
    call Call_026_43d7
    ld a, [$b8d5]
    ld hl, $992c
    call Call_026_43d7
    ld a, [$b8d6]
    ld hl, $996c
    call Call_026_43d7
    ld a, [$b8d7]
    ld hl, $99ac
    call Call_026_43d7
    ld a, [$b8d8]
    ld hl, $99ec
    call Call_026_43d7
    ld a, [$b8d9]
    ld hl, $9a2c
    call Call_026_43d7
    ld a, [$b8da]
    ld hl, $9a6c
    call Call_026_43d7
    ret


Call_026_43d7:
    push hl
    call Call_000_3304
    pop hl
    ld a, [$ccd0]
    ld [hl+], a
    ld a, [$ccd1]
    ld [hl+], a
    ret


Call_026_43e5:
    ld hl, $cd6f
    ld bc, $000a
    call ZeroOutHL
    ret


    xor a
    ld [$cd6e], a
    push bc
    ld a, $ff
    ld [$cd66], a
    ld hl, $9c42
    ld a, l
    ld [$cd67], a
    ld a, h
    ld [$cd68], a
    pop hl
    ret


    push bc

jr_026_4407:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    ld a, [$cd66]
    inc a
    ld [$cd66], a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $af
    jr z, jr_026_444c

    cp $ff
    jr z, jr_026_445a

    ld c, a
    call Call_000_0924
    ld a, [$cd67]
    ld e, a
    ld a, [$cd68]
    ld d, a
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    inc de
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    ld a, $01
    ld [hl+], a
    ld [hl], c
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


jr_026_444c:
    ld de, $9c81
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    dec bc
    jr jr_026_4407

jr_026_445a:
    pop hl
    inc hl
    inc hl
    ret


Call_026_445e:
    ld de, $9821
    ld b, $14

Call_026_4463:
jr_026_4463:
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
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_026_4463

    ret


    ld de, $99c1
    ld b, $03
    jr jr_026_4463
; probably a label goes here...
    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    push bc
    ld b, h
    pop de
    ld b, h
    db $db
    ld b, h
    rst $20
    ld b, h
    pop de
    ld b, h
    db $db
    ld b, h
    db $db
    ld b, h
    ld [$0818], sp
    inc h
    ld [$0830], sp
    inc a
    ld [$0848], sp
    ld d, h
    ld [$0810], sp
    jr z, jr_026_44de

    ld b, b
    ld [$0858], sp
    ld [hl], b
    db $10
    jr jr_026_44ee

jr_026_44de:
    inc h
    db $10
    jr nc, jr_026_44f2

    inc a
    db $10
    ld c, b
    db $10
    ld d, h
    db $10
    jr jr_026_44fa

    inc h
    db $10
    jr nc, jr_026_44fe

jr_026_44ee:
    inc a
    ld b, $2b
    ld a, [de]

jr_026_44f2:
    daa
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28
    inc de
    jr z, jr_026_4522

jr_026_44fa:
    dec h
    rst $28
    ld b, $2e

jr_026_44fe:
    ld [hl+], a
    dec e
    ld e, $af
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
    xor a
    xor a
    xor a
    xor a
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_4522:
    rst $28
    rst $28
    rst $28
    rst $28
    inc bc
    ld e, $2f
    ld e, $25
    jr z, jr_026_4556

    ld h, $1e
    daa
    dec l
    rst $28
    inc de
    jr z, jr_026_455d

    dec h
    inc l
    rst $28
    ld [bc], a
    dec hl
    jr z, jr_026_4565

    rst $28
    inc de
    jr z, jr_026_4568

    dec h
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    nop
    daa
    ld [hl+], a
    ld h, $1a
    dec h
    rst $28
    ld b, $28
    jr z, @+$1f

    inc l

jr_026_4556:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec b

jr_026_455d:
    jr z, jr_026_4587

    dec e
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_026_4565:
    inc bc
    dec hl
    ld [hl+], a

jr_026_4568:
    daa
    inc h
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $2d
    ld hl, $2b1e
    rst $28
    inc de
    jr z, jr_026_459f

    dec h
    inc l
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

jr_026_4587:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    xor a
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

jr_026_459f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
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
    inc de
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl
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
    ld [de], a
    ld e, $1e
    dec e
    inc l

jr_026_45d1:
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_4606

    rst $28
    rrca
    jr z, jr_026_460b

    ld a, [de]
    dec l
    jr z, jr_026_45d1

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
    ld [de], a
    ld e, $1e
    dec e
    inc l

jr_026_45f5:
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_462a

    rst $28
    inc de
    jr z, jr_026_4628

    ld a, [de]
    dec l
    jr z, jr_026_45f5

jr_026_4606:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_460b:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_464e

    rst $28
    ld [bc], a
    jr z, jr_026_4651

    daa
    rst $28

jr_026_4628:
    rst $28
    rst $28

jr_026_462a:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_4672

    rst $28
    inc b
    jr nz, jr_026_466a

    add hl, hl
    dec h
    ld a, [de]
    daa

jr_026_464e:
    dec l
    rst $28
    rst $28

jr_026_4651:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_4696

jr_026_466a:
    rst $28
    rrca
    ld e, $1a
    daa
    ld l, $2d
    rst $28

jr_026_4672:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_46ba

    rst $28
    ld [bc], a
    ld a, [de]
    dec hl
    dec hl
    jr z, jr_026_46c2

    rst $28

jr_026_4696:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_46de

    rst $28
    ld bc, $282b
    inc e
    inc e
    jr z, jr_026_46df

jr_026_46ba:
    ld [hl+], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_46c2:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_4702

    rst $28
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28

jr_026_46de:
    rst $28

jr_026_46df:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_026_4726

    ld b, $2b
    ld a, [de]
    daa
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28

jr_026_4702:
    inc de
    jr z, jr_026_472d

    dec h
    rst $28
    ld b, $2e
    ld [hl+], a
    dec e
    ld e, $ef
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
    xor a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_4726:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_472d:
    rst $28
    rst $28
    rst $38
    ldh a, [rLY]
    cp $90
    jr nc, jr_026_4767

    ld hl, $4774
    ld a, [$cd64]
    cp $0b
    jr nc, jr_026_4767

    add a
    add a
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld b, [hl]
    inc hl

jr_026_4749:
    ldh a, [rLY]
    cp b
    jr nz, jr_026_4749

    ld a, [hl+]
    ldh [rSCY], a
    ld b, [hl]
    inc hl

jr_026_4753:
    ldh a, [rLY]
    cp b

jr_026_4756:
    jr nz, jr_026_4753

    ld a, [$cd65]
    add [hl]
    ldh [rSCY], a

jr_026_475e:
    inc hl
    ld a, [hl]
    ldh [rLYC], a
    ld hl, $cd64
    inc [hl]
    ret


jr_026_4767:
    xor a
    ld [$cd64], a
    ldh a, [$ff91]
    ldh [rSCY], a
    ld a, $0a
    ldh [rLYC], a
    ret


    inc c
    ldh a, [rNR10]
    nop
    ld d, $00
    nop
    nop
    jr jr_026_475e

    inc e
    db $fc

jr_026_4780:
    ld [hl+], a
    nop
    nop
    nop
    inc h
    ret c

    jr z, jr_026_4780

    ld l, $00
    nop
    nop
    jr nc, jr_026_4756

    inc [hl]
    db $f4
    ld a, [hl-]
    nop
    nop
    nop
    inc a
    ret nz

    ld b, b
    ldh a, [rDMA]
    nop
    nop
    nop
    ld c, b
    or b
    ld c, h
    db $ec
    ld d, d
    nop
    nop
    nop
    ld d, h
    xor b
    ld e, b
    add sp, $5e
    nop
    nop
    nop
    ld h, b
    sbc b
    ld h, h
    db $e4
    ld l, d
    nop
    nop
    nop
    ld l, h
    sub b
    ld [hl], b
    ldh [rPCM12], a
    nop
    nop
    nop
    ld a, b
    add b
    ld a, h
    call c, $0082
    nop
    nop
    add h
    ld a, b
    adc b
    nop
    sub b
    nop
    nop
    nop
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $6dd4
    ld c, $29
    ld de, $8800
    call Call_000_31a0
    ld hl, $7d52
    ld c, $22
    ld de, $9000
    call Call_000_31a0
    ld hl, $728d
    ld c, $29
    ld de, $8000
    call Call_000_31a0
    ld hl, $7d8a
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    call Call_026_4865
    ld de, $48bc
    call Call_000_22d9
    ld hl, $99c0
    ld bc, $0060
    call ZeroOutHL
    ld hl, $495c
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $4f25
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
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
    ld a, $4d
    call Call_000_25c5
    ld a, $87
    ld [$c0a2], a
    ld a, $06
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $ff
    ld [$cda5], a
    ld a, $ff
    ld [$cda6], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_026_4865:
    ld de, $9400
    ld b, $18
    xor a

jr_026_486b:
    push af
    push bc
    ld hl, $488c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_026_4883
    pop bc
    pop af
    inc a
    inc a
    dec b
    jr nz, jr_026_486b

Call_026_4883:
    ld a, $31
    ld bc, $0010
    call Call_000_2308
    ret


    ld d, c
    ld b, e
    pop de
    ld b, e
    or c
    ld b, e
    pop bc
    ld b, e
    ld d, c
    ld b, c
    add c
    ld b, b
    ld hl, $3140
    ld b, c
    pop hl
    ld b, b
    ld de, $f141
    ld c, [hl]
    pop de
    ld b, b
    ld b, c
    ld b, b
    ld bc, $5140
    ld b, b
    ld hl, $6141
    ld b, c
    ld b, c
    ld b, c
    pop bc
    ld b, b
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    sbc h
    ld l, b
    inc b
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    sbc h
    and a
    ld b, $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    sbc h
    db $e4
    dec bc
    ld b, l
    ld c, e
    ld b, a
    ld c, h
    ld c, c
    ld c, l
    ld b, [hl]
    ld b, a
    ld b, l
    ld b, h
    ld c, h
    sbc l
    inc h
    inc c
    ld c, a
    ld c, b
    ld c, [hl]
    ld b, a
    ld d, b
    ld c, l
    ld c, c
    ld c, h
    ld c, d
    ld b, l
    ld c, e
    ld b, [hl]
    nop
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld hl, $cda7
    inc [hl]
    call Call_026_4e95
    call Call_026_4e75
    call Call_026_4db5
    call Call_026_4907
    ret


Call_026_4907:
    ld a, [$cdaa]
    inc a
    ret z

    ld hl, $4944
    ld a, [sPlayerGender]
    or a
    jr z, jr_026_4918

    ld hl, $494c

jr_026_4918:
    ld a, [$cdab]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_026_4922:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    ld b, $68
    call Call_000_20de
    ld hl, $4954
    ld a, [$cdad]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $50
    ld b, $68
    call Call_000_20de
    ret


    adc d
    ld d, e
    or a
    ld d, e
    adc d
    ld d, e
    add sp, $53
    cp h
    ld d, h
    pop hl
    ld d, h
    cp h
    ld d, h
    ld b, $55
    add hl, de
    ld d, h
    ld d, d
    ld d, h
    add hl, de
    ld d, h
    add a
    ld d, h
    add [hl]
    ld c, l
    nop
    nop
    nop
    nop
    jr c, jr_026_49b1

    ccf
    ld c, l
    ld [$4d86], sp
    inc b
    inc b
    inc b
    ld d, l
    jr c, @+$4f

    ccf
    ld c, l
    ld [$4d86], sp
    jr jr_026_498e

    jr jr_026_4922

    jr c, jr_026_49c7

    ccf
    ld c, l
    ld [$4d86], sp
    ld l, h
    inc l
    inc l
    rst $38
    jr c, jr_026_49d2

    ccf
    ld c, l
    ld [$4d38], sp
    ccf
    ld c, l
    ret z

    or c

jr_026_498e:
    ld c, [hl]
    ret nz

    ld c, a
    ld c, $4f
    ld c, h
    ld c, l
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    jp z, $0e4f

    ld c, a
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    jr c, jr_026_49ff

    ld c, $4f

jr_026_49b1:
    ld d, h
    ld c, l
    ld [$544c], sp
    ld c, l
    add c
    ld c, h
    or c
    ld c, [hl]
    call nc, $0e4f
    ld c, a
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h

jr_026_49c7:
    or c
    ld c, [hl]
    ld b, d
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ld [$544c], sp

jr_026_49d2:
    ld c, l
    add c
    ld c, h
    or c
    ld c, [hl]
    sbc $4f
    ld c, $4f
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    ld c, h
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ld [$544c], sp
    ld c, l
    add c
    ld c, h
    or c
    ld c, [hl]
    add sp, $4f
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    ld d, [hl]
    ld d, b

jr_026_49ff:
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    ld h, b
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    ldh a, [c]
    ld c, a
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    ld l, d
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    ld [hl], h
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    ld a, [hl]
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    adc b
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    sub d
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    db $fc
    ld c, a
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    sbc h
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    and [hl]
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    ld b, $50
    ld c, $4f
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    or b
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    cp d
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ldh [c], a
    ld c, e
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    db $10
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    call nz, Call_000_0e50
    ld c, a
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    ld a, [de]
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    adc $50
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h

jr_026_4ae3:
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    ret c

    ld d, b
    ld c, $4f
    ld d, h

jr_026_4aee:
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c
    ld c, [hl]
    ldh [c], a
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l

jr_026_4b01:
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    inc h

jr_026_4b06:
    ld d, b
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    db $ec
    ld d, b

jr_026_4b11:
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    xor b
    ld c, h
    or c

jr_026_4b1c:
    ld c, [hl]
    or $50
    ld c, $4f
    ld d, h
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    or c
    ld c, [hl]
    ld l, $50
    ld c, $4f
    ld d, h
    ld c, l
    ld [$b14c], sp
    ld c, [hl]
    nop
    ld d, c
    ld c, $4f
    ld d, h

jr_026_4b3a:
    ld c, l
    cpl
    ld c, h
    ld d, h
    ld c, l
    ld d, [hl]
    ld c, h
    jr c, jr_026_4b90

    ccf
    ld c, l
    sub [hl]
    add [hl]
    ld c, l
    ld l, h
    inc e
    inc e
    rst $38
    jr c, jr_026_4b9b

    ccf
    ld c, l
    jr nz, @-$78

    ld c, l
    jr jr_026_4b6d

    jr jr_026_4b01

    jr c, jr_026_4ba6

    ccf
    ld c, l
    jr nz, jr_026_4ae3

    ld c, l
    inc b
    inc b
    inc b
    ld d, l

jr_026_4b62:
    jr c, jr_026_4bb1

    ccf
    ld c, l

jr_026_4b66:
    jr nz, jr_026_4aee

    ld c, l
    nop
    nop
    nop
    nop

jr_026_4b6d:
    jr c, jr_026_4bbc

    ccf
    ld c, l
    jr nz, jr_026_4b62

    ld c, h
    add [hl]
    ld c, l
    nop
    nop
    nop
    nop
    jr c, jr_026_4bc9

    ccf
    ld c, l
    jr nz, jr_026_4b06

    ld c, l
    inc b
    inc b
    inc b
    ld d, l
    jr c, jr_026_4bd4

    ccf
    ld c, l
    jr nz, jr_026_4b11

    ld c, l
    jr jr_026_4ba6

    jr jr_026_4b3a

jr_026_4b90:
    jr c, jr_026_4bdf

    ccf
    ld c, l
    jr nz, jr_026_4b1c

    ld c, l
    ld l, h
    inc e
    inc e
    rst $38

jr_026_4b9b:
    jr c, jr_026_4bea

    ccf
    ld c, l
    jr nz, jr_026_4bd9

    ld c, l
    ccf
    ld c, l
    ld h, h
    rst $08

jr_026_4ba6:
    ld c, h
    ld d, h
    ld c, l
    ld e, e
    ld c, h
    add [hl]
    ld c, l
    ld l, h
    inc e
    inc e
    rst $38

jr_026_4bb1:
    jr c, jr_026_4c00

    ccf
    ld c, l
    ld [$4d86], sp
    jr jr_026_4bd2

    jr jr_026_4b66

jr_026_4bbc:
    jr c, jr_026_4c0b

    ccf
    ld c, l
    ld [$4d86], sp
    inc b
    inc b
    inc b
    ld d, l
    jr c, jr_026_4c16

jr_026_4bc9:
    ccf
    ld c, l
    ld [$4d86], sp
    nop
    nop
    nop
    nop

jr_026_4bd2:
    jr c, @+$4f

jr_026_4bd4:
    ccf
    ld c, l
    ld [$4cd9], sp

jr_026_4bd9:
    jr jr_026_4c2a

    reti


    ld c, e
    jr c, jr_026_4c2c

jr_026_4bdf:
    ccf
    ld c, l
    ret z

    sbc h
    ld c, l
    rst $38
    rst $38
    jr c, jr_026_4c35

    ccf
    ld c, l

jr_026_4bea:
    ld a, [bc]
    sbc h
    ld c, l
    ei
    ei
    jr c, jr_026_4c3e

    ccf
    ld c, l
    ld a, [bc]
    sbc h
    ld c, l
    rst $30
    rst $30
    jr c, jr_026_4c47

    ccf
    ld c, l
    ld a, [bc]
    sbc h
    ld c, l
    di

jr_026_4c00:
    di
    jr c, @+$4f

    ccf
    ld c, l
    ld a, [bc]
    ld h, l
    ld c, l
    jr c, @+$4f

    ccf

jr_026_4c0b:
    ld c, l
    ld h, h
    and a
    ld c, l
    rst $38
    jr c, jr_026_4c5f

    ccf
    ld c, l
    ld a, [bc]
    and a

jr_026_4c16:
    ld c, l
    ei
    jr c, jr_026_4c67

    ccf
    ld c, l
    ld a, [bc]
    and a
    ld c, l
    rst $30
    jr c, jr_026_4c6f

    ccf
    ld c, l
    ld a, [bc]
    and a
    ld c, l
    di
    jr c, jr_026_4c77

jr_026_4c2a:
    ccf
    ld c, l

jr_026_4c2c:
    ld a, [bc]
    ld h, l
    ld c, l
    jr c, jr_026_4c7e

    ccf
    ld c, l
    ld h, h
    xor [hl]

jr_026_4c35:
    ld c, l
    rst $38
    jr c, jr_026_4c86

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l

jr_026_4c3e:
    ei
    jr c, jr_026_4c8e

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l
    rst $30

jr_026_4c47:
    jr c, jr_026_4c96

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l
    di
    jr c, jr_026_4c9e

    ccf
    ld c, l
    ld a, [bc]
    ld h, l
    ld c, l
    jr c, jr_026_4ca5

    ccf
    ld c, l
    ret z

    sbc h
    ld c, l
    di
    di

jr_026_4c5f:
    jr c, jr_026_4cae

    ccf
    ld c, l
    ld a, [bc]
    sbc h
    ld c, l
    rst $30

jr_026_4c67:
    rst $30
    jr c, jr_026_4cb7

    ccf
    ld c, l
    ld a, [bc]
    sbc h
    ld c, l

jr_026_4c6f:
    ei
    ei
    jr c, jr_026_4cc0

    ccf
    ld c, l
    ld a, [bc]
    sbc h

jr_026_4c77:
    ld c, l
    rst $38
    rst $38
    jr c, @+$4f

    ccf
    ld c, l

jr_026_4c7e:
    ld a, [bc]
    ld h, l
    ld c, l
    jr c, jr_026_4cd0

    ccf
    ld c, l
    ret z

jr_026_4c86:
    and a
    ld c, l
    di
    jr c, jr_026_4cd8

    ccf
    ld c, l
    ld a, [bc]

jr_026_4c8e:
    and a
    ld c, l
    rst $30
    jr c, @+$4f

    ccf
    ld c, l
    ld a, [bc]

jr_026_4c96:
    and a
    ld c, l
    ei
    jr c, @+$4f

    ccf
    ld c, l
    ld a, [bc]

jr_026_4c9e:
    and a
    ld c, l
    rst $38
    jr c, jr_026_4cf0

    ccf
    ld c, l

jr_026_4ca5:
    ld a, [bc]
    ld h, l
    ld c, l
    jr c, @+$4f

    ccf
    ld c, l
    ret z

    xor [hl]

jr_026_4cae:
    ld c, l
    di
    jr c, @+$4f

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l

jr_026_4cb7:
    rst $30
    jr c, jr_026_4d07

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l
    ei

jr_026_4cc0:
    jr c, @+$4f

    ccf
    ld c, l
    ld a, [bc]
    xor [hl]
    ld c, l
    rst $38
    jr c, jr_026_4d17

    ccf
    ld c, l
    ld a, [bc]
    ld h, l
    ld c, l
    ld h, b

jr_026_4cd0:
    ld l, c
    ldh a, [$ff8b]
    and $03
    ret nz

    dec hl
    dec hl

jr_026_4cd8:
    ret


    push bc
    ld a, $00
    ldh [rSTAT], a
    xor a
    ld [$cb56], a
    inc a
    ld [$c910], a
    ld [$c0a6], a
    inc a
    ld [$c0a7], a
    pop hl
    ret


    push bc

jr_026_4cf0:
    xor a
    ldh [rSTAT], a
    ld a, [$c0a2]
    xor $08
    and $fd
    ld [$c0a2], a
    ld b, a
    ld hl, $ff40

jr_026_4d01:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4d01

jr_026_4d07:
    ld [hl], b
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld [$cda2], a
    ld [$cda4], a
    dec a
    ld [$cdaa], a

jr_026_4d17:
    ld a, [$dd00]
    or a
    jr z, jr_026_4d26

    ld hl, $4d28
    call Call_000_23e9
    call Call_000_2424

jr_026_4d26:
    pop hl
    ret


    ld sp, $0140
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
    ld h, b
    ld l, c
    xor a
    ld [$cda7], a
    ret


    ld h, b
    ld l, c
    ld a, [$cda7]
    cp [hl]
    jr c, jr_026_4d49

    inc hl
    ret


jr_026_4d49:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $1e
    call Call_000_25c5
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$cda8], a
    ld a, h
    ld [$cda9], a
    ld l, e
    ld h, d
    ret


    ld hl, $cda8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, b
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


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$c0a3], a
    ld a, [hl+]
    ld [$c0a4], a
    ld a, [hl+]
    ld [$c0a5], a
    ld a, [hl+]
    ld [$cda5], a
    ld [$cda6], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda5], a
    ld a, [hl+]
    ld [$cda6], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda5], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda6], a
    ret


Call_026_4db5:
    ld a, [$cdaa]
    inc a
    ret z

    ld hl, $cda1
    ld b, $18
    call Call_026_4f1e
    jr nz, jr_026_4dc6

    inc hl
    dec [hl]

jr_026_4dc6:
    ld hl, $cda3
    ld b, $08
    call Call_026_4f1e
    jr nz, jr_026_4dd2

    inc hl
    dec [hl]

jr_026_4dd2:
    ld hl, $cdaa
    ld b, $10
    call Call_026_4f1e
    ld b, $04
    inc hl
    call z, Call_026_4f1e
    inc hl
    ld b, $10
    call Call_026_4f1e
    ld b, $04
    inc hl
    call z, Call_026_4f1e
    ret


    ldh a, [rLY]
    cp $86
    jr nc, jr_026_4e5f

    cp $76
    jr nc, jr_026_4e45

    cp $6e
    jr nc, jr_026_4e2b

    cp $15
    jr nc, jr_026_4e15

jr_026_4dff:
    ldh a, [rLY]
    cp $07
    jr nz, jr_026_4dff

jr_026_4e05:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4e05

    ld a, [$cda2]
    ldh [rSCX], a
    ld a, $15
    ldh [rLYC], a
    ret


jr_026_4e15:
    ldh a, [rLY]
    cp $16
    jr nz, jr_026_4e15

jr_026_4e1b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4e1b

    ld a, [$cda4]
    ldh [rSCX], a
    ld a, $6e
    ldh [rLYC], a
    ret


jr_026_4e2b:
    ldh a, [rLY]
    cp $6f
    jr nz, jr_026_4e2b

jr_026_4e31:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4e31

    ldh a, [$ff93]
    ldh [rSCX], a
    ld a, [$cda5]
    ldh [rBGP], a
    ld a, $76
    ldh [rLYC], a
    ret


jr_026_4e45:
    ldh a, [rLY]
    cp $77
    jr nz, jr_026_4e45

jr_026_4e4b:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4e4b

    ldh a, [$ff93]
    ldh [rSCX], a
    ld a, [$cda6]
    ldh [rBGP], a
    ld a, $86
    ldh [rLYC], a
    ret


jr_026_4e5f:
    ldh a, [rLY]
    cp $87
    jr nz, jr_026_4e5f

jr_026_4e65:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_026_4e65

    ld a, [$c0a3]
    ldh [rBGP], a
    ld a, $06
    ldh [rLYC], a
    ret


Call_026_4e75:
    ld hl, $cd6c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4e88
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


Call_026_4e95:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4ea8
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
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ret


    ld h, b
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


    push bc
    ld hl, $99c2
    ld b, $04

jr_026_4ed9:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_026_4ed9

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_026_4ed9

    ld hl, $9a02
    ld b, $04

jr_026_4eee:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_026_4eee

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_026_4eee

    pop hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6b], a
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6b]
    or a
    ret nz

    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_026_4f1e:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    ld [$254f], sp
    ld c, a
    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_026_4f90

jr_026_4f39:
    push af
    inc de
    ld a, e
    ld [$cd70], a
    ld a, d
    ld [$cd71], a
    pop af
    ld c, a
    ld a, [$cd6f]
    ld e, a
    push af
    inc a
    ld [$cd6f], a
    ld hl, $4001
    ld d, $31
    call Call_000_096c
    pop af
    ld b, a
    ld de, $99c2
    cp $70
    jr c, jr_026_4f62

    ld de, $99f2

jr_026_4f62:
    sub $60
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
    ld [hl], b
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
    jr z, jr_026_4f8b

    dec hl
    dec hl
    ret


jr_026_4f8b:
    xor a
    ld [$cd98], a
    ret


jr_026_4f90:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_026_4fa8

    ld a, [de]
    cp $af
    jr nz, jr_026_4f39

    jr jr_026_4f90

jr_026_4fa8:
    pop hl
    xor a
    ld [$cd98], a
    ret


    db $d3
    ld c, [hl]
    add hl, hl
    ld c, a
    nop
    ld c, a
    ld [$b44f], sp
    ld c, a
    add hl, hl
    ld c, a
    nop
    ld c, a
    ld [$bc4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [bc]
    ld d, c
    jr nz, jr_026_5026

    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [hl+]
    ld d, c
    jr nz, jr_026_5030

    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld e, d
    ld d, c
    jr nz, jr_026_503a

    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    adc d
    ld d, c
    jr nz, jr_026_5044

    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    cp d
    ld d, c
    db $10
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld [$1051], a
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld c, d
    ld d, d
    db $10
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, d
    ld d, d
    jr nz, jr_026_506c

    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    jp c, Jump_000_1052

    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [$1052]
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]

jr_026_5026:
    ld a, [hl-]
    ld d, e
    db $10
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]

jr_026_5030:
    ld l, d
    ld d, e
    db $10
    ld h, b
    ld [$ae4f], sp
    ld c, a
    ret nz

    ld c, [hl]

jr_026_503a:
    ld c, d
    ld d, c
    db $10
    ld h, b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]

jr_026_5044:
    ld a, d
    ld d, c
    db $10
    ld h, b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    xor d
    ld d, c
    db $10
    ld h, b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    jp z, $1051

    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    jp c, $1051

    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]

jr_026_506c:
    ld a, [$1051]
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [bc]
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [de]
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [hl+]
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [hl-]
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld e, d
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld l, d
    ld d, d
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    sbc d
    ld d, d
    jr nz, jr_026_5116

    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    cp d
    ld d, d
    jr nz, jr_026_5120

    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld [$1052], a
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [bc]
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [de]
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, [hl+]
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld c, d
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld e, d
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    ret nz

    ld c, [hl]
    ld a, d
    ld d, e
    db $10
    ld [hl], b
    ld [$b84f], sp
    ld c, a
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    inc c
    jr z, jr_026_513d

    daa

jr_026_5116:
    rst $28
    ld b, $01
    rst $28
    rst $28
    ld [de], a
    dec l
    ld a, [de]
    rra
    rra

jr_026_5120:
    rst $28
    ld [bc], a
    dec hl
    ld e, $1d
    ld [hl+], a
    dec l
    inc l
    rst $28
    rst $28
    inc b
    ld sp, $1c1e
    ld l, $2d
    ld [hl+], a
    cpl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_513d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    dec hl
    jr z, jr_026_5163

    ld l, $1c
    ld e, $2b
    ld [de], a
    ld e, $22
    ld [hl+], a
    inc e
    ld hl, $ef22
    ld a, [bc]
    ld [hl+], a
    dec e
    ld l, $ef
    rst $28
    rst $28
    rst $28
    ld c, $2b
    ld [hl+], a
    jr nz, jr_026_5181

    daa
    ld a, [de]
    dec h
    rst $28

jr_026_5163:
    add hl, hl
    dec h
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_026_5172:
    rrca
    dec hl
    jr z, jr_026_5193

    ld l, $1c
    ld e, $2b
    jr jr_026_5196

    inc l
    ld l, $21
    ld [hl+], a
    dec hl

jr_026_5181:
    jr z, jr_026_5172

    ld d, $1a
    dec e
    ld a, [de]
    rst $28
    rst $28
    rst $28
    ld [bc], a
    ld hl, $2b1a
    ld a, [de]
    inc e
    dec l
    ld e, $2b

jr_026_5193:
    rst $28
    rst $28
    rst $28

jr_026_5196:
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
    ld [$1a26], sp
    jr nz, jr_026_51ca

    daa
    ld e, $0c
    ld a, [de]
    dec l
    ld l, $32
    ld a, [de]
    ld h, $1a
    ld [hl+], a
    jr nz, jr_026_51e3

    inc l
    ld a, [de]
    rst $28
    rst $28
    rst $28
    ld [de], a
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    rst $28
    inc de
    ld hl, $271a
    inc h
    inc l
    rst $28
    rst $28

jr_026_51ca:
    inc de
    jr z, jr_026_51f3

    jr z, jr_026_51f5

    ld [hl+], a

jr_026_51d0:
    rst $28
    jr @+$1c

    ld h, $1a
    dec e
    ld a, [de]
    dec l
    ld e, $ef
    ld [de], a
    ld e, $2d
    ld l, $24
    jr z, jr_026_51d0

    inc c
    ld [hl+], a

jr_026_51e3:
    ld [hl-], a
    ld a, [de]
    inc h
    jr z, jr_026_5214

    ld hl, $0f22
    dec hl
    jr z, jr_026_5214

    jr z, jr_026_521d

    ld [hl+], a
    jr z, jr_026_521a

jr_026_51f3:
    rst $28

jr_026_51f4:
    rst $28

jr_026_51f5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_026_5216

    inc l
    ld l, $28
    rst $28

jr_026_5200:
    ld c, $21
    daa
    jr z, jr_026_51f4

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld a, [de]
    dec hl
    ld [hl+], a
    inc h
    jr z, jr_026_5200

    ld [$212c], sp

jr_026_5214:
    ld [hl+], a
    inc h

jr_026_5216:
    ld a, [de]
    jr nc, jr_026_5233

    rst $28

jr_026_521a:
    nop
    inc h
    ld [hl+], a

jr_026_521d:
    daa
    jr z, jr_026_524b

    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $24
    ld [hl+], a
    daa
    ld e, $ef
    rst $28
    add hl, bc
    ld l, $27
    ld [hl+], a
    inc e

jr_026_522f:
    ld hl, $ef22
    ld a, [bc]

jr_026_5233:
    ld l, $2d
    ld l, $33
    ld a, [de]
    jr nc, jr_026_5254

    inc de
    jr z, jr_026_5263

    ld [hl+], a
    jr z, jr_026_522f

    ld a, [bc]
    ld a, [de]
    daa
    ld a, [de]
    inc sp
    ld a, [de]
    jr nc, jr_026_5262

    rst $28
    rst $28
    rrca

jr_026_524b:
    ld l, $1b
    dec h
    ld [hl+], a
    inc e
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_5254:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [bc]
    jr z, jr_026_528b

    inc hl
    ld [hl+], a
    rst $28
    ld [de], a
    ld a, [de]

jr_026_5262:
    ld [hl+], a

jr_026_5263:
    dec l
    jr z, jr_026_5294

    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld [hl+], a
    inc h
    ld [hl+], a
    rst $28
    inc c
    ld [hl+], a
    ld [hl-], a
    ld a, [de]
    jr nz, jr_026_5297

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc d
    ld [de], a
    nop
    rst $28
    nop
    dec e
    cpl
    ld [hl+], a
    inc l
    jr z, jr_026_52b0

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_528b:
    rst $28
    rst $28
    rst $28

jr_026_528e:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_5294:
    rst $28
    rst $28
    rst $28

jr_026_5297:
    rst $28
    rst $28
    rst $28
    rlca
    ld [hl+], a
    dec hl
    jr z, jr_026_528e

    inc c
    ld a, [de]
    ld e, $24
    ld a, [de]
    jr nc, jr_026_52c0

    adc [hl]
    rst $28
    rst $28
    rst $28
    dec c
    nop
    inc de
    ld [de], a
    inc d
    inc c

jr_026_52b0:
    inc b
    rst $28
    ld [$020d], sp
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]
    ld hl, $261a

jr_026_52c0:
    rst $28
    ld de, $271e
    daa
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    nop
    inc de
    ld [de], a
    inc d
    inc c
    inc b
    rst $28
    ld [$020d], sp
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_026_5305

    dec hl
    dec e
    ld [hl+], a
    daa
    ld a, [de]
    dec l
    jr z, jr_026_5310

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld de, $221e
    ld [hl-], a
    ld a, [de]
    rst $28
    dec c
    ld e, $1d
    ld a, [de]
    inc e
    ld hl, $ef22
    rst $28
    rst $28
    rrca
    dec hl
    jr z, @+$22

    dec hl
    ld a, [de]
    ld h, $1e
    dec hl
    rst $28
    rst $28

jr_026_5305:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld hl, $2722
    rst $28
    ld [de], a

jr_026_5310:
    ld hl, $2722
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, @+$1d

    ld l, $32
    ld a, [de]
    inc l
    ld l, $ef
    ld c, $27
    ld [hl+], a
    jr nz, jr_026_5342

    jr nc, jr_026_5344

    ld [bc], a
    ld [hl-], a
    ld l, $2e
    inc l
    jr z, jr_026_5358

    inc hl
    ld [hl+], a
    rst $28
    ld a, [bc]
    ld [hl+], a
    ld [hl-], a
    jr z, jr_026_5366

    jr z, jr_026_533e

    ld e, $2c
    ld [hl+], a

jr_026_533e:
    jr nz, jr_026_5367

    ld e, $2b

jr_026_5342:
    rst $28
    rst $28

jr_026_5344:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld [hl+], a
    dec hl
    jr z, jr_026_533e

    jr jr_026_537f

    ld l, $24
    ld [hl+], a
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_5358:
    rst $28
    rst $28
    jr @+$2a

    inc l
    ld [hl+], a
    ld [hl+], a
    ld e, $26
    ld a, [de]
    dec hl
    ld l, $ef
    rst $28

jr_026_5366:
    rst $28

jr_026_5367:
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_026_5393

    add hl, hl
    jr z, jr_026_539c

    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_026_5378:
    rst $28
    rst $28
    jr jr_026_53a4

    ld l, $23
    ld [hl+], a

jr_026_537f:
    dec hl
    jr z, @+$30

    rst $28
    ld c, $24
    ld [hl+], a
    daa
    jr z, jr_026_5378

    rst $28
    ldh a, [c]
    rrca
    sub h
    nop
    ldh a, [c]
    rlca
    sub d
    nop
    ldh a, [c]

jr_026_5393:
    rst $38
    sub b
    nop
    ldh [c], a
    rla
    adc [hl]
    nop
    ldh [c], a
    rrca

jr_026_539c:
    adc h
    nop
    ldh [c], a
    rlca
    adc d
    nop
    ldh [c], a
    rst $38

jr_026_53a4:
    adc b
    nop
    jp nc, $8617

    nop
    jp nc, $840f

    nop
    jp nc, $8207

    nop
    jp nc, $80ff

    nop
    add b
    di
    rla
    xor d
    nop
    di
    rrca
    xor b
    nop
    di
    rlca
    and [hl]
    nop
    di
    rst $38
    and h
    nop
    db $e3
    rla
    and d
    nop
    db $e3
    rrca
    and b
    nop
    db $e3
    rlca
    sbc [hl]
    nop
    db $e3
    rst $38
    sbc h
    nop
    db $d3
    rla
    sbc d
    nop
    db $d3
    rrca
    add h
    nop
    db $d3
    rlca
    sbc b
    nop
    db $d3
    rst $38
    sub [hl]
    nop
    add b
    di
    rla
    cp d
    nop
    di
    rrca
    cp b
    nop
    di
    rlca
    or [hl]
    nop
    di
    rst $38
    or h
    nop

jr_026_53f8:
    db $e3
    rla
    or d
    nop
    db $e3
    rrca
    or b
    nop
    db $e3
    rlca
    xor [hl]
    nop
    db $e3
    rst $38

jr_026_5406:
    xor h
    nop
    db $d3
    rla
    sbc d
    nop
    db $d3
    rrca
    add h
    nop
    db $d3
    rlca
    sbc b
    nop
    db $d3
    rst $38
    sub [hl]
    nop
    add b
    ldh a, [$ff28]
    jp c, $f000

    jr nz, jr_026_53f8

    nop
    ldh a, [rNR23]
    sub $00
    ldh a, [rNR10]
    call nc, $f000
    ld [$00d2], sp
    ldh a, [rP1]
    ret nc

    nop
    ldh [$ff28], a
    adc $00
    ldh [rNR41], a
    call z, $e000
    jr jr_026_5406

    nop
    ldh [rNR10], a

jr_026_543f:
    ret z

    nop
    ret nc

    ld [$00c2], sp
    ret nc

    nop
    ret nz

    nop
    ldh [$ff08], a
    add $00
    ldh [rP1], a
    call nz, $8000
    ldh a, [$ff28]
    ldh a, [rP1]
    ldh a, [rNR41]
    xor $00
    ldh a, [rNR23]
    db $ec
    nop
    ldh a, [rNR10]
    ld [$f000], a
    ld [$00e8], sp
    ldh a, [rP1]
    and $00
    ldh [$ff28], a
    db $e4
    nop
    ldh [rNR41], a
    call z, $e000
    jr jr_026_543f

    nop
    ldh [rNR10], a
    ldh [c], a
    nop
    ldh [$ff08], a
    ldh [rP1], a
    ldh [rP1], a
    sbc $00
    ret nc

    ld [$00dc], sp
    add b
    ldh a, [$ff28]
    cp $00
    ldh a, [rNR41]
    db $fc
    nop
    ldh a, [rNR23]
    ld a, [$f000]
    db $10
    ld hl, sp+$00
    ldh a, [$ff08]
    or $00
    ldh a, [rP1]
    db $f4
    nop
    ldh [$ff28], a
    ldh a, [c]
    nop
    ldh [rNR41], a
    call z, $e000
    jr @-$34

    nop
    ldh [rNR10], a
    ldh [c], a
    nop
    ldh [$ff08], a
    ldh [rP1], a
    ldh [rP1], a
    sbc $00
    ret nc

    ld [$00dc], sp
    add b
    ldh a, [c]
    rrca
    stop
    ldh a, [c]
    rlca
    ld c, $00
    ldh a, [c]
    rst $38
    inc c
    nop
    ldh [c], a
    rrca
    ld a, [bc]
    nop
    ldh [c], a
    rlca
    ld [$e200], sp
    rst $38
    ld b, $00
    jp nc, $040f

    nop
    jp nc, $0207

    nop
    jp nc, $00ff

    nop
    add b
    di
    rrca
    inc e
    nop
    di
    rlca
    ld a, [de]
    nop
    di
    rst $38
    jr jr_026_54ed

jr_026_54ed:
    db $e3
    rrca
    ld d, $00
    db $e3
    rlca
    inc d
    nop
    db $e3
    rst $38
    ld [de], a
    nop
    db $d3
    rrca
    inc b
    nop
    db $d3
    rlca
    ld [bc], a
    nop
    db $d3
    rst $38
    nop
    nop
    add b
    di
    rrca
    jr z, jr_026_550a

jr_026_550a:
    di
    rlca
    ld h, $00
    di
    rst $38
    inc h
    nop
    db $e3
    rrca
    ld [hl+], a
    nop
    db $e3
    rlca
    jr nz, jr_026_551a

jr_026_551a:
    db $e3
    rst $38
    ld e, $00
    db $d3
    rrca
    inc b
    nop
    db $d3
    rlca
    ld [bc], a
    nop
    db $d3
    rst $38
    nop
    nop
    add b
    ld a, [$cb4a]
    or a
    jr nz, jr_026_556e

    ld a, [$cb7c]
    or a
    ret nz

    ld a, [$cb84]
    or a
    jr nz, jr_026_5544

    ld a, [$cb8b]
    or a
    jr nz, jr_026_5556

    jr jr_026_554d

jr_026_5544:
    ld a, [$c60d]
    add $a9
    call Call_000_151d
    ret


jr_026_554d:
    ld a, [$c60d]
    add $47
    call Call_000_151d
    ret


jr_026_5556:
    ld a, [$b8db]
    or a
    jr nz, jr_026_5565

    ld a, [$c60d]
    add $78
    call Call_000_151d
    ret


jr_026_5565:
    ld a, [$c60d]
    add $70
    call Call_000_151d
    ret


jr_026_556e:
    ld a, [$c60d]
    add $4b
    call Call_000_151d
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_026_55b5

    ld a, [$cb84]
    or a
    jr nz, jr_026_558b

    ld a, [$cb8b]
    or a
    jr nz, jr_026_559d

    jr jr_026_5594

jr_026_558b:
    ld a, [$c60d]
    add $a1
    call Call_000_151d
    ret


jr_026_5594:
    ld a, [$c60d]
    add $00
    call Call_000_151d
    ret


jr_026_559d:
    ld a, [$b8db]
    or a
    jr nz, jr_026_55ac

    ld a, [$c60d]
    add $74
    call Call_000_151d
    ret


jr_026_55ac:
    ld a, [$c60d]
    add $6c
    call Call_000_151d
    ret


jr_026_55b5:
    ld a, [$c60d]
    add $14
    call Call_000_151d
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_026_55dc

    ld a, [$cb84]
    or a
    jr z, jr_026_55d3

    ld a, [$c60d]
    add $a1
    call Call_000_151d
    ret


jr_026_55d3:
    ld a, [$c60d]
    add $04
    call Call_000_151d
    ret


jr_026_55dc:
    ld a, [$c60d]
    add $18
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $08
    call Call_000_151d
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_026_560c

    ld a, [$cb84]
    or a
    jr z, jr_026_5603

    ld a, [$c60d]
    add $a5
    call Call_000_151d
    ret


jr_026_5603:
    ld a, [$c60d]
    add $0c
    call Call_000_151d
    ret


jr_026_560c:
    ld a, [$c60d]
    add $10
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $1c
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $22
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $26
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $2a
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $2e
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $32
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $36
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $3a
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $3f
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $43
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $80
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $a1
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $a5
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $a9
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $ad
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $b1
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $4f
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $57
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $5b
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $5f
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $64
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $8f
    call Call_000_151d
    ret


    ld a, [$c60d]
    add $93
    call Call_000_151d
    ret


    ld a, $97
    call Call_000_151d
    ret


    ld a, $98
    call Call_000_151d
    ret


    ld a, $86
    call Call_000_151d
    ret


    ld a, $87
    call Call_000_151d
    ret


    ld a, $88
    call Call_000_151d
    ret


    ld a, $89
    call Call_000_151d
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $00
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $01
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $02
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $03
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $04
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $05
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $06
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $07
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $08
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $09
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $08
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0d
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $0f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $10
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $11
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $12
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $13
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $14
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $15
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $16
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $17
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld bc, $0001
    rst $38
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
    nop
    nop
    nop
    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $18
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $19
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5c8e

    cp $01
    jr z, jr_026_5c9e

    cp $02
    jr z, jr_026_5caf

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5c8e:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5c9e:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5caf:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $67
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5d0c

    cp $01
    jr z, jr_026_5d1c

    cp $02
    jr z, jr_026_5d2d

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5d0c:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5d1c:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5d2d:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5d8a

    cp $01
    jr z, jr_026_5d9a

    cp $02
    jr z, jr_026_5dab

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5d8a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5d9a:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5dab:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5e08

    cp $01
    jr z, jr_026_5e18

    cp $02
    jr z, jr_026_5e29

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5e08:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5e18:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5e29:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $20
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5ebd

    cp $01
    jr z, jr_026_5ecd

    cp $02
    jr z, jr_026_5ede

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5ebd:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5ecd:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5ede:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $21
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $22
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_5f72

    cp $01
    jr z, jr_026_5f82

    cp $02
    jr z, jr_026_5f93

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_5f72:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_5f82:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_5f93:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $23
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $24
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6027

    cp $01
    jr z, jr_026_6037

    cp $02
    jr z, jr_026_6048

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6027:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6037:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6048:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $25
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $26
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_60dc

    cp $01
    jr z, jr_026_60ec

    cp $02
    jr z, jr_026_60fd

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_60dc:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_60ec:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_60fd:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $27
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $28
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6191

    cp $01
    jr z, jr_026_61a1

    cp $02
    jr z, jr_026_61b2

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6191:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_61a1:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_61b2:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $29
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_624a

    cp $01
    jr z, jr_026_625a

    cp $02
    jr z, jr_026_626b

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_624a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_625a:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_626b:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_62ce

    cp $01
    jr z, jr_026_62de

    cp $02
    jr z, jr_026_62ef

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_62ce:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_62de:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_62ef:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6352

    cp $01
    jr z, jr_026_6367

    cp $02
    jr z, jr_026_637d

    ld a, $2f
    ld [$c642], a
    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6352:
    ld a, $2c
    ld [$c642], a
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $08
    ld [$c64b], a
    ret


jr_026_6367:
    ld a, $2d
    ld [$c642], a
    ld a, [$c60a]
    sub $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_637d:
    ld a, $2e
    ld [$c642], a
    ld a, [$c60a]
    add $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $30
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1a
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_63e2

    cp $01
    jr z, jr_026_63f2

    cp $02
    jr z, jr_026_6403

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_63e2:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_63f2:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6403:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $31
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $19
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6460

    cp $01
    jr z, jr_026_6470

    cp $02
    jr z, jr_026_6481

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $1c
    ld [$c64b], a
    ret


jr_026_6460:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0a
    ld [$c64b], a
    ret


jr_026_6470:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6481:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $32
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_64d9

    cp $01
    jr z, jr_026_64e9

    cp $02
    jr z, jr_026_64fa

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_64d9:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_64e9:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_64fa:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $33
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6557

    cp $01
    jr z, jr_026_6567

    cp $02
    jr z, jr_026_6578

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6557:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6567:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6578:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $34
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $35
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_65d5

    cp $01
    jr z, jr_026_65e5

    cp $02
    jr z, jr_026_65f6

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_65d5:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_65e5:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_65f6:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $35
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6659

    cp $01
    jr z, jr_026_6669

    cp $02
    jr z, jr_026_667a

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $18
    ld [$c64b], a
    ret


jr_026_6659:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0c
    ld [$c64b], a
    ret


jr_026_6669:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_667a:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $36
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c650], a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $37
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6717

    cp $01
    jr z, jr_026_6727

    cp $02
    jr z, jr_026_6738

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6717:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $06
    ld [$c64b], a
    ret


jr_026_6727:
    ld a, [$c60a]
    sub $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6738:
    ld a, [$c60a]
    add $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $3d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_67d0

    cp $01
    jr z, jr_026_67e0

    cp $02
    jr z, jr_026_67f1

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_67d0:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_67e0:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_67f1:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $40
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $41
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_68f0

    cp $01
    jr z, jr_026_6900

    cp $02
    jr z, jr_026_6911

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_68f0:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6900:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6911:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $42
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $43
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $44
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $45
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $48
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $49
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6a51

    cp $01
    jr z, jr_026_6a61

    cp $02
    jr z, jr_026_6a72

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6a51:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6a61:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6a72:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6ace

    cp $01
    jr z, jr_026_6ade

    cp $02
    jr z, jr_026_6aef

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6ace:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6ade:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6aef:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6b49

    cp $01
    jr z, jr_026_6b59

    cp $02
    jr z, jr_026_6b6a

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6b49:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6b59:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6b6a:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $50
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $51
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $52
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $53
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $54
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $55
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $56
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $28
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6d2a

    cp $01
    jr z, jr_026_6d3a

    cp $02
    jr z, jr_026_6d4b

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6d2a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6d3a:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6d4b:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $57
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6da5

    cp $01
    jr z, jr_026_6db5

    cp $02
    jr z, jr_026_6dc6

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6da5:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6db5:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6dc6:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $59
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $37
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60a]
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $40
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6e5c

    cp $01
    jr z, jr_026_6e6c

    cp $02
    jr z, jr_026_6e7d

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


jr_026_6e5c:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6e6c:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6e7d:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6eda

    cp $01
    jr z, jr_026_6eea

    cp $02
    jr z, jr_026_6efb

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6eda:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6eea:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6efb:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6f58

    cp $01
    jr z, jr_026_6f68

    cp $02
    jr z, jr_026_6f79

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6f58:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6f68:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6f79:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_6fd6

    cp $01
    jr z, jr_026_6fe6

    cp $02
    jr z, jr_026_6ff7

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_6fd6:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_6fe6:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_6ff7:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_7054

    cp $01
    jr z, jr_026_7064

    cp $02
    jr z, jr_026_7075

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_7054:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_7064:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_7075:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_70d2

    cp $01
    jr z, jr_026_70e2

    cp $02
    jr z, jr_026_70f3

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_70d2:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_70e2:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_70f3:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $60
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_7150

    cp $01
    jr z, jr_026_7160

    cp $02
    jr z, jr_026_7171

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_7150:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_7160:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_7171:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $61
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $62
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $63
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $64
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $65
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $66
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $69
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_73b2

    cp $01
    jr z, jr_026_73c2

    cp $02
    jr z, jr_026_73d3

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_73b2:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_73c2:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_73d3:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_7430

    cp $01
    jr z, jr_026_7440

    cp $02
    jr z, jr_026_7451

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_7430:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_7440:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_7451:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_74ae

    cp $01
    jr z, jr_026_74be

    cp $02
    jr z, jr_026_74cf

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_74ae:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_74be:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_74cf:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $70
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_752c

    cp $01
    jr z, jr_026_753c

    cp $02
    jr z, jr_026_754d

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_752c:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_753c:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_754d:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $71
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $72
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_026_75e1

    cp $01
    jr z, jr_026_75f1

    cp $02
    jr z, jr_026_7602

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_026_75e1:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_026_75f1:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_026_7602:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $73
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $74
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $5b3e
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $75
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


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
    and b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    rst $38
    ld de, $8000
    rrca
    rst $38
    ld a, a
    ret nz

    ld b, b
    inc hl
    nop
    ld [bc], a
    ld bc, $0160
    and l
    ld [bc], a
    cp e
    ldh a, [$ffd0]
    jr nz, jr_026_770e

jr_026_770e:
    db $10
    ldh a, [$fff0]
    and l
    inc bc
    rlca
    dec e
    dec b
    jr nz, jr_026_7718

jr_026_7718:
    inc b
    rlca
    rlca
    ld a, [bc]
    inc b
    ld [$0203], sp
    dec b
    sbc a
    ld bc, $feff
    inc bc
    ld [bc], a
    inc hl
    nop
    ld h, h
    dec b
    ld a, a
    ld hl, sp+$40
    ld b, $b3
    dec b
    ld h, e
    rlca
    cp $fe
    ld bc, $f7f8
    rst $28
    ldh a, [$ffe7]
    ldh [$ffc7], a
    ld hl, $3f09
    nop
    ret nz

    db $e3
    ccf
    nop
    ld d, b
    rlca
    ld b, d
    nop
    jr nc, jr_026_7755

    ld hl, sp+$00
    rlca
    ld sp, hl
    ld hl, sp+$09
    ld bc, $0a62
    nop

jr_026_7755:
    ccf
    rst $18
    rra
    rst $08
    sbc e
    rrca
    rst $00
    add e
    dec b
    rst $38
    cp $40
    ld b, $19
    nop
    cp $fa
    jr nz, jr_026_776d

    db $fc
    ld hl, $c000
    add e

jr_026_776d:
    add b
    nop
    add c
    rst $38
    nop
    ld b, $00
    ld [$1000], sp
    nop
    inc hl
    rst $38
    nop
    ld c, h
    inc bc
    nop
    rst $38
    rra
    ldh [$ffe0], a
    sbc h
    ld [hl], d
    rrca
    ld h, l
    ld b, $f0
    ld c, $0f
    ld [hl], d
    db $10
    ld h, e
    ld b, $07
    rst $38
    add e
    inc bc
    ld bc, $0103
    pop bc
    nop
    ld hl, $004e
    inc bc
    adc b
    nop
    ld h, h
    ld h, h
    ld a, [bc]
    ld h, d
    ld de, $217f
    nop
    rst $18
    db $fc
    ld hl, sp-$04
    ld hl, sp-$03
    ld [hl+], a
    nop
    ld sp, hl
    ldh a, [$fffe]
    jr nz, jr_026_77b2

jr_026_77b2:
    db $f4
    sub b
    inc c
    and b
    rra
    inc hl
    inc e
    rst $38
    ld c, a
    inc sp
    ld e, h
    inc l
    cp b
    ld e, b
    or b
    ld d, b
    rst $38
    ld [hl], b
    or b
    nop
    rrca
    nop
    add b
    add b
    ld [hl], b
    rst $28
    ldh a, [$ff8f]
    rra
    db $10
    call nz, $e015
    nop
    inc bc
    rst $18
    inc bc
    inc e
    rra
    db $e3
    ldh a, [rDIV]
    ld bc, $6012
    rst $38
    ld a, [bc]
    ldh a, [$ff89]
    ld [hl], b
    push hl
    sbc b
    ld [hl], l
    ld l, b
    rst $38
    dec sp
    inc [hl]
    dec de
    inc d
    dec e
    ld a, [de]
    ld a, a
    ccf
    or $23
    nop
    ccf
    rra
    jr nz, jr_026_77f8

jr_026_77f8:
    ld e, a
    ccf
    rst $18
    ld sp, hl
    rst $30
    or $f8
    rst $30
    dec h
    nop
    pop af
    xor $f3
    db $ed
    rst $18
    ld [hl], c
    or b
    ld [hl], d
    or b
    ld [hl], b
    jr nz, jr_026_780e

jr_026_780e:
    add hl, sp

jr_026_780f:
    reti


    rst $38
    rst $38
    ld e, $ff
    ret c

    ld a, a
    db $10
    ldh a, [rNR10]
    ei
    jr nc, jr_026_784c

    add d
    jr jr_026_780f

    ld hl, sp+$08
    ld hl, sp+$00
    cp a
    ldh a, [rP1]
    rra
    db $10
    jr jr_026_7842

    ld h, c
    inc e
    rra
    rst $38
    rra
    ccf
    jr nz, jr_026_7871

    nop
    rra
    nop
    dec e
    rst $28
    ld a, [de]
    sbc h
    dec de
    inc e
    jr nz, jr_026_783d

jr_026_783d:
    jr c, jr_026_7876

    cp $7f
    pop af

jr_026_7842:
    rst $38
    ld [hl], $fd
    ld de, $df3f
    dec h
    nop
    rst $38
    rra

jr_026_784c:
    rst $28
    rra
    rst $28
    sbc a
    ld l, a
    di
    db $ed
    sbc $21
    nop
    pop af
    xor $f0
    rst $28
    inc hl
    nop
    ld a, h
    jr nz, @+$01

    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    cp b
    adc b
    db $fc
    ld l, h
    rst $38
    ld a, h
    or h
    ld a, $c6
    ld d, $ea
    ldh a, [rP1]
    db $fd

jr_026_7871:
    ld [hl], b
    ld h, b
    dec b
    ld h, b
    nop

jr_026_7876:
    ld bc, $0301
    inc bc
    ld a, a
    nop
    nop
    inc b
    nop
    ld e, $00
    ld c, $40
    nop
    db $fd
    inc c
    sub b
    ld [hl+], a
    add b
    add b
    nop
    nop
    ld b, b
    nop
    rst $38
    ld a, l
    add hl, bc
    dec e
    dec c
    dec e
    dec c
    dec sp
    ld [hl+], a
    rst $38
    ld a, [hl]
    ld l, l
    ld a, h
    ld e, e
    db $fc
    jp $8bf4


    add e
    sbc a
    ld l, a
    ld hl, $c100
    dec b
    ld b, e
    nop
    add l
    dec b
    dec b
    ld b, $17
    rst $38
    jp hl


    rla
    add sp, $03
    db $fc
    ld [bc], a
    db $fd
    ld [de], a
    rst $38
    db $ed
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    ld [hl], a
    adc b
    inc bc
    cp $f0
    ld de, $20e0
    rst $38
    rlca
    ld a, a
    add b

jr_026_78c9:
    ld a, a
    rst $38
    add a
    rlc e
    jr @+$0a

    add c
    ld bc, $df03
    ld [bc], a
    rrca
    ld [$c0ff], sp
    ld b, b
    ld h, $c0
    and a
    rst $38

jr_026_78de:
    add b
    ld sp, $f020
    rrca
    ldh [$ff1f], a
    and b
    rst $38
    ld e, a
    jr nz, jr_026_78c9

    inc [hl]
    res 6, h
    ld c, e

jr_026_78ee:
    or [hl]
    rst $20
    ld c, c
    cp $01
    and a
    dec b
    and e
    ld b, $f2
    db $ed
    ldh a, [c]
    or a

jr_026_78fb:
    db $ed
    ld a, [$21e5]
    nop
    ei
    db $e4
    jr nz, jr_026_7904

jr_026_7904:
    inc [hl]
    db $fd
    db $fc
    db $10
    ld d, $d0
    nop
    add sp, $10
    call nz, $ff38
    ldh a, [c]
    inc c
    adc c
    halt
    and b
    ld a, a
    jr jr_026_7920

    push de
    jr jr_026_78fb

    ld a, [bc]
    rrca
    ld [hl], b
    jr @+$08

jr_026_7920:
    ldh [$ff0b], a
    add [hl]
    nop
    rst $10
    jr nc, jr_026_7947

    jr nc, @-$1e

    inc c
    ldh [rSVBK], a
    jr jr_026_78ee

    nop
    rst $18
    ld b, c
    nop
    jp nz, Jump_026_7f01

    db $10
    ld a, [de]
    rla
    nop
    rst $38
    cpl
    db $10
    ld b, a
    jr c, jr_026_78de

    ld h, b
    inc hl
    call c, $8bdb
    ld a, h
    inc bc
    inc c

jr_026_7947:
    cp a
    ld c, a
    inc h
    nop
    ld c, [hl]
    ld a, a
    ld a, a
    or b
    ld a, a
    or b
    rst $38
    jr nc, @+$01

    ldh a, [rNR51]
    nop
    rst $38
    or c
    ld a, [hl]
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], c
    rst $38
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    inc e
    rst $38
    adc h
    ld a, a
    rst $38
    ld b, d
    add b
    and e
    ld b, b
    ld d, e
    and b
    ld c, c
    or b
    rst $38
    push hl
    jr jr_026_79d9

    sbc h
    add hl, hl
    sbc $1c
    rst $28
    rst $38
    add l
    ld [bc], a
    adc d
    dec b
    sub h
    dec bc
    dec h
    dec de
    rst $38
    ld b, [hl]
    add hl, sp
    add l
    ld a, e
    ld [$28f7], sp
    rst $30
    rst $38
    dec c
    cp $1d
    cp $fd
    cp $3d
    cp $df
    ld a, l
    cp $fb
    db $fc
    db $e3
    jr nz, jr_026_799e

jr_026_799e:
    rst $38
    ld e, $eb
    cp a
    ld e, [hl]
    and b
    dec de
    rra
    ld h, $00
    ldh a, [$ffdf]
    ldh a, [rIE]
    ld a, a
    ldh a, [$ffdf]
    ld hl, sp-$51
    ld hl, sp+$57
    ld hl, sp-$01
    xor a
    ld a, [$00ff]
    adc [hl]
    ld a, a
    adc a
    ld a, a
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    rst $20
    rra
    db $e3
    rra
    rst $38
    pop af
    rrca
    rst $38
    nop
    ld d, $ef
    sub a
    rst $28
    rst $38
    adc b
    rst $30
    adc e
    db $f4
    rlca
    ld hl, sp-$39
    ld hl, sp-$02

jr_026_79d9:
    ldh [$ff03], a
    nop
    ldh a, [$ffef]
    di
    rst $28
    inc de
    rst $28
    rst $38
    and e
    ld e, a
    rst $20
    rra
    rst $00
    ccf
    adc a
    ld a, a
    rst $18
    rst $38
    nop
    jp $c7fc


    and b
    ld bc, $f8c7
    cp a
    rst $08
    ldh a, [$ff8f]
    ldh a, [$ff1f]
    ldh [$ffa0], a
    add hl, sp
    rra
    rst $38
    ei
    rra
    xor $3f
    ei
    ccf
    push de
    ccf
    rst $30
    ld [$d53f], a
    nop
    ld [bc], a
    cp $00
    cp $7c
    rst $38
    ld a, h
    jr c, jr_026_7a92

    jr c, jr_026_7a50

    db $10
    jr c, jr_026_7a2b

    ld bc, $4010
    cpl
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

jr_026_7a2b:
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

jr_026_7a50:
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
    ld b, $1f
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_026_7a92:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_026_7f01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
