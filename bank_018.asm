; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    jr jr_018_4002

jr_018_4002:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    db $18, $e0
    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    inc de
    inc c
    inc a
    inc de
    ccf
    nop
    cp $f0
    cp $b4
    cp $b4
    cp $b0
    ld sp, hl
    and $f6
    ld [$e41e], sp
    cp $00
    ld a, a
    ld [hl-], a
    ld a, d
    dec [hl]
    jr c, @+$09

    dec c
    ld [bc], a
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    ld a, a
    and [hl]
    cpl
    sub $0e
    ldh a, [$ffd8]
    jr nz, @+$7e

    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $3f
    inc bc
    ld [hl], e
    inc a
    ld a, h
    inc sp
    ccf
    nop
    cp $f0
    cp $b4
    cp $b4

jr_018_4077:
    cp $b0
    ld sp, hl
    and $f6
    ld [$e41e], sp
    cp $00
    rrca
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    ld a, b
    and b
    jr z, @-$2e

    jr jr_018_4077

    db $e4
    jr @+$60

    jr nz, @+$80

    nop
    inc a
    nop
    jr jr_018_40a1

jr_018_40a1:
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    inc de
    inc c
    inc a
    inc de
    ccf
    nop
    cp $f0
    cp $b4
    cp $b4

jr_018_40b7:
    cp $b0
    cp $e0
    rst $38
    ld b, $1f
    and $fe
    nop
    rrca
    ld [bc], a
    ld a, [bc]
    dec b
    ld c, $01
    inc de
    inc c
    dec a
    ld [bc], a
    ccf
    nop
    ld e, $00
    inc c
    nop
    ld a, b
    and b
    jr z, @-$2e

    ld [$c8f0], sp
    jr nc, jr_018_4156

    nop
    ld a, h
    nop
    jr c, jr_018_40df

jr_018_40df:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_40b7

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [rSB]
    cp $c1
    ld a, $ff
    inc bc
    rst $38
    dec bc
    rst $18
    dec bc
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    inc c
    inc bc
    add hl, bc
    ld b, $fe
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    ld [hl], h
    adc b
    sbc b
    ld h, b
    rrca
    inc b
    rrca
    inc bc
    dec bc
    rlca
    dec b
    ld [bc], a
    rrca
    nop
    rra
    nop
    rra
    nop
    inc bc
    nop
    db $10
    ldh [$ff90], a
    ld h, b
    sub b
    ld h, b
    jr nc, @-$3e

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    inc bc
    rst $38
    dec bc
    rst $18
    dec bc
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    inc c
    inc bc
    add hl, bc
    ld b, $fe
    nop
    db $fc
    nop
    db $fc

jr_018_4156:
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    ld [hl], h
    adc b
    sbc b
    ld h, b
    rrca
    nop
    rrca
    ld b, $0f
    ld b, $1b
    inc b
    rla
    ld [$003f], sp
    ccf
    nop
    ld b, $00
    sub b
    ld h, b
    ld d, b
    and b

jr_018_4175:
    sbc b
    ld h, b
    sbc h
    ld h, b
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    dec bc
    rst $18
    dec bc
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    inc c
    inc bc
    add hl, bc
    ld b, $fe
    nop
    db $fc
    nop
    db $fc
    ld b, b

jr_018_4197:
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    ld [hl], h
    adc b
    sbc b
    ld h, b
    rrca
    inc b
    rrca

jr_018_41a4:
    nop
    inc sp
    dec c
    ld a, e
    dec b
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    ldh a, [rP1]
    jr nc, jr_018_4175

    ret nc

    and b
    ld hl, sp-$80
    db $fc
    nop
    ld e, h
    jr nz, jr_018_4156

    ld h, b
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    jr jr_018_41ce

    jr nz, jr_018_41e8

    jr nz, jr_018_41ea

    ld [hl], b
    rrca
    sbc b

jr_018_41ce:
    ld h, a

jr_018_41cf:
    add b
    ld a, a
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4197

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$fffe]
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a

jr_018_41e4:
    jr nz, @+$81

    jr nz, @+$81

jr_018_41e8:
    nop
    sbc a

jr_018_41ea:
    ld h, b
    ld c, a
    jr nc, jr_018_421e

    rrca
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_018_41a4

    ld d, b
    jr z, jr_018_41cf

    call c, $fe20
    ld h, l
    db $f4
    ld l, e
    ld [hl], b
    rrca
    dec de
    inc b
    ld a, $00
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_4211

jr_018_4211:
    cp $4c
    ld e, [hl]
    xor h
    inc e
    ldh [$ffb0], a
    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    ld a, b

jr_018_421e:
    nop
    jr nc, jr_018_4221

jr_018_4221:
    rst $38
    nop
    ld a, a

jr_018_4224:
    jr nz, jr_018_42a5

    jr nz, jr_018_42a7

    nop
    sbc a
    ld h, b
    ld c, a
    jr nc, jr_018_429e

    rrca
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_018_41e4

    ld d, b
    inc l
    ret nc

    call c, $fe28
    ld h, l
    ld [hl], h
    dec bc
    db $10
    rrca
    inc sp
    inc c
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_424f

jr_018_424f:
    nop
    nop
    ld hl, sp+$40
    ld d, b
    and b
    db $10
    ldh [rSVBK], a
    add b
    sbc b
    ld h, b
    add sp, $10
    ld a, b
    nop
    jr nc, jr_018_4261

jr_018_4261:
    rst $38
    nop
    ld a, a
    jr nz, jr_018_42e5

    jr nz, jr_018_42e7

    nop
    sbc a
    ld h, b
    ld c, a
    jr nc, @+$72

    rrca
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_018_4224

    ld d, b
    inc l
    ret nc

    sbc $2c
    ld a, $05
    inc d
    dec bc
    db $10
    rrca
    rra
    nop
    ld h, $18
    ld a, $00
    inc a
    nop
    jr jr_018_4291

jr_018_4291:
    cp $4c
    ld e, h
    and b

jr_018_4295:
    db $10
    ldh [$ff98], a
    ld h, b
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b

jr_018_429e:
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_018_42a5:
    db $10
    rrca

jr_018_42a7:
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ld l, e
    inc d
    db $fc
    inc bc
    ldh [rP1], a
    jr jr_018_4295

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    rst $38
    nop
    rst $38
    ld b, $7f
    ld b, $2f
    ld b, $17
    dec bc
    inc de
    inc c
    jr c, jr_018_42d6

    ld a, a

jr_018_42d0:
    jr nc, jr_018_42d0

    nop
    cp $b4
    db $fd

jr_018_42d6:
    or d
    ld sp, hl
    or [hl]
    push af
    ld [$18e6], a
    ld c, $f0
    rst $38
    ld b, $7f
    ld [hl-], a
    ld a, [hl-]
    dec b

jr_018_42e5:
    dec c
    ld [bc], a

jr_018_42e7:
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    ld a, a
    and [hl]
    ld l, $d0
    ret c

    jr nz, jr_018_4374

    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    dec hl
    inc d
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    ld b, $3f
    ld b, $7f
    ld [hl], $7f
    inc sp
    inc sp
    inc c
    jr jr_018_4326

    rrca
    nop
    cp $00
    cp $b4
    db $fd

jr_018_4326:
    or d
    ld sp, hl
    or [hl]
    rst $30
    add sp, -$19
    ld a, [de]
    ld c, $f0
    ld hl, sp+$00
    rrca
    ld [bc], a
    ld a, [bc]
    dec b
    ld c, $01
    rrca
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, h
    cp b
    sbc h
    ld h, b
    cp h
    ld b, b
    ld a, h
    nop
    jr c, jr_018_434b

jr_018_434b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $3f
    ld b, $67
    dec de
    ld [hl], a
    jr z, jr_018_43d6

    rlca
    rrca
    nop
    cp $00
    cp $b4
    rst $38
    or b
    rst $38
    or [hl]
    rst $38
    and $e6
    jr @+$0e

    ldh a, [$fff8]
    nop
    ld de, $1e0e

jr_018_4374:
    ld bc, $011e
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    and b
    xor b
    ld d, b
    ld hl, sp+$00
    ld a, b
    nop
    ld [hl], b
    nop
    jr nc, jr_018_438d

jr_018_438d:
    nop
    nop
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $18
    dec bc
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0304
    cp $00
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    and h
    ld e, b
    ld a, d
    add h
    sbc h
    ld h, b
    ei
    ld b, h
    db $ed
    ld [de], a
    sbc a
    ld l, h
    ld e, a
    inc l
    ld l, [hl]
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, $00
    nop
    nop
    rlca
    nop
    jr jr_018_43ce

    jr nz, jr_018_43e8

    jr nz, jr_018_43ea

    jr c, jr_018_43d4

    ld h, h

jr_018_43ce:
    dec de
    rst $38
    nop
    nop
    nop
    add b

jr_018_43d4:
    nop
    ld h, b

jr_018_43d6:
    add b
    db $10
    ldh [$ff08], a
    ldh a, [rNR34]
    ldh [rSB], a
    cp $81
    ld a, [hl]
    rst $38
    ld d, $ff
    ld d, $7f
    ld d, $3f

jr_018_43e8:
    rra
    ccf

jr_018_43ea:
    rrca
    ld a, a
    jr nc, @+$7a

    scf
    ccf
    nop
    cp $00
    ld hl, sp+$00
    ld hl, sp-$80
    ldh a, [$ff80]
    db $ec
    db $10
    ld h, $d8
    ld e, a
    and [hl]
    cp a
    ld b, [hl]
    rlca
    nop
    rlca
    ld [bc], a
    ld a, [hl-]
    dec b
    ld c, a
    jr nc, jr_018_4480

    ld [$003e], sp
    inc c
    nop
    nop
    nop
    db $eb
    inc d
    ld e, $e0
    rla
    add sp, -$11
    db $10
    rra
    nop
    ld c, $00
    ld b, $00
    nop
    nop
    rst $38
    ld d, $ff
    ld d, $7f
    rla
    ccf
    rra
    ld a, a
    rrca
    rst $38
    ld h, b
    ldh a, [$ff6f]
    ld a, e
    inc b
    cp $00
    ld hl, sp+$00
    ld hl, sp-$80

jr_018_4437:
    cp $80
    and h
    ld e, b
    ld a, [hl]
    add b
    sbc a
    ld h, [hl]
    cp a
    ld b, [hl]
    ld c, $05
    ld a, h
    inc bc
    ld a, b
    rlca
    dec a
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    ei
    add h
    adc [hl]
    ld [hl], b
    ld a, [de]
    db $e4
    rst $30
    ld [$0817], sp
    ld e, $00
    inc e
    nop
    inc c
    nop
    nop

jr_018_4462:
    nop
    rlca
    nop

jr_018_4465:
    jr jr_018_446e

    jr nz, jr_018_4488

    jr nz, jr_018_448a

    ld [hl], b
    rrca
    sbc b

jr_018_446e:
    ld h, a
    add b
    ld a, a
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4437

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$fffe]
    nop
    ccf

jr_018_4480:
    ret nz

    rst $38
    nop
    ld a, a
    jr nz, jr_018_4505

    jr nz, @+$81

jr_018_4488:
    nop
    sbc a

jr_018_448a:
    ld h, b
    ld c, a
    jr nc, jr_018_44be

    rrca
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$f000]
    nop
    ret z

    jr nc, jr_018_44b6

    ldh [$ffdc], a
    jr nz, jr_018_4462

    nop
    jr nc, jr_018_4465

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$fffc]
    nop
    ld a, $c0
    rst $38
    nop
    ld a, a
    jr nz, jr_018_4533

    jr nz, @+$41

jr_018_44b6:
    nop
    ld e, a
    jr nz, jr_018_4521

    jr jr_018_452c

    rrca
    ld a, a

jr_018_44be:
    jr nc, jr_018_453f

jr_018_44c0:
    inc [hl]
    rst $38
    db $10
    rst $38
    db $10
    ld a, [$f000]
    nop
    sbc b
    ld h, b
    jr c, @-$2e

    ret c

    jr nz, jr_018_44c0

    ld b, b
    inc [hl]
    dec bc
    jr c, @+$09

    ccf
    nop
    ld e, $00
    dec c
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld d, b
    and b
    db $10
    ldh [$fff0], a
    nop
    ldh a, [rP1]
    ldh [rP1], a
    and b
    ld b, b
    and b
    ld b, b
    ret nz

    nop
    ld a, a
    jr nz, @+$81

    jr nz, jr_018_4535

    nop
    ld e, a
    jr nz, @+$69

    jr jr_018_456c

    cpl
    ld a, a
    nop
    rra
    inc b
    rst $38
    ld [$08ff], sp

jr_018_4505:
    ld a, [$f800]
    nop
    sbc h
    ld h, b
    ld a, $cc
    sbc $2c
    db $fc
    ld b, b
    inc d
    dec bc
    db $10
    rrca
    rla
    ld [$001e], sp
    dec bc
    inc b
    dec bc
    inc b
    rrca
    nop
    ld b, $00

jr_018_4521:
    ld e, b
    and b
    jr c, @-$3e

jr_018_4525:
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
    nop
    nop

jr_018_452c:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop

jr_018_4533:
    inc c
    inc bc

jr_018_4535:
    db $10
    rrca
    db $10
    rrca
    jr nz, jr_018_455a

    jr nz, jr_018_455c

    inc hl
    inc e

jr_018_453f:
    ld [hl], h
    dec bc
    ldh [rP1], a
    jr jr_018_4525

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, [hl]
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, $7f
    ld b, $5f

jr_018_455a:
    inc bc
    inc de

jr_018_455c:
    inc c
    add hl, de
    ld b, $3e
    ld bc, $04fe
    cp $04
    cp $b0
    rst $38
    or [hl]
    cp $e0
    db $e4

jr_018_456c:
    jr @-$2a

    jr z, jr_018_45ae

    ret nz

    ccf
    jr jr_018_45b1

    ld a, [de]
    ld e, $00
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
    cp $0c
    ld e, [hl]
    inc l
    inc a
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
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    inc de
    inc c
    jr c, @+$19

    ccf

jr_018_45a0:
    jr jr_018_45a0

    ldh a, [$fffe]
    or b
    cp $b4
    cp $b0
    ld sp, hl
    and $e6
    jr jr_018_45cc

jr_018_45ae:
    db $e4
    cp $0c

jr_018_45b1:
    ccf
    ld a, [de]
    ld a, [de]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    ld a, [hl]
    xor h
    inc l
    ret nc

    ld [$d8f0], sp
    jr nz, jr_018_4646

    nop
    ld a, [hl]

jr_018_45cc:
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld [hl], $ff
    ld [hl], $bf
    ld d, $3f
    inc de
    ccf
    jr jr_018_461c

    add hl, bc
    add hl, bc
    ld b, $ff
    ldh a, [rIE]
    or [hl]
    rst $38
    or [hl]
    cp $b4
    cp $e4
    cp $0c
    inc a
    ret z

    ret z

    jr nc, jr_018_4621

    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    ccf

jr_018_461c:
    nop
    ld a, $00
    inc e
    nop

jr_018_4621:
    ld a, b
    and b
    jr z, @-$2e

    ld [$d8f0], sp
    jr nz, jr_018_46a6

    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_463e

    jr nz, jr_018_4658

    jr nz, jr_018_465a

    jr nz, jr_018_465c

    ld l, h

jr_018_463e:
    inc de
    rst $30
    ld [$0000], sp
    add b
    nop
    ld h, b

jr_018_4646:
    add b
    db $10
    ldh [$ff0e], a
    ldh a, [rNR11]
    xor $01
    cp $c6
    jr c, @+$01

    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38

jr_018_4658:
    rra
    ld e, a

jr_018_465a:
    rrca
    rrca

jr_018_465c:
    nop
    inc b
    inc bc
    rrca
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    ldh [c], a
    inc e
    ld d, h
    xor b
    jr z, @-$2e

    rra
    dec c
    rra
    inc c
    rrca
    ld [bc], a
    ld b, $01
    rrca
    nop
    rrca
    nop
    ld bc, $0000
    nop
    sbc b
    ldh [$ffe8], a
    db $10
    ld c, b
    or b
    cp b
    ld b, b
    ld a, b
    add b
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    ld e, $01
    inc a
    dec de
    cp $00

jr_018_46a3:
    db $fc
    nop
    db $fc

jr_018_46a6:
    ld b, b

jr_018_46a7:
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    ld d, h
    xor b
    ld [$3ff0], sp
    dec de
    rra
    nop
    ld c, $05
    rrca
    nop
    dec c
    ld [bc], a
    rra
    nop
    ld e, $01
    inc bc
    nop
    jr jr_018_46a3

    add sp, $10
    db $10
    ldh [$ff90], a
    ld h, b
    ldh [rP1], a
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], e
    inc c
    rst $28
    ld de, $0000
    ret nz

    nop
    jr nc, jr_018_46a7

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [$ff81]
    ld a, [hl]
    pop bc
    cp [hl]
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, [de]
    ld e, a
    ld c, $0f
    ld b, $07
    nop
    add hl, bc
    ld b, $0f
    nop
    cp $80
    db $fc
    nop
    db $fc
    add b
    ld hl, sp-$80
    or $88
    ld a, [$c4c4]
    ld hl, sp-$08
    nop
    ld c, $05
    inc c
    inc bc
    ld [$0b07], sp
    inc b
    rrca
    nop
    rra
    nop
    ld e, $01
    inc bc
    nop
    add sp, $10
    ld [$10f0], sp
    ldh [rNR10], a
    ldh [$ffa0], a
    ld b, b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $30
    ld l, b
    ld l, b
    rla
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    xor $10
    call z, $3838
    ret nz

    ldh a, [rP1]
    ld hl, sp+$00
    ld [hl], $0d
    jr z, jr_018_476c

    ld a, a
    nop
    inc a
    nop
    jr jr_018_475b

jr_018_475b:
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    and b
    jr c, @-$3e

    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_476b

jr_018_476b:
    nop

jr_018_476c:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld [hl], a
    ld [$57f8], sp
    rst $30
    ld l, b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$c800]
    jr nc, @-$42

    ld b, b
    ld a, $d4
    sbc $2c
    ld e, $05
    inc d
    dec bc
    db $10
    rrca
    dec de
    inc b
    ld a, $00
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_47a1

jr_018_47a1:
    ldh a, [rLCDC]
    ld d, b
    and b
    db $10
    ldh [$ffb0], a
    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_47b1

jr_018_47b1:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld [hl], a
    ld [$2778], sp
    scf
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    cp $00
    db $ec
    db $10
    call c, $3828
    ret nc

    ret c

    jr nz, jr_018_47d5

    nop
    inc c
    inc bc

jr_018_47d5:
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_018_47ec

    ld a, e
    inc b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld b, $7f
    ld b, $3f
    ld b, $37
    dec bc
    ld a, e

jr_018_47ec:
    inc [hl]
    ld a, b
    scf
    ld [hl], $09
    cp $04
    cp $b4
    rst $38
    or d
    cp $b0
    or $e8
    rst $28
    ld d, $0f
    or $36
    ret z

    add hl, bc
    ld b, $1f
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, Call_018_7c30
    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
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
    rra
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    rst $38
    ld b, $ff
    ld b, $18
    ldh [rDIV], a
    ld hl, sp+$04
    ld hl, sp-$7a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp $b0
    cp $b8
    rst $38
    ld c, $ff
    rlca
    ld e, a
    rlca
    daa
    dec de
    inc sp
    inc c
    ld a, b
    scf
    ld a, a
    jr nc, jr_018_489f

    nop
    cp $bc
    cp $f0
    db $fd
    ld [hl], d
    ld a, [$e664]
    jr jr_018_487b

    or $7f
    add [hl]
    cp $00
    ld a, [bc]
    rlca

