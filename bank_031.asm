; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    ld sp, $0000
    jr c, jr_031_4005

jr_031_4005:
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
    jr jr_031_4085

jr_031_4085:
    jr jr_031_4087

jr_031_4087:
    jr jr_031_4089

jr_031_4089:
    jr jr_031_408b

jr_031_408b:
    jr jr_031_408d

jr_031_408d:
    jr jr_031_408f

jr_031_408f:
    jr jr_031_4091

jr_031_4091:
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
    jr jr_031_4137

jr_031_4137:
    jr jr_031_4139

jr_031_4139:
    jr jr_031_413b

jr_031_413b:
    jr jr_031_413d

jr_031_413d:
    jr jr_031_413f

jr_031_413f:
    jr jr_031_4141

jr_031_4141:
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
    jr c, jr_031_415f

jr_031_415f:
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
    jr c, jr_031_417b

jr_031_417b:
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
    jr jr_031_418d

jr_031_418d:
    jr jr_031_418f

jr_031_418f:
    jr jr_031_4191

jr_031_4191:
    nop
    nop
    cp $00
    ld b, $00
    ld l, h
    nop
    jr c, jr_031_419b

jr_031_419b:
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
    call z, Call_031_7c00
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
    call z, Call_031_7800
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
    call z, Call_031_7c00
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
    jr jr_031_41f5

jr_031_41f5:
    jr nc, jr_031_41f7

jr_031_41f7:
    jr nc, jr_031_41f9

jr_031_41f9:
    db $fc
    nop
    jr nc, jr_031_41fd

jr_031_41fd:
    jr nc, jr_031_41ff

jr_031_41ff:
    jr nc, jr_031_4201

jr_031_4201:
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
    jr nc, jr_031_4225

jr_031_4225:
    nop
    nop
    jr nc, jr_031_4229

jr_031_4229:
    jr nc, jr_031_422b

jr_031_422b:
    jr nc, jr_031_422d

jr_031_422d:
    jr nc, jr_031_422f

jr_031_422f:
    jr nc, jr_031_4231

jr_031_4231:
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
    jr nc, jr_031_4257

jr_031_4257:
    jr nc, jr_031_4259

jr_031_4259:
    jr nc, jr_031_425b

jr_031_425b:
    jr nc, jr_031_425d

jr_031_425d:
    jr nc, jr_031_425f

jr_031_425f:
    jr c, jr_031_4261

jr_031_4261:
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
    call z, Call_031_7800
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
    jr nc, jr_031_42d5

jr_031_42d5:
    jr nc, jr_031_42d7

jr_031_42d7:
    db $fc
    nop
    jr nc, jr_031_42db

jr_031_42db:
    jr nc, jr_031_42dd

jr_031_42dd:
    jr nc, jr_031_42df

jr_031_42df:
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
    call z, Call_031_7800
    nop
    jr nc, jr_031_4301

jr_031_4301:
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
    call z, Call_031_7800
    nop
    jr nc, jr_031_431d

jr_031_431d:
    ld a, b
    nop
    call z, RST_00
    nop
    nop
    nop
    call z, $cc00
    nop
    call z, Call_031_7c00
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
    jr jr_031_433b

jr_031_433b:
    jr nc, jr_031_433d

jr_031_433d:
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
    jr jr_031_4355

jr_031_4355:
    jr c, jr_031_4357

jr_031_4357:
    jr jr_031_4359

jr_031_4359:
    jr jr_031_435b

jr_031_435b:
    jr jr_031_435d

jr_031_435d:
    jr jr_031_435f

jr_031_435f:
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
    jr jr_031_43bf

jr_031_43bf:
    jr jr_031_43c1

jr_031_43c1:
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
    jr jr_031_4411

jr_031_4411:
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
    jr jr_031_441d

jr_031_441d:
    nop
    nop
    jr jr_031_4421

jr_031_4421:
    nop
    nop
    ld b, h
    nop
    xor $00
    cp $00
    cp $00
    ld a, h
    nop
    jr c, jr_031_442f

jr_031_442f:
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
    jr c, jr_031_4477

jr_031_4477:
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
    jr nz, jr_031_4487

jr_031_4487:
    ld b, b
    nop
    cp $00
    ld b, b
    nop
    jr nz, jr_031_448f

jr_031_448f:
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
    jr c, jr_031_449f

jr_031_449f:
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
    jr nz, jr_031_4513

jr_031_4513:
    stop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    stop
    jr nz, jr_031_4521

jr_031_4521:
    nop
    nop
    nop
    nop
    ld b, h
    nop
    jr z, jr_031_4529

jr_031_4529:
    stop
    jr z, jr_031_452d

jr_031_452d:
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
    call z, Call_031_6c00
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
    jr jr_031_4575

jr_031_4575:
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
    call z, Call_031_6c00
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
    jr jr_031_45e5

jr_031_45e5:
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
    jr jr_031_4655

jr_031_4655:
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
    jp Jump_000_0300


    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    jr jr_031_4695

jr_031_4695:
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
    jr jr_031_46a1

jr_031_46a1:
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
    jr jr_031_46c5

jr_031_46c5:
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
    jr jr_031_46d7

jr_031_46d7:
    jr jr_031_46d9

jr_031_46d9:
    rrca
    nop
    nop
    nop
    jr jr_031_46df

jr_031_46df:
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
    jr c, jr_031_46fd

jr_031_46fd:
    jr nc, jr_031_46ff

jr_031_46ff:
    jr nc, jr_031_4701

jr_031_4701:
    nop
    nop
    jr jr_031_4705

jr_031_4705:
    nop
    nop
    jr jr_031_4709

