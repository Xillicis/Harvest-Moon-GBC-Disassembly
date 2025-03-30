; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    dec d
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    dec e
    nop
    nop
    ldh [rP1], a
    db $18, $e0
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    daa
    dec de
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc
    inc b
    inc c
    inc bc
    rra
    ld [$f4fa], sp
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffea], a
    inc d
    inc e
    ldh [$fffc], a
    ld [$081f], sp
    ccf
    jr @+$40

    ld de, $071f
    rlca
    nop
    dec bc
    inc b
    rla
    ld [$001e], sp
    db $fc
    adc b
    ld a, [hl]
    adc h
    ld a, $c4

jr_015_4057:
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, @+$3e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $f4fa
    cp $90
    cp $b4
    db $fc
    sub b
    db $f4
    add sp, -$04
    nop
    ld e, $ec
    cp $0c
    ccf
    ld de, $011e
    ld c, $07
    dec b
    inc bc
    rrca
    nop
    inc de
    inc c
    rra
    nop
    ld c, $00
    db $fc
    add b
    ld [hl], b
    add b
    jr nc, jr_015_4057

    ldh a, [$ff60]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    jr nc, jr_015_40a1

jr_015_40a1:
    daa
    ld a, [de]
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc
    inc b
    inc c
    inc bc
    rra
    inc b
    ld a, [$fef4]
    sub b
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffe4], a
    jr @+$1a

    ldh [$fffc], a
    ld [$183f], sp
    ccf
    jr jr_015_40e4

    ld bc, $0307
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld b, $00
    cp $c4
    inc a
    ret nz

    jr c, @-$0e

    ret nc

    ld h, b
    ld hl, sp+$00
    db $e4
    jr @+$7e

    nop
    jr c, jr_015_40e1

jr_015_40e1:
    nop
    nop
    inc bc

jr_015_40e4:
    nop
    inc c
    inc bc
    jr jr_015_40f8

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_40f8:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e

Call_015_40fe:
    db $fc
    sub $7c
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    dec bc
    inc b
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ret c

    jr nz, jr_015_4186

    sub b
    db $f4
    ld c, b
    rrca
    inc b
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    dec b
    rlca
    nop
    rrca
    nop
    ld c, $01
    inc bc
    nop

jr_015_4131:
    add sp, $00
    ldh [$ffc0], a
    ldh [$ffc0], a
    ldh a, [rNR41]
    ldh [rP1], a
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    nop

jr_015_4142:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_4131

    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ret c

    jr nz, jr_015_4142

    ld e, b
    ld hl, sp+$20
    rrca
    ld b, $05
    ld [bc], a
    add hl, bc
    ld b, $0e
    rlca
    rra
    ld bc, $1827
    dec de
    inc b
    ld c, $00
    ld hl, sp+$70
    ld hl, sp+$30
    ldh a, [rP1]
    sbc h
    ld [hl], b
    cp $20
    ld a, $00
    inc a
    nop
    jr jr_015_4181

jr_015_4181:
    ld e, a

jr_015_4182:
    daa
    cpl
    inc d
    rra

jr_015_4186:
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    dec b
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa

jr_015_4197:
    db $f4
    ret z

    add sp, -$70
    ret c

    jr nz, jr_015_4182

    ld e, b
    ld hl, sp-$80
    rrca
    inc bc
    rrca
    inc bc
    dec de
    inc c
    add hl, de
    ld b, $7f
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR41]
    ret nc

    ldh [$fff8], a
    nop
    ld e, h
    jr nz, @-$46

    ld b, b
    ld [hl], b
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_41ce

    jr nz, jr_015_41e8

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_41ce:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_4197

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp+$6f
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_41e8:
    dec bc
    ld e, $01
    inc h
    dec de
    ld e, a
    jr nz, jr_015_422f

    db $10
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, @-$3e

jr_015_41fd:
    ldh a, [rP1]
    ld hl, sp+$10
    ccf
    nop
    ld a, a
    jr nc, @+$7a

    scf
    dec sp
    inc b
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    ld hl, sp+$00
    db $fc
    jr @+$3e

    ret c

    cp b
    ld b, b
    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld b, h
    dec sp
    ccf
    nop

jr_015_422f:
    ccf
    db $10
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, jr_015_41fd

jr_015_423d:
    ldh a, [rNR41]
    ldh a, [rP1]
    ld a, a
    jr nc, jr_015_42c3

    jr nc, @+$3a

    rlca
    inc de
    inc c
    ccf
    nop
    rra
    nop
    dec c
    nop
    nop

jr_015_4250:
    nop
    ld hl, sp+$10
    db $fc
    jr jr_015_428e

    ret nz

    ldh [$ffc0], a
    ldh a, [rNR41]
    and b
    ld b, b
    ret nc

    jr nz, jr_015_4250

    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld b, h
    dec sp
    ccf
    nop
    rra
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, jr_015_423d

    ldh a, [rNR41]
    ld hl, sp+$10
    ccf
    db $10
    ld a, a
    jr nc, jr_015_42be

    rlca
    rrca
    ld b, $1f
    ld [$040b], sp
    rla

jr_015_428e:
    ld [$001e], sp
    db $fc
    jr @-$02

    jr jr_015_42ce

    ret nz

jr_015_4297:
    sub b
    ld h, b
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
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
    inc d
    rrca
    ld a, [hl+]
    rra
    ccf
    rra
    inc [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_4297

    inc b
    ld hl, sp+$04
    ld hl, sp-$76
    db $fc
    ld d, [hl]

jr_015_42be:
    db $fc
    xor [hl]
    call c, Call_000_1d23

jr_015_42c3:
    scf
    ld [$163f], sp
    rra
    inc b
    rra
    inc bc
    dec bc
    inc b
    inc c

jr_015_42ce:
    inc bc
    rra
    ld [$2cf2], sp
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffe4], a
    jr @+$1c

    db $e4
    db $fc
    ld [$1d23], sp
    scf
    ld [$163f], sp
    rra
    inc b
    rra
    inc bc
    ccf
    jr jr_015_432a

    dec de
    rra
    inc b
    ldh a, [c]
    inc l
    cp $90
    cp $b4
    cp $90
    ld a, [$f4e4]
    ld [$d02c], sp
    cp $04
    rrca
    nop
    rlca
    nop
    ld b, $01
    rrca
    ld b, $07
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    cp $80
    call z, $bc30
    ld b, b
    db $fc
    nop
    db $fc
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    jr jr_015_4323

jr_015_4323:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_432a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    inc l
    cp $90
    cp $b4

jr_015_4337:
    db $fc
    sub b
    db $fc
    ldh [$fffe], a
    inc c
    ld a, $cc
    db $fc
    db $10
    rrca
    nop
    add hl, de
    ld b, $17
    ld [$001f], sp
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    ldh a, [$ff80]
    ldh a, [rP1]
    or b
    ld b, b
    ld hl, sp+$30

jr_015_4359:
    ldh a, [rP1]
    ldh [rP1], a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_4388

    ld l, d
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_4337

    jr nc, jr_015_4359

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$41
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf

jr_015_4388:
    add hl, de
    rra
    rrca
    rrca

jr_015_438c:
    nop
    inc b
    inc bc
    dec bc
    inc b
    call nz, $e478
    sbc b
    db $f4
    xor b
    add sp, -$70
    ret nc

    jr nz, @-$4e

    ld b, b

jr_015_439d:
    ld c, b
    or b
    db $f4
    ld c, b
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
    jr jr_015_43c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_439d

    inc b
    ld hl, sp+$0c

jr_015_43c0:
    ld hl, sp-$41
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    ccf
    rrca
    ld a, a
    jr nz, jr_015_444a

    inc sp
    dec sp
    inc b
    call nz, $e478
    sbc b
    db $f4
    xor b
    add sp, -$70
    ret nc

    jr nz, jr_015_438c

    ld b, b
    ld a, h
    and b
    cp $5c
    rrca
    inc b
    dec b
    ld [bc], a
    scf
    inc bc
    ld l, a
    inc d
    ld h, a
    ld a, [de]
    halt
    ld [$003c], sp
    jr jr_015_43f1

jr_015_43f1:
    cp $0c
    sbc $20
    sub a
    ld l, b
    rst $30
    sbc b
    rst $18
    jr nz, jr_015_442b

    nop
    ld b, $00
    nop
    nop
    cp a
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    ccf
    rrca
    ld a, a
    jr nc, jr_015_448d

    dec a
    ccf
    dec b
    call nz, $e478
    sbc b
    db $f4
    xor b
    add sp, -$70
    db $f4
    ld [$f008], sp
    or b
    ld b, b
    ld hl, sp-$70
    rrca
    nop
    dec bc
    inc b
    dec a
    ld a, [bc]
    ld a, h
    rlca
    ld a, e
    inc b

jr_015_442b:
    inc a
    nop
    jr jr_015_442f

jr_015_442f:
    nop

jr_015_4430:
    nop
    db $fc

jr_015_4432:
    jr jr_015_4430

    ld [$00fe], sp

jr_015_4437:
    ld a, a
    and b
    ei
    ld b, h
    ld e, d
    inc b
    ld d, $08
    inc c
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    scf

jr_015_444a:
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr jr_015_4432

    nop
    jr @-$1e

    inc h
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$0094], a
    nop
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

jr_015_4469:
    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_4437

    jr jr_015_4469

    ld c, h
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    or $1c
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra

jr_015_448d:
    inc [hl]
    rra
    inc hl
    dec e
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

jr_015_449e:
    nop
    nop
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld c, [hl]
    ld sp, $0b34
    dec de
    inc b
    ccf
    jr jr_015_449e

    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, @-$3e

    ldh a, [rNR41]
    ldh a, [rP1]
    ccf
    jr jr_015_44e3

    nop
    ld [$1d07], sp
    ld [bc], a
    rra
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    ld hl, sp+$10
    ld a, b
    add b
    ret nc

    ld h, b

jr_015_44d7:
    add sp, -$70
    sub b
    ld h, b
    cp b
    ld b, b
    ld hl, sp+$00
    ldh a, [rP1]
    ld l, a
    ccf

jr_015_44e3:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld c, [hl]
    ld sp, $0b34
    dec de
    inc b
    ccf
    db $10
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b

Call_015_44f8:
    and b
    ldh [rP1], a
    ld [hl], b
    and b
    ldh a, [rP1]
    ld hl, sp+$30
    ccf
    db $10
    rra
    nop
    ld e, $0d
    ccf
    ld [de], a
    ld d, $08
    ld l, $10
    ld l, $10
    ld e, $00
    ld hl, sp+$30
    ld [hl], b
    add b
    jr nz, jr_015_44d7

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]

jr_015_451d:
    ld h, b
    nop
    nop
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
    jr jr_015_4540

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_451d

    inc b
    ld hl, sp+$0c

jr_015_4540:
    ld hl, sp+$38
    rra
    dec l
    rra
    ld [hl], $1f
    dec h
    ld e, $23
    dec e
    scf
    ld [$063f], sp
    ccf
    inc d
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, Call_000_2cf2
    or $88
    cp $b0
    cp $94
    rra
    inc bc
    rra
    ld [$001f], sp
    ccf
    jr jr_015_45a7

    ld [de], a
    ld e, $00
    nop
    nop
    nop
    nop
    db $fc
    ldh [$fffc], a
    ld [$807c], sp

jr_015_4577:
    cp $0c
    ld e, [hl]
    inc h
    inc a
    nop
    nop
    nop
    nop
    nop
    daa
    ld a, [de]
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc

jr_015_458c:
    inc b
    inc e
    inc bc
    ccf
    jr jr_015_458c

    db $f4
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffea], a
    inc d
    inc e
    ldh [$fffe], a
    inc c
    ccf
    jr jr_015_45c3

    nop
    ld b, $01

jr_015_45a7:
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    cp $8c
    ld a, h
    add b
    jr nc, jr_015_4577

jr_015_45b7:
    add sp, $70
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_45fc

    nop
    scf
    ld a, [bc]

jr_015_45c3:
    ld a, a
    inc [hl]
    ld a, a
    ld h, $3f
    inc d
    ccf
    inc de
    dec de
    inc b
    ld c, $01
    rlca
    nop
    cp $f0
    rst $38
    sub [hl]
    rst $38
    or d
    cp $94
    cp $e4
    db $ec
    db $10
    jr c, @-$3e

    ldh a, [rP1]
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr nc, jr_015_45b7

    add sp, $70
    ld [hl], b
    nop
    ld a, b

jr_015_45fc:
    nop

jr_015_45fd:
    ld c, h
    jr nc, jr_015_463c

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
    ld [de], a
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_45fd

    inc b
    ld hl, sp-$5c
    ld hl, sp+$2b
    rra
    scf
    rra
    dec a
    rra
    ld a, [hl-]
    rra
    inc e
    dec bc
    ld [de], a
    dec c
    rrca
    nop
    ld [de], a
    dec c
    ld [$f6fc], a
    db $fc
    sbc $fc
    xor [hl]
    db $fc
    inc e
    add sp, $24

jr_015_463c:
    ret c

    ld l, b
    sub b
    jr @-$1e

    ccf
    nop
    rra
    ld [$103f], sp
    ccf
    jr jr_015_4665

    inc b
    inc d
    dec bc
    dec bc
    inc b
    ld b, $00
    ld hl, sp+$10
    db $fc
    ld [$04fe], sp
    cp $0c
    db $ec
    db $10
    inc e
    ldh [$fff8], a
    nop
    jr nc, jr_015_4661

jr_015_4661:
    scf
    rra
    ld a, [de]
    rrca

jr_015_4665:
    dec d
    dec bc
    ld a, [bc]
    dec b
    rrca
    nop
    ld [de], a
    dec c
    cpl
    db $10
    ccf
    ld [$fcf6], sp
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    inc e
    ldh [$fffe], a
    inc d
    cp $0c
    rra

jr_015_4682:
    nop
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    rra
    nop
    dec bc
    inc b
    ld b, $00
    db $fc
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_4682

    ld [hl], b
    db $fc
    nop
    ld e, b
    jr nz, jr_015_46d0

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
    jr z, jr_015_46cc

    ld a, [hl-]
    rra
    ld a, l
    rra
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    ld [hl], a
    rra
    ld a, d
    cpl
    ld [hl], l
    dec hl
    ld a, [hl-]
    dec d
    ccf
    db $10
    ld [de], a

jr_015_46cc:
    dec c
    daa
    jr jr_015_46ef

jr_015_46d0:
    nop
    rst $30
    db $fc
    xor a
    ld a, [$ea57]
    ld l, $d4
    ld a, [hl]
    add h
    inc e
    ldh [$fff8], a
    db $10
    ldh a, [rP1]
    rlca

jr_015_46e2:
    nop
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    rra
    nop
    dec bc
    inc b

jr_015_46ef:
    ld b, $00
    ldh a, [rP1]
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_46e2

    ld [hl], b

jr_015_46fb:
    db $fc
    nop
    ld e, b
    jr nz, jr_015_4730

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_4710

    jr nz, jr_015_472a

    ld l, d
    ccf
    ld [hl], h
    ccf
    rst $18

jr_015_4710:
    ld l, c
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    jr nc, jr_015_46fb

    sbc b
    ldh a, [$ff74]
    ld hl, sp+$5c
    ld hl, sp-$51
    ld d, [hl]
    cp a
    ld c, a
    sbc a
    ld l, c
    ld e, a
    dec hl
    ccf

jr_015_472a:
    add hl, de
    rra
    rrca
    rrca
    nop
    inc b

jr_015_4730:
    inc bc
    xor h
    ld hl, sp-$3c
    ld a, b
    db $e4
    sbc b

jr_015_4737:
    db $fc
    and b
    ldh a, [c]
    adc h
    call nz, Call_015_7838

jr_015_473e:
    add b
    ldh a, [rLCDC]
    rrca
    nop
    rra
    rrca
    rra
    inc b
    dec c
    ld [bc], a
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $f000
    ret nz

    ret z

    jr nc, jr_015_473e

    db $10
    ret c

    ldh [$fff0], a
    nop
    sbc b
    ld h, b
    jr c, @-$3e

    ld hl, sp+$00
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_4788

    ld l, d
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_4737

jr_015_4777:
    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$41
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf

jr_015_4788:
    add hl, de
    rra
    rrca
    rrca
    nop
    dec e
    ld [bc], a
    ccf
    add hl, de
    call nz, $e478
    sbc b
    db $f4
    xor b

jr_015_4797:
    add sp, -$70
    ret c

    jr nz, @-$5a

    ld e, b
    ldh a, [c]
    adc h
    db $fc
    add b
    ccf
    ld e, $1f
    nop
    dec c
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    rra
    nop
    ld e, $01
    inc bc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    jr nz, jr_015_4777

    ret nc

    ldh [$ffe0], a
    nop
    or b
    ld b, b
    ld [hl], b
    add b
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_47e8

    ld l, d
    ccf
    ld [hl], a

jr_015_47cc:
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_4797

jr_015_47d7:
    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    jr c, jr_015_47cc

    ret c

    cp a
    ld c, [hl]
    ld e, a
    jr z, jr_015_4825

    dec bc
    ccf

jr_015_47e8:
    add hl, de
    rra
    rrca
    rrca
    nop
    dec b
    ld [bc], a
    rrca
    inc b
    db $e4
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    add sp, $50
    ld hl, sp+$40
    db $e4
    sbc b
    ldh a, [c]
    call z, Call_000_00fc
    rrca
    inc b
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    rra
    nop
    ld e, $01
    inc bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, jr_015_47d7

    ret nc

    ldh [$ffe0], a
    nop
    jr nc, @-$3e

    ld [hl], b
    add b
    ldh a, [rP1]
    jr c, jr_015_4842

    dec l
    rra

jr_015_4825:
    ld [hl], $1f
    dec h
    ld e, $23
    dec e
    scf
    ld [$061f], sp
    ccf
    inc b
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, Call_000_2cd2
    or $88
    db $fc
    or b
    cp $90
    ld a, a

