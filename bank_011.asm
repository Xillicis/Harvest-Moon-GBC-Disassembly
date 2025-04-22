; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[MBC3SRamBank], BANK[$11]

    ld de, $0000
    jr c, jr_011_4005
;;; MAP DATA??????
jr_011_4005:
    ld l, h
    nop
    add $00
    add $00
    cp $00
    add $00
    add $00
    nop
    nop
    db $fc
    nop
    add $00
    add $00
    db $fc
    nop
    add $00
    add $00
    db $fc
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

    nop
    ret nz

    nop
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld hl, sp+$00
    call z, $c600
    nop
    add $00
    add $00
    call z, $f800
    nop
    nop
    nop
    db $fc
    nop
    ret nz

    nop
    ret nz

    nop
    db $fc
    nop
    ret nz

    nop
    ret nz

    nop
    db $fc
    nop
    nop
    nop
    cp $00
    ret nz

    nop
    ret nz

    nop
    db $fc
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

    nop
    sbc $00
    add $00
    adc $00
    halt
    nop
    nop
    nop
    add $00
    add $00
    add $00
    cp $00
    add $00
    add $00
    add $00
    nop
    nop
    jr jr_011_4085

jr_011_4085:
    jr jr_011_4087

jr_011_4087:
    jr jr_011_4089

jr_011_4089:
    jr jr_011_408b

jr_011_408b:
    jr jr_011_408d

jr_011_408d:
    jr jr_011_408f

jr_011_408f:
    jr jr_011_4091

jr_011_4091:
    nop
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    call z, $cc00
    nop
    ld a, b
    nop
    nop
    nop
    add $00
    call z, $d800
    nop
    ldh a, [rP1]
    ret c

    nop
    call z, $c600
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    add $00
    xor $00
    cp $00
    sub $00
    add $00
    add $00
    add $00
    nop
    nop
    add $00
    and $00
    or $00
    sbc $00
    adc $00
    add $00
    add $00
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    add $00
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    db $fc
    nop
    add $00
    add $00
    db $fc
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld a, b
    nop
    call z, $cc00
    nop
    call z, $fc00
    nop
    adc $00
    ld a, d
    nop
    nop
    nop
    db $fc
    nop
    add $00
    add $00
    db $fc
    nop
    ret c

    nop
    call z, $c600
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

    nop
    ld a, h
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, [hl]
    nop
    jr jr_011_4137

jr_011_4137:
    jr jr_011_4139

jr_011_4139:
    jr jr_011_413b

jr_011_413b:
    jr jr_011_413d

jr_011_413d:
    jr jr_011_413f

jr_011_413f:
    jr jr_011_4141

jr_011_4141:
    nop
    nop
    add $00
    add $00
    add $00
    add $00
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    add $00
    add $00
    add $00
    add $00
    ld l, h
    nop
    jr c, jr_011_415f

jr_011_415f:
    stop
    nop
    nop
    add $00
    add $00
    add $00
    sub $00
    sub $00
    sub $00
    ld l, h
    nop
    nop
    nop
    add $00
    add $00
    ld l, h
    nop
    jr c, jr_011_417b

jr_011_417b:
    ld l, h
    nop
    add $00
    add $00
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc l
    nop
    jr jr_011_418d

jr_011_418d:
    jr jr_011_418f

jr_011_418f:
    jr jr_011_4191

jr_011_4191:
    nop
    nop
    cp $00
    ld b, $00
    ld l, h
    nop
    jr c, jr_011_419b

jr_011_419b:
    inc l
    nop
    ld b, b
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    inc c
    nop
    ld a, h
    nop
    call z, $7c00
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ld hl, sp+$00
    call z, $cc00
    nop
    call z, $f800
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    call z, $c000
    nop
    call z, Call_011_7800
    nop
    nop
    nop
    inc c
    nop
    inc c
    nop
    ld a, h
    nop
    call z, $cc00
    nop
    call z, $7c00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    call z, $fc00
    nop
    ret nz

    nop
    ld a, h
    nop
    nop
    nop
    jr jr_011_41f5

jr_011_41f5:
    jr nc, jr_011_41f7

jr_011_41f7:
    jr nc, jr_011_41f9

jr_011_41f9:
    db $fc
    nop
    jr nc, jr_011_41fd

jr_011_41fd:
    jr nc, jr_011_41ff

jr_011_41ff:
    jr nc, jr_011_4201

jr_011_4201:
    nop
    nop
    nop
    nop
    ld a, h
    nop
    call z, $cc00
    nop
    ld a, h
    nop
    inc c
    nop
    ld a, b
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ld hl, sp+$00
    call z, $cc00
    nop
    call z, $cc00
    nop
    nop
    nop
    jr nc, jr_011_4225

jr_011_4225:
    nop
    nop
    jr nc, jr_011_4229

jr_011_4229:
    jr nc, jr_011_422b

jr_011_422b:
    jr nc, jr_011_422d

jr_011_422d:
    jr nc, jr_011_422f

jr_011_422f:
    jr nc, jr_011_4231

jr_011_4231:
    nop
    nop
    inc c
    nop
    nop
    nop
    inc c
    nop
    inc c
    nop
    call z, $cc00
    nop
    ld a, b
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret z

    nop
    ret nc

    nop
    ldh [rP1], a
    ret nc

    nop
    call z, RST_00
    nop
    ld [hl], b
    nop
    jr nc, jr_011_4257

jr_011_4257:
    jr nc, jr_011_4259

jr_011_4259:
    jr nc, jr_011_425b

jr_011_425b:
    jr nc, jr_011_425d

jr_011_425d:
    jr nc, jr_011_425f

jr_011_425f:
    jr c, jr_011_4261

jr_011_4261:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    call nc, $d400
    nop
    call nc, $d400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    call z, $cc00
    nop
    call z, $cc00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    call z, $cc00
    nop
    call z, Call_011_7800
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    call z, $cc00
    nop
    ld hl, sp+$00
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    call z, $cc00
    nop
    ld a, h
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    call c, $e000
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ret nz

    nop
    db $fc
    nop
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    jr nc, jr_011_42d5

jr_011_42d5:
    jr nc, jr_011_42d7

jr_011_42d7:
    db $fc
    nop
    jr nc, jr_011_42db

jr_011_42db:
    jr nc, jr_011_42dd

jr_011_42dd:
    jr nc, jr_011_42df

jr_011_42df:
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cc00
    nop
    call z, $cc00
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cc00
    nop
    call z, Call_011_7800
    nop
    jr nc, jr_011_4301

jr_011_4301:
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, $d400
    nop
    call nc, $d400
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    call z, Call_011_7800
    nop
    jr nc, jr_011_431d

jr_011_431d:
    ld a, b
    nop
    call z, RST_00
    nop
    nop
    nop
    call z, $cc00
    nop
    call z, $7c00
    nop
    inc c
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    jr jr_011_433b

jr_011_433b:
    jr nc, jr_011_433d

jr_011_433d:
    ld h, b
    nop
    db $fc
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    adc $00
    sub $00
    and $00
    add $00
    ld a, h
    nop
    nop
    nop
    jr jr_011_4355

jr_011_4355:
    jr c, jr_011_4357

jr_011_4357:
    jr jr_011_4359

jr_011_4359:
    jr jr_011_435b

jr_011_435b:
    jr jr_011_435d

jr_011_435d:
    jr jr_011_435f

jr_011_435f:
    inc a
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    inc e
    nop
    ld [hl], b
    nop
    ret nz

    nop
    cp $00
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    inc e
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    inc c
    nop
    inc e
    nop
    inc a
    nop
    ld l, h
    nop
    call z, $fe00
    nop
    inc c
    nop
    nop
    nop
    cp $00
    ret nz

    nop
    ret nz

    nop
    db $fc
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

    nop
    db $fc
    nop
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    cp $00
    add $00
    add $00
    inc c
    nop
    inc c
    nop
    jr jr_011_43bf

jr_011_43bf:
    jr jr_011_43c1

jr_011_43c1:
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    ld a, h
    nop
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    ld a, [hl]
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, b
    nop
    nop
    nop
    inc a
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc a
    nop
    nop
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    nop
    nop
    jr jr_011_4411

jr_011_4411:
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc c
    nop
    jr jr_011_441d

jr_011_441d:
    nop
    nop
    jr jr_011_4421

jr_011_4421:
    nop
    nop
    ld b, h
    nop
    xor $00
    cp $00
    cp $00
    ld a, h
    nop
    jr c, jr_011_442f

jr_011_442f:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    nop
    stop
    jr c, jr_011_4477

jr_011_4477:
    ld d, h
    nop
    sub d
    nop
    stop
    stop
    stop
    nop
    nop
    stop
    jr nz, jr_011_4487

jr_011_4487:
    ld b, b
    nop
    cp $00
    ld b, b
    nop
    jr nz, jr_011_448f

jr_011_448f:
    stop
    nop
    nop
    stop
    stop
    stop
    sub d
    nop
    ld d, h
    nop
    jr c, jr_011_449f

jr_011_449f:
    stop
    nop
    nop
    stop
    ld [$0400], sp
    nop
    cp $00
    inc b
    nop
    ld [$1000], sp
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    cp $00
    nop
    nop
    ld c, h
    nop
    xor d
    nop
    adc d
    nop
    ld c, d
    nop
    inc l
    nop
    xor b
    nop
    ld c, b
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
    stop
    stop
    ld [$0400], sp
    nop
    jr nz, jr_011_4513

jr_011_4513:
    stop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    stop
    jr nz, jr_011_4521

jr_011_4521:
    nop
    nop
    nop
    nop
    ld b, h
    nop
    jr z, jr_011_4529

jr_011_4529:
    stop
    jr z, jr_011_452d

