; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    dec sp
    ld hl, $cd6c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4014
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


    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_03b_409b

jr_03b_4044:
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
    call Call_000_095c
    pop af
    ld b, a
    ld de, $99c2
    cp $90
    jr c, jr_03b_406d

    ld de, $99f2

jr_03b_406d:
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
    jr z, jr_03b_4096

    dec hl
    dec hl
    ret


jr_03b_4096:
    xor a
    ld [$cd98], a
    ret


jr_03b_409b:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_03b_40b3

    ld a, [de]
    cp $af
    jr nz, jr_03b_4044

    jr jr_03b_409b

jr_03b_40b3:
    pop hl
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    push hl
    ld hl, $4001
    ld d, $31
    call Call_000_095c
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
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
    ret


    push bc
    ld hl, $99c2
    ld b, $04

jr_03b_40ec:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03b_40ec

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_03b_40ec

    ld hl, $9a02
    ld b, $04

jr_03b_4101:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_03b_4101

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_03b_4101

    pop hl
    ret


    ld h, b
    ld l, c
    call Call_03b_4118

Call_03b_4118:
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

jr_03b_4125:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_03b_4125

    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd99], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_03b_4167

    push hl
    ld de, $9a11
    ld a, [$cd9b]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr nz, jr_03b_414f

    ld a, [$cd9b]
    ld b, a

Jump_03b_414f:
jr_03b_414f:
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


jr_03b_4167:
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03b_4199

    bit 1, a
    jr nz, jr_03b_41ac

    bit 4, a
    jr nz, jr_03b_41b7

    bit 5, a
    jr nz, jr_03b_41d7

    push hl
    ld de, $9a02
    ld a, [$cd99]
    or a
    jr z, jr_03b_4188

    ld e, $08

jr_03b_4188:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jr z, jr_03b_414f

    ld a, [$cb5c]
    ld b, a
    jr jr_03b_414f

jr_03b_4199:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
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


jr_03b_41ac:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_41b7:
    ld a, [$cd99]
    or a
    jr nz, jr_03b_41d4

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_41d4:
    dec hl
    dec hl
    ret


jr_03b_41d7:
    ld a, [$cd99]
    or a
    jr z, jr_03b_41f4

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a08
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_41f4:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld b, a
    ld a, $63
    sub b
    ld [$cd92], a
    ld a, [hl+]
    ld [$cd94], a
    ld a, [hl+]
    ld [$cd95], a
    xor a
    ld [$cd93], a
    ld [$cd96], a
    ld [$cd97], a
    ret


    push bc
    call Call_03b_42b4
    call Call_03b_42e0
    call Call_03b_42f9
    pop hl
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03b_423b

    bit 1, a
    jr nz, jr_03b_424a

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_03b_4284

    bit 5, a
    jr nz, jr_03b_4255

    dec hl
    dec hl
    ret


jr_03b_423b:
    ld a, [$cd93]
    or a
    jr z, jr_03b_424a

    ld a, $42
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_424a:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_4255:
    ld a, [$cd92]
    ld b, a
    ld a, [$cd93]
    cp b
    jr nc, jr_03b_4281

    inc a
    ld [$cd93], a
    push hl
    ld a, [$cd94]
    ld e, a
    ld a, [$cd95]
    ld d, a
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cd96], a
    ld a, h
    ld [$cd97], a
    ld a, $48
    call Call_000_25ce
    pop hl

jr_03b_4281:
    dec hl
    dec hl
    ret


jr_03b_4284:
    ld a, [$cd93]
    or a
    jr z, jr_03b_42b1

    dec a
    ld [$cd93], a
    push hl
    ld a, [$cd94]
    ld e, a
    ld a, [$cd95]
    ld d, a
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    ld [$cd96], a
    ld a, h
    ld [$cd97], a
    ld a, $48
    call Call_000_25ce
    pop hl

jr_03b_42b1:
    dec hl
    dec hl
    ret


Call_03b_42b4:
    ld a, [$cd93]
    or a
    jr z, jr_03b_42c3

    ld bc, $7081
    ld hl, $42db
    call Call_000_20de

jr_03b_42c3:
    ld a, [$cd92]
    ld b, a
    ld a, [$cd93]
    cp b
    ret nc

    ld bc, $7060
    ld hl, $42d6
    call Call_000_20de
    ret


    nop
    nop
    db $ec
    nop
    add b
    nop
    nop
    db $ed
    nop
    add b

Call_03b_42e0:
    ld a, [$cd93]
    call Call_000_3304
    ld a, [$ccd0]
    ld bc, $7068
    call Call_03b_4330
    ld a, [$ccd1]
    ld bc, $7070
    call Call_03b_4330
    ret


Call_03b_42f9:
    ld hl, $cd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld a, [$cccd]
    ld bc, $8050
    call Call_03b_4330
    ld a, [$ccce]
    ld bc, $8058
    call Call_03b_4330
    ld a, [$cccf]
    ld bc, $8060
    call Call_03b_4330
    ld a, [$ccd0]
    ld bc, $8068
    call Call_03b_4330
    ld a, [$ccd1]
    ld bc, $8070
    call Call_03b_4330
    ret


Call_03b_4330:
    cp $af
    jr nz, jr_03b_433b

    ld hl, $4380
    call Call_000_20de
    ret


jr_03b_433b:
    sub $34
    ld l, a
    add a
    add a
    add l
    ld hl, $434e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_20de
    ret


    nop
    nop
    ldh [c], a
    nop
    add b
    nop
    nop
    db $e3
    nop
    add b
    nop
    nop
    db $e4
    nop
    add b
    nop
    nop
    push hl
    nop
    add b
    nop
    nop
    and $00
    add b
    nop
    nop
    rst $20
    nop
    add b
    nop
    nop
    add sp, $00
    add b
    nop
    nop
    jp hl


    nop
    add b
    nop
    nop
    ld [$8000], a
    nop
    nop
    db $eb
    nop
    add b
    nop
    nop
    xor $00
    add b
    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    call Call_03b_46a4
    jr nc, jr_03b_439b

    pop hl
    ld a, $51
    call Call_000_25cb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_439b:
    call Call_03b_46b1
    ld a, $42
    call Call_000_25cb
    pop hl
    inc hl
    inc hl
    ret


    ld a, [$cd96]
    ld e, a
    ld a, [$cd97]
    ld d, a
    call Call_03b_46a4
    jr nc, jr_03b_43bf

    ld a, $51
    call Call_000_25cb
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_43bf:
    call Call_03b_46b1
    ld a, $42
    call Call_000_25cb
    ld h, b
    ld l, c
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$cd93]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_03b_43ec

    ld a, [hl+]
    push hl
    call Call_03b_4699
    pop hl
    jr z, jr_03b_43ed

    inc hl
    inc hl
    ret


jr_03b_43ec:
    inc hl

jr_03b_43ed:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $0c
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_03b_4699
    pop hl
    pop de
    ret z

    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_03b_4699
    jr nz, jr_03b_4428

    ld [hl], $ff

jr_03b_4428:
    pop hl
    pop de
    xor a
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [de]
    add c
    cp $63
    jr c, jr_03b_443d

    ld a, $63

jr_03b_443d:
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    push hl
    push de
    push bc
    ld h, d
    ld l, e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ld a, l
    add c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    pop hl
    jr c, jr_03b_446c

    pop hl
    ld a, $e7
    ld [hl+], a
    ld a, $03
    ld [hl], a
    pop hl
    ret


jr_03b_446c:
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03b_44b4

    bit 1, a
    jr nz, jr_03b_44c7

    bit 7, a
    jr nz, jr_03b_44d4

    bit 6, a
    jr nz, jr_03b_44f4

    ld b, a
    ld a, [$b8d1]
    or a
    jr z, jr_03b_4494

    bit 2, b
    jp nz, Jump_03b_4514

jr_03b_4494:
    push hl
    ld de, $99c2
    ld a, [$cd99]
    or a
    jr z, jr_03b_44a1

    ld de, $9a02

jr_03b_44a1:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jp z, Jump_03b_414f

    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_44b4:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
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


jr_03b_44c7:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_44d4:
    ld a, [$cd99]
    or a
    jr nz, jr_03b_44f1

    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $99c2
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_44f1:
    dec hl
    dec hl
    ret


jr_03b_44f4:
    ld a, [$cd99]
    or a
    jr z, jr_03b_4511

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_4511:
    dec hl
    dec hl
    ret


Jump_03b_4514:
    ld a, $42
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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
    jr nz, jr_03b_453b

    ld a, [$cd98]
    cp [hl]
    jr z, jr_03b_453b

    dec hl
    dec hl
    ret


jr_03b_453b:
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6b], a
    ret


    ld a, [$cd98]
    and $0f
    ld hl, $4560
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, b
    ld l, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    push bc
    ld a, [$b8ee]
    ld d, a
    ld a, [$b8ed]
    add $0a
    cp d
    jr c, jr_03b_457e

    ld a, d

jr_03b_457e:
    ld [$b8ed], a
    ld a, [$b8f2]
    add $0a
    jr nc, jr_03b_458a

    ld a, $ff

jr_03b_458a:
    ld [$b8f2], a
    pop hl
    ret


    ld h, b
    ld l, c
    ret


    push bc
    ld a, [$b8ed]
    sub $0a
    jr nc, jr_03b_459b

    xor a

jr_03b_459b:
    ld [$b8ed], a
    ld a, [$b8f2]
    sub $0a
    jr nc, jr_03b_45a6

    xor a

jr_03b_45a6:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    add $14
    jr nc, jr_03b_45b5

    ld a, $ff

jr_03b_45b5:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    sub $28
    jr nc, jr_03b_45c3

    xor a

jr_03b_45c3:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    sub $14
    jr nc, jr_03b_45d1

    xor a

jr_03b_45d1:
    ld [$b8f2], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$b8ee]
    ld e, a
    ld d, a
    ld a, [hl+]
    or a
    jr z, jr_03b_45e6

jr_03b_45e1:
    srl e
    dec a
    jr nz, jr_03b_45e1

jr_03b_45e6:
    ld a, [$b8ed]
    add e
    cp d
    jr c, jr_03b_45ee

    ld a, d

jr_03b_45ee:
    ld [$b8ed], a
    ret


    push bc
    ld hl, $b949
    ld b, $04
    ld c, $16

jr_03b_45fa:
    ld a, [hl]
    inc a
    jr z, jr_03b_460d

    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03b_45fa

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_460d:
    pop hl
    inc hl
    inc hl
    ret


    push bc
    ld hl, $b9a7
    ld b, $04
    ld c, $0c
    jr jr_03b_45fa

    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld d, $00
    push hl
    ld bc, $0c40
    ld hl, $a000

jr_03b_4628:
    ld a, [hl+]
    and $f0
    cp $40
    jr nz, jr_03b_4639

    ld a, [hl]
    cp $48
    jr nz, jr_03b_4639

    inc d
    ld a, d
    cp e
    jr nc, jr_03b_4644

jr_03b_4639:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_03b_4628

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_4644:
    pop hl
    inc hl
    inc hl
    ret


    ld a, $1d
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld h, b
    ld l, c
    ret


    ld a, $1e
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld h, b
    ld l, c
    ret


    ld a, $1f
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld h, b
    ld l, c
    ret


    ld hl, $b9a7
    ld e, $04

jr_03b_4674:
    ld a, [hl]
    inc a
    jr z, jr_03b_4686

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec e
    jr nz, jr_03b_4674

    ld h, b
    ld l, c
    ret


jr_03b_4686:
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld h, b
    ld l, c
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    adc a
    ld b, [hl]
    sub l
    ld b, [hl]

Call_03b_4699:
    ld hl, $b8f8
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


Call_03b_46a4:
    push bc
    ld hl, $b8ef
    ld a, [hl+]
    sub e
    ld a, [hl+]
    sbc d
    ld a, [hl+]
    sbc $00
    pop bc
    ret


Call_03b_46b1:
    push bc
    ld b, $00
    ld hl, $b8ef
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop bc
    ret


    ld h, b
    ld l, c
    ld a, $03
    ld [$b8ea], a
    ret


    ld h, b
    ld l, c
    ld b, $04
    ld a, [$b949]
    cp b
    jr z, jr_03b_46e8

    ld a, [$b95f]
    cp b
    jr z, jr_03b_46e8

    ld a, [$b975]
    cp b
    jr z, jr_03b_46e8

    ld a, [$b98b]
    cp b
    jr z, jr_03b_46e8

    inc hl
    inc hl

jr_03b_46e8:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, a
    ld a, [$ba3f]
    or a
    jr nz, jr_03b_4701

    ld a, $01
    ld [$ba3f], a
    ld a, [$cd98]
    and b
    jr z, jr_03b_4703

jr_03b_4701:
    inc hl
    inc hl

jr_03b_4703:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_03b_470d:
    ld a, [hl]
    cp $04
    jr z, jr_03b_471f

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03b_470d

    pop hl
    ret


jr_03b_471f:
    ld a, $02
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl], a
    pop hl
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_03b_4730:
    call Call_03b_4740
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03b_4730

    pop hl
    ret


Call_03b_4740:
    push hl
    ld a, [hl]
    cp $02
    jr nz, jr_03b_4754

    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_03b_4754

    ld [hl], $07

jr_03b_4754:
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$ba3e]
    cp $01
    jr z, jr_03b_4762

    inc hl
    inc hl
    ret


jr_03b_4762:
    ld a, $02
    ld [$ba3e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e
    call Call_03b_7c4b
    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    push hl
    call Call_000_2527
    pop hl
    ret


    ld h, b
    ld l, c
    push hl
    push hl
    push af
    ld l, $29
    ld h, $68
    ld a, $29
    call BankSwitchCallHL
    pop af
    pop hl
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03b_47b1

    bit 1, a
    jr nz, jr_03b_47c3

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_03b_47cb

    bit 5, a
    jr nz, jr_03b_47db

    dec hl
    dec hl
    ret


jr_03b_47b1:
    push hl
    push hl
    push af
    ld l, $cb
    ld h, $69
    ld a, $29
    call BankSwitchCallHL
    pop af
    pop hl
    pop hl
    dec hl
    dec hl
    ret


jr_03b_47c3:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    ret


jr_03b_47cb:
    ld a, [$cb68]
    or a
    jr nz, jr_03b_47d3

    ld a, $28

jr_03b_47d3:
    dec a
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_47db:
    ld a, [$cb68]
    inc a
    cp $28
    jr c, jr_03b_47e4

    xor a

jr_03b_47e4:
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    ld a, $54
    call Call_000_25c5
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03b_482a

    bit 1, a
    jr nz, jr_03b_483d

    bit 4, a
    jr nz, jr_03b_4848

    bit 5, a
    jr nz, jr_03b_4868

    push hl
    ld de, $9a02
    ld a, [$cd99]
    or a
    jr z, jr_03b_4817

    ld e, $0f

jr_03b_4817:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd98]
    bit 4, a
    jp z, Jump_03b_414f

    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_482a:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd99]
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


jr_03b_483d:
    ld a, $51
    call Call_000_25cb

jr_03b_4842:
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03b_4848:
    ld a, [$cd99]
    or a
    jr nz, jr_03b_4865

jr_03b_484e:
    inc a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_4865:
    dec hl
    dec hl
    ret


jr_03b_4868:
    ld a, [$cd99]
    or a
    jr z, jr_03b_4885

    dec a
    ld [$cd99], a
    xor a
    ld [$cd98], a
    ld a, $48
    call Call_000_25ce
    ld de, $9a0f
    ld a, [$cb5c]
    ld b, a
    jp Jump_03b_414f


jr_03b_4885:
    dec hl

jr_03b_4886:
    dec hl
    ret


    and $40
    ld d, [hl]
    ld b, a
    xor d
    ld c, b
    inc de
    ld b, c
    adc e
    ld c, d