jr_015_4842:
    inc sp
    ld a, a
    inc [hl]
    scf
    ld [$060f], sp
    rrca
    nop
    add hl, bc
    ld b, $13
    inc c
    ld e, $00
    rst $38
    and $ff
    ld d, $76
    adc b
    ld hl, sp+$30
    ld hl, sp+$00
    ret z

    jr nc, jr_015_48ca

    db $10
    inc a
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    scf
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr jr_015_48bf

    ld d, $18
    ldh [rNR50], a
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld a, [$fa94]
    or h
    ccf
    inc b
    ccf
    rla
    rra
    rlca
    rrca
    inc bc
    dec bc
    inc b
    inc e
    dec bc
    ccf
    db $10
    ccf

jr_015_48b0:
    jr jr_015_48b0

    sub b
    cp $f4
    db $fc
    ld [hl], b
    db $fc
    ld h, b
    ld [$2414], a
    ret c

    cp $04

jr_015_48bf:
    cp $8c
    rra
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    dec c

jr_015_48ca:
    ld [bc], a
    inc de
    inc c
    ld d, $08
    inc c
    nop
    ld a, h
    add b
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b
    nop
    cp b
    ld b, b
    ld e, h
    jr nz, jr_015_490a

    db $10
    jr jr_015_48e1

jr_015_48e1:
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_48f8

    jr c, jr_015_490a

    dec l
    rra
    scf
    ld e, $2b
    dec e
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_015_48f8:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    call c, Call_000_2cfa
    ccf
    ld [bc], a
    ld a, a
    jr nc, jr_015_4985

    ld h, $3f
    inc d
    ccf

jr_015_490a:
    inc de
    rra
    ld [$011e], sp
    rrca
    nop
    cp $e0
    rst $38
    add [hl]
    rst $38
    or d
    cp $94
    cp $e4
    db $fc
    ld [$c03c], sp
    ld hl, sp+$00
    inc e
    rlca
    daa
    ld a, [de]
    dec sp
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
    inc e
    ldh a, [$fff6]
    jr z, jr_015_49a4

    db $10
    ld l, [hl]
    db $10
    inc a
    nop
    jr jr_015_493d

jr_015_493d:
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
    jr jr_015_4958

    jr c, jr_015_496a

    dec l
    rra
    scf
    ld e, $2b
    dec e
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_015_4958:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    call c, $9c6a
    ccf
    inc bc
    ld a, a
    jr nc, jr_015_49e5

    ld h, $3f
    inc d
    ccf

jr_015_496a:
    inc de
    rra
    ld [$011e], sp
    ccf

jr_015_4970:
    jr jr_015_4970

    ld h, b
    rst $38
    add [hl]
    rst $38
    or d
    cp $94
    cp $e4
    db $fc
    ld [$c03c], sp
    cp $0c
    nop
    nop
    nop
    nop

jr_015_4985:
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

jr_015_498b:
    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    jr jr_015_498b

    ld c, h
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    ld d, a
    dec hl
    ld e, a

jr_015_49a4:
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    ld b, $01
    sub $7c
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $fc
    add b
    ldh [c], a
    inc e
    ld [hl], h
    xor b
    rrca
    inc b
    dec e
    ld a, [bc]
    dec e
    ld b, $07
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $0000
    nop
    db $fc
    db $10
    cp $1c
    cp $e8
    db $ec
    db $10
    cp b
    ld b, b
    jr c, @-$3e

    ldh a, [rP1]
    nop
    nop

jr_015_49e1:
    nop
    nop
    nop
    nop

jr_015_49e5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
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
    ldh [rP1], a
    jr jr_015_49e1

    dec c
    rlca
    dec de
    rrca
    dec e
    rrca
    ld [hl], $1b
    cpl
    inc d
    cpl
    db $10
    ccf
    dec c
    rra
    inc b
    inc b
    ld hl, sp+$42
    db $fc
    and [hl]
    call c, $3ec7
    db $eb
    cp [hl]
    rst $18
    cp [hl]
    db $eb
    sbc $e1
    sbc $0f
    rlca
    rlca
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0007
    rrca
    inc b
    rrca
    inc b
    rrca

jr_015_4a30:
    nop
    ldh a, [c]
    xor h
    db $e4
    sbc b
    ret c

    jr nz, jr_015_4ab0

    add b
    db $e4
    ld e, b
    ldh a, [c]
    ld c, h
    db $fc
    jr nz, jr_015_4a30

    jr nz, jr_015_4a4d

    inc b
    inc b
    inc bc
    rlca
    nop
    rrca
    dec b
    rlca
    nop
    ld c, $01

jr_015_4a4d:
    ld c, $01
    ld bc, $f800
    jr nc, jr_015_4acc

    or b
    ldh a, [$ff80]
    ldh a, [rP1]
    or b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0007
    rrca
    inc b
    rrca
    inc b
    rrca

jr_015_4a70:
    nop
    ldh a, [c]
    xor h
    db $e4
    sbc b
    ret c

    jr nz, jr_015_4ae8

    add b
    add sp, $50
    db $f4
    ld c, b
    db $fc
    jr nz, jr_015_4a70

    jr nz, jr_015_4a91

    rlca
    rlca
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0007
    rrca
    inc b
    rrca
    inc b
    rrca
    nop

jr_015_4a91:
    ldh a, [c]
    xor h
    db $e4
    sbc b
    ret c

    jr nz, jr_015_4b08

    add b
    add sp, $50
    ld hl, sp+$40
    ld hl, sp+$20
    ldh a, [rNR41]
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_4ab8

    ld [hl-], a
    rra
    ld e, l
    ld h, $7b
    inc e
    cp a

jr_015_4ab0:
    ld h, e
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_4ab8:
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    sub $7c
    rst $08
    ld [hl], a
    cp a
    ld b, h
    ld c, a
    dec b
    rra
    inc c
    rrca
    rlca
    rlca

jr_015_4acc:
    nop
    ld [bc], a
    ld bc, $0007
    ldh a, [c]
    adc h
    ld a, [$fbb4]
    or h
    db $fd
    jp nc, $96f9

    ld a, [$7c24]
    or b
    cp $00
    rlca
    ld bc, $0102
    ld c, $03
    rla

jr_015_4ae8:
    ld [$030c], sp
    ld b, $01
    ld bc, $0000
    nop
    db $fc
    nop
    ld a, b
    add b
    adc b
    ld [hl], b
    ret z

    ldh a, [$fff0]
    jr nz, jr_015_4b5c

    add b
    ldh [rP1], a
    ret nz

    nop
    rst $08
    ld [hl], a
    cp a
    ld b, h
    ld c, a
    dec b
    rra

jr_015_4b08:
    inc c
    rrca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0007
    ldh a, [c]
    adc h
    ld a, [$fab4]
    or h
    db $fc
    ret nc

    ld a, [$f994]
    ld h, $7e
    or b
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_4b32

    jr nz, @+$21

    dec h
    rra
    ld d, a
    ccf
    nop

jr_015_4b32:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp+$6f
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    jr c, @+$19

    inc h
    dec de
    ld [hl], $09
    ld c, b
    scf
    sbc a
    ld l, b
    db $ec
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38
    ret nc

    ld c, b
    or b
    ret nc

jr_015_4b5c:
    jr nz, jr_015_4b8e

    ret nz

    ld hl, sp+$20
    ld a, a
    nop
    ccf
    db $10
    rra
    nop
    rla
    ld [$0738], sp
    rra
    nop
    inc c
    nop
    nop
    nop
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
    ret nc

    jr nz, jr_015_4bb2

    ret nz

jr_015_4b7b:
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_4b8c

    jr nz, jr_015_4ba6

    jr nc, @+$21

    ld d, b
    ccf
    ld l, b

jr_015_4b8c:
    ccf
    ld e, d

jr_015_4b8e:
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, @-$3e

jr_015_4b95:
    ld [$18f0], sp
    ldh a, [rNR14]
    ld hl, sp+$2c
    ld hl, sp-$4c
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_4ba6:
    dec bc
    ld e, $01
    dec h
    ld a, [de]
    ld e, a
    jr nz, @+$01

    ld d, b
    rst $38
    ld h, b
    ld e, b

jr_015_4bb2:
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nc, jr_015_4b7b

jr_015_4bbb:
    db $fc
    db $10
    cp $0c
    cp $0c
    ld l, a
    nop
    ld [$1d07], sp
    ld c, $0f
    nop
    ld [de], a
    inc c
    ld d, $08
    ld e, $00
    inc c
    nop
    db $ec
    nop
    jr nz, jr_015_4b95

    ret nc

    ldh [$ffe0], a
    nop
    sub b
    ld h, b

jr_015_4bdb:
    ret nc

    jr nz, @-$0e

    nop
    ld h, b
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld c, a
    jr nc, @-$0f

    ld d, b
    rst $38
    ld h, b
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nc, jr_015_4bbb

    db $fc
    db $10

jr_015_4bfd:
    cp $0c
    cp $0c
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    dec d
    ld a, [bc]
    ld h, a
    jr jr_015_4bfd

    ld d, b
    rst $38
    ld h, b
    ld e, b
    ldh a, [$ffa8]
    ret nc

jr_015_4c15:
    ld d, b
    and b
    ldh [rP1], a
    jr nc, jr_015_4bdb

    db $fc
    db $10
    cp $0c
    cp $0c
    dec [hl]
    rra
    ld a, [hl+]
    rla
    ld [hl], h
    dec bc
    ld c, [hl]
    ld sp, $1827
    inc [hl]
    dec bc
    rra
    nop
    ccf
    nop
    ld e, b

jr_015_4c32:
    ldh a, [$ffa8]
    ret nc

    ld e, h
    xor b
    db $fc
    jr jr_015_4c32

    db $10
    ld [hl], b
    and b
    ldh a, [rP1]
    ld hl, sp+$00
    jr jr_015_4c4a

    jr c, jr_015_4c4c

    ccf
    nop
    ld d, $08
    inc c

jr_015_4c4a:
    nop
    nop

jr_015_4c4c:
    nop
    nop
    nop
    nop
    nop
    jr nc, @-$3e

    jr c, jr_015_4c15

    ld hl, sp+$00
    ret nc

    jr nz, jr_015_4cba

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    ld [hl], h
    dec hl
    ld a, [hl]
    ld hl, $1827
    ld d, h
    dec hl
    ccf
    nop
    rra
    nop
    ld e, b

jr_015_4c72:
    ldh a, [$ffa8]
    ret nc

    ld e, h
    xor b
    db $fc
    jr jr_015_4c72

    db $10
    ld [hl], b
    and b
    ldh a, [rP1]
    ldh a, [rP1]
    jr c, jr_015_4ca2

    dec l
    rra
    ld [hl], $1f
    inc [hl]
    rrca
    ld a, e
    dec [hl]
    ld a, a
    jr nc, jr_015_4ccd

    ld d, $3f
    inc d
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor [hl]
    ret c

    rst $18
    ld h, $ff
    add [hl]
    cp $b4

jr_015_4c9f:
    cp $94
    ccf

jr_015_4ca2:
    inc de
    rra
    inc b
    rrca
    nop
    rrca
    ld b, $0e
    ld bc, $0609
    inc de
    inc c
    ld e, $00
    cp $e4
    db $fc
    db $10
    ld a, b
    add b

jr_015_4cb7:
    ld hl, sp+$30
    cp b

jr_015_4cba:
    ld b, b
    ret z

    jr nc, jr_015_4d2a

    db $10
    inc a
    nop
    ccf
    ld b, $7f
    inc [hl]
    ld a, a
    scf
    ccf
    rla
    ccf
    dec de
    rra
    inc b

jr_015_4ccd:
    ld c, $01
    rlca
    nop
    cp $b0
    rst $38
    sub [hl]
    rst $38
    or $fe
    ld [hl], h
    cp $6c
    db $fc
    db $10
    jr c, jr_015_4c9f

    ldh a, [rP1]
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    dec c
    ld [bc], a
    inc de
    inc c
    ld d, $08
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr nc, jr_015_4cb7

    add sp, $70
    ld [hl], b
    nop
    cp b
    ld b, b

jr_015_4cfd:
    ld e, h
    jr nz, jr_015_4d2c

    db $10
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0003
    ldh a, [c]
    ld l, h
    ldh a, [c]
    ld l, h
    ld a, [$f4a4]
    xor b
    ld hl, sp-$60
    db $fc
    ld b, b
    ldh a, [c]
    ld l, h
    ld sp, hl
    ld h, $03
    ld bc, $0007
    dec c
    ld b, $07
    nop
    rrca

jr_015_4d2a:
    nop
    rrca

jr_015_4d2c:
    nop
    ld bc, $0000
    nop
    cp $00
    db $fc
    nop
    db $f4
    add sp, -$14
    db $10
    ld hl, sp+$00
    jr c, jr_015_4cfd

    ldh a, [rP1]
    nop
    nop
    dec c
    rlca
    dec de
    rrca
    dec e
    rrca
    ld [hl], $1b
    cpl
    inc d
    cpl
    db $10
    ccf
    dec c
    rra
    inc b
    inc b
    ld hl, sp+$42
    db $fc

jr_015_4d55:
    and [hl]
    call c, $3ec7
    db $eb
    cp [hl]
    rst $38
    ld e, $fb
    ld l, [hl]
    pop af

jr_015_4d60:
    ld l, [hl]
    ld bc, $0300
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    ld c, h
    db $e4
    ld e, b
    ld hl, sp+$40
    ld hl, sp+$20
    db $f4
    ld l, b
    ldh a, [c]
    inc c
    db $fc
    jr nz, jr_015_4d60

    nop
    nop
    nop
    jr jr_015_4d85

jr_015_4d85:
    jr jr_015_4d87

jr_015_4d87:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_4d8d

jr_015_4d8d:
    jr jr_015_4d8f

jr_015_4d8f:
    nop
    nop
    ldh [rP1], a
    jr nz, jr_015_4d55

    ret nz

    add b
    ldh [rP1], a
    or b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [hl-]
    dec d

jr_015_4da7:
    ccf
    db $10
    ld [hl-], a
    dec c
    daa
    jr jr_015_4dcd

    inc b
    rlca
    nop
    xor h
    ld hl, sp+$54
    add sp, $2e
    call nc, $8c7e
    ld e, $e8
    db $fc
    db $10
    ld hl, sp+$10
    ldh a, [rP1]
    rlca
    nop
    dec bc
    inc b
    ld a, [bc]
    dec b
    dec e
    ld [bc], a
    rrca
    nop
    ld b, $00

jr_015_4dcd:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    add sp, $10
    jr z, jr_015_4da7

    call c, Call_015_7820
    nop
    jr nc, jr_015_4ddd

jr_015_4ddd:
    nop
    nop
    nop
    nop
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    dec bc
    inc b
    dec bc
    inc b
    rrca
    nop
    ld b, $00
    ldh a, [rP1]
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b
    nop
    ld l, b
    db $10
    ld l, b
    db $10
    ld a, b
    nop
    jr nc, jr_015_4e01

jr_015_4e01:
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr z, jr_015_4e2a

    ld [hl-], a
    rra
    dec a
    rra
    ccf
    rra
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld h, $fc
    ld e, [hl]
    db $fc
    cp $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_4e2a:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $1a
    ld c, $37
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr jr_015_4e89

    ld b, $18
    ld h, b
    inc h
    ld a, b
    ld l, h
    ld a, b
    ld d, [hl]
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$ce94], a
    or b
    rra
    ld [bc], a
    ld b, $01
    inc b
    inc bc
    ld c, $07
    dec c
    ld [bc], a
    dec e
    ld c, $1e
    nop
    nop
    nop
    or $2c
    ld a, $cc
    sbc h
    ld h, b
    add sp, $70
    ret c

    jr nz, jr_015_4ef0

    jr c, jr_015_4eba

    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca

jr_015_4e89:
    inc sp
    dec e
    dec [hl]
    ld a, [de]
    add hl, hl
    ld d, $2b
    rla
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$14
    sbc b
    sub [hl]
    ld l, h
    ld c, d
    or h
    adc $b4
    ld [$3ff4], a
    ld b, $3f
    inc d
    ld a, $01
    ld a, $0d
    dec de
    inc c
    ccf
    ld de, $1a35
    rra
    ld [bc], a
    cp $30
    ld a, [hl]
    sub h
    ld a, $c0
    ld a, $d8
    db $f4

jr_015_4eba:
    jr @-$04

    call nz, $ac56
    ld a, h
    and b
    rlca
    ld [bc], a
    ld b, $01
    inc b
    inc bc
    ld c, $07
    dec c
    ld [bc], a
    dec e
    ld c, $1e
    nop
    nop
    nop
    ldh a, [rNR41]
    jr nc, @-$3e

    sub b
    ld h, b
    add sp, $70
    ret c

    jr nz, jr_015_4f50

    jr c, jr_015_4f1a

    nop
    nop
    nop
    ccf
    inc b
    ccf
    inc de
    ld a, $03
    rra
    inc b
    dec de
    inc c
    rra
    add hl, bc
    dec c
    ld [bc], a
    rrca

jr_015_4ef0:
    ld [bc], a
    cp $70
    xor $34

jr_015_4ef5:
    sbc $60
    ld [hl], h
    adc b
    db $ec
    db $10
    cp $cc
    ld d, h
    xor b
    ld a, h
    xor b
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    inc [hl]
    rra
    ccf
    dec e
    scf
    ld a, [de]
    dec l
    ld d, $e0
    nop
    jr jr_015_4ef5

    inc b
    ld hl, sp+$4c
    ld hl, sp-$2a

jr_015_4f1a:
    cp h
    ld [$d65c], a
    xor h
    jp z, $3fb4

    rlca
    ccf
    inc d
    ccf
    inc bc
    dec l
    inc de
    dec de
    inc b
    rra
    dec c
    dec e
    ld a, [bc]
    rrca
    ld [bc], a
    xor $f0
    cp $34

jr_015_4f35:
    xor $70
    sbc d
    ld h, h
    db $f4
    ld [$dcee], sp
    call nc, Call_015_7ca8
    xor b
    ld bc, $0600
    ld bc, $070c
    ld a, [de]
    rrca
    dec e
    rrca
    ld [hl], $1b
    ld l, a
    inc d
    rst $28