jr_011_452d:
    ld b, h
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld a, $00
    ld h, b
    nop
    ld a, [hl]
    nop
    ld b, $00
    ld a, h
    nop
    nop
    nop
    ld h, a
    nop
    call z, $cc00
    nop
    rst $00
    nop
    ret nz

    nop
    call z, $6700
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    inc c
    nop
    call z, Call_011_6c00
    nop
    ld l, h
    nop
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    nop
    call z, $cc00
    nop
    call z, $8c00
    nop
    nop
    nop
    jr jr_011_4575

jr_011_4575:
    inc c
    nop
    adc h
    nop
    call z, $cc00
    nop
    call z, $d800
    nop
    nop
    nop
    ld l, h
    nop
    adc $00
    rst $08
    nop
    call $cc00
    nop
    call z, Call_011_6c00
    nop
    nop
    nop
    ld h, b
    nop
    ldh [rP1], a
    rst $20
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    nop
    call z, $cc00
    nop
    call z, $8c00
    nop
    nop
    nop
    ld h, a
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    ld h, c
    nop
    nop
    nop
    ldh [rP1], a
    add b
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    nop
    call z, $cf00
    nop
    call z, $8700
    nop
    nop
    nop
    jr jr_011_45e5

jr_011_45e5:
    inc c
    nop
    adc h
    nop
    call z, $cc00
    nop
    inc c
    nop
    ret c

    nop
    nop
    nop
    ld l, h
    nop
    call z, $cc00
    nop
    call $cd00
    nop
    call $6600
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld l, h
    nop
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    nop
    call z, $cc00
    nop
    inc c
    nop
    rst $00
    nop
    nop
    nop
    ret c

    nop
    call z, $cc00
    nop
    call z, $cc00
    nop
    call z, $d800
    nop
    nop
    nop
    db $ec
    nop
    adc h
    nop
    adc a
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    call z, $cc00
    nop
    call z, $c700
    nop
    nop
    nop
    jr jr_011_4655

jr_011_4655:
    inc c
    nop
    call z, $cc00
    nop
    call z, $cc00
    nop
    sbc b
    nop
    nop
    nop
    ld l, a
    nop
    call z, $cc00
    nop
    rst $08
    nop
    call z, $cc00
    nop
    ld l, h
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    inc c
    nop
    call $0e00
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    jp $0300


    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    jr jr_011_4695

jr_011_4695:
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    jr jr_011_46a1

jr_011_46a1:
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    rlca
    nop
    ret nz

    nop
    ld h, a
    nop
    ld l, h
    nop
    rst $00
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    adc a
    nop
    jp $c300


    nop
    jp $c100


    nop
    nop
    nop
    jr jr_011_46c5

jr_011_46c5:
    inc c
    nop
    call z, $0c00
    nop
    inc c
    nop
    inc c
    nop
    ret c

    nop
    nop
    nop
    rrca
    nop
    jr jr_011_46d7

jr_011_46d7:
    jr jr_011_46d9

jr_011_46d9:
    rrca
    nop
    nop
    nop
    jr jr_011_46df

jr_011_46df:
    rrca
    nop
    nop
    nop
    add b
    nop
    rst $18
    nop
    add hl, de
    nop
    sbc c
    nop
    rst $18
    nop
    ret c

    nop
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    or a
    nop
    jr c, jr_011_46fd

jr_011_46fd:
    jr nc, jr_011_46ff

jr_011_46ff:
    jr nc, jr_011_4701

jr_011_4701:
    nop
    nop
    jr jr_011_4705

jr_011_4705:
    nop
    nop
    jr jr_011_4709

jr_011_4709:
    jr jr_011_470b

jr_011_470b:
    jr jr_011_470d

jr_011_470d:
    jr jr_011_470f

jr_011_470f:
    jr jr_011_4711

jr_011_4711:
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    call $cc00
    nop
    call z, $cc00
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    sbc b
    nop
    sbc b
    nop
    ld hl, sp+$00
    jr jr_011_472f

jr_011_472f:
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    jr jr_011_4737

jr_011_4737:
    jr jr_011_4739

jr_011_4739:
    rrca
    nop
    nop
    nop
    jr jr_011_473f

jr_011_473f:
    rrca
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    add hl, de
    nop
    sbc c
    nop
    reti


    nop
    reti


    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    nop
    or l
    nop
    or l
    nop
    or l
    nop
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    nop
    call $fd00
    nop
    pop bc
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    rra
    nop
    jr jr_011_4797

jr_011_4797:
    jr jr_011_4799

jr_011_4799:
    rra
    nop
    jr jr_011_479d

jr_011_479d:
    jr jr_011_479f

jr_011_479f:
    jr jr_011_47a1

jr_011_47a1:
    nop
    nop
    ret nz

    nop
    nop
    nop
    rrca
    nop
    add c
    nop
    rrca
    nop
    add hl, de
    nop
    rrca
    nop
    nop
    nop
    inc e
    nop
    inc c
    nop
    inc c
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc [hl]
    nop
    nop
    nop
    jr c, jr_011_47c5

jr_011_47c5:
    jr jr_011_47c7

jr_011_47c7:
    jr jr_011_47c9

jr_011_47c9:
    jr jr_011_47cb

jr_011_47cb:
    jr jr_011_47cd

jr_011_47cd:
    jr jr_011_47cf

jr_011_47cf:
    inc e
    nop
    nop
    nop
    jr jr_011_47d5

jr_011_47d5:
    jr jr_011_47d7

jr_011_47d7:
    jr jr_011_47d9

jr_011_47d9:
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    dec c
    nop
    nop
    nop
    add $00
    ret nz

    nop
    add $00
    add $00
    add $00
    add $00
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    nop
    nop
    jr jr_011_4805

jr_011_4805:
    jr jr_011_4807

jr_011_4807:
    ld a, [hl]
    nop
    jr jr_011_480b

jr_011_480b:
    jr jr_011_480d

jr_011_480d:
    jr jr_011_480f

jr_011_480f:
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    nop
    call $fd00
    nop
    pop bc
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    jr jr_011_4837

jr_011_4837:
    jr jr_011_4839

jr_011_4839:
    jr jr_011_483b

jr_011_483b:
    jr jr_011_483d

jr_011_483d:
    jr jr_011_483f

jr_011_483f:
    jr jr_011_4841

jr_011_4841:
    nop
    nop
    ret nz

    nop
    nop
    nop
    rst $18
    nop
    jp c, $da00

    nop
    jp c, $da00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    or e
    nop
    cp a
    nop
    or b
    nop
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld h, b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    jr nz, jr_011_48f1

jr_011_48f1:
    add b
    nop
    add b
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    jr jr_011_4901

jr_011_4901:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7e01
    ld a, a
    ld b, d
    ld a, a
    ld e, d
    ld a, e
    ld e, d
    ld a, e
    ld b, d
    ld h, e
    ld a, [hl]
    ld a, a
    add b
    rst $38
    ld bc, $02ff
    ld [bc], a
    db $fc
    cp $84
    cp $b4
    or $b4
    or $84
    add $fc
    cp $f9
    db $fd
    ld [bc], a
    rst $38
    inc b
    inc b
    ld sp, hl
    db $fd
    add hl, bc
    db $fd
    ld l, c
    db $ed
    ld l, c
    db $ed
    add hl, bc
    adc l
    ld [de], a
    dec de
    di
    ei
    inc b
    rst $38
    ld [$f308], sp
    ei
    ld [de], a
    ei
    jp nc, $d2db

    db $db
    and l
    or a
    inc h
    ld [hl], $e7
    rst $30
    ld [$10ff], sp
    db $10
    rst $20
    rst $30
    inc h
    rst $30
    and l
    or a
    ld c, e
    ld l, a
    ld c, e
    ld l, a
    ld c, b
    ld l, h
    rst $08
    rst $28
    db $10
    rst $38
    jr nz, jr_011_4e7d

    rst $08
    rst $28
    ld c, b
    rst $28
    sub b
    rst $18
    sub [hl]
    sbc $96
    sbc $90
    ret c

    sbc a
    rst $18
    jr nz, @+$01

    ld b, b
    ld b, b
    sbc a
    rst $18
    ccf
    cp a
    ld hl, $2dbf
    cp l
    dec l
    cp l
    ld hl, $3fb1
    cp a

jr_011_4e7d:
    ld b, b
    rst $38
    add b
    add b
    ld bc, $7e01
    ld a, a
    ld b, d
    ld a, a
    ld e, d
    ld a, e
    ld e, d
    ld a, e
    ld b, d
    ld h, e
    ld a, [hl]
    ld a, a
    add b
    rst $38
    nop
    nop
    cp $00
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_011_4e9b

jr_011_4e9b:
    jr c, jr_011_4e9d

jr_011_4e9d:
    stop
    stop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop

jr_011_4eb4:
    nop
    ld bc, $0300

jr_011_4eb8:
    nop
    rlca
    nop
    rrca
    nop
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc

jr_011_4edc:
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]

jr_011_4ee7:
    ldh [rP1], a
    ret nz

jr_011_4eea:
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

jr_011_4efb:
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_011_4eb4

jr_011_4f0c:
    jr nc, @-$56

jr_011_4f0e:
    jr nc, jr_011_4eb8

jr_011_4f10:
    jr nc, @+$01

jr_011_4f12:
    nop
    nop

jr_011_4f14:
    nop
    rst $38

jr_011_4f16:
    rst $38
    nop

jr_011_4f18:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $a8
    jr nc, jr_011_4edc

jr_011_4f34:
    jr nc, @-$56

jr_011_4f36:
    jr nc, jr_011_4ee7

jr_011_4f38:
    jr nc, jr_011_4eea

    jr nc, jr_011_4efb

    ccf
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38

jr_011_4f4c:
    rst $38
    nop