jr_03b_4892:
    ld [hl], d
    call $f420
    cp b
    ld [hl], l
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    and [hl]
    ld c, b
    inc de
    ld b, c
    xor e
    ld c, d
    ld [hl], d
    call $cb20

jr_03b_48b2:
    ld c, d
    adc [hl]
    call $8f01
    ld b, [hl]
    sbc d
    ld c, b
    and $40
    ld hl, $cc40
    ld c, d
    jr nz, jr_03b_4842

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_48c5:
    ld b, c
    and $40
    ld hl, $ec40
    ld c, d
    jr nz, jr_03b_484e

    inc [hl]

jr_03b_48cf:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld c, e
    jr nz, @-$7e

    inc [hl]

jr_03b_48db:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    db $e4
    ld c, b
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nz, jr_03b_48eb

    ld a, [hl-]
    ld c, d
    pop af

jr_03b_48eb:
    ld b, e
    xor l
    cp b
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $ac40
    ld c, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_4900:
    ld hl, $cc40
    ld c, e
    jr nz, jr_03b_4886

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_490c:
    ld hl, $ec40
    ld c, e
    jr nz, jr_03b_4892

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c

jr_03b_4918:
    inc e
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    ld [$3a07], sp
    ld c, d
    pop af
    ld b, e

jr_03b_4924:
    xor h
    cp b
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $0c40
    ld c, h
    jr nz, jr_03b_48b2

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    rst $10
    ld b, e
    xor [hl]
    cp b
    ld a, [bc]
    ld c, c
    ld c, c
    ld hl, $6c40
    ld c, h
    jr nz, jr_03b_48c5

    adc a
    ld b, [hl]
    ld e, e
    ld c, c
    ld hl, $2c40
    ld c, h
    jr nz, jr_03b_48cf

    inc [hl]

jr_03b_4950:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, h
    jr nz, jr_03b_48db

    inc [hl]

jr_03b_495c:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld h, l
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    ret nc

jr_03b_4968:
    rlca
    ld a, [hl-]
    ld c, d
    pop af
    ld b, e
    xor a
    cp b
    jr jr_03b_49b5

    xor [hl]
    cp b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $8c40
    ld c, h
    jr nz, jr_03b_4900

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld c, h
    jr nz, jr_03b_490c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld c, h
    jr nz, jr_03b_4918

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld c, h
    jr nz, jr_03b_4924

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    xor [hl]
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nc, jr_03b_4a27

    ld a, [hl-]
    ld c, d
    pop af

jr_03b_49b5:
    ld b, e
    ld b, e
    cp c
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $0c40
    ld c, l

jr_03b_49c2:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld c, l
    jr nz, jr_03b_4950

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, l
    jr nz, jr_03b_495c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld c, l
    jr nz, jr_03b_4968

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ldh a, [c]

jr_03b_49ef:
    ld c, c
    ld [hl], e
    ld c, d
    add l
    ld b, e
    jr nc, @+$77

    ld a, [hl-]
    ld c, d
    pop af
    ld b, e
    ld b, h

jr_03b_49fb:
    cp c
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $8c40
    ld c, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld c, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld c, l
    jr nz, @-$7e

Call_03b_4a20:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld a, [hl+]

jr_03b_4a27:
    ld c, d
    ld [hl], e
    ld c, d
    add l
    ld b, e
    call nz, Call_000_3a09
    ld c, d
    pop af
    ld b, e
    jp nz, $c2b8

    ld b, [hl]
    adc a
    ld b, [hl]
    ld e, e
    ld c, d
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_03b_49c2

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, e
    ld c, d
    and $40
    ld hl, $ec40
    ld c, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    and $40
    ld hl, $2c40
    ld c, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld c, e
    jr nz, jr_03b_49ef

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    and $40
    ld hl, $6c40
    ld c, e
    jr nz, jr_03b_49fb

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld c, e
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ld b, d
    ld c, d
    rlca
    ld [hl+], a
    rst $28
    rst $28

jr_03b_4a8f:
    rst $28
    rst $28
    rst $28
    ld b, b
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    inc e
    ld a, [de]
    daa
    ld [$1def], sp
    jr z, jr_03b_4a8f

    rra
    jr z, @+$2d

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld b, c
    rst $28
    rst $28
    jp hl


    rlca
    ld [hl+], a
    ld b, b
    rst $28
    inc de
    ld hl, $ef1e
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld b, h
    ld e, $2b
    rst $28
    ld [hl+], a
    inc l
    rst $28
    dec hl
    ld e, $1a
    dec e
    ld [hl-], a
    ld b, b
    rst $28
    rst $28
    rst $28
    jp hl


    xor a
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld bc, $2e2b
    inc l
    ld hl, $efef
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    jr z, jr_03b_4b0a

    rst $28
    inc e
    jr z, jr_03b_4b17

    inc l
    ld c, h
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec h
    ld [hl-], a
    rst $28
    ld h, $1a
    dec e
    ld e, $4c
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_4b35

    dec l

jr_03b_4b0a:
    rst $28
    jp hl


    ld [hl+], a
    inc l
    rst $28
    inc a
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28

jr_03b_4b17:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_03b_4b63

jr_03b_4b35:
    ld b, b
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

jr_03b_4b4a:
    rst $28
    jp hl


    ld bc, $ef1e
    inc l
    ld l, $2b
    ld e, $ef
    daa
    jr z, jr_03b_4b84

    rst $28
    dec l
    jr z, jr_03b_4b4a

    rst $28
    ld h, $22
    inc l
    dec l
    dec hl
    ld e, $1a

jr_03b_4b63:
    dec l
    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $21
    ld a, [de]
    dec l
    ld b, b
    rst $28
    nop
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_4ba7

    rst $28
    rst $28
    rst $28
    inc l
    ld l, $2b
    ld e, $41
    rst $28
    rst $28
    rst $28

jr_03b_4b84:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    jr z, jr_03b_4bbc

    inc h
    ld e, $1d
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    ld hl, $2b1a
    dec e
    rst $28
    jr z, jr_03b_4bca

    rst $28
    ld [hl+], a
    dec l
    ld c, h

jr_03b_4ba7:
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
    ld e, $2b
    ld c, h
    rst $28

jr_03b_4bbc:
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    dec l
    jr z, @-$0f

jr_03b_4bca:
    rst $28
    jp hl


    ld h, $22
    dec h
    inc h
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_03b_4c06

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, @+$2e

    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc a
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

jr_03b_4c06:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
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
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l

jr_03b_4c31:
    rst $28
    ld [hl], $34
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    dec h
    jr z, jr_03b_4c67

    jr nz, jr_03b_4c31

    jr nc, jr_03b_4c66

    dec l
    ld hl, $efef
    rst $28
    rst $28
    rst $28
    jp hl


    nop
    rst $28
    ld d, $1a
    dec l
    ld e, $2b
    rst $28
    ld [bc], a
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_4c8d

jr_03b_4c66:
    ld c, e

jr_03b_4c67:
    dec l
    rst $28
    ld bc, $322e
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de

jr_03b_4c8d:
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld bc, $2d2e
    dec l
    ld e, $2b
    rst $28
    rst $28
    inc c
    ld a, [de]
    inc h
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
    jp hl


    ld [$ef2d], sp
    inc l
    ld hl, $2e28
    dec h
    dec e

jr_03b_4cb5:
    rst $28
    dec l
    ld l, $2b
    daa
    rst $28
    rst $28
    ld h, $22
    dec h
    inc h
    rst $28
    ld [hl+], a
    daa
    dec l
    jr z, jr_03b_4cb5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    dec de
    ld l, $2d
    dec l
    ld e, $2b
    ld c, h
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_4d06

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $8e
    dec de
    ld l, $2d
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_4d0c

    dec h
    dec h
    rst $28
    jr nc, jr_03b_4d1b

    dec hl
    dec l
    ld hl, $22ef
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

jr_03b_4d06:
    ld c, e
    dec l
    rst $28
    ld bc, $322e

jr_03b_4d0c:
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld [bc], a
    ld hl, $1e1e
    inc l
    ld e, $ef

jr_03b_4d1b:
    rst $28
    inc c
    ld a, [de]
    inc h
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
    jp hl


    ld [$ef2d], sp
    inc l
    ld hl, $2e28
    dec h
    dec e

jr_03b_4d35:
    rst $28
    dec l
    ld l, $2b
    daa
    rst $28
    rst $28
    ld h, $22
    dec h
    inc h
    rst $28
    ld [hl+], a
    daa
    dec l
    jr z, jr_03b_4d35

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1e1e
    inc l
    ld e, $4c
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_4d86

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $8e
    dec de
    ld l, $2d
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_4d8c

    dec h
    dec h
    rst $28
    jr nc, jr_03b_4d9b

    dec hl
    dec l
    ld hl, $22ef
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_4dad

jr_03b_4d86:
    ld c, e
    dec l
    rst $28
    ld bc, $322e

jr_03b_4d8c:
    jr @+$2a

    ld l, $ef
    inc e
    ld a, [de]
    daa
    rst $28
    inc l
    ld hl, $2922
    rst $28
    rst $28
    rst $28

jr_03b_4d9b:
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    inc e
    dec hl
    jr z, jr_03b_4dce

    inc l
    rst $28
    rra
    dec hl
    jr z, @+$28

    jp hl


jr_03b_4dac:
    dec l

jr_03b_4dad:
    ld hl, $ef1e
    ld [de], a
    ld a, [de]
    dec e
    dec e
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_03b_4e06

    rst $28
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_4def

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28

jr_03b_4dca:
    rst $28
    jp hl


    ld [hl], $39

jr_03b_4dce:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_4dd6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28

jr_03b_4de2:
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    ld [de], a
    ld e, $1e

jr_03b_4def:
    rst $28
    ld [hl-], a
    jr z, jr_03b_4e21

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_4dff:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_4e06:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_4e0b:
    rst $28
    and $40
    inc de
    ld b, c
    db $fc
    ld c, [hl]
    ld [hl], d
    call $f420
    cp b

jr_03b_4e17:
    halt
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]

jr_03b_4e21:
    ld b, b
    inc [hl]

jr_03b_4e23:
    ld b, c
    and $40
    ld hl, $1c40
    ld c, a
    jr nz, jr_03b_4dac

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_4e2f:
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld [hl-], a
    ld c, [hl]
    and $40
    ld hl, $bc40

jr_03b_4e3b:
    ld c, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $dc40

jr_03b_4e47:
    ld c, a
    jr nz, jr_03b_4dca

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld c, a
    jr nz, jr_03b_4dd6

    inc [hl]

jr_03b_4e57:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, b
    jr nz, jr_03b_4de2

    inc [hl]

jr_03b_4e63:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld l, h
    ld c, [hl]
    adc a
    ld c, [hl]
    add l
    ld b, e
    db $f4

jr_03b_4e6f:
    ld bc, $4ecf
    ccf
    ld b, h
    jr c, jr_03b_4e2f

    ld [hl-], a
    and $40
    ld hl, $3c40
    ld d, b
    jr nz, jr_03b_4dff

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld d, b
    jr nz, jr_03b_4e0b

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $7c40
    ld d, b
    jr nz, jr_03b_4e17

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $3c40
    ld c, a
    jr nz, jr_03b_4e23

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld c, a
    jr nz, jr_03b_4e2f

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld c, a
    jr nz, jr_03b_4e3b

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld c, a
    jr nz, jr_03b_4e47

    pop af
    ld b, e
    cp $b8
    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $9c40
    ld d, b
    jr nz, jr_03b_4e57

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_03b_4e63

    adc a
    ld b, [hl]
    rst $28
    ld c, [hl]
    and $40
    ld hl, $bc40
    ld d, b
    jr nz, jr_03b_4e6f

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld hl, sp+$4e
    rlca
    ld e, $32
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    rst $28
    rst $28
    rst $28

jr_03b_4f19:
    rst $28
    jp hl


    rst $28
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    inc e
    ld a, [de]
    daa
    rst $28
    ld [$1def], sp
    jr z, jr_03b_4f19

    rst $28
    rst $28
    rra
    jr z, jr_03b_4f5a

    rst $28
    ld [hl-], a
    jr z, @+$30

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    ld [$2cef], sp
    ld e, $1e
    adc [hl]
    rst $28
    ld [hl-], a
    jr z, jr_03b_4f74

    rst $28
    jr nc, jr_03b_4f63

    daa
    dec l
    rst $28
    dec l
    jr z, @-$0f

    ld e, $31
    add hl, hl
    ld a, [de]
    daa
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl

jr_03b_4f5a:
    rst $28
    jp hl


    ld hl, $2e28
    inc l
    ld e, $4c
    rst $28

jr_03b_4f63:
    nop
    dec h
    dec hl
    ld [hl+], a
    jr nz, jr_03b_4f8a

    dec l
    ld b, b
    rst $28
    inc de
    jr z, jr_03b_4f95

    jr z, jr_03b_4f9c

    dec hl
    jr z, jr_03b_4fa4

jr_03b_4f74:
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    jp hl


    dec h
    ld e, $2d
    rst $28
    ld [hl-], a
    jr z, jr_03b_4fb1

    rst $28
    inc h
    daa
    jr z, jr_03b_4fb8

    rst $28
    dec l

jr_03b_4f8a:
    ld hl, $1c1e
    jr z, jr_03b_4fbb

    dec l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_03b_4f95:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


jr_03b_4f9c:
    ld h, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h

jr_03b_4fa4:
    rst $28
    daa
    ld e, $1e
    dec e
    ld e, $1d
    rst $28
    rra
    jr z, jr_03b_4fda

    rst $28
    dec l

jr_03b_4fb1:
    ld hl, $ef1e
    inc hl
    jr z, jr_03b_4fd2

    ld c, h

jr_03b_4fb8:
    rst $28
    rst $28
    rst $28

jr_03b_4fbb:
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h
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
    rst $28
    rst $28
    rst $28

jr_03b_4fd2:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_4fda:
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld l, $2c
    ld e, $1d
    rst $28
    rra
    jr z, jr_03b_5015

    rst $28
    rst $28
    ld e, $31
    add hl, hl
    ld a, [de]
    daa
    inc l
    ld [hl+], a
    jr z, jr_03b_501c

    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_03b_502a

    rst $28
    ld [hl-], a
    jr z, jr_03b_5031

    dec hl
    rst $28
    rra
    ld e, $27
    inc e
    ld e, $4c
    rst $28
    add hl, sp
    inc [hl]
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a

jr_03b_5015:
    ld a, [de]
    dec h
    inc l
    rst $28
    rst $28
    rst $28
    jp hl


jr_03b_501c:
    rra
    jr z, jr_03b_504a

    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_502a:
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28

jr_03b_5031:
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $321e
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l

jr_03b_504a:
    dec l
    ld b, h
    dec h
    ld e, $ef
    ld hl, $1a1e
    cpl
    ld [hl-], a
    adc [hl]
    rst $28
    ld [$efef], sp
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_5080

jr_03b_505e:
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h

jr_03b_5064:
    ld e, $ef
    dec l
    ld hl, $261e
    rst $28
    rst $28
    dec l
    jr z, jr_03b_505e

    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    dec hl
    ld a, [de]

jr_03b_5076:
    daa
    inc e
    ld hl, $ef4c
    rst $28
    inc de
    ld hl, $271e

jr_03b_5080:
    rst $28
    dec e

jr_03b_5082:
    jr z, jr_03b_50ab

    ld c, e
    dec l
    rst $28
    jr nc, @+$1c

    inc l
    dec l
    ld e, $26
    ld [hl-], a

jr_03b_508e:
    rst $28
    dec l
    ld [hl+], a
    ld h, $1e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld a, [de]
    rst $28
    ld hl, $ef1a
    ld hl, $8e1a
    rst $28
    ld [hl-], a
    jr z, jr_03b_50d7

    rst $28
    rst $28

