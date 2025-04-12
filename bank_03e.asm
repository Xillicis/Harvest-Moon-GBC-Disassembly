; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    ld a, $32
    nop
    ld l, c
    ld b, c
    ld c, e
    ld bc, $4218
    ld h, h
    ld [bc], a
    cpl
    ld b, e
    ld a, l
    inc bc
    ld l, b
    ld b, e
    ld [hl-], a
    nop
    rst $10
    ld b, e
    ld c, e
    ld bc, $443c
    ld h, h
    ld [bc], a
    adc e
    ld b, h
    ld a, l
    inc bc
    ldh [c], a
    ld b, h
    ld [hl-], a
    nop
    ld d, a
    ld b, l
    ld c, e
    ld bc, $4668
    ld h, h
    ld [bc], a
    ccf
    ld b, a
    ld [hl-], a
    nop
    or $47
    ld c, e
    ld bc, $48e1
    ld h, h
    ld [bc], a
    adc [hl]
    ld c, c
    ld a, l
    inc bc
    cp a
    ld c, c
    ld [hl-], a
    nop
    ld b, b
    ld c, d
    ld c, e
    ld bc, $4af5
    ld h, h
    ld [bc], a
    add [hl]
    ld c, e
    ld a, l
    inc bc
    rra
    ld c, h
    ld [hl-], a
    nop
    ld a, [$4b4c]
    ld bc, $4ddb
    ld h, h
    ld [bc], a
    ld b, $4f
    ld a, l
    inc bc
    add e
    ld c, a
    ld [hl-], a
    nop
    adc b
    ld c, a
    ld c, e
    ld bc, $5085
    ld h, h
    ld [bc], a
    ld [$7d51], a
    inc bc
    xor e
    ld d, d
    ld [hl-], a
    nop
    cp $52
    ld c, e
    ld bc, $53b1
    ld h, h
    ld [bc], a
    inc d
    ld d, h
    ld [hl-], a
    nop
    adc c
    ld d, h
    ld c, e
    ld bc, $5568
    ld h, h
    ld [bc], a
    cpl
    ld d, [hl]
    ld a, l
    inc bc
    adc b
    ld d, [hl]
    ld [hl-], a
    nop
    bit 2, [hl]
    ld c, e
    ld bc, $57a2
    ld h, h
    ld [bc], a
    dec sp
    ld e, b
    ld a, l
    inc bc
    xor $58
    ld [hl-], a
    nop
    ld a, a
    ld e, c
    ld c, e
    ld bc, $5a24
    ld h, h
    ld [bc], a
    jp hl


    ld e, d
    ld a, l
    inc bc
    jr jr_03e_4104

    ld [hl-], a
    nop
    ld h, a
    ld e, e
    ld c, e
    ld bc, $5c28
    ld h, h
    ld [bc], a
    rst $30
    ld e, h
    ld a, l
    inc bc
    ld d, d
    ld e, l
    nop
    nop
    ld a, l
    ld e, [hl]
    nop
    nop
    sub b
    ld e, [hl]
    nop
    inc bc
    cp e
    ld e, [hl]
    nop
    inc bc
    call z, Call_000_005e
    nop
    ei
    ld e, [hl]
    nop
    nop
    ld [hl+], a
    ld e, a
    nop
    inc bc
    inc sp
    ld e, a
    nop
    nop
    ld b, h
    ld e, a
    nop
    nop
    ld d, l
    ld e, a
    nop
    inc bc
    ld h, h
    ld e, a
    nop
    nop
    ld [hl], l
    ld e, a
    add hl, de
    inc bc
    adc b
    ld e, a
    nop
    inc bc
    sub l
    ld e, a
    nop
    inc bc
    and [hl]
    ld e, a
    nop
    nop
    rst $00
    ld e, a
    nop
    inc bc
    nop
    ld h, b
    nop
    nop
    dec c
    ld h, b
    nop
    nop
    jr jr_03e_4161

    ld [hl-], a
    inc bc
    dec l

jr_03e_4104:
    ld h, b
    ld [hl-], a
    inc bc
    jr c, jr_03e_4169

    nop
    nop
    ld c, l
    ld h, b
    add hl, de
    ld bc, $605e
    nop
    nop
    ld l, a
    ld h, b
    add hl, de
    ld bc, $608a
    nop
    nop
    and l
    ld h, b
    add hl, de
    ld bc, $60b0
    nop
    nop
    cp e
    ld h, b
    ld [hl-], a
    nop
    ret z

    ld h, b
    ld c, e
    ld bc, $60cd
    ld h, h
    ld [bc], a
    jp nc, Jump_03e_7d60

    inc bc
    rst $10

jr_03e_4134:
    ld h, b
    ld [hl-], a
    nop
    call c, Call_03e_4b60
    ld bc, $60dc
    ld h, h
    ld [bc], a
    call c, Call_03e_7d60

jr_03e_4142:
    inc bc
    call c, JoypadTransitionInterrupt
    nop
    pop hl
    ld h, b
    add hl, de
    inc bc
    ldh a, [c]
    ld h, b
    nop

jr_03e_414e:
    nop
    db $fd
    ld h, b
    ld [hl-], a
    nop
    inc c
    ld h, c
    ld c, e
    ld bc, $6283
    ld h, h

jr_03e_415a:
    ld [bc], a
    ld e, d
    ld h, e
    ld a, l
    inc bc
    cp e
    ld h, e

jr_03e_4161:
    nop
    inc bc
    jp c, Jump_000_0064

jr_03e_4166:
    inc bc
    jp hl


    ld h, h

jr_03e_4169:
    ld [$0d01], sp
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    ld d, b
    and b
    dec c
    add hl, de
    inc c
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr @-$5e

    dec c

jr_03e_4181:
    add hl, de
    inc c
    ld d, $0c
    and b
    dec b
    ld d, $18
    and b
    dec c
    add hl, de
    inc c

jr_03e_418d:
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr jr_03e_4134

    dec c
    add hl, de
    inc c
    ld d, $0c

jr_03e_4199:
    and b
    dec b
    ld d, $18
    and b
    dec c
    add hl, de
    jr jr_03e_4142

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b

jr_03e_41a8:
    dec c
    ld [hl+], a
    inc bc

jr_03e_41ab:
    add hl, de
    jr jr_03e_414e

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    ld [de], a
    inc bc
    add hl, de
    jr jr_03e_415a

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    jr jr_03e_41c6

    add hl, de
    jr jr_03e_4166

jr_03e_41c6:
    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    ld [de], a
    inc bc
    or c
    ld a, [de]
    pop bc
    ld d, b
    dec de
    inc c
    and b
    dec b
    dec de
    jr jr_03e_4181

    add hl, bc
    and b
    dec c
    dec de
    inc bc
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr jr_03e_418d

    add hl, bc
    and b
    dec c
    ld [hl+], a
    inc bc
    add hl, hl
    inc c
    and b
    dec b
    add hl, hl
    jr jr_03e_4199

    add hl, bc
    and b
    dec c
    add hl, hl
    inc bc
    ld [hl+], a
    jr nc, jr_03e_41ab

jr_03e_41fa:
    inc [hl]
    and b
    dec c
    ld [hl+], a
    add hl, bc
    add hl, de
    inc bc
    and a
    inc c
    and b
    dec b
    add hl, de
    jr jr_03e_41a8

    dec c
    inc h
    add hl, bc
    ld h, $03
    and a
    inc c
    and b
    dec b
    ld h, $18
    or c
    ld c, c
    or b
    nop
    rst $38
    ld [$0c01], sp
    nop
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_03e_4255

    add hl, bc
    ld sp, $3203
    add hl, bc
    scf
    inc bc
    ld [hl], $0c

jr_03e_422c:
    inc [hl]
    add hl, bc
    ld sp, $3203
    inc c

jr_03e_4232:
    add hl, hl
    inc c
    pop bc
    jr nc, jr_03e_4270

    jr jr_03e_41fa

    jr nz, jr_03e_426d

    add hl, bc
    ld sp, $3203
    add hl, bc
    scf
    inc bc
    ld [hl], $0c
    inc [hl]
    add hl, bc
    ld sp, $3203
    inc c
    add hl, hl
    inc c
    pop bc
    jr nc, jr_03e_4285

    jr @-$5e

    dec c
    pop bc
    jr nz, jr_03e_4287

jr_03e_4255:
    inc c
    pop bc
    ld b, b
    ld b, d
    add hl, bc
    ld b, b
    inc bc
    and a
    jr @-$3d

    jr nz, jr_03e_4291

    inc c
    pop bc
    ld b, b
    ld b, b
    add hl, bc
    dec sp
    inc bc
    and a
    jr jr_03e_422c

    jr nz, jr_03e_429f

jr_03e_426d:
    inc c
    pop bc
    ld b, b

jr_03e_4270:
    ld b, d
    add hl, bc
    ld b, b
    inc bc
    and a
    jr @-$3d

    jr nz, jr_03e_42ab

    inc c
    pop bc
    ld b, b
    ld b, b
    inc c
    add hl, sp
    jr jr_03e_4232

    inc e
    and b
    inc c
    pop bc

jr_03e_4285:
    jr nz, @+$39

jr_03e_4287:
    add hl, bc
    ld [hl], $03
    scf
    add hl, bc
    pop bc
    jr nc, @+$3b

    inc bc
    and a

jr_03e_4291:
    inc c
    scf
    inc c
    pop bc
    jr nz, jr_03e_42cd

    add hl, bc
    dec [hl]
    inc bc
    ld [hl], $09
    pop bc
    jr nc, jr_03e_42d6

jr_03e_429f:
    inc bc
    and a
    inc c
    ld [hl], $0c
    pop bc
    jr nz, jr_03e_42db

Jump_03e_42a7:
    add hl, bc
    inc sp
    inc bc
    inc [hl]

jr_03e_42ab:
    add hl, bc
    pop bc
    jr nc, jr_03e_42e5

    inc bc
    and a
    inc c
    inc [hl]
    inc c
    pop bc
    jr nz, jr_03e_42e9

    inc c
    add hl, hl
    inc c
    pop bc
    jr nc, jr_03e_42f6

    jr @-$3d

    jr nz, jr_03e_42f8

    add hl, bc
    ld [hl], $03
    scf
    add hl, bc
    pop bc
    jr nc, jr_03e_4302

    inc bc
    and a
    inc c
    scf

jr_03e_42cd:
    inc c
    pop bc
    jr nz, jr_03e_4307

    add hl, bc
    dec [hl]
    inc bc
    ld [hl], $09

jr_03e_42d6:
    pop bc
    jr nc, jr_03e_4310

    inc bc
    and a

jr_03e_42db:
    inc c
    ld [hl], $0c
    pop bc
    jr nz, jr_03e_4315

    add hl, bc
    inc sp
    inc bc
    inc [hl]

jr_03e_42e5:
    add hl, bc
    pop bc
    jr nc, jr_03e_431f

jr_03e_42e9:
    inc bc
    and a
    inc c
    inc [hl]
    inc c
    pop bc
    jr nz, jr_03e_4323

    add hl, bc
    inc [hl]
    inc bc
    ld [hl], $09

jr_03e_42f6:
    scf
    inc bc

jr_03e_42f8:
    add hl, sp
    add hl, bc
    dec sp
    inc bc
    ld b, c
    add hl, bc
    ld b, d
    inc bc
    ld [hl-], a
    inc b

jr_03e_4302:
    dec [hl]
    inc b
    ld [hl-], a
    inc b
    dec [hl]

jr_03e_4307:
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    ld [hl-], a
    inc b
    scf
    inc b

jr_03e_4310:
    ld [hl-], a
    inc b
    scf
    inc b
    ld [hl-], a

jr_03e_4315:
    inc b
    scf
    inc b
    ld [hl-], a
    inc b
    add hl, sp
    inc b
    ld [hl-], a
    inc b
    add hl, sp

jr_03e_431f:
    inc b
    ld [hl-], a
    inc b
    add hl, sp

jr_03e_4323:
    inc b
    dec sp
    ld [$083b], sp
    ld b, b
    ld [$74b1], sp
    or b
    nop
    rst $38
    ld [$040f], sp
    dec bc
    cp $fe
    db $fd
    cp $32
    ld [$0429], sp
    dec hl
    inc b
    jr nc, @+$06

    dec hl
    inc b
    ld [hl-], a
    ld [$0429], sp
    ld [hl-], a
    inc b
    add hl, hl
    inc b
    ld [hl-], a
    inc b
    cp e
    inc b
    and d
    dec d
    ld [hl+], a
    ld [$0429], sp
    dec hl
    inc b
    jr nc, @+$06

    dec hl
    inc b
    ld [hl+], a
    ld [$0429], sp
    ld [hl-], a
    inc b
    add hl, hl
    inc b
    ld [hl-], a
    inc b
    cp e
    rrca
    or b
    nop
    rst $38
    ld [$0a00], sp
    nop
    cp $fe
    db $fd
    cp $a0
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    ld b, $13
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld b, $13
    ld bc, $0112
    rra
    ld [bc], a
    inc de
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld a, [bc]
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld b, $13
    ld bc, $0112
    rra
    ld [bc], a
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    cp e
    inc b
    or b
    nop
    rst $38
    inc b
    ld bc, $000e
    cp $fe
    db $fd
    cp $c1
    jr nz, @-$5e

    dec c
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    add hl, de
    ld [$0819], sp
    or d
    inc b
    pop bc
    jr nc, jr_03e_4435

    ld [$0836], sp
    scf
    ld [$40c1], sp
    add hl, sp
    ld [$10a7], sp
    and b
    ld b, $39

jr_03e_440c:
    db $10
    pop bc
    jr nz, @-$5e

    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    add hl, de
    ld [$0819], sp
    or d
    dec de
    pop bc
    jr nc, @+$39

    ld [$0836], sp
    inc [hl]

jr_03e_442e:
    ld [$50c1], sp
    ld [hl-], a
    ld [$10a7], sp

jr_03e_4435:
    and b
    dec b
    ld [hl-], a
    db $10
    or b
    nop

jr_03e_443b:
    rst $38
    inc b
    ld bc, $000d
    cp $fe
    db $fd
    cp $c1
    dec [hl]
    rra
    ld [$0832], sp
    inc [hl]
    ld [$0836], sp
    scf
    ld [$0836], sp
    inc [hl]
    ld [$30c1], sp
    ld [hl-], a
    db $10
    scf
    db $10
    pop bc
    dec [hl]
    ld [hl], $08
    scf
    ld [$75c1], sp
    add hl, sp
    jr jr_03e_440c

    add b
    pop bc
    dec [hl]
    rra
    ld [$0832], sp
    inc [hl]
    ld [$0836], sp
    scf
    ld [$0836], sp
    inc [hl]
    ld [$30c1], sp
    ld [hl-], a
    db $10
    scf
    db $10
    pop bc
    dec [hl]
    ld [hl], $08
    scf
    ld [$75c1], sp
    ld [hl-], a
    jr jr_03e_442e

    add b
    or b
    nop
    rst $38
    inc b
    dec h
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $a2
    jr nz, jr_03e_443b

    rst $38
    and b
    ld [bc], a
    ld [hl], $18
    ld [hl], $18
    ld [hl-], a
    ld [$0832], sp
    or d
    inc b
    and b
    inc b
    and l
    ld bc, $0432
    ld b, a
    ld [$0846], sp
    ld b, a
    ld [$50a2], sp
    ld c, c
    db $10
    and b
    ld b, $49
    db $10
    rra
    inc b
    and d
    jr nz, @-$59

    rst $38
    and b
    ld [bc], a
    ld [hl], $18
    ld [hl], $18
    ld [hl-], a
    ld [$0832], sp
    or d
    rla
    and b
    inc b
    and l
    ld bc, $0432
    ld b, a
    ld [$0846], sp
    ld b, h
    ld [$50a2], sp
    ld b, d
    db $10
    and b
    ld b, $42
    db $10
    rra
    inc b
    or b
    nop
    rst $38
    inc b
    nop
    ld a, [bc]
    nop
    cp $fe
    db $fd
    cp $a0
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld b, $a0
    ld [$0150], sp
    sbc c
    ld bc, $061f
    and b
    ld a, [bc]
    ld b, b
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $1f
    db $10
    ld b, b
    ld bc, $0111
    rra
    ld b, $a0
    ld [$0140], sp
    ld de, $1f01
    ld b, $b2
    inc b

jr_03e_451a:
    and b
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld b, $a0
    ld [$0150], sp
    sbc c
    ld bc, $061f
    and b

jr_03e_452b:
    ld a, [bc]
    ld b, b
    ld bc, $0111

jr_03e_4530:
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $1f
    ld [$0aa0], sp
    ld b, b
    ld bc, $0111
    rra

jr_03e_4541:
    ld b, $a0
    inc c
    ld b, b

jr_03e_4545:
    ld bc, $0111
    rra
    ld b, $a0
    add hl, bc
    ld b, b
    ld bc, $0111
    rra
    ld b, $b1
    nop
    or b
    ld [bc], a
    rst $38

jr_03e_4557:
    ld b, $01
    add hl, bc
    nop

jr_03e_455b:
    db $fd
    cp $a0
    ld [$60c1], sp
    and e
    rla
    and d
    ld bc, $3027
    dec hl
    jr nc, jr_03e_452b

    jr nc, @+$38

    jr @-$3d

    ld h, b
    scf
    ld [$0836], sp
    scf
    ld [$05a0], sp
    ld [hl-], a
    jr nc, jr_03e_451a

    ld [$3027], sp
    dec hl
    jr nc, jr_03e_4541

    jr nc, @+$2b

    jr jr_03e_4545

    ld h, b
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$05a0], sp
    dec hl
    jr nc, jr_03e_4530

    ld [$3027], sp
    dec hl
    jr nc, jr_03e_4557

    jr nc, @+$38

    jr jr_03e_455b

    ld h, b
    scf
    ld [$0836], sp
    scf
    ld [$05a0], sp
    ld [hl-], a
    jr nc, @-$5e

    ld [$3027], sp
    dec hl
    jr nc, @-$3d

    jr nc, jr_03e_45d7

    jr @-$3d

    ld h, b
    ld [hl-], a
    ld [$1026], sp
    daa
    jr nc, @-$3d

    dec h
    and b
    dec b
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp

jr_03e_45d7:
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    and b
    ld b, $c1
    ld h, b
    and d
    ld [bc], a
    and e
    ld a, [de]
    add hl, sp

jr_03e_4654:
    jr nz, jr_03e_4688

    db $10
    and b
    ld a, [bc]
    ld b, b
    db $10
    ld b, d
    db $10
    add hl, sp
    db $10
    daa
    jr nc, jr_03e_4699

    jr nz, jr_03e_4683

    db $10
    or b
    nop
    rst $38
    ld b, $02
    dec bc
    nop
    db $fd
    cp $c1
    ld b, b
    and b
    ld a, [bc]
    and e
    rra
    dec sp
    db $10
    and b
    inc bc

jr_03e_4678:
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    inc bc
    ld b, d

jr_03e_4683:
    db $10
    and b

Jump_03e_4685:
    dec bc
    scf
    db $10

jr_03e_4688:
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    pop bc
    ld h, l
    dec sp
    jr nc, jr_03e_4654

    ld b, b
    and b
    dec bc
    dec sp
    db $10
    and b

jr_03e_4699:
    inc bc

jr_03e_469a:
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    dec bc
    scf
    db $10
    and b
    inc bc
    scf
    db $10
    and b
    dec bc
    ld b, b
    db $10
    dec sp
    db $10
    ld b, b
    db $10
    pop bc

jr_03e_46b3:
    ld h, l
    ld b, d
    jr nc, jr_03e_4678

    ld b, b
    and b
    dec bc
    dec sp
    db $10

jr_03e_46bc:
    and b
    inc bc
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    inc bc
    ld b, d
    db $10
    and b
    dec bc
    scf

jr_03e_46cd:
    db $10
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    pop bc
    ld h, l
    dec sp
    jr nc, jr_03e_469a

    ld b, b
    and b
    dec bc
    dec sp
    db $10
    and b
    inc bc
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    scf
    db $10
    and b
    inc bc
    scf
    db $10
    and b
    dec bc
    ld b, b
    db $10
    dec sp
    db $10
    add hl, sp
    db $10
    pop bc
    ld h, l
    scf
    jr nc, jr_03e_46bc

    ld b, b
    and b
    dec bc
    ld b, d

Jump_03e_46ff:
    db $10
    add hl, sp
    db $10
    add hl, sp
    db $10

jr_03e_4704:
    ld b, d
    db $10
    add hl, sp
    db $10
    ld b, d
    db $10
    pop bc
    ld [hl], b
    dec sp
    db $10
    and b
    inc b
    dec sp
    jr nz, jr_03e_46b3

    ld [$1037], sp
    and b
    inc b
    scf
    jr nz, jr_03e_46cd

    ld c, c
    and b
    dec bc
    ld b, d
    db $10

jr_03e_4720:
    add hl, sp
    db $10
    add hl, sp
    db $10
    and b
    ld b, $42
    db $10
    add hl, sp
    db $10
    ld [hl], $10
    and b
    dec bc
    scf
    db $10
    dec sp
    db $10
    ld b, d
    db $10
    ld b, a
    db $10
    and b
    inc b
    ld b, a
    db $10

jr_03e_473a:
    rra
    db $10
    or b
    nop
    rst $38
    ld b, $35
    inc b
    ld [bc], a
    db $fd
    cp $a2
    dec d
    and b
    inc b
    daa
    db $10
    ld [hl+], a

jr_03e_474c:
    db $10
    dec hl
    db $10
    daa
    db $10
    ld [hl+], a
    db $10

jr_03e_4753:
    dec hl
    db $10
    and d
    db $10
    jr nc, jr_03e_4769

    add hl, hl
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_03e_4704

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10

jr_03e_4769:
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    and d
    jr nz, jr_03e_47a2

    db $10
    and d
    dec d
    daa
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_03e_4720

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    and d
    db $10
    jr nc, jr_03e_479f

    add hl, hl
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_03e_473a

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10

jr_03e_479f:
    daa
    db $10
    ld [hl+], a

jr_03e_47a2:
    db $10
    dec hl

jr_03e_47a4:
    db $10
    and d
    jr nc, jr_03e_47d8

    jr nz, jr_03e_474c

    jr nz, jr_03e_47de

    db $10
    and d
    ld b, l
    daa
    jr nc, jr_03e_4753

    ld [bc], a
    and d
    ld d, b
    ld h, $20
    ld h, $10
    ld h, $10
    daa
    db $10
    add hl, hl
    db $10
    daa
    jr nz, jr_03e_47e6

    db $10
    ld [hl+], a
    jr nc, jr_03e_47ec

    jr nz, jr_03e_47ee

    db $10
    ld h, $10
    daa
    db $10
    add hl, hl
    db $10
    dec hl
    jr nz, jr_03e_47fb

    db $10
    daa
    jr nc, @+$28

    jr nz, @+$28