jr_011_4f4e:
    rst $38
    rst $38
    nop
    dec d
    ld b, $15
    ld b, $15
    ld b, $f5
    ld b, $0d

jr_011_4f5a:
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    xor b
    jr nc, jr_011_4f0c

    jr nc, jr_011_4f0e

    jr nc, jr_011_4f10

    jr nc, jr_011_4f12

    jr nc, jr_011_4f14

    jr nc, jr_011_4f16

    jr nc, jr_011_4f18

    jr nc, jr_011_4f87

    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $3f
    ret nz

    ld b, b
    add b
    cp a
    ccf

jr_011_4f87:
    or b
    ccf
    xor a
    jr nc, jr_011_4f34

    jr nc, jr_011_4f36

jr_011_4f8e:
    jr nc, jr_011_4f38

    jr nc, jr_011_4f8e

    inc bc
    ld [bc], a
    ld bc, $fefd
    dec c
    cp $f5
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $a8
    jr nc, jr_011_4f4c

    jr nc, jr_011_4f4e

    jr nc, @-$4f

    jr nc, jr_011_4f5a

    jr nc, @-$3f

    ccf
    ld b, b
    cp a
    ccf
    ret nz

    dec d
    ld b, $15
    ld b, $15
    ld b, $f5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fd
    db $fc
    inc bc
    rst $38
    rst $38
    adc b
    add a
    cp a
    add b
    sub b
    adc a
    and b
    sbc a
    adc d
    add c
    ldh a, [$ff89]
    and d
    ret c

    cp $ff
    ld bc, $f9fe
    ld b, $05
    cp $05
    cp $45
    ld a, $45
    ld a, $45
    ld a, $a3
    ret c

    and d
    reti


    and h
    db $db
    and b
    rst $18
    and b
    rst $18
    sbc a
    rst $38
    add b
    rst $38
    ld a, a
    add b
    ld b, l
    ld a, $45
    ld [bc], a
    sub e
    ld c, b
    inc de
    ret z

    inc de
    ret z

    push bc
    jp nz, $c639

    rst $38
    nop

; First byte:  Some kind of inforamtion about the tile
; Second byte: The object tile ID.
; Seems like it goes 16 tiles from the left to the right, then down to the next row.
FarmMapInitialData: ; 11x5001
    db      $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e ; 5000
    db $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e, $01, $0e ; 5010
    db $01, $0e, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03 ; 5020
    db $01, $03, $01, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $00 ; 5030
    db $00, $0e, $01, $04, $01, $05, $01, $02, $01, $02, $01, $03, $01, $00, $00, $02 ; 5040
    db $01, $03, $01, $08, $01, $09, $01, $00, $00, $02, $01, $02, $01, $02, $01, $02 ; 5050
    db $01, $0e, $01, $06, $01, $07, $01, $00, $00, $03, $01, $00, $00, $03, $01, $02 ; 5060
    db $01, $03, $01, $0a, $01, $0b, $01, $03, $01, $00, $00, $02, $01, $00, $00, $00 ; 5070
    db $00, $0e, $01, $00, $00, $02, $01, $03, $01, $03, $01, $02, $01, $00, $00, $04 ; 5080
    db $01, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $00 ; 5090
    db $00, $0e, $01, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $06 ; 50a0
    db $01, $07, $01, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $02 ; 50b0
    db $01, $0e, $01, $02, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00 ; 50c0
    db $00, $00, $00, $00, $00, $04, $01, $05, $01, $00, $00, $02, $01, $02, $01, $00 ; 50d0
    db $00, $0e, $01, $00, $00, $02, $01, $00, $00, $02, $01, $02, $01, $02, $01, $02 ; 50e0
    db $01, $00, $00, $00, $00, $06, $01, $07, $01, $03, $01, $02, $01, $00, $00, $00 ; 50f0
    db $00, $0e, $01, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $00 ; 5100
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 5110
    db $00, $0e, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00 ; 5120
    db $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00 ; 5130
    db $00, $0e, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 5140
    db $00, $02, $01, $0c, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02 ; 5150
    db $01, $0e, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01 ; 5160
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01 ; 5170
    db $01, $0e, $01, $01, $01, $02, $01, $02, $01, $0f, $01, $0f, $01, $0f, $01, $0f ; 5180
    db $01, $0f, $01, $0f, $01, $0f, $01, $6a, $81, $6b, $81, $02, $01, $02, $01, $02 ; 5190
    db $01, $0e, $01, $01, $01, $00, $00, $02, $01, $0f, $01, $10, $00, $10, $00, $10 ; 51a0
    db $00, $10, $00, $10, $00, $0f, $01, $6c, $81, $6d, $81, $00, $00, $00, $00, $00 ; 51b0
    db $00, $0e, $01, $01, $01, $00, $00, $02, $01, $0f, $01, $10, $00, $10, $00, $10 ; 51c0
    db $00, $10, $00, $10, $00, $0f, $01, $6e, $81, $6f, $81, $43, $81, $00, $00, $00 ; 51d0
    db $00, $0e, $01, $01, $01, $00, $00, $00, $00, $0f, $01, $bb, $81, $bc, $81, $bc ; 51e0
    db $81, $bc, $81, $bd, $81, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; 51f0
    db $00, $0e, $01, $01, $01, $02, $01, $00, $00, $0f, $01, $be, $81, $be, $81, $be ; 5200
    db $81, $be, $81, $bf, $81, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $00, $70
    db $81, $0e, $01, $01, $01, $00, $00, $00, $00, $0f, $01, $c0, $81, $c1, $81, $c2
    db $81, $c3, $81, $c4, $81, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $00, $71
    db $81, $0e, $01, $01, $01, $00, $00, $00, $00, $0f, $01, $c5, $81, $c6, $81, $c7
    db $82, $c8, $81, $c9, $81, $0f, $01, $00, $00, $00, $00, $00, $00, $44, $81, $b9
    db $81, $0e, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3d
    db $80, $00, $00, $0f, $01, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00 
    db $00, $0e, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $0e, $01, $01, $01, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0e, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0e, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $10, $00, $10, $00, $10
    db $00, $0f, $01, $0f, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $13, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $13, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $0f, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00
    db $00, $13, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $0f, $01, $00, $00, $00, $00, $02, $01, $00, $00, $02, $01, $00
    db $00, $13, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $39
    db $81, $3a, $81, $0f, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $13, $00, $10, $00, $10, $00, $10, $00, $10, $00, $42, $81, $10, $00, $3b
    db $81, $3c, $81, $0f, $01, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $0e, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $0f
    db $01, $0f, $01, $0f, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $0e, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $0e, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0e, $01, $00, $00, $00, $00, $04, $01, $05, $01, $00, $00, $00, $00, $02
    db $01, $02, $01, $08, $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0e, $01, $00, $00, $00, $00, $06, $01, $07, $01, $00, $00, $00, $00, $00
    db $00, $02, $01, $0a, $01, $0b, $01, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $0e, $01, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $04, $01, $05
    db $01, $00, $00, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $02
    db $01, $0e, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $07
    db $01, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $0e, $01, $00, $00, $02, $01, $00, $00, $00, $00, $02, $01, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $00
    db $00, $0e, $01, $00, $00, $00, $00, $03, $01, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $02, $01, $00
    db $00, $0e, $01, $03, $01, $03, $01, $00, $00, $00, $00, $03, $01, $02, $01, $00
    db $00, $08, $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02
    db $01, $0e, $01, $00, $00, $03, $01, $00, $00, $03, $01, $03, $01, $02, $01, $00
    db $00, $0a, $01, $0b, $01, $00, $00, $08, $01, $09, $01, $00, $00, $00, $00, $00
    db $00, $0e, $01, $02, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $0a, $01, $0b, $01, $00, $00, $02, $01, $02
    db $01, $0e, $01, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $02
    db $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $0e, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $00, $00, $02, $01, $02
    db $01, $0E, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $0E, $01, $2D
    db $81, $2E, $81, $0E, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $02
    db $01, $0E, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $0E, $01, $2F
    db $81, $30, $81, $0E, $01, $0C, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $03, $01, $00
    db $00, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $07, $01, $00
    db $00, $00, $00, $02, $01, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $08, $01, $09, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00
    db $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $00, $00, $0a, $01, $0b, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $02, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $03, $01, $00, $00, $0E
    db $01, $20, $81, $21, $81, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $22, $81, $23, $81, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $03, $01, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $86, $81, $87 
    db $81, $88, $81, $89, $81, $8A, $81, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $00, $00, $74, $81, $75, $81, $75, $81, $75, $81, $76, $81, $8B, $81, $8C
    db $81, $8D, $81, $8E, $81, $8F, $81, $9A, $81, $9B, $81, $9B, $81, $9C, $81, $01
    db $01, $00, $00, $77, $81, $77, $81, $77, $81, $77, $81, $78, $81, $90, $81, $91
    db $81, $92, $81, $93, $81, $94, $81, $9D, $81, $9D, $81, $9D, $81, $9E, $81, $01
    db $01, $72, $81, $79, $81, $7A, $81, $7A, $81, $7A, $81, $7B, $81, $90, $81, $91 
    db $81, $92, $81, $93, $81, $94, $81, $9F, $81, $A0, $81, $A0, $81, $A1, $81, $01
    db $01, $73, $81, $7C, $81, $7D, $81, $7E, $81, $7F, $81, $80, $81, $90, $81, $91
    db $81, $92, $81, $93, $81, $94, $81, $A2, $81, $A3, $81, $A4, $81, $A5, $81, $01
    db $01, $BA, $81, $81, $81, $82, $81, $83, $82, $84, $81, $85, $81, $95, $81, $96
    db $81, $97, $81, $98, $81, $99, $81, $A6, $81, $A7, $82, $A8, $81, $A9, $81, $01 
    db $01, $00, $00, $00, $00, $00, $00, $3E, $80, $00, $00, $00, $00, $00, $00, $00
    db $00, $45, $81, $00, $00, $00, $00, $00, $00, $3F, $80, $00, $00, $00, $00, $01
    db $01, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $00, $00, $00, $00, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $00, $00, $00, $00, $03, $01, $00, $00, $10, $00, $00, $00, $9A, $81, $9B
    db $81, $9B, $81, $9B, $81, $9C, $81, $00, $00, $00, $00, $02, $01, $02, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, $9D, $81, $9D
    db $81, $9D, $81, $9D, $81, $9E, $81, $00, $00, $00, $00, $00, $00, $02, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $02, $01, $10, $00, $02, $01, $AA, $81, $AB
    db $81, $AC, $81, $AD, $81, $AE, $81, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $00, $00, $00, $00, $00, $00, $02, $01, $10, $00, $00, $00, $AF, $81, $B0
    db $81, $B1, $81, $B2, $81, $B3, $81, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $00, $00, $08, $01, $09, $01, $00, $00, $10, $00, $00, $00, $B4, $81, $B5
    db $81, $B6, $82, $B7, $81, $B8, $81, $00, $00, $00, $00, $00, $00, $02, $01, $01
    db $01, $00, $00, $0A, $01, $0B, $01, $00, $00, $10, $00, $00, $00, $00, $00, $00
    db $00, $40, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $0E, $01, $24
    db $81, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $0E, $01, $27
    db $81, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $0E, $01, $2A
    db $81, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $0E, $01, $00
    db $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $06, $01, $07, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $08, $01, $09, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $03, $01, $00, $00, $02, $01, $00, $00, $00, $00, $03, $01, $03, $01, $00
    db $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $02, $01, $00, $00, $00, $00, $03
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $02, $01, $00, $00, $00, $00, $02, $01, $00, $00, $04, $01, $05, $01, $00
    db $00, $03, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $06, $01, $07, $01, $00
    db $00, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $02, $01, $00
    db $00, $00, $00, $04, $01, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $01, $09, $01, $00
    db $00, $00, $00, $06, $01, $07, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $02, $01, $02, $01, $00, $00, $00
    db $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $01, $09, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $03, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $00, $00, $0E, $01, $31, $81, $32, $81, $0E
    db $01, $00, $00, $00, $00, $02, $01, $00, $00, $02, $01, $00, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $0C, $00, $02, $01, $0E, $01, $33, $81, $34, $81, $0E
    db $01, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00, $00, $00
    db $00, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $01, $07, $01, $00, $00, $03
    db $01, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $03
    db $01, $00, $00, $00, $00, $00, $00, $08, $01, $09, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $04
    db $01, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06
    db $01, $07, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $08
    db $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A
    db $01, $0B, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $01, $09, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $0A, $01, $0B, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $06, $01, $07, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $00, $00, $00
    db $00, $25, $81, $26, $81, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $28, $81, $29, $81, $0E, $01, $00, $00, $00, $00, $00, $00, $02, $01, $02
    db $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $2B, $81, $2C, $81, $0E, $01, $00, $00, $02, $01, $02, $01, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00
    db $00, $00, $00, $00, $00, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $01, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $02, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $03
    db $01, $00, $00, $03, $01, $03, $01, $00, $00, $02, $01, $02, $01, $02, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00, $00, $00
    db $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00
    db $00, $02, $01, $00, $00, $00, $00, $00, $00, $06, $01, $07, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $04, $01, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $00
    db $00, $06, $01, $07, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $01, $09, $01, $00
    db $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $02, $01, $02, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $00
    db $00, $02, $01, $08, $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $00, $00, $00, $00, $08, $01, $09, $01, $00, $00, $00
    db $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $01, $02, $01, $02, $01, $02, $01, $0A, $01, $0B, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $0C, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $08, $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $02, $01, $02, $01, $00, $00, $00, $00, $02, $01, $02, $01, $04
    db $01, $05, $01, $02, $01, $02, $01, $00, $00, $02, $01, $04, $01, $05, $01, $0E
    db $01, $0E, $01, $03, $01, $00, $00, $02, $01, $02, $01, $03, $01, $0C, $00, $06
    db $01, $07, $01, $00, $00, $00, $00, $03, $01, $00, $00, $06, $01, $07, $01, $0E
    db $01, $0E, $01, $00, $00, $04, $01, $05, $01, $00, $00, $02, $01, $03, $01, $03
    db $01, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00, $00, $02, $01, $0E
    db $01, $0E, $01, $03, $01, $06, $01, $07, $01, $00, $00, $00, $00, $00, $00, $03
    db $01, $03, $01, $00, $00, $03, $01, $06, $01, $07, $01, $02, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $03, $01, $03, $01, $03, $01, $00, $00, $08, $01, $09
    db $01, $04, $01, $05, $01, $03, $01, $00, $00, $02, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $02, $01, $00, $00, $03, $01, $00, $00, $0A, $01, $0B
    db $01, $06, $01, $07, $01, $00, $00, $00, $00, $02, $01, $03, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $04, $01, $05, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $02, $01, $06, $01, $07, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $03, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $01, $03, $01, $00, $00, $04, $01, $05, $01, $00, $00, $00, $00, $02, $01, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $03, $01, $00, $00, $06, $01, $07, $01, $00, $00, $00, $00, $02, $01, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00
    db $00, $00, $00, $03, $01, $00, $00, $03, $01, $03, $01, $02, $01, $03, $01, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02
    db $01, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $02, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $02, $01, $00, $00, $02, $01, $00, $00, $02, $01, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00, $00, $0E
    db $01, $0E, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $03, $01, $03
    db $01, $00, $00, $03, $01, $02, $01, $00, $00, $02, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $03, $01, $00, $00, $00
    db $00, $03, $01, $00, $00, $02, $01, $02, $01, $02, $01, $03, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $04, $01, $05, $01, $03, $01, $00, $00, $02, $01, $00
    db $00, $00, $00, $02, $01, $08, $01, $09, $01, $00, $00, $00, $00, $03, $01, $0E
    db $01, $0E, $01, $00, $00, $06, $01, $07, $01, $00, $00, $02, $01, $00, $00, $00
    db $00, $02, $01, $00, $00, $0A, $01, $0B, $01, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $02, $01, $08, $01, $09, $01, $00
    db $00, $00, $00, $02, $01, $00, $00, $00, $00, $08, $01, $09, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $01, $0B, $01, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $03, $01, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $02, $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $08, $01, $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $02, $01, $02, $01, $02, $01, $03, $01, $00, $00, $00
    db $00, $00, $00, $0A, $01, $0B, $01, $04, $01, $05, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $02, $01, $03, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $06, $01, $07, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $03, $01, $03, $01, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $04, $01, $05, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $03, $01, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $06, $01, $07, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03
    db $01, $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $0C
    db $00, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $0E
    db $01, $0E, $01, $02, $01, $02, $01, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $02, $01, $03, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $03, $01, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $02, $01, $00, $00, $02, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $0E
    db $01, $0E, $01, $02, $01, $03, $01, $03, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $02, $01, $00, $00, $00, $00, $00, $00, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E
    db $01, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10
    db $00 