jr_03b_50ab:
    rst $28
    ld h, $2e
    inc l
    dec l
    rst $28
    dec de
    ld e, $ef
    inc hl
    jr z, jr_03b_50db

    ld [hl+], a
    daa

jr_03b_50b9:
    jr nz, @+$4e

    jp hl


    ld d, $1e
    dec h
    dec h
    adc [hl]
    rst $28
    inc l
    ld e, $1e

jr_03b_50c5:
    rst $28
    ld [hl-], a
    ld a, [de]
    ld c, h
    rst $28
    rst $28
    rst $28
    inc de
    ld a, [de]
    inc h
    ld e, $ef

jr_03b_50d1:
    inc e
    ld a, [de]
    dec hl
    ld e, $4c
    rst $28

jr_03b_50d7:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_50db:
    rst $28
    and $40
    ld hl, $7c40
    ld d, d
    jr nz, jr_03b_5064

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld [$e650], a
    ld b, b

jr_03b_50f0:
    ld hl, $9c40
    ld d, d
    jr nz, jr_03b_5076

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_50fc:
    ld hl, $bc40
    ld d, d
    jr nz, jr_03b_5082

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_5108:
    ld hl, $dc40
    ld d, d
    jr nz, jr_03b_508e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c

jr_03b_5114:
    jr jr_03b_5167

    ld [hl], b
    ld d, d
    add l
    ld b, e
    inc l
    ld bc, $522b
    sub $45
    ld bc, $468f
    ld e, b
    ld d, d
    and $40
    ld hl, $3c40
    ld d, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5c40
    ld d, e
    jr nz, jr_03b_50b9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, e
    jr nz, jr_03b_50c5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld d, e
    jr nz, jr_03b_50d1

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld e, e
    ld d, c

jr_03b_5159:
    ld [hl], b
    ld d, d
    add l
    ld b, e
    db $f4
    ld bc, $522b
    sub $45
    nop
    adc a
    ld b, [hl]
    ld h, h

jr_03b_5167:
    ld d, d
    and $40
    ld hl, $dc40
    ld d, e
    jr nz, jr_03b_50f0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld d, e

jr_03b_517a:
    jr nz, jr_03b_50fc

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, h

jr_03b_5186:
    jr nz, jr_03b_5108

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3c40
    ld d, h

jr_03b_5192:
    jr nz, jr_03b_5114

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc [hl]
    ld d, c
    ld [hl], b
    ld d, d
    add l
    ld b, e
    inc l
    ld bc, $522b
    dec l
    ld b, h
    jp z, $0ab8

    adc a
    ld b, [hl]
    ld h, h
    ld d, d
    and $40
    ld hl, $5c40
    ld d, h

jr_03b_51b3:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9c40
    ld d, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $bc40
    ld d, h
    jr nz, jr_03b_5159

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    db $e3

jr_03b_51e0:
    ld d, c
    ld [hl], b
    ld d, d
    add l
    ld b, e
    ret z

    nop
    dec hl
    ld d, d
    dec l
    ld b, h
    res 7, b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, b
    ld d, d
    and $40
    ld hl, $dc40
    ld d, h

jr_03b_51f8:
    jr nz, jr_03b_517a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $fc40
    ld d, h
    jr nz, jr_03b_5186

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1c40
    ld d, l
    jr nz, jr_03b_5192

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    inc e
    ld d, d
    ld [hl], b
    ld d, d
    add l
    ld b, e
    ld h, h
    nop
    dec hl
    ld d, d
    dec l
    ld b, h
    call z, $0ab8
    adc a
    ld b, [hl]
    ld e, b
    ld d, d
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_03b_51b3

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    inc a
    ld d, d
    and $40
    ld hl, $5c40
    ld d, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7c40
    ld d, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $fc40
    ld d, d
    jr nz, jr_03b_51e0

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $bc40
    ld d, e
    jr nz, @-$7e

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    and $40
    ld hl, $1c40
    ld d, e
    jr nz, jr_03b_51f8

    adc a
    ld b, [hl]
    inc sp
    ld d, d
    rlca
    ld [hl+], a
    ld c, h
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_52b7

    rst $28
    rst $28
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld a, [de]
    rst $28
    dec e
    dec hl
    ld [hl+], a
    daa
    inc h
    ld b, c
    rst $28
    rst $28
    jp hl


    ld c, $2b
    ld a, [de]
    daa
    jr nz, jr_03b_52c0

    rst $28
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec l
    ld [hl-], a

jr_03b_52b7:
    rst $28
    jr z, @+$21

    rst $28
    jp hl


    dec l
    ld hl, $2c22

jr_03b_52c0:
    rst $28
    dec l
    jr z, jr_03b_52f4

    daa
    ld c, h
    rst $28
    rrca
    dec h
    ld e, $1a
    ld b, h
    inc l
    ld e, $ef
    ld e, $27
    inc hl
    jr z, @+$34

    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    rst $28
    jp hl


    add hl, hl
    dec hl
    ld [hl+], a
    inc e
    ld e, $ef
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc

jr_03b_52f4:
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_5332

    rst $28
    jr nz, jr_03b_532f

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
    rst $28
    rst $28
    rst $28
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    rst $28
    ld [$ef2d], sp
    ld a, [de]
    dec h
    dec h
    rst $28
    rst $28
    dec l
    ld a, [de]
    inc l

jr_03b_532f:
    dec l
    ld e, $2c

jr_03b_5332:
    rst $28
    jr nz, jr_03b_535d

    jr z, jr_03b_5354

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    dec h

jr_03b_5354:
    ld [hl-], a
    rst $28
    ld h, $1a
    dec e
    ld e, $ef
    jp hl


    nop

jr_03b_535d:
    add hl, hl
    add hl, hl
    dec h
    ld e, $ef
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_03b_538f

    ld [hl+], a
    inc e
    ld hl, $22ef

jr_03b_5373:
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc l
    ld e, $25
    dec h
    ld [hl+], a
    daa
    jr nz, jr_03b_5373

    ld a, [hl+]
    ld l, $22
    dec l
    ld e, $ef
    rst $28
    rst $28
    jr nc, jr_03b_53ac

    dec h

jr_03b_538f:
    dec h
    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    add hl, hl
    dec hl
    ld [hl+], a
    inc e
    ld e, $e9
    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_53ac:
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_53dd

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_53f2

    rst $28
    jr nz, jr_03b_53ef

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
    rst $28
    rst $28
    rst $28
    inc de

jr_03b_53dd:
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld d, $22
    dec h
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]

jr_03b_53ef:
    add hl, hl
    ld e, $ef

jr_03b_53f2:
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $2d1a
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl+], a
    daa
    inc e
    dec hl
    ld e, $1a
    inc l
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_5446

    dec hl
    rst $28
    rst $28
    jp hl


    add hl, hl
    jr z, @+$32

    ld e, $2b
    ld c, h
    rst $28
    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_5456

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_03b_546a

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e
    ld l, $29

jr_03b_5446:
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_547d

jr_03b_5456:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    ld hl, $2022
    ld hl, $efef

jr_03b_546a:
    rst $28
    rst $28
    ld a, [hl+]
    ld l, $1a
    dec h
    ld [hl+], a
    dec l
    ld [hl-], a
    rst $28
    ld b, $2b
    ld e, $1e
    daa
    rst $28
    rst $28
    jp hl


    inc de

jr_03b_547d:
    ld e, $1a
    ld c, h
    rst $28
    ld c, $27
    ld e, $ef
    inc e
    ld l, $29
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_03b_54b0

    dec h
    dec h
    rst $28
    inc l
    ld l, $2b
    ld e, $25
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr nc, @+$1c

    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_54d2

    rst $28
    ld l, $29
    ld b, b
    rst $28
    inc de
    ld hl, $1c1e
    jr z, @+$2e

    dec l

jr_03b_54b0:
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_03b_54ea

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e
    ld l, $29
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28

jr_03b_54d2:
    rst $28
    inc bc
    jr z, jr_03b_54fd

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
    rst $28
    jr nc, @+$23

    ld [hl+], a

jr_03b_54ea:
    inc e
    ld hl, $1a30
    inc l
    rst $28
    add hl, hl
    dec hl
    jr z, jr_03b_5511

    ld l, $1c
    ld e, $1d
    rst $28
    ld a, [de]
    dec l
    jp hl


    ld [hl-], a

jr_03b_54fd:
    jr z, jr_03b_552d

    dec hl
    rst $28
    dec hl
    ld a, [de]
    daa
    inc e
    ld hl, $ef4c
    inc de
    ld hl, $ef1e
    inc e
    jr z, @+$2e

    dec l
    rst $28

jr_03b_5511:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    jp hl


    rra
    jr z, @+$2d

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    inc e

jr_03b_5524:
    ld l, $29
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_552d:
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_555d

jr_03b_5536:
    ld c, e
    dec l
    rst $28
    ld bc, $322e
    jr jr_03b_5566

    ld l, $ef
    dec e
    jr z, jr_03b_556a

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    ld e, $27
    jr z, @+$30

    jr nz, @+$23

    rst $28
    ld h, $28
    daa
    ld e, $32
    ld c, h
    rst $28
    rst $28
    rst $28
    dec bc

jr_03b_555d:
    ld e, $1a
    cpl
    ld [hl+], a
    daa
    jr nz, jr_03b_55a5

    rst $28
    nop

jr_03b_5566:
    dec hl

jr_03b_5567:
    ld e, $ef
    ld [hl-], a

jr_03b_556a:
    jr z, jr_03b_559a

    dec hl
    ld e, $1f
    dec hl
    ld e, $2c
    ld hl, $1d1e
    rst $28
    daa
    jr z, jr_03b_55a9

    ld b, c
    rst $28
    jp hl


    ld [bc], a
    jr z, jr_03b_55a5

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    rst $28
    inc l
    jr z, @+$2a

    daa
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

jr_03b_559a:
    rst $28
    rst $28
    and $40

jr_03b_559e:
    ld hl, $6c40
    ld e, d
    jr nz, jr_03b_5524

    inc [hl]

jr_03b_55a5:
    ld b, b
    inc [hl]
    ld b, c
    dec a

jr_03b_55a9:
    ld b, l

jr_03b_55aa:
    adc a
    ld b, [hl]
    xor d
    ld d, l
    and $40
    ld hl, $8c40
    ld e, d
    jr nz, jr_03b_5536

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    call z, Call_03b_6055
    ld e, d
    dec de
    ld b, [hl]

jr_03b_55ce:
    ld [hl], $e8
    ld e, c
    ldh a, [c]
    ld b, l
    call nz, $8559
    ld b, e
    adc b
    inc de
    and e

jr_03b_55da:
    ld e, c
    ld l, e
    ld b, a
    adc b
    inc de
    and $40
    ld hl, $cc40
    ld e, [hl]
    jr nz, jr_03b_5567

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld c, b
    ld b, [hl]
    adc a
    ld b, [hl]
    db $ed
    ld d, l
    and $40
    inc de
    ld b, c
    db $ec
    ld e, [hl]
    ld [hl], d
    call Call_000_2c20
    call $cd72
    inc b
    ld hl, $7240
    call $8020
    inc [hl]
    ld b, b
    xor e
    ld b, l

jr_03b_5609:
    inc [hl]
    ld b, c
    rst $10
    ld b, e
    or e
    cp b
    ld [bc], a
    ld l, $56
    pop af
    ld b, e
    or e

jr_03b_5615:
    cp b
    and $40
    ld hl, $0c40
    ld e, a
    jr nz, jr_03b_559e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_5621:
    ld b, c
    and $40
    ld hl, $2c40
    ld e, a
    jr nz, jr_03b_55aa

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_562d:
    ld b, c
    and $40
    inc de
    ld b, c
    ld c, h
    ld e, a
    ld [hl], d
    call Call_000_2c20
    call $cd82
    inc b
    ld hl, $7240
    call $8020
    inc [hl]
    ld b, b
    inc [hl]

jr_03b_5645:
    ld b, c
    and $40
    ld hl, $6c40
    ld e, a
    jr nz, jr_03b_55ce

    adc a
    ld b, [hl]
    xor e

jr_03b_5651:
    ld e, c
    and $40
    ld hl, $ec40
    ld e, d
    jr nz, jr_03b_55da

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], b
    ld d, [hl]
    ld h, b
    ld e, d
    dec de
    ld b, [hl]
    inc h
    jr jr_03b_56cf

jr_03b_5675:
    ld de, $c446
    ld e, c
    add l
    ld b, e
    db $f4
    ld bc, $59a3
    ld l, a
    ld b, [hl]

jr_03b_5681:
    and $40
    ld hl, $6c40
    ld h, b
    jr nz, jr_03b_5609

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_568d:
    and $40
    ld hl, $8c40
    ld h, b
    jr nz, jr_03b_5615

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_03b_5699:
    and $40
    ld hl, $4c40
    ld e, h
    jr nz, jr_03b_5621

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_56a5:
    and $40
    ld hl, $ac40
    ld e, h
    jr nz, jr_03b_562d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, h
    jr nz, jr_03b_5645

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_56c9:
    and $40
    ld hl, $8c40
    ld e, l

jr_03b_56cf:
    jr nz, jr_03b_5651

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_03b_56d5:
    ld l, b
    ld b, c
    db $db
    ld d, [hl]
    ld h, b
    ld e, d
    add l
    ld b, e
    cp h
    ld [bc], a
    and e
    ld e, c

jr_03b_56e1:
    pop af
    ld b, e
    ret nz

    cp b
    ei
    ld b, e
    ld b, [hl]
    cp c
    adc a
    ld b, [hl]
    ld d, h
    ld e, d

jr_03b_56ed:
    and $40
    ld hl, $8c40
    ld e, h
    jr nz, jr_03b_5675

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, h
    jr nz, jr_03b_5681

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, h
    jr nz, jr_03b_568d

jr_03b_570d:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld e, h
    jr nz, jr_03b_5699

jr_03b_5719:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_03b_56a5

jr_03b_5725:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    cpl
    ld d, a
    ld h, b
    ld e, d
    add l
    ld b, e

jr_03b_5731:
    db $f4
    ld bc, $59a3
    pop af
    ld b, e
    pop bc
    cp b
    ei
    ld b, e
    ld b, a
    cp c
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $6c40
    ld e, e
    jr nz, jr_03b_56c9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, e
    jr nz, jr_03b_56d5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, e
    jr nz, jr_03b_56e1

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_03b_56ed

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], a
    ld d, a

jr_03b_5775:
    ld h, b
    ld e, d
    add l
    ld b, e
    add sp, $03
    and e
    ld e, c
    pop af
    ld b, e
    xor e
    cp b
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $ec40
    ld e, e
    jr nz, jr_03b_570d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld e, h
    jr nz, jr_03b_5719

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld e, h
    jr nz, jr_03b_5725

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_03b_5731

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    cp e
    ld d, a

jr_03b_57b9:
    ld h, b
    ld e, d
    add l
    ld b, e
    and b
    rrca
    and e
    ld e, c
    pop af
    ld b, e
    or d
    cp b

jr_03b_57c5:
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40
    ld hl, $2c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, l
    jr nz, jr_03b_5775

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    rst $38
    ld d, a
    ld h, b
    ld e, d
    add l
    ld b, e
    ret nc

    rlca
    and e
    ld e, c
    pop af
    ld b, e
    or c
    cp b
    adc a
    ld b, [hl]
    ld d, h
    ld e, d
    and $40

jr_03b_580f:
    ld hl, $8c40
    ld e, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_03b_5825:
    rst $30
    ld b, a
    dec hl
    ld e, b
    ld h, b
    ld e, d
    ld d, l
    ld b, [hl]
    adc a
    ld b, [hl]
    dec l
    ld e, b

jr_03b_5831:
    and $40
    ld hl, $cc40
    ld e, a
    jr nz, jr_03b_57b9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_583d:
    and $40
    ld hl, $ec40
    ld e, a
    jr nz, jr_03b_57c5

    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, e

