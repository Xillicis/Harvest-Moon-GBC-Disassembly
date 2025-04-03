; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    inc e
    nop
    ld [$1dee], sp
    nop

Call_01c_4006:
    rst $38
    nop
    adc b
    jr nz, jr_01c_400b

jr_01c_400b:
    rst $38
    nop
    sbc a
    cp a
    rlca
    sbc a
    nop
    sbc a
    dec c
    rst $38
    ld b, $01
    rst $38
    push af
    ld [hl], a
    ret nz

jr_01c_401b:
    nop
    db $dd
    rlca
    ld bc, $6ff0
    rst $38
    nop
    ei
    db $e4
    db $db
    rlca
    ld [bc], a
    add d
    ld a, l
    rst $38
    nop
    db $10
    db $fd
    rst $28
    rlca
    inc bc
    ld [$fff7], sp
    nop
    ld b, c
    cp [hl]
    ld a, [hl]
    rlca
    inc b
    jr nz, jr_01c_401b

    rst $38
    nop
    inc b
    ei
    rlca
    dec b
    rst $38
    cp a
    ld e, a
    rst $38
    db $10
    ccf
    ret nc

    rst $38
    rra
    cp $05

jr_01c_404d:
    rlca
    ld hl, sp-$19
    rst $38
    jr nz, jr_01c_404d

    dec h
    rst $38
    rst $28
    ldh [rIE], a
    nop
    adc c
    jr nz, jr_01c_405c

jr_01c_405c:
    rst $38
    nop
    ld sp, hl
    rst $38
    ld [hl], b
    ld sp, hl
    nop
    ld sp, hl
    ret nc

    rst $38
    nop
    sbc b
    ldh a, [c]
    add b
    ld [$8092], sp
    ld [$0081], sp
    sbc a
    rrca
    rst $38
    rrca
    and l
    adc b
    add b
    ld [$8022], sp
    ld [$0081], sp
    rst $38
    stop
    ret nz

    rst $18
    ccf
    rst $38
    nop
    ld a, a
    cp a
    add b
    ld a, [bc]
    dec a
    rst $38
    sbc a
    dec a
    ld a, a
    nop
    ld a, a
    cpl
    ld d, b
    ld bc, $0181
    nop
    cp e
    rst $38
    rst $30
    jr nz, jr_01c_409b

jr_01c_409b:
    nop
    rst $38
    cp [hl]
    ld [bc], a
    ld bc, $ffe0
    ldh [$ff1f], a
    rst $18
    and b
    ldh [$ff80], a
    push bc
    ld a, [de]
    ei
    jp z, Jump_000_0290

    ld [bc], a
    rrca
    rrca
    ldh a, [$fff7]
    add hl, bc
    rst $38
    rrca
    ld bc, $f007
    add a
    ld [hl], e
    rst $38
    ret nz

    xor e
    rst $38
    dec c
    ld h, b
    rlca
    rlca
    and b
    rlca
    db $ed
    ld bc, $fc03
    ld a, a
    dec de
    rst $38
    ret nz

    cp $19
    rst $38
    ld b, b
    add b
    nop
    cp a
    ret c

    db $fc
    nop
    db $fc
    ld hl, sp-$77
    add b
    ld [$fc29], sp
    add b
    ld [$0081], sp
    ld sp, hl
    ldh a, [rIE]
    ldh a, [$ff9f]
    rrca
    ldh a, [c]
    ld hl, rJOYP
    ld h, d
    nop
    ld bc, $2809
    rst $38
    ld b, l
    rst $38
    rst $38
    adc [hl]
    rst $38
    ld h, d
    rst $38
    ld c, c
    rst $38
    and h
    rst $38
    cp a
    ld e, c
    rst $38
    and b
    rst $38
    ld a, a
    cpl
    ld h, b
    ld [$883d], sp
    jr nz, jr_01c_410a

jr_01c_410a:
    ret nz

    ld [$00c1], sp
    rst $38
    ld b, c
    db $10
    call nz, $c108
    nop
    ret nc

    rst $38
    add b
    rst $08
    db $10
    ret z

    sub a
    ret z

    sub e
    ret z

    rst $38
    inc de
    ret z

    sub e
    rst $20
    ret nz

    rst $38
    nop
    ld h, a
    rst $38
    inc de
    sub a
    nop
    rst $10
    ld bc, $01d7
    and a
    sbc a
    db $10
    rst $00
    inc sp
    rrca
    inc bc
    ld h, d
    ld [bc], a
    ld a, [bc]
    inc bc
    db $fc
    push bc
    ld hl, sp+$60
    ld [$20d8], sp
    nop
    and c
    nop
    ret nz

    nop
    nop
    ld d, d
    rst $38
    nop
    and h
    nop
    ld c, d
    nop
    inc d
    nop
    and h
    cp a
    ld bc, $0118
    ld b, b
    inc bc
    call nc, Call_000_1b65
    add h
    ld bc, $437b
    ld d, $65
    inc e
    pop bc
    jr jr_01c_41a6

    add hl, de
    ld h, l
    dec e
    pop bc
    jr @+$43

    add hl, de
    ld a, [hl]
    ld h, l
    ld e, $05
    ld a, [$00ff]
    ld hl, $07de
    inc bc
    cp d
    ret nz

    inc d
    add c
    jr nz, jr_01c_417d

jr_01c_417d:
    rst $38
    ld sp, hl
    ldh a, [rNR42]
    nop
    rst $38
    db $fd
    ld [hl], b
    nop
    jr jr_01c_41b8

    ld sp, hl
    jr nc, @+$01

    db $10
    sub e
    rst $38
    inc c
    sub h
    dec bc
    sub h
    dec bc
    db $f4
    dec bc
    sub l
    rst $38
    ld a, [bc]
    sub a
    ld [$0b97], sp
    rst $30
    dec bc
    cp e
    or a
    ld b, h
    ld b, h
    cp e
    ld hl, $dd00

jr_01c_41a6:
    ld [hl+], a
    ret nz

jr_01c_41a8:
    ld hl, $eebb
    jr nz, jr_01c_41ad

jr_01c_41ad:
    ld a, a
    ld a, a
    cp a
    ld hl, rJOYP
    jr c, jr_01c_41ad

    rst $38
    jr nc, jr_01c_422f

jr_01c_41b8:
    and b
    ld a, b
    and a
    ret nc

    xor a
    rst $38
    ld [hl], a
    add b
    ldh [c], a
    pop bc

jr_01c_41c2:
    jr nz, jr_01c_41c4

jr_01c_41c4:
    ld bc, $0122
    ld b, b
    nop
    db $fd
    ret nz

    ld b, c
    jr nz, jr_01c_41a8

    inc h
    jp c, $0224

    db $fc
    ld a, h
    ld h, d
    nop
    ld b, d
    jr nz, jr_01c_41f9

    rra
    jr nz, jr_01c_41dc

jr_01c_41dc:
    ccf
    ld h, b
    nop
    rst $28
    ccf
    nop
    add hl, hl
    ld d, $41
    inc hl
    ld [$08f0], sp
    ld a, e
    nop
    ld hl, sp+$60
    nop
    ld hl, sp+$00
    jr z, jr_01c_41c2

    ld b, c
    inc hl
    cp a
    or [hl]
    ld c, c
    or [hl]
    ld c, c

jr_01c_41f9:
    add b
    ld a, a
    ld h, d
    nop
    nop
    cp a
    rlca
    ei
    rst $38
    inc bc
    adc a
    rlca
    daa
    nop
    inc bc
    rst $38
    nop
    inc bc
    sub h
    inc bc
    ld c, c
    inc bc
    xor b
    inc bc
    ccf
    ld d, l
    inc bc
    sbc c
    inc bc
    jr nc, jr_01c_421b

    or b
    ld [hl+], a
    inc b

jr_01c_421b:
    rra
    db $dd
    rst $28
    jr nz, jr_01c_4220

jr_01c_4220:
    nop
    rst $38
    ld a, l
    dec b

jr_01c_4224:
    jr nz, jr_01c_4224

    cp l
    ccf
    rst $38
    cp h
    cp $00
    cp $f4
    ld [bc], a

jr_01c_422f:
    ld hl, $2d70
    cp $a1
    ld de, $d52a
    ld a, a
    xor d
    ld bc, $fffe
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    cp a
    ld c, a
    ld a, a
    ld e, a
    rrca
    ccf
    add b
    ccf
    sbc l
    jr nz, @+$30

    ld l, [hl]
    ld h, b
    ld l, $fd
    ld a, [hl-]
    add h
    nop
    or $e9
    ret nc

    jp hl


    db $10
    jp hl


    di
    ret nc

    rst $28
    ld b, b
    nop
    and c
    nop
    rst $28
    ret nc

    sub a
    dec bc
    jp nz, Jump_000_0021

    rst $30
    ld h, d
    nop
    ld bc, $4210
    rrca
    dec l
    nop
    cp d
    cp $3f
    cp c
    db $fd
    cp d
    cp $b8
    db $fd
    jr nz, jr_01c_427c

jr_01c_427c:
    ld b, d
    ld de, $04f8
    rlca
    pop hl
    inc sp
    ld b, d
    ld [de], a
    or b
    rst $38
    dec l
    ld a, a
    xor l
    cp a
    rst $38
    jr nz, jr_01c_430d

jr_01c_428e:
    dec l
    ld a, a
    jr nz, jr_01c_42d4

    inc de
    ld bc, $ffeb
    or [hl]
    jr nz, jr_01c_4299

jr_01c_4299:
    nop
    ld b, c
    nop
    ld [hl], a
    xor b
    ld [hl], b
    rst $38
    xor a
    ld [hl], b
    xor a
    ld a, b
    and a
    ld [hl], a
    and b
    ld a, c
    rst $38
    or b
    ld a, a
    cp b
    ld a, a
    cp [hl]

jr_01c_42ae:
    ldh [c], a
    ld bc, $ff23
    ret nz

    ld a, h
    add b

jr_01c_42b5:
    add d
    ld a, h
    ld a, l
    nop
    add e
    rst $38
    nop
    ld a, l
    add d

jr_01c_42be:
    ld bc, $02fe
    db $fc
    cp $f7
    nop
    ld a, h
    nop
    rlca
    ld bc, $1629
    dec hl
    inc d
    db $fd
    add hl, hl
    jr nz, jr_01c_42d1

jr_01c_42d1:
    db $eb
    inc d
    add hl, hl

jr_01c_42d4:
    ld d, $29
    sub $dd
    rst $38
    jr nz, jr_01c_42ee

    xor b
    ld d, b
    jr z, jr_01c_42ff

    nop
    xor a
    ld d, b
    rrca
    jr z, jr_01c_42b5

    jr z, jr_01c_42be

    pop bc
    dec c
    ld b, e
    jr nz, jr_01c_428e

    jr nz, jr_01c_42ae

jr_01c_42ee:
    jr nc, @-$14

    pop bc
    inc de
    rrca
    jr nz, jr_01c_42f5

jr_01c_42f5:
    rst $38
    ld h, c
    nop
    rst $30
    rst $38
    rlca
    rst $28
    inc bc
    sub c
    inc bc

jr_01c_42ff:
    ld l, h
    ld b, b

Jump_01c_4301:
    nop
    ld a, c
    inc bc

jr_01c_4304:
    and h
    jp nz, Jump_000_1420

    xor c
    nop
    ld a, [hl+]
    add b
    dec sp

jr_01c_430d:
    push bc
    inc de
    pop bc
    nop
    cp $f4
    or d
    ld h, b
    inc de
    cp h
    jr nz, jr_01c_4319

jr_01c_4319:
    ret nz

    inc de
    rst $38
    or $c0
    dec [hl]
    cp [hl]
    rst $38
    ld a, $dd
    ld a, a
    add b
    sub h
    ld [$8049], sp
    db $db
    ld [hl], $c9
    pop hl
    ld b, c
    ccf
    sbc l
    ld h, b
    inc de
    adc a
    cp a
    ld b, $c2
    inc de
    ld a, a
    dec e
    add d
    ld [hl], $a4
    dec l
    inc hl
    scf
    inc b
    inc d
    ld h, d
    inc d
    sub h
    add c
    inc d
    inc c
    inc d
    ld [$13ec], sp
    nop
    ld b, c
    inc de
    ld b, e
    nop
    db $fc
    rst $28
    cp b
    cp $b8
    rst $38
    nop
    rra
    rlca
    nop
    db $fc
    ld a, a
    ei
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    cp $82
    add hl, hl
    ei
    jr z, jr_01c_43e7

    ld hl, $2b00
    ld a, a
    inc sp
    ld a, a
    dec sp
    db $eb
    rst $38
    dec sp
    nop
    ld c, c
    ld [bc], a
    ld [hl+], a
    nop
    cp d
    rst $38
    cp c
    add $a3
    ld d, $7f

jr_01c_437e:
    cp [hl]
    ld [hl+], a
    nop
    ld b, d

jr_01c_4382:
    jr z, jr_01c_4304

    ld b, b
    ccf
    ld bc, $febb
    add e
    pop bc
    inc de
    ld bc, $83ff
    pop hl
    ld b, c
    rst $38
    ld a, a
    rst $38
    jp nz, $df81

    add b
    rst $18
    adc [hl]
    daa
    nop
    ld a, [hl]
    add c
    ld c, d
    ld d, $09
    ld d, $09
    db $10
    rrca
    ld h, d
    nop
    ld a, [hl]
    add d
    ld c, d
    pop de
    jr nz, jr_01c_437e

    jr nz, jr_01c_43c0

    ldh [$ff62], a
    nop
    ret c

    ld b, e
    inc [hl]
    or c
    ld b, l
    ld b, d
    inc hl
    ld a, a
    add b
    add c
    ld c, l
    ld b, l
    add d
    rst $38

jr_01c_43c0:
    ld b, l
    add d
    call nz, Call_01c_4503
    add d
    push bc
    ld [bc], a
    ei
    ld b, h
    add b
    add c
    ld c, l
    or h
    ld c, b
    or h
    ld c, b
    inc b
    db $fd
    ld hl, sp+$62
    nop
    nop
    add hl, sp
    ret nc

    ld sp, hl
    db $10
    ld a, c
    rst $28
    jr nc, jr_01c_445e

    jr nc, jr_01c_445a

    ld [hl+], a
    nop
    ld a, a
    jr nc, jr_01c_4382

    rst $38

jr_01c_43e7:
    ld [$089c], sp
    sbc a
    inc c
    cp $0d
    sbc [hl]
    db $fd
    inc c
    ld hl, $fe00
    inc c
    ld b, h
    nop
    ld b, h
    nop
    rst $38
    ei
    inc b
    ld b, b
    and b
    ld b, b
    ccf
    ld a, a
    nop
    rst $28
    ld b, b
    jr nz, jr_01c_4446

    ccf
    ld bc, $bb01
    ld b, h
    add hl, bc
    rst $38
    ld b, $09
    ldh a, [$fff9]
    nop
    add hl, bc
    nop
    add hl, bc
    ld sp, hl
    ldh a, [$ff03]
    ld bc, $2961
    rst $38
    nop
    ld de, $11ee
    db $ec
    ldh [rSC], a
    ld bc, $2002
    ret nc

    pop hl
    ld sp, $1020
    jr nz, @+$7f

    rra
    ld bc, $bf04
    ld b, b
    inc b
    inc bc
    inc b
    add b
    ld b, b
    rst $38
    inc b
    nop
    inc b
    ld hl, sp-$80
    ld a, [bc]
    add b
    inc d
    rst $28
    add b
    rla
    add b
    dec d
    add b

jr_01c_4446:
    nop
    dec e
    add b
    ld b, $73
    add b
    ld a, [de]
    ret


    dec c
    add c
    ld c, $10
    rrca
    rra
    ld a, [bc]
    jr nz, jr_01c_44b6

    ld de, $f1e0

jr_01c_445a:
    nop
    ld bc, $0020

jr_01c_445e:
    rst $38
    ld h, b
    nop
    ccf
    rrca
    ldh a, [$fffb]
    nop
    ld a, a
    and d
    sub c
    dec [hl]
    ld b, e
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld b, h
    add e
    ld b, a
    add b
    ld [hl], l
    ld b, b
    jr nz, jr_01c_4479

jr_01c_4479:
    ld a, a
    ld h, b
    nop
    ld a, b
    add a
    rst $28
    jr nz, jr_01c_4487

    ld d, b
    ld b, b
    ld b, [hl]
    inc b
    inc h
    pop bc

jr_01c_4487:
    ld [hl-], a
    add l
    dec c
    ld sp, hl
    jr nz, jr_01c_449b

    ld sp, hl
    add b
    ld c, $6f
    sbc [hl]
    ld l, h
    cp $0c
    ld b, a
    nop
    rst $38
    ld c, $63
    dec c

jr_01c_449b:
    ld h, [hl]
    ld h, l
    nop
    rst $38
    ld a, a
    ld h, e
    dec c
    ld h, l
    nop
    rst $38
    ld hl, sp+$41
    dec c
    call nz, Call_000_0043
    pop bc
    ld h, h
    db $db
    add c
    ccf
    and d
    ccf
    ld h, e
    nop
    rst $38
    ccf

jr_01c_44b6:
    ldh a, [c]
    ld h, b
    dec c
    ld [$0dc2], sp
    ld h, d
    nop
    rst $38
    db $fc
    add b
    db $10
    ld [$0e20], a
    ld b, $40
    ld c, $14
    and b
    ld c, $0d
    nop
    xor d
    rst $38
    inc hl
    ret nz

    ld h, d
    ret nz

    sbc h
    ldh [$ff73], a
    ldh [rIE], a
    ld e, c
    ldh [$ffb7], a
    ldh [$ff5a], a
    ldh [$ffbc], a
    ldh [rIE], a
    ret z

    rlca
    dec [hl]
    rlca
    ld [hl], d
    inc bc
    jp z, $ff07

    add hl, hl
    rlca
    jr nc, jr_01c_44f1

    pop af
    rlca
    adc b

jr_01c_44f1:
    rlca
    ei
    rst $18
    adc a
    ld [hl+], a
    nop
    add b
    ret nz

    add b
    rst $38
    add b
    adc a
    ret nz

    cp a
    rst $38
    add b
    ld h, e
    rra

Call_01c_4503:
    db $e3
    scf
    pop bc
    ld h, b
    ld a, [$f1f7]
    ld a, [$20f0]
    nop
    nop
    ld [bc], a
    ld bc, $fdfe
    ld bc, $34c0
    ld bc, $0025
    ldh a, [c]
    nop
    adc h
    ei
    nop
    sub e
    ld b, b
    dec [hl]
    inc h
    nop
    rst $20
    nop
    inc e
    rst $28
    nop
    ld l, a
    rst $00
    rst $28
    jr nz, jr_01c_452d

jr_01c_452d:
    ld l, a
    ret nz

    ld h, b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld h, b
    rst $18
    rst $38
    ld b, b
    rst $38
    sbc c
    cp $22
    nop
    ld b, $04
    ld a, c
    ld [hl], $c0
    dec e
    ld b, d
    nop
    rst $38
    rst $38
    jr nc, jr_01c_45c2

    or [hl]
    rst $38
    jr nc, jr_01c_4577

    db $fc
    ld b, [hl]
    rst $38
    db $fc
    adc a
    cp $63
    cp $4a
    db $fc
    and [hl]
    rst $38
    db $fc
    ld e, c
    cp $a0
    rst $38
    daa
    nop
    ld [hl], d
    cp [hl]
    ld [bc], a
    dec b
    ld a, [hl]
    nop
    ld [hl+], a
    nop
    rst $18
    ret nz

    ld [hl], e
    xor b
    ld a, a
    ld a, a
    ld b, l
    ccf
    ld c, [hl]
    ccf
    and e
    inc e
    ld bc, $fd01

jr_01c_4577:
    rst $10
    ret nz

    ld [hl], h
    inc hl
    ret nz

    ld [hl+], a
    add b
    sbc h
    add b
    db $fc
    inc bc
    ld [bc], a
    ld bc, $c801
    inc bc
    ld [hl], h
    ld bc, $0192
    rst $30
    sub e
    nop
    ld a, a
    inc b
    ld [bc], a
    add hl, hl
    rst $38
    inc b
    rst $38
    rrca
    dec bc
    ld a, [hl]
    and e
    ld a, h
    dec b
    inc bc
    dec b
    ld a, [bc]
    dec b
    inc b

jr_01c_45a0:
    inc bc
    dec b
    db $ed
    add e
    inc b
    dec b
    ld [$0100], sp
    ld h, a
    adc $ff
    db $e3
    xor e
    ld a, h
    ld e, [hl]
    inc b
    ld b, $20
    jr nc, jr_01c_45c0

    adc [hl]
    ld b, $01
    adc c
    rst $18
    ld bc, $fd2b
    ld b, l
    cp $00

jr_01c_45c0:
    ld a, [bc]
    db $fc