Data_011_6881:
    ld b, [hl]
    add c
    ld b, a
    add c
    ld c, b
    add c
    ld c, c
    add c
    ld c, d
    add c
    ld b, a
    add c
    ld c, e
    add c
    ld c, h
    add c
    ld c, l
    add c
    ld c, [hl]
    add c
    ld c, [hl]
    add c
    ld c, a
    add c
    ld c, l
    add c
    ld d, b
    add c
    ld d, c
    add c
    ld d, d
    add c
    ld d, e
    add c
    ld d, h
    add c
    ld d, l
    add c
    ld d, d
    add c
    ld d, [hl]
    add c
    ld d, a
    add c
    ld e, b
    add c
    ld e, c
    add c
    ld e, d
    add c
    ld e, e
    add c
    ld e, b
    add c
    ld e, h
    add c
    ld e, l
    add c
    ld e, [hl]
    add c
    ld e, a
    add c
    ld h, b
    add c
    ld h, c
    add c
    ld e, [hl]
    add c
    ld h, d
    add c
    ld h, e
    add c
    ld h, h
    add c
    ld h, l
    add c
    ld h, [hl]
    add d
    ld h, a
    add c
    ld l, b
    add c
    ld l, c
    add c
    rrca
    ld bc, $0010
    stop
    stop
    stop
    stop
    db $0e, $01
    rrca
    ld bc, $81bb
    cp h
    add c
    cp h
    add c
    cp h
    add c
    cp l
    add c
    db $0e, $01
    db $0e, $01
    jp z, $ca81

    add c
    jp z, $ca81

    add c
    res 0, c
    db $0e, $01
    db $0e, $01
    call z, $cd81
    add c
    adc $81
    rst $08
    add c
    ret nc

    add c
    db $0e, $01
    db $0e, $01
    pop de
    add c
    jp nc, $d381

    add c
    call nc, $d581
    add c
    db $0e, $01
    db $0e, $01
    push bc
    add c
    add $81
    rst $00
    add d
    ret z

    add c
    ret


    add c
    db $0e, $01
    rrca
    ld bc, $0010
    stop
    stop
    stop
    stop
    db $0e, $01
    rrca
    ld bc, $0010
    stop
    stop
    stop
    stop
    db $0e, $01
    db $0e, $01
    cp e
    add c
    cp h
    add c
    cp h
    add c
    cp h
    add c
    cp l
    add c
    db $0e, $01
    db $0e, $01
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp a
    add c
    db $0e, $01
    db $0e, $01
    ret nz

    add c
    pop bc
    add c
    jp nz, $c381

    add c
    call nz, $0e81
    ld bc, $010e
    push bc
    add c
    add $81
    rst $00
    add d
    ret z

    add c
    ret


    add c
    db $0e, $01
    db $00
    db $00
    db $00
    db $00
    jr nz, jr_011_69c3

    jr nc, jr_011_69d5

    dec b
    ld b, $15
    ld d, $03
    inc b
    inc de
    inc d
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld h, $1d
    ld [hl], $1e
    ld b, h
    ld b, l
    inc c
    dec c
    ld b, [hl]
    rra
    ld c, $0f
    ld d, c
    ld d, d
    ld h, c
    ld h, d
    ld d, e
    add hl, bc
    ld h, e
    db $0a
    ld [hl], c
    ld [hl], d
    add hl, de
    ld a, [de]
    ld [hl], e
    dec bc
    dec de
    inc e
    db $00
    db $00
    db $00
    db $00
    add b
    add b
    add b
    add b
    and [hl]
    and [hl]
    and a
    and a
    and [hl]
    and [hl]
    and a
    and a
    ld bc, $0101
    ld bc, $1010