jr_015_4f50:
    ld d, e
    ldh [rP1], a
    jr jr_015_4f35

    inc c
    ld hl, sp-$3a
    db $fc
    and $bc
    rst $18
    ld a, $f7
    sbc $eb
    sbc $ef
    sub $ff
    ld h, d
    ld a, a
    ld l, $3f
    dec b
    rra
    ld [$030c], sp
    rrca
    nop
    rra
    ld [bc], a
    ld sp, hl
    ld h, [hl]
    db $fd
    ld [$64fa], a
    db $f4
    ret z

    ld hl, sp+$00
    ld h, h
    sbc b
    ldh a, [c]
    ld l, h
    db $fc
    nop
    rra
    ld [bc], a
    dec c
    ld [bc], a
    ld [bc], a
    ld bc, $0306
    rrca
    ld bc, $001f
    ld e, $00
    nop
    nop
    db $fc

jr_015_4f92:
    jr jr_015_4f92

    inc c
    cp $0c
    inc e
    ldh a, [$fff8]
    ld h, b
    ld l, h
    db $10
    ld e, [hl]
    jr nz, jr_015_501c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    jr jr_015_4fbb

    ld [hl-], a
    ld e, $3d
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    db $10
    ld h, b

jr_015_4fbb:
    jr jr_015_502d

    ld c, h
    ld a, b
    inc a
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $18
    ld c, $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_4ff7:
    ld h, b
    nop
    jr jr_015_505b

    inc b
    ld a, b
    inc c
    ld a, b

jr_015_4fff:
    ld c, $fc
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_015_4ff7

jr_015_5017:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56

jr_015_501c:
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    scf
    ld a, [bc]
    ld a, a
    inc [hl]
    ld a, a
    ld h, $3f
    inc d
    ccf
    inc de
    dec de
    inc b

jr_015_502d:
    ld c, $01
    rlca
    nop
    cp $f0
    rst $38
    sub [hl]
    rst $38
    or d

jr_015_5037:
    cp $94
    cp $e4
    db $ec
    db $10
    jr c, jr_015_4fff

    ldh a, [rP1]
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr nc, jr_015_5017

    add sp, $70
    ld [hl], b
    nop

jr_015_505b:
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_509c

    nop
    rlca
    nop
    rlca
    nop
    ld c, $07
    dec b
    inc bc
    rrca
    nop
    inc de
    inc c
    rra
    nop
    ld c, $00
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr nc, jr_015_5037

jr_015_5077:
    ldh a, [$ff60]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_015_5081

jr_015_5081:
    rlca
    nop
    rlca
    nop
    ld b, $01

jr_015_5087:
    rlca
    inc bc
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr c, jr_015_5087

    ret nc

    ld h, b

jr_015_5099:
    ld hl, sp+$00
    db $e4

jr_015_509c:
    jr jr_015_511a

    nop
    jr c, jr_015_50a1

jr_015_50a1:
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_50c8

    ld l, d
    ccf
    ld [hl], a

jr_015_50ac:
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_5077

jr_015_50b7:
    jr nc, jr_015_5099

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    jr c, jr_015_50ac

    ret c

    cp a
    ld c, [hl]
    ld e, a
    jr z, jr_015_5105

    dec bc
    ccf

jr_015_50c8:
    add hl, de
    rra
    rrca
    rrca
    nop
    dec b
    ld [bc], a
    rrca
    inc b
    db $e4
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    add sp, $50
    ld hl, sp+$40
    db $e4
    sbc b
    ldh a, [c]
    call z, Call_000_00fc
    rrca
    inc b
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    rra
    nop
    ld e, $01
    inc bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, jr_015_50b7

    ret nc

    ldh [$ffe0], a
    nop
    jr nc, @-$3e

    ld [hl], b
    add b
    ldh a, [rP1]
    rrca
    inc b
    rrca
    nop

jr_015_5105:
    dec de
    inc c
    ld c, $07
    rra
    nop
    daa
    jr @+$1d

    inc b
    ld c, $00
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR41]
    sbc b
    ld h, b
    db $fc

jr_015_511a:
    nop
    inc a
    nop
    ld a, b
    nop
    jr nc, jr_015_5121

jr_015_5121:
    rrca
    inc b
    rrca
    nop
    dec de
    inc c
    add hl, de
    ld b, $7f
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR41]

jr_015_5137:
    ret nc

    ldh [$fff8], a
    nop
    ld e, h
    jr nz, @-$46

    ld b, b
    ld [hl], b
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
    jr z, jr_015_516c

    ld a, [hl-]
    rra
    ld a, l
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_5137

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    ld [hl], a
    rra
    ld a, d
    cpl
    ld [hl], l
    dec hl
    ld a, [hl-]
    dec d
    ccf
    nop
    ld [hl+], a

jr_015_516c:
    dec e
    rra
    nop
    rlca
    nop
    rst $30
    db $fc
    xor a
    ld a, [$ea57]
    ld l, $d4
    ld a, [hl]
    add h
    inc e
    ldh [$fff8], a
    db $10
    ldh a, [rP1]
    rlca

jr_015_5182:
    nop
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    rra
    nop
    dec bc
    inc b
    ld b, $00
    ldh a, [rP1]
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_5182

    ld [hl], b
    db $fc
    nop
    ld e, b
    jr nz, jr_015_51d0

    nop
    ld [hl], a
    rra
    ld a, d
    cpl
    ld [hl], l
    dec hl
    ld a, [hl-]
    dec b
    daa
    jr @+$14

    dec c
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc b

jr_015_51b6:
    inc bc
    dec c
    ld b, $1f
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $10
    ldh [$fff0], a
    ld h, b
    ld hl, sp+$10
    ret nc

    jr nz, jr_015_51b6

    db $10
    ld a, b

jr_015_51d0:
    nop
    ld [hl], a
    rra
    ld a, d
    cpl
    ld [hl], l
    dec hl
    ld a, [hl-]
    dec d
    ccf
    db $10
    ld [de], a
    dec c
    daa
    jr jr_015_51ff

    nop
    rlca
    nop
    rlca
    nop
    inc b
    inc bc
    rlca
    inc bc
    rrca
    inc b
    dec b
    ld [bc], a
    dec bc
    inc b
    rrca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $10

jr_015_51f6:
    ldh [$ffc8], a
    jr nc, jr_015_51f6

    nop
    ld hl, sp+$00
    or b
    nop

jr_015_51ff:
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
    inc d
    rrca
    ld a, [hl+]
    rra
    ccf
    rra
    inc [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp-$76
    db $fc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, $0d33
    ld a, a
    jr nc, jr_015_52a5

    ld h, $3f
    inc d
    ccf
    inc de
    dec de
    inc b
    ld c, $01
    rlca
    nop
    or $28
    rst $38
    sub [hl]
    rst $38
    or d
    cp $94
    cp $e4
    db $ec
    db $10
    jr c, jr_015_51ff

    ldh a, [rP1]
    ld [hl], a
    rra
    ld a, d
    cpl
    ld [hl], l
    dec hl
    ld a, [hl-]
    dec d
    ccf
    db $10
    ld [de], a
    dec c
    daa
    jr jr_015_526f

    nop
    nop
    nop
    jr jr_015_5255

jr_015_5255:
    jr jr_015_5257

jr_015_5257:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_525d

jr_015_525d:
    jr jr_015_525f

jr_015_525f:
    nop
    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    rrca
    ld b, $07
    nop
    inc bc
    nop
    inc bc
    nop

jr_015_526f:
    nop
    nop
    ld hl, sp-$80
    call z, $bc30
    ld b, b
    db $fc
    nop
    db $fc
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    add hl, de
    ld b, $17
    ld [$001f], sp
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    ldh a, [$ff80]
    ldh a, [rP1]
    or b
    ld b, b
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rP1], a
    ld h, b
    nop
    nop
    nop
    inc hl
    dec e
    ld [hl], $0b

jr_015_52a5:
    ccf
    inc d
    rra
    ld b, $0f
    inc b
    rrca
    inc bc
    dec bc
    inc b
    rra
    dec bc
    ld h, d
    sbc h
    or $68
    cp $94

jr_015_52b7:
    cp $b0
    ld sp, hl
    sub [hl]
    or $e8
    cp $04
    cp $18
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_52da

    jr c, @+$21

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_015_52b7

    inc b
    ld hl, sp+$0c

jr_015_52da:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or d
    db $fc
    nop
    nop
    jr jr_015_52e5

jr_015_52e5:
    jr jr_015_52e7

jr_015_52e7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_52ed

jr_015_52ed:
    jr jr_015_52ef

jr_015_52ef:
    nop
    nop
    nop
    nop
    jr jr_015_52f5

jr_015_52f5:
    jr jr_015_52f7

jr_015_52f7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_52fd

jr_015_52fd:
    jr jr_015_52ff

jr_015_52ff:
    nop
    nop
    db $e4
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    db $ec
    ld d, b
    ldh a, [c]
    ld c, h
    db $e4
    sbc b
    ld hl, sp-$40
    ldh a, [rP1]
    rrca
    inc b
    dec b
    ld [bc], a
    scf
    inc bc
    ld l, a
    inc d
    ld h, a
    ld a, [de]
    halt
    ld [$003c], sp
    jr jr_015_5321

jr_015_5321:
    ldh a, [rP1]
    ld hl, sp+$00
    halt
    adc b
    rst $30
    sbc b
    rst $18
    jr nz, jr_015_535b

    nop
    ld b, $00
    nop
    nop
    rrca
    inc b
    dec c
    ld [bc], a
    inc a
    dec bc
    ld a, h
    rlca
    ld a, e
    inc b
    inc a
    nop
    jr jr_015_533f

jr_015_533f:
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    sbc $30
    rra
    ldh a, [$fffb]
    inc h
    ld a, [hl-]
    inc b
    ld d, $08
    inc c
    nop
    nop
    nop
    jr jr_015_5355

jr_015_5355:
    jr jr_015_5357

jr_015_5357:
    ld a, [hl]
    nop
    ld a, [hl]
    nop

jr_015_535b:
    jr jr_015_535d

jr_015_535d:
    jr jr_015_535f

jr_015_535f:
    nop
    nop
    nop
    nop
    jr jr_015_5365

jr_015_5365:
    jr jr_015_5367

jr_015_5367:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_536d

jr_015_536d:
    jr jr_015_536f

jr_015_536f:
    nop
    nop
    nop
    nop
    jr jr_015_5375

jr_015_5375:
    jr jr_015_5377

jr_015_5377:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_537d

jr_015_537d:
    jr jr_015_537f

jr_015_537f:
    nop
    nop
    nop
    nop
    jr jr_015_5385

jr_015_5385:
    jr jr_015_5387

jr_015_5387:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_538d

jr_015_538d:
    jr jr_015_538f

jr_015_538f:
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
    jr z, jr_015_53ba

    ld a, [hl-]
    rra
    ld a, l
    rra
    ld [hl], a
    rra
    ldh [rP1], a
    jr jr_015_5385

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    rst $30
    db $fc
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl-]
    dec b
    daa
    jr jr_015_53cc

jr_015_53ba:
    dec c
    rrca
    nop
    rlca
    nop
    rlca
    nop
    xor a
    ld a, [$ea57]
    ld l, $d4
    ld a, [hl]
    add h
    inc e
    ldh [$fff8], a

jr_015_53cc:
    db $10
    ldh a, [rP1]
    ldh a, [rP1]
    rlca
    nop
    inc b
    inc bc
    ld c, $01
    rrca
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld l, b
    or b
    db $f4
    ld c, b
    ret z

    jr nc, @+$5e

    jr nz, @+$7e

    nop
    ld a, b
    nop
    jr nc, jr_015_53f1

jr_015_53f1:
    rrca
    nop
    rrca
    ld b, $1e
    add hl, bc
    dec bc
    inc b
    rla
    ld [$0817], sp
    rrca
    nop
    ld b, $00
    ldh a, [rP1]
    db $10
    ldh [$ffb8], a
    ld b, b

jr_015_5407:
    ld a, b
    nop
    ld a, b
    nop
    jr nc, jr_015_540d

jr_015_540d:
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_015_5407

jr_015_5427:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    daa
    dec de
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc

jr_015_543c:
    inc b
    inc e
    inc bc
    ccf
    jr jr_015_543c

    db $f4
    cp $90
    cp $b4

jr_015_5447:
    db $fc
    sub b
    db $fc
    ldh [$ffea], a
    inc d
    inc e
    ldh [$fffe], a
    inc c
    ccf
    jr @+$21

    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    cp $8c
    ld a, h
    add b
    jr nc, jr_015_5427

    add sp, $70
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_54ac

    nop
    ccf
    jr @+$21

    nop
    ld c, $07
    dec b
    inc bc
    rrca
    nop
    inc de
    inc c
    rra
    nop
    ld c, $00
    cp $8c
    ld a, h
    add b
    jr nc, jr_015_5447

jr_015_5487:
    ldh a, [$ff60]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_015_5491

jr_015_5491:
    ccf
    jr jr_015_54b3

    nop
    ld b, $01

jr_015_5497:
    rlca
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    cp $8c
    ld a, h
    add b
    jr c, jr_015_5497

    ret c

    ld h, b

jr_015_54a9:
    db $fc
    nop
    db $e4

jr_015_54ac:
    jr jr_015_552a

    nop
    jr c, jr_015_54b1

jr_015_54b1:
    nop
    nop

jr_015_54b3:
    rlca
    nop
    jr @+$09

    jr nc, jr_015_54d8

    ld l, d
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_5487

jr_015_54c7:
    jr nc, jr_015_54a9

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$41
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf

jr_015_54d8:
    add hl, de
    rra
    rrca
    rrca
    nop
    add hl, de
    ld b, $3f

jr_015_54e0:
    add hl, de
    call nz, $e478
    sbc b
    db $f4

jr_015_54e6:
    xor b
    add sp, -$70
    ret c

    jr nz, @-$5a

    ld e, b
    ldh a, [c]
    adc h
    db $fc
    add b
    ccf
    ld e, $1f
    nop
    dec c
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    rra
    nop
    ld e, $01
    inc bc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    jr nz, jr_015_54c7

    ret nc

    ldh [$ffe0], a
    nop
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ccf
    ld e, $1f
    nop
    inc c
    inc bc
    ld e, $07
    ccf
    ld bc, $1827
    dec de
    inc b
    ld c, $00
    ldh [rP1], a
    ldh a, [rP1]
    ret c

    jr nc, jr_015_54e0

    ld h, b
    db $fc

jr_015_552a:
    nop
    inc a
    nop
    ld a, b
    nop
    jr nc, jr_015_5531

jr_015_5531:
    ccf
    ld e, $1f
    nop
    dec de
    inc c
    add hl, de
    ld b, $7f
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    or b
    ld h, b

jr_015_5547:
    ldh a, [$ffc0]
    ld hl, sp+$00
    ld e, h
    jr nz, jr_015_54e6

    ld h, b
    ld [hl], b
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
    jr z, jr_015_557c

    ld a, [hl-]
    rra
    dec a
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_5547

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, [hl]
    db $fc
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [bc]
    dec b
    rrca
    nop
    ld [de], a

jr_015_557c:
    dec c
    cpl
    db $10
    ccf
    ld [$fcf6], sp
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    inc e
    ldh [$fffe], a
    inc b
    cp $0c
    rra

jr_015_5592:
    nop
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    rra
    nop
    dec bc
    inc b
    ld b, $00
    db $fc
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_5592

    ld [hl], b
    db $fc
    nop
    ld e, b
    jr nz, jr_015_55e0

    nop
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [de]
    dec b
    cpl
    db $10
    ld [de], a
    dec c
    ccf
    db $10
    ccf
    jr jr_015_55e1

    nop
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $1f
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    db $fc
    nop
    ldh a, [rP1]
    db $10
    ldh [$fff0], a
    ld h, b
    ld hl, sp+$10
    sub b
    ld h, b
    add sp, $10
    ld a, b

jr_015_55e0:
    nop

jr_015_55e1:
    nop
    nop
    jr jr_015_55e5

jr_015_55e5:
    jr jr_015_55e7

jr_015_55e7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_55ed

jr_015_55ed:
    jr jr_015_55ef

jr_015_55ef:
    nop
    nop
    rra
    nop
    rlca
    nop

jr_015_55f5:
    inc b
    inc bc
    rlca
    inc bc
    rrca
    inc b
    dec b
    ld [bc], a
    dec bc
    inc b
    rrca
    nop
    db $fc
    nop
    ldh a, [rP1]
    db $10

jr_015_5606:
    ldh [$ffc8], a
    jr nc, jr_015_5606

    nop
    ld hl, sp+$00
    or b
    nop
    nop
    nop
    nop
    nop
    stop
    jr c, jr_015_5617

jr_015_5617:
    ld a, h
    nop
    ld a, [hl]
    ld [$12ff], sp
    ei
    ld de, $10f9
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr z, jr_015_5648

    dec [hl]
    rra
    ld [hl], e
    ccf
    db $ed
    ld [hl], $d7
    xor c
    ret nz

    nop
    jr nc, jr_015_55f5

    ld [$8cf0], sp
    ld hl, sp-$2c
    ld hl, sp-$02
    ld a, h
    xor [hl]
    ld a, h
    sub $bc
    ld a, b
    db $10
    ld a, b
    db $10
    jr c, jr_015_5657

    inc e

jr_015_5648:
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    daa
    ld e, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]

jr_015_5657:
    ccf
    ld a, [bc]
    ccf
    rlca
    ccf
    db $10
    ccf
    ld a, [de]
    rra
    nop
    ldh a, [c]
    call z, Call_015_64fa
    db $fc
    add sp, -$04
    ld h, b
    db $e4
    sbc b
    sub d
    ld l, h
    db $fc
    nop
    ldh a, [rP1]
    dec de
    inc c
    dec c
    ld [bc], a
    ld e, $00
    ld [hl], $08
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, @+$3a

    ldh a, [$fff0]
    ld b, b
    ld hl, sp+$00
    ld c, h
    jr nc, jr_015_56c4

    nop
    nop
    nop
    nop
    nop
    inc hl
    dec e
    ld [hl], $0b
    ccf
    inc d
    rra
    ld b, $0f
    inc b
    rra
    dec bc
    rra
    ld [$041f], sp
    ld h, d
    sbc h
    or $68
    cp $94
    cp $b0
    ld sp, hl
    sub [hl]
    or $e8
    db $fc
    ld [$907c], sp
    nop
    ld [$0404], sp
    ld [bc], a
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    ccf
    rlca
    ld c, a