jr_01c_45c2:
    ld c, d
    rst $30
    db $fc
    and l
    cp $01
    ld l, c
    ld c, h
    nop
    di
    nop
    rst $18
    ld de, $be00
    nop
    ld c, b
    ldh [$ff0e], a
    sbc c
    nop
    dec sp
    adc d
    nop
    rlca
    ld bc, $00c7
    jr c, jr_01c_45a0

    jr jr_01c_45e2

jr_01c_45e2:
    ld [$4cff], sp
    nop
    di
    nop
    ld de, $be00
    nop
    ld a, a
    ld c, b
    nop
    rst $00
    nop
    inc a
    nop
    ld b, h
    ld a, [bc]
    ld bc, $79d7
    nop
    ld c, c
    ld a, [bc]
    ld [bc], a
    jr c, jr_01c_45fe

jr_01c_45fe:
    inc bc
    rst $38
    rrca
    rst $38
    sbc a
    ld c, $9f
    ld c, $ff
    inc c
    sbc a
    inc c
    cp a
    sbc a
    ld [$089f], sp
    rst $38
    ld [$0120], sp
    nop
    xor a
    rst $38
    rst $38
    rst $38
    add c
    jr nz, jr_01c_461b

jr_01c_461b:
    rst $38
    and b
    nop
    ld l, [hl]
    cp $01
    ld bc, $5fa0
    rst $38
    nop
    add h
    ld a, e
    rst $38
    rst $28
    nop
    add b
    ld a, a
    rst $38
    ld hl, $0003
    add d
    ld a, l
    adc a
    rst $38
    nop
    db $10
    rst $28
    ret nz

    nop
    jr nz, @+$04

    ld bc, $0803
    rst $18
    rst $30
    rst $38
    nop
    ld b, c
    cp [hl]
    rlca
    ld bc, $de21
    rst $38
    rst $38
    nop
    inc b
    ei
    rst $38
    nop
    ldh [$ff1f], a
    rst $28
    rst $38
    ldh [rP1], a
    ld [hl], a
    ld d, b
    ld [$8066], sp
    add hl, de
    rst $38
    add b
    add hl, bc
    ret nz

    scf
    ld b, b
    sub d
    ret nz

    inc c
    rst $38
    add sp, $3f
    ld b, l
    ccf
    ld c, [hl]
    ccf
    ldh [c], a
    ccf
    rst $38
    add hl, hl
    rra
    inc h
    rra
    reti


    ccf
    ld h, b
    ccf
    rst $38
    dec hl
    db $fc
    ld b, [hl]
    db $fc
    adc [hl]
    db $fc
    ld h, e
    db $fc
    rst $38
    ld c, h
    ld hl, sp-$5c
    ld hl, sp+$5b
    db $fc
    and d
    db $fc
    rst $38
    ld bc, $01cf
    inc sp
    ld bc, $0363
    sbc h
    rst $38
    inc bc
    sub b
    inc bc
    ld h, b
    ld [bc], a
    sbc l
    inc bc
    ld c, b
    ld h, [hl]
    ld h, c
    ld [$649b], sp
    ld b, a
    dec b
    ld h, c
    add hl, bc
    add hl, sp
    add $c3
    rlca
    ld a, [hl]
    dec b
    ld bc, $33cc
    rst $38
    nop
    ld [bc], a
    db $fd
    inc bc
    add hl, bc
    db $ec
    dec b
    ld bc, $0941
    ld b, b
    cp a
    ret nz

    inc c
    ldh a, [$fff9]
    ld [hl], b
    cp $20
    nop
    jr nc, jr_01c_4743

    or b
    ld sp, hl
    db $10
    add hl, sp
    ret nc

    rst $38
    ld sp, hl
    db $10
    sub a
    dec bc
    sub a
    ld [$0b97], sp
    ld a, l
    rst $30
    ld h, c
    nop
    ld a, [bc]
    sub a
    ld a, [bc]
    rst $30
    ld [$0ee0], sp
    jp hl


    ld a, [hl-]
    add c
    ld c, $60
    rrca
    ei
    jr nz, jr_01c_46e6

jr_01c_46e6:
    nop
    ld bc, $fffe
    cp $01
    db $fd
    ld a, d
    cp $78
    db $fc
    ld bc, $fceb
    jp hl


    jr nz, jr_01c_46f7

jr_01c_46f7:
    ld bc, $0e65
    nop
    rst $38
    ret c

    rst $38
    daa
    cp h
    dec de
    ld a, h
    cp e
    rst $38
    cp $fe
    rst $38
    nop
    ld a, l
    sbc b
    cp $1c
    ld a, [hl]
    nop
    ld a, a
    rst $38
    ld a, [hl-]
    ld a, a
    dec sp
    ld a, a
    nop
    rra
    rrca
    ld c, a
    rst $38
    nop
    ld b, c
    nop
    ld bc, $0300
    nop
    rrca
    ei
    ld bc, $40ff
    ld [de], a
    ld b, b
    or a
    ret nz

    inc b
    ld b, b
    ld a, a
    and [hl]
    ld b, b
    sbc c
    ret nz

    add hl, bc
    ld b, b
    or a
    ld bc, $ff0f
    nop
    ret nz

    rrca
    add b
    rrca
    add a
    rra
    inc b
    rst $38
    ccf
    inc b
    ccf
    rlca

jr_01c_4743:
    ld a, a
    nop
    ld a, a
    inc bc
    cp $01
    ld d, $fd
    ld a, [$08ff]
    db $fc
    dec bc
    rst $38
    sbc a
    ld hl, sp-$04
    inc bc
    rst $38
    ld [hl], b
    ld bc, $c117
    ld [de], a
    jr nz, jr_01c_475e

    rst $18

jr_01c_475e:
    rlca
    dec d
    pop bc
    dec d
    ld b, c
    ld d, $05
    ld d, $c1
    dec d
    ld b, c
    ld d, $04
    ld c, $ff
    rlca
    rrca
    di
    rst $38
    inc bc
    daa
    db $db
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    rst $38
    ld bc, $7902
    ld [bc], a
    rst $38
    add l
    ld [bc], a
    ld c, c
    inc bc
    jr nc, jr_01c_4787

    pop de
    ld [bc], a

jr_01c_4787:
    sbc a
    sbc l
    ld [bc], a
    ld h, l
    inc bc
    ret z

    ret nz

    dec de
    ld sp, $0000
    ld a, a
    rst $38
    rst $28
    rst $38
    db $ec
    db $fc
    add sp, -$04
    add c
    nop
    cp $21
    nop
    nop
    cp $fc
    rst $38
    db $fc
    cp $7c
    ld sp, hl
    cp $c1
    dec e
    ld h, h
    dec de
    nop
    nop
    ld [hl+], a
    db $dd
    db $dd
    rst $30
    nop
    rst $38
    cp $20
    nop
    ld a, [hl]
    ld a, a
    nop
    cp a
    ccf
    dec de
    ld a, a
    dec de
    ccf
    sbc d
    cp [hl]
    inc bc
    ld [bc], a
    add e
    inc d
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    rst $28
    ret nc

    jp hl


    ld [hl+], a
    ld hl, $1000
    add l
    nop
    nop
    inc d
    jr nz, @+$16

    rst $30
    ret nz

    inc de
    ld hl, $6214
    nop
    inc d
    rst $18
    jr nz, jr_01c_47e4

jr_01c_47e4:
    call nz, $0113
    inc d
    db $fc
    ld a, c
    jr nz, jr_01c_47ec

jr_01c_47ec:
    or $c0
    inc de
    cp $ec
    ld b, d
    ld [$f800], sp
    ld [hl], a
    db $f4
    sbc a
    ld h, e
    ld l, d
    sub c
    ld b, $f9
    add d
    dec h
    ld b, b
    ld [hl+], a
    ld a, a
    ld a, l
    rra
    jr nz, jr_01c_4806

jr_01c_4806:
    nop
    ld a, a
    dec sp
    rst $38
    dec sp
    inc bc
    inc bc
    rst $38
    rst $28
    ld de, $6d93
    add e
    nop
    rst $38
    add e
    db $fc
    ld b, c
    ld a, [bc]
    add c
    ld a, [bc]
    ret nz

    or a
    ret nz

    sub h
    ret nz

    daa
    ld a, a
    ret nz

    sbc c
    ret nz

    adc c
    ret nz

    scf
    ret nz

    nop
    inc hl
    rst $38
    ccf
    sbc b
    ccf
    ld bc, $183f
    ccf
    sbc e
    rst $38
    ccf
    nop
    ccf
    sub a
    ccf
    rla
    ccf
    nop
    rst $38
    rst $38
    rlca
    rst $38
    ret nc

    rst $38
    inc bc
    rst $38
    ld [hl], e
    db $fc
    ld h, b
    ld a, [hl+]
    and e
    rlca
    ldh a, [$fff0]
    rrca
    rst $28
    ret nc

    di
    rst $38
    ret nz

    db $e4
    nop
    ld [$f540], a
    ld b, b
    ld [$00ff], a
    ld hl, sp+$07
    rlca
    ld hl, sp-$05
    inc b
    add a
    rst $38
    nop
    ld b, e
    jr c, jr_01c_488b

    add hl, de
    inc de
    add hl, bc
    sub e
    pop af
    ld [$2142], sp
    db $e3
    add hl, bc
    and d
    ld a, [bc]
    ld [bc], a
    db $fc
    cp $00
    set 7, [hl]
    db $ec
    jr nz, jr_01c_487d

jr_01c_487d:
    nop
    ldh [rNR10], a

Call_01c_4880:
    nop
    ld de, $7903
    rst $38
    inc bc
    add l
    inc bc
    ld c, c
    inc bc
    ld [hl], b

jr_01c_488b:
    inc bc
    pop de
    or a
    inc bc
    sbc l
    inc bc
    nop
    inc d
    db $fc
    ld hl, sp+$22
    nop
    nop
    rst $18
    db $fc
    cp b
    rst $38
    cp h
    rst $38
    nop
    inc h
    ldh a, [c]
    ld h, b
    cp d
    jr nz, jr_01c_48a5

jr_01c_48a5:
    ld l, h
    ld b, b
    inc bc
    ld a, b
    cp $f8
    add b
    dec de
    nop
    rst $38
    add b
    nop
    ld d, l
    add b
    ld d, l
    add b
    ld b, c
    add b
    rst $28
    ld [hl+], a
    db $dd
    inc e
    db $e3
    pop bc
    ld [hl-], a
    cp [hl]
    inc e
    ld a, $fd
    sbc h
    jr nz, jr_01c_48c5

jr_01c_48c5:
    add b
    ld a, $94
    ld a, $94
    ld a, a
    push af
    ld [hl], $00
    ld c, $3d
    ld [hl+], a
    nop
    nop

jr_01c_48d3:
    ld a, a
    ccf
    ld a, a
    di
    ccf
    rst $38
    nop

jr_01c_48da:
    inc sp
    dec c
    inc d
    sbc [hl]
    dec c
    sbc a
    inc c
    rst $20
    sbc [hl]
    dec c
    rst $38
    ld b, b
    nop
    ld hl, $fe00
    dec c
    sub b
    rst $38
    rrca
    or $09
    ld d, $e9
    ldh a, [rIF]
    sub [hl]
    rst $38
    add hl, bc
    sub [hl]
    add hl, bc
    sub b
    rrca
    sbc a
    nop
    db $10
    rst $38
    ldh [$ffdf], a
    jr nz, jr_01c_48d3

    cpl
    rra
    ldh [$ffd0], a
    rst $38
    jr nz, jr_01c_48da

    jr nz, jr_01c_491c

    ldh [$fff0], a
    nop
    ld [bc], a
    adc h

jr_01c_4911:
    jr nz, jr_01c_493b

    pop bc
    dec l
    ld [bc], a
    ld bc, $0023
    ld b, d
    scf
    and b

jr_01c_491c:
    add hl, sp
    add d
    sub a
    ld a, l
    xor d
    ld d, l
    ld hl, $8200
    jr nz, jr_01c_4951

    add c
    add hl, sp
    add d
    ld a, l
    ld bc, $0023
    add b
    ld a, a
    add b
    ld b, h
    add b
    ld [bc], a
    scf
    xor a
    add b
    ld [hl], a
    ret nz

    ld [de], a
    nop

jr_01c_493b:
    inc d
    ld e, $20
    nop
    nop
    ldh [$ffa0], a
    inc de
    ret nz

    inc de
    ld [bc], a
    inc d
    ret z

    db $10
    and c
    dec de
    db $f4
    ret nz

    add sp, $7f
    ret nz

    rst $20

jr_01c_4951:
    ld [$4fe0], sp
    ldh a, [$ff60]
    add b
    ccf
    cp $80
    dec a
    db $d3
    ld [$40ab], sp
    ld d, a
    jr nz, jr_01c_4911

    ld c, e
    ld de, $a067
    cpl
    rst $38
    add b
    dec a
    ret


    ld [de], a
    add d
    nop
    inc h
    rst $38
    ld [bc], a
    ld a, c
    inc bc
    add h
    inc bc
    ld c, b
    ld bc, $ff30
    ld bc, $01d2
    sbc [hl]
    ld bc, $0164
    ret z

    cp $41
    ld b, b
    jr nz, @+$61

    jr nz, jr_01c_49c8

    jr nz, jr_01c_49e9

    ccf
    or $40
    nop
    jr nz, jr_01c_49d0

    add e
    add hl, sp
    inc b
    ld [bc], a
    inc bc
    db $fc
    rra
    cp $01
    ld [bc], a
    db $fc
    ld [bc], a
    ld b, e
    ld b, d
    ld [hl-], a
    nop
    ld hl, $fb00
    add b
    jr jr_01c_49e7

    ld b, e
    db $10
    rst $28
    jr jr_01c_49d3

    ldh [$ffbf], a
    rra
    cp a
    ld b, b
    and b
    rra
    and b
    ld b, d
    ld b, h
    ld [bc], a
    di
    db $fd
    ld [bc], a
    add d
    add hl, de
    ld bc, $3f03
    ret nc

    ld sp, hl
    jr nc, jr_01c_49e1

    ld a, c
    or b
    ld a, c
    or b
    ld a, a
    ld b, b

jr_01c_49c8:
    nop
    add c
    nop
    add c
    ld [de], a
    rst $30
    sbc a
    inc c

jr_01c_49d0:
    cp $62
    nop

jr_01c_49d3:
    sbc a
    rrca
    rst $38
    rrca
    rst $18
    and b
    nop
    and b
    rra
    rst $38
    and b
    dec hl
    adc b
    ld [hl], a

jr_01c_49e1:
    sbc [hl]
    ld b, e
    ld a, [hl+]
    ld [$0800], sp

jr_01c_49e7:
    ldh a, [$ff09]

jr_01c_49e9:
    ld bc, $1281
    cp $9f
    ld bc, $dd22
    adc d
    ld [hl], l
    add b
    ld c, h
    ret nz

    dec l
    ld [$15e7], a
    xor d
    ld d, l
    ld b, c
    nop
    ld [bc], a
    dec [hl]
    ld h, $00
    ld b, h
    ld a, [hl]
    add c
    ld [de], a
    rst $38
    nop
    adc b
    ld [hl], a
    and d
    ld e, l
    add b
    ld c, [hl]
    ld e, a
    ld a, a
    rst $38
    rst $38
    add b
    ld [hl], a
    ld [bc], a
    inc de
    add hl, sp
    ld bc, $ff13
    add b
    jp nc, $cc80

    ld [hl], h
    add sp, $7f
    ldh [rIE], a
    ldh a, [$ffef]
    rst $38
    ldh [$fff4], a
    add sp, -$0c
    add sp, -$01
    ld [hl], h
    add sp, -$4c
    add sp, -$80
    ld a, a
    or [hl]
    ld c, c
    db $d3
    or [hl]
    ld c, c
    ld h, l
    nop
    ld b, b
    ld d, b
    ld a, [hl+]
    add e
    ld d, b
    add e
    nop
    rst $38
    add h
    nop
    add h
    inc bc
    add b
    inc b
    db $10
    xor a
    cp $c0
    ld d, b
    ldh [rIE], a
    nop
    call nc, Call_000_1528
    ld a, [bc]
    rst $18
    dec d
    add sp, $35
    ld c, b
    inc b
    ld b, b
    ld [hl+], a
    inc b
    inc bc
    rst $38
    rst $38
    nop
    inc d
    ld [$a854], sp
    ld d, h
    ld [$54ff], sp
    ld [$ab17], sp
    rst $38
    inc bc
    rlca
    ei
    rst $28
    rst $38
    inc bc
    rla
    dec bc
    inc hl
    nop
    ld bc, $0178
    rst $10
    add [hl]
    ld bc, $004a
    inc d
    ret nc

    nop
    inc d
    ld h, [hl]
    ld bc, $c8b9
    and a
    inc de
    jr nz, jr_01c_4a9e

    ret nz

    rst $38
    ccf
    add b
    ld e, $fd
    ld a, [$13a0]
    db $fd
    add e
    nop
    rst $38
    cp $80
    ld h, e
    add b
    rst $30
    inc e
    add b

jr_01c_4a9e:
    ld h, e
    db $e3
    inc de
    rst $38
    nop
    inc e
    nop
    xor a
    and b
    ld b, b
    and b
    ld e, a
    and b
    inc de
    ld e, a
    add e
    nop
    ld a, a
    sbc c
    ccf
    and a
    inc de
    and c
    dec l
    rst $38
    cp $85
    inc de
    inc bc
    inc d
    ld sp, hl
    rst $38
    ld [hl], b
    add hl, hl
    cp $45
    cp $8d
    cp $63
    rst $38
    cp $4a
    db $fc
    and [hl]
    db $fc
    ld e, c
    cp $a1
    rst $38
    cp $a3
    nop
    ld a, [hl]
    nop
    ld [hl+], a
    nop
    rst $10
    ei
    nop
    adc b
    and h
    ld h, d
    jr z, @+$01

    push bc
    ld a, a
    adc [hl]
    rst $38
    ld a, a
    ld h, d
    rst $38
    ret


    ld a, a
    and h
    ld a, a
    ld e, c
    rst $38
    rst $38
    and c
    cp $75
    add c
    ld b, h
    add b
    and $ff
    add b
    sbc c
    nop
    adc c
    nop
    rst $30
    add b
    ldh [c], a
    cp $00
    rlca
    push af
    add sp, -$0b
    add sp, -$01
    ldh [$fff1], a
    ld e, a
    xor $74
    ld l, e
    ld a, a
    ld h, b
    sub d
    ld b, l
    inc b
    ld h, c
    ld e, a
    rst $28
    ld de, $44ee
    cp e
    ld b, e
    ld b, d
    ld b, h
    dec hl
    ld b, e
    db $fd
    sub h
    add hl, bc
    ld bc, $c837
    push de
    ld [$08f7], sp
    rst $38
    dec d
    ld [$a854], a
    rst $38
    nop
    ldh a, [$fff4]
    ei
    ldh [rIE], a
    ld b, c
    db $10
    ld d, h
    ld a, [bc]
    ld d, h
    xor b
    inc d
    rst $38
    dec bc
    rst $38
    nop
    rlca
    ld l, a
    inc bc
    sbc a
    dec d
    rst $38
    dec bc
    ld d, $0b
    rst $38
    inc bc
    ld b, a
    adc e
    rla
    ld sp, hl
    inc hl
    ld h, b
    inc a
    sub b
    ld h, [hl]
    ld a, c
    nop
    add [hl]
    nop
    ld c, d
    rst $38
    nop
    inc sp
    nop
    db $dd
    nop
    sub d
    nop
    rst $20
    ei
    ld bc, $0029
    add hl, bc
    ld b, l
    cp $8f
    cp $62
    rst $38
    rst $38
    ld c, c
    rst $38
    and h
    rst $38
    ld e, c
    rst $38
    and b
    cp a
    rst $38
    db $e3
    nop
    inc h
    nop
    ld a, [hl-]
    ld b, b
    ld l, l
    adc h
    db $fc
    nop
    ld [bc], a
    ld h, c
    nop
    xor b
    ld a, a
    add l
    ccf
    adc [hl]
    ld a, a
    rst $38
    and d
    ccf
    ld c, c
    ccf
    ld h, h
    ccf
    sbc c
    ccf
    add e
    and b
    ld a, a
    nop
    ld e, [hl]
    ld [hl+], a
    nop
    add l
    nop
    dec c
    ld c, $0d
    rrca
    sub e
    ret z

    rrca
    ld bc, $010f
    ld [$8312], sp
    rrca
    ld [bc], a
    ld a, [bc]
    inc d
    rra
    rst $28
    cp a
    rst $38
    rrca
    rrca
    rra
    rrca
    rst $08
    ld [hl], l
    dec d
    ld c, c
    xor $00
    ld d, $62
    nop
    sub a
    ld b, $16
    add sp, $3f
    dec h
    rst $18
    rra
    ld l, $1f
    ldh [c], a
    ccf
    ld bc, $d916
    ld a, a
    rst $08
    and b
    ld a, a
    sbc a
    rrca
    ld hl, $6000
    ld [hl], a
    nop
    sub c
    ld [$0020], sp
    add h
    ld d, [hl]
    ld [hl+], a
    ld e, e
    ld de, $7b80
    add b
    ld e, d
    db $10
    ld e, c
    add hl, bc
    ld bc, $000b
    cp a
    or d
    ld a, h
    cp b
    dec b
    ld [bc], a
    ld d, c
    ld b, l
    or c
    ld b, l
    dec b