jr_011_69c3:
    db $10
    db $10
    ld de, $1111
    ld de, $0101
    ld bc, $5401
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]

jr_011_69d5:
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld h, l
    ld [hl], l
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    ld hl, $3122
    ld [hl-], a
    inc hl
    ld h, b
    inc sp
    ld [hl], b
    ld b, c
    ld b, d
    cp d
    cp e
    ld b, e
    cpl
    ret


    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0807
    rla
    jr jr_011_6a5d

    ld [$1817], sp
    rlca
    ld [$1817], sp

jr_011_6a5d:
    rlca
    ld [$1817], sp
    rlca
    ld [$1817], sp
    and [hl]
    ld bc, $aba6
    ld bc, $ac01
    xor h
    xor e
    xor h
    cp h
    cp h
    xor h
    xor h
    cp h
    cp h
    xor h
    xor l
    cp h
    ld e, c
    ld bc, $ada6
    and [hl]
    and [hl]
    cp h
    and [hl]
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    ld e, c
    cp h
    ld e, c
    ld e, c
    and [hl]
    ld e, c
    and [hl]
    and [hl]
    cp h
    and [hl]
    cp l
    cp h
    cp h
    cp l
    cp l
    cp l
    cp l
    xor d
    xor d
    cp l
    cp l
    ld c, h
    ld c, l
    cp l
    ld e, d
    xor d
    xor d
    ld e, c
    and [hl]
    ld e, d
    and [hl]
    and [hl]
    ld l, h
    and [hl]
    ld a, h
    add sp, -$18
    ld c, h
    ld c, l
    add sp, -$18
    xor d
    xor e
    ld e, h
    ld e, l
    xor h
    xor h
    add sp, -$18
    xor l
    xor d
    ld l, l
    and [hl]
    ld a, l
    and [hl]
    and [hl]
    ld a, h
    and a
    ld l, h
    ld e, h
    ld e, l
    add sp, -$18
    xor d
    or b
    add sp, -$17
    or c
    or c
    ld l, c
    ld l, d
    or d
    xor d
    ld hl, sp-$18
    ld a, l
    and [hl]
    ld l, l
    and [hl]
    and [hl]
    ld a, h
    and a
    or l
    xor d
    xor d
    or [hl]
    or [hl]
    xor d
    or e
    or [hl]
    or a
    ld a, c
    ld a, d
    ld l, e
    ld a, e
    or h
    xor d
    cp b
    or [hl]
    xor d
    xor d
    or [hl]
    or [hl]
    ld a, l
    and [hl]
    cp c
    and [hl]
    xor e
    xor h
    cp h
    cp h
    xor h
    xor l
    cp h
    ld e, c
    cp l
    cp l
    ld a, h
    xor d
    cp l
    ld e, d
    xor d
    ld a, l
    ld l, h
    add sp, -$4b
    or [hl]
    add sp, $6d
    or [hl]
    cp c
    xor e
    xor h
    cp h
    cp h
    cp l
    cp l
    ld l, h
    add sp, -$54
    xor l
    cp h
    ld e, c
    cp l
    ld e, d
    add sp, $6d
    xor e
    xor h
    cp h
    cp h
    xor h
    xor h
    cp h
    cp h
    xor h
    xor l
    cp h
    ld e, c
    cp h
    cp h
    cp h
    cp h
    cp h
    ld e, c
    cp h
    ld e, c
    cp l
    cp l
    ld a, h
    xor d
    cp l
    cp l
    xor d
    xor d
    cp l
    ld e, d
    xor d
    ld a, l
    ld a, h
    xor d
    ld l, h
    add sp, -$56
    or b
    add sp, -$17
    or c
    or c
    ld l, c
    ld l, d
    or d
    xor d
    ld hl, sp-$18
    xor d
    ld a, l
    add sp, $6d
    ld a, h
    xor d
    or l
    or [hl]
    xor d
    or e
    or [hl]
    or a
    ld a, c
    ld a, d
    ld l, e
    ld a, e
    or h
    xor d
    cp b
    or [hl]
    xor d
    ld a, l
    or [hl]
    cp c
    ret nz

    pop bc
    ret nc

    pop de
    jp nz, $d2c3

    db $d3
    call nz, $d4c0
    ret nc

    pop bc
    jp nz, $d2d1

    jp $d3c4


    call nc, $e1e0
    ldh a, [$fff1]
    ldh [c], a
    db $e3
    ldh a, [c]
    di
    db $e4
    ldh [$fff4], a
    ldh a, [$ffe1]
    ldh [c], a
    pop af
    ldh a, [c]
    db $e3
    db $e4
    di
    db $f4
    ldh a, [$fff1]
    ldh a, [$fff1]
    ldh a, [c]
    di
    ldh a, [c]
    di
    db $f4
    ldh a, [$fff4]
    ldh a, [$fff1]
    ldh a, [c]
    pop af
    ldh a, [c]
    di
    db $f4
    di
    db $f4
    add $c7
    sub $d7
    ret z

    and $d8
    or $e7
    add $f7
    sub $c7
    ret z

    rst $10
    ret c

    and $e7
    or $f7
    xor e
    xor h
    cp h
    cp h
    xor h
    xor h
    cp h
    cp h
    xor h
    xor l
    cp h
    ld e, c
    cp h
    cp h
    cp h
    cp h
    cp h
    ld e, c
    cp h
    ld e, c
    cp l
    cp l
    ld a, h
    xor d
    cp l
    cp l
    xor d
    xor d
    cp l
    ld e, d
    xor d
    ld a, l
    ld a, h
    or b
    ld l, h
    jp hl


    or c
    or c
    ld l, c
    ld l, d
    or d
    xor d
    ld hl, sp-$18
    xor d
    ld a, l
    add sp, $6d
    ld a, h
    or e
    or l
    or a
    ld a, c
    ld a, d
    ld l, e
    ld a, e
    or h
    xor d
    cp b
    or [hl]
    xor d
    ld a, l
    or [hl]
    cp c
    cp l
    cp l
    ld a, h
    xor d
    cp l
    cp h
    xor d
    cp l
    cp h
    cp h
    cp l

Call_011_6c00:
    cp l
    cp h
    cp l
    cp l
    xor d
    cp l
    ld e, d
    xor d
    ld a, l
    ld a, h
    xor d
    ld a, h
    xor d
    xor d
    or b
    xor d
    or e
    or c
    or c
    ld l, c
    ld l, d
    or d
    xor d
    or h
    xor d
    xor d
    ld a, l
    xor d
    ld a, l
    ld a, h
    xor d
    or l
    or [hl]
    xor d
    or e
    or [hl]
    or a
    ld a, c
    ld a, d
    ld l, e
    ld a, e
    or h
    xor d
    cp b
    or [hl]
    xor d
    ld a, l
    or [hl]
    cp c
    ld a, h
    ld bc, $01b5
    ld bc, $017d
    cp c
    xor e
    xor h
    cp h
    cp h
    xor h
    xor h
    cp h
    cp h
    xor h
    xor l
    cp h
    ld e, c
    cp h
    cp h
    cp l
    cp l
    cp h
    ld e, c
    cp l
    ld e, d
    ld a, h
    ld c, h
    ld a, h
    ld e, h
    ld c, l
    or b
    ld e, l
    or e
    or c
    or c
    ld l, c
    ld l, d
    or d
    ld c, h
    or h
    ld e, h
    ld c, l
    ld a, l
    ld e, l
    ld a, l
    ld a, h
    xor d
    or l
    or [hl]
    xor d
    or e
    or [hl]
    or a
    ld a, c
    ld a, d
    ld l, e
    ld a, e
    or h
    xor d
    cp b
    or [hl]
    xor d
    ld a, l
    or [hl]
    cp c
    cp h
    cp h
    cp h
    cp h
    cp h
    ld e, c
    cp h
    ld e, c
    cp l
    cp l
    ld a, h
    ld c, h
    cp l
    cp h
    ld c, l
    cp l
    cp h
    cp h
    cp l
    cp l
    cp h
    cp l
    cp l
    ld c, h
    cp l
    ld e, d
    ld c, l
    ld a, l
    ld a, h
    ld e, h
    ld l, h
    add sp, $5d
    or b
    add sp, -$17
    or c
    or c
    ld l, c
    ld l, d
    or d
    ld e, h
    ld hl, sp-$18
    ld e, l
    ld a, l
    add sp, $6d
    ld bc, $0101
    ld bc, $4949
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $00
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    db $10
    db $10
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    call z, $dccd
    db $dd
    jp z, $dacb

    db $db
    call z, $dccd
    db $dd
    jp z, $dacb

    db $db
    daa
    jr z, jr_011_6d53

    jr c, jr_011_6d49

    inc l
    dec sp
    inc a
    daa
    jr z, jr_011_6d5b

    jr c, jr_011_6d51

    inc l
    dec sp
    inc a
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_6d49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_6d51:
    nop
    nop