jr_018_4873:
    add hl, bc
    ld b, $0d
    ld [bc], a
    rra
    nop
    rrca
    nop

jr_018_487b:
    rra
    nop
    ld e, $00
    inc c
    nop
    jr z, jr_018_4873

    ret z

    jr nc, jr_018_48ce

    jr nc, jr_018_4904

    nop
    ld hl, sp+$00
    ld a, h
    nop
    inc a
    nop
    jr jr_018_4891

jr_018_4891:
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    ld [hl], e
    inc c
    db $ec
    inc de
    rst $28
    db $10
    rst $30
    ld a, [bc]

jr_018_489f:
    rst $38
    ld b, $df
    ld c, $5f
    rlca

jr_018_48a5:
    rra
    rlca
    daa
    dec de
    inc sp
    inc c
    ld a, b
    scf
    ld a, a
    jr nc, @+$41

    nop
    inc bc
    nop
    inc c
    inc bc
    ld d, b
    rrca
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ei
    inc b
    ld a, h
    inc bc
    ldh [rP1], a
    jr jr_018_48a5

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $81fe

jr_018_48ce:
    ld a, [hl]
    ld b, d
    cp h
    ccf
    nop
    ld a, a
    ld [hl], $7f
    ld [hl], $3f
    ld d, $3f
    dec de
    ccf
    add hl, de
    add hl, de
    ld b, $0c
    inc bc
    cp $00
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or h
    cp $ec
    cp $cc
    call z, Call_000_1830
    ldh [rNR34], a
    inc bc
    daa
    jr jr_018_4931

    inc b
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    inc a
    ldh [$ffd2], a

jr_018_4904:
    inc l
    ld l, [hl]
    db $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_490d

jr_018_490d:
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    ld e, $0f
    rra
    rrca
    scf
    rrca
    ld c, e
    inc [hl]
    or h
    ld a, e
    rst $30
    ld c, b
    ld a, e
    ld [hl], $6f
    ld [hl], $2b
    ld d, $34
    dec de
    daa
    add hl, de
    add hl, de
    ld b, $0f
    ld [bc], a

jr_018_4931:
    nop
    nop
    rlca
    nop
    jr jr_018_493e

    jr nz, jr_018_4958

    jr nz, jr_018_495a

    jr nz, jr_018_495c

    ld l, h

jr_018_493e:
    inc de
    di
    inc c
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01
    cp $c6
    jr c, @+$01

    ld [bc], a
    rst $38
    dec bc
    ld e, a
    dec bc
    ccf

jr_018_4958:
    dec de
    rra

jr_018_495a:
    rrca
    rrca

jr_018_495c:
    nop
    inc b
    inc bc
    rlca
    nop
    db $fc
    nop

jr_018_4963:
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$40
    cp $80
    ldh [c], a
    inc e
    inc d
    add sp, -$14
    db $10
    dec c
    ld b, $0b
    inc b
    inc b
    inc bc
    rrca
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    sbc [hl]
    db $ec
    ld a, $cc
    ld a, h
    add b
    cp b
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld [$1007], sp
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    xor $11
    rst $28
    jr @+$01

    dec bc
    rst $38
    dec de
    jr nc, jr_018_4963

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$72
    ld [hl], b
    pop hl
    ld e, $d9
    ld h, $5f
    rrca

jr_018_49b3:
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    ld [$0b07], sp
    inc b
    dec c
    ld [bc], a
    cp $40
    ld hl, sp-$40
    ldh a, [$ff80]
    sbc b
    ld h, b
    inc d
    add sp, -$0e
    inc c
    ld a, h
    and b
    ldh a, [rNR41]
    xor a
    halt
    ld c, a
    ld [hl], $4e
    jr nc, jr_018_49b3

    inc h
    ld [hl], a
    ld [$10ee], sp
    db $fc
    nop
    jr jr_018_49e1

jr_018_49e1:
    cp $40
    ld hl, sp-$40
    ldh a, [$ff80]
    sbc b
    ld h, b
    inc d
    add sp, -$0c
    ld [$a47a], sp
    or $20
    cp $40
    ld hl, sp-$40
    ldh a, [$ff80]
    sbc b
    ld h, b
    inc e
    ldh [$fff4], a
    ld [$a07c], sp
    db $f4
    jr nz, jr_018_4a02

jr_018_4a02:
    nop
    inc bc
    nop
    inc c
    inc bc
    ld d, b
    rrca
    ld d, b
    rrca
    ldh a, [rIF]
    or $09
    ei
    inc b
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $01
    cp $e2
    inc e
    ld a, a
    ld bc, $053f
    rrca
    dec b
    rra
    dec c
    rrca
    rlca
    rlca
    ld bc, $0003
    ld [bc], a
    ld bc, $00fe
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $fd
    and d
    ld sp, hl
    and [hl]
    ld a, [$fcb4]
    jr nc, @-$02

    ld [hl], b
    rlca
    ld [bc], a
    ld b, $01
    inc e
    inc bc

jr_018_4a47:
    rra
    nop
    ld c, $01
    inc bc
    nop
    ld bc, $0000
    nop
    db $fc
    ld [hl], b
    ld [hl], h
    adc b
    add h
    ld a, b
    ret z

    jr nc, jr_018_4aca

    add b
    or b
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_018_4a65:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    db $d3
    rrca
    ld a, [hl]
    pop bc
    cp e
    ld [hl], h
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4a47

    adc b
    ldh a, [$ffce]
    ldh a, [$ffcd]
    or $61
    cp $e2
    inc e
    rlca
    nop
    jr jr_018_4a9c

    jr nz, jr_018_4ab6

    jr nz, jr_018_4ab8

    ld h, b
    rra
    sbc b

jr_018_4a9c:
    ld h, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_4a65

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ff7e]
    add b
    rrca
    ldh a, [$ff1f]
    ldh [$ff7f], a
    nop
    ccf
    nop
    ld a, a

jr_018_4ab6:
    nop
    ld c, a

jr_018_4ab8:
    jr nc, jr_018_4aea

    rrca
    ld a, [hl]
    ld hl, $2f70
    ccf
    db $10
    rst $38
    ld [$08fd], sp

jr_018_4ac5:
    db $fc
    nop
    db $e4
    jr @+$20

jr_018_4aca:
    ldh [rPCM34], a
    adc d
    dec bc
    or $fe
    inc b
    rla
    ld a, [bc]
    jr c, jr_018_4adc

    ld a, [hl]
    ld bc, $003d
    jr jr_018_4adb

jr_018_4adb:
    nop

jr_018_4adc:
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    cp b
    ld c, $f0
    ccf
    ret nz

    sbc $00
    inc c

jr_018_4aea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_4afc

    jr nz, jr_018_4b16

    jr nz, jr_018_4b18

    jr nz, jr_018_4b1a

    ld h, b

jr_018_4afc:
    rra
    sub b
    ld l, a
    ldh [$ff1f], a
    ret nz

    nop
    jr nc, jr_018_4ac5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [rNR34]
    ldh [$ff7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_018_4b16:
    nop
    ccf

jr_018_4b18:
    nop
    ld a, a

jr_018_4b1a:
    nop
    add b
    ld a, a
    ld a, h
    inc bc
    ldh a, [$ff6f]
    rst $38

jr_018_4b22:
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_018_4b22

    nop
    inc l
    ret c

    call nc, Call_000_3e28
    call z, Call_018_64ff
    ld [hl], b
    rrca
    inc de
    inc c
    ld [hl], $08
    ld e, $00
    ld a, $00
    ld a, $00
    inc e
    nop
    cp $4c
    inc e
    ldh [$ff90], a
    ld h, b
    ret nc

    jr nz, @-$0e

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld h, b
    rra
    adc a
    ld [hl], b
    ld [hl], b
    rrca
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld h, b
    rra
    ld a, e
    inc b
    ld h, b
    rra
    rst $38
    ld h, b
    rlca
    nop
    jr jr_018_4b7c

    jr nz, jr_018_4b96

    jr nz, jr_018_4b98

    ld h, b
    rra
    sub b

jr_018_4b7c:
    ld l, a
    add b
    ld a, a
    add c
    ld a, [hl]
    ret nz

    nop
    jr nc, @-$3e

    ld a, [bc]
    ldh a, [$ff0a]
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    ccf
    ret nz

    adc $30
    ld a, a
    nop
    ld a, a
    nop

jr_018_4b95:
    rst $38

jr_018_4b96:
    ld b, b
    rst $28

jr_018_4b98:
    ld d, b
    ld h, b
    ccf
    ld a, [hl]
    ld hl, $1738

jr_018_4b9f:
    rra
    nop
    db $fc
    ld [$00fc], sp
    cp $04
    sbc $24
    inc c
    ld hl, sp+$7c
    adc b
    jr jr_018_4b9f

    ld [hl], b
    add b
    ld l, $15
    ld [hl], b
    rrca
    ld a, a
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $50
    inc e
    ldh [$fffc], a
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4b95

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [rIE]
    nop
    ccf
    ret nz

    adc $30
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $28
    ld d, b
    ld h, b
    ccf
    ld a, [hl]
    ld hl, $1738

jr_018_4bef:
    rra
    nop
    db $fc
    ld [$00fc], sp

jr_018_4bf5:
    cp $04
    xor $14
    inc c
    ld hl, sp+$7c
    adc b
    jr jr_018_4bef

    ld [hl], b
    add b
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ld a, e
    inc b
    db $fc
    inc bc
    ldh [rP1], a
    jr jr_018_4bf5

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    rst $38
    nop
    rst $38
    ld [hl], $7f
    ld [hl], $3f
    ld d, $3f
    dec de
    dec sp
    inc e
    jr jr_018_4c36

    ld c, $01
    cp $00
    rst $38
    or [hl]
    rst $38

jr_018_4c36:
    or [hl]
    rst $38
    or h
    cp $ec
    xor $1c
    inc c
    ldh a, [$ff38]
    ret nz

    ld e, $05
    dec d
    ld a, [bc]
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    inc a
    ret nc

    call nc, $7428
    ld [$007e], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    ld [hl], h
    dec bc
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, $18
    ldh [rDIV], a
    ld hl, sp+$04
    ld hl, sp-$7a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    cp $b0
    rst $38
    ld [hl], $7f
    scf
    ld a, a
    inc sp
    scf
    jr jr_018_4ca2

    rrca
    inc c
    inc bc
    rrca
    nop
    rrca
    nop
    rst $38
    or [hl]
    rst $38
    or $ff
    and $f6
    inc c
    inc c
    ld hl, sp+$18
    ldh [$fff8], a
    nop
    ld hl, sp+$00
    rst $38

jr_018_4ca2:
    ld [bc], a
    rst $38
    ld a, [bc]
    ld e, a
    ld a, [bc]
    ccf
    rra
    rra
    rrca
    rrca
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $fc
    nop

jr_018_4cb3:
    db $fc
    ret nz

    db $f4
    ret z

    ld hl, sp+$40
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    db $f4
    ld l, b
    ld hl, sp-$20
    rrca
    nop
    ld c, $05
    dec c
    ld [bc], a
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $0000
    nop
    ld hl, sp-$20
    add sp, $10
    sub b
    ld h, b
    ld [hl], b
    add b
    cp b
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    nop
    nop
    ld [$1807], sp
    rlca
    inc d
    dec bc
    ld [hl], d
    dec c
    xor $11
    rst $38
    inc c
    rst $38
    add hl, bc
    rst $38
    add hl, de
    jr nc, jr_018_4cb3

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$72
    ld [hl], b
    pop hl
    sbc [hl]
    pop de
    xor [hl]
    ld e, a
    ld c, $1f
    ld c, $0f
    ld b, $07
    nop
    add hl, bc
    ld b, $11
    ld c, $1b
    inc b
    inc c
    inc bc
    cp $c0
    ld hl, sp-$40
    ldh a, [$ffc0]
    add sp, -$30
    db $e4
    ret c

    ldh a, [c]
    call z, $80ee

jr_018_4d1f:
    ldh [rP1], a
    or d
    ld l, h
    ld h, d
    inc e
    ld c, [hl]
    jr nc, jr_018_4d1f

    ld [$007f], sp
    and $18
    db $ec
    db $10

jr_018_4d2f:
    jr jr_018_4d31

jr_018_4d31:
    rlca
    nop
    jr jr_018_4d3c

    jr nz, jr_018_4d56

    jr nz, jr_018_4d58

    ld h, b
    rra
    and b

jr_018_4d3c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ff0e]
    ldh a, [rIE]
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    rst $38

jr_018_4d56:
    nop
    rst $28

jr_018_4d58:
    ld d, b
    ldh a, [$ff6f]
    ld a, [hl]
    ld sp, $0f30
    ccf
    inc b
    rst $38
    ld [$08fd], sp

jr_018_4d65:
    cp $04
    sbc $2c
    inc e
    add sp, $7c
    sbc b
    jr c, jr_018_4d2f

    ld hl, sp+$40
    ld b, b
    ccf
    ld d, b
    cpl
    ccf
    nop
    ld a, h
    nop
    inc a
    nop
    jr jr_018_4d7d

jr_018_4d7d:
    nop
    nop
    nop
    nop
    inc b
    ld hl, sp+$14
    add sp, -$08
    nop
    ld a, h
    nop
    ld a, b
    nop
    jr nc, jr_018_4d8d

jr_018_4d8d:
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_4d9c

    jr nz, jr_018_4db6

    jr nz, jr_018_4db8

    ld h, b
    rra
    and b

jr_018_4d9c:
    ld e, a
    sub c
    ld l, [hl]
    add b
    ld a, a
    ret nz

    nop
    jr nc, jr_018_4d65

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [$fffe]
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ld a, a

jr_018_4db6:
    nop
    adc a

jr_018_4db8:
    ld [hl], b
    ld [hl], b
    rrca
    ld a, h
    inc sp
    jr nc, @+$21

jr_018_4dbf:
    inc e
    inc bc
    rst $38
    ld [$08ff], sp
    cp $00
    db $f4
    ld [$f80c], sp
    ld hl, sp+$10
    jr jr_018_4dbf

    ld [hl], b
    add b
    ld e, $05
    inc d
    dec bc
    inc de
    inc c
    ld [hl], $08
    ld e, $00
    ld a, $00
    ld a, $00
    inc e
    nop
    ldh a, [rLCDC]
    ld d, b
    and b
    sub b
    ld h, b
    ret c

    jr nz, @-$0e

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    nop
    dec c
    ld b, $0c
    inc bc
    ld a, [hl-]
    dec b
    ld h, h
    dec de
    ld a, a
    nop
    ld a, $00
    inc c
    nop
    nop
    nop
    sub b
    ld h, b

jr_018_4e03:
    inc e
    ldh [rNR34], a
    ldh [$ff3e], a
    ret nz

    cp $00
    inc a
    nop
    inc e
    nop
    nop
    nop
    ld c, $05
    inc c
    inc bc
    inc e
    inc bc
    ld a, $01
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    jr jr_018_4e03

    db $10
    ldh [rNR10], a
    ldh [$ff28], a
    ret nc

    call c, $bc20
    ld b, b
    ld hl, sp+$00
    ld [hl], b
    nop
    ld e, $05
    inc d
    dec bc
    jr nc, @+$11

    ld a, a
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ldh a, [rLCDC]
    ld d, b
    and b

jr_018_4e45:
    jr @-$1e

    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, @+$11

    ld a, e
    inc b
    db $fc
    inc bc
    ldh [rP1], a
    jr jr_018_4e45

    inc b
    ld hl, sp+$06
    ld hl, sp+$05
    ld a, [$fe01]
    add l
    ld a, d
    ld c, [hl]
    or b
    rst $38
    jr nc, @+$01

    ld [hl], $7f
    ld d, $3f
    ld d, $37
    dec de
    dec sp
    inc e
    jr jr_018_4e86

    rrca
    ld [bc], a
    rst $38
    ld b, $ff
    or [hl]
    rst $38

jr_018_4e86:
    or h
    cp $b4
    or $ec
    xor $1c
    inc c
    ldh a, [$ff78]
    and b
    ld e, $01
    ld [hl+], a
    dec e
    dec a
    ld [bc], a
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    jr z, @-$2e

    ld [$d8f0], sp
    jr nz, @+$7e

    nop
    inc a
    nop
    inc a
    nop
    jr jr_018_4eaf

jr_018_4eaf:
    nop
    nop
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    rra
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    inc a
    ret nz

    ld h, $d8
    sbc $20
    ld e, [hl]
    jr nz, @+$3e

    nop
    jr jr_018_4ecd

jr_018_4ecd:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    rst $28
    db $10
    rst $38
    ld a, [bc]
    ret nz

    nop
    jr nc, @-$3e

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [$ffc1]
    ld a, $e1
    sbc $fe
    ret nz

    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    ld c, $0f
    ld b, $07
    nop
    ld [bc], a
    ld bc, $0304
    rlca
    ld [bc], a
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$40
    db $f4
    ld l, b
    ld a, [$fc64]
    ld h, b
    ld l, b
    sub b
    pop bc
    ld a, $81
    ld a, [hl]
    ld c, c
    ld [hl], $7e
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_018_4f5c

    nop
    nop
    nop
    ld b, $01
    jr @+$09

    inc h
    dec de
    ld a, [hl-]
    dec b
    rra
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld c, $f0
    rrca
    ldh a, [rNR22]
    add sp, -$11
    db $10
    ld e, $00
    ld c, $00
    nop
    nop
    nop
    nop
    ld b, $01
    inc d
    inc bc
    ld a, $01
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    inc c
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [$fff7]
    ld [$041b], sp
    dec bc

jr_018_4f5c:
    inc b
    ld b, $00
    nop
    nop
    nop

jr_018_4f62:
    nop
    rlca
    nop
    jr jr_018_4f6e

    jr nz, jr_018_4f88

    jr nz, jr_018_4f8a

    ld h, b
    rra
    sub b

jr_018_4f6e:
    ld l, a
    add b
    ld a, a
    ld e, $05
    db $10
    rrca
    inc de
    inc c
    ld a, $00
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_4f7f

jr_018_4f7f:
    nop
    nop
    ldh a, [rLCDC]
    db $10
    ldh [$ff90], a

jr_018_4f86:
    ld h, b
    ret z

jr_018_4f88:
    jr nc, jr_018_4f86

jr_018_4f8a:
    nop
    ld a, b
    nop
    jr nc, jr_018_4f8f

jr_018_4f8f:
    nop
    nop
    ld e, $05
    db $10
    rrca
    dec sp
    inc b
    ld a, $00
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh a, [rLCDC]
    db $10
    ldh [$ffb0], a
    ld b, b
    ret c

    jr nz, jr_018_4f62

    ld b, b
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
    nop
    ld e, $05
    db $10
    rrca
    dec de
    inc b
    ld h, $18
    ld l, $10
    ld a, $00
    ld e, $00
    inc c
    nop
    ldh a, [rLCDC]
    db $10
    ldh [$ffb8], a
    ld b, b
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_4fde

    jr nz, jr_018_4ff8

    jr nz, @+$21

    ld [hl], b
    rrca
    sbc b

jr_018_4fde:
    ld h, a
    add b
    ld a, a
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR10], a
    ldh [$ff0e], a
    ldh a, [rNR11]
    xor $01
    cp $40
    nop
    jr nc, jr_018_5035

    ld [$0870], sp