jr_03b_584e:
    ld e, b
    and $40
    inc de
    ld b, c
    adc h
    ld h, c
    ld [hl], d
    call $cd20
    call z, $cd87
    ld bc, $7bce
    xor h

jr_03b_5860:
    ld h, c
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    adc a
    ld b, [hl]
    ld l, c

jr_03b_586c:
    ld e, b
    and $40
    inc de
    ld b, c
    call z, Call_03b_7261
    call Call_03b_4a20
    cp c
    adc l
    call $0801
    ld a, h
    ld hl, $7240
    call $8020
    ld d, c

jr_03b_5884:
    ld a, e
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, c
    jr nz, jr_03b_580f

    inc [hl]

jr_03b_5890:
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc c
    ld e, b
    add $58
    inc sp
    ld a, h
    cp d
    ld b, l
    and $40
    ld hl, $0c40
    ld h, b
    jr nz, jr_03b_5825

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld h, b
    jr nz, jr_03b_5831

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld h, b
    jr nz, jr_03b_583d

    ld d, c
    ld a, e
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    rst $08
    ld a, h
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, jr_03b_584e

    adc a
    ld b, [hl]
    cp l
    ld e, b
    cp d
    ld a, h
    adc a
    ld b, [hl]
    call nc, $e658
    ld b, b

jr_03b_58da:
    ld hl, $ac40
    ld h, b
    jr nz, jr_03b_5860

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld h, b
    jr nz, jr_03b_586c

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_03b_58f0:
    rst $30
    ld b, a
    or $58
    ld h, b
    ld e, d
    ld h, d
    ld b, [hl]
    adc a
    ld b, [hl]
    ld hl, sp+$58

jr_03b_58fc:
    and $40
    ld hl, $ec40
    ld h, b
    jr nz, jr_03b_5884

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_5908:
    and $40
    ld hl, $0c40
    ld h, c
    jr nz, jr_03b_5890

    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld d, $59
    and $40
    inc de
    ld b, c
    adc h
    ld h, c
    ld [hl], d
    call $cd20
    call z, $cd87
    ld bc, $7cf6
    xor h

jr_03b_592b:
    ld h, c
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    adc a
    ld b, [hl]
    inc [hl]
    ld e, c
    and $40
    inc de
    ld b, c
    call z, Call_03b_7261
    call $a820
    cp c
    adc h
    call Call_000_2c01
    ld a, l
    ld hl, $7240
    call $8020
    ld d, c
    ld a, e
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, c

jr_03b_5958:
    jr nz, jr_03b_58da

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld h, h
    ld e, c
    sub c
    ld e, c

jr_03b_5964:
    db $e4
    ld a, h
    ret z

    ld b, l
    and $40
    ld hl, $2c40
    ld h, c
    jr nz, jr_03b_58f0

jr_03b_5970:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld h, c
    jr nz, jr_03b_58fc

jr_03b_597c:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld h, c
    jr nz, jr_03b_5908

jr_03b_5988:
    ld d, c
    ld a, e
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    rst $08
    ld a, h
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, @-$7e

    adc a
    ld b, [hl]
    cp l
    ld e, b
    cp d
    ld a, h
    adc a

jr_03b_59a0:
    ld b, [hl]
    sbc a
    ld e, c
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_03b_592b

    inc [hl]

jr_03b_59ac:
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    or h
    ld e, c

jr_03b_59b8:
    and $40
    ld hl, $0c40
    ld e, l
    jr nz, @-$7e

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_03b_59c4:
    and $40
    ld hl, $0c40
    ld e, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_59d0:
    and $40
    ld hl, $2c40
    ld e, e
    jr nz, jr_03b_5958

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_59dc:
    and $40
    ld hl, $4c40
    ld e, e
    jr nz, jr_03b_5964

    adc a
    ld b, [hl]
    xor e
    ld e, c

jr_03b_59e8:
    and $40
    ld hl, $ac40
    ld e, l
    jr nz, jr_03b_5970

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, l
    jr nz, jr_03b_597c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld e, l
    jr nz, jr_03b_5988

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld e, [hl]
    jr nz, @-$7e

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $2c40
    ld e, [hl]
    jr nz, jr_03b_59a0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld e, [hl]
    jr nz, jr_03b_59ac

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld e, [hl]
    jr nz, jr_03b_59b8

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, [hl]
    jr nz, jr_03b_59c4

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld e, [hl]
    jr nz, jr_03b_59d0

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $cc40
    ld e, e
    jr nz, jr_03b_59dc

    adc a
    ld b, [hl]
    xor e
    ld e, c
    and $40
    ld hl, $cc40
    ld e, d
    jr nz, jr_03b_59e8

    adc a
    ld b, [hl]
    xor e
    ld e, c
    rlca
    jr z, jr_03b_5a9f

    rst $28
    ld a, [de]

jr_03b_5a71:
    dec hl
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_5aa5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_03b_5aa1

    daa
    jr nz, jr_03b_5a71

    dec l
    jr z, @+$1f

    ld a, [de]
    ld [hl-], a
    ld b, c
    rst $28
    rst $28
    rst $28
    jp hl


    nop
    rst $28
    inc e
    jr z, jr_03b_5ac1

    rst $28
    inc e
    jr z, jr_03b_5ac1

    dec l
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28

jr_03b_5a9f:
    ld d, $28

jr_03b_5aa1:
    ld l, $25

jr_03b_5aa3:
    dec e
    rst $28

jr_03b_5aa5:
    ld [hl-], a
    jr z, @+$30

    rst $28
    rst $28
    rst $28
    jp hl


    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_03b_5aa3

    dec de
    ld l, $32
    rst $28
    jr z, jr_03b_5ae1

    ld e, $41
    rst $28
    ld bc, $322e
    rst $28

jr_03b_5ac1:
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_5aed

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    ld [$ef2c], sp
    dec l
    ld hl, $2d1a
    rst $28
    inc l
    jr z, jr_03b_5b18

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

jr_03b_5ae1:
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
    nop

jr_03b_5aed:
    rst $28
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, @+$2e

    dec l
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5b39

    jp hl


    ld [$ef1f], sp
    ld [hl-], a
    jr z, jr_03b_5b40

    rst $28
    dec de
    ld l, $32
    rst $28
    dec l

jr_03b_5b18:
    jr z, jr_03b_5b42

    rst $28
    rst $28
    ld h, $1a
    daa
    ld [hl-], a
    rst $28
    ld a, [de]
    daa
    ld [hl+], a
    ld h, $1a
    dec h
    inc l
    rst $28
    ld a, [de]
    dec l
    jp hl


    jr z, jr_03b_5b55

    inc e
    ld e, $8e
    rst $28
    dec l
    ld hl, $321e
    rst $28
    jr nc, jr_03b_5b5b

jr_03b_5b39:
    dec h
    dec h
    rst $28
    jr nz, jr_03b_5b5c

    dec l
    rst $28

jr_03b_5b40:
    ld l, $29

jr_03b_5b42:
    inc l
    ld e, $2d
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr jr_03b_5b76

    ld l, $ef
    inc l
    ld hl, $2e28
    dec h

jr_03b_5b55:
    dec e
    rst $28
    inc l
    dec l
    jr z, jr_03b_5b84

jr_03b_5b5b:
    rst $28

jr_03b_5b5c:
    dec de
    ld l, $32
    ld [hl+], a
    daa
    jr nz, jr_03b_5baf

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
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    jr z, jr_03b_5ba5

    rst $28

jr_03b_5b76:
    inc c
    ld e, $1d
    ld [hl+], a

jr_03b_5b7a:
    inc e
    ld b, h
    ld [hl+], a
    daa
    ld e, $4c
    ld bc, $ef1e
    inc l

jr_03b_5b84:
    ld l, $2b
    ld e, $ef
    dec l
    jr z, jr_03b_5b7a

    jp hl


    rra
    ld a, [de]
    inc e
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e

jr_03b_5b96:
    jr z, jr_03b_5bc8

    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, @+$23

    ld e, $27
    rst $28
    ld l, $2c
    ld [hl+], a
    daa

jr_03b_5ba5:
    jr nz, jr_03b_5b96

    ld [hl+], a
    dec l
    ld c, h
    rst $28
    jp hl


    ld [$ef2d], sp

jr_03b_5baf:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5bf3

    rst $28
    dec h
    ld [hl+], a

jr_03b_5bc8:
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $271a
    inc h
    rst $28
    jr jr_03b_5bfc

    ld l, $40
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
    inc de
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l

jr_03b_5bf3:
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_5bfc:
    inc c
    ld c, h
    rst $28
    rrca
    jr z, jr_03b_5c2f

    ld [hl+], a
    jr z, jr_03b_5c2c

    rst $28
    rst $28
    rst $28

jr_03b_5c08:
    rst $28
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_03b_5c3a

    rst $28
    dec de
    dec hl
    ld e, $1e
    dec e
    ld [hl+], a
    daa
    jr nz, jr_03b_5c08

    rst $28
    rst $28
    rst $28
    inc e
    jr z, @+$32

    inc l
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
    jp hl


jr_03b_5c2c:
    ld [$ef2d], sp

jr_03b_5c2f:
    ld [hl+], a
    inc l
    rst $28
    jr c, jr_03b_5c68

    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28

jr_03b_5c3a:
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5c73

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    jr z, jr_03b_5c85

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec b
    ld e, $1e
    dec e
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld [hl+], a
    dec l

jr_03b_5c68:
    rst $28
    ld [hl+], a
    inc l
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    dec sp

jr_03b_5c73:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, @+$30

jr_03b_5c85:
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rst $28
    rst $28
    dec b
    ld e, $1e
    dec e
    adc [hl]
    rst $28
    dec de

jr_03b_5ca3:
    ld l, $2d
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    jp hl


    dec de
    ld e, $2c
    dec l
    rst $28
    dec l
    jr z, jr_03b_5ca3

    rra
    ld e, $1e
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $261e
    rst $28
    rra
    jr z, jr_03b_5ce1

    dec e
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld a, [de]
    inc l
    rst $28
    ld h, $2e
    inc e
    ld hl, $1aef
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    add hl, hl
    jr z, jr_03b_5d0b

    inc l
    ld [hl+], a

jr_03b_5ce1:
    dec de
    dec h
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5d33

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef

jr_03b_5d0b:
    jp hl


    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5d41

    rst $28
    dec h
    ld a, [de]
    dec l
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    rst $28
    jr nc, jr_03b_5d55

jr_03b_5d33:
    dec h
    dec h
    rst $28
    add hl, hl
    dec hl
    ld e, $2f
    ld e, $44
    daa
    dec l
    rst $28
    ld a, [de]
    rst $28

jr_03b_5d41:
    inc e
    jr z, jr_03b_5d74

    rst $28
    rra
    dec hl
    jr z, jr_03b_5d6f

    rst $28
    rst $28
    jp hl


    jr nz, jr_03b_5d6c

    dec l
    dec l
    ld [hl+], a
    daa
    jr nz, @-$0f

    inc l

jr_03b_5d55:
    ld [hl+], a
    inc e
    inc h
    rst $28
    rra
    jr z, jr_03b_5d87

    scf
    inc [hl]
    dec e
    ld a, [de]
    ld [hl-], a
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


jr_03b_5d6c:
    ld [$ef2d], sp

jr_03b_5d6f:
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34

jr_03b_5d74:
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28

jr_03b_5d7e:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_5db3

    rst $28
    dec h

jr_03b_5d87:
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    dec l
    jr z, jr_03b_5d7e

    dec de
    ld l, $32
    rst $28
    ld [hl+], a
    dec l
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    rlca
    jr z, jr_03b_5dd4

    dec e
    rst $28
    jr z, @+$29

jr_03b_5db3:
    adc [hl]
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    inc l
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_03b_5dfa

    ld c, h
    jp hl


    jr jr_03b_5df6

    ld l, $ef
    dec e
    jr z, jr_03b_5dfa

    ld c, e

jr_03b_5dd4:
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    ld e, $27
    jr z, @+$30

    jr nz, jr_03b_5e03

    rst $28
    jr nz, jr_03b_5e10

    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28
    rst $28
    jp hl


    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    ld e, $1d
    ld c, h
    rst $28
    rrca

jr_03b_5df6:
    dec h
    ld e, $1a
    inc l

jr_03b_5dfa:
    ld e, $ef
    inc e
    jr z, jr_03b_5e25

    ld e, $ef
    dec de
    ld a, [de]

jr_03b_5e03:
    inc e
    inc h
    rst $28
    jr nc, jr_03b_5e29

    ld e, $27
    rst $28
    jp hl


    ld [hl-], a
    jr z, jr_03b_5e3d

    rst $28

jr_03b_5e10:
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    ld h, $28
    dec hl
    ld e, $ef
    rst $28
    jr nz, jr_03b_5e49

    ld a, [de]
    inc l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28

jr_03b_5e25:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_5e29:
    rst $28
    rst $28
    rst $28
    rlca
    jr z, jr_03b_5e54

    dec e
    rst $28
    jr z, jr_03b_5e5a

    adc [hl]
    rst $28
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    inc l

jr_03b_5e3d:
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, jr_03b_5e72

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28

jr_03b_5e49:
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    ld c, h

jr_03b_5e54:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_5e5a:
    rst $28
    rst $28
    jr jr_03b_5e86

    ld l, $ef
    dec e
    jr z, @-$0f

    daa
    jr z, jr_03b_5e93

    rst $28
    ld hl, $2f1a
    ld e, $e9
    ld e, $27
    jr z, jr_03b_5e9e

    jr nz, jr_03b_5e93

jr_03b_5e72:
    rst $28
    jr nz, jr_03b_5ea0

    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    ld e, $1d
    ld c, h
    rst $28
    rst $28

jr_03b_5e86:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_03b_5e93:
    inc e
    jr z, jr_03b_5ebc

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    jr nc, jr_03b_5ebf

jr_03b_5e9e:
    ld e, $27

jr_03b_5ea0:
    rst $28
    ld [hl-], a
    jr z, @+$30

    rst $28
    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    jp hl


    ld h, $28
    dec hl
    ld e, $ef
    jr nz, @+$2d

    ld a, [de]
    inc l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_5ebc:
    rst $28
    rst $28
    rst $28

jr_03b_5ebf:
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
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    daa
    ld a, [de]
    ld h, $1e
    rst $28
    dec l
    ld hl, $ef1e
    inc e
    jr z, jr_03b_5f0f

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
    jp hl


    rst $28
    rst $28
    rst $28
    rst $28
    adc [hl]
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    jr nz, jr_03b_5f21

    jr z, jr_03b_5f18

    rst $28
    daa
    ld a, [de]
    ld h, $1e
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
    jp hl


    rlca
    ld e, $2b

jr_03b_5f0f:
    ld e, $8e
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l

jr_03b_5f18:
    ld hl, $2c22
    rst $28
    inc e
    jr z, jr_03b_5f4f

    rst $28
    dec de

jr_03b_5f21:
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    inc l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    jp hl


    jr nz, jr_03b_5f50

    rra
    dec l
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


    dec c
    jr z, jr_03b_5f7f

jr_03b_5f4f:
    rst $28

jr_03b_5f50:
    ld [$30ef], sp

jr_03b_5f53:
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    jr z, jr_03b_5f53

    ld [hl-], a
    jr z, jr_03b_5f95

    dec hl
    rst $28
    rst $28
    rst $28
    jp hl


    dec de
    ld a, [de]
    dec hl
    daa
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

jr_03b_5f7f:
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
    ld l, $25
    dec e
    rst $28
    ld [hl-], a

jr_03b_5f93:
    jr z, jr_03b_5fc3

jr_03b_5f95:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    dec l
    jr z, jr_03b_5f93

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc l
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_03b_5fe6

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03b_5fdd

    inc l
    rst $28
    rst $28
    rst $28