jr_011_6d53:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_6d5b:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $ec
    db $ed
    db $fc
    db $fd
    ld [$faeb], a
    ei
    db $ec
    db $ed
    db $fc
    db $fd
    ld [$faeb], a
    ei
    db $ec
    db $ed
    db $fc
    db $fd
    ld [$faeb], a
    ei
    dec l
    ld l, $3d
    ld a, $67
    ld l, b
    ld [hl], a
    ld a, b
    dec l
    ld l, $3d
    ld a, $67
    ld l, b
    ld [hl], a
    ld a, b
    dec l
    ld l, $3d
    ld a, $67
    ld l, b
    ld [hl], a
    ld a, b
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    db $10
    db $10
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    db $10
    db $10
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    db $10
    db $10
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    db $10
    db $10
    ld c, a
    ld e, a
    ld de, $4e11
    ld e, [hl]
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $0210
    ld [bc], a
    db $10
    ld de, $1212
    ld de, $1010
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $10
    db $10
    ld l, a
    ld a, a
    ld de, $6e11
    ld a, [hl]
    db $ec
    db $ed
    db $fc
    db $fd
    ld [$faeb], a
    ei
    db $ec
    db $ed
    db $fc
    db $fd
    ld [$faeb], a
    ei
    dec l
    ld l, $3d
    ld a, $67
    ld l, b
    ld [hl], a
    ld a, b
    dec l
    ld l, $3d
    ld a, $67
    ld l, b
    ld [hl], a
    ld a, b
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add hl, bc
    inc bc
    add hl, bc
    inc bc
    inc bc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add hl, bc
    inc bc
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
    nop
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
    ld a, [bc]
    inc bc
    nop
    nop
    inc c
    inc bc
    dec b
    inc bc
    nop
    ld bc, $0100
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
    ld bc, $0100
    dec bc
    inc bc
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
    nop
    ld [bc], a
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
    nop
    nop
    ld bc, $0100
    dec bc
    inc bc
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
    ld b, $03
    rlca
    inc bc
    ld [$0003], sp
    ld bc, $0100
    dec bc
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0309
    ld [bc], a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0303
    add hl, bc
    inc bc
    add hl, bc
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    ld a, [bc]
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
    ld bc, $0000
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
    ld bc, $0100
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $030b
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
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld b, $03
    rlca
    inc bc
    ld [$0003], sp
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $030b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $030b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0309
    ld [bc], a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
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
    ld bc, $0100
    ld a, [bc]
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
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
    ld bc, $030b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0305
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
    ld bc, $030b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $030b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    rlca
    inc bc
    ld [$0003], sp
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    add e
    dec bc
    add e
    nop
    nop
    dec c
    add e
    dec c
    add e
    nop
    nop
    nop
    nop
    inc b
    add e
    inc b
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    add e
    dec bc
    add e
    nop
    nop
    dec c
    add e
    dec c
    add e
    nop
    nop
    nop
    nop
    inc b
    add e
    inc b
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    ld bc, $0083
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    add e
    inc c
    add e
    nop
    nop
    ld c, $83
    ld c, $83
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    add e
    inc c
    add e
    nop
    nop
    ld c, $83
    ld c, $83
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    ld b, $83
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    ld [bc], a
    add e
    ld [bc], a
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f83
    add e
    rrca
    add e
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    ld [bc], a
    add e
    ld [bc], a
    add e
    nop
    nop
    nop
    nop
    ld bc, $0083
    nop
    nop
    nop
    nop
    nop
    ld [$0f83], sp
    add e
    rrca
    add e
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    ld a, [bc]
    add d
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    nop
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
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
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
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
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
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
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    nop
    nop
    dec b
    add e
    inc b
    add e
    inc b
    add e
    nop
    add e
    nop
    add e
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
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    nop
    nop
    nop
    nop
    inc b
    add e
    inc b
    add e
    nop
    add e
    nop
    add e
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
    add e
    nop
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
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    add e
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
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0083], sp
    add e
    nop
    add e
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
    add e
    ld [bc], a
    add e
    ld [bc], a
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add e
    nop
    add e
    nop
    add e
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
    add e
    ld [bc], a
    add e
    ld [bc], a
    add e
    ld b, $83
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add e
    nop
    add e
    nop
    add e
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
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    ld a, [bc]
    add d
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
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
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    ld a, [bc]
    add d
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0180
    nop
    ld bc, $0100
    nop
    ld bc, $0081
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop

Call_011_7800:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    halt
    ld [hl], a
    ld [$1809], sp
    add hl, de
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    inc c
    dec c
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    jr z, jr_011_7876

    jr c, jr_011_7888

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    inc l
    dec l
    inc a
    dec a
    ld l, $2f
    ld a, $3f
    nop
    ld [$ffbd], sp
    inc l
    nop
    add l
    ld a, [hl]
    ld c, e
    cp [hl]
    ld c, c
    nop
    xor d
    ld [hl], a
    ld d, l
    ld d, l
    xor d
    ld d, c
    ld [bc], a
    ld d, l
    rst $38
    xor d
    ld b, b
    nop
    rst $38
    rst $38
    nop

jr_011_7876:
    rlca
    ld hl, sp+$7b
    ld h, a
    xor a
    rst $18
    rst $38
    ld e, [hl]
    cp l
    rst $18
    cp e
    halt
    cp a
    rst $18
    or a
    rst $38
    ld a, d
    scf

jr_011_7888:
    ldh [$ff1f], a
    jp c, $f5e2

    ei
    rst $38
    ld a, d
    db $fc
    rst $18
    db $fd
    ld a, d
    db $fc
    cp $ed
    rst $38
    jp c, Jump_011_7fec

    add b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    cp $47
    nop
    rst $38
    nop
    xor e
    ld d, h
    ld d, e
    xor h
    xor e
    rst $18
    ld d, h
    ld d, a
    xor h
    and e
    ld e, h
    ld b, c
    nop
    ld hl, sp+$47
    rst $38
    pop af
    ld c, [hl]
    ldh a, [c]
    ld c, l
    push hl
    ld e, d
    ldh [c], a
    ld e, l
    rst $38
    push af
    ld c, d
    di
    ld c, h
    ld sp, hl
    ld b, a
    rst $18
    db $e4
    rst $38
    cpl
    db $f4
    rst $18
    inc [hl]
    ld [hl], a
    sbc h
    rst $00
    inc a
    rst $38
    rst $28
    inc d
    rst $08
    inc [hl]
    sbc a
    db $e4
    rst $08
    jr nc, @+$01

    adc a
    ld [hl], b
    db $e3
    inc e
    cp b
    ld b, a
    sub l
    ld l, d
    cp $c0
    ld [$ff7f], sp
    nop
    ld a, a
    add b
    call nc, $ff3f
    sbc [hl]
    ld a, a
    cp a
    ld a, a
    xor [hl]
    ld a, a
    sbc a
    ld a, a
    db $fd
    xor d
    ld b, b
    nop
    ld a, [hl]
    add c
    db $dd
    ld a, $bd
    ld a, [hl]
    db $eb
    sbc a
    ld a, [hl]
    ld b, c
    nop
    xor l
    add b
    nop
    cp $01
    dec hl
    rst $18
    db $fc
    ld a, c
    cp $b5
    cp $41
    nop
    ld a, l
    cp $ff
    cp c

jr_011_7915:
    cp $ff
    nop
    pop bc
    ld a, $c1
    ld a, $ff
    rst $38
    nop
    call z, $cc33
    inc sp
    rst $38
    nop
    ei
    ret nz

    ccf
    dec b
    ld bc, $e718
    jr jr_011_7915

    rst $38
    db $fc
    ldh a, [$ff0e]
    dec b
    ld [bc], a
    dec e
    ldh [c], a
    dec e
    ldh [c], a
    rst $38
    nop
    ld a, l
    ld bc, $0300
    add c
    ld a, [hl]
    sub l
    ld a, [hl]
    xor c
    ld b, d
    nop
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    and c
    ld a, [hl]
    jp nc, $e67d

    ld c, c
    nop
    rst $38
    nop
    and e
    rrca
    ld b, d
    db $10
    xor d
    xor d
    ld d, l
    rst $38
    ld e, b
    cp a
    ld l, a
    rra
    ld e, d
    daa
    rst $00
    cp b
    rst $38
    ld c, d
    ccf
    or e
    rst $08
    ld e, h
    db $e3
    scf
    jr c, @+$01

    ld a, [de]
    db $fd
    rst $20
    ld sp, hl
    sbc [hl]
    ldh [$fff7], a
    add hl, bc
    rst $38
    sub a
    ld l, c
    ld e, h
    ldh [c], a
    dec sp
    rst $00
    rst $28
    rra
    rst $38
    sub l
    ld l, d
    xor d
    ld d, l
    sub l
    ld l, d
    ld [$f755], a
    ret nz

    ld a, a
    sub l
    ldh [$ff0b], a
    rst $38
    ld a, a
    ld b, a
    cp h
    ld a, e
    add a
    ld a, h
    ld b, c
    nop
    rrca
    db $fc
    rst $38
    db $fc
    ret nz

    ld d, $ff
    db $fc
    cp a
    ld b, b
    ldh a, [c]
    ld c, a
    and d
    ld e, l
    push bc
    rst $38
    ld a, d
    adc d
    ld [hl], l
    or l
    ld l, d
    ld a, [$9725]
    rst $38
    ld l, b
    rst $38
    inc b
    rst $18
    db $e4
    xor a
    ld [hl], h
    ld e, a
    rst $38
    or h
    or a
    ld e, h
    ld b, a
    cp h
    rst $30
    inc c
    rst $30