jr_018_4ff8:
    ld [hl], b
    ld [$9ef0], sp
    ldh [$fffd], a
    ld b, $3b
    add $00
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    inc de
    inc c
    jr c, @+$09

    ccf

jr_018_5030:
    jr jr_018_5030

    ldh a, [$fffe]
    or b

jr_018_5035:
    cp $b4
    cp $b0
    rst $38
    and $e6
    jr jr_018_505c

    ldh [$fffe], a
    inc c
    ccf
    ld a, [de]
    ld a, [de]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    ld a, [hl]
    xor h
    inc l
    ret nc

    ld [$d8f0], sp
    jr nz, jr_018_50d6

    nop
    ld a, [hl]

jr_018_505c:
    nop
    ld a, $00
    inc e
    nop
    ccf
    ld a, [de]
    ld e, $01
    ld [$0907], sp
    ld b, $1f
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    ld a, [hl]
    xor h
    inc a
    ret nz

    inc e
    ldh [$ffe6], a
    jr @+$60

    jr nz, jr_018_50fa

    nop
    inc a
    nop
    jr jr_018_5081

jr_018_5081:
    ccf
    ld a, [de]
    ld e, $01
    inc e
    inc bc
    inc sp
    inc c
    cpl
    db $10
    ccf
    nop
    ld e, $00
    inc c
    nop
    ld a, [hl]
    xor h
    inc a
    ret nz

    ld [$c8f0], sp
    jr nc, @+$7e

    nop
    ld a, h
    nop
    jr c, jr_018_509f

jr_018_509f:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [rSB]
    cp $c1
    ld a, $ff
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    rra
    nop
    ccf
    dec de
    cp $00
    db $fc
    nop
    db $fc

jr_018_50d6:
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    adc b
    ld [hl], b
    call nc, $e828
    ret nc

    ccf
    rra
    rra
    nop
    ld c, $05
    dec bc
    inc b
    dec c
    ld [bc], a
    inc de
    inc c
    ld e, $01
    inc bc
    nop
    ld hl, sp-$20
    add sp, $10
    db $10
    ldh [$ff90], a
    ld h, b
    ld h, b

jr_018_50fa:
    add b
    or b
    ld b, b
    ld [hl], b
    add b
    ldh a, [rP1]
    ccf
    rra
    rra
    nop
    ld c, $05
    ld e, $01
    daa
    jr jr_018_5127

    inc b
    rrca
    nop
    ld b, $00
    ret c

    ldh [$fff0], a
    nop

jr_018_5115:
    jr @-$1e

    inc a
    ret nz

    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_511f

jr_018_511f:
    nop
    nop
    ccf
    rra
    rra
    nop
    inc a
    dec bc

jr_018_5127:
    ld a, h
    inc bc
    ccf
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    ret c

    ldh [$fff0], a
    nop
    db $10
    ldh [$ff38], a
    ret nz

    call c, $fc20
    nop
    cp b
    ld b, b
    ld [hl], b
    nop
    rlca
    nop
    jr jr_018_514c

    jr nz, jr_018_5166

    jr nz, jr_018_5168

    ld h, b
    rra
    and b

jr_018_514c:
    ld e, a
    sub c
    ld l, [hl]
    add b
    ld a, a
    ret nz

    nop
    jr nc, jr_018_5115

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ld a, a

jr_018_5166:
    nop
    adc a

jr_018_5168:
    ld [hl], b
    ld [hl], b
    rrca
    db $ec
    ld d, e
    ldh a, [$ff6f]
    ld a, a
    inc b
    rst $38
    ld [$08ff], sp
    ld a, [$8800]
    ld [hl], b
    inc a
    ret nz

    adc $34
    ld e, $ec
    db $fc
    ld b, b
    ld d, $09
    db $10
    rrca
    dec de
    inc b
    ld a, $00
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_518f

jr_018_518f:
    nop
    nop
    ret nc

    jr nz, jr_018_51a4

    ldh [$ffb0], a
    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_519f

jr_018_519f:
    nop
    nop
    ld d, $09
    db $10

jr_018_51a4:
    rrca
    inc sp
    inc c
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_51c4

    ldh [rSVBK], a
    add b
    sbc b
    ld h, b
    cp b
    ld b, b
    ld hl, sp+$00
    ld a, b
    nop
    jr nc, jr_018_51c1

jr_018_51c1:
    ld d, $09
    db $10

jr_018_51c4:
    rrca
    dec de
    inc b
    ld h, $18
    ld l, $10
    ld a, $00
    inc a
    nop
    jr jr_018_51d1

jr_018_51d1:
    ret nc

    jr nz, jr_018_51e4

    ldh [$ff98], a
    ld h, b

jr_018_51d7:
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_018_51e4:
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_018_51d7

    inc b
    ld hl, sp+$06
    ld hl, sp+$05
    ld a, [$7e81]
    db $fd
    ld [bc], a
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    dec c
    ld e, a
    dec c
    ld l, a
    rlca
    rst $30
    ld l, b
    ld hl, sp+$67
    ld a, a
    db $10
    rst $38
    ldh [$fffe], a
    ld l, b
    cp $78
    db $fc
    ld [hl], b
    ld a, [$e4e4]
    jr jr_018_5228

    db $f4
    cp $00
    rra
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0d07], sp

jr_018_5228:
    ld [bc], a
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    ld a, [hl]
    xor h
    ld a, $cc
    inc c
    ldh a, [$ffd8]
    jr nz, jr_018_52b6

    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    scf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    rra
    ld a, a
    db $10
    rra
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    call nz, $e438
    ret c

    ldh a, [c]
    call z, $64fa
    ld a, [$3f24]
    nop
    ld a, h
    inc hl
    ld hl, sp+$77
    rst $38
    ld h, b
    ldh a, [$ff6f]
    ld a, l
    ld [hl-], a
    ld a, h
    inc hl
    scf
    ld [$00fe], sp
    ld a, a
    and b
    db $fd

jr_018_5276:
    ld [hl], d
    db $fd
    ld [hl-], a
    ld a, a
    sub b
    db $fc
    jr nc, jr_018_5276

    jr nc, jr_018_52f0

    add b
    dec e
    ld a, [bc]
    jr jr_018_528c

    db $10
    rrca
    dec de
    inc b
    ld a, $00
    ld a, [hl]

jr_018_528c:
    nop
    ld a, h
    nop
    jr c, jr_018_5291

jr_018_5291:
    ldh a, [$ff80]
    ret nc

    jr nz, jr_018_52a6

    ldh [$ffb0], a
    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_018_52a1

jr_018_52a1:
    inc bc
    nop
    inc b
    inc bc
    add hl, sp

jr_018_52a6:
    ld b, $7a
    dec b
    rst $38
    nop
    rst $38
    dec b
    ld c, a
    dec b
    rra
    rrca
    ldh a, [rP1]
    ld [$c4f0], sp

jr_018_52b6:
    jr c, jr_018_52da

    call c, Call_000_1ce2
    ldh a, [c]
    ld c, h
    rst $38
    ld h, b
    push af
    ld [$0f1f], a
    rra
    rrca
    rra
    inc c
    rrca
    rlca
    rrca
    inc bc
    inc de
    inc c
    jr c, @+$19

    ld a, a
    jr nc, @+$01

    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$02
    ldh a, [$fff9]

jr_018_52da:
    and $e6
    jr jr_018_52ec

    db $f4
    rst $38
    ld b, $7f
    ld [hl-], a
    ld a, d
    dec [hl]
    jr c, @+$09

    dec c
    ld [bc], a
    rra
    nop
    ccf

jr_018_52ec:
    nop
    ld a, $00
    inc e

jr_018_52f0:
    nop
    ld a, a
    and [hl]
    cpl
    sub $0e
    ldh a, [$ffd8]
    jr nz, jr_018_5376

    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, sp
    ld b, $7a
    dec b
    rst $38
    nop
    rst $38
    dec b
    ld c, a
    dec b
    nop
    nop
    ldh a, [rP1]
    ld [$c4f0], sp
    jr c, jr_018_533c

    call c, Call_000_1ce2
    ldh a, [c]
    ld c, h
    rst $38
    ld h, b
    rra
    rrca
    rra
    add hl, bc
    rra
    rrca
    rrca
    rlca
    rrca
    inc bc
    inc de
    inc c
    jr c, @+$19

    ld a, a
    jr nc, @+$01

    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$02
    ldh a, [$fff9]
    and $e6

jr_018_533c:
    jr jr_018_534c

    db $f4
    rst $38
    ld b, $03
    nop
    inc c
    inc bc
    ld de, $1a0e
    dec b
    rst $38
    nop
    rst $38

jr_018_534c:
    ld [hl], d
    ld a, a
    ld a, [hl-]
    ccf
    ld [de], a
    ldh [rP1], a
    jr @-$1e

    call nz, Call_000_2638
    ret c

    push hl
    ld a, [de]
    push af
    xor d
    db $fd
    or d
    ei
    or h
    ccf
    rla
    ccf
    rla
    ccf
    dec de
    ccf
    dec de
    ccf
    inc e
    ld e, $0d
    rra
    ld [$030c], sp
    cp $f8
    cp $7c
    db $fc

jr_018_5376:
    ld [hl], b
    cp $70
    ld sp, hl
    ld b, $06
    ld hl, sp+$7a
    add h
    ld c, $f4
    dec bc
    dec b
    add hl, bc
    ld b, $08
    rlca
    dec e
    ld [bc], a
    rra
    nop
    ccf
    nop
    ld a, $00
    inc e
    nop
    cp a
    ld d, [hl]
    sbc a
    ld h, [hl]
    ld c, $f0
    call c, Call_018_7c20
    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    stop
    jr c, jr_018_53a7

jr_018_53a7:
    ld a, h
    nop
    ld a, [hl]
    ld [$12ff], sp
    ei
    ld de, $10f9
    rlca
    nop
    jr jr_018_53bc

    jr nz, @+$21

    jr nz, jr_018_53d8

    ld b, b
    ccf
    ld b, b

jr_018_53bc:
    ccf
    xor $11
    pop af
    ld c, $c0
    nop
    jr nc, @-$3e

    ld [$0cf0], sp
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [de], a
    db $ec
    inc c
    ldh a, [$ff79]
    db $10
    ld a, b
    db $10
    jr c, jr_018_53e7

    inc e

jr_018_53d8:
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, b
    rst $38
    ld l, d
    rst $38
    ld a, [hl+]

jr_018_53e7:
    rst $38
    ld a, [hl+]
    cp a
    rla
    rla
    ld [$0708], sp
    rra
    nop
    db $fc
    ld [$e8fc], sp

jr_018_53f5:
    db $fc
    ldh [$fff6], a
    add sp, -$11
    sub [hl]
    adc $30
    db $10
    ldh [$ffe8], a
    db $10
    ld h, $19
    ccf
    nop
    ld a, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ret z

    jr nc, @-$02

    nop
    ld a, h
    nop
    jr c, jr_018_541b

jr_018_541b:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nz, jr_018_5446

    jr nz, jr_018_5448

    jr nz, jr_018_544a

    jr nz, jr_018_544c

    scf
    ld [$0778], sp
    ret nz

    nop
    jr nc, jr_018_53f5

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    rst $38
    nop
    rst $38
    dec c
    rst $38

jr_018_5446:
    dec c
    rst $18

jr_018_5448:
    dec c
    sbc a

jr_018_544a:
    rlca
    rla

jr_018_544c:
    ld [$0e11], sp
    dec hl
    dec d
    cp $00
    db $fd
    ld l, d
    cp $68
    ld a, [$e464]
    ret c

    ldh a, [c]
    inc c
    cp [hl]
    ld e, b
    db $fc
    sbc b
    ld b, c
    ld b, b
    inc hl
    ld h, b
    ld de, $0c38
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    cp a
    ld c, h
    cp $01
    rst $38
    inc b
    rrca
    inc b
    adc d
    push af
    rst $38
    rst $38
    ccf
    rst $38
    nop
    ccf
    jp nz, $e202

    ld b, $e6
    ld c, $cc
    ld a, $38
    db $fc
    ldh [$fff8], a
    add b
    ldh [rP1], a
    add b
    rst $38
    nop
    rst $38
    dec c
    rst $38
    dec c
    rst $18
    dec b
    sub a
    dec bc
    inc de
    inc c
    jr jr_018_54a6

    ccf
    inc de
    db $fd
    ld [$68ff], sp
    ld sp, hl

jr_018_54a6:
    ld h, [hl]
    ldh a, [c]
    ld l, h
    db $e4
    ret c

    db $f4
    ld [$b07d], sp
    ld sp, hl
    jr nc, jr_018_54b2

jr_018_54b2:
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$ff80], a
    ldh [$ff80], a

jr_018_54c1:
    scf
    dec bc
    ld a, a
    nop
    ld a, $00
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
    ei
    ld b, c
    rst $38
    inc hl
    ld a, a
    ld d, $17
    inc c
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    dec c
    rst $38
    dec c
    rst $18
    dec c
    xor a
    rla
    daa
    jr jr_018_551e

    rra
    rra
    inc bc
    db $fc
    ld [$68fc], sp
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    db $ec
    ret nc

    ret z

    jr nc, @-$35

    jr nc, jr_018_54c1

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

jr_018_551e:
    add b
    ret nz

    add b
    cpl
    inc de
    scf
    ld [$017f], sp
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ld b, c
    rst $18
    inc hl
    rst $38
    ld b, $ff
    adc h
    rst $38
    ld d, b
    ld a, [hl]
    nop
    inc a
    nop
    stop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
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
    rrca
    nop
    db $10
    rrca
    jr nz, jr_018_557a

    jr nz, jr_018_557c

    jr nz, @+$21

    ld a, h
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rIF], a
    ldh a, [rNR11]
    xor $03
    db $fd
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    db $fc

jr_018_557a:
    nop
    ld a, [hl]

jr_018_557c:
    or b
    cp $88
    rst $08
    inc b
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    sbc a
    rrca
    ccf
    nop
    ld a, b
    scf
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, b
    cp $c4
    sub $ac
    xor $18
    dec a
    jp nc, $0287

    rlca
    ld [bc], a
    ld b, $00
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
    ld a, e
    inc [hl]
    dec a
    ld a, [bc]
    inc c
    inc bc
    ld c, $05
    rrca
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    cp $00
    ret z

    or b
    adc b
    ld [hl], b
    inc e
    ldh [$fff4], a
    ld [$10ae], sp
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff0e], a
    ldh a, [rNR11]
    xor $01
    cp $06
    ld b, $1f
    ld e, $3f
    ld a, $79
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld d, $ff
    ld d, $ff
    scf
    cp a
    rra
    rra
    nop
    inc l
    inc de
    cp $00
    ld hl, sp+$00
    ld hl, sp-$80
    ld hl, sp-$80
    cp $80
    ldh a, [c]
    inc c
    call nz, $8c38
    ld [hl], b
    inc e
    ccf
    rlca
    rra
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc c
    ccf
    call z, $ffc0
    ccf
    rst $38
    ccf
    nop
    ld e, [hl]
    jr nz, jr_018_56aa

    nop
    nop
    nop
    ld c, c
    or c
    jp c, Jump_000_1c62

    db $fc
    ld hl, sp-$20
    call z, $3e30
    nop
    ld e, [hl]
    jr nz, jr_018_56bc

    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    rrca
    nop
    jr jr_018_5660

    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    rst $38
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    rst $00
    jr c, jr_018_5662

jr_018_5660:
    db $fc
    add b

jr_018_5662:
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [$ff80], a
    ldh a, [rLCDC]
    ld [hl], b
    jr nz, jr_018_569e

    nop
    stop
    ld a, $1d
    rra
    ld [$031c], sp
    ld hl, $2f1e
    db $10
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    ld hl, sp+$60
    add sp, -$30
    ret z

    jr nc, jr_018_568c

    ld hl, sp-$3c
    jr c, @+$40

jr_018_568c:
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_018_56b8

    jr nz, jr_018_56ba

    jr nz, jr_018_56bc

    ld a, h

jr_018_569e:
    inc bc
    rst $30
    ld [$0000], sp
    add b
    nop
    ld h, b
    add b
    db $10

jr_018_56a8:
    ldh [$ff0e], a

jr_018_56aa:
    ldh a, [rNR11]
    xor $01
    cp $c6
    jr c, @+$01

    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38

jr_018_56b8:
    dec de
    sbc a

jr_018_56ba:
    rrca
    rrca

jr_018_56bc:
    nop
    jr jr_018_56c6

    scf
    jr @+$01

    nop
    rst $38
    ld b, b
    rst $38

jr_018_56c6:
    ld b, e
    rst $38
    ret nz

    ld hl, sp-$80
    ret z

    jr nc, jr_018_56d2

    ld hl, sp-$1e
    inc e
    nop

jr_018_56d2:
    nop
    add b
    nop

jr_018_56d5:
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    jr nz, jr_018_56dd

jr_018_56dd:
    nop
    nop
    nop
    nop
    cpl
    rla
    dec a
    ld b, $1f
    nop
    ld [$0f07], sp
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    call c, $c8a0
    jr nc, @+$06

    ld hl, sp+$44
    cp b

jr_018_56f9:
    call z, $be30
    nop
    ld e, [hl]
    jr nz, jr_018_577c

    nop
    rlca
    nop
    jr jr_018_570c

    jr nz, jr_018_5726

    jr nz, jr_018_5728

    ld h, b
    rra
    and b

jr_018_570c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_56d5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    ld a, a
    nop
    ld a, a

jr_018_5724:
    nop
    ld e, a

jr_018_5726:
    jr nz, jr_018_56a8

jr_018_5728:
    ld a, a
    ld a, c
    ld b, $20
    rra
    rra
    nop
    ccf
    inc b
    rst $38
    ld [$08ff], sp
    adc d
    ld [hl], b
    jr nc, jr_018_56f9

    ld hl, sp+$00
    inc e
    add sp, -$02
    inc c
    rst $38
    add d
    nop
    nop
    stop
    jr jr_018_5747

jr_018_5747:
    inc e
    ld [$081c], sp
    inc a
    db $10
    inc a
    db $10
    ld a, h
    jr nz, jr_018_57ce

    inc bc
    ld h, b
    rra
    ld a, a
    nop
    jr c, jr_018_5759

jr_018_5759:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ld bc, $e011
    ret z

    jr nc, jr_018_5724

    ld b, b
    cp b
    ld b, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$40
    ld hl, sp-$80
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop

jr_018_577c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc e
    ccf
    jr jr_018_580b

    jr nc, jr_018_5809

    rrca
    nop
    jr nc, @-$2f

    ret nz

    cp a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    or b
    ld c, a

jr_018_579f:
    ret nz

    ccf
    add b
    nop
    ld h, b

jr_018_57a4:
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    add sp, $38
    call z, $867c
    ccf
    jp nz, $f030

    ld h, b
    ldh a, [$ff60]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    cp a
    ld b, b
    ld e, a
    jr nz, jr_018_582a

    rra
    ld e, b
    daa
    ld h, b

jr_018_57ce:
    rra
    ld a, a
    ld [$10fe], sp
    ld hl, sp+$10
    ldh a, [rP1]
    sbc h
    ld h, b
    ld [bc], a
    db $fc
    db $fc
    nop
    jr nc, jr_018_579f

    ldh a, [$ff80]
    dec l
    ld [de], a
    jr nz, @+$21

    ld c, a
    jr nc, jr_018_57a4

    ld b, b
    ld e, h
    jr nz, @+$3a

    nop
    nop
    nop
    nop
    nop
    sbc b
    ld h, b
    inc a
    ret nz

    ld hl, sp+$00
    ld [hl], b
    nop
    nop