jr_03b_5fc3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, jr_03b_5fe3

    ld hl, $1c22
    ld hl, $1cef
    jr z, jr_03b_6005

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a

jr_03b_5fdd:
    ld hl, $2828
    inc l
    ld e, $ef

jr_03b_5fe3:
    ld a, [de]
    rst $28
    daa

jr_03b_5fe6:
    ld a, [de]
    ld h, $1e
    rst $28
    rst $28
    jp hl


    ld a, [de]
    daa
    dec e
    rst $28
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    nop
    rst $28
    dec de
    ld l, $2d
    dec l
    jr z, jr_03b_602b

    ld c, h

jr_03b_6005:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    jr z, jr_03b_604f

    rst $28
    rra
    dec hl
    jr z, jr_03b_604a

    rst $28
    dec l
    ld hl, $ef1e
    rst $28
    rst $28

jr_03b_602b:
    jp hl


    dec de
    ld a, [de]
    dec hl
    daa
    ld c, h
    rst $28
    ld bc, $2d2e
    rst $28
    dec e
    jr z, jr_03b_6060

    ld c, e
    dec l
    rst $28
    dec h
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    dec de
    ld l, $32
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_604a:
    rst $28
    jp hl


    ld a, [de]
    daa
    ld [hl-], a

jr_03b_604f:
    ld h, $28
    dec hl
    ld e, $4c
    rst $28

Call_03b_6055:
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

jr_03b_6060:
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
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h

jr_03b_6076:
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    dec l
    jr z, jr_03b_6076

    ld [hl-], a
    jr z, jr_03b_60b8

    dec hl
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, jr_03b_60bf

    add hl, hl
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
    rst $28
    rst $28
    ld d, $28

jr_03b_60ae:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_60e3

    rst $28
    dec h
    ld [hl+], a

jr_03b_60b8:
    inc h
    ld e, $ef
    rst $28
    dec l
    jr z, jr_03b_60ae

jr_03b_60bf:
    inc l
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc e
    ld hl, $1c22
    inc h
    ld e, $27
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
    jr jr_03b_60fd

    inc l
    rst $28
    rst $28
    rst $28

jr_03b_60e3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, jr_03b_6103

    ld hl, $1c22
    ld hl, $1cef
    ld hl, $1c22
    inc h
    ld e, $27
    ld b, c
    rst $28
    rst $28
    rrca

jr_03b_60fd:
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_03b_6103:
    inc l
    ld e, $25
    ld e, $1c
    dec l
    rst $28
    ld a, [de]
    jp hl


    daa
    ld l, $26
    dec de
    ld e, $2b
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    add hl, hl
    dec hl
    ld e, $2c
    inc l
    dec l
    ld hl, $ef1e
    nop
    rst $28
    dec de
    ld l, $2d
    dec l
    jr z, @+$29

    ld c, h
    rst $28
    rst $28
    jp hl


    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rra
    dec hl
    jr z, jr_03b_616e

    rst $28
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $ef1e
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    inc e
    jr z, jr_03b_6183

    add hl, hl
    ld bc, $2d2e
    rst $28
    dec e
    jr z, jr_03b_618a

    ld c, e
    dec l
    rst $28
    dec h
    ld e, $2d
    rst $28
    rst $28
    jp hl


    ld h, $1e

jr_03b_616e:
    rst $28
    dec de
    ld l, $32
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    ld h, $28
    dec hl
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_6183:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_618a:
    rst $28
    rst $28
    ld [de], a
    ld e, $25
    dec h
    ld [hl+], a
    daa
    jr nz, jr_03b_6183

    rrca
    dec hl
    ld [hl+], a
    inc e
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
    ld b, $4c
    rst $28
    rst $28
    rst $28

jr_03b_61ac:
    ld [$1cef], sp
    ld a, [de]
    daa
    ld c, e
    dec l
    rst $28
    dec de
    ld l, $32
    rst $28

jr_03b_61b8:
    ld [hl+], a
    dec l
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
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    jr nz, jr_03b_61f7

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_6209

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $ef
    rra
    jr z, jr_03b_6211

jr_03b_61e6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


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

jr_03b_61f7:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $25
    dec h
    rst $28

jr_03b_6202:
    rst $28
    dec c
    jr z, @-$71

    ld [de], a
    ld e, $25

jr_03b_6209:
    dec h
    rst $28
    rst $28
    and $40

jr_03b_620e:
    inc de
    ld b, c
    ld c, h

jr_03b_6211:
    ld h, h
    ld [hl], d
    call $f420
    cp b
    add d
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]

jr_03b_6223:
    ld b, c
    and $40
    ld hl, $6c40
    ld h, h
    jr nz, jr_03b_61ac

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_622f:
    ld b, c
    and $40
    ld hl, $8c40
    ld h, h
    jr nz, jr_03b_61b8

    inc [hl]
    ld b, b
    dec l

jr_03b_623b:
    ld b, c
    ld [hl], h
    ld b, h
    ld b, [hl]
    ld h, d
    ld e, $63
    dec hl
    ld h, h
    ld h, a
    ld h, e
    and $40
    ld hl, $ac40
    ld h, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld h, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, h
    jr nz, jr_03b_61e6

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    jp z, Jump_03b_7346

    ld h, d
    sbc $62
    db $ec
    ld b, [hl]
    rrca
    sbc c
    ld h, d
    ld a, d
    ld h, d
    and $40
    ld hl, $6c40
    ld l, b
    jr nz, jr_03b_6202

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld l, b
    jr nz, jr_03b_620e

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]

jr_03b_6293:
    ld b, l
    rst $38
    adc a
    ld b, [hl]
    inc h
    ld h, d
    rlca
    ld b, a
    and $40
    ld hl, $6c40
    ld h, a
    jr nz, jr_03b_6223

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_62a6:
    ld b, c
    and $40
    ld hl, $8c40
    ld h, a
    jr nz, jr_03b_622f

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_62b2:
    ld b, c
    and $40
    ld hl, $ac40
    ld h, a
    jr nz, jr_03b_623b

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld h, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ec40
    ld h, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc hl

jr_03b_62d6:
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    adc a
    ld b, [hl]
    inc h
    ld h, d
    db $ec
    ld b, [hl]
    rra
    push hl
    ld h, d
    ld a, d
    ld h, d
    ld a, [hl+]
    ld b, a
    and $40
    ld hl, $6c40
    ld h, a
    jr nz, @-$7e

jr_03b_62ef:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld l, b
    jr nz, @-$7e

jr_03b_62fb:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld l, b
    jr nz, @-$7e

jr_03b_6307:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld l, b
    jr nz, jr_03b_6293

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    adc a
    ld b, [hl]
    inc h
    ld h, d
    and $40
    ld hl, $0c40
    ld h, l
    jr nz, jr_03b_62a6

    inc [hl]

jr_03b_6327:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2c40
    ld h, l
    jr nz, jr_03b_62b2

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    inc de
    ld b, c

jr_03b_633a:
    ld c, h
    ld h, l
    ld [hl], d
    call $f420
    cp b
    ld a, c
    call $2104
    ld b, b

jr_03b_6346:
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld h, l

jr_03b_6354:
    jr nz, jr_03b_62d6

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    add b
    ld b, l
    ld b, l
    or d
    ld h, e
    rst $18
    ld h, e
    dec b
    ld h, h

jr_03b_6367:
    and $40
    ld hl, $ec40
    ld h, [hl]
    jr nz, jr_03b_62ef

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_03b_6373:
    and $40
    ld hl, $0c40
    ld h, a
    jr nz, jr_03b_62fb

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_6381:
    ld hl, $2c40
    ld h, a
    jr nz, jr_03b_6307

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld a, c
    ld b, a

jr_03b_638d:
    and $40
    add l
    ld b, a
    ld hl, $7240
    call $8020
    inc [hl]
    ld b, b

jr_03b_6399:
    sub a
    ld b, a
    adc l
    ld h, e
    db $eb
    ld b, a
    and $40
    ld hl, $4c40
    ld h, a
    jr nz, jr_03b_6327

jr_03b_63a7:
    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    adc a
    ld b, [hl]
    inc h
    ld h, d
    and $40
    ld hl, $8c40
    ld h, l
    jr nz, jr_03b_633a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ac40
    ld h, l
    jr nz, jr_03b_6346

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld [hl], b
    ld b, l
    and $40
    ld hl, $cc40
    ld h, l
    jr nz, jr_03b_6354

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    ret z

    adc a
    ld b, [hl]
    inc h
    ld h, d
    and $40
    ld hl, $ec40
    ld h, l
    jr nz, jr_03b_6367

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld h, [hl]
    jr nz, jr_03b_6373

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    adc a
    ld b, l
    and $40
    ld hl, $2c40
    ld h, [hl]
    jr nz, jr_03b_6381

    adc a
    ld b, [hl]
    call nc, $e663
    ld b, b
    ld hl, $4c40
    ld h, [hl]
    jr nz, jr_03b_638d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6c40
    ld h, [hl]
    jr nz, jr_03b_6399

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    sub d
    ld b, l
    and $40
    ld hl, $8c40
    ld h, [hl]
    jr nz, jr_03b_63a7

    adc a
    ld b, [hl]
    call nc, $e663
    ld b, b
    ld hl, $ac40
    ld h, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld h, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    add b
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, b
    ld h, h
    ld b, $28
    jr z, jr_03b_646d

    rst $28
    nop
    rra
    dec l
    ld e, $2b
    daa
    jr z, jr_03b_6481

    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    jp hl


    rlca

jr_03b_646d:
    jr z, @+$32

    rst $28
    inc e
    ld a, [de]
    daa
    rst $28
    ld [$21ef], sp
    ld e, $25
    add hl, hl
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_03b_64ad

    rst $28
    dec l

jr_03b_6481:
    jr z, jr_03b_64a0

    ld a, [de]
    ld [hl-], a
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rst $28
    rrca
    dec hl
    ld a, [de]
    ld [hl-], a
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
    dec b
    jr z, jr_03b_64cb

jr_03b_64a0:
    dec l
    ld l, $27
    ld e, $ef
    inc de
    ld e, $25
    dec h
    ld [hl+], a
    daa
    jr nz, jr_03b_64c5

jr_03b_64ad:
    jr z, jr_03b_64dd

    rst $28
    dec hl
    ld e, $1a
    dec h
    dec h
    ld [hl-], a
    rst $28
    ld hl, $2f1a
    ld e, $ef
    ld a, [de]
    rst $28
    dec hl
    ld [hl+], a
    jr nz, jr_03b_64e3

    dec l
    ld e, $28

jr_03b_64c5:
    ld l, $2c
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_64cb:
    jp hl


    ld hl, $1a1e
    dec hl
    dec l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    inc l
    jr z, @+$30

    dec h
    ld c, h
    rst $28
    rrca

jr_03b_64dd:
    dec h
    ld e, $1a
    inc l
    ld e, $ef

jr_03b_64e3:
    inc e
    jr z, jr_03b_650c

    ld e, $ef
    ld [hl+], a
    daa
    rst $28
    jp hl


    ld a, [de]
    daa
    dec e
    rst $28
    inc hl
    jr z, jr_03b_6515

    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $ef1e
    inc l
    ld e, $2b
    cpl
    ld [hl+], a
    inc e
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_650c:
    ld d, $28
    ld l, $25
    dec e

jr_03b_6511:
    rst $28
    ld [hl-], a
    jr z, @+$30

jr_03b_6515:
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    rst $28
    ld h, $1e
    rst $28
    dec l
    jr z, jr_03b_6511

    dec l
    ld e, $25
    dec h
    rst $28
    ld [hl-], a
    jr z, jr_03b_6558

    rst $28
    jp hl


    ld [hl-], a
    jr z, jr_03b_655d

    dec hl
    rst $28
    rra
    jr z, jr_03b_655f

    dec l
    ld l, $27
    ld e, $41

jr_03b_6539:
    rst $28
    rst $28
    rst $28
    ld [$1aef], sp
    ld h, $ef
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    rst $28
    dec l
    jr z, jr_03b_6539

    rst $28
    jp hl


    dec e
    jr z, @-$0f

    ld [hl+], a
    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    adc [hl]

jr_03b_6558:
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl-], a

jr_03b_655d:
    jr z, @+$30

jr_03b_655f:
    dec hl
    rst $28
    rra
    jr z, @+$2d

    dec l
    ld l, $27
    ld e, $ef
    rst $28
    rst $28
    jp hl


    dec l
    jr z, jr_03b_658c

    ld a, [de]
    ld [hl-], a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    ld c, h
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


jr_03b_658c:
    jr jr_03b_65b6

    ld l, $2b
    rst $28
    rra
    jr z, jr_03b_65bf

    dec l
    ld l, $27
    ld e, $ef
    rst $28
    rst $28
    rst $28
    dec h
    jr z, jr_03b_65c7

    inc h
    inc l
    rst $28
    jr nz, jr_03b_65cf

    ld e, $1a
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$1fef], sp
    ld e, $1e
    dec h
    rst $28
    inc l
    jr z, jr_03b_65dc

jr_03b_65b6:
    ld e, $2d
    ld hl, $2722
    jr nz, jr_03b_65dd

    jr z, jr_03b_65e7

jr_03b_65bf:
    dec e
    rst $28
    jr nc, jr_03b_65e5

    dec h
    dec h

jr_03b_65c5:
    rst $28
    rst $28

jr_03b_65c7:
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld hl, $291a

jr_03b_65cf:
    add hl, hl
    ld e, $27
    rst $28
    dec l
    jr z, jr_03b_65c5

    ld [hl-], a
    jr z, jr_03b_6607

    ld c, h
    rst $28
    rst $28

jr_03b_65dc:
    rst $28

jr_03b_65dd:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_65e5:
    rst $28
    rst $28

jr_03b_65e7:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03b_6616

    ld l, $2b
    rst $28
    rra
    jr z, @+$2d

    dec l
    ld l, $27
    ld e, $ef
    rst $28
    rst $28
    rst $28
    dec h
    jr z, jr_03b_6627

    inc h
    inc l
    rst $28
    daa
    jr z, jr_03b_6630

    ld h, $1a

jr_03b_6607:
    dec h
    ld c, h
    rst $28
    rst $28
    jp hl


    ld [$21ef], sp
    jr z, jr_03b_663a

    ld e, $ef
    rst $28
    rst $28
    rst $28

jr_03b_6616:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_03b_6616

jr_03b_6627:
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc l
    dec l
    ld a, [de]
    ld [hl-], a

jr_03b_6630:
    inc l
    rst $28
    dec l
    ld hl, $ef1e
    inc l
    ld a, [de]
    ld h, $1e

jr_03b_663a:
    rst $28
    rst $28
    rra
    jr z, jr_03b_666a

    rst $28
    ld [hl-], a
    jr z, jr_03b_6671

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03b_6676

    ld l, $2b
    rst $28
    rra
    jr z, jr_03b_667f

    dec l
    ld l, $27
    ld e, $ef
    rst $28
    rst $28
    rst $28
    dec e
    jr z, jr_03b_667d

    inc l
    daa
    ld c, e
    dec l
    rst $28
    dec h
    jr z, jr_03b_668f

    inc h
    rst $28
    rst $28

jr_03b_666a:
    rst $28
    jp hl


    jr nz, @+$2a

    jr z, @+$1f

    rst $28

jr_03b_6671:
    ld [$21ef], sp
    jr z, jr_03b_669f

jr_03b_6676:
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    inc l

jr_03b_667d:
    jr z, jr_03b_66a5

jr_03b_667f:
    ld e, $2d
    ld hl, $2722
    jr nz, @-$0f

    jr nz, @+$2a

    jr z, @+$1f

    rst $28
    jp hl


    jr nc, @+$24

    dec h

jr_03b_668f:
    dec h
    rst $28
    ld hl, $291a
    add hl, hl
    ld e, $27
    rst $28
    rra
    jr z, jr_03b_66c6

    rst $28
    ld [hl-], a
    jr z, @+$30