jr_015_56c4:
    ld [hl-], a
    dec sp
    nop
    add c
    ldh [$ffe1], a
    cp $3f
    rst $38
    rlca
    ccf
    nop
    rlca
    ld hl, sp+$70
    db $fc
    jr nz, @-$18

    sbc b
    db $fc
    add e
    jp $fe9f


    rst $38
    ldh a, [$fffc]
    nop
    ldh a, [rNR41]
    jr nz, jr_015_5704

    ld h, b
    ld h, b
    ldh [$ffc0], a
    ldh [$ff80], a
    ret nz

    nop
    nop
    nop

jr_015_56ee:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_56f5

jr_015_56f5:
    jr nz, jr_015_56f7

jr_015_56f7:
    jr nc, jr_015_56f9

jr_015_56f9:
    ldh a, [rNR41]
    ld [hl], b
    jr nz, jr_015_56ee

    ld b, b
    ldh a, [rLCDC]
    ccf
    nop
    ld c, l

jr_015_5704:
    jr nc, jr_015_5742

    nop
    nop
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
    add sp, -$01
    ld h, c
    ld a, a
    dec bc
    rra
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff80]
    ldh [$ff80], a
    ldh [rP1], a
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
    adc l
    halt
    db $db
    dec l
    rst $38
    ld d, d
    ld a, a
    ld a, [de]
    ccf
    ld [de], a
    ccf
    rrca
    ld a, a
    jr nz, jr_015_57bc

    inc de
    adc b

jr_015_5742:
    ld [hl], b
    ret c

    and b
    ld hl, sp+$50
    ld hl, sp-$40
    and $58
    ld a, [$e780]
    ld b, d
    rst $20
    ld b, d
    ccf
    rlca
    ld c, a
    inc sp

jr_015_5755:
    dec sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ld hl, $69f7
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    ld e, b
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
    rlca
    nop
    jr jr_015_578c

    jr nz, jr_015_57a6

    jr nz, @+$21

    ld d, b
    ccf

jr_015_578b:
    ld [hl], h

jr_015_578c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_015_5755

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_57a6:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_015_57ed

    nop
    rrca
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr c, jr_015_578b

    db $fc

jr_015_57bc:
    jr nz, jr_015_57bc

    ld l, b
    rst $38
    ld a, [de]
    nop
    nop
    stop
    jr jr_015_57c7

jr_015_57c7:
    inc e
    ld [$081c], sp
    inc a
    db $10
    inc a
    db $10
    ld a, h
    jr nz, jr_015_57dd

    inc b
    inc e
    inc bc
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop

jr_015_57dd:
    nop
    nop
    nop
    nop
    rst $38
    ld sp, $8071

jr_015_57e5:
    ret nc

    ldh [$fff8], a
    nop
    ret nc

    jr nz, jr_015_584c

    nop

jr_015_57ed:
    nop
    nop
    nop
    nop
    ld hl, sp+$40
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
    dec e
    ld a, $18
    ld a, h
    jr nc, @+$7a

    rlca
    nop
    ld hl, sp+$07
    ldh [$ffdf], a
    ldh [$ffdf], a
    ret nc

    cp a
    db $f4
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_015_57e5

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$42
    ld hl, sp-$11
    ld a, [$f030]
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
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    ld [de], a
    dec c
    daa

jr_015_584c:
    jr jr_015_586d

    nop
    rrca
    nop
    ld e, [hl]
    ldh a, [c]
    xor b
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr c, @-$2e

    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rP1], a
    rrca
    nop
    ld e, $0d
    rra
    ld [bc], a
    ld a, [hl-]
    inc b
    ld [de], a
    inc c

jr_015_586b:
    inc c
    nop

jr_015_586d:
    nop
    nop
    nop
    nop
    sub b
    ld h, b
    ld a, b
    add b
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop

jr_015_587b:
    nop

jr_015_587c:
    nop
    nop

jr_015_587e:
    nop
    nop

jr_015_5880:
    nop
    jr nc, jr_015_5883

jr_015_5883:
    ld a, a
    nop
    rst $38
    rla
    rst $38
    jr nz, jr_015_587b

    jr nz, jr_015_587c

    jr nz, jr_015_587e

    jr nz, jr_015_5880

    jr nz, jr_015_58c7

    rra
    ld [$d417], a
    dec hl
    cp $c1
    ld a, [$f3c5]
    ld l, h
    ld [hl], a
    ld [$001f], sp
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, jr_015_586b

    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    jr nz, @+$3a

    db $10
    jr jr_015_58b7

jr_015_58b7:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_015_58c5

jr_015_58c5:
    jr jr_015_58c7

jr_015_58c7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_58cd

jr_015_58cd:
    jr jr_015_58cf

jr_015_58cf:
    nop
    nop
    nop
    nop
    jr jr_015_58d5

jr_015_58d5:
    jr jr_015_58d7

jr_015_58d7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_58dd

jr_015_58dd:
    jr jr_015_58df

jr_015_58df:
    nop
    nop
    jr nc, jr_015_58e3

jr_015_58e3:
    ld a, b
    nop
    ld a, [hl]
    nop
    rst $38
    ld a, [de]
    rst $38
    ld de, $20f1
    ldh a, [rNR41]
    ldh a, [rNR41]
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    sub h
    dec bc
    xor $91
    ld a, [$f365]
    ld c, h
    ld [hl], a
    jr z, jr_015_5902

jr_015_5902:
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, jr_015_58cd

    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [rNR41]
    ld [hl], b
    jr nz, jr_015_5986

    jr nz, jr_015_5948

    nop
    jr nc, jr_015_591b

jr_015_591b:
    stop
    nop
    nop
    nop
    nop
    ccf
    nop
    rrca
    nop
    dec e
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nc

    ld h, b
    ld hl, sp+$00
    or b
    ld b, b
    ld h, b
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

jr_015_5948:
    inc bc
    jr jr_015_595a

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_595a:
    ldh a, [rKEY1]
    ld hl, sp-$43
    ld hl, sp+$6f
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $70
    cp $98
    sbc $8c
    ld d, a
    dec hl
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rrca
    nop
    rrca
    ld b, $f7
    ld a, c
    rst $28
    or [hl]
    rst $38

jr_015_5986:
    add $ff
    ret nc

    cp $cc
    call c, $bea8
    ld b, b
    ld sp, hl
    ld [hl], $8e
    inc b
    ld c, $04
    inc c
    nop
    ld [$1000], sp
    nop

jr_015_599b:
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    dec b
    rlca
    nop
    ld b, $01
    rrca
    ld b, $0e
    ld bc, $0817
    rra
    nop
    nop
    nop
    cp $b0
    ld hl, sp+$00
    ld a, b
    add b
    and h
    ld e, b
    db $fc
    jr nc, jr_015_5a3a

    nop

jr_015_59bd:
    ld c, [hl]
    jr nc, jr_015_5a3c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_59d2

    jr nc, jr_015_59ec

    ld l, d
    ccf
    ld [hl], a
    dec a
    nop

jr_015_59d2:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_599b

    jr nc, jr_015_59bd

    sbc b
    ldh a, [$ff78]
    ldh a, [rTAC]
    rlca
    add hl, de
    ccf
    cpl
    ld a, a
    ld e, b
    ld hl, sp+$50
    ldh a, [$ff50]

jr_015_59ec:
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    sbc $69
    xor a
    ld d, [hl]
    cp a
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    rra
    rrca
    rra
    nop
    call c, $acf8
    ld hl, sp-$3c
    ld a, b
    db $e4
    sbc b
    db $f4
    xor b
    db $fc
    add b
    ldh [c], a
    inc e
    inc c
    ldh a, [rNR32]
    ccf
    rlca
    rrca
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc e
    ccf
    call z, $f9c6
    ccf
    rst $38
    dec e
    ld [bc], a
    ld l, $10
    ld a, $00
    nop
    nop
    ld sp, hl
    ld bc, $02fa
    db $fc
    inc e
    db $ec
    ldh a, [$fffe]

jr_015_5a3a:
    jr nc, jr_015_5a7a

jr_015_5a3c:
    nop
    ld c, h
    jr nc, jr_015_5ab8

    nop
    sbc $69
    xor a
    ld d, [hl]
    cp a
    ld c, a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    rra
    rrca
    ccf
    db $10
    rst $18
    ld hl, sp-$51
    ld hl, sp-$39
    ld a, d
    rst $20
    sbc c
    push af
    xor b
    add sp, -$70
    sbc b
    ld h, b
    inc b
    ld hl, sp+$00
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$ff80], a
    ldh [rLCDC], a
    ld h, b
    nop
    jr nz, jr_015_5a71

jr_015_5a71:
    ccf
    inc e
    rra
    ld [$040b], sp
    inc e
    rrca
    rra

jr_015_5a7a:
    nop
    ld l, $10
    ld a, $00
    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret c

    jr nz, jr_015_5a94

    ld hl, sp-$02
    jr nc, jr_015_5aca

    nop
    ld c, h
    jr nc, @+$7a

    nop
    nop
    nop
    nop

jr_015_5a94:
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_5aaa

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_5aaa:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    ld d, a
    dec hl
    ld e, a
    daa
    cpl
    inc d
    rra

jr_015_5ab8:
    dec b
    rra
    inc c
    rrca
    rlca
    rrca
    nop
    rra
    inc c
    rst $10
    ld a, h
    db $e3
    cp h
    di
    call $d4fb
    db $f4

jr_015_5aca:
    ret z

    ld hl, sp-$80
    add $38
    pop af
    adc [hl]
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    jr nz, jr_015_5add

jr_015_5add:
    nop
    nop
    nop
    nop
    rra
    rrca
    rrca
    inc bc
    rlca
    nop
    ld c, $07
    rrca
    nop
    rla
    ld [$001f], sp
    nop
    nop
    cp $80
    ld hl, sp+$00

jr_015_5af5:
    ld hl, sp+$00
    inc c
    ld hl, sp-$04
    jr nc, jr_015_5b3a

    nop
    ld c, [hl]
    jr nc, jr_015_5b7c

    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_5b18

    jr c, jr_015_5b2a

    dec l
    rra
    ld [hl], $1f
    dec hl
    rra
    ldh [rP1], a
    jr jr_015_5af5

    inc b
    ld hl, sp+$0c

jr_015_5b18:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    ld [$00dc], a
    nop
    nop
    nop

jr_015_5b25:
    ld a, $00
    ld e, l
    ld a, $7f

jr_015_5b2a:
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
    ld a, $09
    ccf

jr_015_5b3a:
    dec bc
    dec a
    ld b, $3f
    add hl, de
    ccf
    ld a, [de]
    ldh [rP1], a
    jr jr_015_5b25

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3ff4]
    inc b
    ccf
    ld a, [de]
    ccf
    jr jr_015_5b97

    ld b, $3f
    inc de
    rra
    add hl, bc
    rra
    ld [$000f], sp
    cp $90
    cp $b4
    db $fc
    sub b
    db $f4
    ld l, b
    db $fc
    add b
    ldh a, [c]
    xor h
    ld sp, hl
    ld b, $f6
    add b
    rlca
    nop
    ld b, $01
    rrca
    ld b, $0e
    ld bc, $000f
    inc de

jr_015_5b7c:
    inc c
    ld e, $00
    nop
    nop
    ld [hl], b
    add b
    ld a, b
    and b
    db $ec
    ld d, b
    call c, $5c20
    jr nz, jr_015_5bc4

    nop

jr_015_5b8d:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop

jr_015_5b97:
    nop
    nop
    nop
    inc bc
    rrca
    inc bc
    inc de
    rrca
    jr jr_015_5bb0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_5b8d

    inc b
    ld hl, sp+$0c

jr_015_5bb0:
    ld hl, sp+$3b
    rra
    cpl
    rra
    scf
    rra
    inc l
    dec de
    daa
    dec de
    scf
    dec bc
    dec sp
    rla
    rra
    rlca
    ld c, $fc
    ld e, d

jr_015_5bc4:
    db $fc
    or d
    ld a, h
    xor d
    ld e, h
    ldh a, [c]
    inc l
    or $08
    ld a, l
    or d
    ld sp, hl
    sub [hl]
    rra
    rlca
    rla
    rrca
    inc d
    rrca
    inc [hl]
    rrca
    ld e, h
    cpl
    inc a
    rrca
    dec de
    rrca
    rra
    dec bc
    cp $80
    cp h
    ret z

    cp h
    ret nc

    cp h
    ret nc

    ld hl, sp-$40
    db $fc
    ret nz

    ld h, [hl]
    ret c

    db $fc
    ld b, b
    rst $20
    ld e, d
    rst $38
    ld b, d
    db $db
    ld h, [hl]
    rst $20
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    sbc c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    jr jr_015_5c05

jr_015_5c05:
    jr jr_015_5c07

jr_015_5c07:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5c0d

jr_015_5c0d:
    jr jr_015_5c0f

jr_015_5c0f:
    nop
    nop
    dec h
    ld e, $23
    dec e
    scf
    ld [$163f], sp
    rra
    inc b
    rrca
    inc bc
    rra
    ld [$0e1f], sp
    xor d
    call c, Call_000_2cd2
    or $88
    cp $b0
    ld sp, hl
    sub [hl]
    cp $e0
    db $fc
    ld [$b078], sp
    ccf
    ld b, $4f

Call_015_5c34:
    ld sp, $003f
    rra
    nop
    rra
    nop
    ld e, $03
    rra
    nop
    rra
    nop
    ld hl, sp+$60
    db $fc
    nop
    and $18
    db $fc
    nop
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
    nop
    nop
    jr jr_015_5c65

jr_015_5c65:
    jr jr_015_5c67

jr_015_5c67:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5c6d

jr_015_5c6d:
    jr jr_015_5c6f

jr_015_5c6f:
    nop
    nop
    xor d
    call c, Call_000_2cd2
    or $88
    cp $b0
    ld sp, hl
    sub [hl]
    cp $e8
    db $fc
    jr @-$06

    ldh [$ff1f], a
    nop
    ccf
    nop
    ld c, a
    jr nc, jr_015_5cc7

    ld bc, $000f
    rrca
    nop
    rrca
    inc b
    rrca
    rlca
    ld hl, sp+$00
    db $fc
    nop
    and $18
    db $fc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_015_5cb5

jr_015_5cb5:
    jr jr_015_5cb7

jr_015_5cb7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5cbd

jr_015_5cbd:
    jr jr_015_5cbf

jr_015_5cbf:
    nop
    nop
    nop
    nop
    jr jr_015_5cc5

jr_015_5cc5:
    jr jr_015_5cc7

jr_015_5cc7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5ccd

jr_015_5ccd:
    jr jr_015_5ccf

jr_015_5ccf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld e, l
    ld a, $7f
    ld a, $7f
    ld [hl+], a
    ld a, a
    nop
    rlca
    nop
    jr jr_015_5cec

    jr nz, jr_015_5d06

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_5cec:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    adc b

jr_015_5cf7:
    ld a, a

Call_015_5cf8:
    add b
    ld a, a
    add b
    ld a, $c0
    cp h
    add sp, -$04
    add sp, $35
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_5d06:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, @+$41

    nop
    rrca
    nop
    ld e, h

jr_015_5d12:
    add sp, -$44
    ret z

    ld e, [hl]
    and h
    db $fc
    jr jr_015_5d58

    call nz, Call_000_2cfe
    db $fc
    ld l, b
    ld hl, sp+$10
    rrca
    nop
    dec de
    inc c
    inc c
    inc bc
    rra
    nop
    rla
    ld [$000e], sp
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh [rP1], a
    jr nc, jr_015_5cf7

    add sp, $70
    ldh a, [rP1]
    ldh a, [rP1]
    sbc b
    ld h, b
    ld a, b
    nop
    nop
    ld a, [hl+]
    jr z, jr_015_5d6d

    ld a, [bc]
    ld a, [de]
    ld [$181c], sp
    inc e
    inc e
    ld a, $1e
    ld a, $2c
    ld a, $07
    nop
    jr jr_015_5d5c

    jr nz, jr_015_5d76

    dec h

jr_015_5d58:
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_5d5c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    cp $2e
    ld a, $ca
    ld c, $f6
    ld c, [hl]
    or $d6
    ld a, [$faee]

jr_015_5d6d:
    cp [hl]
    ld a, [$fa5e]
    jr c, @+$19

    ld h, a
    jr jr_015_5d12

jr_015_5d76:
    ld h, e
    ld c, e
    inc [hl]
    ccf
    nop
    ccf
    db $10
    ccf
    db $10
    rra
    ld [$d63e], sp
    adc $36

jr_015_5d85:
    ld a, [hl]
    adc [hl]
    cp [hl]
    ld c, d
    cp $2a
    cp $16
    cp $1a
    cp $1a
    ld [$1d07], sp
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld h, [hl]
    db $fc
    sub [hl]
    sub b
    ld l, h
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    rlca
    nop

jr_015_5db3:
    jr jr_015_5dbc

    jr nz, jr_015_5dd6

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_5dbc:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    ret nz

    nop
    jr nc, jr_015_5d85

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38
    rla
    daa
    jr jr_015_5e52

jr_015_5dd6:
    inc bc
    adc e
    ld [hl], h
    ld a, a
    nop
    rra
    ld [$001f], sp
    rrca
    nop
    jr c, jr_015_5db3

    ret z

    jr nc, jr_015_5e56

    add b
    or b
    ld b, b
    db $fc

jr_015_5dea:
    jr nz, jr_015_5dea

    db $10
    cp $18
    cp $18
    inc c
    inc bc
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $60
    cp $94
    sbc d
    ld l, h
    cp h
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    inc d
    dec bc
    daa
    jr jr_015_5e4d

    db $10
    rra
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nc, @-$3e

    ld hl, sp+$00
    db $fc
    ld h, b
    db $fc
    ld [hl], b
    rrca
    nop
    rrca
    nop
    ld [$1d07], sp
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    db $fc
    nop
    db $ec
    db $10
    inc e
    add sp, -$14
    ld [hl], b
    ld hl, sp+$00
    ldh a, [rP1]