jr_01c_4bf3:
    inc bc
    nop
    ld b, $10
    inc b
    inc bc
    nop
    ld b, $ff
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, a
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    ld bc, $e0ff
    nop
    jr jr_01c_4bf3

    inc b
    ld hl, sp+$04
    ld hl, sp-$01
    add d
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    rst $38
    inc de
    inc c
    inc a
    inc de
    ccf
    nop
    cp $f0
    ei
    cp $b4
    jr nz, jr_01c_4c37

jr_01c_4c37:
    or b
    ld sp, hl
    and $f6
    ld [$1eff], sp
    db $e4
    cp $00
    ld a, a
    ld [hl-], a
    ld a, d
    dec [hl]
    rst $38
    jr c, jr_01c_4c4f

    dec c
    ld [bc], a
    rra
    nop
    ccf
    nop

jr_01c_4c4e:
    rst $38

jr_01c_4c4f:
    ld a, $00
    inc e
    nop
    ld a, a
    and [hl]
    cpl
    sub $7f
    ld c, $f0
    ret c

    jr nz, jr_01c_4cd9

    nop
    ld a, [hl]
    ld [bc], a

jr_01c_4c60:
    ld bc, $057e
    inc b
    ccf
    inc bc
    ld [hl], e
    inc a
    ld a, h
    inc sp
    rrca
    inc b
    rst $18
    rrca
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0402], sp
    rra
    nop
    db $fd
    ld c, $e0
    ld [$a078], sp
    jr z, jr_01c_4c4e

    jr jr_01c_4c60

    rst $38
    db $e4
    jr jr_01c_4ce2

    jr nz, jr_01c_4d04

    nop
    inc a
    nop
    ld sp, hl

jr_01c_4c8a:
    jr jr_01c_4c92

    inc b
    dec c
    ld [$e0fe], sp
    rst $38

jr_01c_4c92:
    ld b, $1f
    db $fd
    and $03
    inc b
    ld c, $01
    inc de
    inc c
    dec a
    ld [bc], a
    rst $18
    ccf
    nop
    ld e, $00
    inc c
    ld [bc], a
    inc b
    ld [$7ff0], sp
    ret z

    jr nc, jr_01c_4d28

    nop
    ld a, h
    nop
    jr c, jr_01c_4cd5

    ld c, $ff
    rrca
    nop
    db $10
    rrca
    jr nz, jr_01c_4cd8

jr_01c_4cb9:
    ld b, e
    inc a

jr_01c_4cbb:
    xor a
    ld b, a
    jr c, jr_01c_4d0e

    inc sp
    ld hl, $ff0f
    ld sp, $ff00
    ld hl, sp+$30
    nop
    ld d, c
    nop
    ld [hl+], a
    rrca
    db $10
    ldh [$ff08], a
    ldh a, [$ffc4]
    ld a, a
    jr c, jr_01c_4cb9

jr_01c_4cd5:
    jr jr_01c_4cbb

    sbc b

jr_01c_4cd8:
    ld c, a

jr_01c_4cd9:
    inc sp
    dec hl
    nop
    call Call_000_1cff
    nop
    db $e4
    sbc b

jr_01c_4ce2:
    dec hl
    nop
    ld bc, $4703
    jr c, jr_01c_4d68

    ld h, e
    inc e
    jr nc, jr_01c_4cfc

    jr jr_01c_4cf6

    rrca
    pop bc
    dec b
    db $ec
    ld de, $2603

jr_01c_4cf6:
    ld b, $00
    nop
    ld bc, $c403

jr_01c_4cfc:
    jr c, jr_01c_4c8a

    cp a
    ld [hl], b
    jr jr_01c_4ce2

    jr nc, @-$3e

jr_01c_4d04:
    ldh [$ff03], a
    ld [bc], a
    dec bc
    cp e
    rst $38
    ld a, e
    jr nz, jr_01c_4d0d

jr_01c_4d0d:
    ld a, [bc]

jr_01c_4d0e:
    rst $38
    ld a, d
    jr nz, jr_01c_4d12

jr_01c_4d12:
    ld a, e
    xor [hl]
    inc b
    ld b, $35
    rst $38
    push de
    ld [hl+], a
    nop
    ld a, [hl-]
    inc b
    rlca
    ld h, [hl]
    rst $38
    rst $38
    ld e, d
    rst $38
    ld b, d
    rst $38
    ld e, [hl]
    rst $38
    ldh [c], a

jr_01c_4d28:
    cp $00
    ld [$fff9], sp
    or $ff
    or a
    rst $38
    ld a, c
    xor e
    rst $38
    cp $80
    nop
    ld sp, hl
    nop
    add hl, bc
    cp a
    jr nz, jr_01c_4d3d

jr_01c_4d3d:
    xor [hl]
    xor a
    rst $38
    sub l
    rst $38
    or l
    jr nz, jr_01c_4d45

jr_01c_4d45:
    or [hl]
    ld [bc], a
    ld a, [bc]
    db $eb
    rst $38
    rst $38
    ld h, l
    rst $38
    xor l
    rst $38
    and l
    rst $38
    xor e
    db $eb
    rst $38
    ld l, a
    nop
    dec bc
    rst $28
    jr nz, jr_01c_4d5a

jr_01c_4d5a:
    db $eb
    rst $38
    ld l, e
    xor d
    ld [hl+], a
    nop
    sbc h
    ld [bc], a
    inc c
    rst $18
    ldh [$ff03], a
    ld d, a
    ld [hl+], a

jr_01c_4d68:
    nop
    reti


    cp $00
    dec c
    db $fc
    rst $38
    db $fd
    rst $38
    sbc l
    rst $38
    ld l, h
    cp a
    rst $38
    dec c
    rst $38
    ld a, l
    rst $38
    adc h
    nop
    ld c, $7f
    ld [$0520], a
    or e
    ret nz

    nop
    or c
    ld b, b
    inc b
    ld [hl], c
    cp $f9
    cp [hl]
    ld [hl+], a
    nop
    ld e, c
    cp $39
    cp $79
    ld hl, $4000
    xor c
    add b
    dec hl
    nop
    nop
    ld de, $c09b
    dec b
    ld a, d
    nop
    add hl, bc
    ld a, e
    ld c, d
    ld b, b
    ld b, $9b
    inc b
    ld [de], a
    jp c, Jump_000_0b00

    ld hl, $6600
    nop
    inc de
    ld a, l
    cp $a0
    ld a, [bc]
    or d
    rst $38
    ld l, [hl]
    rst $38

jr_01c_4db8:
    xor $20
    nop
    sub l
    ldh a, [c]
    inc b
    dec b
    cp c
    jr nz, jr_01c_4dc7

    reti


    ld hl, $0000
    dec d

jr_01c_4dc7:
    rra
    cp [hl]
    ld h, b
    ld a, [bc]
    ld l, h
    rst $38
    dec de
    rst $38
    ld l, b
    ld b, b
    ld a, [bc]
    ld l, h
    cp $04
    ld d, $e2
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    ei
    cp e
    rst $38
    rst $00
    ld [bc], a
    add hl, bc
    ld a, a
    rst $38
    inc sp
    ret nz

    add hl, bc
    ld [hl], c
    ld [hl], e
    rst $38
    ld l, l
    ld b, b
    add hl, bc
    inc de
    jr jr_01c_4e5a

    rst $38
    ld l, c
    ld [hl+], a
    dec c
    ld a, [hl+]
    dec b
    rlca
    sbc b
    ld b, b
    rrca
    adc e
    ld b, b
    ld c, $8b
    ld h, b

Call_01c_4dff:
    ld de, $0681
    add hl, sp
    add $00
    rlca
    ld hl, $7600
    sub b
    ld h, b
    dec hl
    nop
    nop
    inc e
    dec d
    sbc a
    ld h, b
    ld de, $607c
    ld c, $7c
    ld bc, $2f11
    jr nc, @+$03

    jr nc, @+$01

    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $fb
    inc hl
    dec e
    dec b
    jr nc, jr_01c_4db8

    ld hl, sp+$56
    db $fc
    xor [hl]
    rst $38
    call c, Call_000_2cf2
    daa
    dec de
    ccf
    inc b
    ccf
    rst $38
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc
    inc b
    inc c
    rst $38
    inc bc
    rra
    ld [$f4fa], sp
    cp $90
    cp $ff
    or h
    db $fc
    sub b
    db $fc
    ldh [$ffea], a
    inc d
    inc e
    rst $38
    ldh [$fffc], a
    ld [$081f], sp

jr_01c_4e5a:
    ccf
    jr jr_01c_4e9b

    rst $38
    ld de, $071f
    rlca
    nop
    dec bc
    inc b
    rla
    rst $38

jr_01c_4e67:
    ld [$001e], sp
    db $fc
    adc b
    ld a, [hl]
    adc h
    ld a, $ff
    call nz, Call_01c_70fc
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    db $db
    jr nc, jr_01c_4eb7

    db $ec
    dec b
    daa
    dec de
    db $eb
    dec b
    ld a, [$f6f4]
    db $eb
    dec b
    ccf
    ld de, $05e3
    db $f4
    add sp, -$04
    nop
    rst $38
    ld e, $ec
    cp $0c
    db $fc
    add b
    ld e, $01
    rst $38
    ld c, $07
    dec b

jr_01c_4e9b:
    inc bc
    rrca
    nop

jr_01c_4e9e:
    inc de
    inc c
    cp $03
    ld [hl-], a
    ld [hl], b
    add b
    jr nc, jr_01c_4e67

    ldh a, [$ff60]
    ldh [$ffcb], a
    nop
    ldh a, [rP1]
    ld b, $30
    ldh [$ff3b], a
    ld [$0409], a
    ccf
    db $dd

jr_01c_4eb7:
    jr jr_01c_4e9e

    add hl, bc
    db $e4
    jr jr_01c_4ed5

    ldh [$ff09], a
    cp $c4
    rst $38
    ccf
    jr jr_01c_4ee3

jr_01c_4ec5:
    ld bc, $0307
    inc bc
    nop
    push af
    rlca
    ld h, b
    jr nc, jr_01c_4ed5

    ldh [$ff3e], a
    inc a
    ret nz

    jr c, jr_01c_4ec5

jr_01c_4ed5:
    ccf
    ret nc

    ld h, b
    ld hl, sp+$00
    db $e4
    jr @+$05

    ld [hl-], a
    ld [bc], a
    ld l, $ff
    db $fd
    rst $38

jr_01c_4ee3:
    call nc, Call_01c_4dff
    rst $38
    ld e, h
    rst $38
    jp hl


    ld e, l
    jr nz, jr_01c_4eed

jr_01c_4eed:
    ld de, $7f2f
    nop
    ld hl, $ffad
    and c
    ld a, [$24e0]
    di
    ldh [c], a
    ld bc, $fffd
    ld e, b
    rst $38
    dec l
    ldh a, [c]
    ldh [rNR23], a
    ld l, l
    ld h, b
    dec e
    inc de
    ld sp, $ffcd
    or h
    rst $38
    ld a, a
    add l
    rst $38
    cp l
    rst $38
    call $e6f9
    ld [hl+], a
    nop
    push de
    ld h, [hl]
    add h
    nop
    and $00
    inc sp
    rlca
    nop
    daa
    call c, $95ff
    db $db
    ld [hl+], a
    nop
    call c, $2104
    and $04
    ld [hl+], a
    ld bc, $e602
    adc d
    ldh [rNR43], a
    sbc $20
    ld bc, $60fa
    inc hl
    ld bc, $3103
    ld [hl], $b9
    xor a
    rst $38
    ld d, [hl]
    rst $38
    sub $20
    nop
    reti


    ldh [c], a
    inc hl
    xor [hl]
    dec hl
    rst $38
    sub [hl]
    and b
    dec l
    sub [hl]
    ld h, b
    ld l, $be
    inc b
    inc e
    pop bc
    ld [hl+], a
    add hl, sp
    dec bc
    ld b, d
    dec l
    inc bc
    dec l
    ldh a, [rIE]
    ld d, l
    inc h
    nop
    dec b
    ld b, $17
    ld a, d
    rst $38
    ld h, d
    ld b, b
    inc sp
    ld h, d
    rrca
    ld b, $0f
    ld b, $0c
    ld b, $55
    rrca
    jr nz, @+$32

    ld a, e
    nop
    add hl, hl
    ld a, h
    add b
    add hl, sp
    dec bc

jr_01c_4f7a:
    nop
    ccf
    db $dd
    ei
    ret nz

    dec bc
    ld [hl], c
    rst $38
    ld e, e
    jr nz, jr_01c_4f91

    ld e, e
    rst $38
    db $fd
    ld e, l
    ld hl, $fe52
    nop
    ld bc, $00fe
    rst $38

jr_01c_4f91:
    cp a
    db $fc
    inc bc
    cp $01
    cp $f9
    ld h, l
    ld d, e
    add b
    ld sp, hl
    nop
    and e
    ld sp, $3302
    ld bc, $03fc
    nop
    rst $38
    daa
    ld bc, $fefe
    ldh [rHDMA4], a
    dec b
    inc sp
    add b
    jr z, jr_01c_5007

    ld [$3c47], sp
    ld sp, $c202
    inc bc
    jr nz, jr_01c_4f7a

    db $10
    ldh [rSC], a
    ld a, [hl+]
    pop hl
    ld [hl-], a
    cp h
    ld [$0343], sp
    inc l
    db $10
    ldh [rNR41], a
    ret nz

    ld b, a
    inc b
    ld hl, sp-$01
    nop
    inc b
    ld hl, sp+$02
    db $fc
    pop af
    ld c, $f9
    db $fd
    ld b, $e4
    ld d, $06
    pop af
    ld c, $02
    db $fc
    inc b
    inc bc
    ld hl, sp-$08
    rst $18
    inc l
    rra
    nop
    rra
    nop
    ld a, [de]
    nop
    nop
    inc b
    ei
    ld bc, $1202
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    or l
    ld [$00c3], sp
    add hl, bc
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [de], a
    nop
    inc c
    ld e, a
    dec c
    ld c, $0f
    db $10

jr_01c_5007:
    ld de, $00c3
    ld [de], a
    add hl, bc
    inc b
    ei
    inc de
    inc d
    ld [de], a
    nop
    dec d
    ld d, $17
    jr jr_01c_5030

    rst $38
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    or $09
    ld b, $22
    inc hl
    ld de, $2400
    dec h
    ld h, $27
    rst $38
    jr z, jr_01c_5057

    ld a, [hl+]
    dec hl

jr_01c_5030:
    inc l
    dec l
    ld l, $2f
    ei
    jr nc, jr_01c_5068

    add hl, bc
    ld [$3332], sp
    inc [hl]
    dec [hl]
    ld [hl], $ff
    scf
    jr c, jr_01c_507b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $7f
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    add hl, bc
    ld a, [bc]
    rst $38
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_01c_5057:
    ld c, e
    ld c, h
    ld c, l
    rst $38
    ld c, l
    ld l, d
    ld l, e
    inc d
    inc d
    ld c, [hl]
    ld c, a
    ld d, b
    rst $28
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_01c_5068:
    add hl, bc
    inc c
    ld d, l
    ld d, [hl]
    ld d, a
    cp a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc d
    inc d
    ld bc, $5c02
    cp a
    ld e, l
    ld e, [hl]
    ld e, a

jr_01c_507b:
    ld h, b
    ld h, c
    ld h, d
    add hl, bc
    ld c, $63
    cp a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    inc bc
    ld [bc], a
    ld l, h
    cp a
    ld l, l

jr_01c_508d:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add hl, bc
    db $10
    rst $30
    rst $18
    ld a, e
    ld a, b
    ld [hl], h
    ld [hl], l
    ld a, e
    stop
    halt
    ld [hl], a
    cp [hl]
    ld h, c
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    add hl, bc
    ld [de], a
    add d
    ld [hl], $12
    nop
    ld a, [hl]
    ld a, a
    add c
    nop
    add b
    add c
    db $e3
    nop
    add hl, bc
    inc d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    cp $71
    db $10
    adc e
    adc h
    adc l
    adc [hl]
    adc [hl]
    adc a
    sub b
    db $fd
    sub c
    add hl, bc
    ld d, $92
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    rst $38
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp a
    and b
    and c
    and d
    and e
    and h
    and l
    add hl, bc
    jr jr_01c_508d

    rst $38
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    rst $38
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    rst $30
    or a
    cp b
    cp c
    add hl, bc
    ld a, [de]
    cp d
    cp e
    cp h
    cp l
    rst $38
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    jp nz, $c5ff

    add $c7
    ret z

    ret


    jp z, $cccb

    cp $09
    inc e
    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dfdb

    call c, $dedd
    rst $18
    ldh [$ff0c], a
    ld a, [de]
    pop hl
    ldh [c], a
    rst $38
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb7f], a
    inc d
    db $ec
    db $ed
    xor $14
    rst $28
    dec c
    ld [bc], a
    rst $38
    ldh a, [$fff5]
    pop af
    ldh a, [c]
    push af
    push af
    di
    db $f4
    cp a
    push af
    or $f5
    push af
    ld hl, sp-$07
    dec bc
    ld [bc], a
    ld a, [$fbef]
    ei
    db $fc
    db $fd
    add hl, de
    nop
    cp $fb
    rst $38
    nop
    ld l, a
    inc h
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
    rla
    nop
    nop
    ld [$1dfa], sp
    nop
    rst $38
    inc e
    nop
    ld sp, hl
    rst $30
    db $fc
    ei
    cp $f7
    db $fd
    rst $38
    cp $86
    ld bc, $ff5f
    xor a
    ccf
    rst $38
    rst $30
    ccf
    db $db
    adc e
    ld a, l
    push bc
    cp [hl]
    ld [$d5ff], a
    push af
    ld [$7a95], a
    push af
    ld e, d
    pop hl
    rst $38
    ld e, [hl]
    add a
    ld a, h
    adc a
    ld [hl], h
    db $eb
    inc [hl]
    db $e3
    rst $38
    ld a, $83
    ld a, [hl]
    rst $38
    ld a, [$f5fe]
    db $fc
    rst $38
    db $eb
    ldh a, [c]
    db $dd
    pop hl
    cp [hl]
    adc e
    ld [hl], l
    ld d, a
    rst $38
    xor e
    adc a
    ld [hl], a
    ld e, a
    xor a
    cp a
    ld e, a
    ld a, a
    rst $30
    cp a
    rst $38
    ld a, a
    add l
    dec b
    push af
    push af
    ret c

    ret c

    rst $38
    ldh a, [$fff0]
    xor b
    xor b
    ldh [$ffe0], a
    ld b, b
    ld b, b
    rst $38
    and b
    and b
    nop
    nop
    ei
    ei
    or $f6
    rst $38
    db $fd
    db $fd
    ld a, [$fdfa]
    db $fd
    ld [$ffea], a
    cp h
    cp h
    ld [$f8ea], a
    rst $30
    db $fd
    ld a, [$09de]
    rlca
    rra
    rst $28
    ccf
    rst $18
    add hl, bc
    inc b
    xor e
    xor e
    rst $38
    rla
    rla
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    cp a
    dec b
    dec b
    nop
    nop
    ld bc, $0001
    dec bc
    add b
    ld a, a
    ret nz

    add b
    jp z, $c09f

    add b
    add $40
    nop
    di
    jp hl


    cp a
    nop
    inc c
    ld [hl], b
    ld bc, $fc29
    ld bc, rJOYP
    ld c, c
    db $fc
    nop
    ld bc, $fd94
    call c, $bfdc
    or h
    or h
    jp c, Jump_01c_74da

    ld [hl], h
    ld hl, $d407
    rst $38
    call nc, $b0b0
    or a
    or a
    ld e, a
    ld e, a
    cpl
    rst $38
    cpl
    ld e, e
    ld e, e
    ccf
    ccf
    add hl, hl
    add hl, hl
    sub a
    rst $38
    sub a
    dec a
    dec a
    ret nz

    add b
    pop af
    cp a
    add b
    rst $38
    ret nz

    adc c
    rst $18
    ret nz

    add b
    jp nz, $809f

    cp a
    ret nz

    db $e4
    cp a
    ld bc, $9900
    ret nz

    inc bc
    ld de, $c0fa
    inc bc
    ld b, c
    ld b, b
    inc b
    nop
    ld a, l
    xor b
    xor b
    ld d, b
    rst $38
    ld d, b
    ret z

    ret z

    and b
    and b
    ret nc

    ret nc

    add b
    db $fd
    add b
    ld hl, $150b
    dec d
    cpl
    cpl
    dec e
    dec e
    rst $38
    rla
    rla
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    rla
    rla
    rst $38
    dec c
    dec c
    add b
    ret nz

    push hl
    cp a
    ret nz

    add b
    rst $30
    call z, $859f
    jr nz, jr_01c_52c3

    rst $38
    add b
    rst $38
    rst $38