jr_03e_47d8:
    db $10
    ld h, $10
    daa
    db $10
    add hl, hl

jr_03e_47de:
    db $10
    daa
    jr nz, @+$26

    db $10
    ld [hl+], a
    jr nc, @+$28

jr_03e_47e6:
    jr nz, jr_03e_480e

    db $10
    ld h, $10
    daa

jr_03e_47ec:
    db $10
    add hl, hl

jr_03e_47ee:
    db $10
    daa
    jr nc, @+$29

    jr nc, jr_03e_47a4

    nop
    rst $38
    inc bc
    ld bc, $0008
    db $fd

jr_03e_47fb:
    cp $c1
    jr nz, jr_03e_47a2

    dec h
    daa
    ld [$082b], sp
    scf
    ld [$0832], sp
    and b
    dec b
    ld [hl-], a
    ld [$08a0], sp

jr_03e_480e:
    dec [hl]
    jr @-$5e

    inc bc
    dec [hl]
    ld [$08a0], sp
    dec [hl]
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0830], sp
    daa
    ld [$0827], sp
    dec hl
    ld [$0837], sp
    ld [hl-], a
    ld [$05a0], sp
    ld [hl-], a
    ld [$08a0], sp
    dec [hl]
    jr @-$5e

    inc bc
    dec [hl]
    ld [$08a0], sp
    dec [hl]
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$03b1], sp
    pop bc
    dec h
    jr nc, jr_03e_4856

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_03e_4856:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0829], sp
    and b
    dec b
    add hl, hl
    ld [$08a0], sp
    jr nc, jr_03e_487e

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_03e_487e:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0832], sp
    ld [hl+], a
    ld [$08a0], sp
    jr nc, jr_03e_48a4

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_03e_48a4:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp

jr_03e_48b4:
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0829], sp
    and b
    dec b
    add hl, hl
    ld [$08a0], sp
    jr nc, jr_03e_48cc

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_03e_48cc:
    dec hl
    ld [$06a0], sp
    ld b, l
    ld [$0844], sp
    and b
    ld [$0832], sp
    and b
    dec b
    ld [hl-], a
    ld [$301f], sp
    or b
    nop
    rst $38
    inc bc
    ld bc, $000a
    db $fd
    cp $c1
    ld b, b

jr_03e_48e9:
    and d
    ld [bc], a
    and b
    rlca
    and e
    daa
    daa
    ld [$0826], sp
    and b
    inc bc
    ld [hl-], a
    db $10
    and d
    ld [bc], a
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    dec [hl]
    ld [$0836], sp
    scf
    ld [$083a], sp
    and b
    dec b
    ld a, [hl-]
    ld [$0aa0], sp
    ld a, [hl-]
    db $10
    and b
    dec b
    ld a, [hl-]
    jr jr_03e_48b4

    ld [bc], a
    and b
    rlca
    daa
    ld [$0826], sp
    and b
    inc bc
    ld [hl-], a
    db $10
    and d
    ld [bc], a
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld a, [hl-]
    ld [$0839], sp
    jr c, jr_03e_4931

    scf
    ld [$05a0], sp
    scf
    ld [$0aa0], sp

jr_03e_4931:
    scf
    db $10
    and b
    dec b
    scf
    jr jr_03e_48e9

    inc bc
    pop bc
    jr nc, @-$5e

    ld a, [bc]
    and d
    ld [bc], a
    rra
    db $10
    ld b, b
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    ld b, d
    ld [$05a0], sp
    ld b, d
    ld [$101f], sp
    and b
    ld a, [bc]
    ld b, b
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    ld b, d
    ld [$05a0], sp
    ld b, d
    db $10
    and b
    ld a, [bc]
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    ld b, d
    ld [$05a0], sp
    ld b, d
    ld [$2cb1], sp
    or b
    nop
    rst $38
    inc bc
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    db $fd
    cp $27
    jr jr_03e_49b9

    jr jr_03e_49be

    db $10
    or [hl]
    inc bc
    daa
    jr jr_03e_49c4

    jr @+$24

    db $10
    and d
    jr nz, @+$22

    jr @+$22

    jr jr_03e_49c9

    db $10
    ld [hl+], a
    jr jr_03e_49cf

    jr jr_03e_49d1

    db $10
    or d
    ld a, [bc]
    jr nz, jr_03e_49cc

    jr nz, jr_03e_49ce

    jr nz, @+$12

    ld [hl+], a

jr_03e_49b9:
    db $10
    rra
    jr nc, @-$4e

    nop

jr_03e_49be:
    rst $38
    inc bc
    nop
    ld [$fd00], sp

jr_03e_49c4:
    cp $1f
    ld [$08a0], sp

jr_03e_49c9:
    dec d
    ld [bc], a
    db $10

jr_03e_49cc:
    ld [bc], a
    rra

jr_03e_49ce:
    inc b

jr_03e_49cf:
    and b
    dec b

jr_03e_49d1:
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    rlca
    rra
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10

jr_03e_49eb:
    or e
    inc bc
    rra
    ld [$07a0], sp
    dec d
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    ld b, $1f
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10
    or e
    rla
    rra
    ld [$08a0], sp
    dec d
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    dec b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    rlca
    rra
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    dec b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10
    or a
    dec hl
    or b
    nop
    rst $38
    dec b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_03e_49eb

    ld a, [bc]
    rra
    dec b
    jr nc, jr_03e_4a55

    add hl, hl
    dec b
    jr nc, jr_03e_4a59

    rra

jr_03e_4a55:
    dec b
    jr nc, jr_03e_4a5d

    add hl, hl

jr_03e_4a59:
    dec b
    jr nc, jr_03e_4a61

    rra

jr_03e_4a5d:
    dec b
    jr nc, jr_03e_4a65

    add hl, hl

jr_03e_4a61:
    dec b
    jr nc, jr_03e_4a69

    rra

jr_03e_4a65:
    dec b
    jr nc, jr_03e_4a6d

    add hl, hl

jr_03e_4a69:
    dec b
    jr nc, jr_03e_4a71

    and b

jr_03e_4a6d:
    inc bc
    rra
    dec b
    ld b, b

jr_03e_4a71:
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld b, b
    dec b
    add hl, sp
    ld a, [bc]
    pop bc
    ld b, b
    dec [hl]
    ld e, $1f
    ld a, [bc]
    and b
    ld a, [bc]
    pop bc
    jr nz, jr_03e_4aa2

    dec b
    jr nc, jr_03e_4a8b

    add hl, hl
    dec b
    jr nc, jr_03e_4a8f

    rra

jr_03e_4a8b:
    dec b
    jr nc, jr_03e_4a93

    add hl, hl

jr_03e_4a8f:
    dec b
    jr nc, jr_03e_4a97

    rra

jr_03e_4a93:
    dec b
    jr nc, jr_03e_4a9b

    add hl, hl

jr_03e_4a97:
    dec b
    jr nc, jr_03e_4a9f

    rra

jr_03e_4a9b:
    dec b
    jr nc, jr_03e_4aa3

    add hl, hl

jr_03e_4a9f:
    dec b
    jr nc, jr_03e_4aa7

jr_03e_4aa2:
    and b

jr_03e_4aa3:
    ld [bc], a
    rra
    dec b
    ld b, b

jr_03e_4aa7:
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld b, b
    dec b
    dec sp
    ld a, [bc]
    pop bc
    ld b, b
    ld b, b
    ld e, $1f
    ld a, [bc]
    or c
    inc b
    pop bc
    ld b, b
    rra
    rrca
    ld b, l
    ld a, [bc]
    ld b, b
    ld a, [bc]
    and b
    dec b
    ld b, b
    dec b
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    rrca
    rra
    rrca

jr_03e_4ad4:
    ld b, l
    ld a, [bc]
    ld b, b
    ld a, [bc]
    and b
    dec b
    ld b, b
    dec b
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    pop bc
    cpl
    ld a, [hl-]
    ld a, [bc]
    or c
    dec sp
    or b
    nop
    rst $38
    dec b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    jr nz, jr_03e_4aa2

    inc c
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    inc c
    scf
    ld a, [bc]
    and b
    inc b
    scf
    ld a, [bc]
    and b
    inc c
    add hl, sp
    ld a, [bc]
    and b
    inc b
    add hl, sp
    ld a, [bc]
    and b
    inc c
    ld a, [hl-]
    ld a, [bc]
    and b
    inc b
    ld a, [hl-]
    ld a, [bc]
    and b
    inc c
    ld b, b
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld b, b
    dec b
    add hl, sp
    ld a, [bc]
    pop bc
    jr nc, jr_03e_4b63

    inc hl
    rra
    ld a, [bc]
    pop bc
    jr nz, jr_03e_4ad4

jr_03e_4b34:
    inc c
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    inc c
    scf
    ld a, [bc]
    and b
    inc b
    scf
    ld a, [bc]
    and b
    inc c
    add hl, sp
    ld a, [bc]
    and b
    inc b
    add hl, sp
    ld a, [bc]
    and b
    inc c
    ld a, [hl-]
    ld a, [bc]
    and b
    inc b
    ld a, [hl-]
    ld a, [bc]
    and b
    inc c
    ld b, b
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld b, b
    dec b
    dec sp
    ld a, [bc]
    pop bc
    jr nc, jr_03e_4ba0

Call_03e_4b60:
    inc hl
    rra
    ld a, [bc]

jr_03e_4b63:
    or c
    dec b
    and b
    inc c
    pop bc
    jr nc, jr_03e_4b89

    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, b
    inc d
    ld b, e
    rrca
    ld b, d
    add hl, de
    rra
    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, b
    inc d
    ld b, e
    rrca
    ld b, d
    rrca
    pop bc
    jr nz, jr_03e_4bba

    ld a, [bc]
    or c
    jr c, jr_03e_4b34

    nop
    rst $38
    dec b
    jr nz, @+$04

jr_03e_4b89:
    ld [$fefe], sp
    db $fd
    cp $a1
    ld [$20a2], sp
    rra
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    scf
    dec b
    add hl, sp
    ld a, [bc]
    dec [hl]
    dec b
    add hl, sp
    inc d
    rra
    dec b

jr_03e_4ba0:
    dec [hl]
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    and d
    ld d, b
    jr c, jr_03e_4bfa

    or d
    inc b
    and d
    jr nz, jr_03e_4bce

    ld a, [bc]
    add hl, sp
    ld a, [bc]
    scf
    dec b
    add hl, sp
    ld a, [bc]
    dec [hl]
    dec b
    add hl, sp
    inc d

jr_03e_4bba:
    rra
    dec b
    dec [hl]
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    and d
    ld d, b
    jr c, jr_03e_4bee

    and a
    ld a, [bc]
    scf
    inc d
    jr c, jr_03e_4bd6

    and c
    dec bc

jr_03e_4bce:
    and d
    rra
    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_03e_4bdb

jr_03e_4bd6:
    jr nc, @+$07

    inc sp
    dec b
    rra

jr_03e_4bdb:
    ld a, [bc]
    jr z, jr_03e_4bed

    ld a, [hl+]
    rrca
    jr z, jr_03e_4bec

    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_03e_4bed

    jr nc, @+$07

    inc sp
    dec b

jr_03e_4bec:
    rra

jr_03e_4bed:
    ld a, [bc]

jr_03e_4bee:
    jr z, jr_03e_4bff

    ld a, [hl+]
    rrca
    ld [hl-], a
    ld a, [bc]
    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_03e_4bff

jr_03e_4bfa:
    jr nc, @+$07

    inc sp
    dec b
    rra

jr_03e_4bff:
    ld a, [bc]
    jr z, jr_03e_4c11

    ld a, [hl+]
    rrca
    jr z, jr_03e_4c10

    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_03e_4c11

    jr nc, jr_03e_4c13

    inc sp
    dec b

jr_03e_4c10:
    rra

jr_03e_4c11:
    ld a, [bc]
    dec [hl]

jr_03e_4c13:
    dec b
    jr nc, jr_03e_4c20

    dec [hl]
    dec b
    jr nc, @+$0c

    ld [hl-], a
    ld a, [bc]
    or b
    nop
    rst $38
    dec b

jr_03e_4c20:
    nop
    add hl, bc
    nop
    cp $fe
    db $fd
    cp $a0
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    ld b, $50
    ld bc, $0296
    rra
    ld [bc], a
    ld d, b
    ld [bc], a
    sub [hl]
    ld [bc], a
    rra
    ld bc, $051f
    and b
    dec b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    inc bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    dec b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    or l
    inc b
    or b
    nop
    rst $38
    ld [$0a01], sp
    nop
    cp $fe
    db $fd
    cp $c1
    jr nc, @-$5e

    ld a, [bc]

jr_03e_4d06:
    add hl, hl
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    jr z, jr_03e_4d22

    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]

jr_03e_4d21:
    db $10

jr_03e_4d22:
    and b
    ld a, [bc]
    ld h, $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    jr z, jr_03e_4d4a

    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10

jr_03e_4d4a:
    and b
    ld a, [bc]
    ld h, $10
    pop bc
    ld b, b
    and b
    inc b
    inc [hl]
    jr nz, jr_03e_4d06

    inc b
    and b
    ld a, [bc]
    add hl, de
    db $10
    and b
    dec b
    add hl, de
    jr nz, @-$5e

jr_03e_4d5f:
    ld a, [bc]
    jr nz, jr_03e_4d72

    and b
    dec b
    jr nz, jr_03e_4d86

    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    add hl, de
    db $10

jr_03e_4d72:
    jr nz, jr_03e_4d84

    and b
    dec b
    jr nz, @+$22

    and b
    ld a, [bc]
    add hl, de
    db $10
    and b
    dec b
    add hl, de
    jr nz, jr_03e_4d21

    ld a, [bc]
    jr nz, jr_03e_4d94

jr_03e_4d84:
    and b
    dec b

jr_03e_4d86:
    jr nz, jr_03e_4da8

    and b

jr_03e_4d89:
    ld a, [bc]
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    dec h
    db $10

jr_03e_4d94:
    inc h
    jr nz, jr_03e_4dbd

    ld [$0828], sp
    add hl, hl
    db $10
    and b
    dec b
    add hl, hl
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    daa
    db $10
    and b
    dec b

jr_03e_4da8:
    daa
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    ld h, $10
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    dec h
    db $10
    and b
    dec b
    dec h

jr_03e_4dbd:
    jr nz, jr_03e_4d5f

    ld a, [bc]
    inc h
    db $10
    ld [hl+], a
    db $10
    jr nz, jr_03e_4dd6

    inc h
    db $10
    ld h, $10
    jr z, @+$12

    add hl, hl
    db $10
    inc h
    db $10
    jr nz, jr_03e_4de2

    add hl, de
    db $10
    and b
    inc bc

jr_03e_4dd6:
    add hl, de
    jr nz, jr_03e_4d89

    nop
    rst $38
    ld [$0a01], sp
    nop
    cp $fe
    db $fd

jr_03e_4de2:
    cp $c1
    ld d, b
    and b
    ld a, [bc]
    jr nc, jr_03e_4df1

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_03e_4df1:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    jr nc, @+$12

    dec hl
    db $10
    jr nc, @+$12

    dec hl
    db $10
    add hl, hl
    db $10
    jr nc, jr_03e_4e0f

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_03e_4e0f:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, jr_03e_4e27

    ld [hl-], a
    db $10
    jr nc, jr_03e_4e2b

    dec hl
    db $10
    pop bc
    ld d, b
    jr nc, @+$12

    and b
    inc bc
    jr nc, jr_03e_4e45

    and b
    ld a, [bc]

jr_03e_4e27:
    pop bc
    ld d, b
    jr nc, jr_03e_4e33

jr_03e_4e2b:
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_03e_4e33:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, jr_03e_4e55

jr_03e_4e45:
    dec hl
    db $10
    jr nc, jr_03e_4e51

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_03e_4e51:
    ld [hl-], a

jr_03e_4e52:
    ld [$1034], sp

jr_03e_4e55:
    add hl, hl
    jr nz, jr_03e_4e83

    db $10
    rra
    ld [$082b], sp
    ld [hl-], a
    ld [$0830], sp
    pop bc
    ld d, b
    dec hl
    db $10
    and b
    inc bc
    dec hl
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    ld b, b
    add hl, hl
    ld [$0830], sp
    inc [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0832], sp
    scf
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, @+$12

jr_03e_4e83:
    ld [hl-], a
    db $10
    pop bc
    ld d, b
    inc [hl]
    db $10
    and b
    inc bc
    inc [hl]
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    ld b, b
    add hl, hl
    ld [$0830], sp
    inc [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0832], sp
    scf
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    pop bc
    ld d, b
    dec hl
    db $10
    and b
    inc bc
    dec hl
    jr nz, jr_03e_4e52

    ld a, [bc]
    pop bc

jr_03e_4eb4:
    ld b, b
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, h
    ld [$0845], sp
    ld b, h
    ld [$0842], sp
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    pop bc
    ld h, b
    add hl, sp
    ld b, b
    rra
    jr nz, jr_03e_4eb4

    nop
    rst $38
    ld [$0450], sp
    ld [bc], a
    cp $fe
    db $fd
    cp $a0
    inc b
    jr nc, jr_03e_4f32

    jr nc, @+$12

    dec hl
    jr nz, @+$2d

    db $10
    add hl, hl
    jr nz, jr_03e_4f44

    db $10
    dec hl
    jr nc, jr_03e_4f4f

    jr nz, jr_03e_4f51

    db $10
    dec hl
    jr nz, @+$2d

    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    inc [hl]
    db $10
    add hl, hl
    jr nc, jr_03e_4f5f

    jr nz, @+$32

    db $10

jr_03e_4f32:
    dec hl
    jr nz, @+$2d

    db $10
    add hl, hl
    jr nz, jr_03e_4f62

    db $10
    dec hl
    jr nc, jr_03e_4f6d

    jr nz, @+$32

    db $10
    dec hl
    jr nz, jr_03e_4f6e

    db $10

jr_03e_4f44:
    jr nc, @+$12

    rra
    db $10
    inc [hl]
    db $10
    add hl, hl
    jr nc, jr_03e_4f71

    jr nc, jr_03e_4f71

jr_03e_4f4f:
    jr nc, jr_03e_4f71

jr_03e_4f51:
    jr nc, jr_03e_4f6c

    jr nc, jr_03e_4f79

    jr nc, jr_03e_4f79

    jr nc, jr_03e_4f80

    jr jr_03e_4f80

    ld [$0827], sp
    dec h

jr_03e_4f5f:
    ld [$3024], sp

jr_03e_4f62:
    add hl, hl
    db $10
    daa
    db $10
    add hl, hl
    db $10
    dec hl
    db $10
    add hl, hl
    db $10

jr_03e_4f6c:
    dec hl

jr_03e_4f6d:
    db $10

jr_03e_4f6e:
    jr nc, @+$22

    inc [hl]

jr_03e_4f71:
    db $10
    add hl, hl
    jr nc, jr_03e_4fa5

    jr nz, @+$32

    db $10
    ld [hl-], a

jr_03e_4f79:
    db $10
    jr nc, jr_03e_4f8c

    dec hl
    db $10
    add hl, hl
    ld h, b

jr_03e_4f80:
    or b
    nop
    rst $38
    ld [$0000], sp
    nop
    rst $38
    add hl, bc
    ld bc, $000a

jr_03e_4f8c:
    cp $fe
    db $fd
    cp $a0
    ld a, [bc]
    pop bc
    ld d, b
    and e
    inc bc
    dec h
    inc c
    and b
    dec b
    dec h
    jr jr_03e_4f44

    ld [$0aa0], sp
    dec d
    inc b
    jr nz, @+$0e

    and b

jr_03e_4fa5:
    dec b
    jr nz, jr_03e_4fcc

    and b
    ld a, [bc]
    dec h
    inc c
    and b
    dec b
    dec h
    jr @-$57

    ld [$0aa0], sp
    dec h
    inc b
    db $10
    ld [$0419], sp
    and a
    inc c
    and b
    dec b
    add hl, de
    jr @-$5e

    dec b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b

jr_03e_4fcc:
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    add hl, sp
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    add hl, sp
    inc b
    or e
    dec e
    pop bc
    ld [hl], b
    and d
    ld [bc], a
    and b
    ld a, [bc]
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    inc c
    and a
    ld [$0429], sp
    and a
    inc c
    dec h
    inc h
    rra
    inc c
    jr nc, jr_03e_5020

    ld a, [hl+]
    ld [$0425], sp
    and b
    dec b
    dec h
    ld [$0aa0], sp
    inc hl
    inc c

jr_03e_5020:
    ld [hl+], a
    inc b
    jr nz, jr_03e_502c

    ld a, [de]
    inc b
    and a
    jr @+$21

    inc c
    ld a, [hl+]
    inc c

jr_03e_502c:
    ld a, [hl+]
    inc c
    and a
    ld [$0429], sp
    and a
    inc c
    dec h
    inc h
    rra
    inc c
    daa
    inc c
    dec h
    ld [$0c27], sp
    ld a, [hl+]
    inc b
    and a
    inc h
    inc hl
    inc c
    and b
    inc c
    rra
    ld [$0c23], sp
    inc hl
    inc h
    ld [hl+], a
    inc b
    dec h
    ld [$0c32], sp
    ld a, [hl+]
    inc c
    dec h
    inc b
    jr nc, jr_03e_5060

    daa
    inc b
    jr nc, @+$0a

    daa
    inc c
    daa

jr_03e_505f:
    inc b

Call_03e_5060:
jr_03e_5060:
    and a
    inc h
    dec h
    jr @-$4d

    ld e, [hl]
    and b
    dec b
    and a
    inc c
    and d
    ld bc, $0aa0
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    ld a, [hl+]
    inc b
    add hl, hl
    inc b
    daa
    inc b
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    or e
    ld l, a
    or b
    nop
    rst $38
    add hl, bc
    ld [bc], a
    ld c, $00
    cp $fe
    db $fd
    cp $c1
    jr nc, @-$5e

    ld c, $a3
    inc h
    rra
    inc c
    inc sp
    inc c
    pop bc
    ld d, b
    inc sp
    ld [$0432], sp
    jr nc, jr_03e_50a7

    dec h
    inc b
    and a
    inc c
    and b
    rlca
    dec h
    inc c

jr_03e_50a7:
    and a
    ld [$0ea0], sp
    dec h
    inc b
    daa
    ld [$0429], sp
    ld a, [hl+]
    inc c
    and b
    rlca
    ld a, [hl+]
    jr jr_03e_505f

    ld [$0ea0], sp
    jr nc, jr_03e_50c1

    add hl, hl
    ld [$0425], sp

jr_03e_50c1:
    and a
    jr @-$5e

    dec b
    dec h
    ld [$0ea0], sp
    jr nc, @+$06

    pop bc
    jr nc, jr_03e_50f8

    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_03e_5106

    inc b
    ld a, [hl+]
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_03e_5110

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_03e_511a

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_03e_5124

    inc b
    or d
    inc hl
    ld a, [hl+]