jr_015_5e4d:
    sbc b
    ld h, b
    ld a, b
    nop
    nop

jr_015_5e52:
    nop
    nop
    nop
    nop

jr_015_5e56:
    nop
    ld bc, $0100
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
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ldh a, [$ffc0]
    cp $40
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_5e86

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a

jr_015_5e7e:
    dec hl
    ld e, a
    inc h
    cp $24
    ld a, $c0

jr_015_5e85:
    rra

jr_015_5e86:
    ldh [$ff5f], a
    ldh [$ffbf], a
    ret c

    ld a, [hl]
    or h
    or $6c
    ldh [c], a
    ld e, h
    cpl
    dec d
    rra
    ld bc, $061f
    ccf
    ld d, $1e
    add hl, bc
    rrca

jr_015_5e9c:
    ld [bc], a
    rlca
    ld [bc], a
    rra
    nop
    ldh a, [c]
    adc h
    ld a, [$f494]
    ret z

    db $fc
    jr nz, jr_015_5e9c

    ld l, h
    ld sp, hl
    ld b, $f6
    nop
    ldh a, [rP1]
    jr c, jr_015_5ed2

    ld a, $05
    ld a, l
    nop
    sbc l
    ld h, b
    ld l, h
    db $10
    jr jr_015_5ebd

jr_015_5ebd:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_015_5e85

    ld [hl], b
    and b
    ldh a, [$ffc0]
    ld hl, sp+$00
    ld e, b
    jr nz, jr_015_5e7e

    ld b, b
    ldh [rP1], a
    inc bc

jr_015_5ed2:
    nop
    inc c
    inc bc
    jr jr_015_5ee6

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    ld e, a
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_5ee6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    nop
    ld [$1808], sp
    ld [$1818], sp
    jr c, jr_015_5f0a

    jr c, @+$1a

    ld a, b
    ld d, h
    ld a, l
    ld d, h
    rst $38
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca

jr_015_5f0a:
    nop
    dec c
    ld [bc], a
    ld e, a
    add hl, bc
    rst $38
    ld d, e
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    jp nc, $e42c

    ret c

    ld hl, sp+$40
    ldh [rP1], a
    ld [hl], c
    rst $38
    jp nc, Jump_000_347d

    ld e, b
    ld d, b
    jr c, @+$12

    jr c, jr_015_5f64

    db $10
    ld [$1010], sp
    nop
    ld e, a
    xor $bf
    ld c, h
    rrca
    nop
    rla
    ld [$001e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nc, @-$1e

    ld hl, sp-$40
    db $fc
    nop
    sbc b
    ld h, b
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
    jr c, jr_015_5f5d

jr_015_5f5d:
    jr c, jr_015_5f5f

jr_015_5f5f:
    ld a, a
    nop
    cpl
    inc d
    rra

jr_015_5f64:
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    dec c
    ld [bc], a
    rra
    add hl, bc
    rst $38
    inc de
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    call c, $e220
    call c, Call_015_40fe
    ldh [rP1], a
    rst $38
    ld b, a
    ld a, a
    nop
    jr c, jr_015_5f87

jr_015_5f87:
    jr c, jr_015_5f89

jr_015_5f89:
    jr c, jr_015_5f8b

jr_015_5f8b:
    jr c, jr_015_5f9d

    jr c, jr_015_5f9f

    jr jr_015_5f91

jr_015_5f91:
    rst $38
    xor $ff
    inc c
    rrca
    nop
    rla
    ld [$001e], sp
    nop
    nop

jr_015_5f9d:
    nop
    nop

jr_015_5f9f:
    nop
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

jr_015_5fb0:
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    add h
    inc bc
    sbc a
    nop
    rst $38

jr_015_5fc0:
    dec de
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ret c

    jr nz, jr_015_5fb0

    jr jr_015_5fc0

    ld l, h
    db $fc
    jr nz, @+$09

    nop
    rrca
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
    db $e3
    nop
    rst $00
    nop
    rlc h
    rst $08
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ldh a, [$ffc0]
    ldh a, [rNR41]
    ld hl, sp-$40
    db $fc
    nop
    sbc b
    ld h, b
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
    ld a, a
    db $dd
    ld a, $63
    inc e
    ccf
    ld bc, $083f
    ldh [rP1], a
    sbc b
    ld h, b

jr_015_6025:
    add h
    ld a, b
    adc h
    ld a, b
    sub $7c
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3ff4]
    nop
    ccf
    ld a, [de]
    ld a, a
    jr jr_015_60b7

    inc hl
    ld a, a
    inc l
    ccf
    rrca
    rra
    nop
    rrca
    nop
    cp $90
    cp $b4
    db $fc
    sub b
    db $f4
    ld l, b
    db $fc
    nop
    ldh a, [c]
    xor h
    ld sp, hl
    ld h, [hl]
    or $80
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    dec bc
    inc b
    dec bc
    inc b
    ld d, $08
    inc e
    nop
    ld [hl], b
    add b
    jr nc, jr_015_6025

    add sp, $70
    ld [hl], b
    nop
    ld e, b
    jr nz, @+$5a

    jr nz, @+$2e

    db $10
    inc e
    nop
    nop
    stop
    nop
    nop
    inc d
    inc d
    ld d, h
    ld b, b
    ld b, b
    inc d
    inc d
    ld d, b
    ld d, b
    ld e, a
    ld d, h
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    ld c, $0b
    ld a, [de]
    rrca
    ld a, [de]
    rrca
    ld a, [hl+]
    rra
    jr c, jr_015_60ba

    jr z, jr_015_60bc

    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    ret c

    ldh [$ff84], a
    ld hl, sp-$74
    ld hl, sp-$32
    db $fc
    jp c, $b6fc

    db $fc
    ld [$e29c], a
    sbc h
    ld [hl], l
    rra
    ld [hl], c
    rra
    dec [hl]
    dec de

jr_015_60b7:
    ld sp, $3b1f

jr_015_60ba:
    dec d
    dec sp

jr_015_60bc:
    dec d
    ld a, [hl-]
    dec d
    ld a, [hl]
    dec d
    db $ec
    ld d, b
    ld a, [$f224]
    ld l, h
    ld [hl], h
    xor b
    ld hl, sp+$50
    ld hl, sp+$00
    ld hl, sp+$60
    ldh a, [$ff60]
    ld a, [hl]
    dec d
    ld a, $15
    dec sp
    inc d
    dec [hl]
    ld a, [de]
    ld sp, $311e
    ld e, $3b
    inc e
    rra
    nop
    ld hl, sp+$00
    db $f4
    ld [$00f8], sp

jr_015_60e7:
    ret nz

    nop
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_610a

    jr c, jr_015_611c

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_015_60e7

    inc b
    ld hl, sp+$0c

jr_015_610a:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    nop
    nop
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    rra
    ld b, $0f

jr_015_611c:
    inc b
    rra
    dec bc
    rrca
    nop
    nop
    nop
    xor d
    call c, Call_000_28d6
    cp $94
    cp $b0
    ld sp, hl
    sub [hl]
    cp $e8
    db $fc
    db $10
    cpl
    rra
    inc [hl]
    rra
    ld [hl], b
    rra
    inc [hl]
    dec de
    ld a, $15
    inc h
    dec de
    jr nc, jr_015_615e

    jr nz, @+$61

    ld hl, sp+$60
    ldh a, [rLCDC]
    ld hl, sp+$00
    db $f4
    ld [$00f8], sp
    add b
    nop
    add b
    nop
    ret nz

    ld b, b
    ld h, b
    ld e, a
    rst $38
    ldh [$ff3f], a
    ld a, a
    ld l, [hl]
    ld a, a
    add h
    adc $00
    nop
    nop

jr_015_615e:
    nop
    nop
    nop
    ret nz

    ld b, b
    ldh [$fff0], a
    add b
    ret nz

    ret nz

    ret nz

    jr nz, jr_015_61cb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    rra
    ld b, $0f
    inc b
    rra
    dec bc
    rra
    inc c
    nop
    nop
    xor d
    call c, Call_000_28d6
    cp $94
    db $fc
    or b
    ld a, [$fd94]
    ld [$10ff], a
    rra
    nop
    cpl
    rra
    ld [hl], h
    rra
    jr nc, jr_015_61b8

    inc [hl]
    dec de
    ld a, $15
    inc h
    dec de
    jr nc, jr_015_61c0

    ld hl, sp-$20
    ldh a, [rLCDC]
    ld hl, sp+$00
    db $f4
    ld [$00f8], sp
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, c
    ld a, $41
    ld a, $3e
    nop
    nop

jr_015_61b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_61c0:
    nop
    rlca
    nop
    jr jr_015_61cc

    jr nz, jr_015_61e6

    jr nz, jr_015_61e8

    ld b, l
    ccf

jr_015_61cb:
    ld d, [hl]

jr_015_61cc:
    ccf
    ld l, a
    ccf
    ld a, e
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_61e6:
    nop
    nop

jr_015_61e8:
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ldh a, [c]
    inc a
    jr jr_015_61fa

    jr nz, jr_015_6214

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_61fa:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    pop de
    ld a, [hl]
    ld sp, hl
    ld h, [hl]

jr_015_6205:
    db $fd
    ld e, d
    push af
    ld e, d
    db $fd
    ld b, d
    ld sp, hl
    ld h, [hl]
    pop de
    ld a, [hl]
    pop de
    ld a, [hl]
    ld a, [hl+]
    rla
    inc d

jr_015_6214:
    dec bc

jr_015_6215:
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, @+$41

    nop
    rrca
    nop
    rrca
    nop
    db $fd
    ld b, d
    di
    inc a
    pop bc
    ld a, [hl]
    jp nz, $fc3c

    nop
    db $fc
    ld d, b
    db $fc
    ld l, b
    ld hl, sp+$10
    dec bc

jr_015_6232:
    inc b
    jr @+$11

    rra
    inc b
    ld a, $00
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_015_6205

    ret nc

    ldh [$ffe0], a
    nop
    ldh a, [rP1]
    sub b
    ld h, b
    ld hl, sp+$00
    ld [hl], b
    nop
    ret nz

    nop
    jr nc, jr_015_6215

    ld [$08f0], sp
    ldh a, [rLY]
    ld hl, sp-$2c
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    db $10
    inc b
    ld b, h
    db $10
    ld de, $5400
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    rlca
    nop
    jr jr_015_627c

    jr nz, jr_015_6296

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_627c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    push de
    dec d
    ccf
    call $f50f
    ld c, a
    push af
    rst $10
    ei
    rst $28
    ei
    cp a
    ei
    ld e, a
    ei
    jr c, jr_015_62aa

    ld h, a
    jr jr_015_6232

jr_015_6296:
    ld h, e
    ld c, e
    inc [hl]
    ccf
    ld [$103f], sp
    ccf
    db $10
    rra
    nop
    ccf
    push de
    rst $08
    dec [hl]

jr_015_62a5:
    ld a, [hl]
    adc l
    cp a
    ld c, h
    rst $30

jr_015_62aa:
    inc l
    rst $38
    inc [hl]
    db $fd
    ld a, [bc]
    rst $38
    jr jr_015_62ba

    rlca
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c

jr_015_62ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc b
    rst $38
    ld h, b
    cp $90
    sub b
    ld h, b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    rlca
    nop
    jr jr_015_62dc

jr_015_62d5:
    jr nz, jr_015_62f6

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_62dc:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    ret nz

    nop
    jr nc, jr_015_62a5

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$00
    nop
    jr c, @+$19

    daa

jr_015_62f6:
    jr jr_015_6334

    inc bc
    ld c, e
    inc [hl]
    sbc a
    ld l, b
    ld a, a
    db $10
    rra
    nop
    nop
    nop
    jr c, jr_015_62d5

    ret z

    jr nc, jr_015_6384

    add b
    cp [hl]
    ld c, h
    cp $24
    cp $14
    cp $14
    inc c
    inc bc
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [$ff60]
    ldh a, [$ff90]
    sub b
    ld h, b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    and b
    ret nz

    ld h, b

jr_015_6334:
    sub b
    ldh a, [rNR10]
    ld hl, sp+$3c
    ldh [$fff0], a
    jr nc, jr_015_63ad

    ld [$0018], sp
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    inc d
    dec bc
    daa
    jr jr_015_637d

    db $10
    ccf
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld e, h
    and b
    cp $0c
    ld a, $c4
    cp $24
    cp $04
    cp $34
    rrca
    nop
    rrca
    nop
    ld [$1d07], sp
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    cp $74
    cp $08
    ld e, $e0
    db $ec
    ld [hl], b
    ldh a, [rP1]
    ldh a, [rP1]

jr_015_637d:
    sbc b
    ld h, b
    ld a, b
    nop
    nop
    nop
    nop

jr_015_6384:
    nop
    nop
    nop
    nop
    nop

jr_015_6389:
    nop
    nop

jr_015_638b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_015_639d

jr_015_639d:
    inc a
    jr jr_015_6406

    inc a
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

    dec [hl]
    rra
    add hl, sp
    ld e, $6f
    inc [hl]

jr_015_63ad:
    ld d, a
    dec hl
    ld e, a
    inc h
    db $d3
    ld a, h
    add a
    ld a, d
    jp z, $e43d

    sbc a
    ldh a, [$ff8f]
    add sp, $37
    db $fc

jr_015_63be:
    ld h, e
    rst $38
    ld c, b
    nop
    nop
    add b
    nop

jr_015_63c5:
    ld b, b
    add b
    jr nz, jr_015_6389

    jr nz, jr_015_638b

    ld b, b
    add b
    add b
    nop
    nop
    nop
    cpl
    dec d
    rra
    ld bc, $061f
    ccf
    ld d, $1e
    add hl, bc
    rrca

jr_015_63dc:
    ld [bc], a
    rlca
    ld [bc], a
    rra
    nop
    jp nc, $faac

    sub h
    db $f4
    ret z

    db $fc
    jr nz, jr_015_63dc

    ld l, h
    ld sp, hl
    ld b, $f6
    nop
    ldh a, [rP1]
    jr c, jr_015_6412

    ld a, $05
    ld a, l
    nop
    sbc l
    ld h, b
    ld l, h
    db $10
    jr jr_015_63fd

jr_015_63fd:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_015_63c5

    ld [hl], b

jr_015_6406:
    and b
    ldh a, [$ffc0]
    ld hl, sp+$00
    ld e, b
    jr nz, jr_015_63be

    ld b, b
    ldh [rP1], a
    nop

jr_015_6412:
    nop
    ld [$0a0a], sp
    ld e, d
    ld [bc], a
    ld e, $14
    ld a, $14
    cp [hl]
    ld [hl], $bf
    cp [hl]
    rst $38
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_6436

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    ld e, a
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_6436:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    cp a
    rst $38
    cp a
    rst $38
    ld [hl], a
    cp a
    rst $30
    ccf
    ld a, [hl]
    ccf
    ld l, l
    ld [hl], $1a
    inc h
    inc h
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    ld e, a
    rlca
    rst $38
    ret c

    rst $38
    rst $18
    rst $38
    ld b, b
    ld c, a
    nop
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    jp nc, $e42c

    ld e, b
    ld hl, sp-$40
    ldh [rP1], a
    inc h
    rra
    inc sp
    dec c

jr_015_6475:
    ccf
    db $10
    rra
    ld b, $0f
    inc b
    rra
    dec bc
    rra
    ld [$061f], sp
    dec bc
    inc b
    ld e, $0d
    rrca
    nop
    rla
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nc, jr_015_6475

    ld hl, sp-$40
    db $fc
    nop
    sbc b
    ld h, b
    ldh a, [rP1]
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
    inc [hl]
    rra
    ld h, h
    rra
    or b
    ld e, a
    ld h, b

jr_015_64b0:
    rra
    cpl
    inc d
    rra
    dec b
    sbc a
    inc c
    adc a
    rlca
    adc a
    nop
    db $fc
    dec bc
    rst $38
    ld [hl], h
    rst $38
    rrca
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ret c

    jr nz, jr_015_64b0

    ld e, b
    ldh a, [c]
    call z, Call_000_00fc
    jr nc, jr_015_64f2

    jr nz, jr_015_6534

    ld h, b
    ld e, a
    rst $38
    ldh [$ff3f], a
    ld a, a
    ld l, [hl]
    ld a, a
    add h
    adc $00
    nop
    adc a
    nop
    sbc [hl]
    ld c, l
    rst $08
    ld b, b
    rst $28
    ld hl, sp-$72
    ret nz

    ret nz

    ret nz

    jr nz, jr_015_654f

    nop
    nop
    cpl

jr_015_64f2:
    inc d
    rra
    dec b
    ld e, a
    inc c
    ld c, a
    rlca
    ld b, a

Call_015_64fa:
    nop
    ld a, [hl]
    dec b
    ld a, a
    ld a, [hl-]
    ld a, a
    rlca
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ld hl, sp+$00
    ld [hl], h
    xor b
    ldh a, [c]
    ld l, h
    ld a, [$3084]
    rra
    jr nz, jr_015_6534

    jr nz, @+$21

    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    nop
    ld b, [hl]
    inc bc
    ld b, a
    nop
    dec bc
    inc b
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    db $10
    sub b

jr_015_6534:
    ld h, b
    ld hl, sp-$20
    db $fc
    nop
    sbc h
    ld h, b
    ld hl, sp+$00
    nop
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

jr_015_654f:
    ld a, $1c
    ccf
    inc d
    ld a, $09
    ld a, $09
    ld a, $09
    rra
    dec bc
    inc e
    dec bc
    rra
    add hl, bc
    dec e
    ld [bc], a
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3ff4]
    jr @+$41

    ld a, [de]
    ccf
    inc b