jr_031_4709:
    jr jr_031_470b

jr_031_470b:
    jr jr_031_470d

jr_031_470d:
    jr jr_031_470f

jr_031_470f:
    jr jr_031_4711

jr_031_4711:
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
    jr jr_031_472f

jr_031_472f:
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    jr jr_031_4737

jr_031_4737:
    jr jr_031_4739

jr_031_4739:
    rrca
    nop
    nop
    nop
    jr jr_031_473f

jr_031_473f:
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
    jr jr_031_4797

jr_031_4797:
    jr jr_031_4799

jr_031_4799:
    rra
    nop
    jr jr_031_479d

jr_031_479d:
    jr jr_031_479f

jr_031_479f:
    jr jr_031_47a1

jr_031_47a1:
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
    jr c, jr_031_47c5

jr_031_47c5:
    jr jr_031_47c7

jr_031_47c7:
    jr jr_031_47c9

jr_031_47c9:
    jr jr_031_47cb

jr_031_47cb:
    jr jr_031_47cd

jr_031_47cd:
    jr jr_031_47cf

jr_031_47cf:
    inc e
    nop
    nop
    nop
    jr jr_031_47d5

jr_031_47d5:
    jr jr_031_47d7

jr_031_47d7:
    jr jr_031_47d9

jr_031_47d9:
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
    jr jr_031_4805

jr_031_4805:
    jr jr_031_4807

jr_031_4807:
    ld a, [hl]
    nop
    jr jr_031_480b

jr_031_480b:
    jr jr_031_480d

jr_031_480d:
    jr jr_031_480f

jr_031_480f:
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
    jr jr_031_4837

jr_031_4837:
    jr jr_031_4839

jr_031_4839:
    jr jr_031_483b

jr_031_483b:
    jr jr_031_483d

jr_031_483d:
    jr jr_031_483f

jr_031_483f:
    jr jr_031_4841

jr_031_4841:
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
    jr nz, jr_031_48f1

jr_031_48f1:
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
    jr jr_031_4901

jr_031_4901:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_031_4e7d

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

jr_031_4e7d:
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

Call_031_4e8b:
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
    jr c, jr_031_4e9b

jr_031_4e9b:
    jr c, jr_031_4e9d

jr_031_4e9d:
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

jr_031_4eb4:
    nop
    ld bc, $0300

jr_031_4eb8:
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

jr_031_4edc:
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]

jr_031_4ee7:
    ldh [rP1], a
    ret nz

jr_031_4eea:
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

jr_031_4efb:
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
    jr nc, jr_031_4eb4

jr_031_4f0c:
    jr nc, @-$56

jr_031_4f0e:
    jr nc, jr_031_4eb8

jr_031_4f10:
    jr nc, @+$01

jr_031_4f12:
    nop
    nop

jr_031_4f14:
    nop
    rst $38

jr_031_4f16:
    rst $38
    nop

jr_031_4f18:
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
    jr nc, jr_031_4edc

jr_031_4f34:
    jr nc, @-$56

jr_031_4f36:
    jr nc, jr_031_4ee7

jr_031_4f38:
    jr nc, jr_031_4eea

    jr nc, jr_031_4efb

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

jr_031_4f4c:
    rst $38
    nop

jr_031_4f4e:
    rst $38
    rst $38
    nop
    dec d
    ld b, $15
    ld b, $15
    ld b, $f5
    ld b, $0d

jr_031_4f5a:
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    xor b
    jr nc, jr_031_4f0c

    jr nc, jr_031_4f0e

    jr nc, jr_031_4f10

    jr nc, jr_031_4f12

    jr nc, jr_031_4f14

    jr nc, jr_031_4f16

    jr nc, jr_031_4f18

    jr nc, jr_031_4f87

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

jr_031_4f87:
    or b
    ccf
    xor a
    jr nc, jr_031_4f34

    jr nc, jr_031_4f36

jr_031_4f8e:
    jr nc, jr_031_4f38

    jr nc, jr_031_4f8e

    inc bc
    ld [bc], a
    ld bc, $fefd
    dec c
    cp $f5
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $a8
    jr nc, jr_031_4f4c

    jr nc, jr_031_4f4e

    jr nc, @-$4f

    jr nc, jr_031_4f5a

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
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    inc b
    ld bc, $0105
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0103
    ld [$0901], sp
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld c, $01
    ld b, $01
    rlca
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0102
    inc bc
    ld bc, $010a
    dec bc
    ld bc, $0103
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $0102
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    ld c, $01
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0103
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld c, $01
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $000c
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, $01
    ld bc, $0201
    ld bc, $0102
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $816a
    ld l, e
    add c
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $010e
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $010f
    stop
    stop
    stop
    stop
    stop
    rrca
    ld bc, $816c
    ld l, l
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $010f
    stop
    stop
    stop
    stop
    stop
    rrca
    ld bc, $816e
    ld l, a
    add c
    ld b, e
    add c
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0001
    nop
    nop
    nop
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
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0201
    ld bc, $0000
    rrca
    ld bc, $81be
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp a
    add c
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    add c
    ld c, $01
    ld bc, $0001
    nop
    nop
    nop
    rrca
    ld bc, $81c0
    pop bc
    add c
    jp nz, $c381

    add c
    call nz, Call_000_0f81
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    add c
    ld c, $01
    ld bc, $0001
    nop
    nop
    nop
    rrca
    ld bc, $81c5
    add $81
    rst $00
    add d
    ret z

    add c
    ret


    add c
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, h
    add c
    cp c
    add c
    ld c, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    add b
    nop
    nop
    rrca
    ld bc, $010f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0001
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
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld c, $01
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    stop
    stop
    stop
    rrca
    ld bc, $010f
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    rrca
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
    inc de
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    rrca
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc de
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    rrca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc de
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    add hl, sp
    add c
    ld a, [hl-]
    add c
    rrca
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    stop
    stop
    stop
    stop
    ld b, d
    add c
    stop
    dec sp
    add c
    inc a
    add c
    rrca
    ld bc, $0000
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010e
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010a
    dec bc
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld c, $01
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    ld c, $01
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0102
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld c, $01
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0102
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld c, $01
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0000
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop

jr_031_5514:
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    dec l
    add c
    ld l, $81
    ld c, $01
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    cpl
    add c
    jr nc, jr_031_5514

    ld c, $01
    inc c
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a

jr_031_56f4:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    ld c, $01
    jr nz, jr_031_56f4

    ld hl, $0e81
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld [hl+], a
    add c
    inc hl
    add c
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    add [hl]
    add c
    add a
    add c
    adc b
    add c
    adc c
    add c
    adc d
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [hl], h
    add c
    ld [hl], l
    add c
    ld [hl], l
    add c
    ld [hl], l
    add c
    halt
    add c
    adc e
    add c
    adc h
    add c
    adc l
    add c
    adc [hl]
    add c
    adc a
    add c
    sbc d
    add c
    sbc e
    add c
    sbc e
    add c
    sbc h
    add c
    ld bc, $0001
    nop
    ld [hl], a
    add c
    ld [hl], a
    add c
    ld [hl], a
    add c
    ld [hl], a
    add c
    ld a, b
    add c
    sub b
    add c
    sub c
    add c
    sub d
    add c
    sub e
    add c
    sub h
    add c
    sbc l
    add c
    sbc l
    add c
    sbc l
    add c
    sbc [hl]
    add c
    ld bc, $7201
    add c
    ld a, c
    add c
    ld a, d
    add c
    ld a, d
    add c
    ld a, d
    add c
    ld a, e
    add c
    sub b
    add c
    sub c
    add c
    sub d
    add c
    sub e
    add c
    sub h
    add c
    sbc a
    add c
    and b
    add c
    and b
    add c
    and c
    add c
    ld bc, $7301
    add c
    ld a, h
    add c
    ld a, l
    add c
    ld a, [hl]
    add c
    ld a, a
    add c
    add b
    add c
    sub b
    add c
    sub c
    add c
    sub d
    add c
    sub e
    add c
    sub h
    add c
    and d
    add c
    and e
    add c
    and h
    add c
    and l
    add c
    ld bc, $ba01
    add c
    add c
    add c
    add d
    add c
    add e
    add d
    add h
    add c
    add l
    add c
    sub l
    add c
    sub [hl]
    add c
    sub a
    add c
    sbc b
    add c
    sbc c
    add c
    and [hl]
    add c
    and a
    add d
    xor b
    add c
    xor c
    add c
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, $80
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    add b
    nop
    nop
    nop
    nop
    ld bc, $1001
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    stop
    nop
    nop
    sbc d
    add c
    sbc e
    add c
    sbc e
    add c
    sbc e
    add c
    sbc h
    add c
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    sbc l
    add c
    sbc l
    add c
    sbc l
    add c
    sbc l
    add c
    sbc [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0010
    ld [bc], a
    ld bc, $81aa
    xor e
    add c
    xor h
    add c
    xor l
    add c
    xor [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0010
    nop
    nop
    xor a
    add c
    or b
    add c
    or c
    add c
    or d
    add c
    or e
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [$0901], sp
    ld bc, $0000
    stop
    nop
    nop
    or h
    add c
    or l
    add c
    or [hl]
    add d
    or a
    add c
    cp b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
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
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, $01
    inc h
    add c
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    daa
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0102
    ld c, $01
    ld a, [hl+]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $010e
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld b, $01
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc b
    ld bc, $0105
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    ld b, $01
    rlca
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
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
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
    ld bc, $0000
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld c, $01
    ld sp, $3281
    add c
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc c
    nop
    ld [bc], a
    ld bc, $010e
    inc sp
    add c
    inc [hl]
    add c
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0105
    nop
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
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
    ld a, [bc]
    ld bc, $010b
    nop
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
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
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
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [$0901], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5f84:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0901], sp
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
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld b, $01
    rlca
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
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    add c
    ld h, $81
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_031_5f84

    add hl, hl
    add c
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    ld [bc], a
    ld bc, $812b
    inc l
    add c
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0102
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld b, $01
    rlca
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
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld [bc], a
    ld bc, $0108
    add hl, bc
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0901], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    inc b
    ld bc, $0105
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, HeaderLogo
    dec b
    ld bc, $010e
    ld c, $01
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $000c
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0000
    ld b, $01
    rlca
    ld bc, $010e
    ld c, $01
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld c, $01
    inc bc
    ld bc, $0106
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    inc bc
    ld bc, $0106
    rlca
    ld bc, $0102
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0000
    ld [$0901], sp
    ld bc, HeaderLogo
    dec b
    ld bc, $0103
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    ld a, [bc]
    ld bc, $010b
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0103
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0106
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $0000
    ld c, $01
    ld c, $01
    nop
    nop
    nop
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
    ld bc, $0103
    nop
    nop
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld c, $01
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $010e
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0103
    ld c, $01
    ld c, $01
    nop
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
    ld bc, $0102
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
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
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    inc bc
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $010e
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    inc bc
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0103
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    inc b
    ld bc, $0105
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0108
    add hl, bc
    ld bc, $0000
    nop
    nop
    inc bc
    ld bc, $010e
    ld c, $01
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0108
    add hl, bc
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [$0901], sp
    ld bc, $0000
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    ld [bc], a
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
    ld [$0901], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $010b
    inc b
    ld bc, $0105
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    inc bc
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
    ld c, $01
    ld c, $01
    inc b
    ld bc, $0105
    nop
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
    ld bc, $0103
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    ld c, $01
    nop
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
    ld bc, $000c
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0103
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
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
    ld [bc], a
    ld bc, $0000
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0103
    inc bc
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
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld c, $01
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
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
    ld c, $01
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
    ld c, $01
    ld c, $01
    jp z, $ca81

    add c
    jp z, $ca81

    add c
    res 0, c
    ld c, $01
    ld c, $01
    call z, $cd81
    add c
    adc $81
    rst $08
    add c
    ret nc

    add c
    ld c, $01
    ld c, $01
    pop de
    add c
    jp nc, $d381

    add c
    call nc, $d581
    add c
    ld c, $01
    ld c, $01
    push bc
    add c
    add $81
    rst $00
    add d
    ret z

    add c
    ret


    add c
    ld c, $01
    rrca
    ld bc, $0010
    stop
    stop
    stop
    stop
    ld c, $01
    rrca
    ld bc, $0010
    stop
    stop
    stop
    stop
    ld c, $01
    ld c, $01
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
    ld c, $01
    ld c, $01
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
    ld c, $01
    ld c, $01
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
    ld c, $01
    nop
    nop
    nop
    nop
    jr nz, jr_031_69c3

    jr nc, jr_031_69d5

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
    ld a, [bc]
    ld [hl], c
    ld [hl], d
    add hl, de
    ld a, [de]
    ld [hl], e
    dec bc
    dec de
    inc e
    nop
    nop
    nop
    nop
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