jr_03e_50f8:
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, @+$32

    inc b
    ld a, [hl+]
    ld [$20c1], sp
    dec h

jr_03e_5106:
    inc c
    pop bc
    jr nc, jr_03e_513a

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h

jr_03e_5110:
    inc c
    pop bc
    jr nc, jr_03e_5144

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h

jr_03e_511a:
    inc b
    and a
    inc c
    and d
    ld [bc], a
    rra
    inc c
    pop bc
    dec h
    dec [hl]

jr_03e_5124:
    inc c
    pop bc
    ld d, b
    inc sp
    ld [$30c1], sp
    ld [hl-], a
    inc c
    pop bc
    ld d, b
    jr nc, jr_03e_513d

    and b

jr_03e_5132:
    rlca
    jr nc, jr_03e_514d

    and b
    ld c, $30
    inc b
    ld [hl-], a

jr_03e_513a:
    ld [$0430], sp

jr_03e_513d:
    and a
    inc b
    rra
    ld [$25c1], sp
    inc sp

jr_03e_5144:
    inc c
    pop bc
    ld d, b
    ld [hl-], a
    ld [$30c1], sp
    jr nc, jr_03e_5159

jr_03e_514d:
    pop bc
    ld d, b
    ld a, [hl+]
    inc b
    and a
    inc c
    and b
    rlca
    ld a, [hl+]
    inc h
    rra
    inc c

jr_03e_5159:
    and b
    ld c, $c1
    dec h
    dec [hl]
    inc c
    pop bc
    ld d, b
    inc sp
    ld [$30c1], sp
    ld [hl-], a
    inc c
    pop bc
    ld d, b
    jr nc, jr_03e_5177

    and b
    rlca
    jr nc, jr_03e_5187

    and b
    ld c, $30
    inc b

jr_03e_5173:
    ld [hl-], a
    ld [$0430], sp

jr_03e_5177:
    and a
    inc b
    rra
    ld [$25c1], sp
    inc sp
    inc c
    pop bc
    ld d, b
    ld [hl-], a
    ld [$30c1], sp
    inc sp
    inc c

jr_03e_5187:
    pop bc
    ld d, b
    inc sp
    inc c
    dec [hl]
    inc c
    scf
    inc b
    and a
    jr jr_03e_5132

    ld c, $1f
    ld [$043a], sp
    add hl, sp
    ld [$043a], sp
    and a
    inc c

jr_03e_519d:
    and b
    rlca
    ld a, [hl-]
    inc c

jr_03e_51a1:
    and b
    ld c, $1f
    ld [$043a], sp
    add hl, sp
    ld [$0c3a], sp
    dec [hl]
    inc b

jr_03e_51ad:
    and a
    inc c
    pop bc
    jr nc, @+$42

    inc c
    ld b, b
    inc c

jr_03e_51b5:
    pop bc
    ld d, b
    ld b, b
    ld [$043a], sp
    add hl, sp
    ld [$0437], sp
    scf
    inc c
    and b
    rlca
    scf
    inc h
    or c
    add [hl]
    and b
    ld c, $c1
    jr nc, jr_03e_5173

    ld [$041f], sp

jr_03e_51cf:
    and b
    ld c, $3a
    inc b

jr_03e_51d3:
    add hl, sp
    inc b
    scf
    inc b

jr_03e_51d7:
    pop bc

jr_03e_51d8:
    jr nz, @+$42

    ld [$30c1], sp
    ld a, [hl-]
    inc b

jr_03e_51df:
    add hl, sp
    ld [$20c1], sp

jr_03e_51e3:
    dec [hl]
    inc b
    or e
    and d

jr_03e_51e7:
    or b
    nop
    rst $38
    add hl, bc

jr_03e_51eb:
    ld h, b
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $a3

jr_03e_51f3:
    inc d
    and b
    ld [bc], a
    jr nz, @+$1a

    and b
    ld b, $20

jr_03e_51fb:
    jr jr_03e_519d

    ld [bc], a
    add hl, hl

jr_03e_51ff:
    jr jr_03e_51a1

    ld b, $29
    jr @-$5e

    ld [bc], a
    jr nz, jr_03e_5220

    and b
    ld b, $20

jr_03e_520b:
    jr jr_03e_51ad

    ld [bc], a
    dec h

jr_03e_520f:
    jr @-$5e

    ld b, $25

jr_03e_5213:
    jr jr_03e_51b5

    ld [bc], a
    jr nz, jr_03e_5230

    and b
    ld b, $20

jr_03e_521b:
    jr @-$5e

    ld [bc], a
    jr nz, jr_03e_5238

jr_03e_5220:
    and b
    ld b, $20

jr_03e_5223:
    jr jr_03e_51d8

    dec d
    and b
    ld [bc], a
    daa
    jr @-$5e

    ld b, $27

jr_03e_522d:
    jr jr_03e_51cf

    ld [bc], a

jr_03e_5230:
    add hl, hl

jr_03e_5231:
    jr jr_03e_51d3

    ld b, $29

jr_03e_5235:
    jr jr_03e_51d7

    ld [bc], a

jr_03e_5238:
    ld a, [hl+]

jr_03e_5239:
    jr @-$5e

    ld b, $2a

jr_03e_523d:
    jr jr_03e_51df

    ld [bc], a
    ld a, [de]

jr_03e_5241:
    jr jr_03e_51e3

    ld b, $1a

jr_03e_5245:
    jr jr_03e_51e7

    ld [bc], a
    daa
    jr jr_03e_51eb

    ld b, $27
    jr @-$5e

    ld [bc], a
    add hl, hl
    jr jr_03e_51f3

    ld b, $29
    jr @-$5e

    ld [bc], a
    ld a, [hl+]

jr_03e_5259:
    jr jr_03e_51fb

    ld b, $2a
    jr jr_03e_51ff

    ld [bc], a
    jr nc, @+$1a

    and b
    ld b, $30
    jr @-$5e

    ld [bc], a
    daa
    jr jr_03e_520b

    ld b, $27
    jr jr_03e_520f

    ld [bc], a
    dec h
    jr jr_03e_5213

    ld b, $25
    jr @-$5e

    ld [bc], a
    inc hl
    jr jr_03e_521b

    ld b, $23
    jr @-$5e

    ld [bc], a
    ld [hl+], a
    jr jr_03e_5223

    ld b, $22
    jr jr_03e_5238

    ld a, $a0
    ld [bc], a
    dec h
    jr jr_03e_522d

    ld b, $25
    jr jr_03e_5231

    ld [bc], a
    dec h
    jr jr_03e_5235

    ld b, $25
    jr jr_03e_5239

    ld [bc], a
    dec h
    jr jr_03e_523d

    ld b, $25
    jr jr_03e_5241

    ld [bc], a
    dec h
    jr jr_03e_5245

    ld b, $25
    jr jr_03e_5259

    nop
    rst $38

jr_03e_52ab:
    add hl, bc
    nop
    dec c
    nop
    cp $fe
    db $fd
    cp $a0
    ld [$0160], sp
    ld h, e
    ld bc, $0a1f
    rra
    add hl, bc
    and b
    inc b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    rra
    add hl, bc
    and b
    inc b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    rra
    add hl, bc
    and b
    dec b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    and b
    ld b, $32
    ld bc, $0113
    rra
    ld a, [bc]
    cp a
    inc b
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    jr nc, jr_03e_52ab

    dec bc
    ld [hl+], a
    db $10
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    add hl, bc

jr_03e_5326:
    add hl, hl
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    rra
    db $10
    dec h
    db $10
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    rra
    ld [$0832], sp
    and e
    jr z, jr_03e_5326

    ld d, b
    scf
    ld [$05a0], sp
    scf
    db $10
    and b
    add hl, bc
    ld [hl-], a
    ld [$1037], sp
    and b
    dec b
    scf
    db $10
    and b
    add hl, bc
    ld [hl-], a
    db $10
    ld a, [hl-]
    ld [$0837], sp
    add hl, sp
    ld [$0837], sp
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    and b
    dec b
    ld [hl-], a
    db $10
    and b
    add hl, bc
    inc [hl]
    db $10
    and b
    dec b
    inc [hl]
    db $10
    and b
    add hl, bc
    and e
    dec h
    pop bc
    ld b, b
    dec h
    db $10
    daa
    db $10
    pop bc
    jr nc, jr_03e_53e1

    ld [$0832], sp
    pop bc
    ld b, b
    dec h
    db $10
    daa
    db $10
    pop bc
    jr nc, jr_03e_53ed

    ld [$0832], sp
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $c1
    ld b, b
    and e
    ld h, $32
    jr jr_03e_53f4

    ld [$0835], sp
    scf
    ld [$1839], sp
    scf
    ld [$0839], sp
    scf
    ld [$1839], sp
    scf
    ld [$2039], sp
    scf
    db $10
    ld [hl-], a
    db $10
    ld [hl-], a
    jr @+$36

    ld [$0835], sp
    scf
    ld [$1839], sp

jr_03e_53e1:
    scf
    ld [$0839], sp
    scf
    ld [$1839], sp
    scf
    ld [$2039], sp

jr_03e_53ed:
    scf
    db $10
    ld b, d
    db $10
    pop bc

jr_03e_53f2:
    ld d, b
    and e

jr_03e_53f4:
    dec d
    ld b, d
    jr jr_03e_542f

    ld [$2042], sp
    scf

jr_03e_53fc:
    db $10
    ld b, d
    ld [$0844], sp
    ld b, d
    jr nz, @+$3b

    jr nz, @+$39

    jr nz, @-$3d

    ld h, b
    ld [hl-], a
    jr z, jr_03e_5435

    ld [$2832], sp
    add hl, hl
    ld [$00b0], sp
    rst $38
    rlca
    dec [hl]
    inc b
    ld [bc], a
    cp $fe
    db $fd
    cp $a2

jr_03e_541d:
    dec [hl]
    ld [hl+], a
    ld [$0825], sp
    add hl, hl
    ld [$1830], sp
    inc h
    ld [$0827], sp
    dec hl
    ld [$1832], sp
    dec h

jr_03e_542f:
    ld [$0829], sp
    jr nc, @+$0a

    inc [hl]

jr_03e_5435:
    jr jr_03e_545b

jr_03e_5437:
    ld [$0827], sp
    dec hl
    ld [$1032], sp
    add hl, hl
    ld [$05b1], sp
    and d
    ld b, b
    ld a, [hl+]
    jr nz, @-$5d

    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    daa
    jr nz, jr_03e_53f2

    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    add hl, hl
    jr nz, jr_03e_53fc

jr_03e_545b:
    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    inc h
    ld [$0827], sp
    dec hl
    ld [$0832], sp
    and c
    inc bc
    ld b, d
    ld [$0832], sp
    dec h
    ld [$0829], sp
    jr nc, @+$0a

    and d
    ld a, [hl+]
    inc [hl]
    jr jr_03e_541d

    dec [hl]
    inc hl
    ld [$0827], sp
    ld a, [hl+]
    ld [$2aa2], sp
    inc sp
    jr jr_03e_5437

    nop
    rst $38
    dec b
    ld bc, $000a
    cp $fe
    db $fd
    cp $a2
    ld bc, $20c1
    ld sp, $a00a
    ld a, [bc]
    dec sp
    dec b
    add hl, sp
    dec b
    jr c, jr_03e_54a4

    ld [hl], $05
    inc [hl]
    dec b
    ld [hl-], a

jr_03e_54a4:
    dec b
    ld sp, $2b05
    dec b
    add hl, hl
    dec b
    dec hl
    dec b
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    rra
    ld sp, $320a
    ld a, [bc]
    pop bc
    jr nz, @+$3a

    ld a, [bc]
    inc h
    ld a, [bc]
    rra
    ld a, [bc]
    inc h
    ld a, [bc]
    or c
    inc b
    and d
    ld [bc], a
    pop bc
    ld d, b
    ld sp, $a014
    dec b
    ld sp, $a014
    inc c
    add hl, hl
    ld a, [bc]
    and b
    rlca
    add hl, hl
    inc d
    and b
    inc c
    jr z, jr_03e_54e7

    ld [hl+], a
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, $0a
    ld sp, $2b0a
    ld a, [bc]

jr_03e_54e7:
    add hl, hl
    ld a, [bc]
    jr z, jr_03e_54f5

    add hl, hl
    ld a, [bc]
    pop bc
    rra
    jr z, jr_03e_54fb

    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_03e_54f5:
    jr z, @+$0c

    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_03e_54fb:
    ld hl, $310a
    ld a, [bc]
    pop bc
    jr nz, jr_03e_54a4

    ld bc, $0a24
    inc sp
    ld a, [bc]
    rra
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    pop bc
    rra
    ld sp, $310a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl], $0a
    add hl, hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    jr z, jr_03e_552d

    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    and b
    dec b

jr_03e_552d:
    inc h
    inc d
    and b
    inc c
    pop bc
    jr nz, jr_03e_555f

    dec b
    add hl, hl
    dec b
    jr z, jr_03e_553e

    ld h, $05
    inc h
    dec b
    ld [hl+], a

jr_03e_553e:
    dec b
    and d
    ld [bc], a
    pop bc
    jr nc, jr_03e_5568

jr_03e_5544:
    ld a, [bc]
    and b
    dec b
    inc h
    inc d
    and b
    inc c
    inc h
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    and b
    dec b
    add hl, hl
    inc d
    and b
    inc c
    add hl, hl
    ld a, [bc]

jr_03e_555f:
    dec hl
    inc d
    add hl, hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    or b
    nop
    rst $38

jr_03e_5568:
    dec b
    ld bc, $000e
    cp $fe
    db $fd
    cp $a3
    dec h
    and b
    ld c, $c1
    jr nz, jr_03e_55b0

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    pop bc
    jr nz, jr_03e_55bc

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    dec sp
    ld a, [bc]
    pop bc
    jr nz, @+$43

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    ld b, c
    ld a, [bc]
    pop bc
    jr nz, jr_03e_55d0

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    dec sp
    ld a, [bc]
    or c
    inc b
    pop bc
    jr nc, jr_03e_5544

    ld h, $39
    inc d
    jr c, jr_03e_55b0

    ld [hl], $0a
    inc [hl]
    inc d
    ld sp, $340a
    ld a, [bc]
    ld [hl], $14

jr_03e_55b0:
    ld [hl-], a
    ld a, [bc]
    ld [hl], $0a
    inc [hl]
    ld e, $31
    ld a, [bc]
    pop bc
    rra
    dec hl
    ld a, [bc]

jr_03e_55bc:
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    pop bc
    jr nz, jr_03e_55f8

    ld a, [bc]
    pop bc
    rra

jr_03e_55d0:
    add hl, sp
    ld a, [bc]
    jr c, jr_03e_55de

    ld [hl], $0a
    pop bc
    jr nz, jr_03e_5611

    inc d
    rra
    inc d
    pop bc
    rra

jr_03e_55de:
    add hl, sp
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld sp, $390a
    ld a, [bc]
    ld [hl], $0a
    ld [hl-], a
    ld a, [bc]
    dec hl
    ld a, [bc]
    jr c, jr_03e_55f8

    pop bc
    jr nz, jr_03e_562a

    inc d
    ld sp, $c114
    rra
    ld [hl-], a
    ld a, [bc]

jr_03e_55f8:
    inc [hl]
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    and e
    inc h
    pop bc
    jr nc, @+$33

    ld a, [bc]
    and b
    dec b
    ld sp, $a014
    inc c
    ld sp, $c10a
    jr nz, jr_03e_5641

    inc d
    and b

jr_03e_5611:
    dec c
    ld sp, $340a
    ld a, [bc]
    and b
    inc c
    ld [hl], $0a
    and b
    dec b
    ld [hl], $14
    and b
    inc c
    ld [hl], $0a
    and b
    dec c
    jr c, jr_03e_563a

    and b
    ld c, $36
    ld a, [bc]

jr_03e_562a:
    jr c, jr_03e_5636

    or b
    nop
    rst $38
    dec b
    dec d
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd

jr_03e_5636:
    cp $19
    ld a, [bc]
    add hl, hl

jr_03e_563a:
    ld a, [bc]
    rra
    inc d
    or a
    inc b
    and d
    rra

jr_03e_5641:
    add hl, de
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld sp, $210a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld sp, $240a
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld hl, $240a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    dec d
    inc h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr z, jr_03e_5673

    inc h
    ld a, [bc]
    add hl, de
    ld a, [bc]
    add hl, hl
    inc d
    add hl, de
    ld a, [bc]
    dec de
    ld a, [bc]

jr_03e_5673:
    ld h, $0a
    dec hl
    ld a, [bc]
    inc sp
    ld a, [bc]
    inc [hl]
    inc d
    inc h
    inc d
    add hl, de
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    rra
    inc d
    or a
    daa
    or b
    nop
    rst $38
    dec b
    nop
    dec c
    nop
    cp $fe
    db $fd
    cp $a0
    dec bc
    ld d, b
    ld bc, $0162
    rra
    ld [$0aa0], sp
    ld [de], a
    ld bc, $0113
    rra
    ld [$0a1f], sp
    and b
    rlca
    ld [de], a
    ld bc, $0113
    rra
    ld [$04ba], sp
    and b
    dec bc
    ld d, b
    ld bc, $0162
    rra
    ld [$0aa0], sp
    ld [de], a
    ld bc, $0113
    rra
    ld [$0a1f], sp
    and b
    rlca
    ld [de], a
    ld bc, $0113
    rra
    ld [$12bc], sp
    or b
    nop
    rst $38
    inc b
    ld bc, $0009
    cp $fe
    db $fd
    cp $c1
    cpl
    jr nc, jr_03e_56dd

    ld [hl-], a
    ld b, $33
    inc c
    dec [hl]
    inc c

jr_03e_56dd:
    inc hl
    inc c
    dec [hl]
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    ld b, $29
    ld b, $2a
    ld b, $30
    ld b, $30
    ld b, $32
    ld b, $33
    inc c
    jr nc, jr_03e_56ff

    inc hl
    inc c
    ld a, [hl+]
    ld b, $25
    ld b, $2a
    ld b, $32
    inc c
    ld [hl+], a
    ld [de], a

jr_03e_56ff:
    rra
    inc c
    ld [hl+], a
    ld b, $23
    ld b, $25
    inc c
    ld a, [hl+]
    inc c
    inc sp
    jr jr_03e_573e

    inc c
    jr nc, jr_03e_571b

    rra
    inc c
    ld [hl+], a
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    rra
    inc c
    daa
    inc c

jr_03e_571b:
    dec h
    inc c
    jr nz, jr_03e_572b

    dec h
    ld [de], a
    add hl, hl
    ld b, $2a
    inc c
    ld [hl+], a
    inc c
    dec [hl]
    inc c
    ld a, [hl+]
    inc c

jr_03e_572b:
    ld a, [hl+]
    ld b, $30
    ld b, $32
    ld b, $33
    ld b, $32
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    jr nc, jr_03e_5749

    add hl, hl

jr_03e_573e:
    inc c
    dec h
    inc c
    jr nz, jr_03e_574f

    and d
    ld [bc], a
    add hl, hl
    inc c
    dec h
    inc c

jr_03e_5749:
    inc hl
    inc c
    add hl, de
    inc c
    dec d
    inc c

jr_03e_574f:
    dec h
    inc c
    inc hl
    ld b, $25
    ld b, $23
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $22
    inc c
    dec d
    inc c
    ld a, [de]
    inc c
    dec d
    inc c
    ld a, [de]
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $19
    inc c
    inc hl
    inc c
    rla
    ld b, $19
    ld b, $1a
    ld b, $17
    ld b, $1a
    inc c
    dec h
    inc c
    ld a, [de]
    ld b, $20
    ld b, $22
    ld b, $1a
    ld b, $25
    inc c
    inc hl
    inc c
    inc hl
    ld b, $22
    ld b, $20
    ld b, $1a
    ld b, $25
    inc c
    inc hl
    inc c
    dec h
    ld b, $29
    ld b, $30
    inc c
    or b
    nop
    rst $38
    inc b
    ld [bc], a
    ld a, [bc]
    nop
    cp $fe
    db $fd
    cp $c1
    cpl
    and e
    dec h
    add hl, sp
    inc c
    scf
    inc c
    add hl, sp
    inc c
    and b
    dec b
    ld a, [hl+]
    inc c
    and b
    ld a, [bc]
    ld a, [hl-]
    jr jr_03e_57f2

    inc c
    ld [hl-], a
    inc c
    inc sp
    jr @+$39

    jr @+$37

    inc c
    inc sp
    ld b, $35
    inc c
    ld a, [hl+]
    ld [de], a
    ld [hl-], a
    inc c
    rra
    jr jr_03e_5806

    inc c
    scf
    inc c
    rra
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    dec [hl]
    inc c
    rra
    inc c
    ld [hl-], a
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    rra
    inc c
    jr nc, jr_03e_57f4

    add hl, hl
    inc c
    ld [hl-], a
    inc c
    rra
    jr jr_03e_5824

    inc c
    ld a, [hl-]
    inc c

jr_03e_57f2:
    ld [hl-], a
    inc c

jr_03e_57f4:
    dec [hl]
    inc c
    scf
    inc c
    dec [hl]
    jr jr_03e_582d

    inc c
    dec [hl]
    inc c
    inc sp
    jr jr_03e_5831

    inc c
    add hl, hl
    inc c
    jr nc, jr_03e_5812

jr_03e_5806:
    jr nc, jr_03e_5814

    jr nc, jr_03e_5816

    ld [hl-], a
    inc c
    inc sp
    inc c
    jr nc, @+$1a

    add hl, hl
    inc c

jr_03e_5812:
    ld a, [hl+]
    inc c

jr_03e_5814:
    add hl, hl
    inc c

jr_03e_5816:
    ld a, [hl+]
    jr @+$29

    jr jr_03e_5844

    inc c
    dec h
    inc c
    dec h
    inc c
    daa
    jr jr_03e_5846

    inc c

jr_03e_5824:
    daa
    inc c
    add hl, hl
    jr jr_03e_584e

    inc c
    add hl, hl
    inc c
    ld a, [hl+]

jr_03e_582d:
    jr jr_03e_5856

    inc c
    add hl, hl

jr_03e_5831:
    inc c
    ld a, [hl+]
    inc c
    inc sp
    inc c
    dec [hl]
    inc c
    or b
    nop
    rst $38
    inc b
    dec d
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $1a

jr_03e_5844:
    inc c
    dec h

jr_03e_5846:
    inc c
    rra
    inc c
    jr nz, jr_03e_5857

    ld a, [de]
    inc c
    ld [hl+], a

jr_03e_584e:
    inc c
    rra
    jr jr_03e_586c

    inc c
    dec h
    inc c
    rra

jr_03e_5856:
    inc c

jr_03e_5857:
    jr nz, jr_03e_5865

    ld [hl+], a
    inc c
    dec h
    ld b, $2a
    inc c
    ld a, [de]
    ld [de], a
    ld a, [de]
    inc c
    dec h
    inc c