jr_03b_669f:
    rst $28
    dec l
    jr z, jr_03b_66c9

jr_03b_66a3:
    jr z, jr_03b_66d0

jr_03b_66a5:
    dec hl
    jr z, @+$32

    ld c, h
    rst $28
    rst $28
    rst $28
    ld d, $22
    inc l
    ld hl, $2722
    jr nz, jr_03b_66a3

    ld [hl-], a
    jr z, jr_03b_66e5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr nz, jr_03b_66e6

    jr z, jr_03b_66dd

    rst $28
    dec h
    ld l, $1c
    inc h
    rst $28

jr_03b_66c6:
    ld a, [de]
    daa
    dec e

jr_03b_66c9:
    rst $28
    rst $28
    jp hl


    jr nz, jr_03b_66f6

    jr z, @+$1f

jr_03b_66d0:
    rst $28
    rra
    jr z, jr_03b_66ff

    dec l
    ld l, $27
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_66dd:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_66e5:
    rst $28

jr_03b_66e6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28

jr_03b_66ee:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_6723

    rst $28

jr_03b_66f6:
    dec h
    ld [hl+], a

jr_03b_66f8:
    inc h
    ld e, $ef
    rst $28
    dec l
    jr z, jr_03b_66ee

jr_03b_66ff:
    dec h
    ld [hl+], a
    inc l
    dec l
    ld e, $27
    rst $28
    dec l
    jr z, jr_03b_66f8

    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $ef1e
    jr z, jr_03b_673d

    jr nz, jr_03b_672e

    daa
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$ef2d], sp
    jr nc, jr_03b_6743

    dec h
    dec h

jr_03b_6723:
    rst $28
    add hl, hl
    ld l, $2d
    rst $28
    ld [hl-], a
    jr z, jr_03b_6759

    jp hl


    ld [hl+], a
    daa

jr_03b_672e:
    rst $28
    ld a, [de]
    rst $28
    jr nz, jr_03b_675b

    jr z, @+$1f

    rst $28
    ld h, $28
    jr z, @+$1f

    ld c, h
    rst $28
    rst $28

jr_03b_673d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_6743:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, jr_03b_677c

    ld e, $ef
    rst $28

jr_03b_6759:
    rst $28
    rst $28

jr_03b_675b:
    rst $28
    ld a, [de]
    jr nz, jr_03b_6779

    ld [hl+], a
    daa
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
    jp hl


    ld [$21ef], sp
    ld a, [de]
    cpl
    ld e, $ef
    ld hl, $1a1e
    dec hl
    dec e
    rst $28

jr_03b_6779:
    ld a, [de]
    daa
    dec e

jr_03b_677c:
    ld l, $27
    dec e
    ld e, $2b
    inc l
    dec l
    jr z, jr_03b_67ad

    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_67b8

    dec hl
    jp hl


    inc l
    ld e, $2b
    ld [hl+], a
    jr z, jr_03b_67c0

    inc l
    rst $28
    dec l
    ld hl, $2e28
    jr nz, jr_03b_67bb

    dec l
    inc l
    dec c
    jr z, @+$32

    adc [hl]
    rst $28
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    jr nz, jr_03b_67d2

    rst $28
    jp hl


    dec l

jr_03b_67ad:
    jr z, @-$0f

    ld [hl-], a
    jr z, jr_03b_67e0

    dec hl
    rst $28
    dec de
    ld a, [de]
    dec hl
    daa

jr_03b_67b8:
    ld c, h
    rst $28
    rst $28

jr_03b_67bb:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_67c0:
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


    jr jr_03b_67f6

    ld l, $ef
    jr nc, jr_03b_67f4

jr_03b_67d2:
    dec h
    dec h
    rst $28
    inc l
    ld e, $1e
    rst $28
    ld a, [de]
    rst $28
    rst $28
    ld h, $22
    dec hl
    ld a, [de]

jr_03b_67e0:
    inc e
    dec h
    ld e, $ef
    dec l
    ld hl, $2b1e
    ld e, $ef
    rst $28
    jp hl


    dec de
    ld [hl-], a
    rst $28
    dec l
    ld hl, $ef1e
    rst $28

jr_03b_67f4:
    rst $28
    rst $28

jr_03b_67f6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    ld c, h
    inc l
    ld e, $2b
    ld [hl+], a
    jr z, jr_03b_6840

    inc l
    rst $28
    dec l
    ld hl, $2e28
    jr nz, jr_03b_683b

    dec l
    inc l
    inc de
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
    jp hl


    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    rst $28
    jr nc, jr_03b_6858

    dec h
    dec h
    rst $28
    rst $28
    rst $28

jr_03b_683b:
    rst $28
    dec de
    dec h
    ld e, $2c

jr_03b_6840:
    inc l
    rst $28
    ld [hl-], a
    jr z, jr_03b_6873

    dec hl
    rst $28
    inc e
    jr z, jr_03b_687a

    ld c, h
    jp hl


jr_03b_684c:
    jr jr_03b_6876

    ld l, $2b
    rst $28
    inc e
    jr z, jr_03b_6884

    rst $28
    ld [hl+], a
    inc l
    rst $28

jr_03b_6858:
    daa
    jr z, @+$32

    rst $28
    add hl, hl
    dec hl

jr_03b_685e:
    jr z, @+$2f

    ld e, $1c
    dec l
    ld e, $1d
    ld b, b
    ld b, b
    rst $28
    rst $28
    rst $28

jr_03b_686a:
    rst $28
    rst $28
    ld [de], a
    jr z, jr_03b_6895

    ld e, $ef
    dec e
    ld a, [de]

jr_03b_6873:
    ld [hl-], a
    rst $28
    ld [hl-], a

jr_03b_6876:
    jr z, jr_03b_68a6

    dec hl
    rst $28

jr_03b_687a:
    rst $28
    rst $28
    add hl, hl
    dec hl
    ld a, [de]
    ld [hl-], a
    ld e, $2b

jr_03b_6882:
    inc l
    rst $28

jr_03b_6884:
    jr nc, jr_03b_68a8

    dec h
    dec h
    rst $28
    dec de
    ld e, $e9
    ld hl, $1a1e
    dec hl
    dec e
    rst $28
    dec de
    ld [hl-], a
    rst $28

jr_03b_6895:
    dec l
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    ld b, $28

jr_03b_68a6:
    dec e
    dec e

jr_03b_68a8:
    ld e, $2c
    inc l
    ld c, h
    and $40
    inc de
    ld b, c
    adc b
    ld l, d
    ld [hl], d
    call $f420
    cp b
    ld [hl], a
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $a840
    ld l, d
    jr nz, jr_03b_684c

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a

jr_03b_68d1:
    ld b, l
    adc a
    ld b, [hl]
    jp nc, $e668

    ld b, b
    ld hl, $c840
    ld l, d
    jr nz, jr_03b_685e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $e840
    ld l, d
    jr nz, jr_03b_686a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_68f0:
    ld hl, $0840
    ld l, e
    jr nz, jr_03b_6876

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_68fc:
    ld hl, $2840
    ld l, e
    jr nz, jr_03b_6882

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_6908:
    ld hl, $4840
    ld l, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    jr jr_03b_697f

    ld [hl], b
    ld l, d
    add l
    ld b, e
    inc l
    ld bc, $6a2b
    sub $45
    ld [bc], a
    adc a
    ld b, [hl]
    ld e, b
    ld l, d
    and $40
    ld hl, $e840
    ld l, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0840
    ld l, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2840
    ld l, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4840
    ld l, h
    jr nz, jr_03b_68d1

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld e, e
    ld l, c
    ld [hl], b
    ld l, d
    add l
    ld b, e
    db $f4
    ld bc, $6a2b
    sub $45
    ld bc, $468f
    ld e, b
    ld l, d
    and $40
    ld hl, $6840
    ld l, h

jr_03b_696e:
    jr nz, jr_03b_68f0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8840
    ld l, h

jr_03b_697a:
    jr nz, jr_03b_68fc

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_697f:
    ld b, c
    and $40
    ld hl, $a840
    ld l, h

jr_03b_6986:
    jr nz, jr_03b_6908

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sub d
    ld l, c
    ld [hl], b
    ld l, d

jr_03b_6992:
    add l
    ld b, e
    inc l
    ld bc, $6a2b
    dec l
    ld b, h
    push bc
    cp b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, b
    ld l, d
    and $40
    ld hl, $c840
    ld l, h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $e840
    ld l, h

jr_03b_69b3:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0840
    ld l, l

jr_03b_69bf:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2840
    ld l, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    rst $10

jr_03b_69d4:
    ld l, c
    ld [hl], b
    ld l, d
    add l
    ld b, e
    ret z

    nop
    dec hl
    ld l, d
    dec l
    ld b, h
    add $b8
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, b
    ld l, d
    and $40
    ld hl, $4840
    ld l, l

jr_03b_69ec:
    jr nz, jr_03b_696e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $6840
    ld l, l

jr_03b_69f8:
    jr nz, jr_03b_697a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8840
    ld l, l

jr_03b_6a04:
    jr nz, jr_03b_6986

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $a840
    ld l, l
    jr nz, jr_03b_6992

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    inc e
    ld l, d
    ld [hl], b
    ld l, d
    add l
    ld b, e
    ld h, h
    nop
    dec hl
    ld l, d
    dec l
    ld b, h
    rst $00
    cp b
    ld a, [bc]
    adc a
    ld b, [hl]
    ld e, b
    ld l, d
    and $40
    ld hl, $c840
    ld l, l
    jr nz, jr_03b_69b3

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3c40
    ld d, l
    jr nz, jr_03b_69bf

    inc [hl]
    ld b, b
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, b
    ld l, d
    and $40
    ld hl, $e840
    ld l, l
    jr nz, jr_03b_69d4

    adc a
    ld b, [hl]
    ccf
    ld l, d
    and $40
    ld hl, $6840
    ld l, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8840
    ld l, e
    jr nz, jr_03b_69ec

    adc a
    ld b, [hl]
    ccf
    ld l, d
    and $40
    ld hl, $a840
    ld l, e
    jr nz, jr_03b_69f8

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $c840
    ld l, e
    jr nz, jr_03b_6a04

    adc a
    ld b, [hl]
    ccf
    ld l, d
    nop
    ld hl, $8e21
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $28

jr_03b_6a9a:
    ld l, $25
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_6acf

    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    jp hl


    dec l
    jr z, jr_03b_6a9a

    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    jr z, jr_03b_6ae1

    ld e, $2d
    ld hl, $2722
    jr nz, jr_03b_6b03

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2d1a
    ld c, e
    inc l
    rst $28

jr_03b_6acf:
    ld a, [de]
    rst $28
    ld [bc], a
    ld a, [de]
    inc h
    ld e, $4c
    rst $28
    rst $28
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld a, [de]
    rst $28
    dec h

jr_03b_6ae1:
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    jp hl


    inc l
    jr nc, @+$20

    ld e, $2d
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    dec e
    ld e, $25
    ld [hl+], a
    inc e
    ld [hl+], a

jr_03b_6b03:
    jr z, jr_03b_6b33

    inc l
    ld c, h
    jp hl


    ld d, $21
    ld e, $27
    rst $28
    ld [hl-], a
    jr z, jr_03b_6b3e

    rst $28
    ld e, $1a
    dec l
    rst $28
    dec l
    ld hl, $1c1e
    ld a, [de]
    inc h
    ld e, $8e
    rst $28
    ld [hl+], a
    dec l
    rst $28
    jr nc, jr_03b_6b45

    dec h
    dec h
    rst $28
    rst $28
    jp hl


    ld h, $1a
    inc h
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_6b5e

    rst $28
    rst $28
    rst $28

jr_03b_6b33:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld e, $1f
    dec hl
    ld e, $2c

jr_03b_6b3e:
    ld hl, $1d1e
    ld c, h
    rst $28
    rst $28
    rst $28

jr_03b_6b45:
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $ef1e
    inc e
    jr z, jr_03b_6b7b

    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $ef
    ld bc, $322e
    rst $28
    rst $28

jr_03b_6b5e:
    rst $28
    inc bc
    jr z, jr_03b_6b89

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_03b_6b9f

    rst $28
    rra
    jr z, jr_03b_6ba0

    rst $28
    rst $28
    rst $28
    jr nc, jr_03b_6b94

    ld [hl+], a

jr_03b_6b7b:
    dec l
    ld [hl+], a
    daa
    jr nz, jr_03b_6bcc

    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    rlca

jr_03b_6b89:
    ld e, $2b
    ld e, $ef
    ld [hl-], a
    jr z, jr_03b_6bbe

    rst $28
    jr nz, jr_03b_6bbb

    ld c, h

jr_03b_6b94:
    rst $28
    rst $28
    rst $28
    rst $28
    inc b
    daa
    inc hl
    jr z, jr_03b_6bcf

    ld b, b
    rst $28

jr_03b_6b9f:
    rst $28

jr_03b_6ba0:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_03b_6bd2

jr_03b_6baa:
    ld l, $ef
    dec e
    jr z, jr_03b_6bd6

    ld c, e
    dec l
    rst $28
    jr nc, @+$1c

    daa
    dec l
    rst $28
    rst $28
    dec l
    jr z, jr_03b_6baa

jr_03b_6bbb:
    dec de
    ld l, $32

jr_03b_6bbe:
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


    ld a, [de]
    daa
    ld [hl-], a
    dec l

jr_03b_6bcc:
    ld hl, $2722

jr_03b_6bcf:
    jr nz, jr_03b_6c12

    rst $28

jr_03b_6bd2:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_6bd6:
    rst $28
    rst $28
    ld c, $21
    adc [hl]
    rst $28
    ld [$2cef], sp
    ld e, $1e
    ld c, h
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    dec bc
    ld l, $27
    inc e
    ld hl, $efef
    rst $28
    ld bc, $3128
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
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a

jr_03b_6c12:
    rst $28
    dec l
    ld a, [de]
    inc l
    dec l
    ld [hl-], a
    ld a, [de]
    daa
    dec e
    rst $28
    ld [hl+], a
    dec l
    rst $28
    jr nc, jr_03b_6c43

    dec h
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    dec hl
    ld e, $1c
    jr z, jr_03b_6c5c

    ld e, $2b
    rst $28
    ld [hl-], a
    jr z, @+$30

    dec hl
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $1a1e
    dec h
    dec l
    ld hl, $ef4c
    rst $28
    rst $28
    rst $28

jr_03b_6c43:
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e

jr_03b_6c5c:
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld c, e
    inc l
    rst $28
    ld a, [de]
    rst $28
    ld [bc], a
    dec hl
    jr z, jr_03b_6c97

    inc l
    inc l
    ld b, h
    ld a, [de]
    daa
    dec l
    rst $28
    jr nc, jr_03b_6c9f

    ld [hl+], a
    inc e
    ld hl, $08ef
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld hl, $271a
    dec e
    ld h, $1a
    dec e
    ld e, $4c
    rst $28
    inc de
    ld hl, $ef1e
    rst $28

jr_03b_6c97:
    rst $28
    inc e
    jr z, @+$2e

    dec l
    rst $28
    ld [hl+], a
    inc l

jr_03b_6c9f:
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $ef
    rst $28
    rst $28
    jp hl


    rra
    jr z, jr_03b_6cd6

    rst $28
    dec [hl]
    inc [hl]
    rst $28
    jr z, jr_03b_6cd0

    rst $28
    dec l
    ld hl, $261e
    ld c, h
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_6ce9

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a
    ld d, e
    rst $28
    ld a, [de]
    rst $28

jr_03b_6cd0:
    ld de, $1c22
    ld e, $ef
    rst $28

jr_03b_6cd6:
    rst $28
    rst $28
    ld bc, $251a
    dec h
    rst $28
    jr nc, jr_03b_6d00

    ld [hl+], a
    inc e
    ld hl, $30ef
    ld a, [de]
    inc l
    rst $28
    jp hl


    inc hl