jr_031_69c3:
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

jr_031_69d5:
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
    jr jr_031_6a5d

    ld [$1817], sp
    rlca
    ld [$1817], sp

jr_031_6a5d:
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

Call_031_6c00:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call z, $dccd
    db $dd
    jp z, $dacb

    db $db
    call z, $dccd
    db $dd
    jp z, $dacb

    db $db
    daa
    jr z, jr_031_6d53

    jr c, jr_031_6d49

    inc l
    dec sp
    inc a
    daa
    jr z, jr_031_6d5b

    jr c, jr_031_6d51

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

jr_031_6d49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_6d51:
    nop
    nop

jr_031_6d53:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_6d5b:
    nop
    nop
    nop
    nop
    nop
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

Call_031_7800:
    nop
    nop
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
    jr z, jr_031_7876

    jr c, jr_031_7888

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
    ld [$ff0d], sp
    inc l

jr_031_7860:
    nop
    inc sp
    ldh a, [c]
    dec hl
    nop
    ld de, $1102
    nop
    jp nz, $fe02

    ld [hl], b
    nop
    rlca
    ld hl, sp+$7a
    ld h, [hl]
    xor c
    reti


    ld d, l
    rst $38

jr_031_7876:
    or a
    res 5, a
    ld [hl], h
    cp l
    add $ae
    ld [hl], d
    rst $38
    ccf
    ldh [$ff1f], a
    ld e, d
    ld h, d
    sub l
    sbc e
    ld l, d
    rst $38

jr_031_7888:
    db $ec
    rst $18
    db $fd
    ld [hl-], a
    or h
    ld l, [hl]
    ld a, l
    jp nc, $f47f

    ld a, a
    add b
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld b, a
    nop
    rst $38
    rst $38
    nop
    xor e
    ld d, h
    ld d, e
    xor h
    xor e
    ld d, h
    rst $28
    ld d, a
    xor h
    and e
    ld e, h
    ld b, c
    nop
    ld hl, sp+$47
    pop af
    rst $38
    ld c, [hl]
    ldh a, [c]
    ld c, l
    push hl
    ld e, d
    ldh [c], a
    ld e, l
    push af
    rst $38
    ld c, d
    di
    ld c, h
    ld sp, hl
    ld b, a
    db $db
    ldh [$ff0b], a
    rst $38
    ret nc

    db $db
    jr nc, jr_031_7937

    sbc b
    jp $eb38


    rst $38
    db $10
    rst $08
    inc [hl]
    sbc e
    ldh [$ffcf], a
    jr nc, jr_031_7860

    rst $38
    ld [hl], b
    db $e3
    inc e
    cp b
    ld b, a
    sub l
    ld l, d
    rst $38
    rst $38
    nop
    add l
    ld a, a
    rst $38
    nop
    ld a, a
    add b
    call nc, Call_000_3fff
    sbc d
    ld a, e
    cp c
    ld a, c
    adc e
    ld l, e
    cp c
    rst $38
    ld a, c
    xor d
    ld l, d
    sbc e
    ld a, e
    ld a, [hl]
    add c
    db $dd
    rst $38
    ld a, $b9
    ld a, d
    sub a
    halt
    cp e
    ld a, d
    sub c
    rst $38
    ld [hl], b
    xor e
    ld l, d
    sub l
    ld [hl], h
    cp $01
    dec hl
    rst $38
    db $fc
    ld e, c
    sbc $9d
    sbc [hl]
    pop de
    sub $9d
    rst $38
    sbc [hl]
    ld d, l
    ld d, [hl]
    reti


    sbc $ff
    nop
    pop bc
    rst $38
    ld a, $c1
    ld a, $ff
    nop
    call z, $cc33
    rst $18
    inc sp
    rst $38
    nop
    ret nz

    ccf
    dec b
    ld bc, $e718
    db $e3
    jr @-$17

    ld d, b
    inc c
    sub b
    inc c
    inc bc
    ld [bc], a
    dec e
    ldh [c], a