jr_011_79c0:
    rst $38
    inc c
    rst $20
    inc e
    jp $8f3c


    ld [hl], h
    dec sp
    xor e
    call nz, $e003
    ld [bc], a
    ld a, a
    jr nz, jr_011_79d4

    sbc [hl]
    and d
    rrca

jr_011_79d4:
    sbc a
    di
    ld a, a
    or l
    ldh [rIF], a
    pop bc
    nop
    xor l
    ld a, [hl]
    sbc l
    ld a, [hl]
    push de
    cp a
    nop
    db $10
    xor a
    add b
    nop
    xor e
    ret nz

    nop
    ld a, c
    cp $7d
    ld [hl], l
    ld h, b
    rrca
    reti


    cp $bd
    cp $55
    ld b, b
    db $10
    db $fd
    ld [hl], l
    nop
    db $10
    cp $70
    add sp, $70
    pop af
    ld b, b
    ld a, a
    pop de
    nop
    ret nc

    nop
    ret c

    nop
    call c, $1e00
    rst $38
    dec de
    rlca
    rst $00
    inc bc
    inc hl
    nop
    ld h, d
    nop
    rst $18
    jp nz, Jump_000_0600

    nop
    ld a, [bc]
    nop
    rra
    ei
    rst $30
    rst $38
    db $eb
    rst $30
    dec bc
    rst $30
    rst $38
    nop
    or e
    ld h, b
    rst $38
    and h
    ld b, b
    and l
    ld b, b
    scf
    ret z

    db $eb
    db $f4
    rst $38
    ld [de], a
    db $ed
    ldh [c], a
    db $dd
    ld a, a
    add b
    rst $20
    jr @+$01

    rst $00
    jr c, jr_011_79c0

    ld a, h
    rst $38
    nop
    ld a, b
    rst $20
    rst $38
    ld l, b
    rst $30
    rst $28
    db $10
    rst $18
    ld h, b
    ld hl, sp-$19
    adc a
    ld e, b
    rst $20
    or b
    ld c, a
    ld b, c
    inc de
    ld h, c
    inc de
    add e
    nop
    nop
    rst $38
    rst $38
    xor $11
    ld de, $0fee
    ldh a, [$fffc]
    rst $38
    inc bc
    cp $01
    ld bc, $2bfe
    cp $57
    rst $30
    cp $30
    rst $08
    ld h, c
    ld c, $80
    nop
    add e
    nop
    rst $38
    add b
    nop
    sub l
    dec d
    add b
    nop
    ld [hl], b
    adc a
    cp $20
    dec h
    cp $01

jr_011_7a81:
    nop
    pop bc
    nop
    ld bc, $a700
    xor c
    xor b
    ld bc, $0142
    ld b, e
    nop
    rst $38
    ldh [rNR32], a
    and $e9
    add hl, de
    ld b, c
    ld bc, $0043
    rst $38
    ret nz

    ld a, [de]
    ld h, a
    sbc b
    ld a, a
    rst $38
    add b
    call nz, $cf3b
    jr nc, jr_011_7a81

    inc l
    rst $38
    rst $38
    inc e
    cp [hl]
    ld e, d
    db $fd
    inc [hl]
    ld sp, hl

jr_011_7aae:
    jr z, jr_011_7aae

    rst $38
    ld bc, $ba45
    push hl
    ld a, [de]
    dec [hl]
    ld a, [hl+]
    db $dd
    rst $38
    ld d, d
    ld l, l
    ld a, [hl+]
    dec a
    ld a, [de]
    dec d
    ld [bc], a
    sbc [hl]
    rst $38
    ld a, a
    xor l
    ld a, a
    sub h
    ld a, a
    cp l
    ld a, a
    sbc l
    adc $00
    jr nz, @-$29

    ld a, [hl+]
    reti


    add d
    rrca
    pop bc
    rrca

jr_011_7ad5:
    adc a
    ld a, [hl]
    ld [hl], l
    db $dd

jr_011_7ad9:
    ld h, b
    ld e, $a5
    nop
    db $10
    or l
    cp $29
    nop
    jr nz, @+$01

    cp c
    cp $f9
    cp $ab
    ld d, h
    sbc e
    ld a, [hl]
    rst $38
    rst $30
    nop
    di
    ld h, b
    ldh a, [$ff60]
    adc b
    ld [hl], b
    rst $38
    cp $00
    cp c
    ld a, [hl]
    cp [hl]
    ld a, a
    or b
    ld a, a
    rst $38
    ei
    nop
    ldh a, [c]
    ld bc, $0102
    inc b
    inc bc
    rst $38
    rra
    nop
    ldh [$ff1f], a
    add d
    ld a, a
    cp b
    ld a, a
    rst $38
    db $e3
    nop
    jr nc, jr_011_7ad5

    cpl
    ret nz

    jr nz, jr_011_7ad9

    rst $38
    ldh [rP1], a
    sub b
    ld h, b
    xor a
    ld [hl], b
    or b
    ld a, a
    cp a
    add c
    ld a, [hl]
    add b
    ld a, a
    add b

jr_011_7b28:
    ld a, a
    and c
    ld h, $c0
    rst $38
    ccf
    add b
    ld a, a
    adc a
    ld [hl], b
    ldh [$ff1f], a
    nop
    db $d3
    rst $38
    ld [bc], a
    or b
    ld a, [bc]
    add l
    rrca
    ld [bc], a
    and d
    cpl
    rst $38
    rst $38
    rst $30
    ld [$0b15], a
    add d
    db $10
    xor a
    cp $5f
    cp $f6
    and b
    dec bc
    cp $0b
    ld h, b
    nop
    rlca
    cp $f3
    ld c, $ff
    jr nc, jr_011_7b28

    jp $fdff


    cp $7f
    rst $38
    rst $38
    db $e4
    ei
    rra
    rst $38
    ld hl, sp-$01
    add $39
    rst $38
    ld [hl], b
    adc a
    db $e3
    rst $38
    cp a
    ld a, a
    or $f9
    rst $18
    rst $18
    rst $20
    rst $38
    rst $38
    rrca
    nop
    ld bc, $00ff
    rst $38
    dec a
    jp $fef3


    call z, $cf3f
    ldh a, [$fff7]
    rst $20
    rra
    ld [hl], c
    ldh [$ff29], a
    rst $38
    nop
    sbc h
    db $e3
    rst $38
    pop hl
    ccf
    rst $38
    ldh a, [rWave_b]
    rst $00
    inc e
    rst $38

jr_011_7b97:
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ld sp, hl
    jr z, jr_011_7b97

    jr z, @+$01

    db $fc
    inc [hl]
    rst $38
    dec de
    cp a
    ld e, h
    rst $18
    daa
    rst $38
    rst $08

jr_011_7bab:
    jr nc, jr_011_7bab

    ld bc, $02d5
    dec d
    ld [bc], a
    rst $38
    dec [hl]
    ld [de], a
    db $fd
    cp d
    ld sp, hl
    halt
    push af
    ld [$e57f], a
    ld a, [de]
    cp c
    ld b, [hl]
    and d
    ld a, a
    cp h
    nop
    db $10
    rst $38
    ld b, c
    cp [hl]
    rst $38
    add b
    ld e, c
    cp [hl]
    reti


    cp [hl]
    cp a
    rst $38
    pop bc
    rst $38
    inc a
    db $db
    inc a
    ldh a, [$ff15]
    rst $38
    rst $38
    ld bc, $14ff
    rst $38
    ld h, l
    rst $38
    ld h, c
    ld h, c
    rst $30
    ld b, l
    cp $3d
    nop
    db $10
    add d
    ld a, l
    rst $38
    ld bc, $9abf
    ld a, l
    sbc e
    ld a, l
    rst $38
    add e
    ld bc, $ef1e
    rst $38
    pop af
    inc de
    pop hl
    rst $20
    nop
    add hl, sp
    rlca
    sub e
    ld [hl], a
    ld c, $91
    ld c, $01
    rra
    set 6, a
    ld [$1f00], sp

jr_011_7c09:
    rst $18
    add e
    ld bc, $1c1d
    ccf
    and b
    ld sp, $ee17
    rst $38
    dec d
    xor $11
    xor $ff
    nop
    sbc l
    ld a, [hl]
    db $fd
    pop bc
    jr nz, jr_011_7c4f

    add b
    ld h, b
    add [hl]
    ld b, [hl]
    adc h
    ld c, h
    db $e3
    adc b
    ld c, b
    dec h
    nop
    cpl
    ld b, d
    dec bc
    ld b, e
    add hl, bc
    ld b, $45
    rst $30
    ld b, d
    dec d
    ld [de], a
    dec h
    nop
    dec [hl]
    ld [hl-], a
    nop
    rst $38
    rst $38
    ld e, c
    rst $18
    inc e
    db $fc
    ld h, a
    rst $20
    inc de
    sbc a
    rst $38
    ld c, b
    ret z

    ld h, l
    rst $38
    ld sp, $00f1
    rst $38
    rst $38