jr_03e_5865:
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h

jr_03e_586c:
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    inc sp
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld [hl-], a
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    inc sp
    inc c
    dec h
    inc c
    dec d
    jr jr_03e_58c7

    jr jr_03e_58c5

    jr jr_03e_58cb

    jr jr_03e_58bf

    jr jr_03e_58ce

    jr jr_03e_58cd

    jr jr_03e_58d2

    inc c
    ld [hl+], a
    inc c
    inc hl
    inc c
    ld a, [hl+]
    inc c
    and d
    ld c, $a0
    inc b
    ld b, e
    inc c
    ld c, d
    inc c

jr_03e_58bf:
    and d
    dec d
    and b
    ld [bc], a
    ld [hl+], a
    inc c

jr_03e_58c5:
    ld a, [hl+]
    inc c

jr_03e_58c7:
    and d
    ld c, $a0
    inc b

jr_03e_58cb:
    ld b, d
    inc c

jr_03e_58cd:
    ld c, d

jr_03e_58ce:
    inc c
    and d
    dec d
    and b

jr_03e_58d2:
    ld [bc], a
    jr nz, jr_03e_58e1

    ld a, [hl+]
    inc c
    and d
    ld c, $a0
    inc b
    ld b, b
    inc c
    ld c, d
    inc c
    and b
    ld [bc], a

jr_03e_58e1:
    and d
    dec d
    dec d
    inc c
    dec h
    inc c
    jr nc, jr_03e_58f5

    dec h
    inc c
    or b
    nop
    rst $38
    inc b
    nop
    ld [$fe00], sp
    cp $fd

jr_03e_58f5:
    cp $50
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    or d
    inc b
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $041f
    ld de, $1001
    ld bc, $041f
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    inc b

jr_03e_5946:
    ld de, $1001
    ld bc, $041f
    or a
    jr nz, jr_03e_599f

    ld bc, $0199
    rra
    ld a, [bc]
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    rra
    inc c
    or e
    jr nc, @-$4e

    nop
    rst $38
    inc b
    ld bc, $000a
    cp $fe
    db $fd
    cp $1f
    and b
    pop bc
    jr nz, @-$5e

    ld [$0535], sp
    jr nc, jr_03e_5996

    dec [hl]
    dec b
    jr nc, jr_03e_599a

    dec [hl]

jr_03e_5996:
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld [hl-], a

jr_03e_599a:
    ld a, [bc]
    pop bc
    jr nc, jr_03e_59d0

    ld a, [bc]

jr_03e_599f:
    and b
    dec b
    ld [hl-], a
    inc d
    pop bc
    jr nz, jr_03e_5946

    ld [$0535], sp
    jr nc, jr_03e_59b0

    dec [hl]
    dec b
    jr nc, jr_03e_59b4

    dec [hl]

jr_03e_59b0:
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld [hl-], a

jr_03e_59b4:
    ld a, [bc]
    pop bc
    ld b, b
    ld a, [hl+]
    ld a, [bc]
    and b
    dec b
    ld a, [hl+]
    inc d
    or c
    dec b
    and b
    ld [$30c1], sp
    dec [hl]
    dec b
    inc [hl]
    dec b
    inc sp
    dec b
    ld [hl-], a
    dec b
    pop bc
    ld b, b
    ld sp, $280a

jr_03e_59d0:
    ld bc, $092b
    jr nc, jr_03e_59e9

    and b
    dec b
    jr nc, jr_03e_59ed

    or e
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    jr nz, jr_03e_59ff

    ld a, [bc]
    jr nz, jr_03e_59ed

    ld [hl+], a
    ld a, [bc]
    jr nz, jr_03e_59f1

    inc hl
    ld a, [bc]

jr_03e_59e9:
    jr nz, jr_03e_59f5

    inc h
    ld a, [bc]

jr_03e_59ed:
    jr nz, jr_03e_59f9

    rra
    ld a, [bc]

jr_03e_59f1:
    jr nz, jr_03e_59fd

    ld [hl+], a
    ld a, [bc]

jr_03e_59f5:
    jr nz, jr_03e_5a01

    inc hl
    ld a, [bc]

jr_03e_59f9:
    jr nz, jr_03e_5a05

    inc h
    ld a, [bc]

jr_03e_59fd:
    inc h
    ld a, [bc]

jr_03e_59ff:
    rra
    ld a, [bc]

jr_03e_5a01:
    jr nz, jr_03e_5a0d

    ld [hl+], a
    ld a, [bc]

jr_03e_5a05:
    jr nz, jr_03e_5a11

    inc hl
    ld a, [bc]
    jr nz, jr_03e_5a15

jr_03e_5a0b:
    inc h
    ld a, [bc]

jr_03e_5a0d:
    jr nz, jr_03e_5a19

    rra
    ld a, [bc]

jr_03e_5a11:
    jr nz, jr_03e_5a1d

    ld [hl+], a
    ld a, [bc]

jr_03e_5a15:
    jr nz, @+$0c

    inc h
    ld a, [bc]

jr_03e_5a19:
    dec h
    ld a, [bc]
    ld h, $0a

jr_03e_5a1d:
    daa
    ld a, [bc]
    or c
    ld l, $b0
    nop
    rst $38
    inc b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    ld a, [hl+]
    rra
    ld a, [bc]
    and b
    ld b, $15
    ld a, [bc]
    and b
    inc bc
    dec d
    dec b
    rra
    dec b
    and b
    ld b, $18
    ld a, [bc]
    and b
    inc bc
    jr jr_03e_5a47

    rra
    dec b
    and b
    ld b, $17

jr_03e_5a47:
    ld a, [bc]
    and b
    inc bc
    rla
    dec b
    rra
    dec b
    and b
    ld b, $1a

jr_03e_5a51:
    ld a, [bc]
    or c
    inc b
    and b
    inc c
    pop bc
    jr nz, jr_03e_5a8e

    ld a, [bc]
    jr c, jr_03e_5a66

    ld b, b
    ld a, [bc]
    pop bc
    ld d, b
    ld b, b
    ld a, [bc]
    and a
    ld a, [bc]
    and b
    dec b

jr_03e_5a66:
    ld b, b
    ld e, $c1
    jr nz, jr_03e_5a0b

    inc bc

jr_03e_5a6c:
    inc sp
    dec b
    and b
    inc c
    dec [hl]
    dec b
    ld [hl], $05
    scf
    dec b
    jr c, jr_03e_5a82

jr_03e_5a78:
    add hl, sp
    ld a, [bc]
    pop bc
    ld d, b
    ld a, [hl-]
    inc d
    and b
    dec b
    ld a, [hl-]
    inc d

jr_03e_5a82:
    and b
    inc c

jr_03e_5a84:
    pop bc
    jr nz, jr_03e_5abc

    ld a, [bc]
    jr c, jr_03e_5a94

    ld b, b
    ld a, [bc]
    pop bc
    ld d, b

jr_03e_5a8e:
    ld b, b
    ld a, [bc]
    and a
    ld a, [bc]
    and b
    dec b

jr_03e_5a94:
    ld b, b
    ld e, $a0
    inc c
    pop bc
    jr nz, jr_03e_5ad5

    dec b
    add hl, sp
    dec b
    jr c, jr_03e_5aa5

    scf
    dec b
    ld [hl], $0a
    dec [hl]

jr_03e_5aa5:
    ld a, [bc]
    pop bc
    ld d, b
    inc [hl]
    inc d
    and b
    dec b
    inc [hl]
    inc d
    or c
    jr jr_03e_5a51

    inc c
    pop bc
    ld d, b
    and e
    ld [$2834], sp
    and a
    ld a, [bc]
    jr nc, jr_03e_5ac6

jr_03e_5abc:
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_03e_5aca

    inc [hl]
    ld d, b
    inc [hl]
    jr z, jr_03e_5a6c

    ld a, [bc]

jr_03e_5ac6:
    jr nc, jr_03e_5ad2

    ld [hl-], a
    ld a, [bc]

jr_03e_5aca:
    jr nc, jr_03e_5ad6

    dec [hl]
    ld d, b
    inc [hl]
    jr z, jr_03e_5a78

    ld a, [bc]

jr_03e_5ad2:
    jr nc, jr_03e_5ade

    ld [hl-], a

jr_03e_5ad5:
    ld a, [bc]

jr_03e_5ad6:
    jr nc, jr_03e_5ae2

    inc [hl]
    ld d, b
    inc [hl]
    jr z, jr_03e_5a84

    ld a, [bc]

jr_03e_5ade:
    jr nc, jr_03e_5aea

    ld [hl-], a
    ld a, [bc]

jr_03e_5ae2:
    inc [hl]
    ld a, [bc]
    dec [hl]
    ld d, b
    or b
    nop
    rst $38
    inc b

jr_03e_5aea:
    dec d
    ld [bc], a
    inc bc
    cp $fe
    db $fd
    cp $15
    ld a, [bc]
    dec h
    ld a, [bc]
    jr jr_03e_5b01

    jr z, jr_03e_5b03

    rla
    ld a, [bc]
    daa
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_03e_5b01:
    cp c
    inc b

jr_03e_5b03:
    jr nz, jr_03e_5b0f

    jr nc, jr_03e_5b11

    dec de
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_03e_5b0f:
    add hl, de
    ld a, [bc]

jr_03e_5b11:
    add hl, hl
    ld a, [bc]
    or a
    dec c
    or b
    nop
    rst $38
    inc b
    nop
    dec bc
    nop
    cp $fe
    db $fd
    cp $a0
    add hl, bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    dec b
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    ld [$0260], sp
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    inc bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    cp b
    inc b
    and b
    add hl, bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    dec b
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    ld [$0260], sp
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    inc bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    cp b
    dec d
    or b
    nop
    rst $38
    dec b
    ld bc, $0009
    cp $fe
    db $fd
    cp $c1
    dec h
    add hl, de
    inc b
    rla
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc c
    rra
    db $10
    inc h
    db $10
    jr nz, jr_03e_5b87

    jr nz, jr_03e_5b91

    rra
    db $10
    jr nz, jr_03e_5b95

    rla
    db $10

jr_03e_5b87:
    add hl, de
    inc b
    rla
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc c
    rra
    db $10

jr_03e_5b91:
    inc h
    db $10
    jr nz, @+$0a

jr_03e_5b95:
    jr nz, @+$12

    rra
    db $10
    jr nz, jr_03e_5bab

    ld hl, $c110
    ld [hl], b
    jr nz, jr_03e_5bb1

    and b
    inc bc
    jr nz, jr_03e_5bb5

    and a
    ld [$25c1], sp
    daa
    db $10

jr_03e_5bab:
    jr nz, jr_03e_5bb5

    jr nz, jr_03e_5bbf

    rra
    db $10

jr_03e_5bb1:
    rla
    ld [$1827], sp

jr_03e_5bb5:
    and b
    add hl, bc
    add hl, de
    ld [$0815], sp
    add hl, de
    ld [$0820], sp

jr_03e_5bbf:
    add hl, de
    ld [$0824], sp
    dec h
    ld [$0820], sp
    jr nz, jr_03e_5bd9

    daa
    ld [$0824], sp
    jr nz, @+$12

    rra
    db $10
    add hl, de
    ld [$0815], sp
    add hl, de

jr_03e_5bd6:
    ld [$0820], sp

jr_03e_5bd9:
    add hl, de
    ld [$0824], sp
    ld a, [hl+]
    ld [$0820], sp
    jr nz, jr_03e_5beb

    daa
    ld [$0824], sp
    jr nz, jr_03e_5bf1

    jr nz, @+$12

jr_03e_5beb:
    rra
    db $10
    add hl, de
    ld [$0815], sp

jr_03e_5bf1:
    add hl, de
    ld [$0820], sp
    add hl, de
    ld [$0824], sp
    dec h
    ld [$0820], sp
    jr nz, jr_03e_5c0f

    daa
    ld [$0824], sp

jr_03e_5c03:
    jr nz, @+$12

    daa
    ld [$0820], sp
    inc h
    ld [$0827], sp
    jr nz, jr_03e_5c17

jr_03e_5c0f:
    inc h
    ld [$0814], sp
    inc h
    ld [$0424], sp

jr_03e_5c17:
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    ld a, [hl+]
    db $10
    ld [hl-], a
    db $10
    ld a, [hl+]
    db $10

Call_03e_5c23:
    jr nc, jr_03e_5c35

    or b
    nop
    rst $38
    dec b
    ld bc, $000a
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_03e_5bd6

    dec h
    dec h

jr_03e_5c35:
    db $10
    jr nz, @+$0a

    ld [hl+], a
    ld [$0824], sp
    daa

jr_03e_5c3d:
    db $10
    ld [hl+], a
    ld [$1025], sp
    jr nz, @+$12

    dec h
    db $10
    jr nz, jr_03e_5c58

    dec h
    db $10
    jr nz, @+$0a

    ld [hl+], a
    ld [$0824], sp
    daa
    db $10
    ld [hl+], a
    ld [$1025], sp
    jr nz, @+$12

jr_03e_5c58:
    dec h
    db $10
    jr nz, jr_03e_5c64

    dec h
    ld [$70c1], sp
    inc h
    jr nz, jr_03e_5c03

    inc bc

jr_03e_5c64:
    inc h
    jr nz, @-$57

    jr nz, @-$3d

    jr nz, @-$5e

    ld a, [bc]
    jr nz, jr_03e_5c76

    jr nc, jr_03e_5c74

    and b
    dec b
    jr nc, jr_03e_5c7c

jr_03e_5c74:
    rra
    inc c

jr_03e_5c76:
    and b
    ld a, [bc]
    jr nc, @+$0a

    and b
    dec b

jr_03e_5c7c:
    jr nc, @+$12

    and b
    ld a, [bc]
    dec h
    ld [$05a0], sp
    dec h
    ld [$0aa0], sp
    daa
    ld [$0829], sp
    ld [hl-], a
    ld [$0830], sp
    and b
    dec b
    jr nc, @+$0a

    and b
    ld a, [bc]
    dec hl
    ld [$0830], sp
    and a
    jr nz, jr_03e_5c3d

    ld a, [bc]
    jr nc, @+$0a

    and b
    dec b
    jr nc, jr_03e_5cb4

    and b
    ld a, [bc]
    dec h
    ld [$0835], sp
    inc [hl]
    ld [$0832], sp
    ld sp, $3008
    ld [$082b], sp

jr_03e_5cb4:
    jr nc, jr_03e_5cbe

    daa
    ld [$20a7], sp
    and b
    ld a, [bc]
    jr nc, jr_03e_5cc6

jr_03e_5cbe:
    and b
    dec b
    jr nc, jr_03e_5cd2

    and b
    ld a, [bc]
    dec h
    db $10

jr_03e_5cc6:
    daa
    ld [$0829], sp
    ld [hl-], a
    ld [$1030], sp
    dec hl
    ld [$0830], sp

jr_03e_5cd2:
    and a
    db $10
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$0ba0], sp
    jr nc, jr_03e_5cf6

    daa
    db $10
    add hl, hl
    ld [$082a], sp
    jr nc, jr_03e_5cee

    ld [hl-], a
    db $10
    pop bc
    ld b, b
    dec [hl]
    db $10
    and b
    dec b

jr_03e_5cee:
    dec [hl]
    db $10
    and b
    ld a, [bc]
    inc [hl]
    db $10
    or b
    nop

jr_03e_5cf6:
    rst $38
    dec b
    ld a, [bc]
    inc b
    ld [bc], a
    cp $fe
    db $fd
    cp $a3
    jr z, @+$27

    ld [$1820], sp
    dec h
    ld [$1030], sp
    dec h
    ld [$0823], sp
    ld a, [hl+]
    ld [$0821], sp
    ld a, [hl+]
    ld [$0823], sp
    ld a, [hl+]
    ld [$0821], sp
    ld a, [hl+]
    ld [$05b2], sp
    dec h
    ld [$1820], sp
    dec h
    ld [$1830], sp
    inc h
    ld [$0827], sp
    jr nz, jr_03e_5d33

    daa
    ld [$0824], sp
    daa
    ld [$0820], sp

jr_03e_5d33:
    daa
    ld [$13b2], sp
    ld a, [hl+]
    ld [$1820], sp
    jr nz, jr_03e_5d45

    jr nc, jr_03e_5d57

    jr nz, jr_03e_5d49

    ld a, [hl+]
    ld [$0822], sp

jr_03e_5d45:
    ld a, [hl+]
    ld [$0824], sp

jr_03e_5d49:
    daa
    ld [$0820], sp
    ld a, [hl+]
    ld [$00b0], sp
    rst $38
    dec b
    nop
    ld [$fe00], sp

jr_03e_5d57:
    cp $fd
    cp $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $b4
    inc b
    ld d, b
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $c8
    inc bc
    ld b, d
    ld [$0150], sp
    sbc c
    ld bc, $061f
    ld de, $1001
    ld bc, $061f
    ld de, $1001
    ld bc, $061f
    ld d, b
    ld bc, $0199
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $b2
    inc [hl]
    ld d, b
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $c8
    inc bc
    ld b, d
    ld [$00b0], sp
    rst $38
    nop
    ld bc, $170f
    daa
    ld bc, $0125
    and c
    cpl
    add hl, sp
    ld [bc], a
    and b
    inc bc
    and c
    rla
    add hl, hl
    ld [bc], a
    rst $38
    nop
    nop
    rrca
    nop
    and b
    dec b
    ld b, h
    ld bc, $07a0
    xor [hl]
    db $10
    and b
    ld a, [bc]
    ld b, h
    ld [bc], a
    xor [hl]
    nop
    ld b, l
    ld bc, $10ae
    ld b, l
    ld [bc], a
    and e
    ld [hl], e
    ld b, [hl]
    ld a, [bc]
    xor [hl]
    nop
    and b
    inc b
    ld b, [hl]
    dec b
    xor [hl]
    db $10
    ld b, l
    ld bc, $02a0
    ld b, l
    ld [bc], a
    rst $38
    nop
    nop
    ld b, $00
    ld d, d
    inc b
    ld d, b
    ld [bc], a
    rra
    ld [bc], a
    and b
    rrca
    ld h, b
    inc bc
    ld b, b
    ld bc, $00ff
    nop
    rrca
    nop
    jr nc, jr_03e_5ed3

    rra

jr_03e_5ed3:
    ld bc, $0132
    jr nz, jr_03e_5ed9

    and b

jr_03e_5ed9:
    dec b
    jr nz, jr_03e_5edd

    and b

jr_03e_5edd:
    rrca
    rra
    ld bc, $0102
    dec [hl]
    ld bc, $011f
    ld [bc], a
    ld bc, $0135
    rra
    ld bc, HeaderTitle
    rra
    ld bc, $0120
    rra
    ld bc, $0110
    and b
    inc b
    db $10
    inc bc
    rst $38
    nop
    ld [bc], a
    rrca
    ld d, $32
    ld bc, $0435
    and b
    dec bc
    ld [hl-], a
    ld [bc], a
    scf
    inc b
    and b
    rrca
    ld [hl-], a
    ld [bc], a
    dec [hl]
    inc b
    and b
    dec bc
    ld [hl-], a
    ld [bc], a
    ld [hl], $04
    and b
    ld [$0232], sp
    ld [hl], $04
    and b
    inc bc
    ld [hl-], a
    ld [bc], a
    dec [hl]
    inc b
    rst $38
    nop
    nop
    rrca
    rra
    ld h, $02
    and c
    rla
    jr z, jr_03e_5f33

    rra
    ld bc, $05a0
    ld [hl], $02
    rst $38

jr_03e_5f33:
    nop
    nop
    ld c, $00
    inc de
    ld [bc], a
    rra
    ld [bc], a
    ld [de], a
    ld [bc], a
    and b
    inc b
    rra
    ld [bc], a
    ld de, $ff03
    nop
    ld [bc], a
    rrca
    ld d, $10
    ld b, $a1
    rla
    and b
    rrca
    daa
    inc b
    and b
    inc bc
    dec h
    inc b
    rst $38
    nop
    ld [bc], a
    rrca
    ld d, $27
    ld b, $a0
    ld [bc], a
    rra
    ld bc, $0232
    ld [hl-], a
    inc bc
    rst $38
    nop
    db $10
    rrca
    nop
    ld b, d
    ld bc, $0290
    sbc c
    ld [bc], a
    ld h, d
    inc b
    and b
    dec b
    ld h, d
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    rra
    inc bc
    jr jr_03e_5f7e

    xor [hl]

jr_03e_5f7e:
    db $10
    dec de
    ld [bc], a
    xor [hl]
    nop
    and b
    rlca
    dec de
    inc bc
    rst $38
    nop
    nop
    rrca
    nop
    ld [hl-], a
    ld [bc], a
    rra
    inc bc
    ld b, l
    ld [bc], a
    rra
    db $10
    rst $38
    nop
    nop
    rrca
    nop
    pop bc
    dec d
    db $10
    ld bc, $0112
    inc d
    ld [bc], a
    rla
    ld [bc], a
    dec b
    inc bc
    rst $38
    nop
    nop
    rrca
    nop
    pop bc
    dec d
    db $10
    ld bc, $0112
    inc d
    ld [bc], a
    rla
    ld [bc], a
    dec b
    dec b
    and b
    ld [$0514], sp
    ld [de], a
    ld b, $10
    dec b
    and b
    inc bc
    db $10
    ld b, $ff
    rra
    ld [bc], a
    and b
    ld [bc], a
    nop
    nop
    rrca
    nop
    ld sp, $a002
    inc c
    ld [hl], $02
    ld sp, $1f02
    ld bc, $0fa0
    ld sp, $a002
    ld a, [bc]
    ld [hl], $02
    ld sp, $1f02
    ld [bc], a
    and b
    rrca
    ld sp, $a002

jr_03e_5fe6:
    ld a, [bc]
    ld [hl], $02
    ld sp, $1f02
    ld [bc], a
    and b
    rrca
    dec hl
    ld bc, $0131
    and b
    ld b, $36
    ld b, $31
    ld [bc], a
    and b
    inc bc
    ld [hl], $05
    ld sp, $ff03
    nop
    nop
    dec c
    nop
    ld [de], a
    ld bc, $0414
    and b
    inc bc