jr_01c_52c3:
    rst $38
    ld hl, $316c
    ld a, h
    ld [$117d], sp
    ld a, h
    rst $18
    ld bc, $007c
    ld bc, $e0ff
    inc d
    ld b, b
    ld b, b
    db $fc
    add e
    inc bc
    pop hl
    ld c, $20
    jr nz, jr_01c_532e

    ld d, b
    ld a, [bc]
    ld a, [bc]
    rst $38
    dec d
    dec d
    rrca
    rrca
    ld b, $06
    dec de
    dec de
    cp a
    rlca
    rlca
    ld d, $16
    dec c
    dec c
    inc c
    rla
    ld bc, $a0ff
    and b
    ld [hl], b
    ld [hl], b
    and b
    and b
    adc b
    adc b
    rst $38
    jr nc, jr_01c_5330

    sub h
    sub h
    jr z, jr_01c_532c

    ld d, h
    ld d, h
    rst $38
    dec bc
    dec bc
    ld d, $16
    dec bc
    dec bc
    rla
    rla
    rst $38
    dec b
    dec b
    dec hl
    dec hl
    ld e, $1e
    or [hl]
    or [hl]
    call c, Call_000_18a0
    add b
    dec b
    ld bc, $00fe
    ret nc

    dec b
    inc bc
    db $fc
    ei
    rst $38
    inc bc
    ld b, b
    ld b, $cf
    rst $38
    scf

jr_01c_532c:
    db $fd
    dec bc

jr_01c_532e:
    rst $38
    inc a

jr_01c_5330:
    bit 7, a
    sub e
    or $69
    rst $20
    sbc c
    rst $38
    rst $38
    nop
    ld h, [hl]
    sbc a
    ld h, [hl]
    ld sp, hl
    and $1f
    rst $38
    jr @+$01

    adc $f1
    adc $3f
    reti


    rst $20
    rst $38
    reti


    ld h, $23
    rst $18
    ld c, $ff
    ld d, c
    rst $28
    ld a, a
    adc [hl]
    rst $38
    jr nc, @+$01

    ret


    cp [hl]
    rst $00
    jr nc, jr_01c_5365

    ld a, a
    add [hl]
    rst $38
    ld [$c6ff], sp
    rst $38
    add hl, de
    ret nc

jr_01c_5365:
    ld a, [bc]
    db $fd
    inc a
    ldh a, [$ff03]
    ld a, l
    db $fd
    ldh [$ffe0], a
    call c, $ffdc
    ld [hl], b
    ldh a, [$ffb9]
    cp c
    ld c, [hl]
    ld c, [hl]
    cp b
    cp b
    rst $28
    ldh [c], a
    ldh [c], a
    ld d, $17
    ld sp, $0921
    add hl, bc
    nop
    rst $38
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    ld c, $0f
    dec c
    rst $38
    ldh a, [c]
    ld a, c
    ld a, c
    inc sp
    inc a
    daa
    rst $20
    ld hl, $3fff
    xor $ef
    scf
    ccf
    ccf
    cp $ff
    cp $41
    rlca
    rst $38
    rst $38
    db $fc
    db $fc
    inc bc
    db $10
    rst $28
    rst $38
    ldh a, [c]
    rst $28
    pop af
    rst $28
    adc e
    ld [hl], h
    reti


    and $ff
    jp hl


    sub [hl]
    add l
    ld a, d
    add l
    ld a, d
    add h
    ld a, e
    ld l, a
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, b
    rrca
    rst $28
    jr @+$22

    nop
    ld h, [hl]
    ret nz

    rrca
    ld a, [hl]
    add c
    jr nz, jr_01c_53cc

jr_01c_53cc:
    ld [$fe01], sp
    add c
    jr nz, jr_01c_53d2

jr_01c_53d2:
    rst $38
    ld d, b
    xor a
    rst $28
    rst $38
    ld a, [bc]
    rst $38
    dec e
    rst $28
    rst $38
    db $fd
    ld [bc], a
    rst $38
    cp $8b
    cp $85
    cp $ff
    adc e
    rst $38
    nop
    db $10
    or [hl]
    or [hl]
    ld e, l
    db $dd
    rst $38
    and l
    ld a, a
    ldh [$ffe0], a
    xor e
    ei
    call nc, $effc
    ld [hl], h
    ld [hl], h
    nop
    nop
    and c
    ld d, $d0
    ret nc

    nop
    rst $38
    nop
    ld b, b
    ld b, b
    cp d
    cp d
    jr z, jr_01c_5447

    nop
    rst $30
    nop
    dec b
    dec b
    ldh [c], a
    ld e, $01
    dec bc
    dec bc
    inc b
    rst $38
    dec b
    dec bc
    db $f4
    ld de, $5811
    ld a, a
    xor b
    rst $38
    rst $38
    sub a
    add sp, $0f
    ld c, $21
    ld a, [hl]
    pop de
    cp l
    cp $41
    ld [$f7ea], sp
    db $ed
    rst $30
    ld b, l
    nop
    ld b, h
    or a
    cp e
    ld b, d
    cp l
    daa
    nop
    ld b, e
    cp h
    ld b, b
    jr jr_01c_54aa

    pop hl
    sbc b
    jr nz, jr_01c_543f

jr_01c_543f:
    inc bc
    add hl, bc
    jr nz, jr_01c_545c

    ld a, [bc]
    add hl, bc
    rst $38
    nop

jr_01c_5447:
    jp nc, $2fff

    ret nz

    ret nc

    or l
    push af
    ld c, d
    ld a, [$cff1]
    rrca
    db $fc
    db $fd
    add d
    ret nz

    inc hl
    add e
    rlca
    or b
    or b

jr_01c_545c:
    rst $18
    ld a, d
    ld a, [$0101]
    halt
    ldh [$ff0b], a
    inc l
    cpl
    rst $30
    nop
    nop
    rla
    stop
    xor c
    cp [hl]
    nop
    ld bc, $2bff
    dec hl
    rst $38
    nop
    scf
    ret z

    rlca
    rla
    rst $38
    ld c, b
    rst $38
    xor b
    rst $38
    ld a, a
    add b
    ccf
    ld a, $ff
    ld b, c
    ld a, [hl]
    sub c
    ld a, [hl]
    db $eb
    or $ee
    push af
    rst $38
    ld c, a
    ldh a, [$ffa9]
    rst $30
    ld e, a
    rst $28
    cp a
    ret nz

    rst $38
    ld a, a
    cp a
    and $7f
    cp $01
    db $db
    db $fd
    rst $38
    rst $38
    inc bc
    push af
    ld sp, hl
    cp d
    ldh a, [c]
    db $fd
    dec b
    ld a, a
    ret nc

    ldh [rSVBK], a

jr_01c_54aa:
    ldh [rP1], a
    rst $38
    ld d, l
    jr nc, @+$37

    cp a
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    pop de
    ld [hl], $7f
    rst $38
    add b
    ld c, [hl]
    cp a
    rst $38
    ret nz

    ld h, a
    ld e, a

jr_01c_54c2:
    cp l
    ld a, a
    xor a
    ld e, a
    ld b, b
    rrca
    rlca
    ld [$4007], sp
    ld [hl+], a
    rst $38
    xor a
    ld hl, sp+$0f
    jr c, jr_01c_54c2

    rst $38
    ldh a, [rIE]
    cp a
    ld [bc], a
    rst $08
    db $fc
    ld sp, hl
    cp $3f
    nop
    inc l
    db $fc
    cp a
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    sbc a
    and b
    inc l
    rst $08
    cp a
    cp $e0
    ret nz

    ldh [rP1], a
    ret nz

    jr nz, @+$30

    add b
    di
    nop
    add b
    rst $18
    dec sp
    ldh [$ff3b], a
    rlca
    inc bc
    rlca
    nop
    ccf
    inc bc
    ld bc, $0103
    ld bc, $e000
    ld a, [hl+]
    ldh [$ff3c], a
    adc $61
    inc bc
    cp $ff
    cpl
    ld [hl], b

jr_01c_5511:
    ld a, [de]
    ld bc, $fc04
    ld a, a
    rst $38
    cp $fc
    add $fc
    ld a, h
    ld hl, sp-$0c
    ld hl, sp-$01
    ld hl, sp+$00
    ld hl, sp-$10
    jr nc, @-$1e

    ldh a, [$ffe0]
    cp $1d
    ccf
    ld c, a
    ccf
    ld a, a
    ccf
    inc a
    rra
    daa
    rst $38
    rra
    rra
    nop
    rra

jr_01c_5537:
    rrca
    add hl, bc
    rlca
    rrca
    rst $38
    rlca
    and b
    ret nz

    ldh [$ffc0], a
    ld b, b
    add b
    rst $38
    rlca
    cp a
    add b
    ld a, a
    inc hl

jr_01c_5549:
    nop
    ld h, l
    ld b, c
    ld bc, $4127
    daa
    nop
    rlca
    ld a, a
    inc bc
    ld [bc], a
    ld bc, $fdff
    ld bc, $23fe
    nop
    rst $38
    cp a
    ld b, b
    ret nz

    nop
    cp a
    ccf
    or b
    ccf
    rlca
    xor a
    jr nc, jr_01c_5511

    ld [hl+], a
    nop
    ldh [$ff37], a
    ldh [c], a
    ld [bc], a
    add c
    nop
    pop de
    ld b, l
    rst $38
    db $fd
    ld [bc], a
    inc bc
    nop
    db $fd
    cp $0d
    cp $e7
    push af
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_01c_5537

    rra
    jr nc, jr_01c_5549

    ccf
    ret nz

    ccf
    ld h, l
    ld [bc], a
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    cp a
    push af
    ld b, $0d
    ld c, $fd
    cp $00
    ld l, $00
    ldh [$ff63], a
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop
    ldh [rNR43], a
    nop
    ldh [rP1], a
    rla
    ld hl, sp+$00
    cp $40
    nop
    ldh [rLCDC], a
    ld [de], a
    sub [hl]
    ld a, [bc]
    inc d
    dec bc
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
    dec d
    nop
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
    and l
    nop
    cp $00
    cp $ff
    ld a, h
    ld a, h
    jr c, jr_01c_5753

    jr c, @+$3a

    db $10
    jr c, @+$01

    db $10
    stop
    stop
    ld bc, $0300
    rst $38
    nop
    rlca
    ld [bc], a
    rrca
    ld b, $1f
    ld c, $3f
    rst $38
    ld e, $7f
    ld a, $ff
    ld a, [hl]
    add b
    nop
    ret nz

    rst $38
    nop

jr_01c_56f8:
    ldh [rLCDC], a
    ldh a, [$ff60]
    ld hl, sp+$70
    db $fc
    rst $38
    ld a, b
    cp $7c
    rst $38
    ld a, [hl]
    nop
    nop
    ld a, h
    db $eb
    nop
    add $26
    nop
    ld a, h
    db $10
    dec b
    jr jr_01c_5712

jr_01c_5712:
    jr c, jr_01c_56f8

    ld b, b
    nop
    inc hl
    nop
    inc a
    db $10
    ld b, $03
    ld [bc], a
    inc e
    nop
    ld [hl], b
    xor d
    and b
    inc bc
    cp $08
    ld bc, $0406
    inc bc
    inc c
    ret nz

    ld bc, $af3c
    nop
    ld l, h
    nop
    call z, $07c0
    inc c
    ld [hl+], a
    ld [$42c0], sp
    ld b, b
    ld b, $fc
    ld b, $02
    ld bc, $0106
    ld bc, $0605
    cp $02
    rlca
    ld b, c
    inc c
    add b
    inc bc
    ld h, c
    ld b, $05
    ld [$0065], sp
    dec b
    add hl, bc

jr_01c_5753:
    ld a, [hl]
    ld b, $06
    ld e, a
    ld [bc], a
    nop
    ld c, $00
    ld a, $80
    dec c
    ld a, $80
    nop
    ld a, l
    ld [bc], a
    db $10
    rrca
    add b
    nop
    ldh [rP1], a
    ld hl, sp-$80
    ld c, $e5
    ld hl, sp-$80
    nop
    add b
    rra
    db $10
    inc a
    nop
    ld b, c
    ld a, $21
    rst $38
    ld e, $11
    ld c, $09
    ld b, $05
    ld [bc], a
    inc bc
    cp $c0
    stop
    nop
    add d
    ld a, h
    add h
    ld a, b
    adc b
    ccf
    ld [hl], b
    sub b
    ld h, b
    and b
    ld b, b
    ret nz

    rst $28
    inc bc
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
    ld a, [de]
    nop
    ld b, b
    ld [bc], a
    cp $13

jr_01c_57b2:
    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_01c_57d8

    jr nz, jr_01c_57b2

    rra
    inc d
    dec bc
    dec h
    ld bc, $0080
    ld b, b
    add b
    rst $38
    ld h, b
    add b
    sbc b
    ld h, b
    dec c
    ld [bc], a
    ld [de], a
    dec c
    rst $38
    inc h
    rra
    ld l, $1f
    ld h, $1f
    db $10
    rrca
    rst $38
    inc c

jr_01c_57d8:
    inc bc
    inc bc
    nop
    call nz, $a238
    ld e, h
    rst $38
    ld [hl+], a
    call c, $fc02
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$09
    ld [$f0f0], sp
    ld b, $04
    rra
    rrca
    ccf
    rra
    rst $30
    ccf
    rra
    rra
    ld [$c004], sp
    add b
    ldh [$ff80], a
    ccf
    ld hl, sp+$60
    rrca
    ld [bc], a
    rra
    dec c
    and c
    ld bc, $01c0
    ei
    rrca
    rrca
    nop
    inc b
    db $fc

jr_01c_580d:
    jr c, jr_01c_580d

    ld e, h
    cp $ff
    call c, $fcfe
    cp $fc
    db $fc
    ld hl, sp-$08
    nop
    ld [$0f04], sp
    ld [$080f], sp
    rrca
    ld [$040f], sp
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    ldh a, [rIF]
    inc b
    rrca
    inc b
    rrca
    inc b
    add hl, bc
    db $10
    ld a, [de]
    dec b
    dec [hl]
    ld a, [bc]
    rst $28
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    add hl, bc
    inc b
    ldh [rP1], a
    ret c

    rst $38
    jr nz, jr_01c_5854

    nop
    rla
    ld [$152a], sp
    ld sp, $0eff
    jr z, jr_01c_5866

    dec d
    ld a, [bc]
    ld c, $01
    inc bc

jr_01c_5854:
    rst $38
    nop
    db $ec
    db $10
    or $08
    xor d
    ld d, h
    ld d, [hl]
    ld a, a
    xor b
    xor d
    ld d, h
    ld d, h
    xor b
    xor b
    ld d, b
    rlca

jr_01c_5866:
    inc d
    ld a, a
    dec d
    rrca
    ld a, [hl+]
    rra
    dec [hl]
    rra
    ld e, $0a
    inc d
    ld [hl], a
    ld h, b
    add b
    cp b
    nop
    ld [$0d1a], sp
    dec [hl]
    nop
    ld [$37df], sp
    rra
    ld a, [de]
    rrca
    dec c
    nop
    ld [$38d4], sp
    rst $38
    xor d
    ld e, h
    halt
    call c, $fcaa
    ld d, [hl]
    db $fc
    rlca
    xor h
    ld hl, sp+$58
    ld [$0f18], sp

jr_01c_5896:
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    nop
    rrca
    inc b
    rrca
    inc b
    add hl, bc
    inc b
    ld b, b
    ld bc, $00ff
    nop
    rlca
    nop
    rrca
    inc bc
    inc c
    inc bc
    rst $38
    dec bc
    inc b
    rrca
    ld b, $0f
    inc b
    rrca
    ld [bc], a
    rst $38
    jr z, jr_01c_58cb

    ld hl, sp+$10
    ld hl, sp-$60
    ld e, b
    and b
    rst $38
    add sp, $10
    jr z, jr_01c_5896

    add sp, $10
    ret c

    and b
    rst $28

jr_01c_58cb:
    rrca
    dec b
    dec c
    ld b, $41
    nop
    ld b, $03
    inc bc
    ld a, e
    nop
    dec b
    ld b, b
    nop
    xor b
    ld d, b

jr_01c_58db:
    ld c, b
    or b
    ld b, c
    nop
    ld a, a
    sub b
    ld h, b
    ld h, b
    add b
    ret nc

    ldh [$ffe0], a
    add hl, bc
    inc b
    rst $18
    rlca
    inc c
    rlca
    dec c
    ld b, $07
    inc b
    ld l, b
    sub b
    ld a, a
    xor b
    ld d, b
    ret z

    jr nc, jr_01c_5908

    dec b
    ld c, $20
    inc b
    db $fd
    inc b
    pop hl
    inc bc
    ld [bc], a
    dec bc
    rlca
    rlca
    nop
    jr z, @+$01

jr_01c_5908:
    ret nc

    jr z, jr_01c_58db

    ret z

    jr nc, jr_01c_591e

    ldh [$ff60], a
    cp a
    add b
    ld d, b
    and b
    ret z

    ldh a, [$fff0]
    inc bc
    ld [$ff07], sp

jr_01c_591b:
    ld [$1707], sp

jr_01c_591e:
    ld [$0f1e], sp
    rra
    inc c
    ei
    dec e
    ld a, [bc]
    dec b
    ld [$08f4], sp
    and h
    ld e, b
    ld h, h
    rst $38
    sbc b
    call nc, Call_000_1f28
    dec bc
    rra
    dec bc
    rrca
    rst $28
    dec b
    rrca
    ld b, $07
    inc b
    ld [$e814], sp
    inc d
    adc e
    add sp, -$58
    jr nz, jr_01c_5949

    sub b
    jr nz, jr_01c_594c

    inc bc

jr_01c_5949:
    ld [$0c43], sp

jr_01c_594c:
    ld [$07cf], sp
    rrca
    nop
    inc c
    jr nz, @+$0a

    ld b, e
    dec c
    ret nz

    nop
    rst $30
    jr nz, jr_01c_591b

    ldh [rLCDC], a

jr_01c_595d:
    nop
    and b
    ret nz

    dec c
    rlca
    ld hl, sp+$21
    nop
    and c
    ld bc, $01e1
    rlca
    nop
    and b

jr_01c_596c:
    ret nz

    jr nz, jr_01c_595d

    jr nz, jr_01c_5971