jr_031_7937:
    dec e
    rst $38
    ldh [c], a
    rst $38
    nop
    ld bc, $fffe
    nop
    cp l
    ld d, a
    ld a, [hl]
    jp $2442


    nop
    ld a, [hl]
    add b
    inc bc
    ld c, a
    dec hl
    nop
    ld hl, sp-$0f
    rrca
    call nz, $b20f
    ld [de], a
    ld d, b
    or a
    ld l, [hl]
    ld e, $5a
    rst $38
    daa
    rst $00
    cp b
    ld c, d
    ccf
    or e
    rst $08
    ld e, h
    rst $38
    db $e3
    scf
    jr c, jr_031_7991

    db $ed
    and a
    cp c
    sbc [hl]
    rst $38
    ldh [$fff7], a
    add hl, bc
    sub a
    ld l, c
    ld e, h
    ldh [c], a
    dec sp
    rst $38
    rst $00
    rst $28
    rra
    sub l
    ld l, d
    xor d
    ld d, l
    sub l
    cp a
    ld l, d
    ld [$c055], a
    ld a, a
    sub l
    ldh [$ff0b], a
    ld a, [$7aff]
    ld b, a
    cp h
    add a
    ld a, h
    ld b, a
    cp h
    add e
    rst $38

jr_031_7991:
    ld a, b
    dec bc
    ld hl, sp-$2d
    ret nc

    rst $38
    nop
    inc bc
    rst $38
    nop
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
    db $db
    ldh [$ffaf], a
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
    rst $38
    inc c
    rst $20
    inc e
    jp $8f3c


    ld [hl], h
    dec sp
    rst $20
    call nz, $fc03
    ret nz

    rrca
    ld b, b
    nop
    sbc [hl]
    ld a, a
    xor d
    rst $38
    ld a, e
    sub l
    ld [hl], l
    sbc e
    ld a, e
    or l
    ld [hl], l
    xor d
    rst $38
    ld a, a
    sub h
    ld [hl], l
    and [hl]
    ld [hl], a
    or c
    ld [hl], d
    adc c
    rst $38
    ld l, d
    or e
    ld [hl], d
    sbc e
    ld a, d
    and e
    ld [hl], d
    sbc c
    rst $38
    ld a, d
    or a
    halt
    sbc l
    ld a, [hl]
    ld a, c
    cp $55

jr_031_79f5:
    rst $38
    sbc $a9
    xor [hl]
    reti


    sbc $ad
    xor [hl]
    ld d, l
    rst $18
    cp $29
    xor [hl]
    ld h, l
    xor $20
    inc bc
    db $10
    xor b
    rst $38
    inc [hl]
    push af
    ld c, h
    pop de

jr_031_7a0d:
    ld [$0cd4], sp
    db $fc
    rst $38
    inc h
    db $dd
    inc hl
    rst $38
    nop
    ld hl, sp-$1c
    push de
    rst $38
    add hl, sp
    db $eb
    call c, $1c2a
    jp c, $273c

    rst $30
    add hl, hl
    ld c, [hl]
    ld d, c
    and b
    db $10
    inc d
    jp hl


    push af
    dec bc
    rst $38
    rst $30
    rst $38
    nop
    sub e
    ld c, h
    xor l
    ld e, c
    xor l
    rst $38
    ld e, b
    scf
    ret z

    set 6, h
    ld [de], a
    dec c
    ld h, d
    rst $38
    db $dd
    rst $38
    add b
    rst $20
    jr jr_031_7a0d

    jr c, @-$37

    rst $38
    jr c, @+$01

    nop
    jr c, jr_031_79f5

    ld c, a
    ret nc

    rst $28
    rst $38
    db $10
    rst $18
    ld h, b
    cp a
    and b
    ld e, b
    rst $20
    or b
    sbc $00
    stop
    rst $38
    ld b, b
    cp a
    ld h, c
    ld [hl+], a
    reti


    ld h, $fe
    pop de
    ld [hl+], a
    ldh [$ff1f], a
    inc de
    rst $28
    inc c
    db $f4
    call nz, $3bff
    rst $38
    ld bc, $fe01
    dec hl
    cp $57
    rst $30
    cp $30
    rst $08
    jr nz, jr_031_7aa2

    ld a, a
    add b
    nop
    add e
    rst $38
    nop
    add b
    nop
    sub l
    dec d

jr_031_7a88:
    add b
    nop
    ld [hl], b
    db $fd
    adc a
    jr nz, @+$27

    cp $01
    nop
    pop bc
    nop
    ld bc, $004f
    xor c
    xor b
    ld bc, $0142
    ld b, e
    nop
    rst $38
    ldh [rNR32], a
    db $d3

jr_031_7aa2:
    and $19
    ld b, c
    ld bc, $0043
    rst $38
    ret nz

    rla
    ld h, a
    sbc b
    rst $38
    ld a, a
    add b
    rst $28
    dec hl
    rst $38
    jr nc, jr_031_7a88

    cpl
    rst $38
    db $eb
    inc e
    and $5b
    call $d934
    jr z, @+$01

    cp $01
    push hl
    and b
    push af
    db $10
    rra
    ld a, [hl+]
    ld a, a
    reti


    ld d, [hl]
    push bc
    xor b
    dec [hl]
    db $10
    dec d
    nop
    db $10
    rst $38
    xor l
    ld a, a
    sub h
    ld [hl], a
    cp l
    ld a, a
    sub l
    ld [hl], a
    rst $38
    sbc [hl]
    ld a, [hl]
    push de
    ld a, [hl+]
    reti


    ld a, [hl]
    or a
    halt
    rst $30
    sbc c
    ld a, d
    and a
    ld b, b
    nop
    adc e
    ld a, d
    reti


    ld a, [hl-]
    rst $30
    rst $38
    nop
    and l
    nop
    db $10
    or l
    cp $29
    xor $ff
    cp l
    cp $a9
    xor $79
    ld a, [hl]
    xor e
    ld d, h
    db $fd
    sbc e
    jr nz, jr_031_7b21

    sub l
    ld c, $bc
    inc h
    adc d
    halt
    ld a, a
    cp $01
    add c
    ld b, [hl]
    sbc [hl]
    ld e, a
    or b