Jump_03e_600a:
    inc d
    ld [$00ff], sp
    ld [bc], a
    rrca
    dec d
    ld [hl+], a
    inc bc
    and b
    inc b
    ld [hl+], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    pop bc
    dec d
    ld b, d
    inc bc
    ld b, b
    ld [bc], a
    ld b, d
    inc bc
    ld b, b
    inc bc
    ld c, c
    ld b, $a0
    dec b
    ld c, c
    ld b, $ff
    nop
    nop
    rlca
    nop
    db $fd
    cp $11
    jr nc, jr_03e_5fe6

    nop
    rst $38
    nop
    nop
    ld [$fd00], sp
    cp $c4
    ld [hl], b
    ld d, b
    sub l
    call nz, $5050
    add b
    call nz, Call_03e_5060
    ld h, b
    or b
    nop
    rst $38
    nop
    ld bc, $000f
    ld [hl-], a
    inc bc
    ld [hl], $03
    add hl, sp
    ld [bc], a
    ld b, [hl]
    rlca
    and b
    inc b
    ld b, [hl]
    ld a, [bc]
    rst $38
    nop
    ld bc, $000c
    add hl, hl
    inc bc
    ld [hl-], a
    inc bc
    ld [hl], $02
    ld [hl-], a
    rlca
    and b
    inc b
    ld [hl-], a
    ld a, [bc]
    rst $38
    nop
    ld bc, $000f
    daa
    inc b
    dec hl
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    scf
    inc b
    dec sp
    inc b
    ld b, d
    inc b
    ld b, l
    inc b
    ld b, a
    inc b
    and b
    dec b
    ld b, a
    rlca
    rst $38
    nop
    ld bc, $000c
    ld [hl+], a
    inc b
    daa
    inc b
    dec hl
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    scf
    inc b
    dec sp
    inc b
    ld b, d
    inc b
    ld b, l
    inc b
    and b
    dec b
    ld b, l
    rlca
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    ld d, b
    ld [bc], a
    rra
    ld bc, $02bf
    rst $38
    nop
    ld bc, $000a
    ld e, e
    ld [bc], a
    rra
    ld bc, $02bf
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    add hl, sp
    ld [bc], a
    ld b, d
    inc bc
    and b
    dec b
    ld b, d
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_03e_60d9:
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rrca
    nop
    inc d
    inc b
    rra
    ld [bc], a
    inc d
    dec b
    rra
    ld [bc], a
    and b
    ld b, $14
    dec b
    rst $38
    nop
    nop
    dec bc
    nop
    dec sp
    inc b
    rra
    ld [bc], a
    dec sp
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    daa
    ld bc, $10ae
    dec hl
    dec b
    and b
    dec b
    dec hl
    ld [$06ff], sp
    ld bc, $0009
    db $fd
    cp $a3
    dec h
    pop bc
    jr nc, @-$5c

    ld bc, $08a0
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $c1
    jr nc, jr_03e_60d9

    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    dec h
    ld b, $a2
    nop
    daa
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $b1
    dec b
    and d
    ld bc, $0625
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $2a
    inc c
    and b
    ld a, [bc]
    jr nc, jr_03e_6188

    and b
    inc b
    jr nc, @+$0e

    and b
    ld a, [bc]

jr_03e_6188:
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    inc c
    and b
    ld a, [bc]
    jr nc, @+$08

    and b
    add hl, bc
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7

jr_03e_61b7:
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $a0
    ld [$30c1], sp
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $2a
    inc c
    and b
    ld a, [bc]
    jr nc, jr_03e_61dc

    and b
    inc b
    jr nc, @+$0e

    and b
    ld a, [bc]

jr_03e_61dc:
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    inc c
    and b
    ld a, [bc]
    jr nc, @+$08

    and b
    add hl, bc
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    pop bc
    ld h, b
    and b
    ld [$0625], sp
    and a
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $c1
    jr nc, jr_03e_61b7

    ld [$0c2a], sp
    inc hl
    ld b, $27
    inc c
    inc hl
    ld b, $27
    inc c
    ld a, [hl+]
    ld b, $a0
    inc b
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0c30], sp
    dec h
    ld b, $28
    inc c

jr_03e_6230:
    dec h
    ld b, $28
    inc c
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_03e_624c

    and b
    ld [$0c33], sp
    ld [hl-], a
    ld b, $33
    inc c
    ld [hl-], a
    ld b, $33
    inc c
    ld [hl-], a
    ld b, $33
    inc c
    pop bc
    ld h, b

jr_03e_624c:
    dec [hl]
    ld [de], a
    and b
    inc bc
    dec [hl]
    inc h
    pop bc
    jr nc, @-$5e

    ld [$0645], sp
    dec [hl]
    inc c
    ld b, l
    ld b, $a2

jr_03e_625d:
    ld [bc], a
    and b
    ld [$30c1], sp
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $b1
    xor b
    or b
    nop
    rst $38
    ld b, $01
    ld a, [bc]
    nop
    db $fd
    cp $a2
    ld bc, $06a3
    pop bc
    jr nc, jr_03e_6230

    ld a, [bc]
    ld b, b
    ld [de], a

jr_03e_6293:
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    ld b, b
    ld b, $a7
    inc c
    dec [hl]
    ld [de], a
    jr c, jr_03e_62b5

    scf
    ld b, $35
    inc c
    ld [hl-], a
    ld b, $40
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    pop bc
    ld h, b

jr_03e_62b5:
    and h
    cp $40
    jr jr_03e_625d

    ld b, $a0
    dec b
    ld b, b
    ld [hl], $b1
    dec b
    and d
    ld bc, $30c1
    and b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    ld b, b
    ld b, $a7
    inc c
    dec [hl]
    ld [de], a
    jr c, jr_03e_62eb

    scf
    ld b, $35
    inc c
    ld [hl-], a
    ld b, $40
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    pop bc
    ld h, b

jr_03e_62eb:
    and h
    cp $40
    jr jr_03e_6293

    ld b, $a0
    dec b
    ld b, b
    ld [hl], $b1
    jr nz, @-$3d

    ld d, b
    and b
    ld a, [bc]
    jr c, jr_03e_62ff

    add hl, sp
    ld [bc], a

jr_03e_62ff:
    ld a, [hl-]
    ld c, $a0
    dec b
    ld a, [hl-]
    ld [de], a
    and b
    ld a, [bc]

jr_03e_6307:
    add hl, sp
    inc bc
    jr c, jr_03e_630d

    scf
    dec c

jr_03e_630d:
    and b
    dec b
    scf
    ld [de], a
    and b
    add hl, bc
    add hl, sp
    ld [bc], a
    dec sp
    inc bc
    ld b, b
    dec c
    and b
    dec b
    ld b, b
    ld [de], a
    and b
    ld a, [bc]
    dec sp
    inc bc
    ld b, b
    ld hl, $0aa0
    ld b, e
    ld [de], a
    and b
    dec b
    ld b, e
    ld [de], a
    and b
    ld a, [bc]
    ld b, b
    ld [de], a
    and b
    dec b
    ld b, b
    ld [de], a
    and b
    ld a, [bc]
    ld b, l
    ld [de], a
    and b
    ld b, $45
    ld [hl], $a0
    ld a, [bc]
    and d
    ld [bc], a
    pop bc
    jr nc, jr_03e_6375

    inc c
    jr nc, jr_03e_6357

    dec [hl]
    ld b, $30
    ld [de], a
    scf
    inc c
    dec [hl]
    ld [de], a
    inc sp
    ld b, $32
    ld [de], a
    jr nc, jr_03e_635f

    ld [hl-], a
    jr jr_03e_6307

    ld e, a

jr_03e_6357:
    or b
    nop
    rst $38
    ld b, $15
    ld [bc], a
    inc bc
    db $fd

jr_03e_635f:
    cp $25
    inc c
    jr nc, jr_03e_636a

    dec h
    inc c
    jr nc, jr_03e_636e

    dec h
    inc c

jr_03e_636a:
    jr nc, jr_03e_6372

    dec h
    inc c

jr_03e_636e:
    jr nc, @+$08

    cp a
    inc bc

jr_03e_6372:
    inc hl
    inc c
    ld a, [hl+]

jr_03e_6375:
    ld b, $30
    inc c
    inc sp
    ld b, $23
    inc c
    ld a, [hl+]
    ld b, $30
    inc c
    inc sp
    ld b, $25
    inc c
    jr nc, jr_03e_638c

    ld [hl-], a
    inc c
    dec [hl]
    ld b, $25
    inc c

jr_03e_638c:
    jr nc, jr_03e_6394

    ld [hl-], a
    inc c
    dec [hl]
    ld b, $28
    inc c

jr_03e_6394:
    inc sp
    ld b, $35
    inc c
    inc sp
    ld b, $38
    inc c
    inc sp
    ld b, $35
    inc c
    inc sp
    ld b, $2a
    inc c
    dec [hl]
    ld b, $37
    inc c
    dec [hl]
    ld b, $3a
    inc c
    dec [hl]
    ld b, $37
    inc c
    dec [hl]
    ld b, $25
    inc c
    jr nc, @+$08

    cp a
    inc l
    or b
    nop
    rst $38
    ld b, $00
    ld [$fd00], sp
    cp $a0
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    dec b
    dec d
    ld bc, $0112
    rra
    db $10
    cp b
    inc bc
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    or e
    ld b, b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    dec b
    dec d
    ld bc, $0112
    rra
    db $10
    or c
    ld d, c
    or b
    nop
    rst $38
    nop
    nop
    rrca
    nop
    add b
    ld b, $89
    ld [bc], a
    rra
    ld bc, $0388
    sub b
    ld bc, $00ff
    nop
    ld [$6800], sp
    ld [bc], a
    and b
    rrca
    rra
    ld bc, $0642
    and b
    ld b, $42
    ld [$00ff], sp
    ld [$82ff], sp
    rst $38
    ret nz

    rst $38
    cp $ff
    ld c, e
    rst $08
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
    sbc c
    daa
    or b
    ld c, a
    ld h, b
    sbc a
    ld d, b
    cp a
    rst $38
    jr @+$01

    nop
    rst $38
    add b
    ld a, a
    ld a, [hl]
    add c
    rst $38
    ret nz

    and b
    ld b, b
    and b
    ld b, e
    cp h
    ld a, h
    add e
    db $fd
    nop
    nop

jr_03e_652c:
    ld bc, $fe75
    ld [bc], a
    db $fd
    jr c, @+$49

    rst $38
    cp a
    ret c

    ldh [$ff1f], a
    rrca
    ld hl, sp+$38
    rst $00
    rst $38
    ret nz

jr_03e_653e:
    ld a, $39
    db $fd
    ld d, b
    db $db
    jr jr_03e_652c

    rst $38
    pop hl
    rra
    rst $38
    nop
    nop
    rst $38
    inc b
    add a
    rst $38
    ld b, d
    ld a, a
    ld bc, $3efe
    pop bc
    jr jr_03e_653e

    ei
    cp $f9
    ld bc, $0101
    pop hl
    db $10
    rra
    nop
    rst $38
    ld a, a
    rlca
    ld a, c
    ld bc, $06fe
    ld sp, hl
    rst $38
    rst $38

jr_03e_656b:
    rlca
    db $e3
    rra
    sbc h
    db $e3
    ld h, e
    call c, $ff30
    rst $28
    ld [hl], $ef
    xor b
    halt
    ld [$fff7], sp
    ei
    ldh a, [$fffe]
    ldh [rTIMA], a
    nop
    rst $38
    cp h
    ld a, h
    ld b, b
    rst $38
    cp a
    ld a, $1f
    jr nz, jr_03e_656b

    ldh [$ff1f], a
    nop
    rst $38
    rst $38
    daa
    rst $38
    ld b, b
    rst $18

jr_03e_6595:
    ld hl, $7f3e
    rst $38
    add c
    ld b, e
    db $fc
    ld e, d
    rst $18
    inc l
    rst $28
    ld h, $ff
    rst $20
    ldh [rIE], a
    rrca
    ldh a, [rIE]
    rrca
    rrca
    rst $38
    rst $38
    jr jr_03e_6595

    ldh [$ff1f], a
    inc bc
    db $fc
    ld e, $ff
    pop hl
    ldh a, [rIF]
    jr c, @-$37

    dec l
    db $d3
    dec hl
    rst $38
    rst $18
    inc [hl]
    set 1, h
    inc sp
    ld d, h
    ei
    call nc, $fbff
    sbc a
    di
    adc a
    rst $30
    rst $18
    rst $20
    rrca
    ld a, a
    ld [hl], a
    ldh a, [c]
    xor $f8
    rst $30
    rst $30
    ld hl, sp-$50
    ld [bc], a
    ld a, [hl]
    inc h
    nop
    ld b, h
    ld a, e
    jr @-$17

    ldh a, [$ff1f]
    rlca
    ld bc, $f1cf
    cp $f0
    rst $38
    ld hl, $0500
    ld [bc], a
    db $fc
    inc bc
    ld a, a
    db $f4
    ei
    ld hl, sp-$09
    ld sp, hl
    rst $30
    add hl, bc
    jr nz, jr_03e_65f8

jr_03e_65f8:
    rst $38
    inc c

jr_03e_65fa:
    ei
    inc c
    ei
    jr nc, jr_03e_65fa

    ret nz

    rst $10
    rst $38
    add b
    sub a
    ret nz

    rst $10
    nop
    rla
    add b
    sub a
    rst $38
    add h
    sub a
    adc b
    ei
    ld [hl], d
    adc a
    adc $3f
    rst $38
    jp nz, $c03f

    ld b, e
    add d
    ld a, l
    add d
    ld a, l
    rst $38
    ldh a, [c]
    dec e
    ld h, d
    adc l
    dec b
    ld a, e
    ld b, l
    ld a, e
    rst $38
    add h
    cp h

jr_03e_6628:
    nop
    cp a
    nop
    cp a
    rlca
    cp c
    rst $38
    inc h
    cp d
    ld b, h
    jp c, $ef31

    scf
    rst $28
    rst $38
    ld [hl-], a
    jp nc, $bd4d

    ld h, h
    call c, $ec34
    rst $38
    ld [hl-], a
    rst $28
    dec [hl]
    db $ed
    ccf
    ret nz

    jr nc, jr_03e_6628

    rst $18
    sub b
    rst $28
    db $10
    rst $28
    sbc a
    jr nz, jr_03e_6651

jr_03e_6651:
    cpl
    rst $18
    rst $28
    cpl
    rst $18
    ldh a, [$ff7f]
    dec bc
    rlca
    or $ee
    db $fd
    rst $30
    di
    di
    db $fc
    rlca
    ld a, [bc]
    ld l, b
    ld [hl], a
    or b
    rst $08
    ld e, e
    ldh a, [rWave_f]
    rlca
    dec bc
    or b
    ld a, a
    inc hl
    nop
    rst $08
    jr nz, jr_03e_6673

jr_03e_6673:
    rst $08
    ldh a, [$ff7f]
    rst $38
    nop
    db $e3
    ld a, [bc]
    inc bc
    dec c
    ldh a, [rIE]
    rst $08
    rst $38
    nop
    ldh a, [c]
    db $fd
    inc hl
    inc c
    dec b
    ld bc, $cb42

jr_03e_6689:
    rst $38
    jr c, jr_03e_6689

    call nz, $f83e
    rst $00
    rrca
    ld hl, sp-$02
    inc bc
    ld [bc], a
    ld b, e
    db $dd
    ld b, $f9
    dec b
    ei
    rst $38
    di
    add a
    nop
    ret nz

    ld [bc], a
    ld bc, $8403
    reti


    nop
    rst $18
    rst $28
    add b
    rst $18
    cp a
    ldh [rTIMA], a
    ld bc, $ef30
    ld l, [hl]
    ld a, a
    rst $18
    jp Jump_000_1c3c


    db $e3
    rst $28
    rra
    inc bc
    dec b
    or e
    ld [hl], b
    cp a
    inc hl
    ld a, [bc]
    dec b
    ld b, $f3
    cp $23
    nop
    dec c
    ld a, [$0020]
    pop af
    ld [hl], d
    add hl, de
    sbc a
    ld h, c
    and c
    ld b, b
    sbc $af
    nop
    or e
    nop
    xor a
    jr nz, jr_03e_66d9

jr_03e_66d9:
    or e
    ld [hl], b
    rra
    rrca
    ld a, a
    rst $38
    cp $e1
    ldh a, [c]
    ld h, c
    ld d, e
    ld hl, $0022
    db $fd
    jr nz, @+$03

    ld bc, $00ff
    or b
    nop
    cp c
    nop
    cp a
    xor c
    db $10
    xor c
    db $10
    add hl, hl
    sub b
    ld [bc], a
    ld bc, $ff40
    pop hl
    nop
    adc $00
    ld c, a
    add h
    ld c, a
    add a
    ei
    ld c, a
    add h
    inc bc
    ld [bc], a
    add c
    nop
    rst $20
    nop
    and a
    rst $18
    ld b, d
    daa
    jp nz, Jump_03e_42a7

    inc bc
    inc bc
    add [hl]
    nop
    rst $08
    ld a, [hl-]
    nop
    ld a, [hl+]
    db $10
    ld hl, $0100
    dec b
    ld sp, hl
    ld b, $ff
    dec c
    ld [bc], a
    ld [hl], a
    ld [bc], a
    ld d, a
    inc hl
    ld [hl], a
    inc bc
    ei
    rrca
    rlca
    ld bc, $f006
    rrca
    db $10
    rrca
    cp a
    rst $08
    nop
    or c
    nop
    or l
    jr nz, jr_03e_673d

jr_03e_673d:
    ld [bc], a
    ld bc, $b01f
    rst $38
    rra
    cp a
    ld [$0018], sp
    cp d
    nop
    xor b
    db $fc
    ld [bc], a
    inc bc
    ld hl, $ff1c
    nop
    xor b
    nop
    sbc d
    nop
    db $fd
    xor d
    ld [bc], a
    inc b
    di
    db $fc
    ldh a, [c]
    db $fc
    cp [hl]
    ld b, b
    cp a
    call nz, $de00
    nop
    sbc $0c
    ld [bc], a
    inc b
    ld a, a
    rst $38
    ld hl, sp+$47
    rst $28
    nop
    ld a, l
    nop
    db $ed
    nop
    di
    xor l
    ld b, b
    inc bc
    inc bc
    and b
    inc c
    ld b, $47
    ld [bc], a
    ld d, a
    rst $30
    ld [bc], a
    ld b, a
    ld [bc], a
    ld bc, $f80c
    rlca
    adc h
    inc bc
    ld a, a
    ld [hl], a
    nop
    ld a, h
    nop
    adc l
    nop
    push af
    ld [bc], a
    dec c
    rst $38
    db $fd
    jp nz, $c2e5

    rst $28
    nop
    ld l, [hl]
    nop
    rst $30
    ld b, a
    nop
    ld l, a
    ld [bc], a
    ld [bc], a
    ldh a, [rWave_f]
    ld [hl], b
    ccf
    sbc a
    ld a, a
    nop
    ld a, [hl+]
    nop
    ld l, d
    jr nz, jr_03e_67ac

jr_03e_67ac:
    dec b
    rlca
    ld a, a
    cp a
    add b
    adc l
    nop
    xor h
    nop
    xor l
    ld [bc], a
    db $10
    pop af
    cp $a1
    ld de, $4706
    inc bc
    rst $10
    inc bc
    ld b, a
    add e
    adc [hl]
    ld b, $0b

jr_03e_67c6:
    rrca
    cp a
    ld bc, $0b21
    nop
    ld [de], a
    inc b
    inc d
    db $ed
    rst $38
    ld e, $1d
    ld c, $7d
    ld [bc], a
    sbc $00
    and c
    rst $20
    ld b, b
    cp [hl]
    ld h, c
    inc bc
    dec e
    ld b, c
    dec e
    ld hl, sp+$61
    db $fc
    db $fd
    ldh a, [$ff09]
    ld a, [hl+]
    ld a, c
    nop
    ldh a, [rNR41]
    rst $38
    ld h, b
    cp $01
    dec hl
    ccf
    adc $5e
    adc h
    xor h
    jr jr_03e_67c6

    rst $18
    nop
    pop hl
    nop
    rst $38
    ld b, b
    ld bc, $cf2c
    jr nc, @+$01

jr_03e_6803:
    ld d, b
    jr nz, jr_03e_686c

    nop
    push hl
    ld b, d
    push hl
    ld b, d
    ei
    db $fc
    jp Jump_000_2d01


    rra
    pop hl
    and c
    ld b, b

jr_03e_6814:
    ld c, h
    ldh a, [c]
    add b
    inc de
    add [hl]
    or b
    scf
    ld [bc], a
    inc bc
    jp $8143


    sbc c
    ld a, a
    nop
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [hl+], a
    db $fd
    ld [hl+], a
    ld [bc], a
    inc b
    rst $38
    jp nz, $c227

    inc hl
    ret nz

    or l
    nop
    dec d
    cp $04
    ld [bc], a
    rst $18
    ld hl, $0061
    ld c, [hl]
    nop
    cp e
    sbc a
    nop
    sbc b
    nop
    rst $30
    sbc b
    ld bc, $6331
    jr jr_03e_6803

    ld e, a
    db $10
    cp c
    db $10
    rst $30

jr_03e_684e:
    jr @+$04

    ld bc, $6104
    jr jr_03e_6814

    sbc $00
    ld b, [hl]
    nop
    ld sp, hl
    ld b, [hl]
    ld [bc], a

jr_03e_685c:
    inc bc
    jr nz, jr_03e_685c

    ld d, h
    jr nz, jr_03e_6862

jr_03e_6862:
    db $ec
    ld b, b
    ld l, [hl]
    nop
    ei
    ld b, h
    cp $01
    inc [hl]
    cp a

jr_03e_686c:
    ld b, b
    xor b
    ld b, b
    jp hl


    nop
    ld e, l
    rst $18
    ld [bc], a
    push bc
    ld [bc], a
    db $fc
    ld b, e
    ld [bc], a
    inc b
    ld [$ff1c], sp
    ld [$08fe], sp
    ld [hl], l
    nop
    adc h
    nop
    ei
    db $fd
    inc b
    ld [bc], a
    ld a, [bc]
    ccf
    ld c, a
    ccf
    rst $08
    ccf
    ld l, c
    rst $18
    ld b, $69
    ld b, $f8

jr_03e_6894:
    ld b, a

jr_03e_6895:
    rlca
    scf
    ld l, d
    nop
    rst $28
    ld sp, $ff00
    jr nz, jr_03e_68a6

    jr c, jr_03e_684e

    nop
    sub l
    db $fc
    sub b
    ld b, e

jr_03e_68a6:
    rlca
    add hl, sp
    db $dd
    add d
    push bc
    add d
    ld sp, hl
    add $f8
    rlca
    ld a, [hl-]
    rlca
    dec bc

jr_03e_68b3:
    inc hl
    dec sp
    ld [hl], e
    nop
    inc de
    nop
    rst $38
    ld sp, hl
    ld [de], a
    inc bc
    jr z, jr_03e_6902

    jr z, jr_03e_68b3

    db $fc
    push af
    ld hl, sp-$06
    rst $18
    pop af
    rla
    db $e3
    rra
    rst $20
    ld bc, $7230
    inc a
    ld [hl], a
    ldh a, [c]
    ld a, h
    ldh a, [c]
    nop
    rra
    inc c
    ld hl, sp+$0f
    ld h, b
    inc [hl]
    rst $30
    rst $38
    nop
    ld h, [hl]
    jr nz, jr_03e_68e0

jr_03e_68e0:
    ld [hl], b
    jr nz, jr_03e_6961

    jr nz, jr_03e_6894

    jr nc, jr_03e_68e7