jr_018_57fa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_018_5814

    ld b, b
    ccf
    ld b, b
    ccf

jr_018_5809:
    ld b, b
    ccf

jr_018_580b:
    ld b, b
    ccf
    and b
    ld e, a
    ret nz

    ccf
    add b
    nop
    ld h, b

jr_018_5814:
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [$ff3c], a
    ret nz

jr_018_581d:
    ld a, [hl]
    add b

jr_018_581f:
    ld a, $c0
    nop
    nop
    jr nc, jr_018_5825

jr_018_5825:
    ld a, a
    nop
    rst $30
    rra
    rst $38

jr_018_582a:
    jr nz, jr_018_581d

    jr nz, jr_018_581f

    jr nz, @-$0e

    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_018_57fa

    cp a
    db $fc
    jp Jump_018_6ff0


    ld a, a
    inc b
    rst $38
    db $10
    ei
    db $10
    ldh a, [rP1]
    sbc h
    ld h, b
    ld [bc], a
    db $fc
    ld a, h
    add b
    db $10
    ldh [$fff0], a
    ld b, b
    ldh a, [rNR41]
    ld a, b
    db $10
    ld a, b
    db $10
    jr c, jr_018_5859

jr_018_5859:
    jr jr_018_585b

jr_018_585b:
    ld [$0000], sp
    nop
    nop
    nop
    ld l, $11
    jr nz, @+$21

    ld c, a
    jr nc, @-$42

    ld b, b
    ld e, h
    jr nz, jr_018_58a4

    nop
    nop
    nop
    nop
    nop
    ret c

    jr nz, jr_018_58b0

    ret nz

    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_018_5894

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    and b
    ld e, a
    ret nz

    ccf
    add b
    nop
    ld h, b

jr_018_5894:
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff3c], a
    ret nz

    ld a, [hl]

jr_018_589e:
    add b
    ld a, $c0
    ld a, b
    nop
    ld a, [hl]

jr_018_58a4:
    ld [$16ff], sp
    rst $38
    ld de, $20f1
    pop af
    jr nz, jr_018_589e

    jr nz, @-$0e

jr_018_58b0:
    jr nz, @+$01

    nop
    ld a, a
    nop
    cp a
    ld b, b
    ld e, a
    and b
    ldh [$ff1f], a
    db $fc
    jp Jump_018_6ff0


    ld a, a
    ld [$10fe], sp
    cp $10
    db $f4
    nop
    ret nc

    jr nz, @+$0a

    ldh a, [$ff74]
    adc b
    inc c
    ldh a, [$fff8]
    add b
    ldh a, [rNR41]
    ld [hl], b
    jr nz, @+$72

    nop
    jr nc, jr_018_58d9

jr_018_58d9:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld [de], a
    ld d, b
    cpl
    cp a
    ld b, b
    ld e, h
    jr nz, jr_018_5922

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_592c

    ret nz

    db $fc
    nop
    ret c

    jr nz, jr_018_596a

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

jr_018_5907:
    ld a, $00
    ld e, l
    ld a, $7f
    ld a, $7f
    ld [hl+], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [$087f], sp
    ccf
    ld [$087f], sp
    db $fc
    inc bc
    rst $38
    jr jr_018_5922

jr_018_5922:
    nop
    ldh [rP1], a
    jr jr_018_5907

    inc b
    ld hl, sp+$04
    ld hl, sp-$7a

jr_018_592c:
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    ld a, a
    add hl, de
    cp a
    ld e, b
    cp a
    ld h, e
    ld a, a
    ld sp, $123d
    rla
    ld [$b0ff], sp
    cp $b0
    cp $fc
    cp $74
    rst $38
    nop
    ld sp, hl
    and $fe
    ld [hl], b
    ld a, b
    add b
    dec e
    ld a, [bc]
    jr jr_018_595c

    db $10
    rrca
    add hl, bc
    ld b, $11
    ld c, $1f

jr_018_595c:
    nop
    cpl
    db $10
    ld a, $00
    ret z

    or b
    sbc b
    ld h, b

jr_018_5965:
    inc h
    ret c

    cp $00
    ld a, d

jr_018_596a:
    inc b
    ld a, h
    nop
    jr c, jr_018_596f

jr_018_596f:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, @+$11

    ld a, e
    inc b
    db $e4
    dec de
    ldh [rP1], a
    jr jr_018_5965

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $05fe
    ld a, [$34ca]
    rst $30
    dec bc
    rst $18
    inc bc
    sbc a
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rrca
    rra
    inc c
    rra
    inc c
    cp $00
    cp $34
    rst $38
    or d
    rst $38
    or [hl]
    cp $84
    db $fc
    ret c

    db $fc
    ret c

    db $fc
    ret nz

    rra
    inc c
    ccf
    inc c
    dec sp
    rrca
    rra
    dec bc
    rra
    ld [$081f], sp
    dec de
    inc c
    inc e
    rrca
    db $ec
    ret c

    db $ec
    ret nc

    ld a, [hl]
    ret nz

    cp $40
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld h, b
    ret nz

    ldh [$ffc0], a
    rst $38
    ld a, [hl]
    cp l
    ld a, [hl]

jr_018_59d5:
    cp l
    ld a, [hl]
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    dec sp
    inc b
    ld a, h
    inc bc
    ldh [rP1], a
    jr jr_018_59d5

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $0f
    inc bc
    rrca
    nop
    add hl, bc
    ld b, $1f
    inc bc
    cp $04
    cp $b4
    cp $b0
    ei
    or h
    ld sp, hl
    and $fe
    jr jr_018_5a9a

    cp b
    db $fc
    ld h, b
    rla
    ld a, [bc]
    ld a, $01
    ccf
    nop
    rra
    nop
    rra
    nop
    ld e, $03
    rra
    nop
    rra
    nop
    db $e4
    ret c

    call z, $fe30
    nop
    cp $00
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    cp l
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $17
    dec bc
    inc de
    inc c
    dec de
    rrca
    rrca
    ld b, $fe
    inc b
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    or $e8
    db $ec
    jr @-$02

    ld a, b
    call c, Call_000_1fe0
    nop
    cpl
    db $10
    ccf
    nop
    rrca
    ld bc, $000f
    rrca
    nop
    rrca
    inc b
    rrca
    rlca
    and $18
    cp $00
    db $fc
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [$ffc0], a
    ld e, l
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_5a9a:
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$40
    ld a, a
    jr nz, jr_018_5ab5

    nop
    inc b
    inc bc

jr_018_5ab5:
    inc c
    inc bc
    ld a, [bc]
    dec b
    add hl, sp
    ld b, $76
    add hl, bc
    ld sp, hl
    ld b, $fd
    ld b, $fe
    jr nz, @+$40

    ret nc

jr_018_5ac5:
    rra
    add sp, $1f
    ldh [$ff37], a
    ret c

    db $eb
    inc [hl]
    jp nc, $a66c

    ret c

    rst $38
    dec c
    ld a, a
    ld bc, $063f
    ccf
    ld d, $1e
    add hl, bc
    jr jr_018_5ae4

    inc de
    inc c
    inc h
    dec de
    rst $38
    add b
    rst $38

jr_018_5ae4:
    add b
    cp $40
    db $fc
    ld b, b
    db $fc
    ld h, b
    ld a, d
    or h
    ld sp, hl
    ld [hl], $6e
    sub b
    jr nc, jr_018_5b12

    ld c, b
    scf
    db $f4
    dec bc
    rst $38
    nop
    ld a, l
    nop
    inc e
    nop
    ld bc, $0100
    nop
    jr nc, @-$3e

    jr nz, jr_018_5ac5

    jr nz, @-$3e

    or b
    ld b, b
    ld a, b
    add b
    ld hl, sp+$00
    ld a, b
    add b
    ldh [rP1], a
    rlca

jr_018_5b12:
    nop
    jr jr_018_5b1c

    jr nz, @+$21

    jr nz, jr_018_5b38

    jr nz, jr_018_5b3a

    ld l, h

jr_018_5b1c:
    inc de
    rst $30
    ld [$02fd], sp
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01
    cp $c6
    jr c, @+$7e

    add b
    nop
    ld [$1808], sp
    ld [$1018], sp

jr_018_5b38:
    jr c, jr_018_5b4a

jr_018_5b3a:
    jr c, @+$12

    ld a, b
    ld d, l
    ld a, [hl]
    ld d, h
    rst $38
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a

jr_018_5b46:
    dec de
    ld e, a
    rrca
    rrca

jr_018_5b4a:
    nop
    jr jr_018_5b54

    daa
    jr jr_018_5bcf

    add a
    db $fc
    nop
    db $fc

jr_018_5b54:
    ld b, b
    rst $38
    ret nz

    ldh a, [c]
    adc h
    db $e4
    jr @-$26

    jr nz, jr_018_5b46

    ret nc

    add sp, -$30
    ld [hl], c
    rst $38
    jp nc, Jump_000_147d

    ld a, b

jr_018_5b67:
    ld d, b
    jr c, @+$12

    jr c, @+$32

    jr jr_018_5b76

    db $10
    stop
    rst $18
    db $ec
    cp c
    ld b, a
    dec c

jr_018_5b76:
    ld [bc], a
    rra
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $10
    or b
    ld b, b
    jr jr_018_5b67

    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    stop
    jr c, jr_018_5b9d

jr_018_5b9d:
    jr c, jr_018_5b9f

jr_018_5b9f:
    ld a, a
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    rrca
    nop
    ld [$1e07], sp
    ld bc, $0fff
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    db $e3
    inc e
    call nc, $e828
    ret nc

    add sp, -$30
    cp a
    ld b, a
    ld a, a
    nop
    jr c, jr_018_5bc7

jr_018_5bc7:
    jr c, jr_018_5bc9

jr_018_5bc9:
    jr c, jr_018_5bcb

jr_018_5bcb:
    jr c, jr_018_5bdd

    jr c, jr_018_5bdf

jr_018_5bcf:
    jr jr_018_5bd1

jr_018_5bd1:
    rst $38
    db $ec
    ld sp, hl
    rlca
    dec c
    ld [bc], a
    rra
    nop
    ld e, $00
    nop
    nop

jr_018_5bdd:
    nop
    nop

jr_018_5bdf:
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
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    nop
    adc b
    rlca
    sbc a
    nop
    rst $38
    dec de
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    db $e4
    jr jr_018_5c3f

    call z, Call_000_00fc
    db $fc
    ret c

    rlca
    nop
    dec bc
    inc b
    rlca
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    rst $38
    ld h, e
    xor $01
    call nz, $c603
    ld bc, $00cf
    rst $08
    add b
    ret nz

    add b
    ret nz

    nop
    db $fc
    ld a, b
    ld hl, sp+$00
    adc b
    ldh a, [rOBP0]
    or b
    cp h
    ld b, b
    db $fc
    nop
    ld hl, sp+$00

jr_018_5c3f:
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
    rlca
    nop
    ld [$1007], sp
    rrca
    ld a, $00
    ld e, l
    ld a, $7f
    ld a, $7f
    ld [hl+], a
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    adc b
    jr nz, jr_018_5c82

    jr nz, jr_018_5c84

    jr nz, jr_018_5c86

    ld h, b
    rra
    sub b
    ld l, a
    add b
    ld a, a
    add c
    ld a, [hl]
    ret nz

    ccf
    ld a, a
    add b
    ld a, a
    add b
    ld a, $c0
    dec e
    ld [$ea1d], a
    dec e
    ld [$02fd], a
    ld a, $c4
    ld a, a

jr_018_5c82:
    nop
    ld a, a

jr_018_5c84:
    nop
    add e

jr_018_5c86:
    ld a, h
    ld h, b
    rra
    ld a, $01
    jr c, @+$09

    dec e
    ld a, [bc]
    rra
    nop
    db $fc
    nop
    cp $04
    sbc $2c
    inc c
    ldh a, [$ff7c]
    add b
    adc b
    ld [hl], b
    ldh a, [$ff80]
    ldh a, [rP1]
    jr nc, jr_018_5cb2

    jr c, @+$09

    cpl
    db $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_5cad

jr_018_5cad:
    nop
    nop
    nop
    nop
    db $10

jr_018_5cb2:
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_5cbf

jr_018_5cbf:
    nop
    nop
    nop
    ld a, [hl+]
    jr z, @+$2a

    ld a, [bc]
    ld a, [de]
    ld [$181c], sp
    inc e
    inc e
    ld a, $1e
    ld a, $2c
    ld a, $07
    nop
    jr jr_018_5cdc

    jr nz, jr_018_5cf6

    nop
    ccf
    ld b, b
    ccf
    and b

jr_018_5cdc:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    xor $3e
    ld a, [hl-]
    adc $0e
    or $0a
    or $0a
    or $1e
    ldh [rIE], a
    nop
    rra
    ldh [$ff7f], a
    nop
    ccf
    nop

jr_018_5cf5:
    ld a, a

jr_018_5cf6:
    nop
    add a
    ld a, b
    ld h, b
    rra
    inc a
    inc bc
    jr nz, @+$21

    rra
    nop
    rst $38
    nop
    rst $38
    ld [$0aff], sp
    sbc $24
    ld a, [bc]
    db $f4

jr_018_5d0b:
    ld e, $e4
    ld a, [hl]
    adc h
    ld c, $f0
    inc e
    dec bc
    jr c, jr_018_5d1c

    db $10
    rrca
    cpl
    db $10
    ld e, [hl]
    jr nz, @+$3e

jr_018_5d1c:
    nop
    jr jr_018_5d1f

jr_018_5d1f:
    nop
    nop
    sbc $ae
    adc h
    halt
    jr jr_018_5d0b

    db $f4
    ld [$047a], sp
    inc a
    nop
    jr jr_018_5d2f

jr_018_5d2f:
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_5cf5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    rra
    ldh [$ff7f], a
    nop
    ccf
    nop

jr_018_5d45:
    ccf
    nop
    ld a, a
    nop
    adc a
    ld [hl], b

jr_018_5d4b:
    ld h, b
    rra
    jr nc, @+$11

    jr z, jr_018_5d68

    rst $38
    nop
    rst $38
    ld [$08fd], sp
    ld hl, sp+$00
    sbc $20
    ccf
    jp nz, $b65f

    xor a
    ld e, b
    sbc $ae
    adc h
    halt
    jr jr_018_5d4b

    db $f4

jr_018_5d68:
    ld [$047a], sp
    inc a
    nop
    jr jr_018_5d6f

jr_018_5d6f:
    nop
    nop
    rlca
    nop
    jr jr_018_5d7c

    jr nz, jr_018_5d96

    nop
    ccf
    ld b, b
    ccf
    and b

jr_018_5d7c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_5d45

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    rra
    ldh [rIE], a
    nop
    ld a, a
    nop
    ccf

jr_018_5d96:
    nop
    ccf
    nop
    ld e, a
    jr nz, jr_018_5d1c

    ld a, a
    ld [hl], b
    rrca
    cpl
    db $10
    rst $38
    nop
    rst $38
    ld [$08fd], sp
    ld hl, sp+$00
    ret nc

    jr nz, jr_018_5de8

    ret nz

    ld e, d
    or h
    ld l, $d8
    ld a, $05
    inc h
    dec de
    jr nc, @+$11

    ld a, a
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    cp $40
    ld e, [hl]
    and h
    ld a, $cc
    sbc h
    ld h, b
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_5dcf

jr_018_5dcf:
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
    inc e
    nop
    ld a, a
    inc e
    ld a, l
    ld a, $fa
    ld a, a
    xor d
    ld a, a
    and [hl]

jr_018_5de8:
    ld a, a
    db $dd
    ld a, $63
    inc e
    rst $38
    nop
    db $fd
    ld a, [bc]
    ldh [rP1], a
    sbc b
    ld h, b
    add h
    ld a, b
    add h
    ld a, b
    add [hl]
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    rst $38
    ld a, [bc]
    rst $38
    dec bc

jr_018_5e05:
    ld a, a
    dec bc
    ld e, a
    ld hl, $2c5f
    ccf
    rrca
    rra
    nop
    add hl, bc
    ld b, $fe
    cp b
    cp $f4
    db $fc
    ld [hl], b
    ldh a, [c]
    ld c, h
    ld sp, hl
    ld [hl], $fd
    ldh a, [c]
    ld a, [$f8e0]
    nop
    rrca
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0907], sp
    ld b, $13
    inc c
    dec sp
    inc b
    ccf
    nop
    inc e
    nop
    ld a, b
    and b

jr_018_5e33:
    jr z, jr_018_5e05

    ld [$c8f0], sp
    jr nc, @+$76

    ld [$007e], sp
    ld a, [hl]
    nop
    inc e
    nop
    nop
    inc b
    nop
    nop
    nop
    dec b
    dec b
    dec d
    db $10
    db $10
    dec b
    dec b
    inc d
    inc d
    ld d, a
    dec d
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
    ret nz

    nop
    ld e, l
    rla
    push af
    rra
    push af
    rra
    push af
    rra
    pop af
    rra
    ld [hl], c
    rra
    dec [hl]
    rra
    dec [hl]
    rra
    jr nc, jr_018_5e33

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    db $f4
    ld [$1f35], sp
    ld sp, $351f
    dec de
    ld sp, $3b1f
    dec d
    dec sp
    dec d
    ccf
    dec d
    ld a, a
    dec d
    cp $68
    ld a, [$f464]
    ld l, b
    add sp, $50
    ret z

    jr nc, @-$16

    ld [hl], b
    ldh a, [$ff60]
    ldh a, [rP1]
    ld a, [hl]
    dec d
    ld a, $15
    ld a, [hl-]
    dec d
    inc [hl]
    dec de
    jr nc, jr_018_5eca

    jr nc, @+$21

    jr c, jr_018_5ece

    rra
    nop
    add sp, $10
    db $fc
    nop

jr_018_5eb5:
    db $fc
    nop
    cp b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld d, b
    rrca
    ld d, b

jr_018_5eca:
    rrca
    ldh a, [rIF]
    ei

jr_018_5ece:
    inc b
    db $fc
    inc bc
    ldh [rP1], a
    jr jr_018_5eb5

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    ld a, a
    nop
    rra
    ld b, $0f
    ld b, $0f
    ld b, $17
    dec bc
    inc de
    inc c
    rrca
    nop
    rra
    rlca
    cp $04
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    or $e8
    db $ec
    jr @-$6a

    ld a, b
    ld hl, sp-$50
    ld [hl], h
    rra
    ld [hl], b
    rra
    inc h
    dec de
    ld l, $15
    inc [hl]
    dec de
    jr nz, jr_018_5f2c

    jr nz, jr_018_5f6e

    ld h, b
    ld e, a
    ldh a, [rP1]
    ret z

    jr nc, @-$02

    nop
    db $fc
    nop
    cp b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    ld b, b
    rst $38
    ldh [$ff3f], a
    ld a, a
    ld l, [hl]
    ld a, a
    add h

jr_018_5f28:
    adc $00
    nop
    nop

jr_018_5f2c:
    nop
    nop
    nop
    nop
    nop
    ldh [$fff0], a
    add b
    ret nz

    ret nz

    ret nz

    jr nz, jr_018_5f99

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    dec sp
    inc b
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $17
    dec bc
    inc de
    inc c
    rla
    ld c, $0f
    nop
    cp $04
    cp $b4
    cp $b0
    ld a, [$fdb4]
    ld [$18ff], a
    db $fc

jr_018_5f6e:
    jr nc, jr_018_5f28

    ld [hl], b
    ccf
    rra
    ld [hl], h
    rra
    ld [hl], b
    rra
    inc h
    dec de
    ld l, $15
    inc [hl]
    dec de
    jr nz, jr_018_5f9e

    jr nz, jr_018_5fa0

    ldh [rP1], a
    or b