jr_01c_5971:
    and b
    ret nz

    ldh [$ffc0], a
    ld bc, $c020
    ret nz

    sub $22
    db $10
    inc bc
    nop
    ldh [$ff0d], a
    ld bc, $0de1
    inc bc
    ld bc, $21fe
    ld de, $00e0
    jr nc, jr_01c_596c

    ldh [$ffc0], a
    ret nc

    rst $38
    ld h, b
    ldh [$ff80], a
    ldh [$ffc0], a
    rlca
    inc bc
    rlca
    di
    inc bc
    ld b, $22
    nop
    and c
    nop
    inc bc
    nop
    ret nc

    ldh [$ff67], a
    ret nc

    ldh [rNR10], a
    ld [hl+], a
    nop
    and c
    nop
    ldh [rP1], a
    add b
    nop
    rst $38
    ld bc, $0700
    nop
    inc c
    inc bc
    ld d, $09
    rst $38
    rra
    nop
    dec sp
    ld b, $65
    dec de
    pop de
    ld l, $ff
    ret nz

    nop
    ld h, b
    ret nz

    or b
    ld h, b
    cp b
    ld d, b
    rst $38
    ld e, h
    xor b
    ld [$f714], a
    ld [$86f9], sp
    rst $38
    jp hl


    rla
    or l
    ld c, d
    ld e, e
    inc h
    ccf
    ld a, [bc]
    rst $38
    rra
    inc b
    rra
    ld a, [bc]
    rra
    nop
    inc bc
    nop
    rst $38
    xor l
    ld e, [hl]
    rst $38
    nop
    rst $38
    xor $ff
    adc d
    ld a, a
    rst $38
    ld [$2aff], a
    rst $38
    xor $ee
    ld b, d
    inc b
    rst $38
    ld e, $00
    ld e, $0c
    rra
    inc c
    ld a, $01
    rst $28
    ld d, l
    ld a, [hl+]
    xor d
    ld d, l
    add l
    dec b
    ld hl, sp+$00
    or h
    rst $38
    ld c, b
    ld h, d
    sbc h
    pop bc
    ld a, $ff
    nop
    ld a, a
    ld a, a
    ccf
    ld a, a
    rla
    ld a, a
    inc a
    ld a, a
    inc d
    ld b, b
    nop
    rst $38
    inc a
    ld a, a
    nop
    rst $38
    nop
    jp nz, $c2bc

    scf
    cp h
    jp z, $23b4

    nop
    cp $00
    ret nz

    ld bc, $13fe
    nop
    rlca
    nop
    dec de
    rlca
    ccf
    inc d
    inc a
    rst $30
    inc de
    inc sp
    rrca
    inc de
    ld bc, $00f0
    db $ec
    ldh a, [rIE]
    cp $14
    ld e, $e4
    and $f8
    cpl
    inc de
    rst $38
    inc hl
    inc e
    daa
    rra
    add hl, de
    rlca
    rra
    nop
    rst $38
    rra
    dec b
    rrca
    ld bc, $0003
    ld a, [$ffe4]
    ldh [c], a
    inc e
    ldh a, [c]
    db $fc
    call z, $fcf0
    nop
    rst $38
    db $fc
    ld d, b
    ld hl, sp+$40
    ld h, b
    nop
    ccf
    nop
    rst $38
    ld e, [hl]
    ccf
    xor l
    ld [hl], e
    sbc $61
    xor l
    ld [hl], e
    rst $38
    ld e, [hl]
    ccf
    ld h, b
    ccf
    ld a, [hl]
    ccf
    nop
    nop
    rst $38
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    db $fd
    add b
    and b
    nop
    cp b
    nop
    ld e, h
    ccf
    add hl, hl
    ld e, $ff
    ld [de], a
    inc c
    ld a, [de]
    inc c
    ld e, $00
    dec bc
    inc b
    rst $38
    ld [$0707], sp
    nop
    call nz, $9238
    ld l, h
    rst $38
    xor d
    ld b, h
    xor d
    ld b, h
    or c
    ld c, [hl]
    cp l
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    ld b, b
    ld [bc], a
    pop bc
    rlca
    ccf
    rlca
    ld b, a
    add hl, sp
    cp c
    ld a, a
    ld b, [hl]
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld [hl], d
    dec c
    ld bc, rDIV
    ldh [$ff80], a
    ldh a, [$ffe0]
    adc b
    ldh a, [$ff88]
    ld [hl], b
    rst $38

jr_01c_5ad1:
    adc h
    ld [hl], b
    cp [hl]
    ld c, h
    ld b, d
    dec a
    ld b, e
    inc a
    sbc a
    ld c, l
    jr nc, jr_01c_5b0e

jr_01c_5add:
    nop
    ld bc, $0020
    pop de
    ld a, [bc]
    rst $38
    rst $38
    ld a, $35
    ld a, [$b44b]
    ld c, l
    or d
    ld [hl], c
    cp a
    adc [hl]
    ld b, d
    cp h
    adc h
    ld [hl], b
    ld [hl], b
    ld h, $0c
    ld a, [hl]
    sbc a
    nop
    ld e, l
    ld a, $37
    ld c, $f4
    dec bc
    ld h, b
    dec c
    ccf
    cp $00
    ld bc, $3876
    ret c

    ld h, b
    inc bc
    nop
    dec c
    rst $38
    ld [bc], a

jr_01c_5b0e:
    rla
    ld c, $2e
    rra
    cpl
    rra
    rla
    rst $38
    rrca
    inc c
    inc bc
    inc bc
    nop
    jr nz, jr_01c_5add

    ret c

    rst $38
    and b
    ld [hl], h
    cp b
    cp d
    ld a, h
    ld a, [$f4fc]
    rst $28
    ld hl, sp+$18
    ldh [$ffe0], a
    ld [$5904], sp
    ld a, $31
    cp [hl]
    ld a, [bc]
    inc b
    ld e, c
    ld a, $66
    jr c, jr_01c_5ad1

    ld [bc], a
    inc b
    ld de, $0ebf
    inc l
    rra
    inc l
    rra
    ld de, $0404
    ld e, b
    rst $38
    and b
    ld b, h
    cp b
    add d
    ld a, h
    ld [bc], a
    db $fc
    inc b
    cp $04
    inc b
    ld bc, $1b00
    ld bc, $197f
    cp l
    rst $38
    ld e, d
    ret c

    ld h, a
    rst $38
    ld a, a
    add b
    ld a, a
    ldh a, [rIE]
    nop
    ld hl, sp-$10
    db $fc
    ld [$08fc], sp
    ld a, [$f4ff]
    ldh a, [c]
    inc c
    cp $fc
    ld [bc], a
    db $fc
    ld a, a
    rst $38
    nop
    pop bc
    ld a, $bf
    ld b, b
    rst $38
    ld a, [hl]
    add c
    ld a, [$0020]
    ld a, [hl]
    ldh [rNR21], a
    db $fc
    nop
    ld b, [hl]
    cp b
    ld a, [$04ff]
    cp $bc
    ld b, d
    cp h
    jp nz, Jump_000_3c3c

    cp $e0
    rla
    jr c, jr_01c_5b96

jr_01c_5b96:
    ld a, h
    jr c, @+$01

    ld b, h
    rst $38
    rst $38
    ld b, h
    db $fd
    ld a, [hl-]
    cp b
    ld b, a
    ret nz

    ld a, a
    rst $38
    rst $38
    ld a, a
    nop
    nop
    ld [hl], b
    nop
    db $fc
    ld [hl], b
    cp $ff
    adc b
    cp $88
    ld a, [$7274]
    adc h
    cp $ff
    db $fc
    add b
    ld a, a
    sub l
    ld l, d
    ei
    dec d
    xor [hl]
    rst $38
    ld d, l
    sub l
    ld l, d
    rst $38
    nop
    ld c, b
    jr nc, jr_01c_5bf8

    rst $38
    nop
    ld [hl-], a
    call z, $b47a
    xor $30
    or d
    rst $38
    ld c, h
    ld [bc], a
    db $fc
    cp $00
    inc h
    jr jr_01c_5bf2

    ld bc, $4000
    ld bc, $11fe
    nop
    rrca
    nop
    inc sp
    dec c
    ld a, c
    ld l, $e3
    rst $38
    ld e, [hl]
    pop af
    ld l, [hl]
    ld a, [hl]
    ld sp, $0000
    and [hl]
    rst $38

jr_01c_5bf2:
    nop
    push af
    and d
    sbc $60
    or d

jr_01c_5bf8:
    call z, $ffc7
    ld a, [hl-]
    rrca
    or $3e
    call z, Call_000_063f
    ld [hl], a
    rst $38
    jr jr_01c_5c70

    inc a
    push af
    ld a, [hl]
    rst $38
    nop
    add c
    rst $38
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    db $fc
    jr nc, @-$0e

    cp $40
    inc bc
    inc d
    nop
    ld a, [hl]
    inc d
    add c
    ld a, [hl]
    ld a, [hl]
    cp $48
    inc b
    rlca
    nop
    dec de
    rlca
    cpl
    rra
    ld e, a
    db $fd
    ccf
    ld b, l
    dec b
    ldh a, [rP1]
    db $ec
    ldh a, [$fffa]
    db $fc
    rst $38
    db $fd
    cp $5f
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    rst $38
    ld b, e
    ccf
    ld b, b
    ccf
    jr nz, jr_01c_5c62

    jr @+$09

    rst $38
    rlca
    nop
    db $fd
    cp $fd
    cp $f9
    cp $ff
    pop hl
    cp $01
    cp $02
    db $fc
    inc c
    ldh a, [$ffbc]
    pop bc
    inc b
    add a
    ld [$0003], sp
    dec b
    inc bc
    adc c
    add hl, bc

jr_01c_5c62:
    ldh [rIE], a
    nop
    ret nc

    ldh [$ff0b], a
    rlca
    rla
    rrca
    rra
    rst $38
    inc c
    cpl
    inc e

jr_01c_5c70:
    cpl
    inc e
    daa
    inc e
    inc de
    rst $38
    inc c
    rrca
    nop
    add sp, -$10

jr_01c_5c7b:
    db $f4
    ld hl, sp-$04
    rst $38
    jr jr_01c_5c7b

    inc e

jr_01c_5c82:
    ld a, [$f21c]
    inc e
    db $e4
    db $e3
    jr jr_01c_5c82

    ld a, [hl+]
    ld [$02c1], sp
    ld h, a
    dec c
    ret nz

    nop
    or b
    rst $38
    ret nz

    add sp, -$10
    dec sp
    rlca
    ld d, h
    dec sp
    or h
    rst $38
    ld a, e
    and d
    ld a, l
    add d
    ld a, l
    adc [hl]
    ld [hl], c
    ld [hl], c
    cp $e0
    ld c, $ec

jr_01c_5ca9:
    ldh a, [$ffca]
    db $f4
    ld [de], a
    db $ec
    dec d
    rst $38
    xor $2d
    sbc $45
    cp [hl]
    pop bc
    ld a, $3e
    cp [hl]
    ld l, b
    db $10
    ld bc, $0200
    ld bc, $080d
    ld [$ffc0], sp
    nop
    and b
    ret nz

    jr nc, jr_01c_5ca9

    ld d, $0f
    dec a
    call c, Call_000_0d60
    ld h, c
    inc c
    cpl
    rra
    dec de
    nop
    inc c
    cp b
    ldh a, [rIE]
    call c, $faf8
    db $fc
    cp $fc
    ld a, [$07fc]
    db $f4
    ld hl, sp-$18
    nop
    inc c
    ld b, b
    ld [bc], a
    rst $38
    inc b
    nop
    ld c, $04
    ccf
    inc b
    ld a, a
    dec sp
    rst $38
    ccf
    rrca
    ccf
    rra
    ccf
    add hl, de
    ccf
    ld d, $ff
    stop
    jr c, @+$12

    cp $10
    pop bc
    cp $ff
    add $f8
    ldh [c], a
    db $fc
    ldh a, [c]
    call z, $b4fa
    rst $38
    ccf
    ld d, $7f
    ccf
    ld a, a
    ccf
    ld a, h
    ccf
    rst $38
    ld [hl], b
    ccf
    jr nz, jr_01c_5d3a

    jr @+$09

    rlca
    nop
    rst $38
    ld a, [$ffb4]
    cp $ff
    cp $1f
    cp $ff
    rlca
    cp $02
    db $fc
    inc c
    ldh a, [$fff0]
    nop
    rst $38
    ld bc, $0200
    ld bc, $0102
    ld b, $01

jr_01c_5d3a:
    rst $38
    rrca
    ld b, $1f
    dec bc
    ld a, a
    dec bc
    rst $38
    ld l, e
    rst $38
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    rst $38
    ldh a, [$ff60]
    ld hl, sp-$30
    cp $d0
    rst $38
    sub $ff
    rst $38
    ld a, [hl]
    cp $7d
    rst $38
    ld e, [hl]
    ld a, a
    rra
    rst $38
    ccf
    rlca
    rra
    dec bc
    rrca
    inc b
    inc b
    nop
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    cp [hl]
    rst $38
    ld a, d
    cp $f8
    ld a, a
    db $fc
    ldh [$fff8], a
    ret nc

    ldh a, [rNR41]
    ld h, b
    jr nz, jr_01c_5d82

    rst $38
    rra
    nop
    dec [hl]
    rrca
    dec hl
    inc e
    ld d, a

jr_01c_5d82:
    add hl, sp
    rst $38
    ld c, a
    scf
    ld e, e
    ld h, $67
    ld a, [de]
    nop
    nop
    rst $38
    db $fc
    nop
    ld d, [hl]
    ld hl, sp-$16
    sbc h
    push af
    ld c, [hl]
    rst $38
    ld sp, hl
    or $ed
    or d
    di
    xor h
    ld e, e
    ld h, $ff
    ld l, d
    rla
    ld d, h
    dec sp
    ld l, e
    inc e
    ld e, c
    daa
    rst $38
    ld b, a
    jr c, jr_01c_5ddb

    rrca
    rra
    nop
    db $ed
    or d
    rst $38
    dec hl
    db $f4
    dec d
    xor $eb
    inc e
    ld c, l
    ldh a, [c]
    rst $18
    pop af
    ld c, $06
    ld hl, sp-$04
    rlca
    inc b
    dec sp
    ld c, a
    rst $18
    ld a, [hl-]
    ld e, a
    ld h, $6f
    inc de
    inc bc
    inc b
    xor d
    ld a, h
    rst $38
    push de
    cp [hl]
    xor c
    sbc $fd
    ldh [c], a
    ei
    db $f4
    rst $38
    ld e, a
    inc hl
    ld l, l
    dec de

jr_01c_5ddb:
    ld d, a
    inc a
    ld l, d
    rra
    cp $05
    inc b
    db $fd
    ldh a, [c]
    db $db
    db $ec
    push af
    ld e, $eb
    db $fd
    cp h
    rlca
    inc b
    inc bc
    nop
    rrca
    inc bc
    rla
    rrca
    rst $38
    cpl
    inc e
    ccf
    ld de, $375f
    ld e, a
    ld [hl-], a
    rst $38
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$20
    db $f4
    ld hl, sp-$01
    ld a, [$fe9c]
    ld b, h
    db $fd
    or $fd
    and [hl]
    rst $38
    ld d, a
    ld a, [hl-]
    ld e, a
    ld [hl], $7c
    rla
    inc l
    dec de
    rst $38
    scf
    inc c
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    rst $38
    push af
    xor [hl]
    db $fd
    or [hl]
    rra
    db $f4
    ld a, [de]
    db $ec
    ld a, a
    or $18
    db $ec
    ldh a, [$ff38]
    ret nz

    ldh [$ff64], a
    inc d
    rst $18
    rlca
    nop
    inc b
    inc bc
    inc bc
    add b
    db $10
    dec b
    inc bc
    rst $38
    nop
    nop
    jr jr_01c_5e42

jr_01c_5e42:
    inc d
    ld [$0c1a], sp
    rst $38
    xor c
    ld e, $57
    cp b
    xor b
    ret nc

    ret nc

    ldh [rIE], a
    dec bc
    rlca
    rla
    rrca

jr_01c_5e54:
    ld l, $1f
    inc l
    rra
    rst $38
    db $10
    rrca
    add hl, hl
    ld d, $36
    nop
    ld b, b
    nop
    rst $38
    jr z, jr_01c_5e54

    inc d
    ld hl, sp+$34
    ret z

    ld c, h
    add b
    db $fd
    add b
    ld h, $18
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    cp e
    rra
    dec b
    nop
    jr jr_01c_5e7a

jr_01c_5e7a:
    ccf
    rra

jr_01c_5e7c:
    ld bc, $f008
    rst $38
    ldh [$fff8], a
    db $10
    db $fc
    ret nc

    cp $fc
    cp $f7
    nop
    cp $fc
    ld h, d
    ld bc, $3f1e
    jr jr_01c_5ece

    cp a
    dec de
    ccf
    jr jr_01c_5ed6

    ld e, $1f
    jr nz, @+$03

    cp $ff
    nop
    ld a, [hl]
    cp h
    ld a, [hl]
    adc h
    ld e, $ec
    ld a, [hl]
    rst $28
    adc h
    ld a, [hl]
    cp h
    db $fc
    dec bc
    inc e
    rra
    ccf
    ld e, $be
    ld a, [bc]
    inc e
    db $fc
    ld a, [$3fbc]
    ld de, $1c0c
    call nz, $ffff
    xor $ff
    sub $3f
    sub $7f
    cp d
    rst $18
    ld a, [hl]
    cp b
    inc a
    ret nc

    ld hl, sp+$09
    inc e
    rrca
    ld a, a
    rst $30

jr_01c_5ece:
    dec c
    rst $38
    ld h, e
    ld [$f01c], sp
    cp $b0

jr_01c_5ed6:
    rst $38
    db $fd
    add $0e
    inc e
    ld l, [hl]
    ld a, a
    sub [hl]
    rst $38
    ld a, [hl-]
    cp $1f
    cp b
    db $fc
    ret nc

    ld hl, sp-$40
    ld bc, $f01c
    inc bc
    db $fc
    cpl
    ld bc, $001f
    nop
    nop
    inc bc
    nop
    inc c
    ld [bc], a
    rst $38
    jr nc, @+$0a

    ld b, b
    jr nz, jr_01c_5e7c

    ld b, b
    nop
    nop
    cp a
    ld e, $00
    pop hl
    ld e, $00
    pop bc

jr_01c_5f06:
    ld b, h
    ld [bc], a
    ld bc, $c1fe
    ld [bc], a
    add b
    nop
    ld b, b
    add b
    ld a, $c0
    ld bc, $fee7
    nop
    rst $38
    jr nz, jr_01c_5f19

jr_01c_5f19:
    sub $03
    ret nz

    nop
    jr nc, jr_01c_5f06

jr_01c_5f1f:
    ret nz

    ld [$cff0], sp
    inc b
    ld c, e
    nop
    ld bc, $0200
    rst $38
    ld bc, $0304
    ld [$0807], sp
    rlca
    db $10
    ld e, a
    rrca
    jr nz, @+$21

    jr nz, jr_01c_5f57

    ld [hl], b
    inc bc
    add b
    inc h
    nop
    rst $10
    ret nz

    nop
    db $e3
    jr nz, jr_01c_5f48

    ld bc, $07d0
    rlca
    nop

jr_01c_5f48:
    rst $38
    rrca
    nop
    ccf
    nop
    rst $38
    jr nc, jr_01c_5f1f

    ld a, b
    db $fd
    add a
    ld b, d
    ld b, $ff
    nop

jr_01c_5f57:
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    ldh a, [rNR41]
    nop
    ldh [rDIV], a
    ld hl, sp+$02
    db $fc

jr_01c_5f64:
    ld bc, $fe5f
    ld bc, $003e
    rra
    ld b, b
    ld [bc], a
    rrca
    and b
    ld [bc], a
    ld l, h
    inc [hl]
    ld b, $53
    inc b
    ld b, b
    add b
    call Call_01c_4006
    ccf
    inc hl
    nop
    rst $08
    add b
    ld a, a
    add b
    ld a, a
    nop
    dec bc
    ld b, e
    dec bc
    db $fd
    nop
    rst $38
    ld sp, hl
    ld bc, $01f2
    ldh [c], a
    inc bc
    push bc
    rlca
    rst $38
    add hl, bc
    ld a, b
    add a
    reti


    ld h, $ef
    db $10
    cp $ef
    ld [hl], c
    add a
    add e
    inc bc
    ld [de], a
    nop
    ret nz

    jr nz, jr_01c_5f64

    rst $38
    jr nz, jr_01c_5fe7

    and b
    and b
    ld b, b
    ldh [$ffc0], a
    ldh [$ff5f], a
    ret nz

    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ret nz

    ld [$2403], sp
    nop
    adc l
    ld bc, $0021
    ld b, b
    add b
    dec hl
    nop
    pop hl
    inc c
    ld hl, $0200
    rst $20
    ld bc, $0102
    jp nc, $2111

    db $10
    jp $fc03


    rst $38
    inc e
    ldh [rSB], a
    add d
    rlca
    ld sp, hl
    cp c
    ld b, [hl]
    rst $38
    ld c, $12
    inc a
    ld b, h
    adc $30
    ld de, $ff21
    ld a, [hl]
    add d
    ret nz

    nop

jr_01c_5fe7:
    cp h
    add b
    cp $80
    cp $61
    ld b, $07
    nop
    ld [$0708], sp
    inc b
    nop
    cp $72
    ld c, $f8
    ldh a, [$fff8]

jr_01c_5ffb:
    ldh a, [$fffc]

jr_01c_5ffd:
    jr c, jr_01c_5ffb

    rst $38
    ret nz

    cp $38
    ld a, $0c
    rst $08
    ld b, $f7
    ld a, l
    rlca
    ld h, d
    ld b, $03
    nop
    ld b, a
    nop
    ld a, a
    jr nz, jr_01c_6013

jr_01c_6013:
    rst $20
    ccf
    add b
    rra
    ld bc, $3007
    add hl, bc
    ret nz

    db $10
    ldh [$ffbf], a
    ld [$08f0], sp
    ldh a, [rDIV]
    ld hl, sp+$2d
    dec d
    add c
    rst $30
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, c
    ld c, $20

jr_01c_602f:
    rra
    jr jr_01c_6039

    cp $d1
    db $10
    call c, $9880
    add b