jr_03e_68e7:
    rst $08
    jr nc, jr_03e_68eb

    ld [hl-], a

jr_03e_68eb:
    ld c, h
    jr nz, jr_03e_68ee

jr_03e_68ee:
    ld h, b
    ld a, a
    nop
    ld a, h
    jr nz, jr_03e_6895

    ld b, b
    rra
    pop hl
    ld bc, $df33
    sbc c
    nop
    jp nz, $9901

    ld h, b
    nop
    ld b, e

jr_03e_6902:
    add c
    db $fd
    ccf
    ld h, b
    inc d
    rst $38
    nop
    pop hl
    ret nz

    db $e4
    ret nz

    or a
    and $c0
    push hl
    ret nz

    ld [de], a
    ccf
    jp nz, Jump_000_3501

    ld c, d
    rst $28
    inc b
    ld c, [hl]
    nop
    ld b, b
    add b
    ld [de], a
    ld c, [hl]
    inc b
    rst $38
    ld [hl], d
    ld h, b
    dec c
    rst $38
    ld [bc], a
    rla
    ld b, c
    rla
    and a
    ld b, d
    cp a
    ld h, b
    rrca
    sub a
    rst $38
    nop
    ld a, $c0
    ld a, [hl+]
    ld a, [$2ae0]
    db $10
    dec [hl]
    ld [bc], a
    or [hl]
    ld bc, $7438
    jr nz, jr_03e_6963

    nop
    nop
    inc c
    ld h, d
    jr @+$01

    rst $38
    nop
    ld c, c
    nop
    ld [$a900], sp
    nop
    jp hl


    rst $08
    nop
    xor b
    ld b, b
    cp a
    ld h, b
    dec de
    nop
    ld a, [hl-]
    inc e
    ld [hl-], a
    ld l, a
    inc e
    ldh a, [c]
    inc e
    or $c0

jr_03e_6961:
    ld [de], a
    rst $38

jr_03e_6963:
    ld [$3b01], sp
    rst $38
    ld h, b
    ldh [rSTAT], a
    pop bc
    add $c6
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    inc bc
    inc bc
    rra
    rra
    db $fd
    rst $38
    stop
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    rst $30
    ld [$b7ff], a
    ret nc

    nop
    ld b, l
    ld b, l
    adc d
    adc d
    rst $38
    push af
    push af
    cp a
    rst $38
    ld [bc], a
    add d
    ld b, c
    ld b, c
    rst $38
    xor d
    xor d
    ld d, a
    ld d, a
    rst $38
    rst $38
    cp d
    cp a
    rst $38
    push de
    rst $38
    xor [hl]
    rst $38
    cp a
    cp a
    ld a, [hl]
    ld a, a
    ld [hl], l
    db $fd
    ld b, b
    ld [bc], a
    push de
    ret nz

    ld [bc], a
    ld d, b
    rst $38
    add b
    ld b, b
    nop
    pop af
    and b
    ld b, d
    nop
    sub b
    dec l
    ld h, $00
    rlca
    rst $38
    ld e, $fe
    rst $38
    jr c, @-$06

    inc [hl]
    db $f4
    ld a, [de]
    ld a, [$fd1d]
    cp a
    nop
    rst $38
    ccf
    rst $38
    ret nz

    ret nz

    push hl
    ld e, h
    ld d, l
    rst $38
    ld d, l
    ccf
    rst $38
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    dec b
    ld a, l
    dec b
    pop bc
    ld e, l
    add b
    add b
    nop
    nop
    push af
    ldh [$ff5d], a
    rst $28
    cp a
    cp a
    inc bc
    inc bc
    db $e3
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    nop
    cp $00
    dec b
    call nc, $faff
    rst $38
    ld e, a
    ld e, a
    dec hl
    sbc a
    dec hl
    ld d, l
    ld d, l
    xor d
    xor d
    ld h, e
    dec b
    add c
    ld b, $e8
    rst $38
    rst $38
    or h
    cp a
    jp c, Jump_000_0fdf

    rst $38
    ld bc, $a83e
    ld b, $00
    rst $38
    ld [$ffea], a
    dec hl
    ld bc, $0560
    di
    push de
    push de
    sub b
    ld c, d
    inc b
    add hl, bc
    dec d
    dec d
    xor a
    xor a
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    inc b
    ld a, [bc]
    ld a, a
    ld a, a
    ld d, c
    cp $40
    ld c, $c1

jr_03e_6a3d:
    dec bc
    inc bc
    dec bc
    db $f4
    ld b, b
    rrca
    ld d, h
    add b
    inc c
    cp $49
    dec b
    inc c
    db $fc
    jr nc, jr_03e_6a3d

    ld h, b
    ldh [$ff60], a
    cp a
    ldh [rWave_0], a
    ldh a, [$ff03]
    rst $38
    inc bc
    and $0b
    ld a, [bc]
    db $eb
    ld a, [bc]
    ld d, d
    ld h, b
    db $10
    rst $38
    jr nz, jr_03e_6a67

    ld [bc], a
    ld [bc], a
    ld bc, $01bf

jr_03e_6a67:
    ld a, [hl+]
    ld a, [hl+]
    push de
    rst $38
    xor a
    ld d, b
    inc de
    add b
    sbc a

jr_03e_6a70:
    rst $38
    db $fc
    rst $38
    xor a
    xor a
    ld bc, $8112
    dec b
    xor b
    xor d
    add d
    ld h, e
    ld b, b
    ld [bc], a
    ld de, $42a0
    ld h, h
    cpl
    ld [$000a], a
    ld a, b
    ld b, b
    ld d, $0b
    ld bc, $1347
    jr nz, jr_03e_6a70

    ld b, b
    ret nz

    and b
    ld [de], a
    cp d
    add h
    inc d
    add b
    and b
    add hl, bc
    ld l, d
    ld a, a
    push af
    ld h, b
    ld l, [hl]
    rrca
    xor a
    rst $38
    ld [hl], b
    ldh a, [$ffe0]
    stop
    ld a, a
    ld b, b
    ld h, h
    ld bc, $fffb
    ld hl, sp+$20
    dec de
    ld bc, $0201
    ld [bc], a
    ld d, l
    rst $18
    ld d, l
    xor e
    xor e
    cp $ff
    or b
    ld l, h
    rst $38
    ldh [rIE], a
    rst $38
    ld a, h
    ld a, a
    xor [hl]
    xor a
    ld a, e
    ld a, a
    call nc, $e0c4
    rlca
    ld h, l
    jr jr_03e_6acf

    add b

jr_03e_6acf:
    dec bc
    ld h, c
    inc c

jr_03e_6ad2:
    ld bc, $0805
    ld hl, sp-$05
    ld h, b
    ldh [rNR44], a
    jr jr_03e_6ae1

    dec b
    xor d
    xor d
    rst $38
    ld a, h

jr_03e_6ae1:
    ld [bc], a
    inc b
    jp $5516


    ld d, l
    cp a
    cp a
    add b
    ldh [$ff67], a
    db $fc
    ret nc

    jr nz, jr_03e_6af0

jr_03e_6af0:
    rla
    cp a
    cp a
    ld hl, sp-$08
    ld d, b
    ldh a, [rNR43]
    ld h, e
    inc e
    ld a, [$20f0]
    add e
    ld b, $05
    jr jr_03e_6ad2

    and b
    ld hl, $1aa1
    ldh a, [c]
    ret


    rla
    and b
    ld h, b
    jr nz, @+$03

    ld b, $40
    ret nz

    add c
    add c
    rst $28
    adc d
    adc d
    ld a, h
    db $fc
    ret nc

    ld d, d
    rst $38
    ld b, e
    jp $815e


    ld b, $5f
    ld e, a
    dec l
    cpl
    ld b, c
    inc hl
    dec a
    ldh [$ff7b], a
    ld a, a
    ld hl, sp-$01
    ld e, [hl]
    ld e, a
    db $fd
    rst $38
    ld a, [hl]
    ld h, d
    rla
    ld a, a
    ld b, b
    rst $38
    ei
    inc b
    call nz, $d500
    jr nz, jr_03e_6b3c

jr_03e_6b3c:
    db $fd
    ld d, h
    inc b
    dec hl
    ldh a, [$ff7f]
    ld [hl], b
    ccf
    ldh a, [rIF]
    ccf
    ret z

    rlca
    ld c, a
    rlca
    cp a
    ld c, a
    ld bc, $ad65
    ld de, $0800
    cp $15
    nop
    rlca
    nop
    ld e, a
    rlca
    cp a
    ld e, a
    rst $38
    db $fd
    ld e, a
    inc de
    ld bc, $00f0
    ld l, [hl]
    ldh a, [$ffdf]
    cp [hl]
    rst $38
    rst $30
    adc $fe
    and b
    rst $38
    ld e, a
    xor [hl]
    ld e, a
    rst $18
    and b
    ld e, a
    ld d, c
    ld c, $0f
    and h
    ld [bc], a
    add sp, -$30
    rst $38
    ld a, b
    ldh [$ffe8], a
    jr nc, @+$4a

    or b
    db $10
    ldh [$fffd], a
    ldh [$ffc2], a
    inc bc
    ld a, $00
    ld a, a
    ld a, $ff
    ld a, a
    cp $20
    nop
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ei
    rst $38
    nop
    ldh [c], a
    nop
    ld a, a
    rst $38
    inc e
    cp [hl]
    inc e
    sbc l
    ld a, $40
    nop
    cp [hl]
    nop
    rst $38
    dec b
    ld [bc], a
    ld [hl+], a
    nop
    cp $87
    nop
    rst $38
    ld a, [hl]
    ld b, $01
    add c
    inc bc
    ld [$2103], sp
    nop
    add b
    reti


    nop
    dec h
    nop
    or e
    add hl, bc
    ld a, a
    rlca
    add e
    ld [bc], a
    ld a, a
    ld a, $01
    ld a, $c2
    ld a, [bc]
    ld h, e
    ld [bc], a
    pop bc
    dec b
    inc bc
    ld bc, $06e4
    pop hl
    dec b
    inc bc
    ld bc, $7e81
    and l
    ld b, $03
    ld bc, $0842
    jp Jump_000_0d05


    dec bc
    ld hl, $700b
    inc a
    ld a, [bc]
    ld bc, $0a40
    rst $28
    nop
    rst $38
    ld h, a
    and h
    add hl, bc
    add e
    inc c
    ld b, h
    inc c
    ld a, [bc]
    nop
    inc c
    halt
    ld h, $06
    ld h, d
    rlca
    and d
    dec c
    rst $30
    ld h, $00
    inc a
    inc bc
    ld bc, $0226
    ld hl, sp+$00
    ld hl, sp-$10
    ld [hl+], a
    nop
    ld b, b
    dec d
    rrca
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    add l
    rrca
    dec b
    dec c
    ld c, $01
    dec b
    dec c
    add e
    ld [hl], e
    ei
    ld a, [bc]
    rrca
    dec b
    inc c
    xor c
    rlca
    ld [bc], a
    db $10
    and e
    rlca
    ld [hl], a
    ld h, a
    rst $38
    inc sp
    cp e
    rlca
    dec b
    pop hl
    ld [$efe7], sp
    and e
    inc e
    ld bc, $27e0
    ld [$001f], sp
    rra
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
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
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
    dec d
    nop
    nop
    ld [$1df6], sp
    nop
    inc bc
    ld [bc], a
    dec hl
    nop
    add d
    add c
    add l
    add e
    cp a
    adc e
    add a
    adc e
    add a
    sub a
    adc a
    ld hl, $af00
    ei
    sbc a
    rst $38
    inc e
    nop
    ld b, c
    add c
    and c
    pop bc
    pop de
    rst $38
    pop hl
    pop de
    pop hl
    jp hl


    pop af
    jp hl


    pop af
    push af
    rst $18
    ld sp, hl
    push af
    ld sp, hl
    ret nz

    ld b, b
    dec hl
    nop
    xor a
    sbc a
    add b
    dec hl
    nop
    ld b, c
    ld [bc], a
    ld c, c
    nop
    dec d
    ld [$0580], sp
    ld h, d
    nop
    dec b

jr_03e_6d34:
    ld [$79ff], sp
    cp $03
    ld bc, $0409
    cpl
    rra
    rst $38
    rst $28
    nop
    ld [$fcff], sp
    db $fc
    ld hl, sp-$07
    ldh a, [$fff2]
    ldh [$ffe4], a
    rst $18
    ret nz

    ld [$c9c0], a
    add b
    ld h, c
    inc bc
    ld a, a
    nop
    rst $38
    sub h
    inc bc
    inc d
    ld [bc], a
    inc d
    jr nz, jr_03e_6d71

    ld h, b
    rst $38
    inc d
    pop hl
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rst $38
    rst $08
    rlca
    daa
    inc bc
    inc de
    ld h, c
    dec hl
    pop bc
    ld a, e

jr_03e_6d71:
    ld c, c
    add b
    add hl, bc
    rlca
    ld hl, sp-$10
    rst $38
    rst $30
    dec b
    ld a, [bc]
    db $e3
    rst $38
    ld a, a
    inc bc
    rlca
    ld h, b
    rlca
    ld a, [hl-]
    dec c
    rst $28
    rra
    rrca
    cp $3a
    ld c, $d4
    add b
    jp nc, $d180

    add [hl]
    ret nc

    rst $18
    adc a
    rst $18
    add b
    ret nc

    add b
    ld h, c
    nop
    sub h
    ld h, e
    ccf
    ld d, l
    ld [bc], a
    ld [hl], $00
    sub h
    nop
    pop hl
    ld a, [bc]
    ld d, b
    dec bc
    rst $38
    nop
    sub l
    ld [$1825], sp
    ld b, l
    jr c, jr_03e_6d34

    rst $38
    ld a, b
    db $fd
    nop
    dec b
    nop
    dec b
    ld hl, sp-$03
    ld h, e
    nop
    rst $30
    ld d, b
    ld b, $1f
    nop
    ld h, c
    inc de
    cp $fe
    sub b
    dec bc
    db $ed
    ld hl, sp-$5b
    nop
    add h
    add h
    or c
    rla
    db $10
    db $10
    jp $c3fd


    add e
    nop
    jr jr_03e_6dee

    jr c, jr_03e_6e10

    inc l
    inc l
    cp e
    inc h
    inc h
    ld bc, $7f16
    ld a, a
    ccf
    stop
    ld bc, $0179
    pop de
    add hl, de
    ld h, b
    rlca
    add c
    ret nc

    add e

jr_03e_6dee:
    ret nc

    ld [hl+], a
    ld [$50ff], sp
    nop
    rra
    ld b, b
    inc d
    nop
    inc d
    and b
    cp $81
    ld c, $14
    db $e3
    rst $30
    nop
    inc d
    nop
    rst $30
    cp [hl]
    ld h, c
    rlca
    ld l, b
    dec b
    ret c

    dec b
    cp b
    pop bc
    rlca
    dec b
    db $e3

jr_03e_6e10:
    nop
    db $fd
    jp nc, $a10c

    ld b, $c1
    ld b, $80
    add b
    nop
    ld l, l
    nop
    rlca
    ld b, $3c
    inc a
    add hl, bc
    ld b, $21
    ld hl, $1786
    ld a, h
    inc [hl]
    dec e
    ld h, c
    rlca
    rra
    rra
    ld hl, sp-$08
    ldh a, [rNR14]
    nop
    db $fd
    ld hl, sp+$10
    nop
    db $fc
    db $fc
    db $10
    db $10
    jr c, jr_03e_6e75

    rst $30
    jr z, jr_03e_6e68

    ld c, b
    stop
    jr z, jr_03e_6e6d

    ld a, b
    nop
    rst $38
    call z, $2448
    inc h
    jr c, jr_03e_6e56

    ld e, h
    db $10
    rst $38
    jp z, $5468

    jr c, @+$6e

jr_03e_6e56:
    ld e, b
    ld l, [hl]
    ld c, d
    ld e, a
    xor $ca
    nop
    nop
    inc b
    stop
    ld c, $10
    nop
    db $fd
    ld a, [bc]
    stop

jr_03e_6e68:
    inc e
    inc b
    db $10
    ld b, b
    db $10

jr_03e_6e6d:
    ld b, c
    rst $38
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, a

jr_03e_6e75:
    rrca
    ld d, b
    rst $38
    db $10
    ld b, b
    rra
    ld b, b
    inc b
    ld bc, $6d00
    ld a, a
    nop
    db $dd
    nop
    or l
    nop
    push af
    ldh a, [rNR11]
    ld [de], a
    rst $38
    dec b
    nop
    nop
    jr nz, jr_03e_6eb0

    jr nc, @+$32

    ld [hl], b
    rst $38
    ld [hl], b
    ld e, b
    ld e, b
    ld c, b
    ld c, b
    ld d, b
    ld d, b
    jr c, @+$01

    jr nz, @+$2a

    jr z, jr_03e_6ebd

    db $10
    ld a, [hl-]
    ld [$ff53], sp
    ld d, $2a
    inc e
    ld h, $0a
    ld l, $0a
    ld l, a
    push af
    ld c, e

jr_03e_6eb0:
    jp Jump_000_1a04


    stop
    ld [$1e08], sp
    nop
    db $d3
    inc sp
    ld [de], a
    ret nc

jr_03e_6ebd:
    inc e
    inc d
    nop
    rra
    stop
    ccf
    ccf
    ei
    cp $fe
    dec hl
    jr z, jr_03e_6f20

    ld sp, $97cf
    rst $18
    or $28
    nop
    rst $28
    sla l
    nop
    rst $38
    add c
    db $eb
    xor l
    rst $38
    rst $38
    jp Jump_000_0026


    or e
    sbc d
    pop af
    and $7b
    rst $30
    push hl
    dec h
    nop
    db $10
    ld b, b
    ld d, b
    ld bc, $1505
    rst $38
    ret nc

    add b
    rst $18
    add b
    nop
    dec b
    dec b
    ld l, b
    ei
    inc b
    reti


    rlca
    inc d
    ld h, h
    nop
    call z, $8958
    or a
    ld h, c
    rst $08
    add a
    dec h
    nop
    ld l, a
    ld c, e
    dec bc
    dec b
    xor d
    rst $30
    adc h
    rst $30
    db $ed
    rst $20
    inc b
    rst $30
    push hl
    ld a, a
    ld a, a
    cp $2c
    ld sp, $d703
    ld e, e
    rst $38
    add a
    rst $28
    or a

jr_03e_6f20:
    rst $38
    rst $08
    sub a
    rst $08
    sub [hl]
    rst $10
    sbc c
    sbc $bc
    ei
    rst $20
    sla c
    nop
    rst $30
    db $db
    rst $38
    jp $ffd7


    or l
    cp l
    ld b, d
    and l
    ld h, [hl]
    rst $38
    ret nz

    push af
    rst $38
    sub $ff
    pop hl
    ei
    db $ed
    di
    push hl
    di
    ld e, a
    ld h, l
    db $e3
    sub l
    ld e, e
    inc a
    add hl, bc
    ld e, $c0
    ldh [$ff2c], a
    ret z

    rlca
    ld e, $02
    ld sp, $1e0a
    ld bc, $2760
    add hl, bc
    ld b, $c7
    sbc c
    db $db
    ldh a, [c]
    inc a
    rlca
    ld b, $eb
    xor l
    rrca
    ld b, $7b
    dec a
    rst $08
    ldh [c], a
    call c, $e1fe
    ret nz

    inc [hl]
    ld h, [hl]
    inc de
    and l
    ld h, [hl]
    rst $38
    and l
    ld h, [hl]
    db $db
    inc a
    ld a, [hl]
    jp Jump_03e_4685


    rst $38
    jp $ffbd


    jp $dbf7


    ld b, a
    ld a, [hl-]
    rst $38
    ld a, a
    add [hl]
    db $fd
    ld a, [hl]
    ld hl, sp+$7f
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
    push de
    rst $38
    xor d
    rst $38
    ld h, b
    ldh [rNR13], a
    ld h, b
    ldh [rSTAT], a
    ld sp, $06b1
    ld d, l
    nop
    ld bc, $39c2
    ld [$f901], sp
    inc bc
    stop
    ld b, c
    inc sp
    ld bc, $03ff
    rst $38
    ld d, a
    cp e
    rst $38
    xor a
    inc b
    inc bc
    add b
    rst $38
    ret nz

    nop
    inc b
    push af
    di
    rst $38
    ld a, [$0206]
    dec b
    inc b
    ld a, [hl]
    sbc h
    ld a, [hl]
    and c
    rra
    rst $18
    ld a, $0f
    cp $07
    nop
    inc bc
    ld bc, $0e05
    ld [$3be7], sp
    ld a, a
    add a
    ret nz

    jr c, jr_03e_7042

    inc d
    cp e
    rst $38
    xor $f4
    ld b, b
    nop
    pop bc
    rlca
    ld d, l
    ld b, b
    ld b, c
    rst $38
    rst $38
    db $dd
    rst $38
    jp hl


    ld [hl], a
    ld b, b
    nop
    pop hl
    nop
    xor d
    ld bc, $db01
    db $ed
    bit 7, a
    ld l, a
    set 5, l
    res 5, [hl]
    bit 5, l
    ld b, b
    nop
    ei
    rst $28
    ld [$020b], sp
    ld a, a
    ret nz

    rst $38
    db $db
    xor a
    cpl
    set 5, [hl]
    res 5, a
    ldh [c], a
    ld bc, $026d
    ld [bc], a
    add hl, bc
    dec b
    ei
    cp $03
    dec bc
    dec b
    ld d, l
    rst $38
    xor a
    ld hl, sp+$58
    rst $38
    rst $30
    ld d, $ef

jr_03e_7024:
    ld l, $df
    ld [hl], e
    or d
    jp Jump_03e_46ff


    ld d, $94

jr_03e_702d:
    add d
    add b
    ret nz

    inc bc
    ret nz

    rst $38
    inc bc
    add b
    rlca
    add c
    ld b, $03
    inc c
    rlca
    rst $38
    ld a, [bc]
    inc c
    inc d
    inc c
    inc d
    inc l

jr_03e_7042:
    srl h
    rst $38
    db $db
    rst $38
    jr jr_03e_7024

    inc a
    rst $30
    jr @+$01

    rst $18
    nop
    cp $81
    ld a, a
    ld a, a
    and e
    ld de, $7f80
    rst $38
    ldh [$ff1f], a
    or b
    ld c, a
    db $10
    rst $28
    sub d
    rst $28
    call c, $12a3
    inc bc
    inc de
    adc b
    rst $38
    ld [hl+], a
    db $e4
    nop
    ld bc, $fffe
    inc bc
    db $fc
    rlca
    ld a, [$f58d]
    ld l, $f6
    or $0b
    inc b
    dec bc
    dec bc
    ldh a, [rTIMA]
    ret nz

    ld bc, $81e0
    rst $38
    ld h, b
    ret nz

    jr nc, jr_03e_702d

    ld e, b
    inc d
    db $ec
    db $10
    rst $38
    db $ec
    push af
    rra
    ld a, [de]
    rst $28
    ld l, b
    rst $30
    ld [hl], h
    rst $38
    ei
    xor [hl]
    ld l, l
    add e
    ld b, [hl]
    ld l, c
    add hl, hl
    ld b, b
    cp a
    ld hl, $0004
    inc b
    nop
    ld [$0020], sp
    db $10
    cp $20
    nop
    ld hl, $2101
    ld bc, $3b17
    dec hl
    sbc a