jr_031_7b13:
    jr nz, @+$26

    rst $38
    cp $01
    xor $f1
    inc l
    inc sp
    rra
    ldh [rIE], a
    ldh [$ff1f], a

jr_031_7b21:
    add d
    ld a, a
    cp b
    ld a, a
    rst $28
    inc e
    rst $38
    ld [hl], $cf
    cpl
    ret nc

    ld l, $df
    xor $1f
    rst $38
    sub [hl]
    ld l, a
    adc a
    ld d, b
    or b
    ld a, a
    jp $ef3c


    add b
    ld a, a
    add b
    ld a, a
    and c
    ld h, $c0
    ccf
    add b
    rst $38
    ld a, a
    adc a

jr_031_7b46:
    ld [hl], b
    ldh [$ff1f], a
    nop
    rst $38
    ld [bc], a
    rst $20
    rst $38
    ld a, l
    db $fd
    pop bc
    ld [hl+], a
    pop hl
    ld [hl+], a
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    ld d, l
    ld [$0b15], a
    cp $b2
    jr nz, jr_031_7b13

    cp $5d
    db $fc
    ei
    ld a, [$ff55]
    ld d, h
    dec bc
    cp $f1
    ldh a, [rNR24]
    ld hl, sp-$0b
    rst $38
    inc c
    jr nc, jr_031_7b46

    jp nz, Jump_000_1efe

jr_031_7b7a:
    rra
    ld [hl], d
    rst $38
    ldh a, [c]
    jr nc, @+$41

    jr jr_031_7b7a

    adc [hl]
    adc a
    add $ff
    add hl, sp
    ld [hl], b
    adc a
    ld h, e
    ld a, a
    inc a

jr_031_7b8c:
    db $fc
    db $10
    rst $38
    rra
    add $fe
    ld [hl], e
    ld [hl], e
    rrca

jr_031_7b95:
    rst $38
    add $ff
    add hl, sp
    rst $38
    nop
    dec a
    jp $beb3


    call nz, Call_000_37bf
    ld c, a
    ld [hl], b
    push hl
    dec e
    ld [hl], c
    ldh [rNR52], a
    rst $38
    rst $38
    nop
    sbc h
    db $e3
    pop hl
    ccf
    rst $38
    ldh a, [rWave_a]
    rst $18
    add $1c
    rst $38
    ldh a, [rIF]
    ld h, b
    dec d
    jr z, jr_031_7b95

    rst $38
    jr z, jr_031_7b8c

    inc [hl]
    db $e4
    dec de
    and e
    ld e, h
    ret c

    rst $38
    daa
    rst $28

jr_031_7bc9:
    jr nc, jr_031_7bc9

    ld bc, $20d5
    dec [hl]
    rst $38
    ld [hl+], a
    ld l, l
    ld e, b
    ld d, l
    cp b
    xor c
    ld [hl], b
    dec e
    rst $38
    add sp, -$09
    ld [de], a
    cp c
    ld b, [hl]
    and d
    ld a, a
    cp h
    rst $38
    ld a, a
    sub h
    ld a, a
    ld b, c
    cp [hl]
    rst $38
    add b
    ld c, c
    rst $38
    xor [hl]
    reti


    cp [hl]
    rst $38
    pop bc
    rst $38
    inc a
    db $db
    db $fd
    inc a
    ldh a, [$ff15]
    rst $38
    ld hl, $0cff
    rst $38
    ld h, e
    rst $38
    rst $38
    sub e

Call_031_7c00:
    di
    ld b, l
    cp $3d
    cp $29
    rst $38
    cp $82
    ld a, l
    rst $38
    ld bc, $7592
    sbc e
    rst $30
    ld a, l
    rst $38
    add e
    ld bc, $ef1e
    pop af
    dec de
    db $ed
    rst $38
    rst $30
    jr jr_031_7c5c

    pop bc
    sbc a
    ld h, d
    sbc c
    ld h, [hl]
    xor $01
    rra
    ret


    push af
    ld [$1f00], sp
    add e
    ld bc, $fb1d
    inc e
    inc hl
    and b

jr_031_7c31:
    ld sp, $ea13
    dec d
    xor $11
    cp $80
    ld [hl+], a
    adc l
    ld l, [hl]
    pop bc
    ld a, [hl]
    add c
    ld a, [hl]
    sbc a
    ld a, a
    ld h, b
    cp c
    ld b, [hl]
    or a
    ld c, h
    cp a
    ld c, b
    ld hl, $f100
    or a
    jr nz, jr_031_7c4f

jr_031_7c4f:
    dec c
    ld b, c
    dec c
    ld b, d
    ei
    ld b, $df
    ld [hl+], a
    rst $30
    rst $28
    ld [de], a
    rst $38
    inc h