jr_011_7c4f:
    ld d, d
    ld [hl], d
    add hl, de
    rra
    and h
    db $fc
    rlca
    rlca
    rst $38
    jp z, $46fe

    rst $00
    inc a
    inc a
    add b
    ld a, a
    rst $38
    ldh a, [$ff7f]
    add a
    ld a, a
    sbc b
    ld a, a
    ldh [$ff7f], a
    db $fd
    or a
    add b
    ld d, $8e
    ld a, a
    nop
    rst $38
    adc l
    rst $38
    rst $30
    ldh [rIE], a
    rlca
    ret nz

    ld [de], a
    inc bc
    rst $38
    jr c, @+$01

    ld e, l
    jp $23b0


    sub a
    ld a, a
    add e
    nop
    jr jr_011_7c09

    ld h, b
    jr jr_011_7cf7

    add b
    nop
    ccf
    cp $01
    pop hl
    dec d
    ld e, a
    cp $81
    ld d, $f9
    xor a
    ld [bc], a
    inc de
    ret nc

    rla
    add b
    ret nz

    cp a
    ret nz

    cp a
    cp a
    rst $38
    add b
    call nz, $c1bf
    cp a
    pop hl
    dec h
    rst $38
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    ld b, a
    rst $38
    ld a, [$fa0f]
    rra
    nop
    ld sp, $d10e
    rst $38
    ld c, $11
    ld c, $1f
    nop
    ld hl, $c31f
    rst $38
    ccf
    nop
    rst $38
    ccf
    ld a, $9f
    inc e
    rst $38
    db $db
    nop
    ld a, l
    nop
    add hl, hl
    db $fc
    inc bc
    and c
    dec e
    cp l
    ld a, [hl]
    cp a
    cp a
    ld b, b
    and b
    ld b, b
    xor b
    ld c, a
    ld b, l
    nop
    ld a, c
    rst $38
    cp $f5
    ld c, $59
    ld l, [hl]
    sbc c
    xor [hl]
    ld e, l
    rst $08
    ld l, [hl]
    sub l
    xor [hl]
    ld e, c
    ld b, b
    nop
    and e
    rrca
    adc h
    ld c, h

jr_011_7cf7:
    rst $38
    adc h
    ld c, h
    add $06
    add e
    ld b, e
    ret nz

    jr nz, jr_011_7cf7

    ret


    ld d, c
    ei
    ei
    xor c
    ld d, d
    inc bc
    inc bc
    cp a
    cp a
    rst $28
    nop
    nop
    dec [hl]
    ld [hl-], a
    ld hl, $7500
    ld [hl], d
    push af
    rst $38
    ldh a, [c]
    push af
    ldh a, [c]
    push hl
    ldh [c], a
    add hl, bc
    ld b, $fd
    ld a, a
    ld a, l
    ld h, d
    and d
    xor b
    ret c

    ld e, a
    ldh [rTIMA], a
    ld b, d
    ccf
    or e
    or e
    inc b
    inc b
    ld b, b
    ld b, b
    ld h, e
    inc sp
    rrca
    ld bc, $aaff
    ld d, l
    ld a, a
    ld a, [hl]
    rlca
    dec b
    ld d, [hl]
    ld e, e
    di
    db $fd
    rlca
    dec b
    ld b, l
    ld h, c
    ld sp, $7f9f
    sub c
    ld l, a
    ccf
    cp [hl]
    ld e, a
    and d
    ld e, a
    sbc a
    ld h, c
    ldh [c], a
    dec c
    nop
    inc [hl]
    rst $38
    rst $20
    sbc [hl]
    cp e
    ld a, [hl]
    adc a
    ld a, d
    rst $38
    add [hl]
    rst $18
    ld b, c
    cp [hl]
    ret z

    cp a
    db $e4
    ret nz

    rrca
    jp z, $5dbf

    ret nc

    ld h, h
    nop
    rlca
    ld a, [$c04f]
    rrca
    rla
    nop
    db $10
    db $fd
    adc a
    ld b, b
    db $10
    daa
    ld a, [$5fee]
    ei
    ld e, h
    rst $38
    db $f4
    ld e, b
    add sp, $50
    ld hl, sp+$40
    db $fc
    ld b, b
    rst $38
    db $eb
    ld b, b
    xor b
    ld b, b
    add sp, $40
    ld hl, sp+$40
    rst $38
    xor b
    ld d, b
    db $f4
    ld e, b
    and e
    ld e, h
    xor h
    ld e, h
    rst $18
    and b
    ld e, a
    rst $38
    nop
    and b
    ldh [rIF], a
    cp a
    ld e, a
    cp a
    and b
    ld e, a
    cp a
    ld b, b
    rst $18
    inc a
    ld bc, $5933
    rst $38
    ld l, [hl]
    dec d
    ld l, $d9
    xor $1d
    xor $f9
    db $fd
    ld c, $03
    inc sp
    xor a
    ld d, b
    reti


    ld h, $eb
    ld d, $ff
    ld a, a
    add b
    ld d, h
    cp e
    call nc, $b9bb
    rst $00
    rst $38
    ld e, $1f
    rst $38
    nop
    inc h
    db $db
    ld l, h
    db $db
    cp $a1
    ld d, d
    inc d
    rst $38
    add b
    db $fc
    nop
    add b
    rst $38
    ei
    nop
    ld a, [bc]
    ld [bc], a
    ld b, b
    nop
    rst $38
    jr nc, @+$01

    nop
    ld l, a
    ld hl, sp+$00
    add e
    push af
    add b
    inc bc
    inc bc
    db $fc
    ld h, b
    ld d, a
    rst $38
    db $dd
    ld a, [hl+]
    db $dd
    inc e
    ldh [c], a
    nop
    sbc h
    rst $38
    rst $38
    nop
    xor d
    ld d, l
    pop de
    ld l, $88
    ld [hl], a
    adc d
    db $eb
    ld a, a
    sub c
    nop
    ld e, d
    rst $10
    jr nz, jr_011_7e63

    xor d
    ld d, l
    ld b, h
    rst $38
    cp e
    nop
    rst $38
    adc c
    rst $38
    ld d, [hl]
    rst $38
    cp a
    cp $80
    inc sp
    rst $38
    nop
    sub b
    ld l, a
    nop
    rst $38
    ld a, [hl+]
    rst $08
    rst $38
    ld e, a
    rst $38
    or l
    pop hl
    nop
    jr nz, jr_011_7e8b

    ld bc, $f9fe
    ld c, l
    ld [hl+], a
    inc [hl]
    ld b, e
    nop
    ld a, a
    add b
    sbc [hl]
    ld h, c
    cp l
    rst $38
    ld e, h
    cp l
    ld e, h
    db $fd
    inc e
    sbc d
    ld l, b
    sbc e
    rst $30
    ld l, c
    sbc e
    ld l, c
    add c
    ld b, l
    pop af
    ld c, $09
    ld b, $ff
    rst $38
    nop
    add hl, sp
    ld [hl], $59
    ld d, [hl]
    xor c
    and [hl]
    db $fc
    rrca
    db $10
    dec bc
    db $10
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    ld a, h
    ccf
    rst $38
    ld hl, $361e
    ld [$106b], sp
    cp d

jr_011_7e63:
    nop
    rst $30
    ld a, [hl+]
    db $10
    rst $20
    and b
    ld hl, $1ae7
    rla
    ld a, [bc]
    rst $38
    rrca
    ld [bc], a
    rra
    ld [bc], a
    rst $28
    ld [bc], a
    dec c
    ld [bc], a
    ld a, a
    cp a
    ld a, a
    cp a
    ld h, b
    cp a
    ld e, a
    xor a
    jr nz, jr_011_7e91

    di
    sbc a
    ld h, b
    ld bc, $b026
    inc a
    inc bc
    rst $38
    db $fd

jr_011_7e8b:
    rst $38
    sbc a
    push hl
    rlca
    db $fd
    rst $38

jr_011_7e91:
    inc bc
    nop
    ld a, [bc]
    db $10
    ld [hl], b
    db $db
    rst $38
    rst $38
    dec sp
    call nz, $bb7d
    ld a, a
    cp e
    or $ff
    cp e
    ld a, h
    add e
    db $f4
    cp e
    rra
    ldh [$ffef], a
    db $e3
    rra
    ld a, a
    jr nz, jr_011_7ed8

    sub b
    rrca
    or b
    ld [hl], c
    ccf
    ret nz

    ld hl, sp-$51
    rlca
    rst $30
    ld hl, sp-$02
    nop
    dec hl
    ld bc, $7292
    db $fc
    rst $38
    inc bc
    nop
    rst $38
    reti


    rst $38
    db $fc
    inc hl
    cp a
    rst $38
    db $dd
    cp $dd
    ld a, d
    db $dd
    ld a, $c1
    dec sp
    rst $20
    db $dd
    cp a
    ld a, a
    add b
    ld c, l

jr_011_7ed8:
    and c
    dec hl
    ld a, a
    rst $38
    ld b, b
    nop
    ld [hl+], a
    nop
    ld d, e
    ld c, $53
    nop
    db $e3
    dec hl
    dec bc
    ld bc, $43e2
    add b
    ld h, a
    ld h, b
    inc l
    rst $38
    rst $38
    ld [bc], a
    adc a
    ld [hl], d
    sbc e
    ld l, c
    ei
    add hl, bc
    cp $01
    db $10
    cp a
    ld c, h
    cp l
    ld e, h
    sbc a
    ld h, b
    rst $38
    db $fd
    nop
    ld b, c
    rrca
    ld e, a
    ld d, b
    xor c
    and [hl]
    ld sp, hl
    add $3f
    ld sp, hl
    or $f1
    ld c, $01
    cp $0f
    db $10
    dec bc
    jr nz, @+$01

    ld a, [hl-]
    nop
    ld h, $18
    scf
    inc e
    ld d, l
    ld [hl], $6f
    and d
    ld h, e
    sbc h
    sbc h
    pop hl
    ld l, l
    rrca
    ld [bc], a
    ld hl, rJOYP
    sub l
    ld a, [bc]
    push hl
    ld a, [de]
    ld e, l
    ld e, d
    dec b
    ld a, [$e2be]
    inc sp
    ret nz

    rst $38
    cp a
    rst $18
    and a
    nop
    inc [hl]
    ret nz

    ld a, [hl]
    sub d
    add hl, bc
    cp $ff
    ld b, $ff
    ld a, [$a0ff]
    inc sp
    nop
    add b
    nop
    ldh [$ff72], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_011_7fec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