jr_03e_70b0:
    inc a
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, a
    ld h, c
    db $10
    pop bc
    ld d, a
    rla
    rl a
    ld a, [hl]
    and b
    ld d, d
    and b
    ld h, d
    ld de, $58c1
    or c
    rst $08
    sbc a
    ldh [c], a
    rra
    add l
    ld a, a
    ld a, [hl+]
    ld b, $01
    add e
    inc de
    xor d
    sbc $06
    ld [bc], a
    ld d, a
    ei
    xor e
    db $fc
    add hl, bc
    ld bc, $ffff
    cp $0b
    inc b
    or b
    call z, Call_000_1ce0
    add h
    ld a, [hl]
    ld a, [hl+]
    sbc l
    cp $05
    ld b, $20
    nop
    jr nz, jr_03e_70b0

    rlca
    ld b, c
    ld [$3f84], sp

jr_03e_70f3:
    add b
    add h
    add b
    ld b, e
    inc bc
    ld b, e
    nop
    ld de, $0027
    sbc h
    ld bc, $4960
    rrca
    jp nz, $c2c0

    nop
    dec c
    daa
    nop
    cp a
    rst $38
    nop
    ret nz

    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jp $a830


    ld [hl+], a
    nop
    ld h, e
    ld e, l
    and c
    ld d, d
    or e
    ld h, [hl]
    db $fd
    nop
    rst $38
    inc bc
    nop
    db $fd
    cp $0d
    cp $f5
    ld b, $f9
    dec d
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, @-$4e

    jr nc, jr_03e_70f3

    rst $00
    ccf
    ret nz

    ccf
    ld h, l
    ld [bc], a
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $37
    dec c
    ld c, $fd
    ld b, b
    dec d
    rst $38
    nop
    ld h, e
    dec b
    ld h, a
    nop
    db $fc
    ld h, e
    inc b
    ld h, a
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rla
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    jp c, Jump_03e_600a

    ld e, e
    nop
    add hl, bc
    ld d, l
    ld bc, $0b40
    daa
    inc bc
    cpl
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
    ld b, $1f
    nop
    nop
    nop
    nop
    db $10
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld d, h
    ld d, l
    nop
    ld a, [bc]
    nop
    rst $38
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    rst $28
    add e
    add d
    xor e
    rst $38
    ld [de], a
    nop
    ld bc, $00ff
    rst $38
    db $fd
    inc bc
    ld [hl], l
    adc e
    scf
    rlc a
    ei
    cp a
    add a
    ld a, e
    ld b, e
    rra
    rst $38
    nop
    jr z, jr_03e_71c4

jr_03e_71c4:
    add b
    xor $b0
    inc bc
    rst $38
    dec a
    db $fd
    sub e
    ld [bc], a
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    ldh a, [$fff0]
    ldh a, [rIF]
    ld a, [$f807]
    cp $24
    nop
    cp $0f
    rst $38
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, a
    ld a, a
    rst $18
    rst $18
    ei
    cp a
    ei
    rst $38
    rst $38
    ccf
    ccf
    jr nz, jr_03e_7204

    inc b
    inc b
    ld c, d
    sub b
    inc bc
    jr nz, jr_03e_725b

    nop
    nop
    ret nz

    rlca
    inc bc
    ld [bc], a
    rst $38
    add d
    nop

jr_03e_7204:
    ld a, l
    db $fd
    and b
    inc b
    inc hl
    db $fc
    inc bc
    db $fc
    rlca
    ld b, b
    nop
    ld e, a
    ld hl, $00fe
    rst $38
    ld [bc], a
    ret nc

    ld b, $fc
    ld hl, $fd00
    cp $20
    nop
    db $fc
    ld hl, sp-$08
    add b
    add b
    push bc
    push af
    call nz, Call_000_0802
    ld bc, $0960
    inc bc
    rst $38
    rlca
    ld a, a
    rst $18
    rst $38
    dec sp
    rst $38
    ldh [$ffe0], a
    rst $00
    inc c
    and h
    add h
    rst $28
    dec [hl]
    ld hl, $1f1f
    push hl
    ld [$ffff], sp
    ld a, e
    ld a, a
    rst $38
    sbc $ff
    ld c, l
    ld c, b
    db $10
    db $10
    add c
    ld c, $f7
    inc b
    inc b
    ld bc, $0ee0
    dec sp
    dec sp
    or a
    rst $38
    pop af
    rst $28
    add d
    dec c

jr_03e_725b:
    ret nc

    ld [$0e00], sp
    call nz, $75ff
    ld b, c
    cp l
    ld [$1082], sp
    xor h
    ld [$444d], sp
    ldh [rNR10], a
    add b
    db $dd
    cp [hl]
    call nc, $f70c
    rst $38
    cp e
    nop
    db $10
    ld a, a
    rst $38
    rst $28
    inc bc
    rrca
    nop
    inc bc
    add c
    ld [de], a
    inc e
    inc e
    rrca
    ld a, a
    rrca
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    ldh a, [rWave_0]
    add hl, bc
    ld l, d
    and b
    ld de, $92e3
    nop
    ld hl, sp+$00
    ld [$c0c0], sp
    push bc
    inc d
    rst $38
    ldh [$ffe0], a
    ld a, h
    ld a, h
    rst $38
    rra
    rst $38
    ccf
    cp $05
    ld de, $ff1f
    add e
    rst $38
    rra
    rra
    dec bc
    rst $28
    dec bc
    rrca
    rrca
    rlca
    ld [de], a
    nop
    dec c
    dec c
    rra
    xor a
    rra
    ldh [rIE], a
    db $f4
    jr nc, jr_03e_72c2

    ld hl, sp+$22
    nop
    ldh a, [c]

jr_03e_72c2:
    cp $a0
    rla
    ret z

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld l, b
    ld a, a
    ld l, b
    cp $fe
    or a
    or a
    cp $fe
    jr nz, jr_03e_72e8

    xor [hl]
    db $10
    inc b
    rrca
    rst $38
    sub a
    ld [hl], b
    rla
    ld c, b
    or c
    rla
    rst $38
    ld l, a
    sbc l
    dec c
    or b
    or b
    and e

jr_03e_72e8:
    ld a, [de]
    add c
    add c
    pop bc
    inc d
    rst $10
    ldh a, [c]
    rst $38
    ld c, a
    db $f4
    ld d, $7e
    ld b, b
    inc d
    nop
    rst $38
    rst $38
    ld e, h
    ld e, h
    ldh a, [$fff0]
    ldh [$ffe0], a
    pop af
    pop af
    xor $03
    ld d, $7d
    ld a, l
    and e
    ldh [$ff03], a
    rra
    rst $38
    ld c, $b6
    inc b
    ld d, $82
    rst $38
    ld h, e
    ld e, $fc
    db $fc
    add c
    jr @-$23

    sub l
    db $db
    and l
    ld a, [de]
    inc bc
    jp nz, Jump_000_2403

    pop de
    inc e
    ld b, b
    jr nz, jr_03e_7346

    rst $38
    ld hl, $0000
    ret nz

    ret nz

    db $fc
    db $fc
    cp a
    push hl
    cp a
    ld hl, $ff08
    ld h, b
    inc de
    add c
    ld [$ff03], sp
    ld b, b
    cp $d1
    rra
    nop
    ld [bc], a
    ld [bc], a
    or l
    db $10
    sub $84
    xor [hl]
    pop bc

jr_03e_7346:
    ld [hl+], a
    cp $fe
    rst $28
    ret nc

    inc de
    db $fd
    jr nz, jr_03e_7363

    ld a, e
    cp $b4
    ld hl, $ff10
    rlca
    rlca
    ld b, $06
    ld h, a
    rst $38
    ld b, a
    adc a
    adc a
    dec sp
    dec sp
    rst $38
    rst $38
    rst $10

jr_03e_7363:
    rst $38
    rst $10
    cp $fe
    ld hl, sp-$01
    ld sp, hl
    rst $38
    cp b
    dec sp
    rst $38
    ld [hl], b
    and b
    dec d
    nop
    rst $38
    jr z, jr_03e_7377

    inc b
    ld h, c

jr_03e_7377:
    ld h, $ff
    ld bc, $1501
    inc d
    ld c, $06
    ld bc, $3b01
    ld bc, $5300
    dec h
    cp $ff
    db $eb
    add b
    ld [bc], a
    ldh a, [$ff0e]
    db $fd
    cp $52
    jr z, jr_03e_7399

    ld b, a
    ld e, b
    sub c
    and b
    jp Jump_000_10df


jr_03e_7399:
    add c
    ld h, b
    nop
    ret nz

    ld d, d
    daa
    ld hl, sp-$41
    rst $38
    ldh [$ff7f], a
    ret nz

    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    rst $38
    ret nz

jr_03e_73ac:
    ld bc, $000f
    rst $38
    ldh [$ff1f], a
    add b
    rst $38
    ld a, a
    inc a
    jp $07d8


    jr nz, jr_03e_73da

    ld b, c
    or c
    ld a, $00
    jr jr_03e_73ea

    jr z, jr_03e_7403

    rla
    db $fc
    db $fc
    ld b, c
    inc de
    ld a, a
    jp z, $0f82

    add hl, de
    ld d, c
    rla
    inc bc
    ld c, c
    ld a, [hl+]
    ld b, c
    ld l, $05
    dec b
    ld a, a
    ldh a, [$fff0]
    db $fc

jr_03e_73da:
    db $fc
    ld l, c
    rst $38
    and b
    ret nc

    dec hl
    and $51
    dec l
    ld a, [$30ff]
    ld d, $64
    ld [bc], a
    nop

jr_03e_73ea:
    nop
    jr nz, jr_03e_73ac

    jr nz, jr_03e_7404

    inc b
    ld b, l
    ld bc, $6012
    ld [hl+], a
    add b
    xor e
    add b
    ld b, b
    nop
    ld [$c0df], sp
    ld hl, $63fe
    ld [hl+], a
    ld a, a
    ei

jr_03e_7403:
    rst $38

jr_03e_7404:
    ccf
    ldh a, [rIF]
    dec b
    nop
    inc b
    dec b
    ld [$03ff], sp
    ld [$110e], sp
    ld c, $11
    inc c
    inc de
    xor d
    db $10
    add hl, hl
    ld sp, hl
    ldh a, [rWave_2]
    ldh a, [$ff80]
    jr nz, @-$1e

    ld hl, $1800
    rst $38
    add b
    ld [hl], b
    nop
    pop hl
    ld [$50a0], sp
    ld c, h

jr_03e_742b:
    ld a, a
    and b
    sbc c
    inc b
    cp a
    nop
    or [hl]
    ld [$3140], sp
    rst $00
    nop
    rst $38
    ld [$1190], sp
    sub c
    ld l, $c0
    ld [hl-], a
    and [hl]
    ld e, c
    rst $38
    sbc d

jr_03e_7443:
    ld hl, $0364
    ld c, l
    ld [bc], a
    adc d
    inc b
    cp a

jr_03e_744b:
    dec e
    nop
    dec sp
    nop
    ld h, h
    ld [de], a
    db $eb
    dec bc
    rst $38
    db $fd
    nop
    ld bc, $0831
    rst $30
    jr nc, jr_03e_742b

    ret nc

    rrca
    cp a
    inc h
    dec de
    ld b, [hl]
    add hl, sp
    add c

jr_03e_7464:
    ld a, h
    dec c
    ld [bc], a
    nop
    rst $38
    rst $38
    jr nz, jr_03e_744b

    ld de, $18ee
    rst $20
    adc h
    ld a, a
    ld [hl], e
    adc $31
    ld h, [hl]

Call_03e_7476:
    sbc c
    scf
    ret z

    ld c, $04
    rst $38
    ldh [rNR43], a
    ldh [c], a
    dec d
    push af
    sbc d
    ld a, d
    push de
    rst $38
    dec [hl]
    ld c, b
    cp b
    ld l, b
    sbc b
    jr z, jr_03e_7464

    rst $38
    rst $38
    rra
    db $fd
    rra
    ld a, [$f50f]
    rrca
    ld a, [$0ff7]
    rst $38
    rlca
    ld hl, $0900
    ld d, $09
    ld [hl], $fb
    inc bc
    inc a
    ld hl, $4600
    ld a, c
    add [hl]
    ld sp, hl
    inc b

jr_03e_74aa:
    push af
    ld a, e
    ret nc

    ld a, $c0
    inc hl
    nop
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    add b
    ld l, d
    inc d
    push de
    jr z, jr_03e_7443

jr_03e_74bd:
    ld a, c
    rst $38
    inc c
    di
    jr jr_03e_74aa

    db $10
    rst $28
    ld hl, $fbde
    inc bc
    rst $38
    dec c
    ld a, [bc]
    db $db
    inc h
    ld [hl+], a
    db $dd
    ld c, b
    rst $38
    or a
    ld [hl-], a
    call z, $9844
    xor b
    db $10
    db $10
    rst $30
    jr nz, jr_03e_74bd

    ret nz

    dec c
    inc c
    ld hl, $52dc
    adc h
    rst $38
    ld [$0106], sp
    ld b, $04
    inc bc
    nop
    inc bc
    rst $20
    ld [bc], a
    ld bc, $3102
    dec hl
    ld a, [bc]
    ld a, [de]
    cp e
    ld b, h
    rst $30
    rst $38
    ld [$8877], sp
    inc sp
    call z, $cc33
    sub c
    rst $18
    ld l, [hl]
    sub c
    ld l, [hl]
    nop
    ld a, a
    dec c
    db $10
    ld d, $ee
    rst $38
    sub l
    ld l, l
    add [hl]
    ld a, [hl]
    add l
    ld a, l
    ld [bc], a
    cp $7b
    inc bc
    rst $38
    ld b, c
    nop
    db $fd
    inc bc
    cp $03
    ld b, c
    nop
    rst $30

jr_03e_7520:
    rst $38
    ld bc, $60fe
    ld a, $fe
    ld bc, $fb84
    db $fd
    nop
    ld [hl], b
    ld a, [bc]
    ld [bc], a
    ld a, a
    jp nz, $66ff

    ld a, a

jr_03e_7533:
    rst $08
    cp $ff
    ld a, a
    ld a, a
    ld b, c
    dec bc
    ld b, a
    nop
    cp a
    ret nz

    rst $38
    inc c
    db $fc
    jr jr_03e_7533

    ld sp, $81e0
    ldh [rIE], a
    and d
    pop bc
    add l
    ld b, d
    jp z, $8405

    dec bc
    cp $0a
    ld c, d
    ld bc, $02ff
    and b
    ld h, b
    ld b, b
    add b
    cp $e0
    dec l
    nop
    jr nz, jr_03e_7520

    db $10
    ldh [rNR10], a
    ldh [$ffeb], a
    nop
    ldh [$ff08], a
    ld c, h
    ret nz

    ld de, $0f34
    rrca
    db $10
    ei
    ld de, $b000
    ld b, c
    ld c, $00
    ld de, $220e
    rst $30
    dec e
    ld hl, $0a1e
    ld c, [hl]
    inc c
    rst $38
    ld [de], a
    ld b, b
    rst $38
    ccf
    ret nz

    rst $38
    ld h, c
    ccf
    ld de, $293f
    ld a, a
    rla
    ld bc, $8117
    rla
    ld b, e
    sub a
    dec c
    inc e
    xor $81
    dec bc
    ld b, $fe
    rlca
    ld b, b
    nop
    adc a
    rst $38
    cp $e1
    cp $20
    ld c, h
    add h
    dec bc
    ld bc, $c10c
    inc c
    cp a
    cp h
    ld a, h
    rst $38
    ld a, b
    cp c
    or b
    ld e, d
    ld d, c
    cp d
    or c
    ld e, d
    cp a
    ld d, c
    xor d
    and c
    ld e, d
    ld d, c
    ld a, a
    add c
    rla
    ret nz

    rst $28
    cp a
    ldh [$ff5f], a
    ldh [rLCDC], a
    nop
    ldh a, [$ffaf]
    ldh a, [rIE]
    sub h
    dec bc
    and b
    rra
    ret nc

    rrca
    ret z

    rlca
    cp l
    ld b, b
    jr nz, jr_03e_75d8

jr_03e_75d8:
    ldh [$ff03], a
    and h
    ld b, e
    ld d, b
    ld c, a
    ld b, $f0
    jr nz, jr_03e_75e2

jr_03e_75e2:
    db $10
    dec b
    add b
    nop
    and b
    inc l
    add b
    ld h, b
    ret nz

    and b
    cp $21
    nop
    add b
    ld h, b
    nop
    ldh [rP1], a
    jp nz, $f981

    ld b, $0a
    ld e, b
    ret nz

    ld [bc], a
    nop
    rra
    ld [$0c17], sp
    dec l
    dec de
    ld hl, $0800
    rla
    sub b
    ld e, e
    rrca
    jp nz, Jump_000_0151

    ld d, d
    db $fd
    ld de, $5263
    sub e
    ld b, a
    and e
    ld b, h
    db $10
    db $e4
    rst $38
    ld [hl+], a
    call z, $8a45
    add hl, bc
    add d
    add hl, bc
    add d
    pop hl
    add hl, de
    inc bc
    inc b
    add b
    rra
    ld b, h
    nop
    ld b, b
    dec a
    db $fd

jr_03e_762c:
    db $fd
    ld a, [$7aff]
    ld a, l
    dec a
    ld a, d
    ld a, [hl-]
    ld [hl], l
    dec [hl]
    ld a, d
    ld [hl], a
    ld a, [hl-]
    ld a, l
    dec a
    ld [bc], a
    jr jr_03e_7645

    ld a, [$4007]
    nop
    cp $60
    inc h

jr_03e_7645:
    ldh a, [c]
    rrca
    adc l
    adc b
    ld d, [hl]
    ld b, l
    rst $08
    rst $38
    add [hl]
    ld d, a
    ld d, a
    xor e
    xor e
    ld d, l
    ld d, l
    xor d
    rst $38
    xor d
    ld d, l
    ld d, l
    ld a, a
    ldh a, [$ffbf]
    ld sp, hl
    ld a, a
    rst $38
    ld hl, sp-$55
    db $fc
    ld d, a
    db $fc
    xor e
    cp $55
    rst $38
    rst $38
    xor d
    rst $38
    ld h, b
    nop
    dec h
    add b
    ld a, [hl+]
    ld l, $b0
    add hl, bc
    ldh a, [$ffe0]
    db $fc
    and b
    ld d, c
    ld a, a
    ld bc, $211e
    jr nc, jr_03e_762c

    ld h, $62
    ld [bc], a
    ld bc, $e140
    ld d, a
    ld [$6530], sp
    ld b, $e0
    add c
    jr jr_03e_7695

    ld h, h
    jp nz, $800c

    inc hl
    ld h, b
    ld h, a
    add c

jr_03e_7695:
    ld b, b
    nop
    xor $60
    ld a, [de]
    ld bc, $0f00
    ld c, $24
    sub [hl]
    ld [$ff1a], sp
    nop
    sub c
    inc b
    ld d, e
    ld bc, $033f
    ld a, a
    rra
    ccf
    ld a, [$d57a]
    push de
    ld [bc], a
    ld l, b
    or c
    ld h, e
    add c
    ld l, b
    rst $38
    dec b
    cp $2b
    ld l, d
    ld [hl+], a
    db $fd
    ld l, b
    ld a, [$faf7]
    push de
    push de
    pop bc
    add hl, bc
    xor d
    xor d
    ld e, a
    ld d, a
    rst $38
    db $fd
    rra
    rst $30
    rra
    push bc
    ccf
    ld [rWave_f], a
    push de
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    rst $38
    xor d
    xor d
    ld e, l
    ld e, l
    ld a, [hl-]
    ld a, [hl+]
    push bc
    ld b, l
    db $eb
    ld a, [$01ba]
    inc c
    rst $38
    ld b, b
    ld bc, $ffa2
    push de
    xor a
    rst $38
    cp d
    rst $38
    ld b, l
    ret nz

    dec bc
    ld d, l
    ret nc

    ld l, h
    xor a
    rst $38
    xor a
    ld d, a
    ld d, a
    xor d
    xor e
    ld d, h
    ld d, [hl]
    xor b
    rst $38
    xor a
    ld d, b
    ld e, a
    pop hl
    rst $38
    ret nc

    rst $28
    ld a, l
    rst $38
    jp nc, $edba

    ld d, l
    cp $aa
    db $fd
    ld d, e
    rst $38
    db $fc
    and c
    cp $03
    db $fc
    inc bc
    db $ec
    ld hl, sp-$01
    ret nz

    rlca
    ld a, b
    nop
    rst $18
    ld c, $60
    add b
    ld a, a
    rra
    ld h, e
    nop
    inc a
    ret nz

    add e
    ld hl, sp+$61
    ld l, a
    cp a
    rst $18
    jr nz, jr_03e_7796

    sbc a
    rra
    ldh [$ffe0], a
    ld l, e
    ccf
    rst $38
    ld hl, sp+$07
    ld [hl], d
    rrca
    add c
    ld a, h
    ld h, b
    ld b, $ff
    add hl, bc
    ldh [c], a
    ld h, c
    rrca
    add e
    scf
    ld b, $cf
    rst $38
    ld [bc], a
    ccf
    rst $38
    nop
    db $fc
    inc bc
    ld b, $f9
    rst $38
    ldh [c], a
    dec e
    rrca
    ldh a, [rWave_7]
    ret z

    adc $31
    rst $38
    ld a, $c1
    ld [hl+], a
    cp $80
    daa
    ld c, h
    and c
    rst $38
    nop
    ld l, a
    and c
    rst $10
    db $10
    ret


    ld e, b
    and l
    rst $38
    ld h, h
    sub e
    db $fd
    inc bc
    daa
    ret c

    and c
    ld e, [hl]
    rst $38
    ld l, a
    sub b
    sub $29
    ld c, c
    or [hl]
    dec h
    sbc d
    rst $38
    inc de
    adc h
    or d
    and d
    ld d, a
    ld d, l
    dec sp
    cp e
    xor [hl]
    ld h, c
    ld e, a
    rst $30
    rst $30
    ld a, a
    nop
    ld h, a
    ld e, l