jr_031_7c5c:
    nop
    rst $18
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
    rst $38
    nop
    rst $38
    db $f4
    ld a, e
    rst $20
    rra
    sbc b
    ld a, a
    db $ec
    ld [hl], e
    rst $18
    or a
    ld a, a
    adc b
    ld [hl], a
    adc $00
    add hl, sp
    xor l
    rst $18
    rst $38
    ldh [c], a
    db $fd
    ld d, a
    xor a
    ld hl, sp-$01
    inc sp
    rst $08
    ld [hl], a

jr_031_7ca2:
    cp c
    ld a, [hl]
    jp $23b0


    sub a
    ld a, a
    add e
    nop
    jr jr_031_7ca2

    add d
    ld h, b
    jr jr_031_7c31

    ldh [c], a
    ld a, [de]

jr_031_7cb3:
    xor c
    xor b
    pop af
    ldh a, [$ff7f]
    ld e, l
    db $fc
    xor e
    ld a, [$fc5d]
    xor a
    ld [bc], a
    inc de
    cp $f0
    ld b, a
    add b
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    add b
    rst $30
    call nz, $c1bf
    and b
    jr z, jr_031_7cb3

    ldh [$fffd], a
    nop
    rst $38
    dec b
    ld hl, sp+$05
    ld hl, sp-$03
    nop
    ld b, l
    ld hl, sp-$01
    rrca
    ld a, [$e01f]
    add hl, sp
    add $d9
    ld h, $ff
    add hl, de
    and $1f
    ldh [rNR42], a
    rst $18
    jp $ff3f


    nop
    rst $38
    ld c, l
    ld [hl], d
    ld e, a
    ld h, b
    rst $28
    ld [hl], b
    cp a
    ld a, a
    add b
    adc a
    ld [hl], b
    db $fc
    inc bc
    and c
    dec e
    or c
    ld a, a
    ld [hl], d
    cp a
    ld b, b
    and b
    ld b, b
    xor b
    ld c, a
    ld b, l
    nop
    rst $38
    ld a, c
    cp $f5
    ld c, $59
    ld l, [hl]
    sbc c
    xor [hl]
    sbc a
    ld e, l
    ld l, [hl]
    sub l

jr_031_7d1a:
    xor [hl]
    ld e, c
    ld b, b
    nop
    ld b, c
    rrca
    or a
    rst $38
    ld c, b
    or e
    ld c, h
    cp e
    ld c, h
    push af
    ld c, $ba
    or a
    ld b, a
    rst $18
    jr nz, jr_031_7d38

    ld d, c
    inc b
    ei
    jp hl


    ld d, c
    db $fd
    cp e
    inc bc
    ld c, a

jr_031_7d38:
    add b
    jr nc, jr_031_7d1a

    ld [hl-], a
    rst $38
    jr nz, jr_031_7d3f

jr_031_7d3f:
    sbc a
    rst $38
    ld d, d
    ld e, a
    jp nc, $b2bf

    rst $28
    ldh a, [c]
    ei
    ld a, a
    ld b, $8d
    ld a, l
    ldh [c], a
    and d
    jr z, jr_031_7d69

    ld d, b
    inc hl
    ld a, [hl]
    inc b
    ld b, d
    or e
    or e
    inc b
    inc b
    ld b, b
    ld b, b
    ld d, e
    ld d, e
    cp $0f
    ld bc, rJOYP
    ld d, c
    ld a, [hl]
    rlca
    dec b
    ld d, h
    ei

jr_031_7d69:
    ld e, b
    ld hl, sp+$06
    ld b, l
    ld a, [$ff7a]
    nop
    sbc a
    rst $38
    ld a, a
    sub c
    ld l, a
    cp b
    ld e, c
    and d
    ld e, a
    sbc a
    rst $28
    ld h, c
    rst $38
    nop
    ld b, c
    ret nz

    inc bc
    pop de
    ret nc

    pop hl
    rst $38
    sbc b
    or e
    halt
    adc l
    ld a, b
    rst $38
    add [hl]
    ld b, c
    rst $28
    cp [hl]
    ret z

    cp a
    db $e4
    ret nz

    rrca
    jp z, $d0bf

    cp $64
    nop
    rlca
    ld a, [$fa4f]
    rlca
    ld a, [$fa17]
    ld b, b
    nop
    adc a
    add b
    nop
    daa
    ld a, [$5fee]
    ei
    rst $38
    ld e, h
    or h
    jr @-$51

    dec d
    cp e
    rlca
    cp h
    rst $38
    inc bc
    xor a
    inc d
    cp b
    ld b, b
    add sp, $50
    ld hl, sp-$01
    ld b, b
    xor h
    ld d, h
    db $f4
    ld e, e
    and e
    ld e, h
    xor h
    cp a
    ld e, h
    and b
    ld e, a
    rst $38
    nop
    and b
    ldh [rIF], a
    cp a
    rst $18
    ld e, a
    and b
    ld e, a
    cp a
    ld b, b
    inc bc
    inc sp
    ld e, c
    ld l, [hl]
    rst $38
    dec d
    ld l, $d9
    xor $1d
    xor $f9
    ld c, $fe
    inc bc
    inc sp
    xor a
    ld d, b
    reti


    ld h, $eb
    ld d, $7f
    rst $38
    add b
    ld d, h
    cp e
    call nc, $b9bb
    rst $00
    ld a, $5e
    nop
    ld d, e
    inc h
    db $db
    ld l, h
    db $db
    and c
    ld d, d
    inc d
    ret nc

    inc h
    rst $18
    ld e, c
    reti


    rst $38
    nop
    ld a, [bc]
    inc sp
    ld d, b
    rst $38
    jr nc, @+$01

    rst $38
    add a
    rst $38
    adc h
    adc a
    push af
    ld c, $f9
    rst $30
    cp $03
    db $fc
    ld h, b
    ld d, a
    db $dd
    ld a, [hl+]
    db $dd
    dec e
    ei
    db $e3
    ld h, d
    nop
    ld d, h
    xor d
    ld d, l
    pop de
    ld l, $88
    rst $38
    ld [hl], a
    adc d
    ld a, a
    sub c
    ld a, a
    xor d
    ld a, a
    push de
    db $fd
    ld a, l
    ld bc, $4401
    cp e
    nop
    rst $38
    adc c
    rst $38
    rst $38
    ld d, [hl]
    rst $38
    cpl
    ld l, a
    ld a, [$fffa]
    nop
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    ld a, [hl+]
    rst $38
    ld e, a
    rst $38
    db $ed
    or l
    add b
    ld h, h
    db $dd
    db $dd
    ld b, c
    ld d, a
    ld c, l
    cp $ff
    rst $38
    cp $69
    ld l, b
    push de
    call nc, $a8a9
    ld e, l
    rst $38
    ld e, h
    ld a, a
    add b
    rst $38
    ld h, c
    jp hl


    ld e, b
    xor c
    rst $38
    ld e, b
    db $e3
    ld a, [de]
    or $6d
    sub d
    ld l, c
    sub [hl]
    rst $38
    ld l, l
    cp $01
    and c
    and b
    ld sp, hl
    ld [$ff2d], sp
    db $e4
    ld sp, hl
    ld b, $69
    ldh [rNR24], a
    ldh a, [rKEY1]
    ld sp, hl
    ld d, h
    rrca
    db $10
    dec bc
    db $10
    ld [hl], d
    rst $38
    adc h
    ld a, a
    ld a, h
    rst $38
    cp a
    and c
    sbc $b6
    ret


    ld l, e
    sub h
    cp d
    rst $28
    ld b, c
    xor [hl]
    push de
    ld h, a
    ldh [rNR11], a
    rst $20
    ld a, [de]
    ld [hl], a
    rst $38
    ld [$909d], a
    dec e
    ret nc

    xor l
    ld h, b
    adc l
    rst $38
    jp nz, Jump_031_7fbf

    cp a
    ld h, b
    or b
    ld d, b