jr_01c_6039:
    call c, $cc40
    rst $38
    ld b, b
    add $46
    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, b
    cp l
    jr nz, jr_01c_5ffd

    dec bc
    add b
    add b
    ld b, b
    ret nz

    pop hl
    jr jr_01c_602f

    rst $38
    rlca
    adc a
    inc bc
    rst $00
    rlca
    adc a
    rrca
    ld a, a
    rst $38
    ld a, a
    ccf
    dec a
    ccf
    inc a
    ld a, [hl]
    ld a, h
    ret nz

    rst $38
    sbc a
    ldh [$ff8f], a
    ldh a, [$ffc7]
    db $fc
    db $d3
    ei
    rst $38
    ld [hl], h
    db $fc
    inc sp
    db $fc
    ld [hl], e
    db $f4
    ld h, e
    inc b
    rst $38
    ld hl, sp+$04
    ld hl, sp+$14
    add sp, $24
    ret c

    ret z

    ld a, a
    jr nc, @+$0a

    ldh a, [rNR23]
    ldh [$ff28], a
    ret nc

    cpl
    inc e
    cp $4b
    nop
    jr nc, jr_01c_609c

    jr jr_01c_6096

    inc e
    inc b
    rla
    cp a
    add hl, bc
    add hl, bc
    ld b, $04

jr_01c_6096:
    inc bc
    inc bc
    ldh a, [rSB]
    ld hl, sp-$01

jr_01c_609c:
    nop
    ld c, b
    jr nc, jr_01c_60d1

    ld bc, $0303
    rst $38
    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    rrca
    sbc $0e
    ld a, [hl]
    rst $38
    ld a, h
    db $fd
    ld a, [$e7f8]
    ldh [$ff9f], a
    ldh [rIE], a
    ld e, a
    ldh a, [c]
    call $c6e9
    or $c1
    ld h, [hl]
    rst $18
    ld bc, $0708
    ldh a, [rIF]
    and c
    inc hl
    add hl, bc
    or $ff
    ld [de], a
    db $ec
    cp a
    ld b, b
    ld [$10f0], sp

jr_01c_60d1:
    ldh [$ff3f], a
    db $10
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    or c
    dec de
    ld a, [$f81b]
    rra
    nop
    inc [hl]
    jr z, @+$45

    inc h
    dec b
    ld [bc], a
    add hl, bc
    ld b, $13
    rst $38
    dec c
    cp b
    ld [$11f1], sp
    ld h, e
    inc hl
    rst $38
    rst $38
    ld e, $be
    nop
    db $eb
    add b
    db $fc
    db $e3
    ldh [rIE], a
    rst $18
    db $fd
    jp nz, $c1ee

    rst $38

jr_01c_6102:
    ld c, $b9
    rst $38
    add hl, de
    ldh a, [rNR10]
    ld [hl], b
    or b
    ld [hl], b
    or b
    ldh a, [rIE]
    ld [hl], b
    db $e4
    ld [de], a
    ld b, $e9
    dec bc
    inc d
    sub b
    rst $38
    ld h, b
    ldh a, [$ff89]
    ld a, b
    ld b, h
    ld a, h
    ld b, e
    ccf
    db $fd
    jr nz, jr_01c_6102

    inc d
    ld b, b
    db $10
    jr nz, jr_01c_6137

    and b
    adc b
    ccf
    ld d, b
    inc b
    jr @+$06

    ld [$423e], sp
    ld de, $001f
    cp $87
    nop

jr_01c_6137:
    inc de
    dec c
    inc hl
    dec e
    inc hl
    db $10
    ld b, d
    ld [hl], a
    ld hl, $0040
    ld [hl+], a
    nop
    daa
    ret nz

    cp a
    add d
    inc h
    ld sp, hl
    rst $38
    jr nc, jr_01c_617f

    pop de
    ld [bc], a
    add e
    ld hl, sp+$78
    db $fc
    ld a, h
    rst $38
    rst $38
    ccf
    ccf
    rst $10
    rra
    db $eb
    rrca
    ld [hl], c
    rst $38
    rlca
    ld sp, hl
    inc bc
    db $fc
    inc [hl]
    dec hl
    ld a, [de]
    dec d
    rst $38
    add hl, de
    ld d, $8c
    adc e
    adc h
    adc e
    add $c5
    rst $38
    add $c5
    jp $f0c2


    nop
    ld e, b
    and b
    ccf
    ld c, b
    or b
    inc l
    ret nc

    inc h
    ret c

jr_01c_617f:
    and c
    dec d
    dec c
    inc e
    db $ec
    ld hl, sp+$33
    jp nc, $ff35

    nop
    ld b, c
    ld sp, $2f70
    ld [hl], b
    ld a, a
    cpl
    ld hl, sp+$77
    ei
    ld [hl], h
    rst $38
    ldh a, [$fff0]

jr_01c_6198:
    dec [hl]
    cp $60
    jr nc, jr_01c_621c

    or b
    ccf
    rst $18
    inc e
    ldh [$fff8], a
    rst $30
    jr @-$02

    ld [hl], b
    ld [hl], b
    rlca
    db $fc
    rlca
    ld hl, sp+$07

jr_01c_61ad:
    rst $38
    ld hl, sp-$31
    jr nc, jr_01c_61ad

    ret nz

    ld [hl], a
    ld h, c
    ld h, a
    rst $38
    ld b, e
    rst $38
    nop
    pop hl
    ldh [$ffe1], a
    ld h, c
    di
    rst $28
    inc sp
    rst $38
    ld a, a
    rst $38
    ld de, $fc00
    rst $38
    nop
    rst $38
    ld [$88f0], sp
    ld [hl], b
    sub b
    ld h, b
    ret nc

    and b
    dec a
    ret nc

    ld b, b
    inc l
    jr nz, jr_01c_6198

    rst $38
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h

Call_01c_6205:
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c

jr_01c_621c:
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_6259:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_6261

jr_01c_6261:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_62a1

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_62a1:
    jr c, jr_01c_6259

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_62f6

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    xor e
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    rrca
    ld b, $4b
    ld h, b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld bc, $4722
    ld c, b
    ld e, $00
    ld bc, $3f49
    inc bc
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

jr_01c_62f6:
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
    rla
    nop
    ldh a, [$ff03]
    db $f4
    cpl
    ld bc, $0069
    ld bc, $0138
    rrca
    nop
    ld [hl], b
    nop
    ei
    add b
    rlca
    ld b, a
    ld [bc], a
    ldh a, [rP1]
    ld c, $f0

jr_01c_6326:
    ld bc, $fee1
    ld c, a
    inc bc
    rra
    nop

jr_01c_632d:
    rra
    nop
    add a
    nop
    ld [bc], a
    nop
    inc b
    db $eb
    nop
    ld [$0020], sp
    db $10
    jr nz, jr_01c_633c

jr_01c_633c:
    jr z, jr_01c_633e

jr_01c_633e:
    jr nc, jr_01c_63bf

    nop
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    jr nz, jr_01c_6349

jr_01c_6349:
    sbc l
    rst $38
    and b
    nop
    rlca
    nop
    inc bc
    add b
    nop
    ld a, [hl+]
    nop
    ld hl, sp-$39
    nop
    ld b, $f8
    ld h, b
    rlca
    ld h, a
    ld bc, $0532
    add b
    nop
    rst $38
    ld b, b
    add b
    jr nz, jr_01c_6326

    and b
    ld b, b
    ld d, b
    and b
    db $e4
    cpl
    ld b, $83
    inc c
    ld bc, $06a0
    ret nz

    ld b, $01
    jr nz, jr_01c_6377

jr_01c_6377:
    cp c
    ld b, b
    ldh [rSC], a
    ld d, h
    inc bc
    add b
    nop
    pop bc
    jr nz, jr_01c_6388

    ld bc, $0cff
    ld de, $2916

jr_01c_6388:
    ld a, [hl+]
    ld d, l
    ld [hl], l
    ld a, [bc]
    rst $38
    ld e, e
    and h
    rst $38
    ld a, $00
    rst $08
    nop
    add e
    rst $38
    ld h, b
    ld bc, $00f0
    or b
    ld b, b
    ld e, b
    and b
    rst $28
    xor b
    ld d, b
    ld hl, sp-$1c
    ld [bc], a
    ld [$00fe], sp
    ld a, b
    xor [hl]
    ld b, l
    dec b
    jr nc, jr_01c_632d

    jr jr_01c_63af

jr_01c_63af:
    dec bc
    inc b
    add b
    dec bc
    ld bc, $0227
    ld bc, $2002
    ld a, [bc]
    jp c, $8006

    jr nz, jr_01c_63c5

jr_01c_63bf:
    ld hl, $7300
    ld [$2503], sp

jr_01c_63c5:
    nop
    jr nz, jr_01c_63ce

    db $e3
    ld bc, $21fe
    nop
    rst $38

jr_01c_63ce:
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    ei
    ldh [$ff60], a
    sub $20
    nop
    ldh [$ffc0], a
    stop
    add b
    ld [de], a
    nop
    inc a
    jr c, @+$01

    inc e
    ld a, [de]
    inc c
    dec bc
    ld b, $05
    ld [bc], a
    ld bc, $41d6
    ld a, [bc]
    inc bc
    inc bc
    db $f4
    inc c
    ldh a, [$ff83]
    rrca
    add b
    ld a, a
    add d
    ld b, b
    db $10
    rrca
    ld b, b
    ld de, $1101
    inc hl
    ld bc, $0ec2
    daa
    nop
    ld [$03f1], sp
    ld hl, $e007
    ld [$1a65], sp
    rst $30
    rra
    and $2f
    rst $38
    push de
    ld b, $fa
    ld b, $3a
    rst $00
    ld [bc], a
    inc sp
    rst $38
    inc c
    inc de

jr_01c_641e:
    dec c
    ld hl, sp-$78
    sbc b
    jr jr_01c_6424

jr_01c_6424:
    cp a
    nop
    ld a, h
    inc b
    db $fc
    nop
    db $fc
    ld d, b
    inc c
    jr c, jr_01c_641e

    nop
    rra
    db $10
    jr jr_01c_6434

jr_01c_6434:
    ld bc, $213f
    ccf
    rst $28
    nop
    ccf
    db $10
    rrca
    db $10
    ld d, $c0
    cp a
    ldh [rIE], a
    rra
    ld a, b
    ld b, a
    cp $f9
    rst $38
    ld a, d
    rst $38
    rst $18
    add hl, sp
    rst $38
    dec e
    cp a
    ccf
    inc bc
    rla
    ld bc, $fffe
    jp $813c


    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    db $e3
    ld b, b
    add b
    ld [hl], c
    ld [de], a
    rlca
    ld c, $0d
    ld [hl+], a
    inc de
    dec c
    inc de
    rst $38
    dec c
    ld hl, $210e

jr_01c_646f:
    ld c, $40
    rra
    add b
    db $eb
    ccf
    add b
    ld d, b
    dec b
    ld a, b
    ld b, b
    inc e
    ld [bc], a
    ld [bc], a
    add c
    rst $38
    add e
    ret nz

    ld b, b
    ld h, e
    and b
    add hl, sp
    ret z

    ld c, $f5
    ldh a, [c]
    ld b, c
    ld b, $00
    add b
    dec c
    inc bc
    inc bc
    rst $20
    rlca
    rst $38
    cpl
    adc $de
    ld de, $32bf
    ccf
    ld [hl], $ff
    ld a, [hl]
    ld l, l
    db $fc
    db $eb
    ld hl, sp-$39
    ret nz

    cp a
    ldh a, [$ffe0]
    dec c
    db $ec
    dec e
    ld bc, $e10e
    dec c
    jr nz, jr_01c_646f

    db $10
    ldh [$ff3f], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ff83]
    dec de
    ld b, l
    nop
    db $fc
    nop
    add hl, hl
    ret nz

    ld hl, $7c03
    inc b
    ld a, b
    ld [bc], a
    ld a, h
    rst $38
    rlca
    jr c, jr_01c_64cf

    jr c, jr_01c_64d1

    jr jr_01c_64da

jr_01c_64cf:
    ldh a, [rIE]

jr_01c_64d1:
    dec bc
    ldh a, [c]
    adc e
    ld [hl], d
    ld [hl], e
    ld [bc], a
    ld h, $04
    rst $38

jr_01c_64da:
    ld c, [hl]
    ld [$1edf], sp
    sbc a
    inc de
    cp $0d

jr_01c_64e2:
    rst $38
    ld a, [hl]
    cp l
    rst $38
    inc a
    ld a, h
    jr c, jr_01c_64e2

    ld [hl], b
    cp a
    ldh a, [$ff60]
    pop hl
    ret nz

jr_01c_64f0:
    pop bc
    nop
    add l
    inc d
    rst $20
    ccf
    jr jr_01c_64f0

    nop
    ret nz

    nop
    di
    inc b
    ld bc, $15a1
    rst $38
    ld b, b
    ccf
    ret nz

    ccf
    jr nz, jr_01c_6526

    ld [$6bf0], sp
    inc b
    ld hl, sp+$23
    nop
    inc c
    ldh [rTMA], a
    sbc b
    ld h, b
    and c
    ld [hl+], a
    cp $09
    inc h
    ld a, [bc]
    nop
    add hl, bc
    nop
    adc c
    ld [bc], a
    sub c
    rst $38
    ld [bc], a
    ld d, e
    inc b
    ld [hl+], a
    inc b
    ld b, d

jr_01c_6526:
    inc c
    ld c, h
    rst $38
    nop
    cp a
    dec a
    ccf
    ld h, $3f
    ld a, [hl-]
    ld a, $ff
    jr z, jr_01c_6570

    jr jr_01c_65b1

    ld h, b
    ld a, e
    ld [hl], b
    db $fd
    rst $38
    jp nz, $01c2

    db $e4
    inc bc
    cp c
    ld b, $91
    rst $38
    ld c, $9e
    nop
    ld d, [hl]
    inc b
    ld a, a
    inc c
    ld c, h
    rst $38
    jr nc, @-$70

    nop
    add d
    nop
    rst $00
    nop
    ld a, d
    rst $38
    inc b
    ld [de], a
    inc c
    inc hl
    inc e
    pop bc
    ld [hl], $41
    rst $18
    ld [hl+], a
    jr nz, jr_01c_6581

    ld b, b
    ccf
    and c
    inc d
    add e
    ld a, h
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1e
    ldh [$ffb0], a

jr_01c_6570:
    ld b, b
    rst $00
    ldh a, [rP1]
    ldh [$ffa0], a
    ld [$14ad], sp
    jp $ff00


    nop
    ld a, a
    sub h
    nop
    xor b

jr_01c_6581:
    nop
    xor c
    ld bc, $2051
    nop
    rst $38
    inc sp
    inc bc
    rra
    rlca
    rst $38
    nop
    db $f4
    jp $e8ff


jr_01c_6592:
    ret nc

    ldh [$ffd0], a
    ret nz

    or b
    ret nz

    cp a
    rst $38
    ret nz

    cp a
    and b
    rra
    rst $38
    nop
    and h
    jr jr_01c_6592

    ld b, e
    inc c
    ld bc, $2006
    nop
    add [hl]
    inc bc
    db $fc
    rst $38
    inc bc
    db $fc
    rst $38
    nop

jr_01c_65b1:
    add c
    ld h, d
    nop
    db $e3
    ei
    nop
    pop hl
    add b
    inc l
    rst $08
    rrca
    ldh a, [$ffa1]
    ld b, b
    dec h
    rst $38
    ld h, b
    ld e, $f8
    nop
    ld b, $43
    inc d
    and b
    nop
    ld bc, $060d
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_664c:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_6654

jr_01c_6654:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_6694

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_6694:
    jr c, jr_01c_664c

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_66e9

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_01c_66e9:
    ld e, $00
    ld bc, $3f49
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

jr_01c_670f:
    rra
    nop

jr_01c_6711:
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
    rla

jr_01c_6723:
    nop
    ldh a, [$ff03]
    call c, $012f
    add a
    nop
    inc bc
    nop
    inc b
    and [hl]
    nop
    inc a
    ld bc, $c0bf
    inc bc
    nop
    rlca
    nop
    rrca
    add e
    ld bc, $7ff9
    nop
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    jr nz, jr_01c_6746

jr_01c_6746:
    cp $72
    inc bc
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    xor a
    sub a
    ld b, b
    jr nc, jr_01c_6723

    ld l, e
    inc b
    ret nz

    ld e, a
    dec b
    ld a, b
    nop
    ld bc, $20fe
    nop
    ld [$1000], sp
    nop
    jr nz, jr_01c_6765

jr_01c_6765:
    ld b, b
    ld d, [hl]
    jr nz, jr_01c_676d

    add b
    nop
    sub b
    nop

jr_01c_676d:
    ld [hl], b
    jr nz, @+$08

    rrca
    add b
    ld b, $d1
    inc bc
    and $02
    ld b, c
    ld b, $43
    nop
    ccf
    nop
    ld [$0300], sp
    db $fd
    db $fc
    ld h, $01
    db $fc
    nop
    ldh [rP1], a
    nop
    ld h, b
    ld l, $c2
    rlca
    jr nz, jr_01c_670f

    jr nz, jr_01c_6711

    inc b
    db $10
    ldh [rDIV], a

jr_01c_6795:
    ld l, l
    ld b, $dd
    ld [bc], a
    ld hl, $0100

jr_01c_679c:
    inc b
    inc bc
    ld hl, $0500
    ld [bc], a
    rst $38
    ld b, $00
    ld bc, $22fc
    call c, $bd42
    cp a
    ld b, h
    cp e
    call nz, $843b
    ld a, e
    ld hl, $0200
    cp $40
    ld c, $0c
    add b
    jr jr_01c_679c

    jr z, jr_01c_6795

    jr nc, @-$1f

    rst $08
    ld [hl], b
    xor a
    ld [hl], c
    xor [hl]
    ld h, c
    ld a, [bc]
    inc e
    nop
    rst $38
    ld a, $00
    halt
    adc b
    db $db
    inc h
    cp $7d
    ei
    pop bc
    pop bc
    ld h, e
    dec bc
    ld h, b
    nop
    or b
    ld b, b

jr_01c_67db:
    ld [hl], b
    cp a
    adc a
    ret nc

    cpl
    or b
    rst $08
    ld [$0b20], sp
    inc b
    ld a, a
    ld [$1804], sp
    inc b
    ld a, b
    inc b
    ld hl, sp+$21
    nop
    ldh [c], a
    ld l, l
    dec c
    ld b, $40
    inc de
    ld h, l
    inc de
    ld hl, $8c0f
    ld [hl], e
    adc h
    rst $38
    ld [hl], e
    ld c, [hl]
    dec [hl]
    ld c, [hl]
    dec [hl]
    ld c, a
    ld [hl], $2f
    rst $38
    ld d, $3f
    ld b, $3f
    inc d
    pop af
    ld l, [hl]
    di
    rst $38
    dec c
    db $d3
    ld c, l
    bit 0, l
    call $e541
    rst $38
    ld bc, $01f5
    ld a, b
    nop
    ret nz

    ret nz

    cp [hl]
    rst $28
    and b
    or c
    or b
    add b
    ret nc

    rrca
    rrca
    nop
    rra
    rst $38
    nop
    cpl
    nop
    ld h, d
    ld e, l
    ld [hl+], a
    dec e
    and h
    rst $38
    dec de
    ld c, h
    inc sp
    ld e, h
    dec hl
    cp h
    ld e, e
    ld sp, hl
    rst $30
    ld [hl], $7b
    dec d
    ld h, c
    ld b, $48
    or b
    ld c, b
    or b
    rst $38
    ret z

    jr nc, jr_01c_67db

    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    db $fc
    ld l, a
    inc d
    ld c, e
    nop
    ld a, $18
    ld a, $18
    ld e, $0c
    ld e, a
    rra
    dec c
    rrca
    ld b, $07
    nop
    ld d, $00
    db $10
    dec d
    db $fd
    ld h, b
    ld d, b
    dec d
    jr nc, jr_01c_686c

jr_01c_686c:
    ld [hl-], a
    ld [hl-], a
    ld bc, $7f03
    add b
    add b
    pop bc
    ld b, b
    rrca
    nop
    ld c, $50
    inc e
    rst $38
    ld b, $00
    rlca

jr_01c_687e:
    rlca
    ld bc, $2101
    ld bc, $c1ff
    ld bc, $0836
    ld a, $04
    ld a, $36
    rst $38
    ld a, l
    ld [hl], c
    ei
    ldh a, [c]
    cp $ec
    db $fc
    ldh [$ff1f], a
    ldh [$ffc0], a
    and b
    ld b, b
    ret nz

    jp Jump_000_1f18


    nop
    rra
    nop
    cp $1f
    nop
    nop
    ld h, b
    jr nz, @+$3a

    ld [$020e], sp
    cp $f1
    dec de
    rlca
    nop
    add hl, de
    ld b, $eb
    inc d
    inc bc
    rst $38
    inc bc
    rrca
    ld c, $3e