jr_018_5f84:
    ld b, b
    ret z

    jr nc, jr_018_5f84

    nop
    db $fc
    nop
    cp b
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_018_5fb2

    rra
    nop
    nop
    nop
    nop
    nop

jr_018_5f99:
    nop
    nop
    nop
    nop
    nop

jr_018_5f9e:
    nop
    nop

jr_018_5fa0:
    nop
    add b
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

jr_018_5fb2:
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

jr_018_5ff7:
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
    jr jr_018_6003

jr_018_6003:
    inc a
    jr @+$78

    inc a
    db $d3
    ld a, h
    xor a
    ld a, d
    add $3d
    ld h, d
    sbc a
    ld [hl-], a
    call Call_000_0003
    inc b
    inc bc
    ld [$3c07], sp
    inc bc
    ld a, d
    dec b
    cp $01
    rst $38
    inc c
    rst $38
    ld [$b07f], sp
    rst $38

jr_018_6024:
    ld h, b
    db $eb
    call nc, $9fe0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_018_6033:
    ld b, b
    add b

jr_018_6035:
    jr nz, jr_018_5ff7

    and b
    ld b, b

jr_018_6039:
    ret nz

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    rst $38
    ld [hl], $ff
    ld b, $7f
    ld [hl-], a
    ld a, a
    ld [hl-], a
    ccf
    inc bc
    rla
    dec bc
    dec d
    dec bc
    ld e, $09
    rst $38
    nop
    cp $80
    ldh a, [$ff80]
    ldh [rP1], a
    ret nc

    jr nz, jr_018_6024

    or b
    ld hl, sp-$80
    and b
    ld b, b
    add hl, de
    ld b, $10
    rrca
    inc h
    dec de
    ccf
    nop
    ld a, [hl]
    ld bc, $003f
    rlca
    nop
    rlca
    nop
    jr nz, jr_018_6033

    jr nz, jr_018_6035

    ld b, b
    add b
    jr nz, jr_018_6039

    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    rlca
    nop
    jr jr_018_608c

    jr nz, jr_018_60a6

    jr nz, jr_018_60a8

    jr nz, jr_018_60aa

    ld l, h

jr_018_608c:
    inc de
    rst $30
    ld [$03ff], sp
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff0e], a
    ldh a, [rSB]
    cp $01

jr_018_609c:
    cp $c6
    jr c, jr_018_609c

    nop
    ld [$0a0a], sp
    ld e, d
    ld [bc], a

jr_018_60a6:
    ld e, $14

jr_018_60a8:
    ld a, $14

jr_018_60aa:
    cp [hl]
    ld [hl], $bf
    cp [hl]
    rst $38
    cp a
    rst $38
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    rrca
    nop
    ld e, b
    ld b, a
    rst $20
    ret c

    rst $38
    rst $00
    db $fc
    nop
    db $fc

jr_018_60c4:
    ld b, b
    rst $38
    ret nz

    ldh a, [c]
    adc h
    db $e4
    jr jr_018_60c4

    nop
    db $f4
    add sp, -$04
    ret nz

    cp l
    rst $38
    scf
    rst $38
    or a
    ld a, a
    ld a, $7f
    ld h, l
    ld a, $1a
    inc h
    inc h
    nop
    nop
    nop
    rst $38
    ld c, h
    inc e
    inc bc
    ld b, $01
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    jr jr_018_60fc

    ldh a, [$ff8c]
    ld [hl], b
    cp $00
    ld a, h
    nop
    ld a, b

jr_018_60fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, $1f
    inc [hl]
    rra
    jr nc, jr_018_612c

    ld h, h
    rra
    ldh [$ff5f], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $18
    rrca
    adc a
    nop
    db $f4
    dec bc
    rst $38
    ld [hl], h
    rst $38
    rrca
    db $fc
    nop
    db $fc
    ld b, b
    db $fc
    ret nz

    or $88
    pop hl
    ld e, $f2

jr_018_612c:
    inc c
    db $fc
    ldh [$fff4], a
    ret z

    ld [hl], b
    rra
    jr nz, jr_018_6154

    ld [hl+], a
    ld e, l
    ld l, d
    ld d, l
    rst $38
    ldh [$ff3f], a
    ld a, a
    ld l, [hl]
    ld a, a
    add h
    adc $8f
    nop
    call nz, $c603
    ld b, c
    rst $38
    ld h, b
    rst $08
    add b
    ret nz

    ret nz

    ld h, b
    jr nz, jr_018_6150

jr_018_6150:
    nop
    ld bc, $0100

jr_018_6154:
    nop
    rra
    nop
    ld a, $1f
    inc [hl]
    rra
    jr nc, jr_018_617c

    ld h, h
    rra
    ldh [$ff5f], a
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    ld c, a
    nop
    ld b, h
    inc bc
    ld a, a
    nop
    ld a, a
    scf
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ret c

    and b
    db $e4
    jr jr_018_61ef

jr_018_617c:
    adc h
    db $fc
    ld h, b
    ld hl, sp-$20
    ld [hl], b
    rra
    jr nz, jr_018_61a4

    jr nz, jr_018_61a6

    ld a, [hl+]
    dec d
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, $47
    nop
    ld b, h
    inc bc
    ld b, a
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    db $e4
    jr jr_018_61ac

jr_018_61a4:
    ldh a, [$ff8c]

jr_018_61a6:
    ld [hl], b
    cp $00
    ld a, h
    nop
    ld a, b

jr_018_61ac:
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
    rrca
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_018_61da

    ld d, b
    cpl
    adc b
    ld [hl], a
    ret nz

    ccf
    ldh a, [c]
    inc a
    pop de
    ld a, [hl]
    ld sp, hl
    ld h, [hl]
    db $fd
    ld e, d
    push af

jr_018_61da:
    ld e, d
    ld sp, hl
    ld h, [hl]
    pop af
    ld a, [hl]
    pop de
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld [hl], b
    rrca

jr_018_61ef:
    jr z, jr_018_6208

    pop de
    ld a, [hl]
    db $fd
    ld b, d
    di
    inc a
    pop bc
    ld a, [hl]
    jp nz, Jump_000_3c3c

    ret nz

    ld l, h
    sub b
    cp h
    ld l, b
    ld a, [de]
    dec c
    dec l
    ld [de], a
    db $10
    rrca
    cpl

jr_018_6208:
    db $10
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop

jr_018_6210:
    nop
    ret c

    or b
    or b
    ld b, b
    db $10
    ldh [$ffb0], a
    ld b, b
    ret z

    jr nc, jr_018_6210

    ld [$00f8], sp
    ld [hl], b
    nop
    nop
    nop
    nop
    jr nz, jr_018_622e

    adc b
    jr nz, @+$24

    nop
    xor b
    adc b
    adc d
    xor d

jr_018_622e:
    xor d
    xor d
    ld a, [hl+]
    jr jr_018_623a

    jr nz, jr_018_6254

    jr nz, jr_018_6256

    ld h, b
    rra
    sub b

jr_018_623a:
    ld l, a
    add c
    ld a, [hl]
    add b
    ld a, a
    pop bc
    ld a, $35
    rst $08
    dec c
    or $0f
    db $f4
    rrca
    ldh a, [$ff1f]
    ldh [rIE], a
    nop
    rra
    pop hl
    rst $38
    ld bc, $007f
    ccf

jr_018_6254:
    nop
    db $e3

jr_018_6256:
    inc e
    ld b, b
    ccf
    jr c, @+$09

    ld b, e
    inc a
    ld a, b
    rlca
    ccf
    ld [$09ff], sp
    db $fd

jr_018_6264:
    ld a, [bc]

jr_018_6265:
    ld sp, hl
    ld b, $d3
    inc l
    rlca
    ld hl, sp-$25
    inc h
    add a
    ld a, d
    rst $18
    and [hl]
    ld e, l
    ld [hl+], a
    jr nz, @+$21

    inc l
    inc de
    ld [hl], e
    inc c
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    cp a
    ld b, h
    rra
    ldh [rNR34], a
    ldh [$ffb0], a
    ld b, b
    ret z

    jr nc, jr_018_6264

    jr nz, jr_018_630a

    nop
    jr c, jr_018_6291

jr_018_6291:
    rlca
    nop
    jr jr_018_629c

    jr nz, jr_018_62b6

    jr nz, jr_018_62b8

    ld h, b
    rra
    and b

jr_018_629c:
    ld e, a
    sub e
    ld l, h
    ret nz

    ccf
    ret nz

    nop

jr_018_62a3:
    jr nc, jr_018_6265

jr_018_62a5:
    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR24]
    ldh [rIE], a
    nop
    ccf
    ret nz

    ld a, a
    nop
    ccf
    nop
    rst $38

jr_018_62b6:
    nop
    cp a

jr_018_62b8:
    ld b, b
    add a
    ld a, b
    ld b, b
    ccf
    ld [hl], c
    ld c, $3f
    ld de, $00fe
    db $fc
    db $10
    db $fc
    db $10
    cp $00
    cp [hl]
    ld b, b
    ld a, [hl]
    add h
    cp $30
    cp $30
    dec sp
    inc b
    jr nz, jr_018_62f4

jr_018_62d5:
    ld d, b
    cpl
    rst $28
    db $10
    ld a, l
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_018_62a3

    jr nz, jr_018_62a5

    jr nz, @-$3e

    ld h, b
    add b
    ret nz

    ld h, b
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    sub b
    ld h, b
    db $10

jr_018_62f4:
    add sp, $18
    add sp, -$04
    ld e, $f0
    ld a, b
    sbc b
    jr c, @-$3a

    inc c
    add b
    nop
    rlca
    nop
    jr jr_018_630c

    jr nz, jr_018_6326

    jr nz, jr_018_6328

    ld h, b

jr_018_630a:
    rra
    sub b

jr_018_630c:
    ld l, a
    add c
    ld a, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_62d5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38

jr_018_6326:
    nop
    cp a

jr_018_6328:
    ld b, b
    ld c, a
    jr nc, jr_018_635c

    rrca
    db $10
    rrca
    ld e, $05
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    cp $0c
    cp [hl]
    ld c, h
    ld a, [hl]
    or h
    cp $34
    ld a, [hl]
    adc h
    dec e
    ld [bc], a
    jr jr_018_634c

    daa
    jr jr_018_63c6

    nop
    ld a, $00
    inc e

jr_018_634c:
    nop
    nop
    nop
    nop
    nop
    sbc $28
    ld e, $e0
    cp h
    ld b, b
    ret z

    jr nc, @-$06

    nop
    db $fc

jr_018_635c:
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$081c], sp
    ld a, [hl+]
    inc e
    ld a, $1c
    ccf
    inc d
    ld a, $15
    ld a, $1d
    ld a, [hl+]
    dec e
    rra
    ld [$0b7c], sp
    rst $30
    ld [$02ff], sp
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp-$7a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    rst $38
    ld a, [de]
    rst $38
    dec d
    ld a, a
    inc c
    cpl
    inc de
    daa
    add hl, de
    dec d
    ld a, [bc]
    dec bc
    inc b
    ld c, $05
    cp $b0
    cp $fc
    db $fc
    ld [hl], b
    ldh a, [c]
    adc h
    ld sp, hl
    or $fd
    ld [hl], d
    ld a, [$e800]
    ld d, b
    inc c
    inc bc
    ld [$0807], sp
    rlca
    dec c
    ld [bc], a
    inc de
    inc c
    ccf
    nop
    ld a, $00
    inc e
    nop
    ret z

    jr nc, jr_018_63cc

    ldh a, [$ff08]

jr_018_63c6:
    ldh a, [$ffd8]
    jr nz, jr_018_642e

    jr @+$80

jr_018_63cc:
    nop
    ld a, $00
    inc e
    nop
    ld bc, $0300
    nop
    dec l
    ld [bc], a
    ld sp, $730e
    dec c
    ld [hl], e
    dec c
    ld a, e
    dec b
    ld [hl], l
    dec bc
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    ld b, $f8
    add l
    ld a, d
    add l
    ld a, d
    add c
    ld a, [hl]
    ld b, l
    cp d
    add hl, sp
    rlca
    dec de
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld a, [bc]
    rlca
    ld c, [hl]
    or b
    cp $84
    rst $38
    or h
    db $fd
    or d
    ld sp, hl
    or [hl]
    cp $a0
    db $fc
    sbc b
    db $fc
    cp b
    ld [de], a
    rrca
    jr c, jr_018_641c

    add hl, sp
    rlca
    add hl, de
    rlca
    inc bc

jr_018_641a:
    rlca
    inc bc

jr_018_641c:
    rlca
    inc bc
    rlca
    ld bc, $8c07
    ldh a, [$ff3c]
    ret nz

    inc h
    ret c

    inc a
    ret nz

    cp [hl]
    ret nz

    sbc [hl]
    ret nz

    add b

jr_018_642e:
    ret nz

    nop
    ret nz

    inc b
    rra
    ld a, [bc]
    dec d

jr_018_6435:
    ld c, $1b
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    ld c, $00
    inc b
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nc, @+$11

    ld a, b
    rlca
    rst $38
    nop
    db $f4
    dec bc
    ldh [rP1], a
    jr jr_018_6435

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    adc a
    nop
    rrca
    ld b, $0f
    ld b, $0f
    ld b, $0f
    inc bc
    dec bc
    inc b
    dec bc
    inc b
    rrca
    inc bc
    cp $04
    cp $b4
    db $fc
    or b
    rst $38
    or b
    ld sp, hl
    and $e6
    jr jr_018_641a

    ld a, b
    db $fc
    or b
    rla
    ld a, [bc]
    dec sp
    inc b
    ld a, $01
    dec e
    inc bc
    rlca
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207
    db $fc
    add b
    or h
    ld e, b
    db $fc
    nop
    ld a, [hl]
    add b
    sbc $80
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    rra
    ld c, $1f
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    dec sp
    inc b
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $0f
    inc bc
    dec bc
    inc b
    add hl, bc
    ld b, $0b
    rlca
    cp $04
    cp $b4
    db $fc
    or b
    db $fc
    or b
    ld a, [$e5e4]
    ld a, [de]
    sbc $38
    cp h
    ldh a, [$ff1f]
    ld [bc], a
    ld [de], a
    dec c
    dec a
    inc bc
    ccf
    ld [bc], a
    ld e, $01
    rlca
    ld bc, $0207
    rlca
    inc bc
    db $fc
    add b
    db $e4
    jr jr_018_6572

    add b
    cp $80
    sbc $00
    ret nz

    nop
    ret nz

    add b

Call_018_64ff:
    ret nz

    add b
    rra
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
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
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rra
    ld c, $1f
    inc c
    nop
    nop
    ld a, h
    nop
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$08
    ret nz

    ld hl, sp+$00
    db $fc
    nop
    ld a, [$3f04]
    inc e
    ccf
    jr jr_018_6575

    jr jr_018_6577

    jr jr_018_6573

    ld b, $7b
    dec b
    or $0b
    db $fd
    ld [bc], a
    cp $04
    db $fc
    nop
    cp $00
    cp $0c
    db $fc
    sbc b
    ld a, b
    sub b
    cp b
    ld b, b
    adc $30
    rst $38
    inc c
    rst $38

jr_018_6554:
    dec c
    cp a
    ld d, $5f
    ld a, [hl-]
    ld a, a
    inc bc
    rla
    add hl, bc
    dec de
    dec b
    dec de
    inc b
    rst $20
    jr @-$27

    jr z, jr_018_6554

    ld d, b
    xor b
    ld d, b
    ret nc

    jr nz, jr_018_6554

    sub b
    db $e4
    sbc b
    sbc h
    ld h, b
    rla

jr_018_6572:
    ld a, [bc]

jr_018_6573:
    ld a, [bc]
    dec b

jr_018_6575:
    inc c
    inc bc

jr_018_6577:
    add hl, bc
    ld b, $07
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    inc d
    ldh [rNR10], a
    ldh [$ff88], a
    ld [hl], b
    sbc b
    ld h, b
    cp b
    ld b, b
    call c, Call_018_7c20
    nop
    ld a, h
    nop
    rlca
    nop
    jr jr_018_65ac

    jr nz, jr_018_65d6

    jr nz, @+$81

    ld h, b
    ld e, a
    ld a, h
    jp $c8f7


    rst $38
    add d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_018_65ac:
    cp $c6
    jr c, jr_018_65ac

    nop
    ld bc, $0909
    dec de
    ld de, $131b
    ccf
    inc sp
    ccf
    inc sp
    ccf
    scf
    ld a, a
    ld [hl], a
    ld a, a
    rst $38
    db $eb
    rst $38
    set 7, a
    db $db
    rst $18
    rst $08
    adc a
    add b
    xor b
    and a
    cp a
    or b
    ei
    db $fd
    db $fd
    nop
    rst $38
    ld b, b
    ld sp, hl

jr_018_65d6:
    add $f2
    adc h
    db $e4
    jr jr_018_6638

    and b
    add sp, $70
    ld hl, sp-$20
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    rst $10
    ei
    ret


    or $e7
    ld hl, sp-$11
    db $f4
    rst $30
    ld hl, sp-$08
    db $fc
    ldh [$fff8], a
    add b
    ldh [$ffe8], a
    db $10
    inc c
    ldh a, [$ff86]
    ld a, b
    rst $38
    nop
    ld e, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_661c

    jr nz, jr_018_6636

    jr nz, jr_018_6638

    jr nz, jr_018_663a

    inc a

jr_018_661c:
    inc bc
    ld [hl], a
    ld [$02ff], sp
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_018_662c:
    cp $c6
    jr c, jr_018_662c

    nop
    nop
    nop
    nop
    nop
    nop

jr_018_6636:
    nop
    rrca

jr_018_6638:
    nop
    rra

jr_018_663a:
    nop
    rra
    rrca
    rrca
    nop
    rrca
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $18
    rrca
    rst $28
    nop
    add sp, -$39
    ld sp, hl
    ld b, $ff
    dec a
    db $fc
    nop
    db $fc
    ld b, b
    db $fd
    ret nz

    di
    adc h
    and c
    ld e, [hl]
    halt
    adc b
    ld hl, sp+$70
    ld hl, sp-$20
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $38
    jr nc, @+$01

    ld a, a
    ld a, a
    rra
    rra
    nop
    rst $38
    ld [bc], a
    add sp, $07
    rst $20
    nop
    rst $38

jr_018_6678:
    nop
    rst $38
    jr nc, jr_018_6678

    ld hl, sp-$08
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    rlca
    rlca
    nop
    rlca
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh [$fffc], a
    inc bc
    rst $38
    inc e
    db $fc
    nop
    db $fc
    ld b, b
    db $fc
    ret nz

    ld hl, sp+$00
    db $e4
    jr jr_018_66de

    call z, Call_000_30fe
    ei
    ldh a, [rTAC]
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    jr jr_018_673b

    ccf
    ccf
    rrca
    rrca
    nop
    rst $38
    ld [bc], a
    db $f4
    inc bc
    ld hl, sp+$07
    db $fd
    ld [bc], a
    rst $38
    jr @+$01

    db $fc
    db $fc
    ldh a, [$fff0]
    nop
    ld hl, sp+$00
    ld [$24f0], sp
    ret c

    call nz, $fe38
    nop
    ld a, $00
    inc a