jr_03b_6ce9:
    ld l, $2c
    dec l
    rst $28
    add hl, hl
    dec hl
    ld e, $29
    ld a, [de]
    dec hl
    ld e, $1d
    rst $28
    rst $28
    rst $28
    rra
    dec hl
    jr z, @+$28

    rst $28
    ld a, [de]
    rst $28
    rra

jr_03b_6d00:
    ld a, [de]
    ld h, $28
    ld l, $2c
    rst $28
    rst $28
    jp hl


    dec de
    dec hl
    ld a, [de]
    daa
    dec e
    rst $28
    jr z, jr_03b_6d2f

    rst $28
    dec hl
    ld [hl+], a
    inc e
    ld e, $4c
    rst $28
    rst $28
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    ld b, $ef
    rra
    jr z, jr_03b_6d51

    rst $28
    jp hl


    dec [hl]
    inc [hl]
    rst $28
    jr z, jr_03b_6d4c

    rst $28
    dec l

jr_03b_6d2f:
    ld hl, $261e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$29

    ld c, e
    dec l
    rst $28
    ld bc, $322e
    inc de
    ld hl, $2d1a

jr_03b_6d4c:
    ld d, e
    rst $28
    ld a, [de]
    rst $28
    inc c

jr_03b_6d51:
    ld e, $1a
    dec l
    rst $28
    inc bc
    ld l, $44
    ld h, $29
    dec h
    ld [hl+], a
    daa
    jr nz, jr_03b_6dab

    rst $28
    inc de
    ld hl, $321e
    rst $28
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_6d88

jr_03b_6d6a:
    dec hl
    ld e, $ef
    inc hl
    ld l, $2c
    dec l
    rst $28
    ld h, $1a
    dec e
    ld e, $8e
    rst $28
    inc l
    jr z, jr_03b_6d6a

    dec l
    ld hl, $321e
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    jp hl


jr_03b_6d88:
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    ld hl, $2d28
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rra
    dec hl
    ld b, h
    ld e, $2c
    ld hl, $ef4c
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    inc [hl]
    inc [hl]
    ld b, $e9
    rra
    jr z, jr_03b_6dd6

jr_03b_6dab:
    rst $28
    dec [hl]
    inc [hl]

jr_03b_6dae:
    rst $28
    jr z, jr_03b_6dd0

    rst $28
    dec l
    ld hl, $261e
    ld c, h
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, jr_03b_6de9

    ld c, e
    dec l
    rst $28
    dec de

jr_03b_6dc6:
    ld l, $32
    ld c, $21
    adc [hl]
    rst $28
    ld [$264b], sp
    rst $28

jr_03b_6dd0:
    inc l
    jr z, jr_03b_6dfe

    dec hl
    ld [hl-], a
    ld c, h

jr_03b_6dd6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_6dde:
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


    inc de

jr_03b_6de9:
    ld a, [de]
    inc h
    ld e, $ef
    inc e
    ld a, [de]
    dec hl
    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    rst $28
    dec l
    ld hl, $271a
    inc h
    rst $28

jr_03b_6dfe:
    ld [hl-], a
    jr z, jr_03b_6e2f

    ld b, b
    ld b, b

jr_03b_6e03:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    and $40
    inc de
    ld b, c
    pop de
    ld [hl], c
    ld [hl], d

jr_03b_6e0f:
    call $f420
    cp b
    add d
    call $2104
    ld b, b
    ld [hl], d
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld [hl+], a
    ld l, [hl]
    and $40
    ld hl, $f140
    ld [hl], c
    jr nz, jr_03b_6dae

    inc [hl]

jr_03b_6e2f:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1140
    ld [hl], d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3140
    ld [hl], d
    jr nz, jr_03b_6dc6

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_6e58:
    ld hl, $f140
    halt
    jr nz, jr_03b_6dde

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    jp nc, Jump_03b_78b8

    nop
    jr jr_03b_6eaa

    ld l, h
    ld l, [hl]
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_6e70:
    jp nc, Jump_000_05b8

    ld b, h
    or l
    cp b
    inc b
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $f140
    ld [hl], d
    jr nz, jr_03b_6e03

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1140
    ld [hl], e
    jr nz, jr_03b_6e0f

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3140
    ld [hl], e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_6eaa:
    ld b, c
    and $40

jr_03b_6ead:
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    db $d3
    cp b

jr_03b_6eb9:
    sub [hl]
    nop
    jr jr_03b_6eff

    pop bc
    ld l, [hl]
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_6ec5:
    db $d3
    cp b
    dec b
    ld b, h
    or [hl]
    cp b
    dec b
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $5140
    ld [hl], e
    jr nz, jr_03b_6e58

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7140
    ld [hl], e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9140
    ld [hl], e
    jr nz, jr_03b_6e70

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_6eff:
    ld b, c
    and $40

jr_03b_6f02:
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    call nc, $c8b8
    nop
    jr jr_03b_6f54

    ld d, $6f
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_6f1a:
    call nc, Call_000_05b8
    ld b, h
    or a
    cp b
    ld b, $8f
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $b140
    ld [hl], e
    jr nz, jr_03b_6ead

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    ld [hl], e
    jr nz, jr_03b_6eb9

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $f140
    ld [hl], e
    jr nz, jr_03b_6ec5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_6f54:
    ld b, c
    and $40

jr_03b_6f57:
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    push de
    cp b

jr_03b_6f63:
    inc l
    ld bc, $4218
    ld l, e
    ld l, a
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_6f6f:
    push de
    cp b
    dec b
    ld b, h
    cp b
    cp b
    rlca
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $1140
    ld [hl], h
    jr nz, jr_03b_6f02

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $3140
    ld [hl], h
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5140
    ld [hl], h
    jr nz, jr_03b_6f1a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_03b_6fac:
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    sub $b8

jr_03b_6fb8:
    sub [hl]
    nop
    jr jr_03b_6ffe

    ret nz

    ld l, a
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_6fc4:
    sub $b8
    dec b
    ld b, h
    cp c
    cp b
    ld c, [hl]
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $7140
    ld [hl], h
    jr nz, jr_03b_6f57

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9140
    ld [hl], h
    jr nz, jr_03b_6f63

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $b140
    ld [hl], h
    jr nz, jr_03b_6f6f

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_6ffe:
    ld b, c
    and $40

jr_03b_7001:
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    rst $10
    cp b

jr_03b_700d:
    ret z

    nop
    jr jr_03b_7053

    dec d
    ld [hl], b
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_7019:
    rst $10
    cp b
    dec b
    ld b, h
    cp d
    cp b
    ld c, a
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $d140
    ld [hl], h
    jr nz, jr_03b_6fac

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $f140
    ld [hl], h
    jr nz, jr_03b_6fb8

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1140
    ld [hl], l
    jr nz, jr_03b_6fc4

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_03b_7053:
    ld b, c
    and $40
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    ret c

    cp b

jr_03b_7062:
    inc l
    ld bc, $4218
    ld l, d
    ld [hl], b
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c

jr_03b_706e:
    ret c

    cp b
    dec b
    ld b, h
    cp e
    cp b
    ld d, b
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $3140
    ld [hl], l
    jr nz, jr_03b_7001

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $5140
    ld [hl], l
    jr nz, jr_03b_700d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7140
    ld [hl], l
    jr nz, jr_03b_7019

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9140
    ld [hl], l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b

jr_03b_70b3:
    inc [hl]
    ld b, c
    and $40
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b

jr_03b_70bf:
    rst $30
    ld b, c
    reti


    cp b
    db $f4
    ld bc, $4218
    bit 6, b
    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c
    reti


    cp b
    dec b
    ld b, h
    cp h

jr_03b_70d4:
    cp b
    ld d, c
    adc a
    ld b, [hl]
    ld e, b
    ld [hl], c
    and $40
    ld hl, $b140
    ld [hl], l

jr_03b_70e0:
    jr nz, jr_03b_7062

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    ld [hl], l

jr_03b_70ec:
    jr nz, jr_03b_706e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $f140
    ld [hl], l

jr_03b_70f8:
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $f140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    jp c, $f4b8

    ld bc, $4218
    jr nz, jr_03b_718f

    cp c
    ld [hl], c
    and a
    ld b, e
    scf
    ld [hl], c
    jp c, Jump_000_05b8

    ld b, h
    or h

jr_03b_7129:
    cp b
    inc bc
    and $40
    ld hl, $1140
    halt
    jr nz, jr_03b_70b3

    adc a
    ld b, [hl]

jr_03b_7135:
    ccf
    ld [hl], c
    and $40
    ld hl, $3140
    halt
    jr nz, jr_03b_70bf

    inc [hl]
    ld b, b

jr_03b_7141:
    inc hl
    ld b, l
    ld a, [hl+]
    ld b, l
    rst $38
    dec a
    ld b, l
    adc a
    ld b, [hl]
    ld c, b
    ld [hl], c
    and $40
    ld hl, $b140
    halt
    jr nz, jr_03b_70d4

    adc a
    ld b, [hl]
    ccf
    ld [hl], c
    and $40
    ld hl, $5140
    ld [hl], d
    jr nz, jr_03b_70e0

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7140
    ld [hl], d
    jr nz, jr_03b_70ec

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9140
    ld [hl], d
    jr nz, jr_03b_70f8

    inc [hl]
    ld b, b
    rst $10
    ld b, e
    xor [hl]
    cp b
    ld a, [bc]
    ld b, c
    ld [hl], c
    rst $10
    ld b, e
    xor a
    cp b
    ld [de], a
    ld b, c
    ld [hl], c
    pop af
    ld b, e
    xor [hl]
    cp b
    cp c
    ld b, b
    xor [hl]

jr_03b_718f:
    sbc a
    ld de, $9f9a
    inc [hl]
    ld b, c
    and $40
    ld hl, $5140
    halt
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7140
    halt
    jr nz, jr_03b_7129

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $9140
    halt
    jr nz, jr_03b_7135

    adc a
    ld b, [hl]
    ccf
    ld [hl], c
    and $40
    ld hl, $b140
    ld [hl], d
    jr nz, jr_03b_7141

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d140
    ld [hl], d
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ccf
    ld [hl], c
    ld d, $1e
    dec h
    inc e
    jr z, @+$28

    ld e, $8e
    rst $28
    inc e
    jr z, @+$28

    ld e, $ef
    ld [hl+], a
    daa
    rst $28
    rst $28
    rst $28
    rst $28
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
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    inc de
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl
    ld [de], a
    ld e, $1e
    dec e
    inc l
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
    jp hl


    inc de
    ld hl, $321e
    rst $28
    jr nz, jr_03b_7243

    jr z, jr_03b_724a

    rst $28
    rra
    ld a, [de]
    inc l
    dec l
    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    daa
    jr z, @+$2f

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_725b

    dec hl
    dec l
    ld hl, $26ef
    ld l, $1c
    ld hl, $ef4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7243:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_724a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc de
    ld hl, $271a
    inc h
    rst $28
    ld [hl-], a
    jr z, jr_03b_7288

    rst $28

jr_03b_725b:
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28

Call_03b_7261:
    ld h, $2e
    inc e
    ld hl, $ef4c
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


    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    ld h, $1a
    inc h
    ld e, $ef
    inc l
    ld l, $2b
    ld e, $32
    jr z, jr_03b_72b2

    rst $28
    jr nc, jr_03b_72a1

    dec l

jr_03b_7288:
    ld e, $2b
    rst $28
    dec l
    ld hl, $261e
    rst $28
    jp hl


    ld e, $2f
    ld e, $2b
    ld [hl-], a
    dec e
    ld a, [de]
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_72a1:
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
    rlca

jr_03b_72b2:
    ld l, $21
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
    rst $28
    jr jr_03b_72eb

jr_03b_72c3:
    ld l, $ef
    dec e
    jr z, jr_03b_72ef

    ld c, e
    dec l
    rst $28
    jr nc, jr_03b_72e7

    daa
    dec l
    rst $28
    jp hl


    dec l
    jr z, jr_03b_72c3

    dec de
    ld l, $32
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    dec l
    ld hl, $2722
    jr nz, jr_03b_7322

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_72e7:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_72eb:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_72ef:
    rst $28
    rst $28
    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    rrca
    jr z, @+$2f

    ld a, [de]
    dec l
    jr z, @+$14

    ld e, $1e
    dec e
    inc l
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
    jp hl


    inc de
    ld hl, $321e
    rst $28
    jr nz, jr_03b_7343

    jr z, jr_03b_734a

    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec h

jr_03b_7322:
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    inc l
    dec h
    jr z, jr_03b_735c

    ld e, $2b
    rst $28
    rst $28
    jp hl


    dec l
    ld hl, $271a
    rst $28
    dec l
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7343:
    rst $28
    rst $28
    rst $28

Jump_03b_7346:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_734a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    inc de

jr_03b_735c:
    jr z, jr_03b_7384

    ld a, [de]
    dec l
    jr z, jr_03b_7374

    ld e, $1e
    dec e
    inc l
    ld c, h
    rst $28
    ld [$ef1f], sp
    ld [hl-], a
    jr z, jr_03b_739c

    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_738d

    dec l

jr_03b_7374:
    ld e, $2b
    rst $28

jr_03b_7377:
    dec l
    ld hl, $261e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    ld l, $2b

jr_03b_7384:
    ld [hl+], a
    daa
    jr nz, jr_03b_7377

    ld [de], a
    ld l, $26
    ld h, $1e

jr_03b_738d:
    dec hl
    adc [hl]
    rst $28
    jp hl


    dec l
    ld hl, $321e
    rst $28
    jr nc, @+$24

    dec h
    dec h
    rst $28
    inc h

jr_03b_739c:
    ld e, $1e
    add hl, hl
    rst $28
    rst $28
    jr nz, jr_03b_73ce

    jr z, jr_03b_73d5

    ld [hl+], a
    daa
    jr nz, @+$4e

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    ld [bc], a
    jr z, jr_03b_73e9

    daa
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_73ce:
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $321e

jr_03b_73d5:
    rst $28
    dec hl
    ld e, $2a
    ld l, $22
    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    ld a, [de]
    rst $28
    dec h
    jr z, @+$2f

    rst $28
    jr z, jr_03b_7408

jr_03b_73e9:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld a, [de]
    dec l
    dec l
    ld e, $27
    dec l
    ld [hl+], a
    jr z, jr_03b_7421

    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    dec e
    ld e, $25

jr_03b_7408:
    ld [hl+], a
    inc e
    ld [hl+], a
    jr z, jr_03b_743b

    inc l
    ld c, h
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7421:
    inc b
    jr nz, jr_03b_7444

    add hl, hl
    dec h
    ld a, [de]
    daa
    dec l
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld c, h
    jp hl


    inc de
    ld hl, $321e
    rst $28
    jr nz, jr_03b_7463

    jr z, jr_03b_746a

    rst $28

jr_03b_743b:
    rra
    ld a, [de]
    inc l
    dec l
    adc [hl]
    rst $28
    dec de
    ld l, $2d

jr_03b_7444:
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    daa
    jr z, jr_03b_7479

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    jr nc, jr_03b_747b

    dec hl
    dec l
    ld hl, $26ef
    ld l, $1c
    ld hl, $ef4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7463:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_746a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl

jr_03b_7479:
    ld e, $ef

jr_03b_747b:
    rrca
    ld e, $1a
    daa
    ld l, $2d
    ld [de], a
    ld e, $1e
    dec e
    inc l
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
    jp hl


    inc de
    ld hl, $321e
    rst $28
    jr nz, jr_03b_74c3

    jr z, jr_03b_74ca

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    inc l
    dec h
    jr z, jr_03b_74de

    ld e, $2b
    jp hl


    dec l
    ld hl, $271a
    rst $28
    ld e, $20
    jr nz, @+$2b

    dec h
    ld a, [de]
    daa
    dec l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28