jr_015_6577:
    ccf
    dec c
    ccf
    ld [de], a
    rra
    add hl, bc
    rra
    inc c
    rrca
    nop
    nop
    ld bc, $0103
    dec c
    inc bc
    ld de, $190f
    rrca
    add hl, sp
    rra
    dec l
    rra
    dec [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_6577

    inc b
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    ld d, $fc
    add hl, hl
    rra
    inc hl
    rra
    inc sp
    rrca
    dec sp
    rla
    dec de
    rlca
    dec bc
    rlca
    dec de
    rrca
    ld a, [de]
    rrca
    ld a, [hl+]
    call c, $ecb2
    cp [hl]
    ldh [$ffbd], a
    jp nc, $f6b9

    xor d
    call nc, $e89c
    cp h
    ret c

    inc b
    rra
    ld a, [bc]
    dec d
    ld c, $1b
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    ld c, $00
    inc b
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    rra
    ld b, $0f
    inc b
    rra
    dec bc
    rra
    ld [$163f], sp
    xor d
    call c, Call_000_28d6
    cp $94
    cp $b0
    ld sp, hl
    sub [hl]
    push af
    ld [$08ff], a
    ld a, h
    or b
    rla
    dec bc
    ccf
    ld [bc], a
    ld e, [hl]
    ld hl, $033d
    rlca
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207
    cp $64
    db $fc
    ret nz

    db $ec
    db $10
    ld h, [hl]
    sbc b
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
    ccf
    dec d
    rla
    ld a, [bc]
    ld a, $01
    ld e, l
    inc hl
    ccf
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207
    db $f4
    ld l, b
    ld a, [$fcdc]
    nop
    ld l, h
    sub b
    and $98
    sbc $00
    ret nz

    nop
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$1cea], sp
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $d4
    cp [hl]
    ret z

    cp $c0
    ld a, [hl]
    call nc, $c8be
    ld e, $e0
    db $fc
    nop
    ld a, $c4
    cp $28
    db $fc
    ld l, b
    ld hl, sp+$10
    ldh a, [rP1]
    nop
    stop
    db $10
    db $10
    db $10
    db $10
    jr c, jr_015_668a

    jr c, @+$3a

    jr c, jr_015_66b6

    jr c, jr_015_66b8

    ld a, h
    rlca
    nop
    jr jr_015_668c

    jr nz, jr_015_66a6

    dec h
    rra
    ld d, [hl]

jr_015_668a:
    ccf
    ld l, a

jr_015_668c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    db $fc
    inc a
    inc a
    call z, $f40c
    ld c, h
    db $f4
    call nc, $ecf8
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38
    rla
    ld h, a
    jr @-$6a

jr_015_66a6:
    ld l, e
    ld c, e
    inc [hl]
    ccf
    ld [$103f], sp
    ccf
    db $10
    rra
    ld [$d43c], sp
    call z, Call_015_5c34

jr_015_66b6:
    xor h
    cp h

jr_015_66b8:
    ld c, b
    db $fc

jr_015_66ba:
    jr z, jr_015_66b8

    jr nc, jr_015_66ba

    ld [$18fc], sp
    ld e, b
    ldh a, [$ffa8]
    ret nc

jr_015_66c5:
    ld d, b
    and b
    ld hl, sp+$00
    inc a
    ret nz

    db $fc
    nop
    db $fc
    ld h, b
    ld hl, sp+$60
    ld hl, sp+$64
    ld hl, sp-$6c
    sub b
    ld l, b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_66fc

    daa
    jr @+$36

    dec bc
    ld c, e

jr_015_66ea:
    inc [hl]
    sbc a
    ld l, b
    ld a, a
    db $10
    rra
    nop
    nop
    nop
    jr c, jr_015_66c5

    ret z

    jr nc, jr_015_6750

    and b
    cp h
    ld b, b
    db $fc

jr_015_66fc:
    jr nz, jr_015_66ea

    db $10
    db $ec
    db $10
    ld a, [$f4d4]
    ret z

    db $ec
    db $10

jr_015_6707:
    ldh a, [c]
    xor h
    ld sp, hl
    ld h, [hl]
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    db $f4
    ld l, b
    ld hl, sp-$70
    sbc b
    ld h, b
    cp b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_015_676d

    nop
    ccf
    db $10
    ccf
    db $10
    rra
    nop
    ld [$1d07], sp
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    ld hl, sp+$30
    ld hl, sp+$00
    jr nc, jr_015_6707

    add sp, $70
    ldh a, [rP1]
    ldh a, [rP1]
    sbc b
    ld h, b
    ld a, b

jr_015_6750:
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
    ldh a, [$fff8]
    ret nz

    ld hl, sp+$00

jr_015_676d:
    db $fc
    nop
    cp $04
    ccf
    inc e

jr_015_6773:
    ccf
    jr jr_015_67b5

    jr jr_015_67f7

    db $10
    ld e, e
    inc h
    ld d, a
    add hl, hl
    ld e, a
    inc hl
    cpl
    ld [de], a
    cp $04
    db $fc
    nop
    cp $00
    cp $04
    db $fc
    adc b
    cp $94
    or $0c
    ldh a, [c]
    call z, $0d1f
    rra
    inc c
    ccf
    inc de
    ccf
    add hl, de
    ccf
    nop
    rrca
    ld bc, $031f
    rrca
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    rrca
    ld b, $06
    ld bc, $0205
    rlca
    nop
    ld b, $00
    nop
    nop
    jr nc, jr_015_6773

    sbc b
    ld [hl], b

jr_015_67b5:
    ld hl, sp+$60
    db $fc
    nop
    xor h
    db $10
    jr z, jr_015_67cd

    ld e, b
    jr nz, jr_015_67f0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_67cd:
    nop
    nop
    ld [$030a], sp
    nop
    inc e
    inc de
    jr c, jr_015_6806

    ld [hl], l
    ccf
    ld a, e
    ld e, [hl]
    rst $28
    db $f4
    rst $10
    db $eb
    rst $38
    and a
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

jr_015_67f0:
    ld a, a
    rst $28
    call nc, $c5df
    rst $18
    adc h

jr_015_67f7:
    adc a
    add a
    add a
    add b
    xor h
    add e
    cp a
    xor b
    rst $38
    cp a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a

jr_015_6806:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_015_680b:
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    rst $10
    cp $ce
    pop af
    rst $28
    ldh a, [$ffeb]
    db $fc
    or $f8
    ld hl, sp-$04
    ldh [$fff8], a
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    rra
    nop
    rrca
    nop
    rrca
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rst $08
    rlca
    rst $20
    ret nz

    db $ec
    inc bc
    rst $38
    ld [$37ff], sp
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $10
    jr c, jr_015_680b

    ld a, a
    ld l, a
    rra
    rra
    nop
    rst $38
    ld b, $e6
    ld bc, $00ef
    rst $30
    ld [$70ae], sp
    db $f4
    ld hl, sp-$28
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
    rlca
    rrca
    nop
    rlca
    nop

jr_015_686f:
    rlca
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rst $28
    rlca
    rst $30
    ldh [$fff2], a
    ld bc, $02ff
    rst $38
    dec e
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld l, e
    inc e
    ld e, a
    ccf
    scf
    rrca
    rrca
    nop
    rst $38
    inc bc
    di
    nop
    or $03
    rst $38
    nop
    push de
    ld a, [hl-]
    ei
    db $fc
    db $ed
    ldh a, [$fff0]
    nop
    cp $80
    ret c

    jr nz, jr_015_68fe

    and b
    add sp, $70

jr_015_68a9:
    ldh a, [rP1]
    ld hl, sp+$00
    jr c, jr_015_686f

    ldh a, [rP1]
    ld [hl-], a
    rra
    jr jr_015_68bc

    add hl, sp
    rlca
    ld e, c
    daa
    dec sp
    rlca
    inc bc

jr_015_68bc:
    rlca
    inc bc
    rlca
    ld bc, $9807
    ldh a, [$ff3c]
    ldh a, [$ff38]
    ret nz

    jr jr_015_68a9

jr_015_68c9:
    adc h
    ldh a, [$ffbc]
    ret nz

    add b
    ret nz

    nop
    ret nz

    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ld hl, sp+$00
    inc [hl]
    ret z

    ldh a, [c]
    inc l
    ld a, [$0e64]
    nop
    add hl, de
    ld c, $ff
    nop
    ldh a, [$ff7f]
    add a
    ld a, b
    ld l, a
    ld a, [hl-]
    ld l, e
    ld a, $62
    dec a
    nop
    nop
    rra
    nop
    ldh [$ff1f], a
    ldh [$ffdf], a
    db $f4
    rra
    ld a, [$edbf]

jr_015_68fe:
    or [hl]
    rst $18
    xor c
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_68c9

    ld h, b
    ret nz

    or b
    ldh [rSVBK], a

jr_015_690e:
    ldh [$ff90], a
    ld h, b
    ld [hl-], a
    dec e
    jr nc, @+$21

    add hl, de
    ld c, $0e
    nop
    rrca
    ld b, $0f
    rlca
    rrca
    nop
    ld c, $04
    cp a
    ld d, a
    rst $38
    inc h
    rst $38
    or l
    rst $38
    inc h
    rst $38
    rra
    rst $18
    jr nz, jr_015_690e

    rst $18
    rst $38
    nop
    ret nc

    and b
    ldh a, [$ff80]
    ldh a, [$ffa0]
    ldh [$ff80], a
    ldh [rP1], a
    ld d, b
    and b
    ldh [rP1], a
    ldh [rLCDC], a
    add a
    nop
    rlca
    nop
    ld b, $01
    rrca
    rlca
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    db $fc
    adc b
    ld a, [hl]
    adc h
    ld a, $c4
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_699c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    rra
    inc sp
    dec c
    ccf
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
    xor d
    call c, $28f6
    cp $94
    rra
    ld b, $0f
    inc b
    rrca
    ld bc, $0e19
    inc [hl]
    dec de
    ld [hl], $1d
    ld h, e
    inc a
    ld e, [hl]
    ccf
    cp $b0
    rst $38
    sub [hl]
    rst $38
    and $ee
    db $10
    cp b
    ld b, b
    db $fc

jr_015_699c:
    nop
    ld hl, sp-$80
    add sp, $30
    xor [hl]
    ld [hl], c
    rst $18
    ld h, b
    rst $38
    ld b, [hl]
    cp $4f
    sbc h
    ld l, a
    ld c, c
    ld [hl], $27
    jr jr_015_69cf

    nop
    ld a, b
    add b
    inc a
    ret nz

    cp b
    ld b, b

jr_015_69b7:
    and b
    ld b, b
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_69da

    jr c, jr_015_69ec

    dec l
    rra

jr_015_69cf:
    ccf
    nop
    nop
    nop
    ldh [rP1], a

jr_015_69d5:
    jr jr_015_69b7

    inc b
    ld hl, sp+$0c

jr_015_69da:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    ccf
    rra
    ld l, [hl]
    ld sp, $6cdf
    db $fd
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    di

jr_015_69ec:
    ld c, h
    rst $18
    ld h, b
    ld l, [hl]
    ld sp, $1cea
    or $a8
    cp $d4
    cp $50
    rst $38
    ld d, [hl]
    rst $38
    ld b, [hl]
    cp $d0
    ld hl, sp-$80
    ld a, a
    rra
    ccf
    nop
    add hl, sp
    ld e, $1a
    inc b
    ld e, $00
    ld h, $18
    inc e
    nop
    nop
    nop
    db $fc
    nop
    jr c, jr_015_69d5

    add sp, $70
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_6a54

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $1f
    nop
    rlca
    add hl, de
    ld bc, $011e
    ld e, $02
    rra

jr_015_6a3b:
    dec bc
    rra
    rla
    rra
    dec e
    rra
    db $fc
    nop
    inc b
    ld hl, sp-$04
    nop
    xor b
    ld d, b
    xor b
    ld d, b
    xor b
    ld d, b
    ret nc

    jr nz, @-$4e

    ld b, b
    ld a, [hl+]
    rla
    inc d

jr_015_6a54:
    dec bc

jr_015_6a55:
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, @+$41

    nop
    ccf
    db $10
    ld a, a
    jr nc, @+$61

    ldh a, [$ffaf]
    sub $5f
    xor h
    cp $08
    jr c, jr_015_6a3b

    ldh a, [rNR41]
    ldh [rP1], a
    ldh [rP1], a
    ld a, b
    scf
    dec sp
    inc b
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

    and b
    ld b, b
    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_6a55

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$34
    ld hl, sp+$03
    ld bc, $0106
    add hl, bc
    ld b, $04
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    ld b, $07
    nop
    add d

jr_015_6ab2:
    ld a, l
    ld a, h
    add e
    ld b, l
    cp d
    cp e
    ld b, h
    rst $38
    add d
    rst $38
    ld bc, $00ff
    rst $38
    jr c, jr_015_6ab2

    nop
    add sp, $70
    inc d
    add sp, $6a
    sub h
    jp c, $ea24

    sub h
    ld [$d694], a
    jr z, jr_015_6b32

    rra
    ld c, [hl]
    ld sp, $3b5f
    ei
    nop
    ld e, d
    ld hl, $0031
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    ld a, b
    add b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    ld [$1407], sp
    rrca
    dec e
    rrca
    ld e, $0f
    dec de
    rrca
    ldh a, [rP1]
    inc c
    ldh a, [rSC]
    db $fc
    inc bc
    db $fc
    dec b
    cp $57
    cp $ef
    cp $fb
    cp $00
    nop

jr_015_6b13:
    nop
    nop
    nop
    nop
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
    dec c
    rlca
    ld a, [bc]
    dec b
    rlca
    nop
    add hl, bc
    ld b, $12

jr_015_6b2a:
    dec c
    rrca
    ld [bc], a
    rra
    inc c
    rra
    inc c
    ld d, a

jr_015_6b32:
    db $fc
    dec bc
    db $f4
    or a
    ld c, e
    rra
    rst $20
    rst $38
    inc c
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    xor b
    ld d, b
    xor b
    ld d, b
    add sp, $10
    ret nc

    jr nz, jr_015_6b2a

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_6b13

    or b
    ld h, b
    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
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
    rlca
    ld [bc], a
    ldh [rP1], a
    sub b
    ldh [$fffe], a
    nop
    ld [bc], a
    db $fc
    ld a, $c0
    db $f4
    xor b
    or h
    add sp, -$0c
    xor b
    inc bc
    ld bc, $010f
    add hl, de
    ld c, $35
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    ld a, [hl+]
    ld e, a
    daa
    ld hl, sp+$50
    ld hl, sp+$50

jr_015_6b95:
    ld hl, sp-$20
    db $ec
    jr @-$02

    ld e, b
    xor $5c
    or $1c
    ldh a, [c]
    ld l, h
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    inc e
    inc bc
    dec sp
    inc d
    ccf
    inc d
    ldh a, [c]
    ld l, h
    ld a, [$f4a4]
    ld l, b
    ld hl, sp+$60
    add sp, $70
    db $f4
    ld l, b
    ldh a, [c]
    inc c
    cp $00
    rra
    nop
    dec b
    ld [bc], a
    dec c
    ld b, $07
    nop
    dec bc
    inc b
    ld c, $01
    inc bc
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_015_6b95

    ret nc

    ldh [$ffe0], a
    nop
    or b
    ld b, b
    ld [hl], b
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    jr c, jr_015_6be5

jr_015_6be5:
    scf
    jr jr_015_6c1f

    rra
    jr nc, jr_015_6c0a

    ld [hl], $1f
    ld [hl], c
    ld e, $ff
    ld d, [hl]
    ccf
    inc d
    rra
    dec b
    rra
    inc c
    rst $08
    rlca
    rst $20
    ret nz

    ccf
    ldh [$ff9f], a
    ld h, [hl]
    ld e, a
    and a
    ldh a, [c]
    call z, $d4fa
    or $c8
    jp hl


    sub [hl]
    ldh a, [c]

jr_015_6c0a:
    inc c
    ld a, h
    and b
    ldh a, [rLCDC]
    ld hl, sp-$40
    cp $51
    xor c
    ld d, [hl]

jr_015_6c15:
    ld l, a
    db $10
    jr c, jr_015_6c19

jr_015_6c19:
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6c1f:
    nop
    nop
    rst $20
    nop
    call $0f06
    nop
    rla
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nc, jr_015_6c15

    ld hl, sp-$40
    db $fc
    nop
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $1f00
    ld bc, $1b34
    dec a
    ld d, $3a
    dec c
    dec [hl]
    ld a, [de]
    ld [hl], e
    ld a, $f9
    ld l, a
    add b
    nop
    add b
    nop
    add e
    nop
    call z, $f883
    rst $08
    push af
    ld e, a
    ei
    xor [hl]
    rst $38
    ld h, h
    ld sp, hl
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
    ld e, a
    xor e
    sbc a
    rst $20
    ccf
    call nz, $25df
    ccf
    jr jr_015_6cbb

    add hl, de
    rra
    ld b, $0f
    inc bc
    sub $7c
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    jp nc, $f92c

    ld b, [hl]
    rlca
    ld bc, $0207
    rlca
    nop
    dec c
    ld b, $0f
    nop
    rla
    ld [$000e], sp
    nop
    nop
    or $00
    ld hl, sp+$00
    ret nc

    jr nz, jr_015_6cd8

    ldh [$fff8], a
    ret nz

    db $fc
    nop
    sbc b
    ld h, b
    ldh a, [rP1]
    jr c, @+$09

    dec de
    inc c
    rla
    ld c, $3e
    nop
    ld d, $08

jr_015_6cbb:
    inc c
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    dec e
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b

jr_015_6cd8:
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    daa
    ld a, [de]
    ccf
    inc b
    ccf
    ld d, $7f
    inc b
    rst $38
    ld h, e
    ei

jr_015_6cec:
    ld h, h
    ld a, h
    inc de
    ccf
    jr jr_015_6cec

    db $f4
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffea], a
    inc d
    inc e
    ldh [$fffc], a
    ld [$001f], sp
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    db $fc
    adc b
    ld a, [hl]
    add h
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_6d5c

    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca
    inc sp
    dec e
    scf
    jr jr_015_6d5f

    ld d, $00
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$54
    ret c

    sub $2c
    ld a, [$fe94]
    or h
    cpl
    inc d
    ccf
    ld b, $3e
    dec d
    ld e, $01
    ld e, $0d
    rra