jr_018_66de:
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
    nop
    ld c, $04
    ld c, $04
    ld c, $04
    rst $38
    ld c, $0c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nz, jr_018_6718

    jr nz, jr_018_671a

    ld h, b
    rra
    sub b
    ld l, a
    ret nz

    ccf
    ld a, l
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, [hl]
    xor b
    ld a, h
    sub b
    ld a, h
    add b
    db $fc
    jr z, @+$01

    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a

jr_018_6718:
    jr nz, jr_018_673a

jr_018_671a:
    rra
    ld a, b
    rlca
    add c
    ld a, [hl]
    ld l, b

jr_018_6720:
    rla
    db $fc
    jr c, jr_018_6720

    db $10
    call c, Call_000_1e28
    db $e4
    xor $14
    inc l
    ret nc

    ret z

    jr nc, jr_018_6740

    ldh [rNR33], a
    ld a, [bc]
    jr z, jr_018_674c

    jr nz, jr_018_6756

    inc hl
    inc e
    ld a, [hl]

jr_018_673a:
    nop

jr_018_673b:
    ld a, $00
    inc e
    nop
    nop

jr_018_6740:
    nop
    ldh a, [$ff80]
    sub b
    ld h, b
    db $10
    ldh [$ffb0], a

jr_018_6748:
    ld b, b
    ret z

    jr nc, jr_018_6748

jr_018_674c:
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    stop
    db $10
    db $10

jr_018_6756:
    db $10
    db $10
    jr c, @+$12

    jr c, jr_018_6794

    jr c, @+$3a

    jr c, jr_018_6798

    ld a, h
    nop
    nop
    rlca
    nop
    jr jr_018_676e

    jr nz, jr_018_6788

    jr nz, jr_018_678a

    ld h, b
    rra
    sub c

jr_018_676e:
    ld l, [hl]
    ret nz

    ccf
    jr c, jr_018_67ef

    db $fc
    inc a
    inc a
    call z, $f40d
    rrca
    db $f4
    rrca
    ldh a, [rIE]
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    add a

jr_018_6788:
    ld a, b
    pop hl

jr_018_678a:
    ld e, $33
    inc c
    jr z, @+$19

    inc a
    dec bc
    cp $00
    db $fc

jr_018_6794:
    ld [$08fc], sp
    db $fc

jr_018_6798:
    nop
    db $fc
    nop
    call c, Call_000_3c28
    ret z

jr_018_679f:
    cp h
    ld [hl], h
    cpl
    db $10
    jr nz, @+$21

    jr nc, @+$11

    ld a, a
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    db $fc
    or h
    sbc h
    ld l, h
    jr jr_018_679f

    ret nc

    jr nz, @-$76

jr_018_67ba:
    ld [hl], b
    ret c

    jr nz, jr_018_67ba

    nop
    ld a, h
    nop
    rlca
    nop
    jr jr_018_67cc

    jr nz, jr_018_67e6

    ld h, b
    rra
    sub b
    ld l, a
    add b

jr_018_67cc:
    ld a, a
    ret nz

    ccf
    ld a, a
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ffee]
    db $10
    rra
    ldh [$ffef], a
    db $10
    ld a, a
    nop
    ld a, a
    nop
    ccf

jr_018_67e6:
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    ld a, h
    inc bc
    jr z, jr_018_6806

jr_018_67ef:
    ld a, $09
    rst $38
    nop
    rst $38
    ld [$08fc], sp
    db $fc
    nop
    ret nc

    jr nz, jr_018_6804

    ldh a, [$ff78]
    add b
    inc b
    ld hl, sp-$24
    and b
    sbc h

jr_018_6804:
    ld l, b
    ld a, h

jr_018_6806:
    adc b
    sbc b
    ld h, b
    ret z

    jr nc, jr_018_6804

    nop
    db $fc
    nop
    ld a, h
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR23]
    ldh [$fffc], a
    nop
    ld a, [de]
    db $e4
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld h, b
    rra
    add e
    ld a, h
    ld [hl], b
    rrca
    rst $38
    nop
    rst $38
    nop

jr_018_6835:
    rst $38
    ld [$08ff], sp
    ld sp, hl
    nop
    jr nc, @-$3e

    ldh a, [rP1]
    inc c
    ldh a, [$ff35]
    dec de
    dec sp
    inc b
    jr nz, jr_018_6866

    daa
    jr jr_018_68c4

    inc b

jr_018_684b:
    ld a, $00
    inc e
    nop
    nop
    nop
    xor h
    ld e, b
    jr jr_018_6835

    db $10
    ldh [$ffb0], a
    ld b, b
    adc b
    ld [hl], b
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    ld c, $00
    add hl, de
    ld c, $ff

jr_018_6866:
    nop
    ldh a, [$ff7f]
    add a
    ld a, b
    ld l, a

jr_018_686c:
    ld a, [hl-]
    ld l, e
    ld a, $62
    dec a
    nop
    nop
    rrca
    nop
    ldh a, [rIF]
    ldh [$ffdf], a
    ldh [$ff1f], a
    db $fc
    add e
    ldh [c], a
    sbc l
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    jr nz, jr_018_684b

    db $10
    ldh [$ff28], a
    ret nc

    add sp, $10
    ld [hl-], a
    dec e
    jr nc, @+$21

    add hl, de
    ld c, $0e
    nop
    rra
    inc c
    rra
    rrca
    rrca
    ld bc, $040f
    rst $38
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    or l
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    add b
    add b
    rst $38
    db $dd
    ld [hl+], a
    ldh a, [$ff80]
    ldh a, [$ffa0]
    ldh a, [$ffe0]
    ldh a, [$ff80]
    ret z

    jr nc, jr_018_686c

    ld b, b
    ld [hl], b
    and b
    ld a, b
    or b
    adc a
    ld [bc], a
    ld a, [bc]

jr_018_68c4:
    dec b
    ld [$0d07], sp
    ld [bc], a
    inc de
    inc c
    ccf
    nop
    ld a, $00
    inc e
    nop
    ld a, a
    and [hl]
    cpl
    sub $0e
    ldh a, [$ffd8]
    jr nz, jr_018_693e

    jr jr_018_695a

    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_68f2

    jr nz, jr_018_690c

    jr nz, jr_018_690e

    jr nz, jr_018_6910

    nop

jr_018_68f2:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld c, $f0
    add hl, bc
    or $09
    or $20
    rra
    scf
    ld [$0778], sp
    rst $38
    nop
    rst $38
    dec c
    rst $38

jr_018_690c:
    dec c
    rst $38

jr_018_690e:
    dec c
    nop

jr_018_6910:
    nop
    ld bc, $0afe
    db $f4
    sub h
    ld l, b
    db $fc
    ld [$68fc], sp
    cp $70
    rst $38
    ld l, [hl]
    nop
    nop
    cp a
    rla
    ccf
    db $10
    add hl, de
    ld c, $34
    dec de
    ld [hl], $1d
    ld h, e
    inc a
    ld e, a
    ccf
    xor [hl]
    ld [hl], c
    rst $28
    sub $d6
    jr nz, @+$12

    ldh [$ffb0], a

jr_018_6938:
    ld b, b
    ret z

    jr nc, jr_018_6938

    add b
    db $fc

jr_018_693e:
    nop
    ld hl, sp-$80
    rst $18
    ld h, b
    rst $38
    ld b, [hl]
    cp $4f
    sbc h
    ld l, a
    ld c, c
    ld [hl], $27
    jr jr_018_696d

    nop
    nop
    nop
    jr nz, @-$3e

    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ld b, b

jr_018_695a:
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ccf
    rra
    ld l, [hl]
    ld sp, $6cdf
    db $fd
    ld e, [hl]
    ld sp, hl
    ld e, [hl]

jr_018_696d:
    di
    ld c, h
    rst $18
    ld h, b
    ld bc, $8afe
    ld [hl], h
    db $f4
    adc b
    db $fc
    ret z

    db $fc
    ld c, b
    cp $40
    rst $38
    ld c, [hl]
    rst $28
    ld d, [hl]
    ld a, a
    jr nc, jr_018_6a03

    rra
    ccf
    nop
    ld e, $01
    ld de, $260e
    jr jr_018_69cc

    nop
    ld a, [hl]
    nop
    sub $a0
    ret nc

    jr nz, @-$4e

    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_018_699f

jr_018_699f:
    nop
    nop
    ld a, h
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
    ld bc, $0f00
    nop
    rrca
    rlca
    ld [$0607], sp
    inc bc
    ld b, $03
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$fffe], a
    nop
    ld [bc], a
    db $fc
    ld a, [hl]

jr_018_69cc:
    add b
    db $f4
    xor b
    or h
    add sp, $07
    ld [bc], a
    dec bc
    dec b
    inc de
    dec c
    ld de, $1c0e
    inc bc
    ld [hl], e
    inc c
    rst $38
    nop
    rst $38
    ld a, [bc]
    db $fc
    and b
    ld hl, sp+$50
    ld hl, sp+$50
    db $f4
    ld c, b
    xor $10
    pop af
    ld c, [hl]
    pop hl
    ld e, [hl]
    ldh a, [c]
    inc c
    rst $38
    ld a, [bc]
    rst $38
    ld a, [de]
    ld e, a
    rrca
    rrca
    ld b, $07
    nop
    dec c
    ld [bc], a
    add hl, de
    ld b, $3f
    db $10
    db $fc
    ret nz

jr_018_6a03:
    db $fc
    ret nz

    ld hl, sp+$40
    ldh a, [$ffc0]
    add sp, -$30
    db $e4
    ret c

    ld hl, sp-$40
    ldh a, [rP1]
    ld a, $15
    inc e
    inc bc
    inc b
    inc bc
    ld [$0d07], sp
    ld [bc], a
    rra
    nop
    rra
    nop
    inc bc
    nop
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ffa0], a
    ld b, b
    db $10
    ldh [$fff0], a
    nop
    ldh a, [rP1]
    ldh [rP1], a
    rlca
    nop
    jr jr_018_6a3c

    jr nz, jr_018_6a56

    jr nz, jr_018_6a58

    jr nz, @+$21

    ld l, h

jr_018_6a3c:
    inc de
    rst $38
    nop
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01
    cp $00
    nop
    jr c, jr_018_6a55

jr_018_6a55:
    scf

jr_018_6a56:
    jr jr_018_6a8f

jr_018_6a58:
    rra
    jr nc, @+$21

    ld [hl], $1f
    ld a, c
    ld d, $ff
    ld d, [hl]
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    rst $38
    rrca

jr_018_6a69:
    rst $38
    ret nz

    ccf
    xor $9f
    ld l, a
    ccf
    jp Jump_000_00fe


    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    cp $80
    ldh [c], a
    inc e
    sub h
    ld l, b
    cp $51
    xor c
    ld d, [hl]
    ld l, a
    db $10
    jr c, jr_018_6a89

jr_018_6a89:
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_6a8f:
    nop
    nop
    ei
    inc b
    ret z

    rlca
    inc c
    inc bc
    rra
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$40
    xor b
    ret nc

    adc b
    ld [hl], b
    jr nc, jr_018_6a69

    sbc b
    ld h, b
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ld bc, $1f00
    ld bc, $1b34
    dec a
    ld d, $3a
    dec c
    dec [hl]
    ld a, [de]
    ld [hl], e
    ld a, $e9
    ld a, a
    add b
    nop
    add b
    nop
    add a
    nop
    ret c

    add a
    ldh [$ffdf], a
    ldh [$ff5f], a
    ldh a, [$ffaf]
    db $fc
    ld h, e
    push af
    ld e, $1d
    rrca
    inc c
    inc bc
    inc bc
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
    and b
    cp a
    jp z, $8b7f

    rst $18
    inc hl
    ccf
    dec c
    rra
    ld c, $1f
    inc bc
    rlca
    ld bc, $00fe
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    cp $00
    ldh [c], a
    sbc h
    db $f4
    add sp, $0f
    inc b
    inc c
    inc bc
    db $10
    rrca
    ld de, $0c0e
    inc bc
    rra
    nop
    ld e, $00
    nop
    nop
    ld hl, sp-$20
    add sp, $10
    ld [$30f0], sp
    ret nz

    sbc b
    ld h, b
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
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
    ld c, $00
    add hl, de
    ld c, $00
    nop
    ld bc, $0200
    ld bc, $0102
    ld b, $01
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $0c
    inc bc
    ld a, a
    nop
    add e
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $fefe
    nop
    add d
    db $fc
    cp [hl]
    ld b, b
    sub h
    ld l, b
    call nc, $fc28
    nop
    add sp, $10
    add sp, $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    add a
    ld a, b
    ld h, b
    rra
    jr c, jr_018_6b76

    ld b, h
    dec sp
    rst $38
    ld b, $ff
    ld a, [bc]

jr_018_6b75:
    rst $38

jr_018_6b76:
    nop
    rst $38
    ld b, $de
    inc l
    inc a
    ret c

    ld hl, sp+$10
    ld c, b
    or b
    cp $65
    db $f4
    ld l, e
    ld [hl], b
    rrca
    inc de
    inc c
    ld l, $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_6b91

jr_018_6b91:
    ldh a, [rLCDC]
    ld d, b
    and b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_018_6ba1

jr_018_6ba1:
    rlca
    nop
    jr jr_018_6bac

    jr nz, jr_018_6bc6

    jr nz, jr_018_6bc8

    ld h, b
    rra
    and b

jr_018_6bac:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_6b75

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR32]
    ldh [$fffe], a
    nop
    ccf
    ret nz

    ccf
    nop
    rra
    nop
    rra

jr_018_6bc6:
    nop
    rrca

jr_018_6bc8:
    nop
    inc e
    inc bc
    jr nz, jr_018_6bec

    ld de, $1f0e
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    nop
    add [hl]
    ld a, c
    ccf
    ret nz

    rrca
    di
    rst $30
    rrca
    rst $38
    db $10
    ret nz

    nop
    and b
    ret nz

    ld d, b
    and b
    xor b
    ld d, b
    ld l, b
    sub b
    xor b

jr_018_6bec:
    ld d, b
    xor b
    ld d, b
    ld e, b
    and b
    add hl, bc
    ld b, $04
    inc bc
    add hl, bc
    ld b, $1f
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc de
    db $ec
    rlca
    ld hl, sp-$0d
    inc c
    cp l

jr_018_6c08:
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    or b
    ld b, b
    ldh [rP1], a
    ret nz

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
    jr jr_018_6c23

jr_018_6c23:
    ld b, $18
    ld bc, $011e
    ld e, $01
    ld e, $03
    inc e
    rra
    nop
    rlca
    jr jr_018_6c32

jr_018_6c32:
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ldh [$ff88], a
    ld [hl], b
    ld d, h
    xor b
    or h
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    add a
    ld a, e
    ccf
    jp $f60f


    or $08
    db $fc
    db $10
    add sp, -$70
    ld l, b
    sub b
    ret c

    jr nz, jr_018_6c08

    ld b, b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [de], a
    db $ec
    inc b
    ld hl, sp-$06
    inc b
    cp a
    nop
    ld e, $00
    inc c
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
    ld a, $00
    ld a, e
    inc d
    ld l, l
    ld a, [hl-]
    jp c, $fd75

    ld a, [hl+]
    ld a, [$f555]
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    ld a, [hl+]
    ld l, e
    inc d
    ldh a, [rP1]
    adc h
    ld [hl], b
    add d
    ld a, h
    add d
    ld a, h
    pop bc
    ld a, $a2
    ld e, l
    cp $01
    db $fd
    ld [hl-], a
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
    add b
    nop
    add b
    nop
    ld a, a
    ld [bc], a
    ccf
    ld a, [de]
    ccf
    rla
    ccf
    inc de
    ccf
    jr jr_018_6cda

    add hl, bc
    ld [$0f07], sp
    ld [bc], a
    cp $b4
    cp $b4
    db $fc
    ldh a, [$fffa]
    ld h, h
    push af
    ld a, [bc]
    ld c, $f4
    ld a, $c4
    rst $38
    ld h, $0a
    dec b
    ld [$0d07], sp
    ld [bc], a
    inc de
    inc c
    ccf

jr_018_6cda:
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    cpl
    sub $0e
    ldh a, [$ffd8]
    jr nz, jr_018_6d4c

    jr jr_018_6d68

    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc d
    dec bc
    ld a, a
    nop
    rst $38
    ld b, $e0
    nop
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    rst $38
    nop
    cp $30
    rst $38
    add hl, bc
    cp $03
    db $fd
    rlca
    rst $18
    ld [bc], a
    cp a
    dec d
    scf
    ld a, [de]
    ld a, d
    dec d
    ld a, l
    ld [bc], a
    cp [hl]
    ld b, h
    sbc $a0
    xor d
    ld d, h
    db $dd
    and d
    xor a
    ld d, h
    ld d, [hl]
    xor h
    xor a
    ld d, h
    ld e, a
    and b
    ld b, [hl]
    add hl, sp
    inc hl
    inc e
    ld a, a
    nop
    ld a, h
    nop
    jr c, jr_018_6d3b

jr_018_6d3b:
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    ld c, [hl]
    ldh [c], a
    inc e

jr_018_6d45:
    rst $38
    nop
    rra
    nop
    ld c, $00
    nop

jr_018_6d4c:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc d
    dec bc
    ld a, a
    nop
    rst $28
    ld de, $00e0
    jr jr_018_6d45

    inc b
    ld hl, sp+$04

jr_018_6d68:
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    push af
    ld a, [bc]
    ld a, [$fe44]
    dec bc
    db $fd
    rlca
    rst $38
    ld [de], a
    rst $30
    dec e
    cp a
    ld [de], a
    ld a, [hl-]
    dec b
    dec e
    ld a, [bc]
    ld e, $01
    sbc $a0
    xor e
    ld d, h
    db $dd
    and [hl]
    and [hl]
    ld e, h
    ld e, [hl]
    and h
    xor [hl]
    ld d, b
    ld e, h
    xor b
    cp h
    ld b, b
    cpl
    jr jr_018_6db4

    rra

jr_018_6d95:
    rla
    ld [$102e], sp
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_018_6d9f

jr_018_6d9f:
    nop
    nop
    ld a, [$020c]
    db $fc
    db $f4
    ld [$043a], sp
    ccf
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop

jr_018_6db4:
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    add hl, sp
    ld c, $6e
    dec [hl]
    db $f4

jr_018_6dc0:
    ld e, e
    ld a, a
    jr z, jr_018_6dc0

    ld d, e
    ldh a, [$ff2f]
    ld [hl], b
    cpl
    inc a
    inc bc
    ld [hl], d
    dec c
    rst $38
    nop
    rst $38
    dec bc
    ret nz

    nop
    jr nc, jr_018_6d95

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$0e
    ldh a, [$ffc1]
    ld a, $f1
    ld c, $ff
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $0b
    inc b
    cp $00
    db $fc
    ld b, b
    db $fc
    ret nz

    ld hl, sp-$40
    cp $00
    ld hl, $cede
    ldh a, [$fff8]
    ldh [$ff0c], a
    inc bc
    ld c, $05
    inc b
    inc bc
    dec b
    ld [bc], a
    ld b, $01
    rrca
    nop
    rrca
    nop
    ld bc, $f800
    ld h, b
    ld a, b
    or b
    ld a, b
    or b
    cp b
    ld b, b
    adc b
    ld [hl], b
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    rlca

jr_018_6e24:
    nop
    jr jr_018_6e2e

    jr nz, jr_018_6e48

    jr nz, jr_018_6e4a

    jr nz, @+$21

    ld l, h

jr_018_6e2e:
    inc de

jr_018_6e2f:
    sub e
    ld l, h
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_018_6e3e:
    cp $c6
    jr c, jr_018_6e45

    nop
    inc bc
    nop

jr_018_6e45:
    rlca
    nop
    dec c