jr_01c_68ba:
    jr nc, jr_01c_68ba

    inc c
    rst $38
    rst $38
    ld a, h
    sbc [hl]
    dec e
    sbc a
    sbc [hl]
    rst $38
    ccf
    ret nz

    inc a
    or c
    ld c, $c4
    ld hl, $c038
    add a
    ld a, b
    cpl
    inc b
    rra
    nop
    cp [hl]
    ld c, e
    inc hl
    ld [bc], a
    ld bc, $0102
    dec b
    and b
    add hl, hl
    ld [$00ff], sp
    jr c, jr_01c_68e3

jr_01c_68e3:
    ld c, h
    nop
    ld b, d
    xor l
    ld b, $ff
    ld a, b
    ld l, $50
    ld [de], a
    xor l
    and [hl]
    ld e, c
    ld c, a
    rst $38
    jr nc, jr_01c_687e

    ld d, h
    sbc d
    inc h
    ld a, a
    adc [hl]
    ld c, [hl]
    rst $38
    or c
    ld c, b
    ld d, $1c
    jp $6897


    cp b
    rst $38
    ld b, [hl]
    ld l, a
    db $10
    inc l
    inc de
    ld [$03d7], sp
    rst $38
    inc a
    inc b
    ld l, b
    adc b
    ld d, b
    db $10
    and b
    ld h, b
    cpl
    nop
    add c
    nop
    and d
    and d
    ld a, [hl+]
    ret nz

    nop
    daa
    or c
    ld h, $87
    adc b
    nop
    inc a
    rra
    ld b, $84
    add hl, hl
    pop bc
    inc de
    ld hl, $e32a
    db $fc
    ld h, b
    inc bc
    pop af
    jr z, jr_01c_6996

    ld bc, $60f9
    db $fd
    ld a, b
    rst $38
    cp $ec
    inc d
    xor b
    inc h
    ld [$1008], sp
    rst $30
    db $10
    ldh [$ff60], a
    ld h, d
    inc b
    ldh [rP1], a
    ld h, $19
    rst $38
    ld [hl+], a
    dec e
    ld de, $1006
    add hl, bc
    ld [$fb04], sp
    ld b, $01
    ld bc, $9417
    nop
    ld e, c
    add b
    ld e, d
    rst $38
    nop

jr_01c_6961:
    ld l, $40
    inc [hl]
    ld b, b
    inc d
    ldh [$fff3], a
    ei
    nop
    ld b, c
    nop
    jr z, jr_01c_696f

    nop

jr_01c_696f:
    dec c
    nop
    ccf
    rst $38
    inc c
    ld a, [hl]
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld c, [hl]
    rst $20
    dec [hl]
    daa
    db $eb
    ld b, $80
    ld b, b
    jr nc, jr_01c_6986

    ld bc, $0021

jr_01c_6986:
    inc bc
    rlca
    cp $50
    ld l, $30
    rra
    dec de
    rrca
    dec bc
    sbc a
    sub l
    rst $38
    rst $38
    or $ff

jr_01c_6996:
    ld [hl], $3e
    add hl, bc
    rst $38
    nop
    rst $38
    sbc b
    ld h, b
    rst $00
    jr c, jr_01c_6961

    cp a
    rst $08
    or b
    ld a, a
    add d
    ld a, l
    inc b
    ei
    add hl, bc
    or $ff
    ld b, b
    inc sp
    rst $38
    ld c, $01
    push af
    ld a, [bc]
    sub l
    ld l, d
    ld [hl], b
    adc a
    rst $38
    call nc, $142b
    db $eb
    rst $38
    nop
    pop af
    nop
    rst $38
    ei
    ld [hl], c
    cp $f2
    cp $06
    rst $38
    ld a, e
    rst $38
    rst $38
    ld h, e
    rst $38
    dec e
    rst $38
    nop
    add a
    add a
    rst $38
    rlca
    rlca
    rra
    ld e, $7e
    ld a, h
    db $fc
    ldh a, [$ff67]
    ldh a, [$ffc0]
    ret nz

    db $10
    ld a, [hl-]
    rr h
    rst $38
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_6a64:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_6a6c

jr_01c_6a6c:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_6aac

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_6aac:
    jr c, jr_01c_6a64

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_6b01

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_01c_6b01:
    ld e, $00
    ld bc, $3f49
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
    rla
    nop
    ldh a, [$ff03]
    ld a, b
    cpl
    ld bc, $001f
    and l
    nop
    inc bc
    nop
    inc e
    ld bc, $0161
    rst $38
    ld bc, $0600
    ld bc, $0708
    db $10
    rrca

jr_01c_6b54:
    rst $30
    rst $38
    nop
    nop
    jr nc, jr_01c_6b5a

jr_01c_6b5a:
    ccf
    nop
    ret nz

    ccf
    cp $80
    nop
    rst $38
    ld a, b
    add a
    and $61
    di
    ld [bc], a
    rst $38
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    ldh a, [$ffcf]
    ld [bc], a
    db $fc
    ld bc, $61fe
    ld bc, $0469
    add b
    nop
    ei
    ld b, b
    add b
    ld l, a

jr_01c_6b80:
    dec b
    ld bc, $0200
    nop
    inc b
    rst $38
    nop
    ld [$1000], sp
    nop
    jr nz, jr_01c_6b8e

jr_01c_6b8e:
    ld b, b
    ld a, a
    ld [$0760], sp
    add b
    rrca
    nop
    rra
    ld [hl+], a
    nop
    pop af
    rrca
    db $10
    rlca
    ld hl, $2906
    nop
    ld a, a
    dec c
    pop af
    inc bc
    db $fd
    db $fc
    ld c, b
    ld bc, $80fe
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    ccf
    ld b, b
    cp a
    jr nz, jr_01c_6b54

    db $10
    adc a
    db $10
    ld a, a
    rrca
    ld [$4007], sp
    add b
    jr nz, jr_01c_6b80

    dec h
    nop
    rst $08
    db $10
    ldh [rNR10], a
    ldh [rLYC], a
    ld b, $21
    nop
    ld [bc], a
    ld bc, $02ff
    ld bc, $1c40
    add b
    ld a, $80
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    rst $38
    jr nz, @-$1f

    ld b, d
    cp l
    db $db
    ld b, h
    cp e
    ld bc, $0809
    add b
    and b
    ld [bc], a
    db $ec
    jr nc, @+$01

    rst $08
    jr nz, @-$1f

    ld h, b
    sbc a
    nop
    rlca
    nop
    ei
    nop
    jr jr_01c_6c37

    dec c
    ld a, a
    ccf
    ld [hl], b
    or b
    ldh [$ffdf], a
    ld h, b
    ret nz

    ld b, b
    nop
    ldh a, [$ffa3]
    dec bc
    ldh [$ff80], a
    rst $38
    ldh a, [$ffe0]
    ld hl, sp-$0d
    ld a, b
    ld [hl], a
    ld [$ff07], sp
    ld [$0407], sp
    inc bc
    inc b
    dec bc
    inc b
    dec de
    ccf
    inc b
    ld a, e
    inc b
    ei
    inc b
    ei
    ld b, c
    ld b, $43
    nop
    cp $83
    rlca
    ld [bc], a
    ld bc, $0304
    dec b
    ld [bc], a
    dec b
    rst $30
    ld [bc], a
    ld b, $00
    ld hl, $0400
    nop
    add h

jr_01c_6c37:
    ld a, e
    rst $38
    adc h
    ld [hl], e
    adc [hl]
    ld [hl], c
    sub [hl]
    ld h, c
    sub a
    ld h, d
    rst $38
    and a
    ld b, e
    and e
    ld b, c
    and e
    ld b, c
    ld h, b
    sbc a
    rst $38
    ld h, c
    sbc [hl]
    ld [hl], c
    xor [hl]
    ld [hl], c
    adc [hl]
    ld a, c
    or [hl]
    rst $38
    cp l
    ld e, d
    rst $38
    add h
    rst $38
    ld [bc], a
    ret nz

    ld b, b
    db $fd
    ret nz

    stop
    add c
    add b
    add a
    add c
    adc a
    add a
    cp a
    sbc a
    sbc [hl]
    rra
    jr jr_01c_6ce4

    ld [hl], a
    ld hl, $fc00
    rst $38
    dec de
    db $fc
    ei
    cp $fd
    cp $1d
    rst $38
    ld sp, hl
    inc c
    ld b, c
    ld b, $81
    ld b, $08
    rst $30
    ld [$c8f7], sp
    or a
    scf
    ldh a, [$ffcf]
    db $e3
    dec c
    ld b, b
    add b
    dec h
    nop
    inc b
    ld a, $1c
    dec d
    jp Jump_01c_4301


    nop
    ld b, e
    and b
    ld a, [de]
    pop bc
    ld c, $fe
    ld bc, $de0f
    nop
    call c, $9c80
    add b
    sbc b
    rst $38
    add b
    adc h
    nop
    add [hl]
    ld b, $c0
    ld b, b
    ld h, b
    ld sp, hl
    and b
    ld d, c
    dec d
    ld hl, $8100
    add b
    ld b, b
    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    inc b
    rst $08
    inc b
    adc a
    rst $38
    inc c
    rst $08
    inc c
    sbc [hl]
    dec e
    cp $fd
    ld a, [hl]
    rst $38
    ld a, l
    ld a, h
    ld a, e
    or b
    cpl
    ret nc

    rst $08
    ret nc

    rst $38
    adc a
    ret nc

    ld c, a
    or b
    rrca
    ldh a, [rVBK]
    ldh a, [$fff7]
    rrca
    ld [hl], b
    adc a
    and a
    inc d
    db $10

jr_01c_6ce4:
    ldh [$ff08], a
    ldh a, [$ffe1]
    ld [$10e2], sp
    ld c, c
    inc e
    add l
    ld b, $23
    ld d, $00
    nop
    ld [hl], b
    cp a
    sub b
    ld e, b
    adc b
    adc [hl]
    ld [bc], a
    add e
    ld h, $23
    ld c, b
    rst $38
    jr nc, jr_01c_6d49

    jr nc, jr_01c_6d34

    ld bc, $888f
    rst $38
    rst $38
    rlca
    ccf
    rra
    rst $38
    rra
    ld h, e
    inc hl
    db $fc
    rst $18
    di
    db $fc
    jp $03fc


    ld hl, $bd00
    ld [bc], a
    rst $38
    call $8f02
    nop
    ld h, b
    sbc a
    ld h, h
    sbc e
    rst $38
    db $e4
    dec de
    db $e4
    dec de
    db $ec
    inc de
    call $ef32
    reti


    ld h, $fb
    inc b
    ld b, c
    ld b, $08

jr_01c_6d34:
    ldh a, [$ff88]
    pop de
    ld [hl], b
    dec h
    nop
    rrca
    inc hl
    add a
    inc hl
    ld bc, $2920
    ld c, $00
    rst $38
    inc [hl]
    ld [$3049], sp
    sub c

jr_01c_6d49:
    ld h, b
    xor [hl]
    ld b, b
    rst $38
    ld a, [hl-]
    ret nz

    inc d
    ldh [rNR50], a
    ret nz

    jp $ff42


    add a
    ld b, $86
    add h
    cp $f0
    ldh a, [c]
    nop
    call Call_01c_6205
    dec h
    dec bc
    inc b
    ldh [rNR30], a
    ld [hl+], a
    nop
    call nz, $ef03
    cp [hl]
    ld b, c
    ld b, h
    dec sp
    ld sp, $3f29
    ret nz

    ld e, a
    rst $38
    and b
    sbc a
    ld h, b
    rra
    ldh [rNR34], a
    ldh [$ff0d], a
    ld [hl], a
    ldh a, [$ff90]
    ld h, b
    ld hl, $a000
    ld b, b
    and b
    ldh a, [rNR10]
    pop hl
    ret nz

    ret nz

    dec hl
    rrca
    ld c, $61
    inc hl
    ld b, e
    inc b
    dec b
    ld [bc], a
    dec c
    rst $38
    ld [bc], a
    ld b, h
    add b
    adc b
    nop
    adc b
    nop
    rst $08
    rst $38
    rlca
    rst $08
    rlca
    rst $18
    rrca
    ld e, a
    adc a
    ld e, a
    ei
    adc a
    ld [$2ba2], sp
    stop
    ldh a, [$ffe0]
    pop hl
    rst $38
    ret nz

    ldh [c], a

jr_01c_6db4:
    pop bc
    db $e4
    jp Jump_000_1f20


    db $10
    rst $38
    rrca
    inc d
    dec bc
    inc h
    dec de
    ld b, h
    dec sp
    add e
    rst $38
    ld a, h
    ld b, $f9
    inc b
    ei
    dec c
    ldh a, [$ff0b]
    ei
    ldh a, [$ff0a]
    jr nz, jr_01c_6dd1

jr_01c_6dd1:
    add h
    ld a, b
    inc b
    ld hl, sp+$04
    rst $20
    ld hl, sp+$72
    adc h
    cpl
    ld b, $69
    nop
    rst $38
    nop
    add hl, bc
    rst $38
    ld b, $19
    ld b, $13
    inc c
    rla
    ld a, [bc]
    rrca

jr_01c_6dea:
    ld l, a
    inc bc
    rlca
    ld bc, $c203
    ld a, [bc]
    jr nc, jr_01c_6db4

    jr nz, jr_01c_6df5

jr_01c_6df5:
    rst $38
    rst $08
    xor a
    ld d, b
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rst $38
    nop
    add sp, $07
    or b
    ld c, a
    and b
    ld e, a
    ldh [rIE], a
    rra
    jr nz, jr_01c_6dea

    db $10
    rst $28
    db $10
    rst $28
    rst $38
    db $fd
    nop
    ld b, c
    jr z, jr_01c_6e28

    db $ec
    inc hl
    call c, $dd23
    cp $01
    scf
    rst $38
    nop
    ld a, d
    or h
    db $fd
    ld a, d
    db $fd
    rst $38
    ld a, [$f8fe]

jr_01c_6e28:
    db $fc
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld bc, $fa40
    scf
    jp nc, Jump_000_0034

    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_6eb2:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_6eba

jr_01c_6eba:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_6efa

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_6efa:
    jr c, jr_01c_6eb2

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_6f4f

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_01c_6f4f:
    ld e, $00
    ld bc, $3f49
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
    rla
    nop
    ldh a, [$ff03]
    ld hl, sp+$2f
    ld bc, $001f
    pop hl
    nop
    ld bc, $0200
    ld bc, $f71c
    inc bc
    ld h, c
    rra
    and c
    ld bc, $003c
    ld b, [hl]
    jr c, @+$01

    adc e
    ld [hl], h
    add hl, hl
    or $fa
    ld h, l
    ld a, [$fe65]
    and l
    ld [bc], a
    add b
    nop
    ret nz

    nop
    ld hl, sp+$00
    cp $f8
    sbc a
    inc bc
    rra
    nop
    xor a
    dec b
    ld bc, $0103
    inc b
    inc bc
    rst $38
    rlca

Jump_01c_6fc3:
    ld [bc], a
    dec b
    inc bc
    ld a, [bc]
    dec b
    sub l
    ld a, e
    rst $38
    xor [hl]
    pop de
    pop de
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    rst $30
    ld b, b
    add b
    ret nz

    ld h, b
    dec b
    cp e
    ld h, h
    ld a, a
    and b
    rst $28
    rst $08
    jr nc, jr_01c_7060

    rlca
    add l
    inc bc
    ld h, c
    sbc [hl]
    rst $30
    rst $38
    ld [$f3fc], sp
    db $fc
    ei
    rst $38
    ld hl, sp+$7f
    cp a
    ld a, b
    ld a, h
    ld a, e
    ld a, a
    ld a, b
    add b
    and b
    rlca
    ld b, b
    rst $38
    add b
    ldh [rP1], a
    and b
    ld b, b
    db $10
    ldh [$ff30], a
    di
    ret nz

    ld hl, sp-$01
    dec b
    inc a
    nop
    inc de
    inc c
    dec h
    ld e, $ff
    ld a, [hl+]
    inc d
    ld h, $18
    ld [hl-], a
    inc c
    ld [de], a
    inc c
    xor a
    ld a, [bc]
    inc b
    dec bc
    inc b
    jr nz, jr_01c_7020

    inc bc
    ld h, h

jr_01c_7020:
    ld [bc], a
    ld b, $6f
    ldh a, [rSB]
    inc c
    ldh a, [rNR41]
    inc bc
    ld c, $00
    ld h, c
    nop
    rst $30
    nop
    nop
    rlca
    db $10
    dec c
    nop
    rra
    ld e, $0f
    cp $16
    nop
    rra
    inc bc
    db $e3
    inc e
    inc d
    add sp, -$72
    rst $38
    ld [hl], b
    di
    inc c
    rst $00
    cp b
    rst $38
    add b
    db $ed
    rra

jr_01c_704b:
    sub d
    pop bc
    cp [hl]
    di
    adc h
    push hl
    rrca
    add c
    ld [$001f], sp
    rst $38
    nop
    nop
    ld e, $01
    ld e, $0d
    ccf
    ld [de], a
    rst $38

jr_01c_7060:
    ld a, $14
    inc a
    jr jr_01c_70a1

    jr jr_01c_7083

    ld [$1cff], sp
    ld [$fc02], sp
    ld a, c
    add [hl]
    add [hl]
    ld bc, $017d
    sub b
    ld [bc], a
    ld h, [hl]
    nop
    ld b, $00
    jr nz, jr_01c_704b

    rlca
    rst $18
    inc b
    inc bc
    adc c
    ld b, $8e
    ld [hl], d

jr_01c_7083:
    ld [$0003], sp
    rst $38
    inc c
    inc c
    nop
    rst $38
    ld a, b
    add a
    db $fc
    ld a, e
    cp a
    rlca
    inc b
    rlca
    rlca
    ccf
    daa
    jr nz, jr_01c_709f

    rrca
    rst $38
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a

jr_01c_709f:
    adc [hl]
    db $fd

jr_01c_70a1:
    ld d, c
    rst $38
    rst $38
    adc l
    rst $38
    rst $10
    db $fd
    db $dd
    db $fd
    ret


    db $fc
    add hl, bc
    rlca
    ld c, a
    rlca
    nop
    nop
    inc c
    nop
    inc d
    ld [$1eff], sp
    ld [$1a2d], sp
    ld e, b
    ccf
    sub c
    ld a, a
    rst $38
    ld e, e
    scf
    ld l, $17
    ld b, c
    nop
    ld [bc], a
    nop

jr_01c_70c8:
    rst $38
    rrca
    nop
    ld d, $0f
    rst $20
    jr jr_01c_70c8

    nop
    rst $38
    ret nc

    jr nz, @-$6d

    ld h, b
    ld c, $0a
    rrca
    dec c
    rst $38
    rra
    db $10
    ldh a, [c]
    dec c
    ld c, a
    ldh a, [rIE]
    rrca
    cp a
    rlca
    dec b
    rst $38
    inc bc
    rrca
    rlca
    ld de, rJOYP
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    cp $81
    rst $30
    rst $38
    adc b
    db $fd
    ret z

    ei
    add d

Call_01c_70fc:
    cp $0c
    db $fc
    rst $38
    nop
    sbc $20
    rst $28
    db $10
    ld h, [hl]
    sbc b
    inc [hl]
    pop af
    ret z

    cpl
    dec c
    daa
    ld hl, $20c2
    rrca
    jr z, jr_01c_7132

    ld [hl], h
    rst $38
    dec de
    ld l, b
    scf
    sbc e
    ld h, l
    db $fd
    inc bc
    inc a
    rst $38
    inc bc
    rlca
    nop
    ret c

    ld h, b
    ld e, h
    ldh [$ff97], a
    rst $38
    add sp, -$47
    adc $2d
    jp c, $9a6d

    ld h, l
    rst $30
    sbc d
    push hl

jr_01c_7132:
    ld a, [de]
    ret nz

    dec b
    ld b, $07
    ld hl, sp+$26
    rst $38
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $79
    db $ec
    ld [hl], e
    db $ec
    rst $38
    ld [hl], e
    di
    inc c
    reti


    ld h, $c8
    scf
    call z, $33ff
    and $19
    ld h, [hl]
    sbc c
    ld h, a
    sbc b
    ld l, a
    rst $38
    sub b
    inc a
    ret nz

    sbc h
    ld h, b
    adc $30
    or $0d
    ld [$0e60], sp
    add b
    ld hl, sp+$40
    inc h
    add a
    ld b, $cf
    dec c
    pop hl
    nop
    rst $38
    ld [bc], a
    ld bc, $0307
    dec bc
    rlca
    rla
    rrca
    rst $38
    ld de, $2e0e
    rra
    cpl
    rra
    ld l, $1f
    rst $38
    ld a, a
    add b
    and a
    ret nz

    pop de
    ldh [$ffd1], a
    ldh [rIE], a
    adc b
    ld [hl], b
    ld c, b
    or b
    xor b
    ret nc

    ccf
    ret nz

    rst $38
    cp $61
    cp a
    ld h, b
    sbc a
    ld h, e
    rst $18
    daa
    rst $38
    rst $18
    ld l, $ff
    ld e, [hl]
    rst $38
    inc a
    cp l
    nop
    rst $38
    cp $01
    call nz, $8b03
    rlca
    adc e
    rlca
    rst $38
    ld de, $1f0f
    nop
    ld [hl-], a
    ld bc, $0049
    rst $38
    jr nz, @-$3e

    db $10
    ldh [$ff08], a
    ldh a, [$ffc4]
    ld hl, sp-$01
    db $e4
    ld hl, sp-$7e
    ld a, h
    ld a, d
    db $f4
    sub $38
    db $f4
    cpl
    ld b, $4b
    nop
    cpl
    ld h, b
    ld b, $27
    ld e, $25
    ld e, $77
    dec d
    ld c, $13
    jr nz, jr_01c_71fa

    inc d
    ld [$a0c1], sp
    ld l, $ff
    ld bc, $0300
    ld bc, $03a7
    ld h, a
    inc bc
    rst $38
    ccf
    ld [bc], a
    ld a, a
    jr nc, @-$3d

    nop
    ld hl, rJOYP
    rst $20
    nop
    db $fc
    ret nz

    db $fc
    ldh a, [$fffc]
    ld a, b
    rst $38
    rst $38
    db $fc