jr_031_7eb7:
    xor a
    and $20
    db $10
    sbc a
    ld h, b
    ld bc, $d026
    ld l, h
    inc bc
    inc bc
    ld bc, $fb7f
    pop hl
    rlca
    db $fd
    rst $38
    inc bc
    cp a
    add d
    dec c
    rst $38
    ld d, d
    ld [hl], d
    dec sp
    inc b

jr_031_7ed3:
    call Call_031_4e8b
    ld a, [bc]
    rst $38
    or $bb
    ld a, h
    add e
    ld d, h
    dec de
    rra
    ldh [$ff7f], a
    add sp, $18
    ld b, a
    rst $00
    jr nz, @+$41

    add b
    sub b
    ld [hl], c
    rst $38
    rrca
    ldh a, [rWave_4]
    call z, Call_000_07f8
    rla
    jr jr_031_7ed3

    ldh [c], a
    db $e3
    inc b
    db $fc
    ld bc, $7290
    ldh a, [rIF]
    ei
    inc l
    inc sp
    ld bc, $dd2e
    ld bc, $c4a6
    ld h, a
    rst $38
    ld b, l
    ld a, d
    call c, $c13e
    ld a, [hl+]
    call z, $dfbf
    ld a, a
    push de
    ld d, l
    and b
    jr nz, jr_031_7eb7

    dec hl
    ld a, a
    rst $38
    cp l
    ld b, b
    ld hl, $ab00
    xor a
    ld a, d
    ld a, d
    ld [hl], c
    ld [hl], l

jr_031_7f24:
    ei
    sbc $c4
    inc hl
    xor d
    xor [hl]
    ld d, b
    ld d, b
    ld [hl], c
    halt
    ld b, [hl]
    ld b, [hl]
    cp $a3
    halt
    and c
    and b
    ld bc, $0300
    ld [bc], a
    ld bc, $20fa
    ld d, d
    db $fd
    jr nz, jr_031_7f40

jr_031_7f40:
    adc l
    ld [hl], b
    sub [hl]
    ld l, l
    or $ff
    dec c
    push hl
    ld e, h
    and l
    ld e, h
    or e
    ld c, h
    and c
    rst $30
    ld e, [hl]
    sbc a
    ld h, b
    nop
    ld b, [hl]
    or [hl]
    ld c, c
    ld d, [hl]
    xor c
    rst $38
    or b
    ld c, c
    ld d, b
    dec a
    call nz, $f20b
    push af
    rst $20
    inc c
    ld bc, $0ffe
    db $10
    dec bc
    jr nz, jr_031_7f24

    push bc
    and [hl]
    rst $38
    reti


    or a
    call c, $be5d
    or d
    ld [hl], e
    sub c
    db $fd
    sub c
    pop hl
    ld l, l
    rst $08
    jp nz, $828f

    rst $18
    jp nc, $957f

    ld l, d
    push hl
    ld a, [de]
    ld a, l
    ld a, d
    dec b
    ldh [rNR22], a
    rst $38
    or h
    or h
    rst $38
    ret nz

    ldh [$ffa0], a
    rst $18
    and a
    ld a, [$3400]
    ret nz

    ld [hl], c
    ld a, h
    add c
    add b
    db $fd
    inc b
    dec b
    ld a, a
    nop
    push af
    ldh a, [rIF]
    ld a, [$04fd]
    ld hl, $ff58
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_031_7fbf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