jr_018_6e48:
    ld b, $1a

jr_018_6e4a:
    rrca
    ld d, $0d
    ld a, [de]
    rrca
    ld d, $0d
    rst $38
    ld [$2cff], sp
    rst $38
    dec l
    rst $38
    ld l, a
    rst $38
    ld a, $fe
    ld bc, $4eb1
    cp $21
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    ret z

    jr nc, jr_018_6e24

    ld b, b
    jr nz, jr_018_6e2f

    ld h, b
    add b
    ld a, [de]
    rrca
    ld d, $0d
    ld a, [bc]
    rlca
    ld c, $05
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38

jr_018_6e84:
    jr nc, jr_018_6e3e

    ld b, a
    jp z, $fd35

    ld [bc], a
    ld a, e
    inc b
    rlca
    nop
    nop
    nop

jr_018_6e91:
    ld h, b
    add b
    sub b
    ld h, b
    db $10
    ldh [rSVBK], a
    add b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    rlca
    nop
    dec c
    ld b, $1a
    rrca
    ld d, $0d
    ld a, [de]
    rrca
    ld d, $0d
    ld a, [de]
    rrca
    ld d, $0d
    rst $38
    ld [$2cff], sp
    rst $38
    dec l
    rst $38
    cpl
    cp a
    ld e, [hl]
    rst $38
    ld hl, $76ff
    db $fc
    ccf
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    ret z

    jr nc, jr_018_6e84

    ld b, b
    ld h, b
    add b
    jr nz, jr_018_6e91

    ld d, a
    ld a, [hl-]
    ld [hl], a
    jr z, jr_018_6f03

    db $10
    ld a, [de]
    ld bc, $0001
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    db $db
    inc a
    dec a
    jp nz, $fe01

    ld h, d
    sbc h
    rst $30
    ld [$00ff], sp
    rst $20
    jr jr_018_6f2e

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

jr_018_6f03:
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

jr_018_6f2e:
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

jr_018_6fe4:
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

Jump_018_6ff0:
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
    ld a, h
    nop
    ld a, [$0054]
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld b, $01
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $1f
    ld a, [bc]
    ld a, a
    ld bc, $7c83
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [$ffd0], a
    and b
    add sp, $50
    ld e, b
    and b
    xor b
    ld d, b
    ret c

    jr nz, jr_018_6fe4

    ld d, b
    ldh a, [rP1]
    ldh a, [$ff60]
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld h, b
    rra
    jr nc, jr_018_705e

    ld a, a
    jr nz, @+$01

    ld b, $ff
    ld a, [bc]

jr_018_7055:
    rst $38
    ld a, [bc]
    rst $38
    nop
    adc $30
    inc e
    add sp, $78

jr_018_705e:
    sub b
    ld hl, sp+$00
    db $fc
    ld h, a
    db $f4
    ld l, e
    ld [hl], b
    rrca
    inc de
    inc c
    ld l, $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_018_7071

jr_018_7071:
    ldh a, [rLCDC]
    ld d, b
    and b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $10
    db $fc

jr_018_707c:
    nop
    ld a, b
    nop
    jr nc, jr_018_7081

jr_018_7081:
    rlca
    nop
    jr jr_018_708c

    jr nz, jr_018_70a6

    jr nz, jr_018_70a8

    ld h, b
    rra
    and b

jr_018_708c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_7055

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    ccf
    nop
    rra
    nop
    rra

jr_018_70a6:
    nop
    ld a, a

jr_018_70a8:
    nop
    ld b, a
    jr c, jr_018_70dc

    rrca
    jr jr_018_70b6

    rra
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    rst $38

jr_018_70b6:
    ld [bc], a
    rst $28
    db $10
    rra
    and $7f
    adc d
    rra
    db $ed
    rst $38
    ld [hl+], a
    ret nz

    nop
    and b
    ld b, b

jr_018_70c5:
    ldh [$ff80], a
    ldh a, [rLCDC]
    ret nc

    jr nz, jr_018_707c

    ld b, b
    ret nc

    jr nz, @-$4e

    ld b, b
    inc hl
    inc e
    inc l
    inc de
    ld e, a
    jr nz, jr_018_7116

    nop
    inc e
    nop
    nop

jr_018_70dc:
    nop
    nop
    nop
    nop
    nop
    ld h, e
    sbc h
    dec de
    db $e4
    db $fd
    ld [bc], a
    ccf
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    and b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_70c5

    ld c, $f0
    rrca
    ldh a, [c]
    rrca
    push af
    rra
    ldh [rIE], a
    ld b, $3f
    add $00
    nop
    nop
    nop
    nop

jr_018_7116:
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    ld b, e
    inc a
    jr c, jr_018_7132

    rla
    ld [$0f10], sp
    rrca
    ld [bc], a
    rst $38

jr_018_7132:
    dec b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $28
    db $10
    ld bc, $9ffe
    ld h, b
    inc hl
    call c, $20fe
    ldh [rP1], a
    and b
    ld b, b

jr_018_7145:
    ld h, b
    add b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    inc de
    inc c
    jr jr_018_715c

    daa
    jr jr_018_71b6

    jr nz, jr_018_7198

    nop
    inc e

jr_018_715c:
    nop
    nop
    nop
    nop
    nop
    ld h, h
    sbc b
    inc c
    ldh a, [$fff2]
    inc c
    dec [hl]
    ld a, [bc]
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nz, jr_018_7196

    jr nz, jr_018_7198

    jr nz, jr_018_719a

    jr nz, jr_018_719c

    ld [hl], a
    ld [$07f8], sp
    ret nz

    nop
    jr nc, jr_018_7145

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    rst $38
    nop
    rst $38
    dec c

jr_018_7195:
    rst $38

jr_018_7196:
    dec c
    ld e, a

jr_018_7198:
    dec c
    ccf

jr_018_719a:
    inc de
    ccf

jr_018_719c:
    jr jr_018_71dc

    dec c
    rra
    dec c
    db $fc
    ld [$68fc], sp
    db $fc
    ld h, b
    cp $6c
    cp $04
    ld b, $f8
    ld a, [$e28c]
    db $fc
    ccf
    ld de, $0d73
    ld e, [hl]

jr_018_71b6:
    ld hl, $003d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    call c, $ac53
    ld d, e
    xor h
    adc $70
    xor b
    ld d, b
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_7195

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a

jr_018_71dc:
    db $fc
    ld a, [bc]
    db $f4
    sub a
    ld l, b
    rst $38
    nop
    cp $0d
    db $fd
    dec bc
    ld e, l
    dec bc
    dec e
    inc bc
    dec a
    dec de
    dec a
    dec de
    dec e
    inc bc
    rst $38
    inc bc
    ld [hl], d
    db $fd
    pop af
    adc [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $71
    adc [hl]
    inc d
    dec bc
    inc d
    dec bc
    ld a, [hl+]
    dec d
    ld [hl], a
    ld [$205e], sp
    dec a
    nop
    ld bc, $0100
    nop
    pop bc
    cp $71
    adc [hl]
    jp z, $cf74

    ld [hl], b
    ret


    halt
    add [hl]
    ld hl, sp+$74
    adc b
    ld [hl], h
    adc b
    adc b
    ld [hl], b
    ld [hl], b
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
    rlca
    nop
    jr jr_018_723e

    jr nz, jr_018_7258

    jr nz, jr_018_725a

    jr nz, jr_018_725c

    ld l, h

jr_018_723e:
    inc de
    rst $30
    ld [$0000], sp
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01
    cp $c6
    jr c, @+$01

    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38

jr_018_7258:
    dec de
    sbc a

jr_018_725a:
    rrca
    ld a, a

jr_018_725c:
    nop
    db $fc
    inc sp
    rst $38
    ld b, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    ldh [c], a
    inc e
    inc d
    add sp, -$08
    nop
    nop
    nop
    inc bc
    nop
    ld e, $03
    add hl, sp
    ld e, $32
    inc c
    ld a, [hl+]
    inc d
    inc e
    nop
    nop
    nop
    ld e, a

jr_018_7282:
    rst $28
    sbc a
    db $ec
    adc l
    ld [hl], d

jr_018_7287:
    ld b, [hl]
    add hl, sp
    jr c, jr_018_7292

    rrca
    nop
    ld bc, $0000
    nop
    ret c

jr_018_7292:
    ldh [$ffe8], a
    db $10
    ld [$f0f0], sp
    nop
    cp b
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300

jr_018_72aa:
    ld bc, $0207
    ld b, $03
    inc b
    inc bc
    inc c
    nop
    ld [hl], e
    inc c
    call z, $f073
    adc a
    ret nc

    cpl
    sbc h
    ld h, e
    ldh a, [c]
    dec c
    rst $18
    jr nz, jr_018_72c2

jr_018_72c2:
    nop
    ret nz

    nop
    jr nc, jr_018_7287

    ld [$04f0], sp
    ld hl, sp+$0e

jr_018_72cc:
    ldh a, [rNR11]
    xor $c1
    ld a, $1c
    rlca

jr_018_72d3:
    ld l, d
    dec e
    push hl
    ld a, b

jr_018_72d7:
    ret z

    jr nc, jr_018_7282

    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    daa
    rst $38
    jr nc, jr_018_72aa

    dec e
    rra
    ld c, $0f
    nop
    cp $00
    db $fc
    nop

jr_018_72f5:
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [rP1]
    ld a, $c0
    call nz, $f838
    nop
    ld c, $05
    inc c
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0007
    rlca
    nop
    nop
    nop
    jr nc, jr_018_72d3

    ld d, b
    and b
    jr nc, jr_018_72d7

    adc b
    ld [hl], b
    call nz, $bc38
    ld b, b
    db $fc
    nop
    ldh a, [rP1]
    rlca
    nop
    jr jr_018_732c

    jr nz, jr_018_7346

    jr nz, jr_018_7348

    jr nz, jr_018_734a

    ld h, b

jr_018_732c:
    rra
    sub b
    ld l, a
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_72f5

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0e
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf

jr_018_7346:
    nop
    ccf

jr_018_7348:
    nop
    ld c, a

jr_018_734a:
    jr nc, jr_018_72cc

    ld a, a
    ld a, a
    nop
    rra
    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp

jr_018_7357:
    rst $38
    nop
    sbc [hl]
    ld l, h
    ld a, $dc
    rst $38
    jr @+$01

    ld b, b
    ld h, $19
    jr z, jr_018_737c

    ld a, a
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld [hl], $2d
    jp nc, $28d7

    rst $38
    nop
    ld a, [hl]
    nop
    nop

jr_018_737c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_738e

    jr nz, jr_018_73a8

    ld h, b
    rra
    and b
    ld e, a
    sub c

jr_018_738e:
    ld l, [hl]
    ret nz

    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_7357

    ld [$06f0], sp
    ld hl, sp+$0d
    ldh a, [c]
    ld a, [$0905]
    or $7f
    nop
    ccf
    nop
    ccf
    nop
    ccf

jr_018_73a8:
    nop
    ld a, $01
    ret nz

    ccf
    ld sp, $200e
    rra
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $18
    inc h
    ccf
    adc $7f
    cp h
    rst $38
    jr c, jr_018_743e

    add b
    ld b, b
    add b
    ret nz

    add b
    add b
    nop

jr_018_73c7:
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rra
    inc b
    inc c
    inc bc
    ld [de], a
    dec c
    ld de, $370e
    ld [$047a], sp
    inc a
    nop
    jr jr_018_73e1

jr_018_73e1:
    ldh a, [rLCDC]
    ld c, b
    or b
    jr jr_018_73c7

    call nz, Call_018_7c38
    nop
    inc a
    nop
    jr jr_018_73ef

jr_018_73ef:
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $0f
    inc bc

jr_018_740b:
    rla
    ld [$030f], sp
    rrca
    ld bc, $0000
    cp $04
    cp $b4
    rst $38
    or b
    ld sp, hl
    or [hl]
    or $e8
    cp $04
    cp $b8
    ld de, $1f0e
    nop
    ccf
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    add $fc
    inc bc
    swap a
    ld h, a
    rra
    ld h, $1f
    db $10
    rrca
    rrca

jr_018_743e:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3e

    jr nz, jr_018_740b

jr_018_744b:
    jr nz, @-$3e

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_018_744b

    ld b, $f8
    dec b
    ld a, [$fa05]
    db $10
    rrca
    db $10
    rrca
    dec sp
    inc b
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $05
    ld a, [$fe01]
    add l
    ld a, d
    ld c, d
    or h
    ld a, [$fe04]
    or h
    db $fd
    or d
    rst $38
    or b
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    cp $7d
    ld a, a
    add b
    or e
    ld l, l
    ei
    dec [hl]
    ei
    inc [hl]
    rst $30
    nop
    ld bc, $0000
    nop
    ld hl, sp-$40
    db $e4
    ret c

jr_018_74b5:
    jp nz, $dabc

    cp h
    cp d
    ld a, h
    ld [hl-], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    inc c
    inc d
    dec bc
    ld a, a
    nop
    rst $38
    ld b, $ff
    ld c, $ff
    rrca
    ldh [rP1], a
    jr jr_018_74b5

    add h
    ld a, b
    ld b, h
    cp b
    ldh [c], a
    inc e
    db $fd
    and d
    push af
    xor d
    rst $38
    ldh a, [rIE]
    rlca
    ld a, a
    dec de
    ccf
    dec de
    ccf
    inc de
    ccf
    jr jr_018_7528

    dec de
    rra
    ld [$0a1f], sp
    cp $74
    cp $74
    cp $70
    ld sp, hl
    and $f6
    ld [$f40a], sp
    cp $00
    rst $38
    ld h, $0a
    dec b
    ld [$0807], sp
    rlca
    dec c
    ld [bc], a
    inc de
    inc c
    ccf
    nop
    ld a, $00
    inc e
    nop
    cpl
    db $d3
    rrca
    di
    dec bc
    ldh a, [$ffd9]
    jr nz, jr_018_757f

    jr @+$81

    nop
    ld a, $00
    inc e
    nop
    ldh [rP1], a
    sbc b
    ld h, b
    call nz, $e2f8

jr_018_7528:
    db $fc
    ld h, d
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    ld bc, $0100
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
    rst $38
    rla
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    ld h, e
    ld a, a
    jr nc, jr_018_7588

    dec de
    rra
    ld [$020f], sp
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    rla
    ld a, a
    rla
    sbc a
    rlca

jr_018_7567:
    rst $30
    add e
    rst $38
    ldh a, [$fff8]
    scf
    ccf
    nop
    rrca
    ld [bc], a
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop

jr_018_757f:
    rst $38
    ld b, $00
    nop
    ldh [rP1], a
    jr jr_018_7567

    inc b

jr_018_7588:
    ld hl, sp-$7a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, rJOYP
    ld b, $ff
    rla
    ld e, a
    rlca
    rrca
    inc bc
    rst $38
    nop
    ld hl, sp-$09
    rst $38
    sub b
    sbc a
    ld [bc], a
    cp $b0
    cp $f4

jr_018_75b5:
    cp $70
    ld sp, hl
    ld h, [hl]
    or $08
    ld a, [bc]
    db $f4
    cp $00
    rst $38
    ld h, $03
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    rst $38
    ld b, $e0
    nop
    jr jr_018_75b5

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    rst $38
    ld b, $ff
    ld d, $5f
    rlca
    ccf
    inc bc
    ei
    inc [hl]
    ld hl, sp-$09
    rst $38
    ret nz

    rst $08
    ld [bc], a
    rst $38
    or b
    cp $b4
    cp $f0
    ld sp, hl
    ld h, [hl]
    or $08
    ld a, [bc]
    db $f4
    cp $00
    rst $38
    ld h, $2f
    db $d3
    rrca
    di
    db $db
    jr nz, jr_018_766f

    add hl, de
    ld a, a
    nop
    ccf
    nop
    inc e
    nop
    nop
    nop
    ldh [rP1], a
    sbc h
    ld h, b
    jp nz, $f1fc

    cp $31
    cp $02
    db $fc
    db $fc
    nop
    nop
    nop
    rra
    nop
    ld l, $1f
    ccf
    rra
    ccf
    rra
    ld d, l
    ccf
    ld l, d
    ccf
    ld d, l
    ccf
    ld h, h
    dec sp
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    add b
    sub h
    ld l, e
    push de
    ld l, e
    sub h
    ld l, e
    sub h
    ld l, e
    ld [hl], a
    ld [$0bf7], sp
    rst $30
    ld [$09f7], sp
    ret nz

    nop

jr_018_7653:
    or b
    ld b, b
    adc b
    ld [hl], b
    adc h
    ld [hl], b
    ld a, [bc]
    db $f4
    add d
    ld a, h
    ld a, [$f404]
    ld l, b
    ld a, a
    nop
    ld a, a
    inc c
    ccf
    dec e
    ld a, a
    inc hl
    ld a, a
    inc c
    ccf
    rrca
    rra
    nop

jr_018_766f:
    rla
    ld a, [bc]
    cp $b4
    cp $b4
    cp $f0
    pop af
    ld l, [hl]
    cp $00
    db $fc
    ldh a, [$fffc]
    ld hl, sp-$08
    nop
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    jr c, jr_018_7653

    ld [$d8f0], sp
    jr nz, jr_018_76fc

    jr @+$80

    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    sub h
    ld l, e
    push de
    ld l, e
    sub h
    ld l, e
    sub h
    ld l, e
    rst $30
    ld [$00ff], sp
    rst $38
    add hl, de
    ld a, a
    add hl, de
    ret nz

    nop
    or b
    ld b, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc h
    ld [hl], b
    jp nz, $ea3c

    ld d, h
    ld a, [$7f64]
    inc hl
    ld a, a
    dec l
    ld a, a
    inc c
    ccf
    ld bc, $0619
    rrca
    nop
    rrca
    ld [bc], a
    rra
    nop
    cp $f4
    cp $74
    cp $60
    db $e4
    sbc b
    ld a, [$fde4]
    ld a, d
    cp $18
    ld hl, sp+$40
    jr c, @+$09

    ld b, h
    dec sp
    ld [hl], l
    ld a, [bc]
    ld a, [hl]
    nop
    jr c, jr_018_76eb

jr_018_76eb:
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    or b
    ld [$88f0], sp
    ld [hl], b
    ld e, b
    jr nz, @+$66

    jr jr_018_7778

jr_018_76fc:
    nop
    ld a, $00
    ld e, $00
    nop
    nop
    adc b
    adc b
    sbc d
    sbc d
    sbc a
    sbc d
    sbc e
    adc a
    xor [hl]
    cp a
    cp a
    cp a
    rst $38
    rst $18
    jr nz, jr_018_7733

    and b
    and b
    and b
    and b
    ldh [rNR41], a
    jr nc, @-$1e

    ld l, b
    ldh a, [$ff6c]
    ldh a, [$ff7a]
    db $e4
    rst $18
    rst $28
    ld [$feff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld l, d
    db $f4

jr_018_7733:
    ld [$eaf4], a
    db $f4
    db $fc
    ldh [$fffc], a
    add sp, -$04
    add sp, -$04
    ldh [$fff2], a
    db $ec
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    push af
    ld a, a
    push af
    ld a, a
    rst $38
    ld [hl], l
    dec sp
    ld [hl], l
    call nz, $d8f8
    ldh [$ffd0], a
    ldh [$ffc8], a
    ldh a, [$ffdc]
    ldh [$ffee], a
    ret nc

    cp $c0
    db $fc
    add b
    dec [hl]
    ld a, e
    dec sp
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ld c, $1f
    nop
    rra
    sbc b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop

jr_018_7778:
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_778c

    jr nz, jr_018_77a6

    jr nz, jr_018_77a8

    jr nz, jr_018_77aa

    ld [hl], b

jr_018_778c:
    rrca
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    nop
    jr nc, @-$3e

    ld [$0cf0], sp
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc
    adc d
    ld [hl], h

jr_018_77a1:
    rst $38
    nop
    rst $38

jr_018_77a4:
    dec c
    rst $38

jr_018_77a6:
    dec l
    cp a

jr_018_77a8:
    dec e
    rra

jr_018_77aa:
    dec c
    rra
    rlca
    ccf
    jr jr_018_77ec

    dec de
    db $fc
    nop
    db $fc
    ld l, b
    db $fc
    ld l, b
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    db $e4
    ret c

    add sp, $10
    jr jr_018_77a1

    ccf
    jr @+$01

    nop
    add b
    ld a, a
    adc b
    ld [hl], a
    sub h
    ld l, e
    sbc h
    ld l, e
    ret


    ld [hl], a
    and d
    ld a, a
    cp b

jr_018_77d2:
    ld b, b
    ld hl, sp+$00
    db $e4
    jr jr_018_77a4

    jr nc, jr_018_77d2

    nop
    or b
    nop
    add b
    nop
    add b
    nop
    push de
    ld a, a
    xor d
    ld a, a
    ld a, a
    ld a, $7f
    ld a, $5d
    ld a, $3e

jr_018_77ec:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
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
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec l
    cp a
    dec e
    rra
    dec c
    rra
    rlca
    daa
    jr jr_018_784f

    nop
    db $fc
    nop
    db $fc
    ld l, b
    db $fc
    ld l, b
    ld hl, sp+$60
    db $fc
    ld h, b
    ldh a, [c]
    call z, $10ec
    ret z

    jr nc, @+$01

    nop
    adc b
    ld [hl], a
    sub h
    ld l, e
    sbc h
    ld l, e
    ret


    ld [hl], a
    and d
    ld a, a
    push de
    ld a, a
    xor d
    ld a, a
    ldh [rP1], a
    and b
    ld b, b
    sub b
    ld h, b
    xor b
    ld d, b
    call c, $fc20
    nop
    ld hl, sp+$00
    add b
    nop
    ld a, a
    ld a, $7f
    ld a, $5d
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_784f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$60
    db $fc
    ld a, b
    ld a, [hl]
    inc a
    inc sp
    ld e, $03
    ld bc, $0003
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], e
    inc c
    rst $28
    ld de, $20f6
    cp $94
    db $fc
    ld b, b
    ld a, [hl]
    adc b
    ld a, d
    and h
    db $f4
    ld l, b
    xor $d0
    pop bc
    cp [hl]
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    dec c
    ld e, a

jr_018_7888:
    inc c
    ccf
    ld d, $77
    dec de
    ld a, e
    dec h
    ld l, l
    ld [bc], a
    rst $38
    nop
    cp $00
    db $fc
    ld b, b
    ld hl, sp-$40
    ret nc

    jr nz, jr_018_7888

    db $10
    db $f4
    add sp, -$08
    ldh [$ffef], a
    ld d, b
    pop bc
    ld a, $81
    ld a, [hl]
    or c
    ld c, [hl]
    jp nc, $ef2c

    db $10
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_018_78b9

jr_018_78b9:
    jr c, jr_018_78cb

    inc a
    jr jr_018_78fc

    inc e
    ld a, [de]
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop

jr_018_78cb:
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc a
    nop
    ld b, e
    inc a
    add b
    ld a, a
    ldh a, [rIF]
    ret z

    scf
    cp e
    ld b, h
    rst $38
    ld d, e
    ld a, a
    call z, $70c8
    rst $28
    ld d, b
    push af
    ld a, [hl+]

jr_018_78e7:
    or $28
    ld a, [$aa14]
    call nc, $28f6
    db $fc
    nop
    rst $18
    ld b, $3f
    ld d, $7f
    dec hl
    ld a, a
    ld bc, $0917
    ccf

jr_018_78fc:
    ld [de], a
    ld [hl], e
    inc c
    add d
    ld a, l
    rst $38
    nop
    cp $40
    db $ec
    db $10
    ldh a, [$ff80]
    add sp, -$30
    db $f4
    ret z

    ld hl, sp-$40
    ldh [rP1], a
    add b
    ld a, a
    ld d, b
    cpl
    ld c, h
    inc sp
    ld [hl], a
    ld [$00f9], sp
    ld [hl], b
    nop
    ld bc, $0100
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_018_78e7

    db $10
    ldh [$ffb8], a
    ld b, b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    rlca
    nop
    jr jr_018_793c

    jr nz, jr_018_7956

    jr nz, jr_018_7958

    jr c, jr_018_7942

    ld h, h

jr_018_793c:
    dec de
    rst $38
    nop
    rst $38
    ld c, $e0

jr_018_7942:
    nop
    db $10
    ldh [$ff0e], a
    ldh a, [$ff09]
    or $11
    xor $02
    db $fc
    db $fc
    nop
    db $fc
    nop
    nop
    db $10
    db $10
    jr c, jr_018_797e

jr_018_7956:
    ld a, [hl-]
    ld a, [hl+]

jr_018_7958:
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    adc a
    add b
    adc a
    add e
    cp a
    xor a
    db $e4
    rst $38
    db $fc
    nop
    ld hl, sp+$60
    rst $38
    ret nz

    pop af
    adc [hl]
    ldh [c], a
    inc e

jr_018_797b:
    inc e
    ldh [$fffe], a

jr_018_797e:
    ret nz

    rst $38
    nop
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, b
    db $fd
    jr c, @+$7e

    nop
    jr c, jr_018_797b

    or $ee
    pop bc
    ei
    ld b, h
    ld e, l
    ld [bc], a
    rrca
    nop
    ld b, $00
    nop

jr_018_799e:
    nop
    nop
    nop
    cp l
    ld b, d
    pop af
    ld c, $e1
    ld e, $c6
    jr c, jr_018_799e

    ld [$007c], sp
    jr c, jr_018_79af

jr_018_79af:
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a
    dec de
    ld e, a
    rrca
    rrca
    nop
    rlca
    nop
    rra
    ld bc, $1fff
    ld l, l
    ld [hl-], a
    ld [hl], l
    ld a, [bc]

jr_018_79c5:
    ld c, d
    inc [hl]
    ld c, [hl]
    inc [hl]
    adc $74
    call c, $dc68
    ld l, b
    db $fc
    ld l, b
    db $fd
    jp c, $01fe

    dec de
    inc b
    add hl, de
    ld b, $0d
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, h

jr_018_79e2:
    jr z, @+$3a

    db $10
    stop
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
    rlca
    nop
    jr @+$09

    jr nz, jr_018_7a16

    jr nz, jr_018_7a18

    jr c, jr_018_7a02

    ld [hl], $09
    ld a, a
    nop
    rst $38
    ld c, $c0

jr_018_7a02:
    nop
    jr nc, jr_018_79c5

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [rNR11]
    xor $c1
    ld a, $f2
    inc c
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38

jr_018_7a16:
    dec de
    ld e, a

jr_018_7a18:
    rrca
    rst $08
    nop
    call nz, $ff03
    nop
    rst $38
    dec sp
    db $fc
    ld b, b
    db $fc
    ld h, b
    db $fc
    ret nz

    cp $80
    pop hl
    ld e, $1f
    ldh [$ff7c], a
    sbc b
    db $fc
    nop
    dec e
    ld [bc], a
    ld [de], a
    dec c
    inc de
    dec c
    inc sp
    dec e
    scf
    ld a, [de]
    scf
    ld a, [de]
    ccf
    ld a, [de]
    dec de
    ld c, $ff
    add e
    adc a
    nop
    add h
    inc bc
    add h
    inc bc
    ld b, $01
    rrca
    nop
    rrca
    nop
    nop
    nop
    db $fc
    ldh [$fff4], a
    ld [$f804], sp

jr_018_7a57:
    ret z

    jr nc, jr_018_79e2

    ld [hl], b
    db $ec
    db $10
    db $fc
    nop
    db $fc
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    cp $6c
    cp e
    sub $11
    xor $83
    ld a, h
    ld bc, $0700
    nop
    jr jr_018_7a8e

    jr nz, jr_018_7aa8

    jr nz, jr_018_7aaa

    ld h, b
    rra
    sub b

jr_018_7a8e:
    ld l, a
    ret nz

    ccf
    db $fc
    nop
    ldh a, [rNR41]
    jr nc, jr_018_7a57

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [$ff7f], a
    add [hl]
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a

jr_018_7aa8:
    nop
    sbc a

jr_018_7aaa:
    ld h, b
    ld b, b
    ccf
    jr nc, jr_018_7abe

    ccf
    nop
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    ld [$00fe], sp
    db $e4
    jr jr_018_7ac8

    ldh a, [$ff38]

jr_018_7abe:
    ret nz

    ld hl, sp+$00
    ld e, $05
    inc h
    dec de
    db $10
    rrca
    daa

jr_018_7ac8:
    jr jr_018_7b48

    nop
    inc a
    nop
    jr jr_018_7acf

jr_018_7acf:
    nop
    nop
    ldh a, [rLCDC]
    ld c, b
    or b
    db $10

jr_018_7ad6:
    ldh [$ffd8], a
    jr nz, jr_018_7ad6

    nop
    ld a, b
    nop
    jr nc, jr_018_7adf

jr_018_7adf:
    nop
    nop
    nop
    nop
    ld a, h
    nop
    cp d
    ld a, h
    cp $7c
    cp $7c
    rst $10
    ld a, h
    xor e
    cp $55
    xor $03
    nop
    dec c
    ld [bc], a
    ld de, $110e
    ld c, $11
    ld c, $31
    ld c, $49
    ld [hl], $61
    ld e, $39
    sub $29
    sub $29
    sub $11
    xor $01
    cp $fe
    nop
    xor $10
    rst $28
    ld d, $7f
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld b, a
    jr c, @+$32

    rrca
    rrca
    nop
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, $86
    ld a, b
    ld e, $e0
    cp $00
    add hl, bc
    ld b, $0c
    inc bc
    ld e, $01
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    jr nz, @+$26

    ret c

    inc b
    ld hl, sp+$68

jr_018_7b48:
    sub b
    db $f4
    ld [$007e], sp
    inc a
    nop
    jr jr_018_7b51

jr_018_7b51:
    dec b
    dec b
    dec b
    dec b
    rlca
    nop
    jr jr_018_7b60

    jr nz, jr_018_7b7a

    jr nz, @+$21

    ld [hl], b
    rrca
    ret nz

jr_018_7b60:
    ccf
    ld [bc], a
    ld [bc], a
    sub d
    sub d
    ldh a, [c]
    ld [de], a
    ld d, $e6
    ld c, $f6
    ld c, $f6
    ld c, $f2
    ld e, $e0
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf

jr_018_7b7a:
    nop
    jr nc, jr_018_7b8c

    ld b, b
    ccf
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$28df], sp
    adc [hl]
    ld [hl], h
    ld a, [hl]