jr_03b_74c3:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_74ca:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    ld [bc], a
    ld a, [de]
    dec hl

jr_03b_74de:
    dec hl
    jr z, jr_03b_750e

    ld [de], a
    ld e, $1e
    dec e
    inc l
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
    jp hl


    inc de
    ld hl, $321e
    rst $28
    jr nz, jr_03b_7523

    jr z, jr_03b_752a

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    rst $28
    dec h
    ld [hl+], a
    dec l
    dec l
    dec h
    ld e, $ef
    inc l
    dec h
    jr z, jr_03b_753e

jr_03b_750e:
    ld e, $2b
    jp hl


    dec l
    ld hl, $271a
    rst $28
    ld e, $20
    jr nz, jr_03b_7543

    dec h
    ld a, [de]
    daa
    dec l
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28

jr_03b_7523:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_752a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    ld bc, $282b

jr_03b_753e:
    inc e
    inc e
    ld b, h
    jr z, @+$27

jr_03b_7543:
    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    inc de
    ld hl, $321e
    rst $28
    dec hl
    ld e, $2a
    ld l, $22
    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    ld a, [de]
    rst $28
    dec h
    jr z, @+$2f

    rst $28
    jr z, jr_03b_7588

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld a, [de]
    dec l
    dec l
    ld e, $27
    dec l
    ld [hl+], a
    jr z, jr_03b_75a1

    adc [hl]
    rst $28
    dec de
    ld l, $2d
    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_03b_75b2

    rst $28
    inc e
    ld a, [de]
    daa

jr_03b_7588:
    rst $28
    ld hl, $2b1a
    cpl
    ld e, $2c
    dec l
    jp hl


    dec l
    ld hl, $261e
    rst $28
    ld h, $1a
    daa
    ld [hl-], a
    rst $28
    dec l
    ld [hl+], a
    ld h, $1e
    inc l
    ld c, h

jr_03b_75a1:
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
    jp hl


    inc de

jr_03b_75b2:
    ld hl, $2c28
    ld e, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_75cd:
    rst $28
    rst $28
    rst $28
    jp hl


    inc d
    inc l
    ld e, $ef
    jr nz, jr_03b_7602

    ld a, [de]
    inc l
    inc l
    rst $28
    dec l
    jr z, jr_03b_75cd

    rst $28
    rst $28
    rst $28
    rra
    ld e, $1e
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_03b_7617

    dec hl
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    ld a, [de]
    daa
    ld [hl+], a
    ld h, $1a
    dec h
    inc l
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

jr_03b_7602:
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


    inc de
    ld hl, $271a
    inc h
    rst $28

jr_03b_7617:
    ld [hl-], a
    jr z, jr_03b_7648

    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28
    rst $28
    ld h, $2e
    inc e
    ld hl, $ef4c
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
    ld [hl-], a
    jr z, jr_03b_7662

    rst $28
    dec e
    jr z, jr_03b_765f

    ld c, e
    dec l
    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    ld e, $27
    jr z, @+$30

    jr nz, jr_03b_7668

    rst $28

jr_03b_7648:
    ld h, $28
    daa
    ld e, $32
    ld c, h
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld [hl+], a
    daa
    inc e
    ld e, $ef
    dec l
    ld hl, $2c22
    rst $28
    ld [hl+], a
    inc l
    rst $28

jr_03b_765f:
    rst $28
    rst $28
    ld [hl-], a

jr_03b_7662:
    jr z, @+$30

    dec hl
    rst $28
    rra
    ld [hl+], a

jr_03b_7668:
    dec hl
    inc l
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    add hl, hl
    ld l, $2b
    inc e
    ld hl, $2c1a
    ld e, $8e
    rst $28
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    jr nz, jr_03b_76a5

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, @+$30

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    jp hl


    ld d, $1a
    dec l
    ld e, $2b
    rst $28
    ld [bc], a
    ld a, [de]
    daa
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_769f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_76a5:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_76a9:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [bc]
    ld e, $1e
    add hl, hl
    rst $28
    ld l, $29
    rst $28
    dec l
    ld hl, $ef1e

jr_03b_76bd:
    jr nz, jr_03b_76e7

    jr z, jr_03b_76de

    jr nc, jr_03b_76eb

    dec hl
    inc h
    ld b, b
    rst $28

jr_03b_76c7:
    ld bc, $1e32
    ld b, h
    ld bc, $1e32
    ld c, h
    rst $28
    rst $28

jr_03b_76d1:
    rlca
    jr z, jr_03b_7704

    rst $28
    ld h, $1a
    daa
    ld [hl-], a
    rst $28
    dec e

jr_03b_76db:
    jr z, @-$0f

    ld [hl-], a

jr_03b_76de:
    jr z, jr_03b_770e

    rst $28
    jr nc, jr_03b_76fd

    daa
    dec l

jr_03b_76e5:
    ld b, c
    rst $28

jr_03b_76e7:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_76eb:
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_76ef:
    rst $28
    jp hl


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

jr_03b_76fd:
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$ef2d], sp

jr_03b_7704:
    ld [hl+], a
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_770e:
    ld b, $4c
    rst $28
    and $40
    inc [hl]
    ld b, b
    adc a
    ld b, [hl]
    dec d
    ld [hl], a
    ld hl, $7340
    ld [hl], a
    jr nz, jr_03b_769f

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    sub e
    ld [hl], a
    jr nz, jr_03b_76a9

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    or e
    ld [hl], a
    jr nz, @-$7e

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    db $d3
    ld [hl], a
    jr nz, jr_03b_76bd

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    di
    ld [hl], a
    jr nz, jr_03b_76c7

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    inc de
    ld a, b
    jr nz, jr_03b_76d1

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    inc sp
    ld a, b
    jr nz, jr_03b_76db

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld d, e
    ld a, b
    jr nz, jr_03b_76e5

    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld [hl], e
    ld a, b
    jr nz, jr_03b_76ef

    adc a
    ld b, [hl]
    ld de, $1377
    ld l, $2b
    daa
    ld [hl+], a

jr_03b_7778:
    add hl, hl
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_7778

jr_03b_7789:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    ld [hl], $34
    ld b, $4c
    rst $28
    rst $28
    rrca
    jr z, jr_03b_77c3

    ld a, [de]
    dec l

jr_03b_7798:
    jr z, jr_03b_7789

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_7798

jr_03b_77a9:
    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    add hl, sp
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    inc de
    jr z, jr_03b_77dc

    ld a, [de]
    dec l

jr_03b_77b8:
    jr z, jr_03b_77a9

    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_77c3:
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_77b8

    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03b_7801

    daa
    rst $28

jr_03b_77d8:
    ld [de], a
    ld e, $1e
    dec e

jr_03b_77dc:
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_77d8

    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    inc b
    jr nz, jr_03b_7816

    add hl, hl
    dec h

jr_03b_77f8:
    ld a, [de]
    daa
    dec l
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l

jr_03b_7801:
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_77f8

    ld [hl+], a
    inc l
    rst $28
    dec [hl]
    add hl, sp
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    rrca
    ld e, $1a

jr_03b_7816:
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
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, @-$0f

    ld [hl+], a
    inc l
    rst $28
    ld [hl], $34
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    ld [bc], a
    ld a, [de]
    dec hl
    dec hl
    jr z, jr_03b_7866

    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, @-$0f

    ld [hl+], a
    inc l
    rst $28
    scf
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    ld bc, $282b
    inc e
    inc e

jr_03b_7858:
    jr z, jr_03b_787f

    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de

jr_03b_7866:
    ld a, [de]
    jr nz, jr_03b_7858

    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]
    inc l
    inc l

jr_03b_7878:
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    rst $28

jr_03b_787f:
    rst $28
    rst $28
    rst $28
    rst $28
    dec [hl]
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_03b_7878

    ld [hl+], a
    inc l
    rst $28
    add hl, sp
    inc [hl]
    inc [hl]
    ld b, $4c
    rst $28
    rst $28
    ld hl, $a740
    ld a, b
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    or a
    ld a, b
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $0c77
    ld a, [de]
    dec l
    ld e, $2b
    ld [hl+], a
    ld a, [de]
    dec h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca

Jump_03b_78b8:
    jr z, jr_03b_78e0

    ld e, $ef
    inc b
    ld sp, $1a29
    daa
    inc l
    ld [hl+], a
    jr z, jr_03b_78ec

    rst $28
    rst $28
    ld hl, $0340
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    inc de
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    inc hl
    ld a, c
    db $10

jr_03b_78e0:
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    inc sp
    ld a, c
    db $10
    add b
    adc a

jr_03b_78ec:
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld b, e
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld d, e
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $1277
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    inc h
    dec h
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $2e2b
    inc l
    ld hl, $efef
    rst $28
    rst $28

jr_03b_791c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld a, [de]
    dec e
    dec e
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_03b_791c

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
    ld e, $2b
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
    ld [bc], a
    ld hl, $1e1e
    inc l
    ld e, $ef
    inc c
    ld a, [de]
    inc h
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $2d2e
    dec l
    ld e, $2b
    rst $28
    inc c
    ld a, [de]
    inc h
    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $bd40
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    call $1079
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    db $dd
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    db $ed
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    db $fd
    ld a, c
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    dec c
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    dec e
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    dec l
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    dec a
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $0177
    ld l, $32
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_03b_79f6

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $322e
    rst $28
    ld a, [de]
    rst $28
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03b_7a10

    rst $28
    dec b
    ld e, $1e
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    dec b

jr_03b_79f6:
    ld e, $1e
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_03b_7a30

    rst $28
    inc c
    ld e, $1d
    ld [hl+], a
    inc e
    ld [hl+], a
    daa
    ld e, $ef
    rst $28
    rst $28
    rst $28
    inc c
    ld c, h
    rrca

jr_03b_7a10:
    jr z, @+$2f

    ld [hl+], a
    jr z, jr_03b_7a3c

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    ld c, h
    inc c
    ld e, $1d
    ld [hl+], a
    inc e
    ld [hl+], a
    daa
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $25

jr_03b_7a30:
    dec h
    rst $28
    ld a, [de]
    rst $28
    inc e
    jr z, jr_03b_7a67

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7a3c:
    rst $28
    ld [de], a
    ld e, $25
    dec h
    rst $28
    ld a, [de]
    rst $28
    inc e
    ld hl, $1c22
    inc h
    ld e, $27
    rst $28
    rst $28
    ld hl, $7f40
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    adc a
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    sbc a
    ld a, d
    db $10
    add b

jr_03b_7a67:
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    xor a
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    cp a
    ld a, d
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $0277
    ld a, [de]
    inc h
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
    dec bc
    ld l, $27
    inc e
    ld hl, $01ef
    jr z, jr_03b_7ac9

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    dec hl
    jr z, jr_03b_7ac5

    inc l
    inc l
    ld a, [de]
    daa
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld de, $1c22
    ld e, $ef
    ld bc, $251a
    dec h
    rst $28
    rst $28
    rst $28
    rst $28

jr_03b_7abc:
    rst $28
    rst $28
    rst $28
    inc c
    ld e, $1a
    dec l
    rst $28
    inc bc

jr_03b_7ac5:
    ld l, $26
    add hl, hl
    dec h

jr_03b_7ac9:
    ld [hl+], a
    daa
    jr nz, jr_03b_7abc

    rst $28
    rst $28
    ld hl, $0140
    ld a, e
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld de, $107b
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld hl, $107b
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld sp, $107b
    add b
    adc a
    ld b, [hl]
    ld de, $2177
    ld b, b
    ld b, c
    ld a, e
    db $10
    add b
    adc a
    ld b, [hl]
    ld de, $0e77
    dec hl
    ld a, [de]
    daa
    jr nz, jr_03b_7b25

    rst $28
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    nop
    add hl, hl
    add hl, hl
    dec h
    ld e, $ef
    add hl, bc
    ld l, $22
    inc e
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    ld d, $22
    dec h
    dec e

jr_03b_7b25:
    rst $28
    ld b, $2b
    ld a, [de]
    add hl, hl
    ld e, $ef
    add hl, bc
    ld l, $22
    inc e
    ld e, $06
    dec hl
    ld e, $1e
    daa
    rst $28
    inc de
    ld e, $1a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld [hl+], a
    dec h
    inc h
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
    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_03b_7bb0

jr_03b_7b61:
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
    jr c, jr_03b_7b81

    ld de, $99f2

jr_03b_7b81:
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
    jr z, jr_03b_7bab

    dec hl
    dec hl
    ret


jr_03b_7bab:
    xor a
    ld [$cd98], a
    ret


jr_03b_7bb0:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_03b_7bc8

    ld a, [de]
    cp $af
    jr nz, jr_03b_7b61

    jr jr_03b_7bb0

jr_03b_7bc8:
    pop hl
    xor a
    ld [$cd98], a
    ret


    push bc
    ld hl, $7caa
    call Call_03b_7c8c
    ld a, [hl+]
    cp $02
    jr z, jr_03b_7bdc

    jr jr_03b_7bf7

jr_03b_7bdc:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_03b_7c72
    call Call_000_325c
    ld hl, $cccd
    ld de, $cd87
    ld b, $05
    call CopyHLtoDE
    pop hl
    inc hl
    inc hl
    ret


jr_03b_7bf7:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld hl, $7caa
    call Call_03b_7c8c
    inc hl
    ld de, $cd8d
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
    inc hl
    ld a, [hl]
    call Call_03b_7c72
    call Call_000_325c
    ld hl, $cccd
    ld de, $cd82
    ld b, $05
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld hl, $7caa
    call Call_03b_7c8c
    ld [hl], $ff
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_03b_7c72
    call Call_03b_7c4b
    pop hl
    ret


Call_03b_7c4b:
    ld b, h
    ld c, l
    ld hl, $b8ef
    call Call_000_0cbb
    ld a, [$b8f1]
    or a
    ret z

    ld hl, $b8ef
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $869f
    ld a, l
    sub e
    ld a, h
    sbc d
    ret c

    ld hl, $869f
    ld a, l
    ld [$b8ef], a
    ld a, h
    ld [$b8f0], a
    ret


Call_03b_7c72:
    ld hl, $2ee0
    cp $a0
    ret nc

    ld hl, $1f40
    cp $50
    ret nc

    ld hl, $1388
    ret


Call_03b_7c82:
    ld hl, $3a98
    cp $03
    ret z

    ld hl, $01f4
    ret


Call_03b_7c8c:
    push hl
    ld hl, $cd9c
    ld a, [$cd64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    call Call_03b_7c9f
    ret


Call_03b_7c9f:
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


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c
    ld a, $03
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    ld a, $02
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    push bc
    ld hl, $7cb2
    call Call_03b_7c8c
    ld a, [hl]
    ld [hl], $ff
    call Call_03b_7c82
    call Call_03b_7c4b
    pop hl
    ret


    push bc
    ld hl, $7cb2
    call Call_03b_7c8c
    ld a, [hl+]
    cp $02
    jr z, jr_03b_7d06

    cp $03
    jr nz, jr_03b_7d1b

jr_03b_7d06:
    call Call_03b_7c82
    call Call_000_325c
    ld hl, $cccd
    ld de, $cd87
    ld b, $05
    call CopyHLtoDE
    pop hl
    inc hl
    inc hl
    ret


jr_03b_7d1b:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    pop hl
    ret


    push bc
    ld a, [$cd64]
    add a
    add a
    ld hl, $7d63
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd8c
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
    ld hl, $7cb2
    call Call_03b_7c8c
    ld a, [hl]
    call Call_03b_7c82
    call Call_000_325c
    ld hl, $cccd
    ld de, $cd82
    ld b, $05
    call CopyHLtoDE
    pop hl
    ret


    xor a
    dec [hl]
    ld [de], a
    inc de
    xor a
    ld [hl], $0d
    inc bc
    xor a
    scf
    ld de, $af03
    jr c, jr_03b_7d85

    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03b_7d85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