jr_03e_7796:
    ld b, b
    dec d
    call nz, Call_03e_7fdf
    ret nz

    ccf
    ldh [$ff1f], a
    or b
    ld b, h
    ld a, a
    add b
    rst $38
    ld a, a
    cp $fe
    rst $30
    rst $30
    cp $fe
    cp a
    or a
    cp a
    db $eb
    db $eb
    and d
    ld c, e
    ei
    ld bc, $45d0
    ld bc, $a0fa
    ld e, c
    inc d
    sub h
    db $10
    sbc c
    and $a3
    call c, $ffb3
    call z, Call_03e_5c23
    and a
    ret c

    ld h, a
    sbc b
    ld b, a
    rst $38
    cp b
    rst $00
    jr c, jr_03e_77d3

    db $e4
    rlca
    ret c

jr_03e_77d3:
    rlca
    rst $38
    ret z

    add a
    ret c

    rrca
    ret nc

    rrca
    sub b
    rrca
    rst $30
    or b
    rrca
    jr nc, jr_03e_77d3

    ld c, b
    call c, $af63
    ld [hl], b
    ei
    xor $31
    inc hl
    nop
    sbc a
    ld h, b
    add b
    ld a, a
    ret nz

    rst $28
    inc hl
    ldh [rNR10], a
    pop hl
    inc h
    nop
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $38
    rst $30
    ld a, [de]
    rst $20
    cp c
    ld b, a
    ld a, l
    add e
    db $fd
    cp $f0
    ld c, $fc
    inc bc
    sbc $21
    ld e, $e1
    ld a, $fb
    pop bc
    ld a, a
    ld h, [hl]
    ld a, [hl]
    ld d, b
    xor h
    ld [$1df7], sp
    rst $38
    db $e3
    dec a
    jp $c33d


    ld a, $c1
    adc [hl]
    rst $38
    pop af
    adc [hl]
    pop af
    inc c
    and e
    inc bc
    db $f4
    nop
    rst $30
    db $e3
    nop
    jp RST_20


    pop bc
    add b
    ld [hl], c
    add b
    rst $38
    ld [hl], c
    cpl
    rst $28
    ld e, $fe
    ei
    ei
    ld a, $ff
    ld a, $ef
    rst $28
    db $fd
    db $fd
    cp a
    cp a
    ld a, a
    rst $38
    rst $38
    ret nc

    ccf
    pop hl
    rra
    inc b
    rst $38
    pop bc
    ldh a, [c]
    and b
    ld h, c
    ld [bc], a
    nop
    ld h, h
    ld bc, $dd7c
    rst $18
    db $fc
    rst $38
    rst $38
    ld a, c
    ld a, a
    add sp, -$11
    cp e
    cp a
    db $ed
    xor $ff
    ei
    ld hl, sp+$00
    db $fd
    ld hl, $01fd
    db $fd
    ld a, a
    add c
    ld sp, hl
    inc de
    ei
    ld b, e
    ei
    ld de, $7ea0
    ld e, a
    ld bc, $88fe
    rst $38
    ld c, h
    jr nz, jr_03e_78ee

    add hl, hl
    ret nc

    ld [hl], $fd
    adc $80
    ld e, c
    rrca
    ldh a, [$ff8f]
    ldh a, [$ffcf]
    ret nz

    db $eb
    rst $28
    ldh [rNR42], a
    nop
    rst $08
    ldh [rDMA], a
    xor $31
    dec h
    rst $38
    ei
    ld c, d
    push af
    ld c, h
    di
    call nz, $c0fb
    or $60
    adc d
    db $fd
    rst $38
    add b
    dec bc
    ld a, [de]
    ret nz

    dec [hl]
    ret nz

    rst $38
    inc sp
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    rlca
    call c, Call_000_1cff
    ld h, h

jr_03e_78b7:
    sbc e
    nop
    rst $38
    adc b

jr_03e_78bb:
    rst $38
    ret z

    db $e3
    rst $38
    db $ec
    pop hl
    ld h, h
    ld hl, $0c8b
    ld d, [hl]
    add c
    rst $38
    ld b, [hl]
    xor a
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    ld [hl], b
    ld a, e
    call z, $80e0
    rst $00
    sbc a
    ld hl, sp-$7f
    ld a, a
    rst $00

Jump_03e_78d9:
    ccf
    jr nz, jr_03e_7956

    ld b, b
    nop
    rst $08
    rst $38
    rrca
    sbc $1e
    rst $00
    nop
    cp a

jr_03e_78e6:
    rst $38
    ld a, $ff
    cp $97
    rst $30
    ld e, a
    rst $38

jr_03e_78ee:
    ld e, a
    rst $38
    cp a
    rst $28
    rst $38
    db $fd

jr_03e_78f4:
    ld a, l
    rst $38
    jr nc, jr_03e_793d

    add c
    cp a
    adc b
    rst $38
    sbc a
    ld b, b
    ld e, a
    ret nz

    rst $18
    add b
    cp a
    add d
    cp $00
    jr jr_03e_78e6

    call c, Call_03e_7476
    db $fc
    ld hl, sp-$24
    rst $38
    ret c

    cp h
    cp b
    push af
    ldh a, [$ffd3]
    call c, $fec4
    nop
    adc d
    adc e
    db $fc
    rlca
    ld hl, sp+$27
    ld hl, sp+$47
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$23
    ldh a, [rDIV]
    call nz, $ffff
    rrca
    ld a, a
    nop
    ld h, e
    nop
    ld b, c
    jr jr_03e_78f4

    rst $38
    jr c, jr_03e_78b7

    jr c, jr_03e_78bb

    nop
    sbc a
    nop
    di
    sbc l

jr_03e_793d:
    inc c
    ld [hl+], a
    sub d
    jr @+$01

    jr c, jr_03e_7964

    nop
    pop bc
    sub d
    pop bc
    rst $30
    jp $8180


    ret nz

    ld bc, $3081
    add [hl]
    ld bc, $dfe5
    ret nz

    sub e

jr_03e_7956:
    cp $20
    sub [hl]
    jp nz, Jump_000_3001

    cp $01
    jp hl


    ld hl, sp+$30
    dec a
    ld d, c
    sub [hl]

jr_03e_7964:
    db $fc
    add b
    ld h, [hl]
    cp $1f
    scf
    rst $38
    rst $18
    dec sp
    rst $08

jr_03e_796e:
    sub c
    ld l, a
    rst $38
    nop
    ldh a, [rIE]
    nop
    ldh [$ff60], a
    ld hl, sp+$38
    db $fc
    inc e
    ld a, $ff
    sbc $3f
    rst $08
    rla
    ld h, a
    rst $38
    ret nz

    ldh a, [rIE]
    ret nz

    ldh a, [$ffc3]
    jr nc, jr_03e_796e

    ld hl, sp-$0f
    jr c, @-$3f

    pop af
    ld hl, sp-$0f
    call c, Call_000_3ff8
    nop
    sbc d
    ccf
    rst $38
    inc bc
    rra
    inc bc
    ld c, a
    ld b, c
    cpl
    ld hl, $ff6f
    ld h, c
    rlca
    nop
    rst $18
    ld e, a
    db $fd
    ld a, l
    ld l, a
    rst $38
    cpl
    ld a, a
    ccf
    ld a, l
    dec a
    ld a, a
    ccf
    ld [hl], a
    rst $38
    scf
    rra
    ld a, a
    and b
    ld a, a
    add d
    ld a, a
    ret nc

    rst $28
    ccf
    ret nz

    ccf
    jp nz, VBlankInterrupt

    ret z

    ccf
    add b
    rst $38
    rra
    rst $30
    rst $30
    db $fc
    rst $38
    jp c, $75df

    ei
    ld a, a
    add sp, $20
    ld [de], a
    ret nc

    call c, $f8f8
    ld [$10fe], sp
    ld a, [hl+]
    inc hl
    ei
    add a
    rst $30
    ld c, $ee
    inc c
    rst $28
    db $ec
    inc hl
    di
    rlca
    jr nz, @-$6a

    adc [hl]
    rst $38
    rrca

jr_03e_79ed:
    rst $18
    cp $1d
    cp $8d
    cp $90
    ld l, e
    db $e3
    nop
    rst $28
    ld bc, $3b3b
    cp $10
    nop
    inc e
    ld e, $fc
    rst $38
    cp $e0
    db $e3
    dec e
    ld e, $ff
    cp $fd
    rst $38
    ld [bc], a
    call z, $0c33
    di
    inc hl

jr_03e_7a11:
    rst $18
    add c
    rst $38
    ld a, a
    ld bc, $19c7
    jp $d709


    pop hl
    rst $38
    ld [bc], a
    jr nc, jr_03e_7a53

    ldh a, [$fff3]
    rst $18
    ret nz

    ld a, a
    rst $38
    nop
    rst $00
    jr c, jr_03e_79ed

    inc a
    rst $10
    jr c, jr_03e_7a11

    rst $38
    inc e
    add $39
    sbc b
    ld h, b
    ld h, [hl]
    sub b
    nop
    rst $38
    and $82
    ldh a, [$ff81]
    ldh a, [c]
    ret nz

    ld hl, sp-$24
    rst $38
    inc e
    cp c
    jr c, jr_03e_7aa5

    ld h, a
    db $10
    adc a
    ld h, $fb
    rst $18
    ldh a, [$ffe0]
    ld b, e
    ld hl, sp+$07
    sbc c
    ld l, a
    ld a, c

jr_03e_7a53:
    ei
    rst $38
    ld a, l
    jr nz, jr_03e_7a58

jr_03e_7a58:
    dec a
    ld a, a
    dec sp
    ld a, a
    jr c, jr_03e_7add

    ld a, a
    jr jr_03e_7ae0

    rla
    ld h, a
    di
    inc bc
    ld hl, $3f00
    ld a, e
    add e
    ld a, e
    add e
    ld a, b
    add b
    jr nz, jr_03e_7a70

jr_03e_7a70:
    ldh [c], a
    halt
    cp $01
    sub a
    ld [hl], e
    rst $30
    ld [hl], c
    di
    ldh [$ffe1], a
    nop
    cp a
    nop
    add e
    add e
    add [hl]
    add [hl]
    add a
    stop
    dec bc
    cp a
    dec bc
    dec c
    dec c
    ld e, $1e
    ld b, a
    ldh [$ff84], a
    ld a, a
    cp [hl]
    ld h, b
    and b
    rst $00
    rst $38
    adc c
    rst $38
    jp nz, $7590

    ld b, b
    rst $38
    ld b, a
    cp b
    cp b
    ld a, a
    ld a, a
    db $fc
    db $fc
    rst $00
    rst $38

jr_03e_7aa5:
    rst $00
    ld sp, hl
    ld sp, hl
    cp $fe
    ld c, $0e
    ld a, [bc]
    rst $30
    add hl, bc
    sub d
    add d
    ld b, c
    add b
    xor $ee
    cp $fe
    ld a, a
    rst $20
    push hl
    ld l, e
    ld h, d
    rst $30
    cp $7d
    ld [hl-], a
    add b
    cp $f1
    ld c, a

jr_03e_7ac4:
    ld e, $ff
    cp l
    rst $38
    db $10
    rst $00
    jr @+$01

    rst $20
    nop
    db $eb
    ld [$00f3], sp
    di
    adc b
    rst $38
    pop hl
    and c
    di
    db $10
    ld c, c
    rst $00
    jr c, jr_03e_7ac4

jr_03e_7add:
    rst $38
    jr @-$13

jr_03e_7ae0:
    inc e
    di
    inc c
    di
    inc c
    ld h, c
    ld a, a
    sbc [hl]
    ld [hl], e
    adc h
    ret


    cp [hl]
    pop bc
    db $fc

jr_03e_7aee:
    sub c
    ld c, e
    rst $38
    ld [hl], b
    rst $38
    ld l, c
    db $ec
    ld [hl], b
    rst $30
    ldh a, [$fff6]
    ei
    ld [hl], b
    or $41
    jr nc, jr_03e_7aee

    nop
    rst $28
    nop
    db $f4
    rst $38
    inc de
    rst $38
    ld [$09fe], sp
    cp $09
    dec e
    rst $38
    ld a, a
    rrca
    ccf
    ld c, a
    sbc a
    ld h, l
    rlca
    cp c

jr_03e_7b15:
    rst $38
    ld a, a
    ld [hl+], a
    ld b, a
    add b
    rra
    nop
    ld bc, $ff7c
    add b
    ld a, $c0
    sbc a
    ld h, b
    rlca
    ld hl, sp+$7f
    ld a, a
    add b
    ld b, a
    ld hl, sp+$1f
    ldh [rSB], a
    cp $01
    and b
    ld a, a
    add c
    add c
    ld d, [hl]
    ld d, d
    adc e
    add c
    ret nz

    stop
    rst $38
    ld b, b
    ret nz

    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    add a
    xor l
    rst $38
    cp $c0
    add e
    add c
    ld h, $90
    ld h, l
    ldh [$ff8f], a
    and l
    rst $38
    dec h
    ccf
    cpl
    or [hl]
    or [hl]
    ccf
    ccf
    rla

jr_03e_7b5a:
    rst $30
    rla
    pop af
    pop af
    pop hl
    adc a
    jp c, $d8ff

    rst $38
    db $fd
    ld c, c
    and b
    or a
    add sp, -$01
    cp d
    sbc b
    rst $30
    rst $30
    rst $30
    cp a
    cp [hl]
    or $60
    ld a, [de]
    cp h
    cp [hl]
    ld sp, hl
    db $fc
    ld [hl], a
    ld hl, sp-$03
    ld h, a

jr_03e_7b7c:
    ret nc

    add e
    ld b, c
    rst $38
    add hl, bc
    ret nz

    ld b, a
    rst $38
    ld b, d
    db $fd
    inc b
    ei
    dec b
    ei
    add h
    ld [hl], b
    cp $e0
    ld [hl], $c5
    jr nc, jr_03e_7b15

    ld h, b
    inc bc
    ldh [rSB], a
    rst $38
    jr nc, jr_03e_7b5a

    jr jr_03e_7b7c

    ldh a, [$ff8f]
    db $e3
    inc e
    rst $18
    push bc
    ld a, [hl-]
    add e
    ld a, h
    inc bc
    and b
    inc sp
    pop bc
    cp $7f

jr_03e_7baa:
    pop hl
    cp $38
    ld a, [$fa18]

jr_03e_7bb0:
    ld [$0020], sp
    rst $38
    jr c, jr_03e_7bb0

    jr nc, jr_03e_7baa

    ld h, b
    pop hl
    ld b, b
    pop bc
    db $eb
    cp $05
    ld h, $00
    dec c
    db $10
    db $10
    ld a, $80
    rlca
    db $fd
    ret nz

    add b
    ld h, $86
    ld a, b
    add d
    ld a, h
    ld b, d

jr_03e_7bd0:
    inc a
    db $ed
    inc a
    or c
    sub [hl]
    ld hl, sp+$01
    and b
    or l
    ld a, b
    rst $38
    ld a, h
    ei
    rst $38
    inc a
    or d
    cp h
    ld h, b
    ldh [rNR41], a
    ldh [rWave_7], a
    rst $30
    push af
    db $10
    ld [hl], b
    ld hl, $3000
    ld [hl], b
    jr nz, jr_03e_7bd0

    call z, $ac00
    nop
    add h
    ld a, a
    adc a
    inc hl
    nop
    ldh a, [$ffab]
    rra
    jp c, $9a7f

    dec bc
    ld [$80a4], sp
    add hl, bc
    add hl, bc
    ld b, h
    xor [hl]
    cp e
    rst $38
    ld h, l
    ret nz

    or c
    ld a, a
    rst $38
    or $54
    cp a
    ld sp, hl
    rst $38
    db $fc
    add sp, -$14

jr_03e_7c16:
    ld hl, sp-$02
    ld a, h
    ld a, a
    call c, $dcfd
    ld h, c
    ld c, d
    ei
    ei
    inc b
    ei
    inc d
    ei
    rst $18
    ld b, $f9
    add e
    db $fc
    inc hl
    ld h, d
    ld c, d
    inc b
    rst $38
    cp $20
    dec bc
    inc bc
    ld bc, $0307
    rst $38
    inc e
    db $fc
    ld e, [hl]
    add b
    sbc b
    inc b
    ret nz

    ret nz

    pop hl
    ld h, b
    ld d, l
    rlca
    ld h, c
    ld d, h
    xor d
    or b
    add [hl]
    ei
    or b
    or d
    ld b, b
    ld [hl], b
    inc de
    add b
    jr nz, @+$7c

    ld [bc], a
    ld a, a
    nop
    xor e
    add d
    xor e
    adc b
    inc d
    db $10
    jp nz, $dd39

    ld a, a
    or c
    rst $00
    ld a, l
    rst $38
    ld [hl], a
    ret nz

    cp d
    nop
    jp Jump_000_01ef


    ld a, a
    rlca
    rra
    ld h, b
    sbc d
    nop
    adc c
    adc b
    cp a
    ld h, h
    jr nz, jr_03e_7c16

    ld bc, $3cc3
    ld h, e
    rst $00
    rst $38
    ld a, [$01e0]
    rst $18
    add b
    and h
    ld h, d
    ldh [$ffd2], a
    jp nc, $ee19

    inc sp
    cp h
    nop
    sub b
    sub b
    ldh a, [$ff92]
    rra
    db $ed
    ccf
    dec b
    rst $30
    inc d
    ret


    ld l, a
    sub h
    ret


    ld h, b
    cp d
    ld b, d
    adc $f2
    ld b, c
    ld b, b
    rst $08
    di
    rra
    rra
    add b
    ld l, d
    pop hl
    cp l
    ld a, a
    rrca
    rrca
    rst $38
    adc e
    rst $38
    jp $cd32


    ld a, h
    ld h, b
    or a
    inc bc
    ld [bc], a
    rlca
    call nz, $44ff
    ldh [$ffc5], a
    ld d, c
    ret nc

    rrca
    ld d, d
    rst $08
    db $f4
    ld b, l
    ld [$1f02], sp
    add b
    add hl, bc
    ld [hl-], a
    ld d, e
    jp nc, $d03f

    sub [hl]
    dec b
    ld [bc], a
    nop
    nop
    pop hl
    and [hl]
    ld h, b
    dec a
    pop bc
    db $fc
    and c
    pop bc
    ld d, e
    call nc, $a2d1
    sub b
    rra
    inc b
    ld [$0f0f], sp
    db $eb
    ccf
    ccf
    and b
    adc h
    ld a, a
    ld bc, $bf04
    cp a
    rst $38
    rst $38
    rst $38
    db $ed
    db $ed
    ld a, [$5bf8]
    ld c, d
    db $fc
    ld e, a
    db $fc
    rst $30
    rst $30
    cp e
    cp e
    ld b, c
    ld d, e
    ld [de], a
    ld b, b
    cp [hl]
    rst $30
    or l
    rst $38
    dec bc
    ld [hl], b
    and h
    ld b, h
    rst $38
    ld [hl], a
    ld [hl], a
    rst $38
    call c, $f2dc
    ldh a, [$ff97]
    sub [hl]
    inc l
    inc l
    rst $38
    cp d
    adc b
    push de
    push bc
    db $ed
    db $ed
    adc b
    rst $38
    ld a, a
    inc hl
    rst $38
    adc a
    rst $38
    ld l, c
    rst $38
    rst $10
    ldh [rNR11], a
    db $fd
    cp d
    and b
    ld [bc], a
    set 1, e
    ld e, h
    ld e, h
    and l
    add l
    rst $38
    scf
    rlca
    ld e, l
    ld d, l
    cp d
    jr jr_03e_7d97

    dec c
    ld a, a
    xor $ce
    inc [hl]
    rst $38
    and e
    rst $38
    ld a, d
    ld h, b
    db $d3
    rst $30
    xor d
    rst $38
    rst $20
    nop
    add $31
    rst $38
    ld l, $2e
    rst $38
    db $db
    db $db
    db $ed
    db $ed
    push af
    pop af
    add hl, hl
    add hl, bc
    ld a, a
    sub e
    add e
    ld l, l
    ld l, l
    or a
    or a
    pop de

Call_03e_7d60:
Jump_03e_7d60:
    ld h, b
    cp a
    rst $10
    sub d
    rst $38
    ld l, $20
    cp b
    ld a, h
    add b
    nop
    ld c, b
    rst $38
    rst $30
    db $dd
    db $dd
    rst $38
    ld b, d
    nop
    ld l, d
    ld [hl+], a
    ld l, a
    ld l, a
    ld e, a
    db $dd
    db $dd
    ld a, d
    ld a, d
    ld [hl+], a
    db $10
    sbc $22
    add c
    ld bc, $f0ce
    or a
    ld [hl+], a
    rst $38
    add l
    ret nz

    db $db
    ld h, c
    dec e
    xor $ee
    xor a
    cp a
    cp a
    rst $30
    rst $30
    pop bc
    ld [bc], a
    inc b
    ld h, d

jr_03e_7d97:
    dec e
    ld de, $c0e2
    pop bc
    ld [$0280], sp
    pop af
    cp h
    ld h, c
    db $db
    rst $28
    rst $28
    ld a, a
    ld a, a
    ld a, a
    db $fd
    db $fd
    rst $18
    rst $18
    rst $30
    rst $30
    ld h, e
    db $db
    dec d
    db $10
    or b
    pop hl
    ld [bc], a
    ld b, b
    sbc $08
    or h
    pop hl
    add c
    jp $de83


    jp nz, $e3f3

    db $10
    halt
    ld a, h
    dec e
    nop
    db $fc
    or c
    ld b, d
    add sp, -$45
    rst $38
    ld c, c
    xor $e0

jr_03e_7dcf:
    ret c

    pop hl
    add [hl]
    ld d, l
    ld c, $03
    dec bc
    ld [bc], a
    ld d, a
    jp nz, Jump_03e_78d9

    daa
    ldh [$ff81], a
    jr jr_03e_7de7

    inc b
    ld a, [$e707]
    jr jr_03e_7dcf

    dec e

jr_03e_7de7:
    ei
    rlca
    rlca
    ldh [c], a
    ld e, $fe
    cp d
    db $fd
    add sp, -$09
    ld a, a
    or b
    rst $28
    ld h, c
    sbc $c3
    cp l
    ldh [$ffc0], a
    db $db
    pop af
    cp $c0
    and $41
    push de
    add c
    dec a
    ccf
    ccf
    rst $38
    add a
    rst $30
    ccf
    pop bc
    ld a, a
    jr nz, jr_03e_7e8c

    rst $18
    jr nz, @-$2f

    jr nc, jr_03e_7e51

    rrca
    db $fc
    nop
    rst $38
    add a
    add a
    ld d, b
    call z, $f3c4
    db $fc
    db $e3
    dec b
    nop
    xor $3f
    cp [hl]
    ld c, a
    db $db
    daa
    call z, Call_000_335f
    and $19
    pop hl
    sbc [hl]
    ldh [c], a
    jr nz, jr_03e_7e6f

    ld hl, $00df
    ldh [c], a
    push af
    ret nz

    and a
    rra
    nop
    rra
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
    ld c, $c5
    inc c
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_7e51:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_7e6f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_7e8c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03e_7fdf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