jr_018_7b8c:
    adc h
    ld e, $ee
    sbc $2e
    ld hl, sp+$07
    dec a
    ld a, [bc]
    jr z, @+$19

    ld h, b
    rra
    ld [hl], d
    dec c
    ld a, a
    nop
    ccf
    inc bc
    rra
    rlca
    adc [hl]
    halt
    call nz, $8cba
    ld [hl], d
    ld a, [bc]
    db $f4
    ld e, $e0
    cp $00
    cp $c0
    db $fc
    ld b, h
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0003
    ld bc, $0100
    cp b
    ld e, h
    ld e, b
    cp h
    cp b
    db $fc
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh [$fff0], a
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_7be0

    jr nz, jr_018_7bfa

    jr nz, @+$21

    ld [hl], b
    rrca
    ret nz

jr_018_7be0:
    ccf
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf

jr_018_7bfa:
    nop
    ldh a, [rIF]
    add a
    ld a, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    jp z, Jump_000_1830

    ldh [$ff88], a
    ld [hl], b
    ld hl, sp+$00
    jr z, jr_018_7c2a

    dec e
    ld a, [bc]
    cpl
    db $10
    ld h, b
    rra
    ld [hl], b
    rrca
    ld a, a
    nop
    ccf
    nop
    rra

Call_018_7c20:
    nop
    adc b
    ld [hl], b
    db $f4
    adc b

jr_018_7c25:
    adc [hl]
    ld [hl], b
    ld a, [bc]
    db $f4
    ld a, [hl+]

jr_018_7c2a:
    call nc, Call_000_28d6
    cp $40
    db $fc

Call_018_7c30:
    ld b, b
    ld b, $03
    dec b
    inc bc
    ld b, $03
    dec b

Call_018_7c38:
    inc bc
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    xor h
    ld e, b
    ld d, h
    cp b
    inc c
    ld hl, sp+$54
    ld hl, sp-$08
    ldh a, [$fff8]
    ldh a, [$ffe8]
    ldh a, [$fff0]
    nop
    rlca
    nop
    jr jr_018_7c5c

    jr nz, jr_018_7c76

    jr nz, jr_018_7c78

    ld h, b
    rra
    and b

jr_018_7c5c:
    ld e, a
    sub b
    ld l, a
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_018_7c25

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    rra
    ldh [$ff7f], a
    nop
    ccf
    nop
    ccf

jr_018_7c76:
    nop
    ld a, a

jr_018_7c78:
    nop
    adc a
    ld [hl], b
    ld [hl], b
    rrca
    jr nz, @+$21

    cpl
    db $10
    rst $38
    ld [$08ff], sp
    cp $00
    db $fc
    nop
    jp c, $0224

    db $fc
    ld c, $f0
    cp $04
    inc d
    dec bc
    ld e, $05
    inc [hl]
    dec bc
    jr z, @+$19

    ld [hl], a
    ld [$003d], sp
    jr jr_018_7c9f

jr_018_7c9f:
    nop
    nop
    ld b, [hl]
    cp b
    ldh [c], a
    ld e, h
    ld b, [hl]
    cp b
    ld c, $f0
    adc d
    ld [hl], h
    call nz, $fc38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c

jr_018_7cc7:
    ld a, a
    ld a, $77
    ld a, $63
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    scf
    ld [$0b77], sp
    rst $30
    ld [$0000], sp
    ldh [rP1], a
    jr jr_018_7cc7

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rst $30
    ld a, [bc]
    rst $38
    ld [bc], a

jr_018_7cf5:
    cp a
    ld a, [de]
    cp a
    dec de
    ccf
    rlca
    ccf
    jr jr_018_7d3d

    dec de
    rra
    ld bc, $b0ff
    cp $b4
    cp $b4
    db $fc
    ld hl, sp-$02
    ld [hl], b
    pop af
    ld c, $fe
    ldh a, [$fff8]
    ldh a, [rNR22]
    ld a, [bc]
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    ld hl, sp+$00
    jr z, jr_018_7cf5

    ld [$d8f0], sp
    jr nz, @+$76

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop

jr_018_7d3d:
    inc e
    ld [$081c], sp
    ld a, $1c
    ld a, $1c

jr_018_7d45:
    ld a, $1c
    ld a, $1c
    ld [hl], a
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    rst $30
    ld [$0af7], sp
    rst $38
    ld [bc], a
    ldh [rP1], a
    jr jr_018_7d45

    inc b
    ld hl, sp-$3c
    jr c, jr_018_7d8c

    call c, Call_000_0af5
    db $fd
    or d
    ei
    or h
    rst $38
    dec de
    ld a, a
    dec de
    ld a, a
    inc bc
    ld a, a
    jr jr_018_7db9

    dec de
    rra
    inc bc
    rra
    ld bc, $020f
    rst $38
    ld hl, sp-$02
    ld a, h
    cp $70
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    ld sp, hl

jr_018_7d8c:
    or $ff
    ldh a, [$fff8]
    nop
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    add hl, bc
    ld b, $17
    ld [$000f], sp
    ld e, $00
    inc e
    nop
    ld [$08f0], sp
    ldh a, [$ffc8]
    jr nc, jr_018_7df0

    jr nc, @+$76

    ld [$0078], sp
    inc a
    nop
    inc e
    nop
    db $10
    db $10
    inc d
    inc d
    inc d
    inc d
    ld d, $16

jr_018_7db9:
    rla
    ld d, $1c
    rla

jr_018_7dbd:
    ld sp, $351f
    rra
    db $10
    db $10
    sub b
    sub b
    db $10
    db $10
    ld d, b
    ld d, b
    ret nc

    ld d, b
    jr nc, jr_018_7dbd

    jr c, @-$0e

    ld a, [hl]
    ldh a, [$ff35]
    rra
    dec a
    rra
    ccf
    rra
    ld a, l
    rra
    rst $38
    rra
    rst $38
    rra
    db $fd
    rra
    cp $1d
    ld a, c
    or $f1
    cp $f9
    or $7a
    db $f4
    db $fc
    ldh a, [rPCM34]
    ld hl, sp-$01
    ld a, d
    rst $38

jr_018_7df0:
    halt
    ld e, l
    ld e, $1e
    rra

jr_018_7df5:
    ld a, $1f
    ld l, a
    rra
    rst $38
    ld c, a
    rst $38
    rrca
    ld a, a
    rrca
    ccf
    rrca
    ld a, [hl]
    ldh a, [$fff8]
    ldh a, [$fff4]
    ld hl, sp-$12
    ldh a, [rIE]
    ldh [c], a
    rst $38
    ldh [$fffe], a
    ldh [$ffec], a
    ldh [$ff3e], a
    ld a, a
    ld a, $3e
    ld a, $3e
    ld a, $3e
    inc e
    ld a, $1c
    inc e
    ld [$001c], sp
    ld [$0007], sp
    jr @+$09

    jr nz, jr_018_7e46

    jr nz, jr_018_7e48

    jr nz, jr_018_7e4a

    jr nz, jr_018_7e4c

    daa
    jr jr_018_7ea8

    rlca
    ret nz

    nop
    jr nc, jr_018_7df5

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $01
    cp $09
    or $8a
    ld [hl], h
    nop
    nop
    rst $38
    nop
    rst $38

jr_018_7e46:
    rrca
    rst $38

jr_018_7e48:
    dec c
    rst $38

jr_018_7e4a:
    dec e
    ld e, a

jr_018_7e4c:
    inc c
    rra
    inc bc
    ccf
    rla
    nop
    nop
    db $fc
    nop
    db $fc
    add sp, -$02
    ld l, b
    ld sp, hl
    ld h, [hl]
    rst $38
    ld h, b
    add sp, -$70
    db $ec
    ret c

    ld a, h
    rlca
    ld sp, hl
    ld h, [hl]
    ld a, [$7b05]
    dec b
    add hl, sp
    ld b, $0c
    rlca
    inc c
    rlca
    ld c, $07
    ld a, [hl]
    ret nz

    ccf
    call z, $40bf
    cp [hl]
    ld b, b
    inc l
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ldh [$ffc0], a
    rra
    ld c, $1f
    ld c, $1f
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    inc b
    nop
    inc b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld e, $ff
    ld a, [de]
    ld e, a
    inc c
    rra
    inc bc
    ccf
    rla
    nop
    nop
    db $fc
    nop
    db $fc
    ld l, b
    db $fc

jr_018_7ea8:
    ldh a, [$fffa]
    or h
    db $fd
    ld h, d
    rst $28
    sub b
    db $ec
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    inc hl
    inc e
    ld [hl], e
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$0807], sp
    rlca
    inc e
    inc bc
    dec de
    inc c
    ld c, $04
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