jr_015_6d4c:
    inc c
    ld a, $11
    ccf
    jr jr_015_6d4c

    sub h
    cp $30
    ld a, $d4
    inc a
    ret nc

    inc [hl]
    ret z

    db $fc

jr_015_6d5c:
    nop
    ld a, [de]
    db $e4

jr_015_6d5f:
    db $fc
    ld [$001f], sp
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    db $fc
    adc b
    ld a, [hl]
    add h
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_6dbc

    nop
    cpl
    inc d
    ccf
    rlca
    ccf
    inc d
    rra
    inc bc
    rra
    rlca
    rra
    inc c
    ld e, $09
    rrca
    nop
    ld a, [$fe94]
    ldh a, [$fffe]
    inc [hl]
    db $f4
    ld l, b
    db $fc
    ld b, b
    db $f4
    ld [$e41a], sp
    db $fc
    ld [$000f], sp
    rlca
    nop
    ld b, $01

jr_015_6da7:
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    inc [hl]

jr_015_6dbc:
    rra
    dec sp
    dec e
    scf
    jr jr_015_6dc2

jr_015_6dc2:
    nop
    ldh [rP1], a
    jr jr_015_6da7

    inc b
    ld hl, sp+$4c
    ld hl, sp-$4a
    call c, $2cda
    cp $94
    ccf
    ld b, $3f
    inc d
    ccf
    rlca
    rla
    ld [$031f], sp
    rra
    rlca
    rra
    inc c
    rra
    ld [$b0fe], sp
    cp $94
    cp $f0
    db $f4
    jr z, @-$02

    ld b, b
    db $e4
    jr jr_015_6e08

    db $e4
    db $fc
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6e08:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or $28
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $db
    ld [hl], h
    or l
    ld [$54fb], a
    push af
    xor d
    db $eb
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    rst $10
    add hl, hl
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$7ff4]
    nop
    ccf
    ld [de], a
    ccf
    jr jr_015_7087

    dec de
    rra
    ld [$0b1c], sp
    rrca
    nop
    rlca
    nop
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ld h, b
    ld [$1c14], a
    ldh [$fffc], a
    ld [$88fc], sp
    rlca
    nop
    ld b, $01
    rrca
    rlca
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    ld a, [hl]
    adc h
    ld a, $c4
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, @+$3e

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca

jr_015_7087:
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    dec e
    daa
    ld a, [de]
    ccf
    inc b
    ccf
    ld de, $031e
    dec e
    rlca
    ld a, $13
    ccf
    dec d
    ccf
    ld a, [de]
    dec de
    dec b
    cp $10
    cp [hl]
    ld b, h
    call c, $aea0
    ld d, b
    sbc $a4
    xor [hl]
    ld d, h
    sbc $ac
    xor h
    ld d, b
    cpl
    ld [de], a
    rra
    ld [$000f], sp
    inc de
    inc c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$fc84]
    ld [$00f8], sp
    ld c, h
    jr nc, @+$3e

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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    inc e
    daa
    add hl, de
    ldh [rP1], a
    jr @-$1e

jr_015_70e5:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc

Jump_015_70eb:
    xor [hl]
    call c, Call_000_0cf2
    ld a, [$3e44]
    inc bc
    dec a
    rla
    rra
    ld [bc], a
    ccf
    dec d
    scf
    ld a, [de]
    ld a, [hl-]
    dec d
    dec e
    ld [bc], a
    ld e, $01
    sbc $a0
    xor [hl]
    ld d, h
    call c, $aea0
    ld d, h
    ld d, [hl]
    xor h
    xor [hl]
    ld d, h
    ld e, h
    and b
    cp b
    ld b, b
    rlca
    nop
    ld b, $01
    rrca
    rlca
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    ldh a, [rP1]
    jr nc, jr_015_70e5

    ld hl, sp+$70
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_716a

    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    inc b
    inc bc
    inc b
    inc bc
    ld a, [bc]
    rlca

jr_015_714d:
    ld c, $07
    rrca
    rlca
    ccf
    dec d
    rst $38
    ld [bc], a
    rlca
    ld sp, hl
    ld bc, $01fe
    cp $02
    rst $38
    adc e
    rst $38
    ld d, a
    rst $38
    and b
    ld b, b
    ld h, b
    add b
    or b
    ld b, b

jr_015_7167:
    ld d, b
    and b
    or b

jr_015_716a:
    ld b, b
    ret nc

    jr nz, @-$4e

    ld b, b
    ldh [rP1], a
    ld l, a
    ccf
    dec [hl]
    rra

jr_015_7175:
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    inc h
    dec de
    ld e, a
    jr nz, jr_015_71bf

    db $10
    rst $28
    ld a, [$f65f]
    xor [hl]
    call nc, $a85c
    ld hl, sp+$10
    jr c, jr_015_714d

    ldh a, [rNR41]
    ldh [rP1], a
    ccf
    nop
    ld a, a
    jr nc, jr_015_720e

    scf
    dec sp
    inc b
    dec e
    ld c, $3f
    nop
    ld d, $08
    inc c
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, jr_015_7167

    and b
    ld b, b
    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    ld [$1407], sp
    rrca

jr_015_71bf:
    dec e
    rrca
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc c
    ldh a, [rSC]
    db $fc
    ld [bc], a
    db $fc
    dec b

jr_015_71ce:
    cp $17
    cp $0f
    rlca
    dec c
    rlca
    ld b, $03
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    inc b
    inc bc
    add hl, bc
    ld b, $57
    rst $38
    db $fd
    rst $38
    xor e
    cp $55
    ld a, [$748b]
    rst $18
    jr nz, jr_015_7175

    ld a, c
    rst $38
    ld b, $c0
    nop
    ldh [rLCDC], a
    ret nc

    and b
    ldh a, [rLCDC]
    ret c

    and b
    xor b
    ld d, b
    ret c

    and b
    add sp, -$70
    inc bc
    nop
    ld bc, $0200
    ld bc, $0001
    inc bc
    nop
    ld bc, $0000

jr_015_720e:
    nop
    nop
    nop
    rst $38
    ld bc, $00ff
    cp $01
    add e
    ld a, h
    rst $38
    nop
    ld l, e
    add h
    add $00
    nop
    nop
    db $ec
    db $10
    ret c

    jr nz, jr_015_71ce

    ld d, b
    ld d, b
    and b
    ldh [rP1], a
    nop
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
    inc c
    ldh a, [$ff03]
    db $fc
    inc bc
    db $fc
    dec b
    cp $17
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    and b
    ld b, b
    ldh [$ff80], a
    ld e, $0f
    dec de
    rrca
    dec c
    rlca
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    rrca
    nop
    ld de, $0f0e
    nop
    xor a
    cp $fb
    cp $57
    db $fd
    xor e
    db $f4
    rla
    db $eb
    cp a
    ld b, e
    rrca
    db $f4
    rst $38
    inc c
    or b
    ld b, b
    ld d, b
    and b
    or b
    ld b, b
    ret nc

    jr nz, @-$4e

    ld b, b
    ldh [rP1], a
    and b
    ld b, b

jr_015_727f:
    ret nz

    nop
    ccf
    db $10
    rra
    nop
    rla
    ld [$1728], sp
    rra
    ld [$003e], sp
    ld d, $08
    inc c
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nc

    jr nz, jr_015_72c0

    ret nc

    ldh a, [rNR41]
    ld hl, sp+$00
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    ld [bc], a
    dec de
    dec c
    dec a
    ld d, $7e
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    jr nz, jr_015_727f

    ld b, b

jr_015_72c0:
    add b
    rst $38
    ld d, h
    db $fc
    inc hl
    ld a, b
    cpl
    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    ld e, a
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    dec bc
    inc b
    rrca
    inc b
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    ld hl, sp-$80
    ret z

    jr nc, jr_015_7360

    sbc b
    ld hl, sp+$40
    ldh a, [rNR41]
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld b, $07
    nop
    dec bc
    inc b
    ld c, $01
    inc bc

jr_015_730e:
    nop
    nop
    nop
    ld hl, sp+$30
    ld hl, sp+$30
    ld hl, sp-$40
    ldh a, [rP1]
    or b
    ld b, b
    ld [hl], b
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_7338

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_7338:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ld bc, $0000
    nop
    rlca
    nop
    dec c
    ld b, $1a
    rrca
    ld d, $0d
    ld a, [de]

jr_015_734e:
    rrca
    ld d, $0d
    ld a, a
    sbc [hl]
    cp a
    ld d, e
    ld a, a
    rla
    rst $38
    inc sp
    cp a
    ld e, $df
    nop
    di
    ld c, l
    rst $38

jr_015_7360:
    inc sp
    adc b
    ldh a, [$ffc8]
    jr nc, jr_015_734e

    ld d, b
    ret c

    jr nz, jr_015_730e

    ld e, b
    ld c, b
    or b
    ldh a, [rP1]
    ret nz

    nop
    ld a, [de]
    rrca
    ld d, $0d
    ld a, [bc]
    rlca
    ld c, $05
    rlca

jr_015_737a:
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc a
    rst $38
    ld b, b
    xor $37
    cp a
    nop
    ld l, $11
    add hl, sp
    ld b, $0f
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
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

jr_015_73ae:
    rrca
    ld d, $0d
    ld a, a
    sbc [hl]
    cp a
    ld d, e
    rst $38
    rla
    rst $38
    inc sp
    rst $38
    ld e, $ff
    ld b, c
    rst $38
    ld [hl-], a
    rst $38
    ld a, $88
    ldh a, [$ffc8]
    jr nc, jr_015_73ae

    ld d, b
    ret nc

    jr nz, jr_015_737a

    ld b, b
    ret z

    or b
    db $e4
    sbc b
    ret c

    nop
    ld a, [bc]
    rlca
    ld c, $05
    rlca
    ld [bc], a

jr_015_73d7:
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
    rst $38
    ld b, b
    rst $38
    ld [$0699], sp
    scf
    dec de
    rra
    nop
    ld l, $11
    add hl, sp
    ld b, $0f
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    add b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_740e

    jr nz, jr_015_7428

    jr nc, jr_015_742a

    ld [hl], b
    ccf
    ld e, d

jr_015_740e:
    ccf
    ld l, l
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_73d7

    ld [$18f0], sp
    ldh a, [rNR32]
    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp+$57

jr_015_7422:
    ccf
    ld b, [hl]
    dec sp
    ld l, l
    ld d, $7f

jr_015_7428:
    add hl, hl
    ccf

jr_015_742a:
    dec c
    ccf
    ld [$257f], sp
    ld a, a
    inc sp
    call nc, $c4b8
    jr c, jr_015_7422

jr_015_7436:
    ret nc

    db $fc
    jr z, jr_015_7436

    ld h, b
    cp $0c
    cp $f4
    db $fc
    jr jr_015_7481

    dec de
    ld a, $1b
    ld a, $03
    ld c, h
    inc sp
    ld a, e
    nop
    ld bc, $0100
    nop
    nop
    nop
    call nz, Call_015_44f8
    cp b
    and h
    ld e, b
    and [hl]
    ld e, b
    sbc h
    ldh [$ff50], a
    and b
    db $10
    ldh [$ffe0], a
    nop
    ld d, a
    ccf
    ld b, a
    jr c, jr_015_74d5

    inc de
    ld a, a
    daa
    ccf
    ld b, $3f
    ld b, $7f
    ld [hl], $7f
    ld [hl], $fe
    or b
    rst $38
    ld b, $c7
    ld a, [$1ce2]
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c

jr_015_7481:
    ld a, [hl-]
    rlca
    add hl, de
    rlca
    jr c, jr_015_749e

    dec e
    ld [bc], a
    ccf
    nop

jr_015_748b:
    ld c, l
    jr nc, @+$7d

    ld bc, $0102
    ldh [c], a
    inc e
    add d
    db $fc
    ldh [c], a
    inc e
    sub h
    add sp, -$64
    ldh [$ff96], a
    add sp, $0c

jr_015_749e:
    ldh a, [$ffe8]
    db $10
    cp d
    ld b, h
    ld b, h
    jr c, jr_015_74de

    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_015_74c0

    jr nz, jr_015_74da

    jr nc, @+$21

    ld d, b
    ccf
    ld l, b

jr_015_74c0:
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_748b

    ld [$18f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5a
    ccf
    ld l, l
    ccf

jr_015_74d5:
    scf
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_74da:
    dec bc
    ld e, $01
    inc h

jr_015_74de:
    dec de
    ld c, a
    jr nc, @+$2e

    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp-$28
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    db $ec
    nop
    ld a, $cc
    ccf
    nop
    ccf
    db $10
    rra
    nop
    rla
    ld [$0738], sp
    rla
    ld [$000c], sp
    nop
    nop
    rst $38
    inc h
    db $fd
    ld a, [hl-]
    ld sp, hl
    ld d, $f9
    ld b, $dd
    ld [hl+], a
    ccf
    ret nz

    sbc $20
    ld h, b
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_015_7526

    ld b, b
    ccf
    ld b, b
    ccf
    and b
    ld a, a
    ld [$f77f], a
    ld a, a
    nop
    nop
    add b
    nop
    ld h, b

jr_015_7526:
    add b
    db $10
    ldh [rNR10], a
    ldh [$ff28], a
    ldh a, [$ffbc]
    ldh a, [$ff7e]
    db $f4
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    jr z, @+$19

    dec a
    ld [bc], a
    ld c, b
    scf
    sbc a
    ld h, b
    ld a, a
    nop
    sbc $f4
    cp [hl]
    add sp, $5e
    and b
    cp [hl]
    ld e, b
    cp $08
    ld a, [hl]
    sub b
    db $fc
    ld h, b
    ld hl, sp+$40
    rra
    nop
    rra
    nop
    db $10
    rrca
    rla
    add hl, bc
    dec sp
    inc e
    ld a, l
    nop
    inc l
    db $10
    jr jr_015_7561

jr_015_7561:
    ret nz

    nop
    ret nz

    nop
    ld b, b
    add b
    and b
    ret nz

    ldh a, [rP1]
    jr nz, @-$3e

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_7575:
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    ccf
    nop
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    or d
    ld c, h
    ld a, c
    and [hl]
    cp $60
    ld bc, $0f00
    ld bc, $0f1c
    add hl, de
    ld b, $15
    ld a, [bc]
    ld c, $00
    nop
    nop
    nop
    nop
    ld e, [hl]

jr_015_75a2:
    add hl, sp
    ld l, a
    jr nc, jr_015_7575

    ld [hl], a

jr_015_75a7:
    rrca
    or $c6
    add hl, sp
    inc hl
    inc e
    dec e
    ld [bc], a
    rlca
    nop
    db $fc
    add b
    db $f4
    ld [$70e8], sp
    ld hl, sp+$00
    call z, $9c30
    ld h, b
    ld hl, sp+$00
    nop
    nop
    ld bc, $0e00

jr_015_75c4:
    ld bc, $0c18
    inc a
    db $10

jr_015_75c9:
    ld a, b
    jr nz, jr_015_75c4

    ld b, b
    ret nc

    ld h, b
    sub b
    ld h, b
    nop
    nop
    rlca
    nop
    jr @+$09

    ld [hl], b
    rra
    ld [$f73f], a
    dec a
    sbc $69
    xor a
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_75a7

    jr nc, jr_015_75c9

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp+$1c
    rlca
    ld l, d
    dec e
    push hl
    ld a, b
    ret


    jr nc, jr_015_75a2

    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    cp a
    ld c, a
    rst $18

jr_015_7604:
    add hl, hl
    rst $38
    dec bc
    rst $38
    ld e, c

jr_015_7609:
    rst $38
    ld h, a
    ld a, a
    jr jr_015_762d

    ld b, $0f
    inc b
    call nz, $e478
    sbc b
    db $f4
    xor b
    add sp, -$70
    sub b
    ld h, b
    ldh a, [rP1]
    ret z

    jr nc, jr_015_7604

    jr jr_015_7631

    nop
    add hl, bc
    ld b, $05
    ld [bc], a
    rrca
    ld b, $07
    nop
    dec bc
    inc b

jr_015_762d:
    rlca
    nop
    nop
    nop

jr_015_7631:
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    jr c, jr_015_7609

    db $fc
    ld h, b
    db $ec
    db $10
    cp b
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld l, a
    ld de, $2d7f
    ccf
    add hl, bc
    rra
    rlca
    rla
    ld [$0000], sp
    ld d, h
    cp b
    and h

jr_015_7656:
    ld e, b
    db $fc
    jr nz, jr_015_7656

    ld l, b
    ld hl, sp+$20
    db $fc
    ret z

    db $fc
    jr nc, jr_015_7671

    ld b, $1f
    dec bc
    rra
    inc b
    ld h, $18
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_7671:
    ei
    or h
    cp b
    ld b, a
    sub $2f
    adc $3f
    ld c, h
    ccf
    jr nz, jr_015_769c

    rra
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
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
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld e, a
    ld hl, $0d3f
    ccf

jr_015_769c:
    add hl, bc
    rra
    rlca
    rra
    ld [$0000], sp

jr_015_76a3:
    nop
    nop
    ld d, h
    cp b
    db $e4

jr_015_76a8:
    ld e, b

jr_015_76a9:
    db $f4
    jr z, jr_015_76a8

    ld h, b
    ld a, [$ff24]
    ret z

    nop
    nop
    nop
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
    ld b, b
    add b
    rra
    ld a, [bc]
    rra
    rlca
    daa
    jr @+$41

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    dec de
    inc a
    db $db
    cp l
    ld e, e
    cp e
    ld b, a
    ld [hl], e
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    jr nz, jr_015_76a3

    and b
    ret nz

jr_015_76e5:
    and b
    ret nz

    jr nz, jr_015_76a9

    ld b, b
    add b
    add b
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
    dec de
    rrca
    inc [hl]
    rra
    dec sp
    dec e
    scf
    jr jr_015_772f

    ld d, $e0
    nop
    jr jr_015_76e5

    and h
    ld hl, sp-$14
    ld hl, sp-$4a
    call c, Call_000_2cfa
    or $8c
    ld a, [$3fb4]
    inc b
    ccf
    dec de
    ccf
    dec de
    ccf
    inc de
    ccf
    dec de
    rra
    inc b
    ld e, $0d
    rrca
    nop
    cp $90
    cp $f4
    cp $70
    cp $70
    ld sp, hl
    ld h, [hl]
    ldh a, [c]
    inc c
    inc l
    ret nc

jr_015_772f:
    rst $38
    inc c
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    rst $38
    add e
    ld [hl], a
    add e
    inc sp
    ret nz

    jp hl


    ld [hl], b
    ld [hl], c
    nop
    ld a, c
    nop
    ld c, h
    jr nc, jr_015_778c

    nop
    ldh [rP1], a
    sbc b
    ld h, b
    call nz, $e2f8
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
    inc b
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    ld h, a
    ld a, a
    inc sp
    ccf
    inc c
    ld e, $05
    rlca
    nop
    cp $90
    cp $f4
    cp $70
    cp $70
    ld sp, hl
    ld h, [hl]
    ldh a, [c]

jr_015_778c:
    inc c
    inc l
    ret nc

    rst $38
    inc c
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
    ccf
    ld b, $3f
    inc d
    cp a
    rlca
    rst $38
    add a
    rst $38
    db $e3
    rst $38
    inc [hl]
    ld a, $0d
    rrca
    nop
    cp $b0
    cp $94
    cp $f0
    db $fc
    ld [hl], b
    cp $60
    pop af
    ld c, $2e
    ret nc

    rst $38
    inc c
    ccf
    ld b, $3f
    inc d
    ccf
    rlca
    rra
    rlca
    rrca
    inc bc
    rst $38
    nop
    cp $ed
    rst $38
    xor b
    cp $b0
    cp $94
    cp $f0
    db $fc
    ld [hl], b
    cp $60
    pop af
    ld c, $2e
    ret nc

    rst $38
    inc c
    rst $38
    nop
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    ld a, e
    and a
    push af
    inc hl
    inc sp
    ret nz

    jp hl


    ld [hl], b
    pop af
    nop
    ld c, c
    jr nc, @+$76

    jr c, jr_015_784c

    nop
    ldh [rP1], a
    sbc b
    ld h, b

jr_015_7815:
    call nz, $e2f8
    db $fc
    ld h, d
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b

Call_015_7820:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_7838

    inc [hl]
    rra
    dec sp
    rra
    dec l
    rra
    ld a, [hl-]
    rra
    ldh [rP1], a
    jr jr_015_7815

    inc b
    ld hl, sp+$0c

Call_015_7838:
jr_015_7838:
    ld hl, sp-$6a
    db $fc
    xor [hl]
    db $fc
    ld l, d
    db $fc
    and [hl]
    call c, $152f
    ccf
    nop
    ccf
    ld d, $3f
    inc b
    rra
    rlca
    ccf

jr_015_784c:
    inc de
    rst $38
    jr z, @+$01

    ldh [$fff2], a
    inc l
    cp $90
    cp $b4
    cp $90
    db $fc
    ldh a, [$fff2]
    ld l, h
    ld sp, hl
    ld d, $ff
    adc b
    rst $20
    ret nz

    add $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    ld a, a
    add a
    scf
    jp Jump_015_70eb


    ld a, e
    ld bc, $007b
    ld c, l
    jr nc, jr_015_78ba

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
    xor $b0
    cp $94
    cp $f0
    ld [$9c74], a
    ld h, b
    xor $1c
    db $fc
    ret nz

    ld d, a
    xor h
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

jr_015_78ba:
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
    ld [$2b75], sp
    ld d, a
    ld a, [hl+]
    ld d, a
    add hl, hl
    ret nz

    nop
    or b
    ld b, b

jr_015_78d5:
    adc b
    ld [hl], b
    sbc b
    ld [hl], b
    xor h
    ld hl, sp+$5c
    cp b
    db $e4
    ld e, b
    db $f4
    add sp, $3f
    nop
    ccf
    ld a, [de]
    ccf
    jr jr_015_7967

    inc hl
    ld a, a
    inc l
    ccf
    rrca
    rrca
    ld bc, $0007
    cp $90
    cp $b4
    cp $90
    ld sp, hl
    and $f2
    inc c
    db $fc
    or b
    ldh a, [$ffc0]
    ldh a, [rP1]
    rlca
    nop
    ld b, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    ld [hl], b
    add b
    jr nc, jr_015_78d5

    add sp, $70

jr_015_7917:
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_015_795a

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
    ld [hl], a
    ld [$237d], sp
    ld a, a
    ld a, [de]
    ld a, a
    add hl, de
    ret nz

    nop
    or b
    ld b, b
    ret z

    ld [hl], b
    ret c

    ld [hl], b
    xor h
    ld hl, sp+$54
    cp b
    db $ec
    ld e, b
    db $f4
    jr z, jr_015_7961

    nop
    daa
    jr jr_015_7974

    ld de, $003f
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff80]
    ld [hl], b
    add b
    jr nc, jr_015_7917

    ret nc

    ld h, b
    ld a, b