jr_01c_71fa:
    cp $bc
    push bc
    nop
    ld [hl+], a
    ld bc, $12ff
    ld bc, $038c
    adc b
    rlca
    pop af
    rrca
    ld a, a
    and c
    rra
    rla
    rrca
    ld [de], a
    db $fc
    ld a, [$0020]
    rst $38
    ld a, d
    db $fc
    inc [hl]
    ld hl, sp+$34
    ld hl, sp-$18
    ldh a, [$ffd1]
    ret z

    and e
    dec h
    rra
    nop
    or h
    nop
    rst $38
    ldh [rNR31], a
    jr jr_01c_7229

jr_01c_7229:
    db $fd
    jr c, jr_01c_724c

    nop
    jr z, jr_01c_723f

    jr z, @+$12

    inc h
    jr @+$01

    rst $38
    nop
    ld a, a
    inc a
    ld a, a
    dec sp
    ld a, a
    dec hl
    ld a, a
    ld a, a
    dec l

jr_01c_723f:
    ld a, a

jr_01c_7240:
    ld [hl], $3f
    jr jr_01c_727d

    ld b, c
    ld a, [de]
    rst $38
    ld l, h
    cp $5c
    rst $38
    sub [hl]

jr_01c_724c:
    rst $38
    ld d, $5f
    rst $38
    and [hl]
    ld d, a
    xor b
    ld d, l
    xor b
    rst $38
    nop
    inc de
    rst $38
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    inc b
    rst $38
    inc bc
    dec b
    ld [bc], a
    ld b, $01
    rst $38
    nop
    ret c

    rst $38
    ldh [$ff28], a
    ret nc

    jr z, jr_01c_7240

    ld c, b
    or b
    add h
    ccf
    ld a, b
    inc b
    ld hl, sp+$04
    ld hl, sp-$01
    ld c, $06
    nop

jr_01c_727d:
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_72fb:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_7303

jr_01c_7303:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_7343

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_7343:
    jr c, jr_01c_72fb

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_7398

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38

jr_01c_7369:
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_01c_7398:
    ld e, $00
    ld bc, $3f49
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

jr_01c_73c9:
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    ldh a, [$ff03]
    add sp, $2f
    ld bc, $001f
    pop hl
    nop
    ld bc, $0020
    ld [bc], a
    ld bc, rSC
    ld bc, $003f
    ld b, b
    jr nz, jr_01c_7369

    ld h, c
    add b
    rst $18
    ld b, c
    nop
    jp $8200


    jr nz, jr_01c_73f3

jr_01c_73f3:
    inc b
    ldh [rIE], a
    nop
    ld e, $a0
    ld bc, $00be
    ccf
    nop
    push af
    ld a, a
    ld [hl+], a
    nop
    rst $38
    and c
    inc bc
    ret nz

    nop
    jr nc, jr_01c_73c9

    rst $38
    ld [$04f0], sp
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    db $fc
    xor a
    inc b
    rra
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    rst $38
    jr nc, @+$12

    jr nz, jr_01c_7422

jr_01c_7422:
    ld b, b
    nop
    inc b
    inc bc
    rst $38
    inc b
    ld [bc], a
    dec bc
    inc b
    rst $08
    inc bc
    db $fc
    call z, $f0df
    ldh a, [$ff60]
    ld h, b
    ld b, b
    db $10
    ld bc, $007e
    cpl
    rst $38
    ld a, [hl]
    add e
    add e
    ld b, c
    inc bc
    inc bc
    add b
    ld [bc], a
    jr nz, jr_01c_744b

    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    cp a

jr_01c_744b:
    di
    call z, $9f7c
    ld [hl], b
    jr nc, @+$22

    add b
    nop
    ld b, c
    ld b, $81
    ld b, $c1
    ld a, a
    ld a, $61
    ld e, [hl]
    ld sp, $192e
    ld d, $cf
    dec b
    ldh a, [c]
    ld c, c
    inc c
    ld [bc], a
    jr nz, @+$08

    ld hl, $2000
    nop
    ld hl, $bf00
    ld b, e
    ld bc, $0183
    inc bc
    ld bc, $0261
    rlca
    rst $38
    nop
    rst $38
    rlca
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    ld a, [hl]
    stop
    ccf
    nop
    rst $38
    ld e, $e0
    ld h, b
    rst $00
    inc bc
    rst $38
    adc $00
    rst $18
    nop
    rst $38
    ret nz

    ccf
    ld a, $df
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0010
    add hl, de
    ld d, $ff
    dec e
    ld [de], a
    sbc a
    inc d
    sbc a
    ld a, [de]
    adc a
    dec bc
    ld e, a
    add a
    rlca
    add e
    inc bc
    add c
    ld d, [hl]
    ld b, $80
    inc h
    nop
    ld [hl], c
    ld [bc], a
    ld [hl+], a
    nop
    pop hl
    ld [de], a
    or d
    dec b
    nop
    rlca
    inc bc
    daa
    nop
    rst $08
    rst $00
    inc bc
    ld b, a
    inc bc
    ld b, c
    ld b, $81
    ld b, $c0
    ret nz

    rst $18
    db $fc
    ret nz

    jp $8080


    ld e, h
    ld a, [bc]
    add c
    nop
    db $fc
    ld b, c
    ld b, $81

Jump_01c_74da:
    ld b, $03
    inc bc
    ccf
    inc bc
    jp $fd01


    ld bc, $0582
    ret nz

    add b
    ret nz

    add b
    ldh a, [$ffc0]
    ld d, a
    ldh [$ffc0], a
    add sp, $20
    nop
    ret nz

    ldh [c], a
    dec bc
    db $10
    inc h
    nop
    push hl
    jr nz, @-$5c

    add hl, de
    inc bc
    add b
    inc c
    ld b, e
    nop
    ld bc, $e300
    ld a, a
    nop
    di
    ret nz

    ld [hl], e
    ld hl, $4173
    ld b, b
    nop
    db $fd
    ld h, c
    add c
    nop
    inc e
    nop
    rst $38
    inc e
    rst $38
    rst $38
    rst $18
    rst $38
    ldh [rNR44], a
    nop
    inc hl
    ld h, b
    inc bc
    rrca
    nop
    rst $38
    ld b, d
    nop
    inc h
    nop
    rst $20
    nop
    rst $20
    inc h
    db $fd
    ld h, [hl]
    jr nz, jr_01c_752e

jr_01c_752e:
    rst $20
    ld h, [hl]
    rst $20
    rst $20
    jr c, jr_01c_7534

jr_01c_7534:
    ei
    rst $38
    jr c, jr_01c_7538

jr_01c_7538:
    ld [bc], a
    rlca
    call nz, $c400
    nop
    rst $38
    ld [$f000], sp
    nop
    rlc b
    rst $08
    inc bc
    xor a
    adc $84
    adc $82
    ld b, b
    nop
    add [hl]
    add c
    nop
    ld b, b
    db $e4
    inc b
    ld [$0043], sp
    add b
    ld h, h
    dec c
    rst $00
    dec d
    or e
    and c
    ei
    rst $38
    ld h, c
    ld b, a
    inc bc
    ld l, $02
    ld [hl], $02
    ld l, [hl]
    ld a, a
    ld [bc], a
    rla
    inc bc
    dec bc
    ld bc, $1f1f
    rst $00
    ld d, $ff
    inc b
    nop
    adc a
    adc b
    db $e3
    db $e3
    jp $fd81


    add c
    ret nc

    ld [hl+], a
    inc a

jr_01c_7580:
    nop
    jr jr_01c_7583

jr_01c_7583:
    ld a, [hl]
    jr @-$2f

    rst $38
    ld a, [hl]
    ld hl, sp-$08
    dec b
    inc de
    ld h, c
    jr jr_01c_7580

    ld de, $ddff
    add l
    rst $00
    add d
    or $c0
    ld l, b
    ld b, b
    rra
    ld [hl], h
    ld b, b
    ld l, [hl]
    ld b, b
    ld hl, sp+$31
    jr @+$81

    dec de
    adc h

jr_01c_75a4:
    jr z, jr_01c_75a4

    add c

jr_01c_75a7:
    jr nz, jr_01c_75ad

    inc bc
    dec bc
    rlca
    inc d

jr_01c_75ad:
    inc c
    jr nz, jr_01c_75a7

    inc e
    dec h
    dec de
    ret nz

    dec c
    ccf
    ccf
    rst $08
    xor a
    ccf
    ret nz

    and l
    ret nz

    call nz, Call_01c_4880
    jr nz, jr_01c_75c2

jr_01c_75c2:
    ret nz

    ld c, $fe
    inc sp
    nop
    nop
    cp $7c
    cp $7c
    ld a, [hl]
    inc a
    cp $c0
    rrca
    db $fc
    db $fc
    di
    db $f4
    inc bc
    and h
    inc bc
    rst $20
    ld [hl+], a
    ld bc, $2032
    nop
    ld hl, $c017
    nop
    jr nz, @+$39

    ret nz

    db $10
    ldh [rNR42], a
    ld a, [hl+]
    inc h
    ret c

    cpl
    ld b, $2b
    cpl
    rst $38
    ld [hl+], a
    dec e
    ld b, e
    dec a
    ld b, e
    dec a
    add h
    ld a, d
    rst $38
    add [hl]
    ld a, d
    ld b, l
    ld sp, hl
    inc b
    cp c
    adc d
    or a
    rst $38
    ld c, h
    add b
    ld c, h
    add b
    adc [hl]
    inc b
    sbc d
    inc c
    rst $38
    sub l
    ld c, $9b
    ld c, $95
    rrca
    sbc [hl]
    inc bc
    rst $38
    ld a, h
    jr c, @+$7e

    jr c, jr_01c_7651

    db $10
    jr nc, jr_01c_761c

jr_01c_761c:
    rst $38
    ld de, $0a00
    ld bc, $0385
    jp nz, $ff81

    ld d, d
    ld hl, $2172
    pop de
    ld h, b
    xor c
    ld [hl], b
    rst $38
    ld e, c
    ldh a, [$ffa9]
    ldh a, [$ff59]
    ldh a, [$ffb8]
    ldh [rIE], a
    ld b, h
    cp b
    ld b, d
    cp h
    ld b, d
    cp h
    ld hl, $ffde
    ld hl, $20de
    rst $18
    jr nc, @-$2f

    sbc h
    ld h, e
    db $ec
    add a
    ld b, $21
    inc hl
    ld b, b
    add b
    pop bc

jr_01c_7651:
    dec de
    rlca
    inc bc
    dec b
    rst $28
    inc bc
    inc b
    inc bc
    ld [bc], a
    ldh [rNR34], a
    rst $38
    nop
    adc c
    rst $38
    or $29
    ld [hl], $4d
    halt
    dec c
    halt
    or l
    ei
    xor $51
    jr nz, jr_01c_766d

jr_01c_766d:
    rst $38

jr_01c_766e:
    nop
    inc de
    inc c
    jr nc, @+$01

    rrca
    inc a
    inc bc
    jr nz, jr_01c_7697

    inc hl
    inc e
    jr nz, @-$17

    rra
    jr nc, @+$11

    ret nc

    cpl
    ld [hl+], a
    jr nc, @+$05

    db $fc
    ret nz

    ld a, [$2a90]
    nop
    ld h, b
    ld c, $e4
    jr @+$06

    ld hl, sp+$1c
    ld sp, hl
    ldh [$ff61], a
    nop
    add c
    nop

jr_01c_7697:
    rst $38
    nop
    sbc b
    ld h, a
    sbc [hl]
    ld a, a
    ld h, c
    sbc b
    ld h, a
    sub b
    ld l, a
    adc b
    ld [hl], a
    ld hl, $bd00
    rst $38
    jr nz, @+$08

    ld b, b
    add b
    jr nz, jr_01c_766e

    ld hl, $4000
    ld b, $e0
    ld h, $ff
    nop
    nop
    inc b
    rst $38
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    rst $38
    ld bc, $a007
    and c
    and d
    and e
    and h
    and l
    rst $28
    and [hl]
    dec bc
    ld bc, $0b01
    ld [bc], a
    ld bc, $0409
    rst $38
    ld a, [bc]
    ld bc, $0801
    nop
    and a
    xor b
    xor c
    cp a
    xor d
    xor e
    xor h
    xor l
    nop
    rrca
    dec bc
    ld [bc], a
    inc c
    rst $30
    dec c
    ld bc, $5004
    ld [bc], a
    ld c, $00
    xor [hl]
    xor a
    rst $18
    or b
    or c
    or d
    or e
    or h
    dec c
    ld [bc], a
    db $10
    ld de, $02fe
    ld [bc], a
    ld [de], a
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, a
    cp d
    cp e
    nop
    inc de
    dec bc
    ld b, $14
    dec d
    ld [bc], a
    inc b
    rst $38
    ld d, $00
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    sub a
    jp nz, $1700

    ld a, [bc]
    ld [$1018], sp
    ld [$0601], sp
    add hl, de
    rst $38
    nop
    jp $c5c4


    add $c7
    ret z

    ret


    cp e
    nop
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e

jr_01c_7735:
    dec e
    stop
    ld e, $ff
    rra
    jr nz, jr_01c_773d

jr_01c_773d:
    jp z, $cccb

    call $dfce
    rst $08
    ret nc

    ld hl, $1d22
    add hl, bc
    ld c, $23
    inc h
    ei
    dec h
    ld h, $10
    nop
    daa
    jr z, jr_01c_777d

    pop de
    jp nc, $d3ff

    call nc, $d6d5
    rst $10
    ld a, [hl+]
    dec hl
    ld h, $de
    add hl, bc
    db $10
    inc l
    dec l
    ld l, $2f
    ld de, $3000
    ld sp, $d8ff
    reti


    jp c, $dcdb

    db $dd
    sbc $32
    db $dd
    inc sp
    ld a, [bc]
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $1c
    nop
    scf

jr_01c_777d:
    jr c, jr_01c_7735

    add hl, bc
    inc d
    add hl, sp
    ld a, [hl-]
    dec l
    dec d
    inc a
    dec a
    add hl, bc
    ld d, $3e
    ld e, d
    ccf
    rla
    ld b, b
    add hl, bc
    jr jr_01c_77d2

    ld b, d
    ld e, $00
    ld b, e
    add hl, bc
    ld a, [de]
    db $eb
    ld b, h
    ld b, l
    ld e, $00
    ld b, [hl]
    add hl, bc
    inc e
    ld c, d
    nop
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    pop af
    ld c, e
    dec bc
    ld [bc], a
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld b, a
    ld c, b

jr_01c_77d2:
    ld e, $00
    ld bc, $3f49
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
    rla
    nop
    nop
    inc b
    rst $28
    nop
    ld bc, $0302
    stop
    and b
    and c
    and d
    or a
    and e
    and h
    and l
    and c
    nop
    inc b
    dec b
    inc c
    ld [bc], a
    ld b, $7e
    ld bc, $a602
    and a
    xor b
    xor c
    xor d
    xor e
    and c
    ld [bc], a
    db $fd
    rlca
    dec bc
    ld [bc], a
    ld [$0a09], sp
    inc bc
    dec bc
    inc c
    ld a, a
    dec c
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    sub b
    nop
    rst $28
    inc bc
    ld c, $0f
    ld [$05f9], sp
    db $10
    db $10
    ld de, $03ff
    ld [de], a
    inc de
    inc d
    or d
    or e
    or h
    or l
    ld a, e
    or [hl]
    or a
    sub b
    nop
    inc bc
    dec d
    db $10
    db $10
    ld sp, hl
    rlca
    rst $38
    ld d, $17
    jr jr_01c_787f

    ld a, [de]
    dec de
    inc e
    cp b
    rst $38
    cp c
    cp d
    cp e
    cp h
    cp l
    ld l, a
    dec de

jr_01c_7872:
    inc e
    rst $28
    dec e
    ld e, $1f
    jr nz, jr_01c_7872

    add hl, bc
    ld hl, $2322
    rst $38
    inc h

jr_01c_787f:
    dec h
    dec de
    inc e
    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    jp nz, Jump_01c_6fc3

    dec de
    ld h, $27
    jr z, @+$2b

    db $fd
    ld a, [hl+]
    ld sp, hl
    dec bc
    dec hl
    inc l
    dec l
    ld l, $2f
    dec de
    rst $38
    inc e
    call nz, $c6c5
    rst $00
    ret z

    ret


    ld l, a
    cp a
    dec de
    jr nc, jr_01c_78d7

    ld [hl-], a
    inc sp
    inc [hl]
    ld sp, hl
    dec c
    inc bc
    rst $38
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_78eb

    ld a, [hl-]
    jp z, $efcb

    call z, $cecd
    rst $08
    sub b
    nop
    dec sp
    inc a
    dec a
    db $fd
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld b, h
    ld b, d
    rst $28
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_01c_78d7:
    ld a, [bc]
    ld [bc], a
    ld c, a
    ld c, h
    ld c, e
    db $fd
    ld c, d
    stop
    sub $d7
    ret c

    reti


    jp c, $dddb

    ld c, c
    stop
    ld c, l

jr_01c_78eb:
    ld c, [hl]
    ld [hl], b
    ld sp, hl
    inc de
    ld d, b
    ld d, c
    rst $30
    ld d, d
    ld d, e
    ld d, h
    jr jr_01c_78f7

jr_01c_78f7:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    cp [hl]
    ld sp, hl
    dec d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    jr jr_01c_7905

jr_01c_7905:
    ld e, [hl]
    or a
    ld e, a
    ld h, b
    ld h, c
    ld sp, hl
    rla
    ld h, d
    ld h, e
    ld e, $00
    ld h, h
    sub $f9
    add hl, de
    ld h, l
    ld h, [hl]
    ld e, $00
    ld h, a
    ld sp, hl
    dec de
    ld l, e
    inc bc
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    rst $38
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    db $e3
    inc bc
    ld l, h
    dec bc
    ld [bc], a
    ld e, $00
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    rst $38
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $18
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld l, b
    ld l, c
    ld [bc], a
    ld e, $00
    ld l, d
    ld l, a
    inc h
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
    rla
    nop
    add b
    ld [$ff03], sp
    jr jr_01c_79be

    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    jp $ef00


    dec d
    rra
    nop
    ld c, a
    rla
    nop
    rrca

jr_01c_79be:
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    nop
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    nop
    rra
    nop
    xor a
    inc bc
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rra
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    xor a
    ld [bc], a
    rra
    nop
    rrca
    inc b
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    nop
    rra
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    nop
    rra
    nop
    xor a
    inc bc
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rra
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rra
    nop
    rrca
    inc b
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ldh [$ff2f], a
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld b, l
    daa
    rst $30
    ld a, [hl]
    pop af
    rst $38
    ld d, l
    add sp, $24
    ccf
    ld b, a
    or l
    dec e
    adc $ff
    ld [$0089], sp
    add hl, de
    ld de, $3e5f
    sub [hl]
    rst $38
    ld [bc], a
    ld [hl], c
    ld b, a
    xor h
    ld [hl], $66
    dec e
    rst $38
    rst $38
    ld a, a
    ld a, e
    ld a, a
    nop
    nop
    or b
    ld e, [hl]
    daa
    rst $30
    ld c, d
    rst $30
    ld a, [hl]
    dec b
    ld [bc], a
    ld e, d
    ld l, e
    ld d, d
    ld c, d
    ei
    xor l
    dec [hl]
    add hl, bc
    ld [bc], a
    nop
    nop
    dec sp
    dec hl
    rst $38
    rst $38
    rra
    sbc a
    ld b, a
    ld d, l
    ld [de], a
    ld c, l
    add hl, bc
    and a
    nop
    rrca
    inc b
    rra
    nop
    ld a, [de]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