jr_015_795a:
    jr nc, @-$46

    ld b, b
    ld e, h
    jr nz, jr_015_799c

    nop

jr_015_7961:
    nop
    nop
    adc b
    adc b
    sbc d
    sbc d

jr_015_7967:
    sbc e
    sbc d
    adc a
    adc e
    cp [hl]
    xor a
    cp a
    cp a
    rst $38
    rst $18
    jr nz, jr_015_7993

    and b

jr_015_7974:
    and b
    and b
    and b
    ldh [rNR41], a
    jr c, @-$1e

    ld h, h
    ld hl, sp+$6c
    ld hl, sp+$6e
    db $fc
    rst $28
    rst $18
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
    ld a, d
    db $fc

jr_015_7993:
    or $fc
    ld [$e2fc], a
    db $fc
    or $e8
    db $fd

jr_015_799c:
    ldh a, [c]
    ld sp, hl
    or $ea
    db $f4
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    ld a, a
    ld [hl], l
    ld a, a
    ld a, a
    ld [hl], l
    dec sp
    ld [hl], l
    db $fc
    add sp, -$04
    ld hl, sp-$28
    ldh a, [$ffd4]
    add sp, -$24
    ldh [$fff6], a
    ret z

    xor $d0
    cp h
    ret nz

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
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    ld d, a
    ccf
    ld b, d
    ccf
    ld l, l
    ld [de], a
    ld a, a
    add hl, hl
    ccf
    dec c
    rra
    add hl, bc
    ccf
    rla
    ccf
    ld [$b8d4], sp
    call nz, $ec38
    ret nc

    cp $28
    ld sp, hl
    ld h, [hl]
    ldh a, [c]
    inc l
    db $fc
    ret nc

    ld hl, sp+$20
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    xor $90
    pop af
    ld c, $fe
    ret nz

    db $fc
    ld b, b
    ccf
    dec e
    rra
    ld [$007f], sp
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
    ldh a, [$ff60]
    add sp, -$30
    ld hl, sp+$00
    db $ec
    db $10
    call c, $f820
    nop
    or b
    nop
    add b
    nop
    and d
    ld a, a
    push de
    ld a, a
    xor d
    ld a, a
    ld a, a
    ld a, $7f
    ld a, $5d
    ld a, $3e
    nop
    nop
    nop
    add b

jr_015_7a42:
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
    call nc, $c4b8
    jr c, jr_015_7a42

jr_015_7a56:
    ret nc

    db $fc
    jr z, jr_015_7a56

    ld h, b
    ldh a, [c]
    inc l
    ld sp, hl
    sub $fe

jr_015_7a60:
    jr nc, jr_015_7a62

jr_015_7a62:
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ret nc

    jr nz, jr_015_7a60

    ld [hl], b
    cp b
    ld b, b
    db $ec
    db $10
    call c, $f820
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    inc bc
    nop
    nop
    nop
    ld hl, sp+$00
    xor h
    ret c

    halt
    xor h
    ld [hl+], a
    call c, $f806

jr_015_7aad:
    db $fc
    nop
    ret nc

    jr nz, jr_015_7ae2

    ret nz

    ld [$18f0], sp
    ldh a, [rNR32]
    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld a, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_015_7b0f

    nop
    db $fc
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld e, b
    and b
    ld hl, sp+$10
    jr c, jr_015_7aad

    ldh a, [rNR41]
    ldh [rP1], a
    rrca

jr_015_7ae2:
    nop
    rrca
    nop
    ld [$1d07], sp
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, @-$3e

    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
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

jr_015_7b0f:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld [hl], h
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp+$0d
    ld [bc], a
    ld de, $190e
    ld c, $39
    ld e, $2d
    ld e, $37
    ld e, $3d
    ld e, $1f
    ld c, $55
    cp $ab
    cp $55
    xor $bb
    sub $29
    sub $29
    sub $11
    xor $01
    cp $57
    inc a
    ld a, [hl+]
    rla
    dec [hl]
    ld a, [bc]
    ld c, a
    jr nc, jr_015_7ae2

    ld h, a
    ld a, a
    nop
    rra
    nop
    ccf
    db $10
    ld hl, sp+$00
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh a, [rNR41]
    ldh a, [$ffa0]
    ldh [$ffc0], a
    ret nz

    nop
    dec sp
    inc b
    inc a
    inc bc
    rla
    ld [$000d], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

    and b
    ld b, b
    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    nop
    jr jr_015_7b90

    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_7b90:
    ccf
    ld [bc], a
    ld [bc], a
    sub d
    sub d
    jp nc, Jump_000_3612

    add $0e
    or $4e
    or $d6
    ld a, [$faee]
    ld a, d
    ccf
    ld h, h
    ccf
    jr c, @+$19

    ld [hl], a
    ld [$639c], sp
    ld c, e
    inc [hl]
    ccf
    ld [$103f], sp
    cp [hl]
    ld a, [$fa4e]
    ld a, $d6
    sbc $26
    ld a, [hl]
    adc [hl]
    cp [hl]
    ld c, [hl]
    cp $2e
    cp $16
    rra
    nop
    rla
    ld [$0738], sp
    ld a, h
    dec bc
    ld e, a
    inc h
    cpl
    inc de
    rra
    rlca
    rlca
    rlca
    or $1a
    call c, $3c2a
    add $7c
    and d

jr_015_7bd9:
    cp $42
    call c, Call_015_7ca6
    call z, Call_015_5cf8
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
    jr jr_015_7c10

    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_7c10:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_7bd9

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp+$7a
    ccf
    ld h, h
    ccf
    jr c, @+$19

    scf
    ld [$037c], sp
    adc e
    ld [hl], h
    ld a, a
    ld [$000f], sp
    cp h
    ld hl, sp+$4c
    ld hl, sp+$38
    ret nc

    ret c

    jr nz, jr_015_7caa

    add b
    or b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$10
    rrca
    nop
    rla
    ld [$0738], sp
    ld a, h
    dec bc
    ld e, a
    inc h
    cpl
    inc de
    rra
    inc bc
    rlca
    inc bc
    ld hl, sp+$10
    ret c

    jr nz, jr_015_7c8e

    ret nz

    ld a, h
    and b
    db $fc
    ld b, b
    call c, $fc20
    ld c, b
    db $fc
    ld e, b
    ld b, $03
    dec b
    inc bc
    ld b, $03
    dec b
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
    ccf
    nop
    rrca
    nop
    rrca
    nop
    dec bc
    inc b
    inc e
    dec bc
    cpl
    db $10
    rla

jr_015_7c8e:
    ld [$000d], sp
    cp $14
    cp $34
    cp $0c
    cp $1c
    ld a, $dc
    sbc $ec
    cp $04
    cp h
    ld c, b
    cp $4c
    ld a, h
    nop
    nop

Call_015_7ca6:
    nop
    nop

Call_015_7ca8:
    nop
    nop

jr_015_7caa:
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $020d
    jr @+$11

    dec [hl]
    rra
    dec sp
    ld e, $6f
    dec [hl]
    ld d, a
    ld a, [hl+]
    ld e, a
    dec h
    ld d, $e0
    adc [hl]
    db $f4
    call z, $d270
    inc l
    ld [$de94], a
    ld l, b
    cp [hl]
    call nc, $887e
    ld a, $03
    dec e
    ld [bc], a
    rra
    dec c
    ccf
    inc c
    ccf
    ld d, $7f
    dec de
    ld e, a
    jr nz, jr_015_7d6f

    ld [$4cf2], sp
    ld a, [$f4d4]
    ret z

    add sp, -$30
    ld hl, sp+$00
    db $e4
    sbc b
    ldh a, [c]
    ld c, h
    db $ec
    nop
    rrca
    inc b
    add hl, bc
    ld b, $09
    ld b, $1b
    dec c
    rrca
    nop
    rla
    ld [$011e], sp
    inc bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, @-$3e

    ret nc

    ldh [$ffe0], a
    nop
    or b
    ld b, b
    ld [hl], b
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_015_7d29

jr_015_7d29:
    jr c, jr_015_7d3b

    inc a
    jr jr_015_7d6c

    inc e
    ld a, [de]
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0103

jr_015_7d3b:
    ld b, $03
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ccf
    nop
    pop bc
    ld a, $80
    rst $38
    ld d, h
    rst $38
    cp e
    xor $f7
    ld c, c
    ld a, a
    and [hl]
    cp $19
    sub b
    ldh [$ffdc], a
    and b

jr_015_7d55:
    ld [$ec54], a
    ld d, b
    db $f4
    jr z, jr_015_7db0

    xor b
    db $ec
    ld d, b

jr_015_7d5f:
    ld a, b
    add b
    ccf
    ld b, $3f
    ld d, $7f
    dec hl
    ccf
    ld de, $081f
    dec bc

jr_015_7d6c:
    inc b
    rrca
    inc b

jr_015_7d6f:
    rra
    ld [bc], a
    ldh a, [c]
    ld c, h
    ld a, [$f4d4]
    ld c, b
    add sp, -$70
    ld hl, sp-$80
    db $f4
    ld l, b
    ldh a, [c]
    inc c
    ld a, [$3804]
    rra
    inc a
    rlca
    ld a, l
    nop
    sbc l
    ld h, b
    ld l, h
    db $10
    add hl, de
    nop
    ld [bc], a
    ld bc, $0001

jr_015_7d91:
    db $f4
    nop
    jr nz, jr_015_7d55

    and b
    ld b, b
    ret nc

    ldh [$ffe0], a
    nop
    or b
    ld b, b
    jr nc, jr_015_7d5f

    ldh a, [rP1]
    nop
    db $10
    db $10
    jr c, jr_015_7dce

    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    rst $38
    ld e, [hl]

jr_015_7db0:
    rst $38
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    adc l
    add d
    cp a
    xor c
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    or $c8
    jp hl


    sub [hl]
    ldh a, [c]
    inc c
    db $fc

jr_015_7dce:
    ret nz

    db $fc
    ld b, b
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
    jr c, jr_015_7d91

    rst $30
    rst $28
    or $e6
    pop bc
    ld l, a
    jp $0d52


    dec e
    ld [bc], a
    rrca
    nop
    ld b, $00
    db $fc
    nop
    ld a, [$6204]
    sbc h
    ld [hl], d

jr_015_7df8:
    cp h
    db $fc
    ld [$c038], sp
    ret c

    jr nz, jr_015_7df8

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
    ld l, l
    ld [hl-], a
    ld [hl], l
    ld a, [bc]
    ld c, d
    inc [hl]
    ld e, a
    daa
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    dec c
    ld [bc], a
    rra
    add hl, bc
    ld c, [hl]
    inc [hl]
    adc $74
    call c, $dc68
    ld l, b
    db $fc
    ld l, b
    ld l, h
    jr c, jr_015_7e66

    db $10
    stop
    ccf
    rlca
    rst $38
    ld [hl], $fe
    pop bc
    rst $08
    inc bc
    ld [de], a
    dec c
    dec e
    ld [bc], a
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $110e
    ld c, $39
    ld b, $36
    add hl, de
    cp a
    ld c, a
    ld e, a
    add hl, hl
    ccf

jr_015_7e66:
    dec bc
    ccf
    add hl, de
    rra
    rrca
    adc a

jr_015_7e6c:
    nop

jr_015_7e6d:
    sbc l
    ld [bc], a
    rst $38
    dec c
    call nz, $e478
    sbc b
    db $f4
    xor b
    add sp, -$70
    ret nc

    jr nz, jr_015_7e6c

    nop
    ret z

    or b
    db $e4
    ld e, b
    ld a, [hl-]
    dec b
    dec h
    ld a, [de]
    daa
    ld a, [de]
    ld h, a
    ld a, [hl-]
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    inc [hl]
    ld a, [hl]
    inc [hl]
    ld [hl], $1c
    rst $38
    ld l, a
    rst $38
    nop
    dec c
    ld b, $0f
    ld bc, $0817
    rra
    nop
    ld bc, $0000
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    or b
    ret nz

    ld hl, sp+$00
    jr nc, jr_015_7e6d

    ldh [rP1], a
    nop
    nop
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
    ccf
    ld [de], a
    ld a, a
    inc l
    ld a, a
    ld l, $3f
    inc de
    rra
    dec b
    rrca
    inc b
    ld b, $01
    rlca
    nop
    cp $b0
    cp $94

jr_015_7ed5:
    cp $f0
    db $fc
    ld h, b
    ldh a, [c]
    adc h
    ld sp, hl
    sub $fe

jr_015_7ede:
    ld b, b
    ldh a, [$ff80]
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    scf
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr @-$1e

    nop
    jr jr_015_7ed5

    inc h
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld a, [$0194]
    nop
    rlca
    nop
    jr jr_015_7f0e

    jr nz, jr_015_7f28

    jr nc, jr_015_7f2a

    ld [hl], b
    ccf
    ld e, d

jr_015_7f0e:
    ccf
    ld l, l
    ccf
    ld a, d
    ccf
    ld a, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_015_7ede

    ld hl, sp-$04
    ld hl, sp+$58
    ldh a, [$ffa8]

jr_015_7f28:
    ret nc

    ld d, b

jr_015_7f2a:
    and b
    ldh a, [rP1]
    inc a
    ret nz

    cp $2c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
