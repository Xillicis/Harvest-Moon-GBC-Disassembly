; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc c
    nop
    db $fd
    ld bc, $0042
    db $fd
    add hl, bc
    ld b, d
    nop
    db $fd
    ld de, $0042
    db $fd
    add hl, de
    ld b, d
    nop
    db $fd
    ld d, l
    ld b, e
    nop
    db $fd
    ld e, l
    ld b, e
    nop
    db $fd
    ld h, l
    ld b, e
    nop
    db $fd
    ld l, l
    ld b, e
    nop
    db $fd
    xor c
    ld b, h
    nop
    db $fd
    xor a
    ld b, h
    nop
    db $fd
    or l
    ld b, h
    nop
    db $fd
    cp e
    ld b, h
    nop
    db $fd
    push af
    ld b, l
    nop
    db $fd
    inc bc
    ld b, [hl]
    nop
    db $fd
    ld de, $0046
    db $fd
    rra
    ld b, [hl]
    nop
    db $fd
    ld e, l
    ld c, c
    nop
    db $fd
    ld l, e
    ld c, c
    nop
    db $fd
    ld a, c
    ld c, c
    nop
    db $fd
    add a
    ld c, c
    ld bc, $e1fd
    ld c, h
    ld bc, $e9fd
    ld c, h
    ld bc, $f1fd
    ld c, h
    ld bc, $f9fd
    ld c, h
    ld bc, $35fd
    ld c, [hl]
    ld bc, $3dfd
    ld c, [hl]
    ld bc, $45fd
    ld c, [hl]
    ld bc, $4dfd
    ld c, [hl]
    ld bc, $81fd
    ld c, a
    ld bc, $89fd
    ld c, a
    ld bc, $91fd
    ld c, a
    ld bc, $99fd
    ld c, a
    ld [bc], a
    db $fd
    call TimerOverflowInterrupt
    db $fd
    ld b, e
    ld d, c
    ld bc, $62fd
    ld d, c
    ld bc, $6afd
    ld d, c
    ld bc, $72fd
    ld d, c
    ld bc, $7afd
    ld d, c
    ld bc, $7efd
    ld d, e
    ld bc, $86fd
    ld d, e
    ld bc, $8efd
    ld d, e
    ld bc, $96fd
    ld d, e
    ld [bc], a
    db $fd
    add [hl]
    ld d, l
    ld [bc], a
    db $fd
    adc [hl]
    ld d, l
    ld [bc], a
    db $fd
    sub [hl]
    ld d, l
    ld [bc], a
    db $fd
    sbc [hl]
    ld d, l
    ld [bc], a
    db $fd
    and d
    ld d, a
    ld [bc], a
    db $fd
    xor d
    ld d, a
    ld [bc], a
    db $fd
    or d
    ld d, a
    ld [bc], a
    db $fd
    cp d
    ld d, a
    ld [bc], a
    db $fd
    xor [hl]
    ld e, c
    ld [bc], a
    db $fd
    cp h
    ld e, c
    ld [bc], a
    db $fd
    jp z, $0259

    db $fd
    ret c

    ld e, c
    inc bc
    db $fd
    ld l, d
    ld e, e
    inc bc
    db $fd
    ld a, b
    ld e, e
    inc bc
    db $fd
    add [hl]
    ld e, e
    inc bc
    db $fd
    sub h
    ld e, e
    inc bc
    db $fd
    ld e, $5d
    inc bc
    db $fd
    ld [hl+], a
    ld e, l
    inc bc
    db $fd
    ld h, $5d
    inc bc
    db $fd
    ld a, [hl+]
    ld e, l
    inc bc
    db $fd
    ld [hl+], a
    ld e, [hl]
    inc bc
    db $fd
    rrca
    ld e, a
    inc bc
    db $fd
    add hl, de
    ld e, a
    inc bc
    db $fd
    inc hl
    ld e, a
    inc bc
    db $fd
    dec l
    ld e, a
    nop
    cp $d7
    ld h, c
    nop
    cp $e1
    ld h, c
    nop
    cp $eb
    ld h, c
    nop
    cp $f5
    ld h, c
    nop
    db $fd
    ld hl, $0042
    db $fd
    inc hl
    ld b, d
    nop
    db $fd
    dec h
    ld b, d
    nop
    db $fd
    daa
    ld b, d
    ld bc, $01fd
    ld c, l
    ld bc, $03fd
    ld c, l
    ld bc, $05fd
    ld c, l
    ld bc, $07fd
    ld c, l
    nop
    db $fd
    pop bc
    ld b, h
    nop
    db $fd
    jp $0044


    db $fd
    push bc
    ld b, h
    nop
    db $fd
    rst $00
    ld b, h
    inc bc
    cp $7b
    ld h, h
    inc bc
    cp $83
    ld h, h
    inc bc
    cp $89
    ld h, h
    inc bc
    cp $8b
    ld h, h
    ld [bc], a
    cp $f3
    ld h, h
    ld [bc], a
    cp $fb
    ld h, h
    ld [bc], a
    cp $03
    ld h, l
    ld [bc], a
    cp $0b
    ld h, l
    inc bc
    cp $0b
    ld h, a
    inc bc
    cp $0d
    ld h, a
    inc bc
    cp $0f
    ld h, a
    inc bc
    cp $11
    ld h, a
    inc bc
    cp $77
    ld h, a
    inc bc
    cp $85
    ld h, a
    inc bc
    cp $93
    ld h, a
    inc bc
    cp $a1
    ld h, a
    inc bc
    cp $7f
    ld l, c
    inc bc
    db $fd
    ld l, $5d
    inc bc
    db $fd
    ld [hl-], a
    ld e, l
    inc bc
    db $fd
    ld [hl], $5d
    inc bc
    db $fd
    ld a, [hl-]
    ld e, l
    nop
    db $fd
    dec l
    ld b, [hl]
    nop
    db $fd
    dec sp
    ld b, [hl]
    nop
    db $fd
    ld c, c
    ld b, [hl]
    nop
    db $fd
    ld d, a
    ld b, [hl]
    nop
    rst $38
    dec h
    ld l, d
    nop
    rst $38
    dec l
    ld l, d
    nop
    rst $38
    dec [hl]
    ld l, d
    nop
    rst $38
    dec a
    ld l, d
    nop
    rst $38
    ld b, l
    ld l, d
    nop
    rst $38
    ld b, a
    ld l, d
    nop
    rst $38
    ld c, c
    ld l, d
    nop
    rst $38
    ld c, e
    ld l, d
    nop
    rst $38
    reti


    ld l, e
    nop
    rst $38
    pop hl
    ld l, e
    nop
    rst $38
    jp hl


    ld l, e
    nop
    rst $38
    pop af
    ld l, e
    nop
    rst $38
    ld sp, hl
    ld l, e
    nop
    rst $38
    ei
    ld l, e
    nop
    rst $38
    db $fd
    ld l, e
    nop
    rst $38
    rst $38
    ld l, e
    nop
    rst $38
    adc l
    ld l, l
    nop
    rst $38
    adc l
    ld l, l
    nop
    rst $38
    adc l
    ld l, l
    nop
    rst $38
    adc l
    ld l, l
    add hl, hl
    ld b, d
    ld b, d
    ld b, d
    add hl, hl
    ld b, d
    ld e, e
    ld b, d
    ld [hl], h
    ld b, d
    adc l
    ld b, d
    ld [hl], h
    ld b, d
    and [hl]
    ld b, d
    cp a
    ld b, d
    ret c

    ld b, d
    cp a
    ld b, d
    pop af
    ld b, d
    ld a, [bc]
    ld b, e
    inc hl
    ld b, e
    ld a, [bc]
    ld b, e
    inc a
    ld b, e
    add hl, hl
    ld b, d
    ld [hl], h
    ld b, d
    cp a
    ld b, d
    ld a, [bc]
    ld b, e
    ld hl, sp+$00
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ldh a, [rP1]
    inc bc
    ld de, $f8f0
    ld [bc], a
    ld de, $00e8
    ld bc, $e811
    ld hl, sp+$00
    ld de, $ef80
    ld hl, sp+$02
    ld de, $00f7
    add hl, bc
    db $10
    rst $30
    ld hl, sp+$08
    db $10
    rst $28
    nop
    rlca
    ld de, $00e7
    ld bc, $e711
    ld hl, sp+$00
    ld de, $f780
    nop
    dec c
    db $10
    rst $30
    ld hl, sp+$0c
    db $10
    rst $28
    nop
    dec bc
    ld de, $f8ef
    ld a, [bc]
    ld de, $00e7
    ld bc, $e711
    ld hl, sp+$00
    ld de, $f880
    nop
    inc de
    db $10
    ld hl, sp-$08
    ld [de], a
    db $10
    ldh a, [rP1]
    ld de, $f011
    ld hl, sp+$10
    ld de, $00e8
    rrca
    ld de, $f8e8
    ld c, $11
    add b
    rst $28
    ld hl, sp+$10
    ld de, $00f7
    rla
    db $10
    rst $30
    ld hl, sp+$16
    db $10
    rst $28
    nop
    dec d
    ld de, $00e7
    rrca
    ld de, $f8e7
    ld c, $11
    add b
    rst $30
    nop
    dec de
    db $10
    rst $30
    ld hl, sp+$1a
    db $10
    rst $28
    nop
    add hl, de
    ld de, $f8ef
    jr @+$13

    rst $20
    nop

jr_00c_42b8:
    rrca
    ld de, $f8e7

jr_00c_42bc:
    ld c, $11
    add b
    ld hl, sp-$08
    inc de
    jr nc, jr_00c_42bc

    nop
    ld [de], a
    jr nc, jr_00c_42b8

    ld hl, sp+$11
    ld sp, $00f0
    db $10
    ld sp, $f8e8
    rrca
    ld sp, $00e8
    ld c, $31
    add b

jr_00c_42d8:
    rst $28
    nop
    db $10
    ld sp, $f8f7
    rla
    jr nc, jr_00c_42d8

    nop
    ld d, $30
    rst $28
    ld hl, sp+$15
    ld sp, $f8e7
    rrca
    ld sp, $00e7
    ld c, $31
    add b
    rst $30
    ld hl, sp+$1b
    jr nc, @-$07

    nop
    ld a, [de]
    jr nc, @-$0f

    ld hl, sp+$19
    ld sp, $00ef
    jr jr_00c_4332

    rst $20
    ld hl, sp+$0f
    ld sp, $00e7
    ld c, $31
    add b
    ld hl, sp+$01
    ld hl, $f810
    ld sp, hl
    jr nz, @+$12

    ldh a, [rSB]
    rra
    ld de, $f9f0
    ld e, $11
    add sp, $01
    dec e
    ld de, $f9e8
    inc e
    ld de, $f780
    ld bc, $1025
    rst $30
    ld sp, hl
    inc h
    db $10
    rst $28
    ld bc, $1123
    rst $28
    ld sp, hl
    ld [hl+], a

jr_00c_4332:
    ld de, $01e7
    dec e
    ld de, $f9e7
    inc e
    ld de, $f780
    ld bc, $1029
    rst $30
    ld sp, hl
    jr z, @+$12

    rst $28
    ld bc, $1127
    rst $28
    ld sp, hl
    ld h, $11
    rst $20
    ld bc, $111d
    rst $20
    ld sp, hl
    inc e
    ld de, $7580
    ld b, e
    adc [hl]
    ld b, e
    ld [hl], l
    ld b, e
    and a
    ld b, e
    ret nz

    ld b, e
    reti


    ld b, e
    ret nz

    ld b, e
    ldh a, [c]
    ld b, e
    dec bc
    ld b, h
    inc h
    ld b, h
    dec bc
    ld b, h
    dec a
    ld b, h
    ld d, [hl]
    ld b, h
    ld l, a
    ld b, h
    ld d, [hl]
    ld b, h
    adc h
    ld b, h
    ld hl, sp+$00
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ldh a, [rP1]
    dec l
    ld de, $f8f0
    inc l
    ld de, $00e8
    dec hl
    ld de, $f8e8
    ld a, [hl+]
    ld de, $f680
    nop
    ld sp, $f610
    ld hl, sp+$30
    db $10
    xor $00
    cpl
    ld de, $f8ee
    ld l, $11
    and $00
    dec hl
    ld de, $f8e6
    ld a, [hl+]
    ld de, $ee80
    ld hl, sp+$2c
    ld de, $00f6
    dec [hl]
    db $10
    or $f8
    inc [hl]
    db $10
    xor $00
    inc sp
    ld de, $00e6
    dec hl
    ld de, $f8e6
    ld a, [hl+]
    ld de, $f880
    nop
    inc de
    db $10
    ld hl, sp-$08
    ld [de], a
    db $10
    ldh a, [rP1]
    add hl, sp
    ld de, $f8f0
    jr c, jr_00c_43e1

    add sp, $00
    scf
    ld de, $f8e8
    ld [hl], $11
    add b
    or $00
    ccf
    db $10
    or $f8
    ld a, $10

jr_00c_43e1:
    xor $00
    dec a
    ld de, $f8ee
    inc a
    ld de, $00e6
    scf
    ld de, $f8e6
    ld [hl], $11
    add b
    or $00
    ld b, e
    db $10
    or $f8
    ld b, d
    db $10
    xor $00
    ld b, c
    ld de, $f8ee
    ld b, b
    ld de, $00e6

jr_00c_4404:
    scf
    ld de, $f8e6

jr_00c_4408:
    ld [hl], $11
    add b
    ld hl, sp-$08
    inc de
    jr nc, jr_00c_4408

    nop
    ld [de], a
    jr nc, jr_00c_4404

    ld hl, sp+$39
    ld sp, $00f0
    jr c, jr_00c_444c

    add sp, -$08
    scf
    ld sp, $00e8
    ld [hl], $31
    add b
    or $f8
    ccf
    jr nc, @-$08

    nop
    ld a, $30
    xor $f8
    dec a
    ld sp, $00ee
    inc a
    ld sp, $f8e6
    scf
    ld sp, $00e6
    ld [hl], $31
    add b
    or $f8
    ld b, e
    jr nc, @-$08

    nop
    ld b, d
    jr nc, @-$10

    ld hl, sp+$41
    ld sp, $00ee
    ld b, b

jr_00c_444c:
    ld sp, $f8e6
    scf
    ld sp, $00e6
    ld [hl], $31
    add b
    ld hl, sp+$01
    ld hl, $f810
    ld sp, hl
    jr nz, @+$12

    ldh a, [rSB]
    rra
    ld de, $f9f0
    ld e, $11
    add sp, $01
    dec e
    ld de, $f9e8
    inc e
    ld de, $fe80
    cp $49
    db $10
    and $01
    dec e
    ld de, $f9e6
    inc e
    ld de, $01f6
    ld c, l
    db $10
    or $f9
    ld c, h
    db $10
    xor $01
    ld c, e
    ld de, $f9ee
    ld c, d
    ld de, $fe80
    ld sp, hl
    ld c, c
    db $10
    and $01
    dec e
    ld de, $f9e6
    inc e
    ld de, $01f6
    ld d, c
    db $10
    or $f9
    ld d, b
    db $10
    xor $01
    ld c, a
    ld de, $f9ee
    ld c, [hl]
    ld de, $c980
    ld b, h
    ldh [c], a
    ld b, h
    ei
    ld b, h
    inc d
    ld b, l
    dec l
    ld b, l
    ld b, [hl]
    ld b, l
    ld e, a
    ld b, l
    ld a, b
    ld b, l
    sub c
    ld b, l
    xor d
    ld b, l
    jp $dc45


    ld b, l
    ldh [c], a
    ld b, h
    dec l
    ld b, l
    ld a, b
    ld b, l
    jp $fa45


    nop
    ld d, a
    db $10
    ld a, [$56f8]
    db $10
    ldh a, [c]
    nop
    ld d, l
    ld de, $f8f2
    ld d, h
    ld de, $00ea
    ld d, e
    ld de, $f8ea
    ld d, d
    ld de, $f080
    nop
    ld e, c
    ld de, $f8f0
    ld e, b
    ld de, $00f8
    ld e, e
    db $10
    ld hl, sp-$08
    ld e, d
    db $10
    add sp, $00
    ld bc, $e811
    ld hl, sp+$00
    ld de, $e880
    nop
    add [hl]
    ld de, $f8e8
    ld c, b
    ld de, $00f8
    ld e, a
    db $10
    ld hl, sp-$08
    ld e, [hl]
    db $10
    ldh a, [rP1]
    ld e, l
    ld de, $f8f0
    ld e, h
    ld de, $f880
    rst $38
    ld [hl], l
    db $10
    ld hl, sp-$09
    ld [hl], h
    db $10
    ldh a, [rIE]
    ld [hl], e
    ld de, $f7f0
    ld [hl], d
    ld de, $ffe8
    ld [hl], c
    ld de, $f7e8
    ld [hl], b
    ld de, $f880
    nop
    ld a, e
    db $10
    ld hl, sp-$08
    ld a, d
    db $10
    ldh a, [rP1]
    ld a, c
    ld de, $f8f0
    ld a, b
    ld de, $00e8
    ld [hl], a
    ld de, $f8e8
    halt
    ld de, $f880
    nop
    add c
    db $10
    ld hl, sp-$08
    add b
    db $10
    ldh a, [rP1]
    ld a, a
    ld de, $f8f0
    ld a, [hl]
    ld de, $00e8
    ld a, l
    ld de, $f8e8

jr_00c_455c:
    ld a, h
    ld de, $f880
    ld sp, hl
    ld [hl], l
    jr nc, jr_00c_455c

    ld bc, $3074
    ldh a, [$fff9]
    ld [hl], e
    ld sp, $01f0
    ld [hl], d
    ld sp, $f9e8

jr_00c_4571:
    ld [hl], c
    ld sp, $01e8

jr_00c_4575:
    ld [hl], b
    ld sp, $f880
    ld hl, sp+$7b
    jr nc, jr_00c_4575

    nop
    ld a, d
    jr nc, jr_00c_4571

    ld hl, sp+$79
    ld sp, $00f0
    ld a, b
    ld sp, $f8e8

jr_00c_458a:
    ld [hl], a
    ld sp, $00e8

jr_00c_458e:
    halt
    ld sp, $f880
    ld hl, sp-$7f
    jr nc, jr_00c_458e

    nop
    add b
    jr nc, jr_00c_458a

    ld hl, sp+$7f
    ld sp, $00f0
    ld a, [hl]
    ld sp, $f8e8
    ld a, l
    ld sp, $00e8
    ld a, h
    ld sp, $f880
    nop
    ld h, l
    db $10
    ld hl, sp-$08
    ld h, h
    db $10
    ldh a, [rP1]
    ld h, e
    ld de, $f8f0
    ld h, d
    ld de, $00e8
    ld h, c
    ld de, $f8e8
    ld h, b
    ld de, $e880
    ld bc, $111d
    add sp, -$07
    inc e
    ld de, $00f8
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    ldh a, [rP1]
    ld h, a
    ld de, $f8f0
    ld h, [hl]
    ld de, $f880
    nop
    ld l, a
    db $10
    ld hl, sp-$08
    ld l, [hl]
    db $10
    ldh a, [rP1]
    ld l, l
    ld de, $f8f0
    ld l, h
    ld de, $00e8
    ld l, e
    ld de, $f8e8
    ld l, d
    ld de, $6580
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    sbc e
    ld b, [hl]
    cp b
    ld b, [hl]
    push de
    ld b, [hl]
    xor $46
    rlca
    ld b, a
    jr nz, jr_00c_464c

    add hl, sp
    ld b, a
    ld e, d
    ld b, a
    ld a, e
    ld b, a
    sbc h
    ld b, a
    or l
    ld b, a
    adc $47
    rst $20
    ld b, a
    nop
    ld c, b
    ld hl, $4248
    ld c, b
    ld h, e
    ld c, b
    ld a, h
    ld c, b
    sub l
    ld c, b
    xor [hl]
    ld c, b
    rst $00
    ld c, b
    ldh [rOBP0], a
    ld sp, hl
    ld c, b
    ld [de], a
    ld c, c
    dec hl
    ld c, c
    ld b, h
    ld c, c
    ld h, l
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    sbc e
    ld b, [hl]
    cp b
    ld b, [hl]
    push de
    ld b, [hl]
    xor $46
    rlca
    ld b, a
    jr nz, jr_00c_4684

    add hl, sp
    ld b, a
    ld e, d
    ld b, a
    ld a, e
    ld b, a
    sbc h
    ld b, a
    or l
    ld b, a
    adc $47
    rst $20
    ld b, a
    nop

jr_00c_464c:
    ld c, b
    ld hl, $4248
    ld c, b
    ld h, e
    ld c, b
    ld a, h
    ld c, b
    sub l
    ld c, b
    xor [hl]
    ld c, b
    rst $00
    ld c, b
    ldh [rOBP0], a
    ld sp, hl
    ld c, b
    ld [de], a
    ld c, c
    dec hl
    ld c, c
    ld b, h
    ld c, c
    ld hl, sp+$00
    add l
    db $10
    ld hl, sp-$08
    add h
    db $10
    ldh a, [rP1]
    add e
    ld de, $f8f0
    add d
    ld de, $00e8
    ld d, e
    ld de, $f8e8
    ld d, d
    ld de, $e080
    cp $87
    db $10
    ld hl, sp+$00

jr_00c_4684:
    adc l
    db $10
    ld hl, sp-$08
    adc h
    db $10
    ldh a, [rP1]
    adc e
    ld de, $f8f0
    adc d
    ld de, $00e8
    adc c
    ld de, $f8e8
    adc b
    ld de, $d880
    cp $87
    db $10
    ldh a, [rP1]
    adc l
    db $10
    ldh a, [$fff8]
    adc h
    db $10
    add sp, $00
    adc e
    ld de, $f8e8
    adc d
    ld de, $00e0
    adc c
    ld de, $f8e0
    adc b
    ld de, $d080
    cp $87
    db $10
    add sp, $00
    adc l
    db $10
    add sp, -$08
    adc h
    db $10
    ldh [rP1], a
    adc e
    ld de, $f8e0
    adc d
    ld de, $00d8
    adc c
    ld de, $f8d8
    adc b
    ld de, $ec80
    nop
    sub e
    db $10
    db $ec
    ld hl, sp-$6e
    db $10
    db $e4
    nop
    sub c
    ld de, $f8e4
    sub b
    ld de, $00dc
    adc a
    ld de, $f8dc
    adc [hl]
    ld de, $f480
    nop
    sub e
    db $10
    db $f4
    ld hl, sp-$6e
    db $10
    db $ec
    nop
    sub a
    ld de, $f8ec
    sub [hl]
    ld de, $00e4
    sub l
    ld de, $f8e4
    sub h
    ld de, $f880
    nop
    sub e
    db $10
    ld hl, sp-$08
    sub d
    db $10
    ldh a, [rP1]
    sub c
    ld de, $f8f0
    sub b
    ld de, $00e8
    adc a
    ld de, $f8e8
    adc [hl]
    ld de, $f980
    nop
    sbc l
    db $10
    ld sp, hl
    ld hl, sp-$64
    db $10
    pop af
    nop
    sbc e
    ld de, $f8f1
    sbc d
    ld de, $00e9
    sbc c
    ld de, $f8e9
    sbc b
    ld de, $f880
    nop
    and l
    db $10
    ld hl, sp-$08
    and h
    db $10
    ldh a, [rP1]
    and e
    ld de, $f8f0
    and d
    ld de, $00e8
    and c
    ld de, $f8e8
    and b
    ld de, $00e0
    sbc a
    ld de, $f8e0
    sbc [hl]
    ld de, $e880
    nop
    and a
    ld de, $f8e8
    and [hl]
    ld de, $00f0
    and l
    db $10
    ldh a, [$fff8]
    and h
    db $10
    ldh [rP1], a
    and c
    ld de, $f8e0
    and b
    ld de, $00d8
    sbc a
    ld de, $f8d8
    sbc [hl]
    ld de, $e880
    nop
    and l
    db $10
    add sp, -$08
    and h
    db $10
    ldh [rP1], a
    xor c
    ld de, $f8e0
    xor b
    ld de, $00d8
    and c
    ld de, $f8d8
    and b
    ld de, $00d0
    sbc a
    ld de, $f8d0
    sbc [hl]
    ld de, $eb80
    nop
    xor a
    db $10
    db $eb
    ld hl, sp-$52
    db $10
    db $e3
    nop
    xor l
    ld de, $f8e3
    xor h
    ld de, $00db
    xor e
    ld de, $f8db
    xor d
    ld de, $f380
    nop
    xor a
    db $10
    di
    ld hl, sp-$52
    db $10
    db $eb
    nop
    or c
    ld de, $f8eb
    or b
    ld de, $00e3
    xor e
    ld de, $f8e3
    xor d
    ld de, $f780
    nop
    xor a
    db $10
    rst $30
    ld hl, sp-$52
    db $10
    rst $28
    nop
    or c
    ld de, $f8ef
    or b
    ld de, $00e7
    xor e

jr_00c_47e1:
    ld de, $f8e7
    xor d

jr_00c_47e5:
    ld de, $f980
    ld hl, sp-$63
    jr nc, jr_00c_47e5

    nop
    sbc h
    jr nc, jr_00c_47e1

    ld hl, sp-$65
    ld sp, $00f1
    sbc d
    ld sp, $f8e9

jr_00c_47f9:
    sbc c
    ld sp, $00e9

jr_00c_47fd:
    sbc b
    ld sp, $f880
    ld hl, sp-$5b
    jr nc, jr_00c_47fd

    nop
    and h
    jr nc, jr_00c_47f9

    ld hl, sp-$5d
    ld sp, $00f0
    and d
    ld sp, $f8e8
    and c
    ld sp, $00e8
    and b
    ld sp, $f8e0

jr_00c_481a:
    sbc a
    ld sp, $00e0
    sbc [hl]
    ld sp, $d880
    ld hl, sp-$61
    ld sp, $00d8
    sbc [hl]
    ld sp, $f8e8

jr_00c_482b:
    and a
    ld sp, $00e8

jr_00c_482f:
    and [hl]
    ld sp, $f8f0
    and l
    jr nc, @-$0e

    nop
    and h
    jr nc, jr_00c_481a

    ld hl, sp-$5f
    ld sp, $00e0
    and b
    ld sp, $e880
    ld hl, sp-$5b
    jr nc, jr_00c_482f

    nop
    and h
    jr nc, jr_00c_482b

    ld hl, sp-$57
    ld sp, $00e0
    xor b
    ld sp, $f8d8
    and c
    ld sp, $00d8
    and b
    ld sp, $f8d0
    sbc a
    ld sp, $00d0
    sbc [hl]
    ld sp, $eb80
    ld hl, sp-$51
    jr nc, @-$13

    nop
    xor [hl]
    jr nc, @-$1b

    ld hl, sp-$53
    ld sp, $00e3
    xor h
    ld sp, $f8db
    xor e
    ld sp, $00db
    xor d
    ld sp, $f380
    ld hl, sp-$51
    jr nc, @-$0b

    nop
    xor [hl]
    jr nc, @-$13

    ld hl, sp-$4f
    ld sp, $00eb
    or b
    ld sp, $f8e3
    xor e
    ld sp, $00e3
    xor d
    ld sp, $f780
    ld hl, sp-$51
    jr nc, @-$07

    nop
    xor [hl]
    jr nc, @-$0f

    ld hl, sp-$4f
    ld sp, $00ef
    or b
    ld sp, $f8e7
    xor e
    ld sp, $00e7
    xor d
    ld sp, $f980
    ld bc, $10b7
    ld sp, hl
    ld sp, hl
    or [hl]
    db $10
    pop af
    ld bc, $11b5
    pop af
    ld sp, hl
    or h
    ld de, $01e9
    or e
    ld de, $f9e9
    or d
    ld de, $f880
    ld bc, $10bd
    ld hl, sp-$07
    cp h
    db $10
    ldh a, [rSB]
    cp e
    ld de, $f9f0
    cp d
    ld de, $01e8
    cp c
    ld de, $f9e8
    cp b
    ld de, $f480
    ld bc, $10bd
    db $f4
    ld sp, hl
    cp h
    db $10
    db $ec
    ld bc, $11bf
    db $ec
    ld sp, hl
    cp [hl]
    ld de, $01e4
    cp c
    ld de, $f9e4
    cp b
    ld de, $e880
    ld bc, $10bd
    add sp, -$07
    cp h
    db $10
    ldh [rSB], a
    pop bc
    ld de, $f9e0
    ret nz

    ld de, $01d8
    cp c
    ld de, $f9d8
    cp b
    ld de, $e080
    ld bc, $11b9
    ldh [$fff9], a
    cp b
    ld de, $01f0
    push bc
    db $10
    ldh a, [$fff9]
    call nz, $e810
    ld bc, $11c3
    add sp, -$07
    jp nz, $8011

    db $e4
    ld bc, $11b9
    db $e4
    ld sp, hl
    cp b
    ld de, $01f4
    push bc
    db $10
    db $f4
    ld sp, hl
    call nz, $ec10
    ld bc, $11c7
    db $ec
    ld sp, hl
    add $11
    add b
    add sp, $01
    cp c
    ld de, $f9e8
    cp b
    ld de, $01f0
    rst $00
    ld de, $f9f0
    add $11
    ld hl, sp+$01
    push bc
    db $10
    ld hl, sp-$07
    call nz, $8010
    sub l
    ld c, c
    xor [hl]
    ld c, c
    rst $08
    ld c, c
    ldh a, [rOBP1]
    ld de, $324a
    ld c, d
    ld d, e
    ld c, d
    ld [hl], h
    ld c, d
    adc l
    ld c, d
    xor [hl]
    ld c, d
    rst $08
    ld c, d
    ldh a, [rWY]
    ld de, $324b
    ld c, e
    ld d, e
    ld c, e
    ld l, h
    ld c, e
    adc l
    ld c, e
    xor [hl]
    ld c, e
    rst $08
    ld c, e
    ldh a, [rWX]
    ld de, $324c
    ld c, h
    ld c, e
    ld c, h
    ld h, h
    ld c, h
    ld a, l
    ld c, h
    sub [hl]
    ld c, h
    xor a
    ld c, h
    ret z

    ld c, h
    add sp, $00
    dec sp
    ld de, $f8e8
    ld a, [hl-]
    ld de, $00f8
    rl b
    ld hl, sp-$08
    jp z, $f010

    nop
    ret


    ld de, $f8f0
    ret z

    ld de, $e780
    nop
    ld b, l
    ld de, $f8e7
    ld b, h
    ld de, $00ff
    ld [hl-], a
    db $10
    rst $38
    ld sp, hl
    ld [hl-], a
    db $10
    rst $30
    nop
    rst $08
    db $10
    rst $30
    ld hl, sp-$32
    db $10
    rst $28
    nop
    call $ef11
    ld hl, sp-$34
    ld de, $df80
    nop
    ld b, l
    ld de, $f8df
    ld b, h
    ld de, $00f7
    ld [hl-], a
    db $10
    rst $30
    ld sp, hl
    ld [hl-], a
    db $10
    rst $28
    nop
    rst $08
    db $10
    rst $28
    ld hl, sp-$32
    db $10
    rst $20
    nop
    call $e711
    ld hl, sp-$34
    ld de, $d780
    nop
    ld b, l
    ld de, $f8d7
    ld b, h
    ld de, $00ef
    ld [hl-], a
    db $10
    rst $28
    ld sp, hl
    ld [hl-], a
    db $10
    rst $20
    nop
    rst $08
    db $10
    rst $20
    ld hl, sp-$32
    db $10
    rst $18
    nop
    call $df11
    ld hl, sp-$34
    ld de, $db80
    nop
    ld b, l
    ld de, $f8db
    ld b, h
    ld de, $f9f3
    ld [hl-], a
    db $10
    di
    nop
    ld [hl-], a
    db $10
    db $eb
    nop
    rst $08
    db $10
    db $eb
    ld hl, sp-$32
    db $10
    db $e3
    nop
    call $e311
    ld hl, sp-$34
    ld de, $e380
    nop
    ld b, l
    ld de, $f8e3
    ld b, h
    ld de, $f9fb
    ld [hl-], a
    db $10
    ei
    nop
    ld [hl-], a
    db $10
    di
    nop
    rst $08
    db $10
    di
    ld hl, sp-$32
    db $10
    db $eb
    nop
    call $eb11
    ld hl, sp-$34
    ld de, $ff80
    nop
    ld [hl-], a
    db $10
    rst $38
    ld sp, hl
    ld [hl-], a
    db $10
    rst $20
    nop
    ld b, l
    ld de, $f8e7
    ld b, h
    ld de, $00f7
    rst $08
    db $10
    rst $30
    ld hl, sp-$32
    db $10
    rst $28
    nop
    call $ef11
    ld hl, sp-$34
    ld de, $e980
    nop
    ld b, a
    ld de, $f8e9
    ld b, [hl]
    ld de, $00f9
    db $d3
    db $10
    ld sp, hl
    ld hl, sp-$2e
    db $10
    pop af
    nop
    pop de
    ld de, $f8f1
    ret nc

    ld de, $e080
    nop
    inc d
    ld de, $f8e0
    ld b, $11
    ld hl, sp-$08
    and h
    db $10
    ldh a, [$fff8]
    and d
    ld de, $00f8
    reti


    db $10
    ldh a, [rP1]
    rst $10
    ld de, $00e8
    push de
    ld de, $f8e8
    call nc, $8011
    ret c

    nop
    inc d
    ld de, $f8d8
    ld b, $11
    ldh a, [$fff8]
    and h
    db $10
    add sp, -$08
    and d
    ld de, $00f0
    reti


    db $10
    add sp, $00
    rst $10
    ld de, $00e0
    push de
    ld de, $f8e0
    call nc, $8011
    ret nc

    nop
    inc d
    ld de, $f8d0
    ld b, $11
    add sp, -$08
    and h
    db $10
    ldh [$fff8], a
    and d
    ld de, $00e8
    reti


    db $10
    ldh [rP1], a
    rst $10
    ld de, $00d8
    push de
    ld de, $f8d8
    call nc, $8011
    call nc, $1400
    ld de, $f8d4
    ld b, $11
    db $ec
    ld hl, sp-$5c
    db $10
    db $e4
    ld hl, sp-$5e
    ld de, $00ec
    reti


    db $10
    db $e4
    nop
    rst $10
    ld de, $00dc
    push de
    ld de, $f8dc
    call nc, $8011
    call c, $1400
    ld de, $f8dc
    ld b, $11
    db $f4
    ld hl, sp-$5c
    db $10
    db $ec
    ld hl, sp-$5e
    ld de, $00f4
    reti


    db $10
    db $ec
    nop
    rst $10
    ld de, $00e4
    push de
    ld de, $f8e4
    call nc, $8011
    ldh [rP1], a
    inc d
    ld de, $f8e0
    ld b, $11
    ld hl, sp-$08
    and h
    db $10
    ldh a, [$fff8]
    and d
    ld de, $00f8
    reti


    db $10
    ldh a, [rP1]
    rst $10
    ld de, $00e8
    push de
    ld de, $f8e8
    call nc, $8011
    jp hl


    ld hl, sp+$47
    ld sp, $00e9

jr_00c_4b59:
    ld b, [hl]
    ld sp, $f8f9
    db $d3
    jr nc, jr_00c_4b59

    nop
    jp nc, $f130

    ld hl, sp-$2f
    ld sp, $00f1

jr_00c_4b69:
    ret nc

    ld sp, $e080
    ld hl, sp+$14
    ld sp, $00e0
    ld b, $31
    ld hl, sp+$00
    and h
    jr nc, jr_00c_4b69

    nop
    and d
    ld sp, $f8f8
    reti


    jr nc, @-$0e

    ld hl, sp-$29
    ld sp, $f8e8
    push de
    ld sp, $00e8

jr_00c_4b8a:
    call nc, $8031
    ret c

    ld hl, sp+$14
    ld sp, $00d8
    ld b, $31
    ldh a, [rP1]
    and h
    jr nc, @-$16

    nop

jr_00c_4b9b:
    and d
    ld sp, $f8f0
    reti


    jr nc, jr_00c_4b8a

    ld hl, sp-$29
    ld sp, $f8e0
    push de
    ld sp, $00e0
    call nc, $8031
    ret nc

    ld hl, sp+$14
    ld sp, $00d0
    ld b, $31
    add sp, $00
    and h
    jr nc, jr_00c_4b9b

    nop
    and d
    ld sp, $f8e8

jr_00c_4bc0:
    reti


    jr nc, @-$1e

    ld hl, sp-$29
    ld sp, $f8d8

jr_00c_4bc8:
    push de
    ld sp, $00d8
    call nc, $8031
    call nc, Call_000_14f8
    ld sp, $00d4
    ld b, $31
    db $ec
    nop
    and h
    jr nc, jr_00c_4bc0

    nop
    and d
    ld sp, $f8ec
    reti


    jr nc, jr_00c_4bc8

    ld hl, sp-$29
    ld sp, $f8dc

jr_00c_4be9:
    push de
    ld sp, $00dc
    call nc, $8031
    call c, Call_000_14f8
    ld sp, $00dc
    ld b, $31
    db $f4
    nop
    and h
    jr nc, jr_00c_4be9

    nop
    and d
    ld sp, $f8f4
    reti


    jr nc, @-$12

    ld hl, sp-$29
    ld sp, $f8e4
    push de
    ld sp, $00e4

jr_00c_4c0e:
    call nc, $8031
    ldh [$fff8], a
    inc d
    ld sp, $00e0
    ld b, $31
    ld hl, sp+$00
    and h
    jr nc, jr_00c_4c0e

    nop
    and d
    ld sp, $f8f8
    reti


    jr nc, @-$0e

    ld hl, sp-$29
    ld sp, $f8e8
    push de
    ld sp, $00e8
    call nc, $8031
    ld [$e100], a
    ld de, $f8ea
    ldh [rNR11], a
    ld a, [$dd00]
    db $10
    ld a, [$dcf8]
    db $10
    ldh a, [c]
    nop
    db $db
    ld de, $f8f2
    jp c, $8011

    add sp, $00
    pop hl
    ld de, $f8e8
    ldh [rNR11], a
    ld hl, sp+$00
    rst $18
    db $10
    ld hl, sp-$08
    sbc $10
    ldh a, [rP1]
    db $db
    ld de, $f8f0
    jp c, $8011

    ldh [rP1], a
    pop hl
    ld de, $f8e0
    ldh [rNR11], a
    ldh a, [rP1]
    rst $18
    db $10
    ldh a, [$fff8]
    sbc $10
    add sp, $00
    db $db
    ld de, $f8e8
    jp c, $8011

    ret c

    nop
    pop hl
    ld de, $f8d8
    ldh [rNR11], a
    add sp, $00
    rst $18
    db $10
    add sp, -$08
    sbc $10
    ldh [rP1], a
    db $db
    ld de, $f8e0
    jp c, $8011

    call c, $e100
    ld de, $f8dc
    ldh [rNR11], a
    db $ec
    nop
    rst $18
    db $10
    db $ec
    ld hl, sp-$22
    db $10
    db $e4
    nop
    db $db
    ld de, $f8e4
    jp c, $8011

    db $e4
    nop
    pop hl
    ld de, $f8e4
    ldh [rNR11], a
    db $f4
    nop
    rst $18
    db $10
    db $f4
    ld hl, sp-$22
    db $10
    db $ec
    nop
    db $db
    ld de, $f8ec
    jp c, $8011

    add sp, $00
    pop hl
    ld de, $f8e8
    ldh [rNR11], a
    ld hl, sp+$00
    rst $18
    db $10
    ld hl, sp-$08
    sbc $10
    ldh a, [rP1]
    db $db
    ld de, $f8f0
    jp c, $8011

    add hl, bc
    ld c, l
    ld [hl+], a
    ld c, l
    add hl, bc
    ld c, l
    dec sp
    ld c, l
    ld d, h
    ld c, l
    ld l, l
    ld c, l
    ld d, h
    ld c, l
    add [hl]
    ld c, l
    sbc a
    ld c, l
    cp b
    ld c, l
    sbc a
    ld c, l
    pop de
    ld c, l
    ld [$034d], a
    ld c, [hl]
    ld [$1c4d], a
    ld c, [hl]
    add hl, bc
    ld c, l
    ld d, h
    ld c, l
    sbc a
    ld c, l
    ld [$f84d], a
    nop
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ldh a, [rP1]
    inc bc
    ld de, $f8f0
    ld [bc], a
    ld de, $00e8
    ld bc, $e811
    ld hl, sp+$00
    ld de, $f780
    nop
    rlca
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $28
    nop
    inc bc
    ld de, $f8ef
    ld [bc], a
    ld de, $00e7
    ld bc, $e711
    ld hl, sp+$00
    ld de, $e780
    nop
    ld bc, $e711
    ld hl, sp+$00
    ld de, $00ef
    inc bc
    ld de, $f8ef
    ld [bc], a
    ld de, $00f7
    add hl, bc
    db $10
    rst $30
    ld hl, sp+$08
    db $10
    add b
    ld hl, sp+$00
    rrca
    db $10
    ld hl, sp-$08
    ld c, $10
    ldh a, [rP1]
    dec c
    ld de, $f8f0
    inc c
    ld de, $00e8
    dec bc
    ld de, $f8e8
    ld a, [bc]
    ld de, $f780
    nop
    ld de, $f710
    ld hl, sp+$10
    db $10
    rst $28
    nop
    dec c
    ld de, $f8ef
    inc c
    ld de, $00e7
    dec bc
    ld de, $f8e7
    ld a, [bc]
    ld de, $f780
    nop
    inc de
    db $10
    rst $30
    ld hl, sp+$12
    db $10
    rst $20
    nop
    dec bc
    ld de, $f8e7
    ld a, [bc]
    ld de, $00ef
    dec c
    ld de, $f8ef

jr_00c_4d9c:
    inc c
    ld de, $f880
    ld hl, sp+$0f
    jr nc, jr_00c_4d9c

    nop
    ld c, $30
    ldh a, [$fff8]
    dec c
    ld sp, $00f0
    inc c
    ld sp, $f8e8
    dec bc
    ld sp, $00e8
    ld a, [bc]
    ld sp, $f780
    ld hl, sp+$11
    jr nc, @-$07

    nop
    db $10
    jr nc, @-$0f

jr_00c_4dc1:
    ld hl, sp+$0d
    ld sp, $00ef
    inc c
    ld sp, $f8e7
    dec bc
    ld sp, $00e7
    ld a, [bc]
    ld sp, $f780
    ld hl, sp+$13
    jr nc, @-$07

    nop
    ld [de], a
    jr nc, jr_00c_4dc1

    ld hl, sp+$0b
    ld sp, $00e7
    ld a, [bc]
    ld sp, $f8ef
    dec c
    ld sp, $00ef
    inc c
    ld sp, $f880
    nop
    add hl, de
    db $10
    ld hl, sp-$08
    jr @+$12

    ldh a, [rP1]
    rla
    ld de, $f8f0
    ld d, $11
    add sp, $00
    dec d
    ld de, $f8e8
    inc d
    ld de, $f780
    nop
    inc e
    db $10
    rst $30
    ld hl, sp+$1b
    db $10
    rst $28
    ld hl, sp+$1a
    ld de, $00ef
    rla
    ld de, $00e7
    dec d
    ld de, $f8e7
    inc d
    ld de, $f780
    nop
    rra
    db $10
    rst $30
    ld hl, sp+$1e
    db $10
    rst $28
    ld hl, sp+$1d
    ld de, $00ef
    rla
    ld de, $00e7
    dec d
    ld de, $f8e7
    inc d
    ld de, $5580
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld d, l
    ld c, [hl]
    add a
    ld c, [hl]
    and b
    ld c, [hl]
    cp c
    ld c, [hl]
    and b
    ld c, [hl]
    jp nc, $eb4e

    ld c, [hl]
    inc b
    ld c, a
    db $eb
    ld c, [hl]
    dec e
    ld c, a
    ld [hl], $4f
    ld c, a
    ld c, a
    ld [hl], $4f
    ld l, b
    ld c, a
    ld hl, sp+$00
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ldh a, [rP1]
    inc hl
    ld de, $f8f0
    ld [hl+], a
    ld de, $00e8
    ld hl, $e811
    ld hl, sp+$20
    ld de, $f680
    nop
    daa
    db $10
    or $f8
    ld h, $10
    xor $00
    inc hl
    ld de, $f8ee
    ld [hl+], a
    ld de, $00e6
    ld hl, $e611
    ld hl, sp+$20
    ld de, $f680
    nop
    add hl, hl
    db $10
    or $f8
    jr z, @+$12

    xor $00
    inc hl
    ld de, $f8ee
    ld [hl+], a
    ld de, $00e6
    ld hl, $e611
    ld hl, sp+$20
    ld de, $f880
    nop
    rrca
    db $10
    ld hl, sp-$08
    ld c, $10
    ldh a, [rP1]
    dec c
    ld de, $f8f0
    inc c
    ld de, $00e8
    dec bc
    ld de, $f8e8

jr_00c_4eb6:
    ld a, [bc]
    ld de, $ee80
    ld hl, sp+$0c
    ld de, $00e6
    dec bc
    ld de, $f8e6
    ld a, [bc]
    ld de, $00f6
    ld [hl-], a
    db $10
    or $f8
    ld sp, $ee10
    nop
    jr nc, jr_00c_4ee2

    add b
    xor $f8
    inc c
    ld de, $00e6
    dec bc
    ld de, $f8e6
    ld a, [bc]
    ld de, $00ee
    jr nc, jr_00c_4ef3

jr_00c_4ee2:
    or $00
    inc [hl]
    db $10
    or $f8

jr_00c_4ee8:
    inc sp
    db $10
    add b
    ld hl, sp-$08
    rrca
    jr nc, jr_00c_4ee8

    nop
    ld c, $30

jr_00c_4ef3:
    ldh a, [$fff8]
    dec c
    ld sp, $00f0
    inc c
    ld sp, $f8e8
    dec bc
    ld sp, $00e8
    ld a, [bc]
    ld sp, $ee80
    nop
    inc c
    ld sp, $f8e6
    dec bc

jr_00c_4f0b:
    ld sp, $00e6
    ld a, [bc]
    ld sp, $f8f6
    ld [hl-], a
    jr nc, jr_00c_4f0b

    nop
    ld sp, $ee30
    ld hl, sp+$30
    ld sp, $ee80
    nop
    inc c
    ld sp, $f8e6
    dec bc
    ld sp, $00e6
    ld a, [bc]

jr_00c_4f28:
    ld sp, $f8ee
    jr nc, jr_00c_4f5e

    or $f8
    inc [hl]
    jr nc, jr_00c_4f28

    nop
    inc sp
    jr nc, jr_00c_4eb6

    ldh a, [$fff8]
    inc h
    ld de, $00f8
    add hl, de
    db $10
    ld hl, sp-$08
    jr jr_00c_4f52

    ldh a, [rP1]
    rla
    ld de, $00e8
    dec d
    ld de, $f8e8
    inc d
    ld de, $e780
    nop
    ld a, [hl-]

jr_00c_4f52:
    ld de, $f8e7
    add hl, sp
    ld de, $00f7
    ld a, $10
    rst $30
    ld hl, sp+$3d

jr_00c_4f5e:
    db $10
    rst $28
    nop
    inc a
    ld de, $f8ef
    dec sp
    ld de, $e780
    nop
    ld a, [hl-]
    ld de, $f8e7
    add hl, sp
    ld de, $00f7
    ld b, b
    db $10
    rst $30
    ld hl, sp+$3f
    db $10
    rst $28
    nop
    inc a
    ld de, $f8ef
    dec sp
    ld de, $a180
    ld c, a
    cp d
    ld c, a
    and c
    ld c, a
    db $d3
    ld c, a
    db $ec
    ld c, a
    dec b
    ld d, b
    db $ec
    ld c, a
    ld e, $50
    scf
    ld d, b
    ld d, b
    ld d, b
    scf
    ld d, b
    ld l, c
    ld d, b
    add d
    ld d, b
    sbc e
    ld d, b
    add d
    ld d, b
    or h
    ld d, b
    ld hl, sp+$00
    ld b, [hl]
    db $10
    ld hl, sp-$08
    ld b, l
    db $10
    ldh a, [rP1]
    ld b, h
    ld de, $f8f0
    ld b, e
    ld de, $00e8
    ld b, d
    ld de, $f8e8
    ld b, c
    ld de, $f780
    nop
    ld c, b
    db $10
    rst $30
    ld hl, sp+$47
    db $10
    rst $28
    nop
    ld b, h
    ld de, $f8ef
    ld b, e
    ld de, $00e7
    ld b, d
    ld de, $f8e7
    ld b, c
    ld de, $e780
    nop
    ld b, d
    ld de, $f8e7
    ld b, c
    ld de, $00ef
    ld b, h
    ld de, $f8ef
    ld b, e
    ld de, $00f7
    ld c, d
    db $10
    rst $30
    ld hl, sp+$49
    db $10
    add b
    ld hl, sp+$00
    ld d, b
    db $10
    ld hl, sp-$08
    ld c, a
    db $10
    ldh a, [rP1]
    ld c, [hl]
    ld de, $f8f0
    ld c, l
    ld de, $00e8
    ld c, h
    ld de, $f8e8
    ld c, e
    ld de, $f780
    nop
    ld d, d
    db $10
    rst $30
    ld hl, sp+$51
    db $10
    rst $28
    nop
    ld c, [hl]
    ld de, $f8ef
    ld c, l
    ld de, $00e7
    ld c, h
    ld de, $f8e7
    ld c, e
    ld de, $f780
    nop
    ld d, h
    db $10
    rst $30
    ld hl, sp+$53
    db $10
    rst $20
    nop
    ld c, h
    ld de, $f8e7
    ld c, e
    ld de, $00ef

jr_00c_5030:
    ld c, [hl]
    ld de, $f8ef

jr_00c_5034:
    ld c, l
    ld de, $f880
    ld hl, sp+$50
    jr nc, jr_00c_5034

    nop
    ld c, a
    jr nc, jr_00c_5030

    ld hl, sp+$4e
    ld sp, $00f0
    ld c, l
    ld sp, $f8e8
    ld c, h
    ld sp, $00e8
    ld c, e
    ld sp, $f780
    ld hl, sp+$52
    jr nc, @-$07

    nop
    ld d, c
    jr nc, @-$0f

jr_00c_5059:
    ld hl, sp+$4e
    ld sp, $00ef
    ld c, l
    ld sp, $f8e7
    ld c, h
    ld sp, $00e7
    ld c, e
    ld sp, $f780
    ld hl, sp+$54
    jr nc, @-$07

    nop
    ld d, e
    jr nc, jr_00c_5059

    ld hl, sp+$4c
    ld sp, $00e7
    ld c, e
    ld sp, $f8ef
    ld c, [hl]
    ld sp, $00ef
    ld c, l
    ld sp, $f880
    nop
    ld e, d
    db $10
    ld hl, sp-$08
    ld e, c
    db $10
    ldh a, [rP1]
    ld e, b
    ld de, $f8f0
    ld d, a
    ld de, $00e8
    ld d, [hl]
    ld de, $f8e8
    ld d, l
    ld de, $f780
    nop
    ld e, l
    db $10
    rst $30
    ld hl, sp+$5c
    db $10
    rst $28
    ld hl, sp+$5b
    ld de, $00ef
    ld e, b
    ld de, $00e7
    ld d, [hl]
    ld de, $f8e7
    ld d, l
    ld de, $ef80
    ld hl, sp+$5b
    ld de, $00f7
    ld h, b
    db $10
    rst $30
    ld hl, sp+$5f
    db $10
    rst $28
    nop
    ld e, b
    ld de, $00e7
    ld d, [hl]
    ld de, $f8e7
    ld d, l
    ld de, $df80
    ld d, b
    rst $18
    ld d, b
    ld hl, sp+$50
    ld de, $2a51
    ld d, c
    ld de, $2a51
    ld d, c
    ld de, $2a51
    ld d, c
    ld hl, sp+$00
    pop de
    db $10
    ld hl, sp-$08
    ret nc

    db $10
    ldh a, [rP1]
    rst $08
    ld de, $f8f0
    adc $11
    add sp, $00
    call $e811
    ld hl, sp-$34
    ld de, $f880
    nop
    rst $10
    db $10
    ld hl, sp-$08
    sub $10
    ldh a, [rP1]
    push de
    ld de, $f8f0
    call nc, $e811
    nop
    db $d3
    ld de, $f8e8
    jp nc, $8011

    ld hl, sp+$00
    pop de
    db $10
    ld hl, sp-$08
    jp c, $f010

    nop
    reti


    ld de, $f8f0
    ret c

    ld de, $00e8
    db $d3
    ld de, $f8e8
    jp nc, $8011

    ld hl, sp-$08
    ret nc

    db $10
    ld hl, sp+$00
    pop de
    db $10
    add sp, $00
    call c, $e811
    ld hl, sp-$25
    ld de, $00f0
    sbc $11
    ldh a, [$fff8]
    db $dd
    ld de, $4580
    ld d, c
    rst $28
    ldh a, [$ffd6]
    db $10
    ld hl, sp+$00
    ld sp, hl
    db $10
    ld hl, sp-$08
    ld hl, sp+$10
    ldh a, [rP1]
    rst $30
    ld de, $f8f0
    or $11
    add sp, $00
    push af
    ld de, $f8e8
    db $f4
    ld de, $8280
    ld d, c
    and e
    ld d, c
    call nz, $e551
    ld d, c
    ld [bc], a
    ld d, d
    inc hl
    ld d, d
    ld b, h
    ld d, d
    ld h, c
    ld d, d
    ld a, [hl]
    ld d, d
    sbc a
    ld d, d
    ret nz

    ld d, d
    db $dd
    ld d, d
    ld a, [$1b52]
    ld d, e
    inc a
    ld d, e
    ld e, l
    ld d, e
    ld a, [$6801]
    db $10
    ld a, [$67f9]
    db $10
    ldh a, [c]
    ld bc, $1166
    ldh a, [c]
    ld sp, hl
    ld h, l
    ld de, $f1f2
    ld h, h
    db $10
    ld [$6301], a
    ld de, $f9ea
    ld h, d
    ld de, $f1ea
    ld h, c
    db $10
    add b
    db $fc
    ld [$106e], sp
    db $fc
    nop
    ld l, l
    db $10
    db $fc
    ld hl, sp+$6c
    db $10
    db $fc
    ldh a, [rOCPD]
    db $10
    db $ec
    nop
    or c
    ld de, $f8ec
    or b
    ld de, $00f4
    ld l, d
    ld de, $f8f4
    ld l, c
    ld de, $f480
    nop
    dec hl
    ld de, $f8f4
    ld a, [hl+]
    ld de, $08f4
    ld l, a
    db $10
    db $fc
    ld [$1072], sp
    db $fc
    nop
    ld [hl], c
    db $10
    db $fc
    ld hl, sp+$70
    db $10
    db $ec
    nop
    or c
    ld de, $f8ec
    or b
    ld de, $fc80
    ld [$1077], sp
    db $fc
    nop
    halt
    db $10
    db $fc
    ld hl, sp+$75
    db $10
    db $f4
    ld [bc], a
    ld [hl], h
    ld de, $faf4
    ld [hl], e
    ld de, $00ec
    or c
    ld de, $f8ec
    or b
    ld de, $f880
    nop
    sbc e
    db $10
    ld hl, sp-$08
    sbc d
    db $10
    ldh a, [$ff08]
    sbc c
    db $10
    ldh a, [rP1]
    sbc b
    ld de, $f8f0
    sub a
    ld de, $08e8
    sub [hl]
    db $10
    add sp, $00
    sub l
    ld de, $f8e8
    sub h
    ld de, $f880
    nop
    and e
    db $10
    ld hl, sp-$08
    and d
    db $10
    ld hl, sp-$10
    and c
    db $10
    ldh a, [rP1]
    and b
    ld de, $f8f0
    sbc a
    ld de, $f0f0
    sbc [hl]
    db $10
    add sp, $00
    sbc l
    ld de, $f8e8
    sbc h
    ld de, $f880
    nop
    xor b
    db $10
    ld hl, sp-$08
    and a
    db $10
    ldh a, [$ff08]
    and [hl]
    db $10
    ldh a, [rP1]
    and l
    ld de, $f8f0
    and h
    ld de, $00e8
    sbc l
    ld de, $f8e8
    sbc h
    ld de, $f880
    nop
    xor a
    db $10
    ld hl, sp-$08
    xor [hl]
    db $10
    ldh a, [$ff08]
    xor l
    db $10
    ldh a, [rP1]
    xor h
    ld de, $f8f0
    xor e
    ld de, $00e8

jr_00c_5277:
    xor d
    ld de, $f8e8

jr_00c_527b:
    xor c
    ld de, $f880

jr_00c_527f:
    ld hl, sp-$65
    jr nc, jr_00c_527b

    nop
    sbc d
    jr nc, jr_00c_5277

    ldh a, [$ff99]
    jr nc, jr_00c_527b

    ld hl, sp-$68
    ld sp, $00f0
    sub a
    ld sp, $f0e8
    sub [hl]
    jr nc, jr_00c_527f

    ld hl, sp-$6b
    ld sp, $00e8

jr_00c_529c:
    sub h
    ld sp, $f880

jr_00c_52a0:
    ld hl, sp-$5d
    jr nc, jr_00c_529c

    nop
    and d
    jr nc, jr_00c_52a0

    ld [$30a1], sp
    ldh a, [$fff8]
    and b
    ld sp, $00f0
    sbc a
    ld sp, $08f0
    sbc [hl]
    jr nc, jr_00c_52a0

    ld hl, sp-$63
    ld sp, $00e8

jr_00c_52bd:
    sbc h
    ld sp, $f880
    ld hl, sp-$58
    jr nc, jr_00c_52bd

    nop
    and a
    jr nc, @-$0e

    ldh a, [$ffa6]
    jr nc, jr_00c_52bd

    ld hl, sp-$5b
    ld sp, $00f0
    and h
    ld sp, $f8e8

jr_00c_52d6:
    sbc l
    ld sp, $00e8

jr_00c_52da:
    sbc h
    ld sp, $f880
    ld hl, sp-$51
    jr nc, jr_00c_52da

    nop
    xor [hl]
    jr nc, jr_00c_52d6

    ldh a, [$ffad]
    jr nc, jr_00c_52da

    ld hl, sp-$54
    ld sp, $00f0
    xor e
    ld sp, $f8e8
    xor d
    ld sp, $00e8
    xor c
    ld sp, $fc80
    add hl, bc
    ld a, a
    db $10
    db $fc
    ld bc, $107e
    db $fc
    ld sp, hl
    ld a, l
    db $10
    db $f4
    add hl, bc
    ld a, h
    db $10
    db $f4
    ld bc, $117b
    db $f4
    ld sp, hl
    ld a, d
    ld de, $01ec
    ld a, c
    ld de, $f9ec
    ld a, b
    ld de, $fa80
    ld bc, $1087
    ld a, [$86f9]
    db $10
    ldh a, [c]
    ld bc, $1185
    ldh a, [c]
    ld sp, hl
    add h
    ld de, $f1f2
    add e
    db $10
    ld [$8201], a
    ld de, $f9ea
    add c
    ld de, $f1ea
    add b
    db $10
    add b
    ld a, [$8701]
    db $10
    ld a, [$86f9]
    db $10
    ld [$7901], a
    ld de, $f9ea
    ld a, b
    ld de, $f1fa
    adc e
    db $10
    ldh a, [c]
    ld bc, $118a
    ldh a, [c]
    ld sp, hl
    adc c
    ld de, $f1f2
    adc b
    db $10
    add b
    db $eb
    ld bc, $1179
    db $eb
    ld sp, hl
    ld a, b
    ld de, $01fa
    sub e
    db $10
    ld a, [$92f9]
    db $10
    ld a, [$91f1]
    db $10
    ldh a, [c]
    ld bc, $1190
    ldh a, [c]
    ld sp, hl
    adc a
    ld de, $f1f2
    adc [hl]
    db $10
    add b
    sbc [hl]
    ld d, e
    cp e
    ld d, e
    ret c

    ld d, e
    push af
    ld d, e
    ld [de], a
    ld d, h
    inc sp
    ld d, h
    ld d, h
    ld d, h
    ld [hl], l
    ld d, h
    sub [hl]
    ld d, h
    or a
    ld d, h
    ret c

    ld d, h
    ld sp, hl
    ld d, h
    ld a, [de]
    ld d, l
    scf
    ld d, l
    ld d, h
    ld d, l
    ld l, l
    ld d, l
    ld sp, hl
    nop
    cp b
    db $10
    ld sp, hl
    ld hl, sp-$49
    db $10
    pop af
    nop
    or [hl]
    ld de, $f8f1
    or l
    ld de, $00e9
    or h
    ld de, $f8e9
    or e
    ld de, $f8e1
    or d
    db $10
    add b
    ld [bc], a
    ei
    cp a
    db $10
    ld a, [$be00]
    db $10
    ld a, [$bdf8]
    db $10
    ldh a, [c]
    nop
    cp h
    ld de, $f8f2
    cp e
    ld de, $00ea
    cp d
    ld de, $f8ea
    cp c
    ld de, $0580
    ei
    push bc
    db $10
    db $ed
    nop
    dec l
    ld de, $f8ed
    inc l
    ld de, $00fd
    call nz, $fd10
    ld hl, sp-$3d
    db $10
    push af
    nop
    jp nz, $f511

    ld hl, sp-$3f
    ld de, $0480
    ei
    jp z, $ec10

    nop
    dec l
    ld de, $f8ec
    inc l
    ld de, $00fc
    ret


    db $10
    db $fc
    ld hl, sp-$38
    db $10
    db $f4
    ld hl, sp-$3f
    ld de, $00f4
    rst $00
    ld de, $f880
    rst $38
    db $ec
    db $10
    ld hl, sp-$09
    db $eb
    db $10
    ldh a, [rIE]
    ld [$f011], a
    rst $30
    jp hl


    ld de, $ffe8
    add sp, $11
    add sp, -$09
    rst $20
    ld de, $ffe0
    and $10
    ldh [$fff7], a
    push hl
    db $10
    add b
    ldh a, [c]
    xor $ef
    db $10

jr_00c_5437:
    ld a, [$f4fe]
    db $10
    ld a, [$f3f6]
    db $10
    ld a, [$f2ee]
    db $10
    ldh a, [c]
    cp $f1
    ld de, $f6f2
    ldh a, [rNR11]
    ld [$eefe], a
    ld de, $f6ea
    db $ed
    ld de, $ea80
    cp $ee
    ld de, $f6ea
    db $ed
    ld de, $fefa
    db $f4
    db $10
    ld a, [$f9f6]
    db $10
    ld a, [$f8ee]
    db $10
    ldh a, [c]
    cp $f7
    ld de, $f6f2
    or $11
    ldh a, [c]
    xor $f5
    db $10
    add b
    ld a, [$fffe]
    db $10

jr_00c_5479:
    ld a, [$fef6]
    db $10
    ld a, [$fdee]
    db $10
    ldh a, [c]
    cp $fc
    ld de, $f6f2
    ei
    ld de, $eef2
    ld a, [$ea10]
    cp $ee
    ld de, $f6ea

jr_00c_5493:
    db $ed
    ld de, $f880
    ld sp, hl
    db $ec
    jr nc, jr_00c_5493

    ld bc, $30eb
    ldh a, [$fff9]
    ld [$f031], a
    ld bc, $31e9
    add sp, -$07
    add sp, $31
    add sp, $01
    rst $20
    ld sp, $f9e0
    and $30
    ldh [rSB], a
    push hl
    jr nc, jr_00c_5437

    ld a, [$f302]

jr_00c_54ba:
    jr nc, @-$0c

    ld a, [bc]
    rst $28
    jr nc, jr_00c_54ba

    ld a, [$30f4]
    ld a, [$f20a]
    jr nc, jr_00c_54ba

    ld a, [$31f1]
    ldh a, [c]
    ld [bc], a
    ldh a, [rWave_1]
    ld [$eefa], a
    ld sp, $02ea
    db $ed
    ld sp, $fa80
    ld a, [bc]
    ld hl, sp+$30
    ld [$eefa], a

jr_00c_54df:
    ld sp, $02ea
    db $ed

jr_00c_54e3:
    ld sp, $fafa
    db $f4
    jr nc, jr_00c_54e3

    ld [bc], a
    ld sp, hl
    jr nc, jr_00c_54df

    ld a, [$31f7]
    ldh a, [c]
    ld [bc], a
    or $31
    ldh a, [c]
    ld a, [bc]
    push af
    jr nc, jr_00c_5479

    ldh a, [c]
    ld a, [bc]
    ld a, [$fa30]
    ld a, [$30ff]
    ld a, [$fe02]
    jr nc, @-$04

    ld a, [bc]
    db $fd
    jr nc, @-$0c

    ld a, [$31fc]
    ldh a, [c]
    ld [bc], a
    ei
    ld sp, $faea
    xor $31
    ld [$ed02], a
    ld sp, $f880
    ld bc, $10d3
    ld hl, sp-$07
    jp nc, $f010

    ld bc, $11d1
    ldh a, [$fff9]
    ret nc

    ld de, $01e8
    rst $08
    ld de, $f9e8
    adc $11
    ldh [rSB], a
    call $8010
    ld sp, hl
    ld bc, $10da
    ld sp, hl
    ld sp, hl
    reti


    db $10
    pop af
    ld bc, $11d8
    pop af
    ld sp, hl
    rst $10
    ld de, $01e9
    sub $11
    jp hl


    ld sp, hl
    push de
    ld de, $01e1
    call nc, $8010
    jp hl


    ld bc, $11dc
    jp hl


    ld sp, hl
    db $db
    ld de, $01f1
    sbc $11
    pop af
    ld sp, hl
    db $dd
    ld de, $f9f9
    rst $18
    db $10
    ld sp, hl
    ld bc, $10e0
    add b
    add sp, $01
    ld a, c
    ld de, $f9e8
    ld a, b
    ld de, $01f8
    db $e4
    db $10
    ld hl, sp-$07
    db $e3
    db $10
    ldh a, [rSB]
    ldh [c], a
    ld de, $f9f0
    pop hl
    ld de, $a680
    ld d, l
    jp $e055


    ld d, l
    ld bc, $1e56
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld h, h
    ld d, [hl]
    add l
    ld d, [hl]
    and [hl]
    ld d, [hl]
    bit 2, [hl]
    db $ec
    ld d, [hl]
    dec c
    ld d, a
    ld l, $57
    ld c, a
    ld d, a
    ld l, h
    ld d, a
    adc c
    ld d, a
    ld hl, sp+$00
    ld b, $10
    ld hl, sp-$08
    dec b
    db $10
    ldh a, [rP1]
    inc b
    ld de, $f8f0
    inc bc
    db $10
    add sp, $00
    ld [bc], a
    ld de, $f8e8
    ld bc, $e012
    ld hl, sp+$00
    ld [de], a
    add b
    and $fb
    rlca
    ld [de], a
    cp $01
    ld c, $10
    cp $f9
    dec c
    ld [de], a
    or $01
    inc c
    ld de, $f9f6
    dec bc
    ld [de], a
    xor $00
    ld a, [bc]
    ld de, $f8ee
    add hl, bc
    ld [de], a
    add b
    db $ed
    nop
    db $10
    ld de, $f8ed
    rrca
    ld de, $00f4
    ld [de], a
    ld de, $f8f4
    ld de, $0411
    ld bc, $1216
    inc b
    ld sp, hl
    dec d
    ld [de], a
    db $fc
    ld bc, $1014
    db $fc
    ld sp, hl
    inc de
    ld [de], a
    add b
    db $ed
    nop
    db $10
    ld de, $f8ed
    rrca
    ld de, $fa04
    dec de
    ld [de], a
    db $fc
    ld bc, $101a
    db $fc
    ld sp, hl
    add hl, de
    ld [de], a
    db $f4
    nop
    jr jr_00c_562a

    db $f4
    ld hl, sp+$17
    ld de, $f880
    nop
    ld b, b
    db $10
    ld hl, sp-$08
    ccf
    db $10
    ldh a, [rP1]
    ld a, $11

jr_00c_562a:
    ldh a, [$fff8]
    dec a
    ld de, $00e8
    dec sp
    ld [de], a
    add sp, -$08
    ld a, [hl-]
    ld de, $00e0
    add hl, sp
    ld [de], a
    ldh [$fff8], a
    jr c, jr_00c_564e

    add sp, $08
    inc a
    ld [de], a
    add b
    di
    ldh a, [rLY]
    ld [de], a
    db $eb
    ldh a, [rSTAT]
    ld [de], a
    ld a, [$4900]

jr_00c_564e:
    db $10
    ld a, [$48f8]
    db $10
    ldh a, [c]
    nop
    ld b, [hl]
    ld de, $f8f2
    ld b, l
    ld de, $00ea
    ld b, e
    ld de, $f8ea
    ld b, d
    ld de, $ea80
    nop
    ld b, e
    ld de, $f8ea
    ld b, d
    ld de, $00fa
    ld c, c
    db $10
    ld a, [$4ef8]
    ld [de], a
    ld a, [$4df0]
    ld [de], a
    ldh a, [c]
    nop
    ld c, h
    ld de, $f8f2
    ld c, e
    ld de, $f0f2
    ld c, d
    ld [de], a
    add b
    ldh a, [c]
    pop af
    ld c, d
    ld [de], a
    ld a, [$51f1]
    ld [de], a
    ld [$4300], a
    ld de, $f8ea
    ld b, d
    ld de, $00fa
    ld d, e
    db $10
    ld a, [$52f8]
    db $10
    ldh a, [c]
    nop
    ld d, b

jr_00c_56a0:
    ld de, $f8f2
    ld c, a

jr_00c_56a4:
    ld de, $f980
    ld hl, sp+$40
    jr nc, jr_00c_56a4

    nop
    ccf
    jr nc, jr_00c_56a0

    ld hl, sp+$3e
    ld sp, $00f1
    dec a
    ld sp, $f8e9
    dec sp
    ld [hl-], a
    jp hl


    nop
    ld a, [hl-]
    ld sp, $f8e1
    add hl, sp
    ld [hl-], a
    pop hl
    nop
    jr c, jr_00c_56f6

    jp hl


    ldh a, [rWave_c]
    ld [hl-], a
    add b
    di
    ld [$3244], sp
    db $eb
    ld [$3241], sp
    ld a, [$49f8]
    jr nc, @-$04

    nop
    ld c, b
    jr nc, @-$0c

    ld hl, sp+$46
    ld sp, $00f2
    ld b, l
    ld sp, $f8ea
    ld b, e
    ld sp, $00ea
    ld b, d
    ld sp, $ea80
    ld hl, sp+$43
    ld sp, $00ea
    ld b, d

jr_00c_56f3:
    ld sp, $f8fa

jr_00c_56f6:
    ld c, c
    jr nc, jr_00c_56f3

    nop
    ld c, [hl]
    ld [hl-], a
    ld a, [$4d08]
    ld [hl-], a
    ldh a, [c]
    ld hl, sp+$4c
    ld sp, $00f2
    ld c, e
    ld sp, $08f2
    ld c, d
    ld [hl-], a
    add b
    ldh a, [c]
    rlca
    ld c, d
    ld [hl-], a
    ld a, [$5107]
    ld [hl-], a
    ld [$43f8], a

jr_00c_5718:
    ld sp, $00ea
    ld b, d

jr_00c_571c:
    ld sp, $f8fa
    ld d, e
    jr nc, jr_00c_571c

    nop
    ld d, d
    jr nc, jr_00c_5718

    ld hl, sp+$50
    ld sp, $00f2
    ld c, a
    ld sp, $f880
    ld bc, $1024
    ld hl, sp-$07
    inc hl
    db $10
    ldh a, [rSB]
    ld [hl+], a
    ld [de], a
    ldh a, [$fff9]
    ld hl, $e811
    ld bc, $1220
    add sp, -$07
    rra
    ld de, $01e0
    ld e, $12
    ldh [$fff9], a
    dec e
    db $10
    add b
    ld hl, sp+$01
    inc l
    db $10
    ld hl, sp-$07
    dec hl
    db $10
    ldh a, [rSB]
    ld a, [hl+]
    ld de, $f9f0
    add hl, hl
    ld de, $01e8
    jr z, @+$13

    add sp, -$07
    daa
    ld de, $01e0
    ld h, $12
    add b
    jp hl


    ld bc, $112e
    jp hl


    ld sp, hl
    dec l
    ld de, $05f8
    inc sp
    ld [de], a
    ld hl, sp+$01
    ld [hl-], a
    db $10
    ld hl, sp-$07
    ld sp, $f010
    ld bc, $1130
    ldh a, [$fff9]
    cpl
    ld de, $f880
    ld bc, $1037
    ld hl, sp-$07
    ld [hl], $10
    add sp, $01
    dec h
    ld de, $f9e8
    inc e
    ld de, $01f0
    dec [hl]
    ld de, $f9f0
    inc [hl]
    ld de, $c280
    ld d, a
    rst $18
    ld d, a
    db $fc
    ld d, a
    add hl, de
    ld e, b
    ld [hl], $58
    ld d, a
    ld e, b
    ld a, b
    ld e, b
    sbc c
    ld e, b
    cp d
    ld e, b
    db $db
    ld e, b
    db $fc
    ld e, b
    dec e
    ld e, c
    ld a, $59
    ld e, a
    ld e, c
    ld a, h
    ld e, c
    sub l
    ld e, c
    ld hl, sp+$00
    ld b, $10
    ld hl, sp-$08
    dec b
    db $10
    ldh a, [rP1]
    inc b
    ld de, $f8f0
    ld d, a
    ld de, $00e8
    ld d, [hl]
    ld de, $f8e8
    ld d, l
    ld de, $f8e0
    ld d, h
    db $10
    add b
    ld [bc], a
    ld a, [$105c]
    ld a, [$8c00]
    db $10
    ld a, [$8bf8]
    db $10
    ldh a, [c]
    nop
    ld e, e
    ld de, $f8f2
    ld e, d
    ld de, $00ea
    ld e, c
    ld de, $f8ea
    ld e, b
    ld de, $eb80
    nop
    db $10
    ld de, $f8eb
    rrca
    ld de, $fa03
    ld h, c
    db $10
    ei
    nop
    ld h, b
    db $10
    ei
    ld hl, sp+$5f
    db $10
    di
    nop
    ld e, [hl]
    ld de, $f8f3
    ld e, l
    ld de, $f280
    ld hl, sp+$47
    ld de, $fa02
    ld h, c
    db $10
    ldh a, [c]
    nop
    ld e, [hl]
    ld de, $00fa
    ld h, e
    db $10
    ld a, [$62f8]
    db $10
    ld [$0ff8], a
    ld de, $00ea
    db $10
    ld de, $f080
    db $fd
    ld [hl], b
    ld de, $fde0
    halt
    db $10
    ldh [$fff5], a
    ld [hl], l
    db $10
    add sp, -$03
    ld a, b
    ld de, $f5e8
    ld [hl], a
    ld de, $f5f0
    ld a, c
    ld de, $fdf8
    ld a, e
    db $10
    ld hl, sp-$0b
    ld a, d
    db $10
    add b
    ld a, [$49fd]
    db $10

jr_00c_585b:
    ldh a, [c]
    db $fd
    ld b, [hl]
    ld de, $fdea
    ld b, e
    ld de, $f5fa
    add c
    db $10
    ld a, [$80ed]
    db $10
    ldh a, [c]
    push af
    ld a, a
    ld de, $edf2
    ld a, [hl]
    db $10
    ld [$7df5], a
    ld de, $f280
    db $fd
    ld b, [hl]
    ld de, $fdfa
    ld c, c
    db $10
    ld [$43fd], a
    ld de, $f5ea
    ld b, d
    ld de, $f5fa
    add l
    db $10
    ld a, [$84ed]
    db $10
    ldh a, [c]
    push af
    add e
    ld de, $edf2
    add d
    db $10
    add b
    ldh a, [$fffe]
    adc l
    ld de, $fee8
    ld b, e
    ld de, $f6e8

jr_00c_58a3:
    ld b, d
    ld de, $f6f0
    add a
    ld de, $eef0
    add [hl]
    db $10
    ld hl, sp-$02

jr_00c_58af:
    adc d
    db $10
    ld hl, sp-$0a
    adc c
    db $10
    ld hl, sp-$12
    adc b
    db $10
    add b
    ldh a, [$fffb]
    ld a, $31

jr_00c_58be:
    ldh [$fffb], a
    halt
    jr nc, jr_00c_58a3

    inc bc
    ld [hl], l
    jr nc, jr_00c_58af

    ei
    ld a, b
    ld sp, $03e8
    ld [hl], a
    ld sp, $03f0
    ld a, c
    ld sp, $fbf8
    ld a, e
    jr nc, @-$06

    inc bc
    ld a, d
    jr nc, jr_00c_585b

    ld a, [$49fb]
    jr nc, @-$0c

    ei
    ld b, [hl]

jr_00c_58e2:
    ld sp, $fbea
    ld b, e

jr_00c_58e6:
    ld sp, $03fa
    add c
    jr nc, jr_00c_58e6

    dec bc
    add b
    jr nc, jr_00c_58e2

    inc bc
    ld a, a
    ld sp, $0bf2
    ld a, [hl]
    jr nc, jr_00c_58e2

    inc bc
    ld a, l
    ld sp, $f280
    ei
    ld b, [hl]
    ld sp, $fbfa
    ld c, c
    jr nc, @-$14

    ei
    ld b, e

jr_00c_5907:
    ld sp, $03ea
    ld b, d

jr_00c_590b:
    ld sp, $03fa
    add l
    jr nc, jr_00c_590b

    dec bc
    add h
    jr nc, jr_00c_5907

    inc bc
    add e
    ld sp, $0bf2
    add d
    jr nc, @-$7e

    ldh a, [$fffa]
    adc l
    ld sp, $fae8
    ld b, e
    ld sp, $02e8
    ld b, d
    ld sp, $02f0
    add a
    ld sp, $0af0
    add [hl]
    jr nc, @-$06

jr_00c_5932:
    ld a, [$308a]
    ld hl, sp+$02
    adc c
    jr nc, jr_00c_5932

    ld a, [bc]
    adc b
    jr nc, jr_00c_58be

    ldh [$fff9], a
    dec e
    db $10
    ldh [rSB], a
    ld h, h
    db $10
    ld hl, sp+$01
    inc h
    db $10
    ld hl, sp-$07
    inc hl
    db $10
    ldh a, [$fff9]
    ld hl, $e811
    ld sp, hl
    rra
    ld de, $01f0
    ld h, [hl]
    ld de, $01e8
    ld h, l
    ld de, $f980
    ld sp, hl
    dec hl
    db $10
    ld sp, hl
    ld bc, $106d
    pop af
    ld bc, $116b
    pop af
    ld sp, hl
    ld l, d
    ld de, $01e9
    ld l, c
    ld de, $f9e9
    ld l, b
    ld de, $01e1
    ld h, a
    db $10
    add b
    ld [$2e01], a
    ld de, $f9ea
    dec l
    ld de, $f9f9
    ld sp, $f910
    ld bc, $1071
    pop af
    ld bc, $116f
    pop af
    ld sp, hl
    ld l, [hl]
    ld de, $f080
    ld bc, $116c
    ld hl, sp+$01
    ld [hl], h
    db $10
    ld hl, sp-$07
    ld [hl], e
    db $10
    ldh a, [$fff9]
    ld [hl], d
    ld de, $01e8
    dec h
    ld de, $f9e8
    inc e
    ld de, $e680
    ld e, c
    rlca
    ld e, d
    jr z, jr_00c_5a0e

    rlca
    ld e, d
    jr z, jr_00c_5a12

    rlca
    ld e, d
    jr z, jr_00c_5a16

    ld b, c
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    and h
    ld e, d
    push bc
    ld e, d
    and $5a
    push bc
    ld e, d
    and $5a
    push bc
    ld e, d
    and $5a
    rlca
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    ld hl, sp+$00
    sub l
    db $10
    ld hl, sp-$08
    sub h
    db $10
    ldh a, [$ff03]
    sub e
    ld de, $fbf0
    sub d
    ld de, $f3f0
    sub c
    ld [de], a
    add sp, -$05
    adc a
    ld de, $f3e8
    adc [hl]
    ld [de], a
    add sp, $03
    sub b
    ld de, $ea80
    nop
    db $10
    ld de, $f8ea
    rrca

jr_00c_5a0e:
    ld de, $00fd
    sbc e

jr_00c_5a12:
    ld [de], a
    db $fd
    ld hl, sp-$66

jr_00c_5a16:
    ld [de], a
    push af
    nop
    sbc c
    db $10
    push af
    ld hl, sp-$68
    ld [de], a
    db $ed
    nop
    sub a
    ld de, $f8ed
    sub [hl]
    ld de, $fa80
    nop
    and c
    db $10
    ld a, [$a0f8]
    db $10
    ldh a, [c]
    nop
    sbc a
    ld de, $f8f2
    sbc [hl]
    ld [de], a
    ld [$9d00], a
    ld de, $f8ea
    sbc h
    ld de, $f980
    nop
    cp l
    db $10
    ld sp, hl
    ld hl, sp-$44
    db $10
    pop af
    nop
    cp e
    ld de, $f8f1
    cp d
    ld de, $00e9
    cp c
    ld de, $f8e9
    cp b
    ld de, $00e1
    or a
    ld [de], a
    pop hl
    ld hl, sp-$4a
    ld [de], a
    add b
    ld [$43fe], a
    ld de, $f6ea
    ld b, d
    ld de, $fefa
    jp $fa10


    or $c2
    db $10
    ld a, [$c1ee]
    ld [de], a
    ldh a, [c]
    cp $c0
    ld de, $f6f2
    cp a
    ld [de], a
    ldh a, [c]
    xor $be
    ld [de], a
    add b
    add sp, -$02
    ld [$f811], sp
    cp $ca
    db $10
    ld hl, sp-$0a
    ret


    db $10
    ldh a, [$fffe]
    ret z

    ld de, $f6f0
    rst $00
    ld [de], a
    ldh a, [$ffee]
    add $12
    add sp, -$0a
    push bc

jr_00c_5a9e:
    ld de, $eee8
    call nz, $8012
    ld sp, hl
    ld hl, sp-$43
    jr nc, @-$05

    nop
    cp h
    jr nc, jr_00c_5a9e

    ld hl, sp-$45
    ld sp, $00f1
    cp d
    ld sp, $f8e9
    cp c
    ld sp, $00e9
    cp b
    ld sp, $f8e1
    or a
    ld [hl-], a
    pop hl
    nop
    or [hl]
    ld [hl-], a
    add b
    ld a, [$c10a]
    ld [hl-], a
    ld [$43fa], a
    ld sp, $02ea
    ld b, d
    ld sp, $fafa
    jp $fa30


    ld [bc], a
    jp nz, $f230

    ld a, [$31c0]
    ldh a, [c]
    ld [bc], a
    cp a
    ld [hl-], a
    ldh a, [c]
    ld a, [bc]

jr_00c_5ae3:
    cp [hl]
    ld [hl-], a
    add b
    add sp, -$06
    ld [$f831], sp
    ld a, [$30ca]
    ld hl, sp+$02
    ret


    jr nc, jr_00c_5ae3

    ld a, [$31c8]
    ldh a, [rSC]
    rst $00
    ld [hl-], a
    ldh a, [$ff0a]
    add $32
    add sp, $02
    push bc
    ld sp, $0ae8
    call nz, $8032
    pop hl
    ld bc, $12a2
    ldh [c], a
    ld sp, hl
    dec e
    db $10
    ld [$1ff9], a
    ld de, $01f9
    xor b
    db $10
    ld a, [$a7f9]
    db $10
    pop af
    ld bc, $11a6
    ldh a, [c]
    ld sp, hl
    and l
    ld de, $06e9
    and h
    ld [de], a
    jp hl


    cp $a3
    ld de, $ea80
    ld sp, hl
    inc e
    ld de, $01ea
    dec h
    ld de, $03fa
    xor [hl]
    db $10
    ld a, [$adfb]
    db $10
    ldh a, [c]
    dec b
    xor h
    ld [de], a
    ldh a, [c]
    db $fd
    xor e
    ld de, $f5f2
    xor d
    ld de, $fa80
    ld sp, hl
    rl b
    ld a, [$b501]
    db $10
    ldh a, [c]
    rlca
    or h
    ld [de], a
    ldh a, [c]
    rst $38
    or e
    ld de, $f7f2
    or d
    ld de, $07ea
    or c
    ld [de], a
    ld [$b0ff], a
    ld de, $f7ea
    xor a
    ld de, $a280
    ld e, e
    jp $dc5b


    ld e, e
    jp $dc5b


    ld e, e
    jp $dc5b


    ld e, e
    push af
    ld e, e
    ld d, $5c
    scf
    ld e, h
    ld d, $5c
    scf
    ld e, h
    ld d, $5c
    scf
    ld e, h
    ld e, b
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    cp e
    ld e, h
    call c, $fd5c
    ld e, h
    call c, $fd5c
    ld e, h
    call c, $fd5c
    ld e, h
    ld sp, hl
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$06
    db $10
    pop af
    nop
    dec b
    ld de, $f8f1
    inc b
    ld de, $00e9
    inc bc
    ld de, $f8e9
    ld [bc], a
    ld [de], a
    jp hl


    ldh a, [rSB]
    db $10
    pop hl
    ld hl, sp+$00
    ld [de], a
    add b
    ei
    nop
    inc c
    db $10
    ei
    ld hl, sp+$0b
    db $10
    db $eb
    nop
    inc bc
    ld de, $00f3
    ld a, [bc]
    ld [de], a
    di
    ld hl, sp+$09
    ld [de], a
    db $eb
    ld hl, sp+$08
    ld de, $f980
    nop
    ld [de], a
    db $10
    ld sp, hl
    ld hl, sp+$11
    db $10
    pop af
    nop
    db $10
    ld [de], a
    pop af
    ld hl, sp+$0f
    ld [de], a
    jp hl


    nop
    ld c, $11
    jp hl


    ld hl, sp+$0d
    ld de, $f980
    nop
    ld sp, $f910
    ld hl, sp+$30
    db $10
    pop af
    nop
    cpl
    ld de, $f8f1
    ld l, $11
    jp hl


    nop
    dec l
    ld de, $f8e9
    inc l
    ld de, $00e1
    dec hl
    ld [de], a
    pop hl
    ld hl, sp+$2a
    ld [de], a
    add b
    pop af
    ld [bc], a
    ld [hl], $11
    pop af
    ld a, [$1135]
    pop af
    ldh a, [c]
    inc [hl]
    ld [de], a
    ld sp, hl
    ld [bc], a
    add hl, sp
    db $10
    ld sp, hl
    ld a, [$1038]
    ld sp, hl
    ldh a, [c]
    scf
    ld [de], a
    jp hl


    nop
    inc sp
    ld de, $f8e9
    ld [hl-], a
    ld de, $e880
    nop
    inc sp
    ld de, $f8e8
    ld [hl-], a
    ld de, $02f8
    ccf
    db $10
    ld hl, sp-$06
    ld a, $10
    ld hl, sp-$0e
    dec a
    ld [de], a
    ldh a, [rSC]
    inc a
    ld de, $faf0
    dec sp
    ld de, $f2f0
    ld a, [hl-]

jr_00c_5c56:
    ld [de], a
    add b
    ld sp, hl
    ld hl, sp+$31
    jr nc, jr_00c_5c56

    nop
    jr nc, jr_00c_5c90

    pop af
    ld hl, sp+$2f
    ld sp, $00f1
    ld l, $31
    jp hl


    ld hl, sp+$2d
    ld sp, $00e9
    inc l
    ld sp, $f8e1
    dec hl
    ld [hl-], a
    pop hl
    nop
    ld a, [hl+]
    ld [hl-], a
    add b
    pop af
    or $36
    ld sp, $fef1
    dec [hl]
    ld sp, $06f1

jr_00c_5c83:
    inc [hl]
    ld [hl-], a
    ld sp, hl
    or $39
    jr nc, jr_00c_5c83

    cp $38
    jr nc, @-$05

    ld b, $37

jr_00c_5c90:
    ld [hl-], a
    jp hl


    ld hl, sp+$33
    ld sp, $00e9
    ld [hl-], a
    ld sp, $e880
    ld hl, sp+$33
    ld sp, $00e8
    ld [hl-], a
    ld sp, $f6f8
    ccf
    jr nc, @-$06

    cp $3e
    jr nc, @-$06

    ld b, $3d
    ld [hl-], a
    ldh a, [$fff6]
    inc a
    ld sp, $fef0
    dec sp
    ld sp, $06f0
    ld a, [hl-]
    ld [hl-], a
    add b
    ld hl, sp+$01
    ld a, [de]
    db $10
    ld hl, sp-$07
    add hl, de
    db $10
    ldh a, [rSB]
    jr @+$13

    ldh a, [$fff9]
    rla
    ld de, $01e0
    inc de
    ld [de], a
    add sp, $06
    ld d, $12
    add sp, -$02
    dec d
    ld de, $f6e8
    inc d
    ld de, $f980
    dec b
    ld [hl+], a
    ld [de], a
    ld sp, hl
    db $fd
    ld hl, $f910
    push af
    jr nz, @+$12

    pop af
    ld b, $1f
    ld [de], a
    pop af
    cp $1e
    ld de, $f6f1
    dec e
    ld de, $ffe9
    inc e
    ld de, $f7e9
    dec de
    ld de, $e880
    rst $30
    dec de
    ld de, $01f8
    add hl, hl
    db $10
    ld hl, sp-$07
    jr z, jr_00c_5d19

    ldh a, [rTAC]
    daa
    ld [de], a
    ldh a, [rIE]
    ld h, $11
    ldh a, [$fff7]
    dec h
    ld de, $07e8
    inc h
    ld [de], a

jr_00c_5d19:
    add sp, -$01
    inc hl
    ld de, $3e80
    ld e, l
    ld d, a
    ld e, l
    ld [hl], h
    ld e, l
    sub c
    ld e, l
    or d
    ld e, l
    rst $08
    ld e, l
    ldh a, [$ff5d]
    add hl, bc
    ld e, [hl]
    ld a, $5d
    ld d, a
    ld e, l
    ld [hl], h
    ld e, l
    sub c
    ld e, l
    or d
    ld e, l
    rst $08
    ld e, l
    ldh a, [$ff5d]
    add hl, bc
    ld e, [hl]
    ei
    ld bc, $1045
    ei
    ld sp, hl
    ld b, h
    db $10
    di
    ld bc, $1143
    di
    ld sp, hl
    ld b, d
    ld de, $01eb
    ld b, c
    ld de, $f9eb
    ld b, b
    ld de, $0180
    rst $38
    ld c, d
    db $10
    ld sp, hl
    ld bc, $1049
    ld sp, hl
    ld sp, hl
    ld c, b
    db $10
    pop af
    ld bc, $1047
    pop af
    ld sp, hl
    ld b, [hl]
    ld de, $01e9
    ld b, c
    ld de, $f9e9
    ld b, b
    ld de, $e980
    cp $33
    ld de, $f6e9
    ld [hl-], a
    ld de, $fef9
    ld e, e
    db $10
    rst $30
    or $5a
    db $10
    ld sp, hl
    xor $59
    db $10
    pop af
    cp $58
    ld de, $f6ef
    ld d, a
    ld de, $f880
    cp $63
    db $10
    ld hl, sp-$0a
    ld h, d
    db $10
    ldh a, [$fffe]
    ld h, c
    ld de, $f6f0
    ld h, b
    db $10
    ldh a, [$ffee]
    ld e, a
    db $10
    add sp, -$02
    ld e, [hl]
    ld de, $f6e8
    ld e, l
    ld de, $f3e8
    ld e, h
    db $10
    add b
    jp hl


    ld a, [$3133]

jr_00c_5db6:
    jp hl


    ld [bc], a

jr_00c_5db8:
    ld [hl-], a
    ld sp, $faf9

jr_00c_5dbc:
    ld e, e
    jr nc, jr_00c_5db6

    ld [bc], a
    ld e, d
    jr nc, jr_00c_5dbc

    ld a, [bc]
    ld e, c
    jr nc, jr_00c_5db8

    ld a, [$3158]
    rst $28
    ld [bc], a

jr_00c_5dcc:
    ld d, a
    ld sp, $f080

jr_00c_5dd0:
    ld [bc], a
    ld h, b
    ld sp, $faf8
    ld h, e
    jr nc, jr_00c_5dd0

    ld [bc], a
    ld h, d
    jr nc, jr_00c_5dcc

    ld a, [$3161]
    ldh a, [$ff0a]
    ld e, a
    jr nc, jr_00c_5dcc

    ld a, [$315e]
    add sp, $02
    ld e, l
    ld sp, $05e8
    ld e, h
    jr nc, @-$7e

    ld hl, sp+$01
    ld d, b
    db $10
    ld sp, hl
    ld sp, hl
    ld c, a
    db $10
    ldh a, [rSB]
    ld c, [hl]
    ld de, $f9f1
    ld c, l
    ld de, $01e8
    ld c, h
    ld de, $f9e9
    ld c, e
    ld de, $f880
    ld [bc], a
    ld d, [hl]
    db $10
    ld hl, sp-$06
    ld d, l
    db $10
    ldh a, [rSC]
    ld d, h
    ld de, $faf0
    ld d, e
    ld de, $02e8
    ld d, d
    ld de, $fae8
    ld d, c
    ld de, $3080
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    adc e
    ld e, [hl]
    xor h
    ld e, [hl]
    call $ee5e
    ld e, [hl]
    db $ec
    ld bc, $1141
    db $ec
    ld sp, hl
    ld b, b
    ld de, $09fb
    ld l, b
    ld [de], a
    ei
    ld bc, $1267
    ei
    ld sp, hl
    ld h, [hl]
    db $10
    di
    ld bc, $1165
    di
    ld sp, hl
    ld h, h
    ld de, $ed80
    ld bc, $1141
    db $ed
    ld sp, hl
    ld b, b
    ld de, $09fc
    ld l, [hl]
    ld [de], a
    ei
    ld bc, $126d
    db $fc
    ld sp, hl
    ld l, h
    db $10
    db $f4
    add hl, bc
    ld l, e
    ld [de], a
    di
    ld bc, $116a
    db $f4
    ld sp, hl
    ld l, c
    ld de, $f880
    ld [$1275], sp
    ld hl, sp+$00
    ld [hl], h
    db $10
    ld hl, sp-$08
    ld [hl], e
    db $10
    ldh a, [rP1]
    ld [hl], d
    ld de, $f8f0
    ld [hl], c
    ld de, $00e8
    ld [hl], b
    ld de, $f8e8
    ld l, a
    ld de, $f880
    nop
    ld [hl], h
    db $10
    ld hl, sp-$08
    ld [hl], e
    db $10
    ld hl, sp+$08
    ld [hl], l
    ld [de], a
    add sp, -$08
    ld l, a
    ld de, $00e8
    ld [hl], b
    ld de, $00f0
    ld a, b
    ld de, $f8f0
    ld [hl], a
    ld de, $f0f0
    halt
    db $10
    add b
    ld hl, sp-$08
    ld [hl], e
    db $10
    add sp, $00
    rst $28
    ld de, $f8e8
    xor $11
    ldh a, [rP1]
    ld a, h
    ld de, $f8f0
    ld a, e
    ld de, $f0f0
    ld a, d
    db $10
    ld hl, sp+$08
    ld [hl], l
    ld [de], a
    ld hl, sp+$00
    ld [hl], h
    db $10
    add b
    add sp, $00
    rst $28
    ld de, $f8e8
    xor $11
    ld hl, sp+$00
    ld [hl], h
    db $10
    di
    ldh a, [$ff7a]
    db $10
    ld hl, sp+$08
    ld [hl], l
    ld [de], a
    ld hl, sp-$08
    ld a, a
    db $10
    ldh a, [rP1]
    ld a, [hl]
    ld de, $f8f0
    ld a, l
    ld de, $f180
    nop
    add l
    ld de, $08f9
    adc b
    ld [de], a
    ld sp, hl
    nop
    add a
    db $10
    ld sp, hl
    ld hl, sp-$7a
    db $10
    rst $30
    ldh a, [rPCM12]
    db $10
    pop af
    ld hl, sp-$7c
    ld de, $00e9
    add e
    ld de, $f8e9
    add d
    ld de, $3780
    ld e, a
    ld e, b
    ld e, a
    ld a, c
    ld e, a
    sbc d
    ld e, a
    cp e
    ld e, a
    call c, $f95f
    ld e, a
    ld a, [de]
    ld h, b
    ccf
    ld h, b
    ld h, h
    ld h, b
    adc c
    ld h, b
    and [hl]
    ld h, b
    rst $00
    ld h, b
    db $ec
    ld h, b
    ld de, $3661
    ld h, c
    ld d, a
    ld h, c
    ld a, b
    ld h, c
    sbc c
    ld h, c
    cp d
    ld h, c
    ld sp, hl
    nop
    sub c
    db $10
    ld sp, hl
    ld hl, sp-$70
    db $10
    pop af
    nop
    adc a
    ld de, $f8f1
    adc [hl]
    ld de, $01e9
    adc l
    ld de, $f9e9
    adc h
    ld [de], a
    pop hl
    nop
    adc e
    ld [de], a
    pop hl
    ld hl, sp-$76
    ld [de], a
    add b
    ldh a, [rP1]
    db $ed
    ld de, $f8f0
    db $ec
    ld de, $00f8
    sub l
    db $10
    ld hl, sp-$08
    sub h
    db $10
    ldh [rP1], a
    adc e
    ld [de], a
    ldh [$fff8], a
    adc d
    ld [de], a
    add sp, $01
    sub e
    ld de, $f9e8
    sub d
    ld [de], a
    add b
    db $fd
    nop
    sbc l
    ld [de], a
    db $fd
    ld hl, sp-$64
    ld [de], a
    push af
    nop
    sbc e
    db $10
    push af
    ld hl, sp-$66
    ld [de], a
    db $ed
    nop
    sbc c
    ld de, $f8ed
    sbc b
    ld [de], a
    push hl
    nop
    sub a
    ld de, $f8e5
    sub [hl]
    ld de, $ff80
    ld bc, $10a4
    rst $38
    ld sp, hl
    and e
    ld [de], a
    rst $30
    ld bc, $10a2
    rst $30
    ld sp, hl
    and c
    ld [de], a
    rst $20
    ld bc, $1141
    rst $20
    ld sp, hl
    ld b, b
    ld de, $01ef
    sbc a
    ld de, $f9ef
    sbc [hl]
    ld de, $fe80
    ld sp, hl
    and e
    ld [de], a
    add sp, $01
    ld b, c
    ld de, $f9e8
    ld b, b
    ld de, $f9f0
    sbc [hl]
    ld de, $0100
    xor b
    db $10
    ld hl, sp+$01
    and a
    db $10
    or $f9
    and [hl]
    ld [de], a
    ldh a, [rSB]
    and l
    ld de, $f880
    nop
    pop de
    db $10
    ld hl, sp-$08
    ret nc

    db $10
    ldh a, [rP1]
    rst $08
    ld de, $f8f0
    adc $12
    add sp, $00
    call $e812
    ld hl, sp-$34
    ld de, $fbe0
    rl d
    add b
    ld hl, sp+$00
    reti


    db $10
    ld hl, sp-$08
    ret c

    db $10
    ldh a, [rP1]
    rst $10
    ld de, $f8f0
    sub $11
    ldh [rP1], a
    jp nc, $e812

    inc b
    push de
    ld [de], a
    add sp, -$04
    call nc, $e811
    db $f4
    db $d3
    ld de, $fe80
    rst $38
    ld a, c
    db $10
    and $ff
    inc sp
    ld de, $f7e6
    ld [hl-], a
    ld de, $fff6
    rst $18
    db $10
    or $f7
    sbc $10
    rst $30
    rst $28
    db $dd
    ld [de], a
    xor $ff
    call c, $ee11
    rst $30
    db $db
    ld de, $efef
    jp c, $8012

    cp $ff
    ld a, c
    db $10
    db $fc
    rst $28
    ldh [c], a
    ld [de], a
    db $f4
    rst $28
    ldh [rNR12], a
    xor $ff
    and b
    ld de, $fff6
    rst $18
    db $10
    or $f7
    db $e3
    db $10
    xor $f7
    pop hl
    ld de, $ffe6
    inc sp
    ld de, $f7e6
    ld [hl-], a
    ld de, $e980
    rst $38
    inc sp
    ld de, $f7e9
    ld [hl-], a
    ld de, $00f1
    rst $20
    ld de, $f8f1
    and $11
    pop af
    ldh a, [$ffe5]
    ld [de], a
    ld bc, $ebef
    ld [de], a
    ld sp, hl
    nop
    ld [$f910], a
    ld hl, sp-$17
    db $10
    ld sp, hl
    ldh a, [$ffe8]
    ld [de], a
    add b
    ld hl, sp-$08
    pop de
    jr nc, @-$06

    nop
    ret nc

    jr nc, @-$0e

    ld hl, sp-$31
    ld sp, $00f0
    adc $32
    add sp, -$08
    call $e832
    nop

jr_00c_609f:
    call z, $e031
    db $fd

jr_00c_60a3:
    swap d
    add b
    ld hl, sp-$08
    reti


    jr nc, jr_00c_60a3

    nop
    ret c

    jr nc, jr_00c_609f

    ld hl, sp-$29
    ld sp, $00f0
    sub $31
    ldh [$fff8], a
    jp nc, $e832

    db $f4
    push de
    ld [hl-], a
    add sp, -$04
    call nc, $e831
    inc b
    db $d3
    ld sp, $fe80
    ld sp, hl
    ld a, c
    jr nc, @-$18

    ld sp, hl
    inc sp

jr_00c_60ce:
    ld sp, $01e6
    ld [hl-], a
    ld sp, $f9f6
    rst $18
    jr nc, jr_00c_60ce

    ld bc, $30de
    rst $30
    add hl, bc
    db $dd
    ld [hl-], a
    xor $f9
    call c, $ee31
    ld bc, $31db
    rst $28
    add hl, bc
    jp c, $8032

    cp $f9
    ld a, c
    jr nc, @-$02

    add hl, bc
    ldh [c], a
    ld [hl-], a
    db $f4
    add hl, bc
    ldh [rWave_2], a
    xor $f9
    and b
    ld sp, $f9f6
    rst $18
    jr nc, @-$08

    ld bc, $30e3
    xor $01
    pop hl
    ld sp, $f9e6
    inc sp
    ld sp, $01e6
    ld [hl-], a
    ld sp, $e980
    ld sp, hl
    inc sp
    ld sp, $01e9
    ld [hl-], a
    ld sp, $f8f1
    rst $20
    ld sp, $00f1
    and $31
    pop af
    ld [$32e5], sp
    ld bc, $eb09
    jr nc, @-$05

    ld hl, sp-$16
    jr nc, @-$05

    nop
    jp hl


    jr nc, @-$05

    ld [$32e8], sp
    add b
    jp hl


    ld sp, hl
    ldh a, [rNR11]
    ld sp, hl
    ld bc, $10af
    ld sp, hl
    ld sp, hl
    xor [hl]
    db $10
    pop af
    ld bc, $11ad
    pop af
    ld sp, hl
    xor h
    ld de, $01eb
    xor e
    ld de, $01e3
    xor d
    ld [de], a
    pop hl
    ld sp, hl
    xor c
    ld [de], a
    add b
    ld sp, hl
    ld bc, $10b7
    ld sp, hl
    ld sp, hl
    or [hl]
    db $10
    pop af
    ld bc, $11b5
    pop af
    ld sp, hl
    or h
    ld de, $00e9
    or e
    ld [de], a
    jp hl


    ld hl, sp-$4e
    ld de, $01e1
    or c
    ld [de], a
    pop hl
    ld sp, hl
    or b
    db $10
    add b
    ld a, [$bf01]
    ld [de], a
    ld a, [$bef9]
    ld [de], a
    ldh a, [c]
    ld bc, $10bd
    ldh a, [c]
    ld sp, hl
    cp h
    db $10
    ld [$bb01], a
    ld de, $f9ea
    cp d
    ld de, $01e2
    cp c
    ld de, $f9e2
    cp b
    ld de, $fa80
    ld bc, $12c7
    ld a, [$c6f9]
    ld [de], a
    ldh a, [c]
    ld bc, $10c5
    ldh a, [c]
    ld sp, hl
    call nz, $ea10
    ld bc, $11c3
    ld [$c2f9], a
    ld de, $01e2
    pop bc
    ld de, $f9e2
    ret nz

    ld de, $e780
    rst $38
    inc e
    ld de, $f7e7
    dec de
    ld de, $00ff
    jp z, $f710

    ld bc, $10c9
    rst $30
    ld sp, hl
    ret z

    db $10
    rst $28
    ld bc, $11f2
    rst $28
    ld sp, hl
    pop af
    ld de, $ff80
    ld h, c
    jr nz, jr_00c_623d

    ld b, l
    ld h, d
    ld h, d
    ld h, d
    ld a, a
    ld h, d
    sbc h
    ld h, d
    cp l
    ld h, d
    ldh [c], a
    ld h, d
    inc bc
    ld h, e
    inc h
    ld h, e
    ld b, l
    ld h, e
    ld h, [hl]
    ld h, e
    adc e
    ld h, e
    xor h
    ld h, e
    call $ee63
    ld h, e
    dec bc
    ld h, h
    inc l
    ld h, h
    ld c, c
    ld h, h
    ld h, d
    ld h, h
    ld hl, sp+$00
    rlca
    db $10
    ld hl, sp-$08
    ld b, $10
    ldh a, [rP1]
    dec b
    ld de, $f8f0
    inc b
    ld [de], a
    add sp, -$01
    inc bc
    ld de, $f7e8
    ld [bc], a
    ld [de], a
    ldh [$fff8], a
    ld bc, $d812
    ld hl, sp+$00
    ld [de], a
    add b
    ld hl, sp+$00
    ld l, b
    db $10
    ld hl, sp-$08
    ld h, a
    db $10
    reti


    ld hl, sp+$00
    ld [de], a
    pop af
    nop
    dec c
    ld de, $f8f1
    inc c
    ld de, $ffe9
    dec bc
    ld de, $f7e9
    ld a, [bc]
    ld [de], a
    pop hl

jr_00c_623d:
    nop
    add hl, bc
    db $10
    pop hl
    ld hl, sp+$08
    ld [de], a
    add b
    nop
    ei
    inc d
    ld [de], a
    ld hl, sp+$00
    inc de
    db $10
    ld hl, sp-$08
    ld [de], a
    db $10
    ldh a, [rP1]
    ld de, $f011
    ld hl, sp+$10
    ld de, $00e8
    rrca
    ld de, $f8e8
    ld c, $11
    add b
    nop
    ld a, [$121b]
    ld hl, sp+$00
    ld a, [de]
    ld [de], a
    ld hl, sp-$08
    add hl, de
    ld [de], a
    ldh a, [rP1]
    jr jr_00c_6283

    ldh a, [$fff8]
    rla
    ld de, $00e8
    ld d, $11
    add sp, -$08
    dec d
    ld de, $0080
    ld a, [$121b]

jr_00c_6283:
    ld hl, sp+$00
    ld a, [de]
    ld [de], a
    ld hl, sp-$08
    add hl, de
    ld [de], a
    add sp, $00
    ld d, $11
    add sp, -$08
    dec d
    ld de, $00f0
    dec e
    ld de, $f8f0
    inc e
    ld de, $f880
    nop
    dec h
    db $10
    ld hl, sp-$08
    inc h
    db $10
    ldh a, [rP1]
    inc hl
    ld de, $f8f0
    ld [hl+], a
    ld de, $00e8
    ld hl, $e812
    ld hl, sp+$20
    ld [de], a
    ldh [rP1], a
    rra
    ld [de], a
    ldh [$fff8], a
    ld e, $12
    add b
    ldh [rSB], a
    rra
    ld [de], a
    ldh [$fff9], a
    ld e, $12
    add sp, $04
    jp hl


    ld [de], a
    add sp, -$04
    add sp, $12
    add sp, -$0c
    rst $20
    ld de, $fff0
    daa
    ld de, $f7f0
    ld h, $11
    ld hl, sp-$01
    add hl, hl
    db $10
    ld hl, sp-$09
    jr z, @+$12

    add b
    ld hl, sp-$01
    ld sp, $f810
    rst $30
    jr nc, jr_00c_62fc

    ld hl, sp-$11
    cpl
    ld [de], a
    ldh a, [rIE]
    ld l, $11
    ldh a, [$fff7]
    dec l
    ld [de], a
    ldh a, [$ffef]
    inc l
    ld [de], a
    add sp, -$01

jr_00c_62fc:
    dec hl
    ld de, $f7e8
    ld a, [hl+]
    ld de, $f880
    rst $38
    add hl, sp
    db $10
    ld hl, sp-$09
    jr c, jr_00c_631d

    ld hl, sp-$11
    scf
    ld [de], a
    ldh a, [rIE]
    ld [hl], $11
    ldh a, [$fff7]
    dec [hl]
    ld [de], a
    ldh a, [$ffef]
    inc [hl]
    ld [de], a
    add sp, -$01

jr_00c_631d:
    inc sp
    ld de, $f7e8
    ld [hl-], a
    ld de, $e880
    rst $38
    db $eb
    ld de, $f7e8
    ld [$f011], a
    rst $28
    inc [hl]
    ld [de], a
    ldh a, [rIE]
    dec sp
    ld de, $f7f0
    ld a, [hl-]
    ld [de], a
    ld hl, sp-$11
    scf
    ld [de], a
    ld hl, sp-$01

jr_00c_633e:
    dec a
    db $10
    ld hl, sp-$09

jr_00c_6342:
    inc a
    ld [de], a
    add b
    ld hl, sp-$08
    dec h
    jr nc, jr_00c_6342

    nop
    inc h
    jr nc, jr_00c_633e

    ld hl, sp+$23
    ld sp, $00f0
    ld [hl+], a
    ld sp, $f8e8
    ld hl, $e832
    nop
    jr nz, @+$34

    ldh [$fff8], a
    rra
    ld [hl-], a
    ldh [rP1], a
    ld e, $32
    add b
    ldh [$fff7], a
    rra
    ld [hl-], a
    ldh [rIE], a
    ld e, $32
    add sp, -$0c
    jp hl


    ld [hl-], a
    add sp, -$04
    add sp, $32
    add sp, $04
    rst $20
    ld sp, $f9f0
    daa
    ld sp, $01f0
    ld h, $31
    ld hl, sp-$07
    add hl, hl
    jr nc, @-$06

    ld bc, $3028
    add b
    ld hl, sp-$07
    ld sp, $f830
    ld bc, $3230
    ld hl, sp+$09
    cpl
    ld [hl-], a
    ldh a, [$fff9]
    ld l, $31
    ldh a, [rSB]
    dec l
    ld [hl-], a
    ldh a, [$ff09]
    inc l
    ld [hl-], a
    add sp, -$07
    dec hl
    ld sp, $01e8

jr_00c_63a9:
    ld a, [hl+]
    ld sp, $f880
    ld sp, hl
    add hl, sp
    jr nc, jr_00c_63a9

    ld bc, $3238
    ld hl, sp+$09
    scf
    ld [hl-], a
    ldh a, [$fff9]
    ld [hl], $31
    ldh a, [rSB]
    dec [hl]
    ld [hl-], a
    ldh a, [$ff09]
    inc [hl]
    ld [hl-], a
    add sp, -$07
    inc sp
    ld sp, $01e8
    ld [hl-], a
    ld sp, $e880
    ld sp, hl
    db $eb
    ld sp, $01e8
    ld [$f031], a
    add hl, bc
    inc [hl]
    ld [hl-], a
    ldh a, [$fff9]
    dec sp
    ld sp, $01f0
    ld a, [hl-]
    ld [hl-], a
    ld hl, sp+$09
    scf
    ld [hl-], a
    ld hl, sp-$07
    dec a
    jr nc, @-$06

    ld bc, $323c
    add b
    ld a, [$4401]
    db $10
    ld a, [$43f9]
    db $10
    ldh a, [c]
    ld bc, $1142
    ldh a, [c]
    ld sp, hl
    ld b, c
    ld de, $01e2
    ld a, $12
    ld [$4001], a
    ld de, $f9ea
    ccf
    ld de, $f880
    ld bc, $104b
    ld hl, sp-$07
    ld c, d
    db $10
    ret c

    ld bc, $1245
    add sp, -$07
    ccf
    ld de, $01e0
    ld b, [hl]
    ld [de], a
    add sp, $01
    ld b, a
    ld [de], a
    ldh a, [rSC]
    ld c, c
    ld [de], a
    ldh a, [$fffa]
    ld c, b
    ld de, $df80
    db $fd
    ld c, h
    db $10
    rst $30
    ld bc, $1052
    rst $30
    ld sp, hl
    ld d, c
    db $10
    rst $28
    ld bc, $1150
    rst $28
    ld sp, hl
    ld c, a
    ld de, $01e7
    ld c, [hl]
    ld de, $f9e7
    ld c, l
    ld de, $f780
    ld bc, $1058
    rst $30
    ld sp, hl
    ld d, a
    db $10
    rst $28
    ld bc, $1156
    rst $28
    ld sp, hl
    ld d, l
    ld de, $01e7
    ld d, h
    ld de, $f9e7
    ld d, e
    ld de, $e780
    ld bc, $1154
    rst $20
    ld sp, hl
    ld d, e
    ld de, $01f7
    ld e, h
    db $10
    rst $30
    ld sp, hl
    ld e, e
    db $10
    rst $28
    ld bc, $115a
    rst $28
    ld sp, hl
    ld e, c
    ld de, $8d80
    ld h, h
    sbc [hl]
    ld h, h
    pop de
    ld h, h
    ldh [c], a
    ld h, h
    pop de
    ld h, h
    xor a
    ld h, h
    ret nz

    ld h, h
    pop de
    ld h, h
    ldh [c], a
    ld h, h
    ldh a, [c]
    nop
    ld hl, $f211
    ld hl, sp+$20
    ld de, $00fa
    add h
    ld de, $f8fa
    add e
    ld de, $fb80
    nop
    add [hl]
    ld de, $f8fb
    add l
    ld de, $00f3
    ld hl, $f311
    ld hl, sp+$20
    ld de, $f280
    ld hl, sp+$21
    ld sp, $00f2
    jr nz, jr_00c_64e8

    ld a, [$84f8]
    ld sp, $00fa
    add e
    ld sp, $fb80
    ld hl, sp-$7a
    ld sp, $00fb
    add l
    ld sp, $f8f3
    ld hl, $f331
    nop
    jr nz, jr_00c_6501

    add b
    ldh a, [rP1]
    adc b
    ld de, $f8f0
    add a
    ld de, $00f8
    adc h
    ld de, $f8f8
    adc e
    ld de, $f880
    nop
    adc d
    ld de, $f8f8

jr_00c_64e8:
    adc c
    ld de, $00f0
    adc b
    ld de, $f8f0
    add a
    ld de, $1380
    ld h, l
    jr nc, jr_00c_655c

    ld l, d
    ld h, l
    ld l, d
    ld h, l
    add a
    ld h, l
    xor h
    ld h, l
    pop de
    ld h, l

jr_00c_6501:
    ldh a, [c]
    ld h, l
    inc de
    ld h, [hl]
    jr c, jr_00c_656d

    ld e, l
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    sbc a
    ld h, [hl]
    cp h
    ld h, [hl]
    reti


    ld h, [hl]
    ldh a, [c]
    ld h, [hl]
    ld hl, sp+$00
    or d
    db $10
    ld hl, sp-$08
    or c
    db $10
    ldh a, [rP1]
    or b
    ld de, $f8f0
    xor a
    db $10
    add sp, $00
    xor [hl]
    ld de, $f8e8
    xor l
    ld de, $f8e0
    xor h
    db $10
    add b
    inc bc
    ld sp, hl
    cp c
    db $10
    ei
    nop
    cp b
    db $10
    ei
    ld hl, sp-$49
    db $10
    di
    nop
    or [hl]
    ld de, $f8f3
    or l
    ld de, $00eb
    or h
    ld de, $f8eb
    or e
    ld de, $fc80
    nop
    push af
    db $10
    inc b
    ld sp, hl
    cp a
    db $10
    db $fc
    ld hl, sp-$42
    db $10
    db $ec
    nop
    cp e

jr_00c_655c:
    ld de, $f8ec
    cp d
    ld de, $00f4
    cp l
    ld de, $f8f4
    cp h
    ld de, $ec80
    nop
    cp e

jr_00c_656d:
    ld de, $f8ec
    cp d
    ld de, $f904
    call nz, $fc10
    nop
    jp $fc10


    ld hl, sp-$3e
    db $10
    db $f4
    nop
    pop bc
    ld de, $f8f4
    ret nz

    ld de, $f880
    nop
    call $f810
    ld hl, sp-$34
    db $10
    ldh a, [$ff08]
    rl b
    ldh a, [rP1]
    jp z, $f011

    ld hl, sp-$37
    ld de, $00e0
    push bc
    db $10
    add sp, $08
    ret z

    db $10
    add sp, $00
    rst $00
    ld de, $f8e8
    add $11
    add b
    ld a, [$d4fe]
    db $10
    ld a, [$d3f6]
    db $10
    ld a, [$d2ee]
    db $10
    ldh a, [c]
    cp $d1
    ld de, $f6f2
    ret nc

    ld de, $eef2
    rst $08
    db $10
    ld [$ceee], a
    db $10
    ld [$0dfe], a
    ld de, $f6ea
    inc c
    ld de, $fa80
    cp $d4
    db $10
    ld a, [$d9f6]
    db $10
    ld a, [$d8ee]
    db $10
    ldh a, [c]
    cp $d7
    ld de, $f6f2
    sub $11
    ldh a, [c]
    xor $d5
    db $10
    ld [$0dfe], a
    ld de, $f6ea
    inc c
    ld de, $f980
    cp $df
    db $10
    ld sp, hl
    or $de
    db $10
    ld sp, hl
    xor $dd
    db $10
    pop af
    cp $dc
    ld de, $f6f1
    db $db
    ld de, $eef1
    jp c, $e910

    cp $0d
    ld de, $f6e9
    inc c
    ld de, $f880

jr_00c_6614:
    ld sp, hl
    call $f830

jr_00c_6618:
    ld bc, $30cc
    ldh a, [$fff1]
    swap b
    ldh a, [$fff9]
    jp z, $f031

    ld bc, $31c9
    ldh [$fff9], a
    push bc
    jr nc, jr_00c_6614

    pop af
    ret z

    jr nc, jr_00c_6618

    ld sp, hl
    rst $00
    ld sp, $01e8
    add $31
    add b
    ld a, [$d20a]
    jr nc, @-$0c

    ld a, [bc]
    rst $08

jr_00c_663f:
    jr nc, @-$14

    ld a, [bc]
    adc $30
    ld a, [$d4fa]
    jr nc, @-$04

    ld [bc], a
    db $d3
    jr nc, jr_00c_663f

    ld a, [$31d1]
    ldh a, [c]
    ld [bc], a
    ret nc

    ld sp, $faea
    dec c
    ld sp, $02ea
    inc c
    ld sp, $fa80
    ld a, [bc]
    ret c

jr_00c_6660:
    jr nc, @-$0c

    ld a, [bc]
    push de
    jr nc, jr_00c_6660

    ld a, [$30d4]
    ld a, [$d902]
    jr nc, jr_00c_6660

    ld a, [$31d7]
    ldh a, [c]
    ld [bc], a
    sub $31
    ld [$0dfa], a
    ld sp, $02ea
    inc c
    ld sp, $f980
    ld a, [bc]
    db $dd
    jr nc, @-$0d

    ld a, [bc]
    jp c, $f930

    ld a, [$30df]
    ld sp, hl
    ld [bc], a
    sbc $30
    pop af
    ld a, [$31dc]
    pop af
    ld [bc], a
    db $db
    ld sp, $fae9
    dec c
    ld sp, $02e9
    inc c
    ld sp, $f880
    ld bc, $10e5
    ld hl, sp-$07
    db $e4
    db $10
    add sp, -$07
    sub l
    ld de, $01e0
    ldh [rNR10], a
    add sp, $01
    pop hl
    ld de, $01f0
    db $e3
    ld de, $f9f0
    ldh [c], a
    ld de, $f780
    ld bc, $10ec
    rst $30
    ld sp, hl
    db $eb
    db $10
    rst $28
    ld bc, $11ea
    rst $28
    ld sp, hl
    jp hl


    ld de, $01e7
    add sp, $11
    rst $20
    ld sp, hl
    rst $20
    ld de, $01df
    and $10
    add b
    rst $20
    ld bc, $1196
    rst $20
    ld sp, hl
    sub l
    ld de, $01f7
    ldh a, [rNR10]
    rst $30
    ld sp, hl
    rst $28
    db $10
    rst $28
    ld bc, $11ee
    rst $28
    ld sp, hl
    db $ed
    ld de, $e880
    ld bc, $1196
    add sp, -$07
    sub l
    ld de, $01f0
    ldh a, [c]
    ld de, $f9f0
    pop af
    ld de, $01f8
    db $f4
    db $10
    ld hl, sp-$07
    di
    db $10
    add b
    inc de
    ld h, a
    ld b, l
    ld h, a
    ld e, [hl]
    ld h, a
    inc l
    ld h, a
    ld hl, sp+$00
    sub d
    db $10
    ld hl, sp-$08
    sub c
    db $10
    ldh a, [rP1]
    sub b
    ld de, $f8f0
    adc a
    ld de, $00e8
    adc [hl]
    ld de, $f8e8
    adc l
    ld de, $f880
    ld bc, $1098
    ld hl, sp-$07
    sub a
    db $10
    ldh a, [rSB]
    sub [hl]
    ld de, $f9f0
    sub l
    ld de, $01e8
    sub h
    ld de, $f9e8
    sub e
    ld de, $ee80
    ldh a, [$ff9b]
    db $10
    ld hl, sp-$04
    sbc [hl]
    db $10
    ldh a, [rP1]
    sbc l
    ld de, $f8f0
    sbc h
    ld de, $00e8

jr_00c_6757:
    sbc d
    ld de, $f8e8

jr_00c_675b:
    sbc c
    ld de, $ee80
    add hl, bc
    sbc e
    jr nc, jr_00c_675b

    db $fd
    sbc [hl]
    jr nc, jr_00c_6757

    ld sp, hl
    sbc l
    ld sp, $01f0
    sbc h
    ld sp, $f9e8
    sbc d
    ld sp, $01e8
    sbc c
    ld sp, $af80
    ld h, a
    call z, $e967
    ld h, a
    ld a, [bc]
    ld l, b
    jp hl


    ld h, a
    ld a, [bc]
    ld l, b
    ld a, [bc]
    ld l, b
    dec hl
    ld l, b
    ld b, h
    ld l, b
    ld e, l
    ld l, b
    ld a, [hl]
    ld l, b
    ld e, l
    ld l, b
    ld a, [hl]
    ld l, b
    ld e, l
    ld l, b
    sbc a
    ld l, b
    cp b
    ld l, b
    pop de
    ld l, b
    ldh a, [c]
    ld l, b
    pop de
    ld l, b
    ldh a, [c]
    ld l, b
    pop de
    ld l, b
    inc de
    ld l, c
    jr nc, @+$6b

    ld c, l
    ld l, c
    ld h, [hl]
    ld l, c
    ld c, l
    ld l, c
    ld h, [hl]
    ld l, c
    ld c, l
    ld l, c
    ld hl, sp+$06
    and l
    ld [de], a
    ld hl, sp-$02
    and h
    db $10
    ld hl, sp-$0a
    and e
    db $10
    ldh a, [rSB]
    and d
    ld de, $f9f0
    and c
    ld de, $01e8
    and b
    ld de, $f9e8
    sbc a
    ld de, $ea80
    ld bc, $1163
    ld [$62f9], a
    ld de, $07f8
    xor d
    ld [de], a
    ld hl, sp-$01
    xor c
    db $10
    ld hl, sp-$09
    xor b
    db $10
    ldh a, [rSC]
    and a
    ld de, $faf0
    and [hl]
    ld de, $eb80
    rst $38
    ld h, e
    ld de, $f7eb
    ld h, d
    ld de, $09f0
    sub $10
    ld hl, sp+$07
    xor a
    ld [de], a
    ld hl, sp-$01
    xor [hl]
    db $10
    ld hl, sp-$09
    xor l
    db $10
    ldh a, [rSB]
    xor h
    ld de, $f9f0
    xor e
    ld de, $eb80
    rst $38
    ld h, e
    ld de, $f7eb
    ld h, d
    ld de, $07fb
    jp c, $fb12

    rst $38
    reti


    db $10
    ei
    rst $30
    or c
    db $10
    di
    ld hl, sp-$50
    ld de, $08f3
    ret c

    ld [de], a
    di
    nop
    rst $10
    ld de, $f980
    db $fd
    or a
    ld [de], a
    ld sp, hl
    push af
    or [hl]
    db $10
    pop af
    rst $38
    or l
    ld de, $f7f1
    or h
    ld de, $ffe9
    or e
    ld de, $f7e9
    or d
    ld de, $e980
    rst $38
    ld bc, $e911
    rst $30
    nop
    ld de, $fef9
    or a
    ld [de], a
    ld sp, hl
    or $ba
    db $10
    pop af
    rst $38
    cp c
    ld de, $f7f1
    cp b
    ld de, $ea80
    cp $01
    ld de, $f6ea
    nop
    ld de, $05fa
    ret nz

    ld [de], a
    ld a, [$bffd]
    db $10
    ld a, [$bef5]
    db $10
    ldh a, [c]
    ld b, $bd
    ld [de], a
    ldh a, [c]
    cp $bc
    ld de, $f6f2
    cp e
    ld de, $fa80
    dec b
    ret nz

    ld [de], a
    ld a, [$bffd]
    db $10
    ldh a, [c]
    ld b, $bd
    ld [de], a
    ldh a, [c]
    cp $bc
    ld de, $f5fa
    jp nz, $f210

    or $c1
    ld de, $feea
    ld bc, $ea11
    or $00
    ld de, $f980
    ei
    or a
    ld [hl-], a
    ld sp, hl
    inc bc
    or [hl]
    jr nc, @-$0d

    ld sp, hl
    or l
    ld sp, $01f1
    or h
    ld sp, $f9e9
    or e
    ld sp, $01e9
    or d
    ld sp, $e980
    ld sp, hl

jr_00c_68ba:
    ld bc, $e931
    ld bc, $3100
    ld sp, hl
    ld a, [$32b7]
    ld sp, hl
    ld [bc], a
    cp d
    jr nc, jr_00c_68ba

    ld sp, hl
    cp c
    ld sp, $01f1
    cp b
    ld sp, $ea80
    ld a, [$3101]
    ld [$0002], a

jr_00c_68d8:
    ld sp, $f3fa
    ret nz

jr_00c_68dc:
    ld [hl-], a
    ld a, [$bffb]
    jr nc, jr_00c_68dc

    inc bc
    cp [hl]
    jr nc, jr_00c_68d8

    ldh a, [c]
    cp l
    ld [hl-], a
    ldh a, [c]
    ld a, [$31bc]

jr_00c_68ed:
    ldh a, [c]
    ld [bc], a
    cp e
    ld sp, $fa80
    di
    ret nz

    ld [hl-], a
    ld a, [$bffb]

jr_00c_68f9:
    jr nc, jr_00c_68ed

    ldh a, [c]
    cp l
    ld [hl-], a
    ldh a, [c]
    ld a, [$31bc]
    ld a, [$c203]
    jr nc, jr_00c_68f9

    ld [bc], a
    pop bc
    ld sp, $faea
    ld bc, $ea31
    ld [bc], a
    nop
    ld sp, $e980
    ld bc, $1149
    jp hl


    ld sp, hl
    ld c, b
    ld de, $0cf8
    rst $00
    ld [de], a
    ld hl, sp+$04
    add $12
    ld hl, sp-$04
    push bc
    db $10
    ldh a, [rSB]
    call nz, $f011
    ld sp, hl
    jp $8011


    ld hl, sp+$0b
    rst $00
    ld [de], a
    ld hl, sp+$03
    call $f812
    ei
    call z, $f010
    nop
    rl c
    ldh a, [$fff8]
    jp z, $e811

    ld bc, $11c9
    add sp, -$07
    ret z

    ld de, $e980
    ld [bc], a
    rst $08
    ld de, $fae9
    adc $11
    pop af
    ld [bc], a
    pop de
    ld de, $faf1
    ret nc

    ld de, $02f9
    db $d3
    ld [de], a
    ld sp, hl
    ld a, [$10d2]
    add b
    pop af
    ld [bc], a
    pop de
    ld de, $02e9
    rst $08
    ld de, $fae9
    adc $11
    ld sp, hl
    ld [bc], a
    db $d3
    ld [de], a
    pop af
    ld a, [$11d4]
    ld sp, hl
    ld a, [$10d5]
    add b
    sub c
    ld l, c
    xor [hl]
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    sub c
    ld l, c
    nop
    nop
    db $fc
    db $10
    ld hl, sp+$00
    ldh [rNR10], a
    ld hl, sp-$08
    rst $18
    db $10
    ldh a, [rP1]
    sbc $11
    ldh a, [$fff8]
    db $dd
    ld de, $00e8
    call c, $e811
    ld hl, sp-$25
    ld de, $0080
    rst $38
    db $fd
    db $10
    ld hl, sp+$08
    add sp, $10
    ld hl, sp+$00
    rst $20
    db $10
    ld hl, sp-$08
    and $10
    ldh a, [$ff08]
    push hl
    db $10
    ldh a, [rP1]
    db $e4
    db $10
    ldh a, [$fff8]
    db $e3
    db $10
    add sp, $00
    ldh [c], a
    ld de, $f8e8
    pop hl
    ld de, $e080
    rst $38
    jp hl


    db $10
    add sp, $08
    db $ec
    db $10
    add sp, $00
    db $eb
    db $10
    add sp, -$08
    ld [$f010], a
    ld [$10ef], sp
    ldh a, [rP1]
    xor $11
    ldh a, [$fff8]
    db $ed
    ld de, $08f8
    ldh a, [c]
    db $10
    ld hl, sp+$00
    pop af
    db $10
    ld hl, sp-$08
    ldh a, [rNR10]
    add b
    ldh [rIE], a
    jp hl


    db $10
    add sp, $08
    push af
    db $10
    add sp, $00
    db $f4
    db $10
    add sp, -$08
    di
    db $10
    ldh a, [$ff08]
    ld hl, sp+$10
    ldh a, [rP1]
    rst $30
    ld de, $f8f0
    or $11
    ld hl, sp+$08
    ei
    db $10
    ld hl, sp+$00
    ld a, [$f810]
    ld hl, sp-$07
    db $10
    add b
    ld h, [hl]
    ld l, d
    ld c, l
    ld l, d
    ld a, a
    ld l, d
    ld c, l
    ld l, d
    cp l
    ld l, d
    sbc b
    ld l, d
    ldh [c], a
    ld l, d
    sbc b
    ld l, d
    inc l
    ld l, e
    rlca
    ld l, e
    ld d, c
    ld l, e
    rlca
    ld l, e
    sub a
    ld l, e
    halt
    ld l, e
    cp b
    ld l, e
    halt
    ld l, e
    ld c, l
    ld l, d
    sbc b
    ld l, d
    rlca
    ld l, e
    halt
    ld l, e
    ld hl, sp+$00
    dec b
    ld [de], a
    ld hl, sp-$08
    inc b
    ld [de], a
    ldh a, [rP1]
    inc bc
    ld [de], a
    ldh a, [$fff8]
    ld [bc], a
    ld [de], a
    add sp, $00
    ld bc, $e811
    ld hl, sp+$00
    ld de, $ef80
    nop
    inc bc
    ld [de], a
    rst $28
    ld hl, sp+$02
    ld [de], a
    rst $20
    nop
    ld bc, $e711
    ld hl, sp+$00
    ld de, $00f7
    rlca
    ld [de], a
    rst $30
    ld hl, sp+$06
    ld [de], a
    add b
    rst $28
    nop
    inc bc
    ld [de], a
    rst $28
    ld hl, sp+$02
    ld [de], a
    rst $20
    nop
    ld bc, $e711
    ld hl, sp+$00
    ld de, $00f7
    add hl, bc
    ld [de], a
    rst $30
    ld hl, sp+$08
    ld [de], a
    add b
    ld sp, hl
    cp $20
    db $10
    ld sp, hl
    ld hl, sp+$1f
    ld [de], a
    ld sp, hl
    ldh a, [rNR34]
    ld [de], a
    pop af
    nop
    dec e
    ld de, $f8f1
    inc e
    ld [de], a
    pop af
    ldh a, [rNR31]
    ld [de], a
    jp hl


    ld [bc], a
    ld a, [de]
    ld de, $fae9
    add hl, de
    ld de, $f2e9
    jr @+$14

    add b
    add sp, $02
    ld a, [de]
    ld de, $fae8
    add hl, de
    ld de, $f2e8
    jr jr_00c_6adb

    ldh a, [rP1]
    dec e
    ld de, $f8f0
    inc e
    ld [de], a
    ldh a, [$fff0]
    dec de
    ld [de], a
    ld hl, sp-$10
    ld e, $12
    ld hl, sp+$00

jr_00c_6adb:
    inc h
    db $10
    ld hl, sp-$08
    inc hl
    ld [de], a
    add b
    ld hl, sp-$10
    ld e, $12
    ldh a, [rP1]
    dec e
    ld de, $f8f0
    inc e
    ld [de], a
    ldh a, [$fff0]
    dec de
    ld [de], a
    ld hl, sp-$02
    ld [hl+], a
    db $10
    ld hl, sp-$08
    ld hl, $e812
    ld [bc], a
    ld a, [de]
    ld de, $fae8
    add hl, de
    ld de, $f2e8
    jr @+$14

    add b
    ld sp, hl
    ld a, [$3020]
    ld sp, hl
    nop
    rra
    ld [hl-], a
    ld sp, hl
    ld [$321e], sp
    pop af
    ld hl, sp+$1d
    ld sp, $00f1
    inc e
    ld [hl-], a
    pop af
    ld [$321b], sp
    jp hl


    or $1a
    ld sp, $fee9
    add hl, de
    ld sp, $06e9
    jr jr_00c_6b5d

    add b
    add sp, -$0a
    ld a, [de]
    ld sp, $fee8
    add hl, de
    ld sp, $06e8
    jr jr_00c_6b6a

    ldh a, [$fff8]
    dec e
    ld sp, $00f0
    inc e
    ld [hl-], a
    ldh a, [$ff08]
    dec de
    ld [hl-], a
    ld hl, sp+$08
    ld e, $32
    ld hl, sp-$08
    inc h
    jr nc, @-$06

    nop
    inc hl
    ld [hl-], a
    add b
    ld hl, sp+$08
    ld e, $32
    ldh a, [$fff8]
    dec e
    ld sp, $00f0
    inc e
    ld [hl-], a

jr_00c_6b5d:
    ldh a, [$ff08]
    dec de
    ld [hl-], a
    ld hl, sp-$06
    ld [hl+], a
    jr nc, @-$06

    nop
    ld hl, $e832

jr_00c_6b6a:
    or $1a
    ld sp, $fee8
    add hl, de
    ld sp, $06e8
    jr @+$34

    add b
    ld a, [$1101]
    db $10
    ld a, [$10f9]
    db $10
    ldh a, [c]
    ld bc, $110f
    ldh a, [c]
    ld sp, hl
    ld c, $11
    ld [$0d01], a
    ld de, $f9ea
    inc c
    ld de, $01e2
    dec bc
    ld [de], a
    ldh [c], a
    ld sp, hl
    ld a, [bc]
    ld [de], a
    add b
    pop af
    ld bc, $110f
    ld sp, hl
    ld bc, $1014
    ld sp, hl
    ld sp, hl
    inc de
    db $10
    pop af
    ld sp, hl
    ld [de], a
    ld de, $01e9
    dec c
    ld de, $f9e9
    inc c
    ld de, $01e1
    dec bc
    ld [de], a
    pop hl
    ld sp, hl
    ld a, [bc]
    ld [de], a
    add b
    pop af
    ld bc, $110f
    ld sp, hl
    ld bc, $1017
    ld sp, hl
    ld sp, hl
    ld d, $10
    pop af
    ld sp, hl
    dec d
    ld de, $01e9
    dec c
    ld de, $f9e9
    inc c
    ld de, $01e1
    dec bc
    ld [de], a
    pop hl
    ld sp, hl
    ld a, [bc]
    ld [de], a
    add b
    ld a, [de]
    ld l, h
    ld bc, $336c
    ld l, h
    ld bc, $716c
    ld l, h
    ld c, h
    ld l, h
    sub [hl]
    ld l, h
    ld c, h
    ld l, h
    ldh [$ff6c], a
    cp e
    ld l, h
    dec b
    ld l, l
    cp e
    ld l, h
    ld c, e
    ld l, l
    ld a, [hl+]
    ld l, l
    ld l, h
    ld l, l
    ld a, [hl+]
    ld l, l
    ld bc, $4c6c
    ld l, h
    cp e
    ld l, h
    ld a, [hl+]
    ld l, l
    ld hl, sp+$00
    jr c, jr_00c_6c17

    ld hl, sp-$08
    scf
    ld [de], a
    ldh a, [rP1]
    ld [hl], $12
    ldh a, [$fff8]
    dec [hl]
    ld [de], a
    add sp, $00
    inc [hl]
    ld de, $f8e8

jr_00c_6c17:
    inc sp
    ld de, $f780
    nop
    ld a, [hl-]
    ld [de], a
    rst $30
    ld hl, sp+$39
    ld [de], a
    rst $28
    nop
    ld [hl], $12
    rst $28
    ld hl, sp+$35
    ld [de], a
    rst $20
    nop
    inc [hl]
    ld de, $f8e7
    inc sp
    ld de, $f780
    nop
    inc a
    ld [de], a
    rst $30
    ld hl, sp+$3b
    ld [de], a
    rst $28
    nop
    ld [hl], $12
    rst $28
    ld hl, sp+$35
    ld [de], a
    rst $20
    nop
    inc [hl]
    ld de, $f8e7
    inc sp
    ld de, $f980
    cp $20
    db $10
    ld sp, hl
    db $fc
    ld l, $10
    ld sp, hl
    db $f4
    dec l
    ld [de], a
    pop af
    ld hl, sp+$2c
    ld [de], a
    pop af
    ldh a, [$ff2b]
    ld [de], a
    pop af
    nop
    dec e
    ld de, $02e9
    ld a, [de]
    ld de, $fae9
    ld a, [hl+]
    ld de, $f2e9
    add hl, hl
    ld [de], a
    add b
    ld hl, sp-$04
    cpl
    db $10
    ld hl, sp+$04
    jr nc, @+$12

    ld hl, sp-$0c
    dec l
    ld [de], a
    ldh a, [$fff8]
    inc l
    ld [de], a
    ldh a, [$fff0]
    dec hl
    ld [de], a
    ldh a, [rP1]
    dec e
    ld de, $02e8
    ld a, [de]
    ld de, $fae8
    ld a, [hl+]
    ld de, $f2e8
    add hl, hl
    ld [de], a
    add b
    ld hl, sp+$04
    ld [hl-], a
    db $10
    ld hl, sp-$04
    ld sp, $f810
    db $f4
    dec l
    ld [de], a
    ldh a, [$fff8]
    inc l
    ld [de], a
    ldh a, [$fff0]
    dec hl
    ld [de], a
    ldh a, [rP1]
    dec e
    ld de, $02e8
    ld a, [de]
    ld de, $fae8
    ld a, [hl+]
    ld de, $f2e8
    add hl, hl
    ld [de], a
    add b
    ld sp, hl
    ld a, [$3020]
    ld sp, hl
    db $fc
    ld l, $30
    ld sp, hl
    inc b
    dec l
    ld [hl-], a
    pop af
    nop
    inc l
    ld [hl-], a
    pop af
    ld [$322b], sp
    pop af
    ld hl, sp+$1d
    ld sp, $f6e9
    ld a, [de]
    ld sp, $fee9
    ld a, [hl+]
    ld sp, $06e9

jr_00c_6cdd:
    add hl, hl
    ld [hl-], a
    add b
    ld hl, sp-$04
    cpl
    jr nc, jr_00c_6cdd

    db $f4
    jr nc, jr_00c_6d18

    ld hl, sp+$04
    dec l
    ld [hl-], a
    ldh a, [rP1]
    inc l
    ld [hl-], a
    ldh a, [$ff08]
    dec hl
    ld [hl-], a
    ldh a, [$fff8]
    dec e
    ld sp, $f6e8
    ld a, [de]
    ld sp, $fee8
    ld a, [hl+]
    ld sp, $06e8

jr_00c_6d02:
    add hl, hl
    ld [hl-], a
    add b
    ld hl, sp-$0c
    ld [hl-], a
    jr nc, jr_00c_6d02

    db $fc
    ld sp, $f830
    inc b
    dec l
    ld [hl-], a
    ldh a, [rP1]
    inc l
    ld [hl-], a
    ldh a, [$ff08]
    dec hl

jr_00c_6d18:
    ld [hl-], a
    ldh a, [$fff8]
    dec e
    ld sp, $f6e8
    ld a, [de]
    ld sp, $fee8
    ld a, [hl+]
    ld sp, $06e8
    add hl, hl
    ld [hl-], a
    add b
    ldh a, [c]
    ld bc, $110f
    ldh a, [c]
    ld sp, hl
    ld c, $11
    ld a, [$1101]
    db $10
    ld a, [$10f9]
    db $10
    ld [$2801], a
    ld de, $f9ea
    daa
    ld de, $01e2
    ld h, $12
    ldh [c], a
    ld sp, hl
    dec h
    ld [de], a
    add b
    pop af
    ld sp, hl
    ld [de], a
    ld de, $01f9
    inc d
    db $10
    ld sp, hl
    ld sp, hl
    inc de
    db $10
    pop af
    ld bc, $110f
    jp hl


    ld bc, $1128
    jp hl


    ld sp, hl
    daa
    ld de, $01e1
    ld h, $12
    pop hl
    ld sp, hl
    dec h
    ld [de], a
    add b
    pop af
    ld sp, hl
    dec d
    ld de, $01f9
    rla
    db $10
    ld sp, hl
    ld sp, hl
    ld d, $10
    pop af
    ld bc, $110f
    jp hl


    ld bc, $1128
    jp hl


    ld sp, hl
    daa
    ld de, $01e1
    ld h, $12
    pop hl
    ld sp, hl
    dec h
    ld [de], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    rlca
    ld e, $32
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rlca
    jr z, @+$32

    rst $28
    ld [hl+], a
    inc l
    dec l
    ld hl, $ef1e
    inc e
    jr z, jr_00c_6dd5

    dec e
    ld [hl+], a
    dec l
    ld [hl+], a
    jr z, jr_00c_6ddb

    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr z, @+$21

    rst $28
    dec l
    ld hl, $ef1e
    rlca
    jr z, jr_00c_6dea

    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc bc
    jr z, @+$20

jr_00c_6dd5:
    inc l
    rst $28
    ld [hl+], a
    dec l
    rst $28
    rst $28

jr_00c_6ddb:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $01
    inc bc
    ld a, [bc]
    ld b, b
    ld c, h
    nop
    ld [bc], a

jr_00c_6dea:
    ld a, l
    nop
    nop
    add hl, hl
    dec h
    jr z, jr_00c_6e21

    rst $28
    jr nc, jr_00c_6e12

    dec h
    dec h
    ld b, c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_00c_6e04

    ld [de], a
    rst $28
    rst $28
    rst $28

jr_00c_6e04:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop

jr_00c_6e12:
    nop
    nop
    ld bc, $007d
    nop
    rlca
    ld e, $ef
    ld hl, $ef1e
    ld hl, $8e1e

jr_00c_6e21:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [$26ef], sp
    ld a, [de]
    dec e
    ld e, $ef
    ld [hl+], a
    dec l
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$1aef], sp
    ld h, $ef
    jr nz, jr_00c_6e6f

    ld a, [de]
    dec e
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    rst $28
    jr nc, jr_00c_6e7d

    dec hl
    inc h
    ld [hl+], a
    daa
    jr nz, jr_00c_6ea7

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    rrca

jr_00c_6e6f:
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    dec h
    ld e, $2d
    rst $28
    ld h, $1e
    rst $28
    rst $28

jr_00c_6e7d:
    rst $28
    dec de
    jr z, @+$2d

    dec hl
    jr z, @+$32

    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    rst $28
    ld h, $1a
    inc h
    ld e, $ef
    ld [hl+], a
    dec l

jr_00c_6ea7:
    rst $28
    rst $28
    ld e, $2f
    ld e, $27
    rst $28
    inc l
    ld hl, $2b1a
    add hl, hl
    ld e, $2b
    ld b, b
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc e
    jr z, jr_00c_6ef4

    ld e, $ef
    dec de
    ld a, [de]
    inc e
    inc h
    ld [hl+], a
    daa
    rst $28
    ld [hl], $38
    rst $28
    ld hl, $2e28
    dec hl
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld c, $21
    adc [hl]
    rst $28
    dec l

jr_00c_6ef4:
    ld hl, $2d1a
    rst $28
    ld h, $1e
    ld a, [de]
    daa
    inc l
    rst $28
    rst $28
    ld [hl], $38
    rst $28
    ld hl, $2e28
    dec hl
    inc l
    rst $28
    ld a, [de]
    rra
    dec l
    ld e, $2b
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_6f19:
    nop
    ld [$2cef], sp
    dec l
    ld a, [de]
    dec hl
    dec l
    rst $28
    ld hl, $251e
    add hl, hl
    ld [hl+], a
    daa
    jr nz, jr_00c_6f19

    ld [hl-], a
    jr z, jr_00c_6f5b

    ld c, h
    rst $28
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_00c_6f64

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld de, $1a1e
    dec h
    dec h
    ld [hl-], a
    ld b, c
    ld b, b
    ld b, c
    rst $28
    inc c
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    inc h
    ld [hl+], a
    dec h
    dec h
    inc l

jr_00c_6f5b:
    rst $28
    ld h, $2e
    inc l
    dec l
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_6f64:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld hl, $2f1a
    ld e, $ef
    dec de
    ld e, $1c
    jr z, jr_00c_6fa0

    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    dec hl
    ld l, $2c
    dec l
    ld [hl-], a
    rst $28
    jr z, jr_00c_6fb3

    rst $28
    ld [hl-], a
    jr z, jr_00c_6fba

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec e
    jr z, jr_00c_6fc5

    ld c, e
    dec l

jr_00c_6fa0:
    rst $28
    inc h
    daa
    jr z, jr_00c_6fd5

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr nc, jr_00c_6fce

    ld a, [de]
    dec l
    rst $28
    ld [hl-], a
    jr z, jr_00c_6fe1

jr_00c_6fb3:
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    rst $28

jr_00c_6fba:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_6fc5:
    nop
    dec e
    jr z, jr_00c_6feb

    daa
    jr nz, @+$42

    rst $28
    rst $28

jr_00c_6fce:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_6fd5:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_6fe1:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop

jr_00c_6feb:
    nop
    nop
    ld bc, $007d
    nop
    rlca
    ld e, $25
    dec h
    jr z, @+$42

    rst $28
    jr jr_00c_7022

    ld l, $ef
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    dec l
    ld hl, $ef1e
    jr z, @+$32

    daa
    ld e, $2b
    rst $28
    jr z, jr_00c_702c

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_701b:
    nop
    dec l
    ld hl, $2c22
    rst $28
    dec hl

jr_00c_7022:
    ld a, [de]
    daa
    inc e
    ld hl, $ef41
    rst $28
    inc bc
    jr z, jr_00c_701b

jr_00c_702c:
    ld [hl-], a
    jr z, jr_00c_705d

    rst $28
    inc h
    daa
    jr z, jr_00c_7064

    rst $28
    ld hl, $3028
    rst $28
    ld [$e9ef], sp
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc h
    daa
    jr z, jr_00c_707b

    ld b, c
    rst $28
    rlca
    ld h, $26
    adc [hl]
    rst $28
    ld [hl+], a
    dec l
    rst $28
    ld [hl+], a
    inc l
    ld a, [de]
    rst $28
    add hl, hl
    ld [hl+], a
    ld e, $1c

jr_00c_705d:
    ld e, $ef
    jr z, jr_00c_7080

    rst $28
    inc e
    ld a, [de]

jr_00c_7064:
    inc h
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    rra
    jr z, jr_00c_70a0

    rst $28
    dec l
    ld hl, $ef1e
    rlca

jr_00c_707b:
    ld a, [de]
    dec hl
    cpl
    ld e, $2c

jr_00c_7080:
    dec l
    rst $28
    ld b, $28
    dec e
    dec e
    ld e, $2c
    inc l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld bc, $ef32

jr_00c_70a0:
    dec l
    ld hl, $ef1e
    jr nc, jr_00c_70c0

    ld [hl-], a
    adc [hl]
    rst $28
    dec e
    ld [hl+], a
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_00c_70de

    rst $28
    dec e
    dec hl
    jr z, jr_00c_70de

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    jp hl


    cp $01
    dec bc

jr_00c_70c0:
    ld b, $40
    ld c, h
    nop
    ld bc, $007d
    nop
    ld b, $28
    dec h
    dec e
    ld e, $27
    rst $28
    nop
    ld sp, $ef41
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_00c_70df

    ld [de], a
    rst $28
    rst $28

jr_00c_70de:
    rst $28

jr_00c_70df:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    ld c, $ef
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld a, l
    nop
    nop
    ld d, $28
    jr nc, jr_00c_7137

    rst $28
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    ld a, [de]
    daa
    rst $28
    ld hl, $4428
    daa
    ld e, $2c
    dec l
    rst $28
    add hl, hl
    ld e, $2b
    inc l
    jr z, jr_00c_7135

    rst $28
    ld [hl-], a
    jr z, jr_00c_7140

    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld a, [de]
    dec hl
    ld e, $40
    rst $28
    dec b
    jr z, jr_00c_7151

    rst $28
    ld [hl-], a
    jr z, jr_00c_7158

    dec hl
    rst $28
    rst $28
    rst $28
    ld hl, $2728
    ld e, $2c
    dec l
    ld [hl-], a

jr_00c_7135:
    adc [hl]
    rst $28

jr_00c_7137:
    ld [$30ef], sp
    ld [hl+], a
    dec h
    dec h
    jp hl


    cp $00

jr_00c_7140:
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr nz, jr_00c_716d

    cpl
    ld e, $ef
    ld [hl-], a
    jr z, jr_00c_717f

jr_00c_7151:
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28

jr_00c_7158:
    rst $28
    ld b, $28
    dec h
    dec e
    ld e, $27
    rst $28
    nop
    ld sp, $ef4c
    rst $28
    rst $28

jr_00c_7166:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_00c_716d:
    nop

jr_00c_716e:
    nop
    nop
    ld bc, $007d
    nop
    dec c
    jr z, jr_00c_7166

    daa
    ld e, $1e
    dec e
    rst $28
    dec l
    jr z, jr_00c_716e

jr_00c_717f:
    add hl, hl
    ld a, [de]
    ld [hl-], a
    rst $28
    rst $28
    ld h, $1e
    rst $28
    rra
    jr z, jr_00c_71b5

    rst $28
    ld [hl+], a
    dec l
    ld c, h
    rst $28
    ld bc, $2d2e
    adc [hl]
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    add hl, hl
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc l
    dec l
    ld a, [de]
    ld [hl-], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld hl, $2728
    ld e, $2c
    dec l

jr_00c_71b5:
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld bc, $3333
    inc sp
    inc sp
    inc sp
    dec l
    ld b, b
    rst $28
    jr jr_00c_71fd

    ld l, $ef
    rst $28
    rst $28
    rst $28
    dec bc
    ld [hl+], a
    ld a, [de]
    dec hl
    ld b, b
    rst $28
    jr @+$2a

    ld l, $ef
    dec e
    jr z, @+$29

    ld c, e
    dec l
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr nz, jr_00c_7215

    dec l
    rst $28
    ld a, [de]
    daa
    ld [hl-], a
    dec l

jr_00c_71fd:
    ld hl, $2722
    jr nz, jr_00c_724e

    rst $28
    rst $28
    rst $28
    ld b, $0e
    ld c, $0e
    ld c, $03
    rst $28
    ld bc, $1818
    jr jr_00c_7215

    inc b
    inc b
    ld b, b
    rst $28

jr_00c_7215:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$1fef], sp
    jr z, @+$30

    daa
    dec e
    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    rst $28
    rst $28
    dec h
    ld a, [de]
    inc l
    dec l
    rst $28
    daa
    ld [hl+], a
    jr nz, jr_00c_725a

    dec l
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld a, l
    nop
    nop
    ld [$30ef], sp

jr_00c_724e:
    ld [hl+], a
    dec h
    dec h
    rst $28
    jr nz, jr_00c_7276

    cpl
    ld e, $ef
    ld [hl+], a
    dec l
    rst $28

jr_00c_725a:
    rst $28
    dec l
    jr z, @-$0f

    ld [hl-], a
    jr z, @+$30

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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop

jr_00c_7276:
    ld d, $1e
    dec h
    dec h
    adc [hl]
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    dec bc
    ld e, $2d
    inc l
    rst $28
    inc l
    ld l, $26
    ld h, $1a
    dec hl
    ld [hl+], a
    inc sp
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec l
    ld hl, $2c22
    rst $28
    ld [hl-], a
    ld e, $1a
    dec hl
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
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_00c_72c7:
    nop
    ld bc, $007d
    nop
    ld bc, $01ef
    ld l, $2d
    dec l
    jr z, jr_00c_72fb

    rst $28
    dec l
    jr z, jr_00c_72c7

    rst $28
    rst $28
    rst $28
    rst $28
    inc e
    ld a, [de]
    daa
    inc e
    ld e, $25
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


    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld d, $1e
    dec h
    dec h

jr_00c_72fb:
    rst $28
    dec e
    jr z, jr_00c_7326

    ld e, $40
    rst $28
    dec b
    jr z, jr_00c_7330

    rst $28
    rst $28
    ld [hl-], a
    jr z, jr_00c_7338

    dec hl
    rst $28
    ld hl, $2b1a
    dec e
    rst $28
    jr nc, jr_00c_733b

    dec hl
    inc h
    adc [hl]
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$30ef], sp
    ld [hl+], a

jr_00c_7326:
    dec h
    dec h
    rst $28
    jr nz, jr_00c_734d

    cpl
    ld e, $ef
    ld a, [de]
    rst $28

jr_00c_7330:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7338:
    rst $28
    rst $28
    rst $28

jr_00c_733b:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop

jr_00c_734d:
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rst $30
    ld hl, sp-$07

jr_00c_7357:
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec l
    jr z, jr_00c_7357

    ld [hl-], a
    jr z, @+$30

    ld c, h
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc de
    ld hl, $2c22
    rst $28
    ld [hl+], a
    dec l
    ld e, $26
    rst $28
    ld [hl+], a
    inc l
    rst $28
    jr z, jr_00c_73ae

    ld e, $28
    rra
    rst $28
    ld a, [de]
    rst $28
    inc h
    ld [hl+], a
    daa
    dec e
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$ef2d], sp
    ld [hl+], a
    inc l
    rst $28
    cpl
    ld e, $2b
    ld [hl-], a
    rst $28

jr_00c_73ae:
    cpl
    ld a, [de]
    dec h
    ld l, $44
    ld a, [de]
    dec de
    dec h
    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    ld [hl-], a
    jr z, jr_00c_73ed

    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr nc, jr_00c_73f2

    dec h
    dec h
    rst $28
    daa
    jr z, jr_00c_7403

    rst $28
    rra
    ld [hl+], a
    daa
    dec e
    rst $28
    rst $28
    rst $28
    ld a, [de]
    daa
    jr z, jr_00c_740f

    ld hl, $2b1e
    rst $28
    dec h
    ld [hl+], a
    inc h
    ld e, $ef
    ld [hl+], a
    dec l

jr_00c_73ed:
    jp hl


    cp $00
    nop
    nop

jr_00c_73f2:
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [hl+], a
    daa
    rst $28
    dec l
    ld hl, $ef1e
    jr nc, @+$2a

    dec hl

jr_00c_7403:
    dec h
    dec e
    ld b, b
    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_740f:
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_00c_7459

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    adc [hl]
    rst $28
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    inc e
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr z, jr_00c_7470

    rst $28
    ld [hl-], a
    jr z, jr_00c_7483

    dec hl
    inc l
    ld e, $25

jr_00c_7459:
    rra
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
    rst $38

jr_00c_7470:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr jr_00c_74a4

    ld l, $ef
    ld hl, $2f1a
    ld e, $ef

jr_00c_7483:
    dec e
    jr z, jr_00c_74ad

    ld e, $ef
    rst $28
    rst $28
    ld c, $0a
    adc [hl]
    rst $28
    rst $28
    rst $28
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


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_74a4:
    nop
    ld hl, $3028
    ld e, $2f
    ld e, $2b
    rst $28

jr_00c_74ad:
    dec l
    ld hl, $2d1a
    rst $28
    ld [hl+], a
    inc l
    rst $28
    daa
    jr z, jr_00c_74e5

    rst $28
    ld e, $27
    jr z, jr_00c_74eb

    jr nz, jr_00c_74e0

    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_74c4:
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$1def], sp
    jr z, jr_00c_74c4

    daa
    jr z, jr_00c_7505

    rst $28
    dec l
    ld hl, $2722
    inc h
    rst $28
    rst $28

jr_00c_74e0:
    ld [hl-], a
    jr z, jr_00c_7511

    rst $28
    ld a, [de]

jr_00c_74e5:
    dec hl
    ld e, $ef
    dec hl
    ld e, $1a

jr_00c_74eb:
    dec e
    ld [hl-], a

jr_00c_74ed:
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec l
    jr z, jr_00c_74ed

    dec l
    ld a, [de]
    inc h
    ld e, $ef
    jr z, jr_00c_7534

jr_00c_7505:
    ld e, $2b
    rst $28
    ld h, $32
    rst $28
    add hl, hl
    jr z, jr_00c_753a

    ld [hl+], a
    dec l
    ld [hl+], a

jr_00c_7511:
    jr z, jr_00c_753a

    rst $28
    ld [hl-], a
    ld e, $2d
    ld c, h
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [de], a
    ld e, $1e
    rst $28
    ld [hl-], a
    jr z, jr_00c_755b

    rst $28
    dec h
    ld a, [de]
    dec l
    ld e, $2b
    adc [hl]

jr_00c_7534:
    rst $28
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_00c_753a:
    dec l
    ld a, [de]
    inc h
    ld e, $ef
    inc e
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr z, jr_00c_7572

    rst $28
    ld [hl-], a
    jr z, jr_00c_7585

    dec hl
    inc l
    ld e, $25

jr_00c_755b:
    rra
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
    rst $38

jr_00c_7572:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld a, l
    nop
    nop
    dec c
    ld l, $26
    dec de
    ld e, $2b
    rst $28
    jr z, jr_00c_75a4

jr_00c_7585:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_00c_75bf

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
    ldh [$fffe], a
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]

jr_00c_75a4:
    ld a, l
    nop
    nop
    dec c
    ld l, $26
    dec de
    ld e, $2b
    rst $28
    jr z, jr_00c_75cf

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
    inc l

jr_00c_75bf:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$fffe], a
    nop
    nop
    nop
    nop
    nop
    nop
    or d

jr_00c_75cf:
    ld a, l
    nop
    nop
    ld [bc], a
    ld l, $25
    dec l
    ld [hl+], a
    cpl
    ld a, [de]
    dec l
    ld e, $1d
    rst $28
    nop
    dec hl
    ld e, $1a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$ffe1], a
    ldh [c], a
    db $e3
    rst $28
    ld bc, $2825
    inc e
    inc h
    inc l
    cp $00
    nop
    nop
    nop
    nop
    nop
    dec b
    ld a, [hl]
    nop
    nop
    inc de
    jr z, jr_00c_762d

    ld a, [de]
    dec h
    rst $28
    ld [de], a
    ld hl, $2922
    ld h, $1e
    daa
    dec l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$ffe1], a
    ldh [c], a
    db $e3
    db $e4
    rst $28
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    cp $00
    nop
    nop
    nop
    nop
    nop
    and $7d
    nop
    nop
    inc de
    ld hl, $ef1e
    ld [de], a

jr_00c_762d:
    ld [hl+], a
    inc sp
    ld e, $ef
    jr z, jr_00c_7652

    rst $28
    dec l
    ld hl, $ef1e
    ld hl, $2e28
    inc l
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
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld e, $7e
    nop

jr_00c_7652:
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    jr z, jr_00c_768a

    rst $28
    rlca
    jr z, jr_00c_769f

    inc l
    ld e, $fe
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00c_76fa

    nop
    nop
    inc bc
    ld e, $25
    ld l, $31
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_768a:
    rst $28
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
    jr z, @+$1f

    rst $28
    rlca
    jr z, jr_00c_76ca

    inc l
    ld e, $fe

jr_00c_769f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc d
    dec h
    dec l
    dec hl
    ld a, [de]
    ld b, h
    inc bc
    ld e, $25
    ld l, $31
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
    ld d, $28
    jr z, jr_00c_76e0

    rst $28
    rlca
    jr z, @+$30

    inc l
    ld e, $fe

jr_00c_76ca:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc c
    ld a, [de]
    ld sp, $2622
    ld l, $26
    rst $28
    ld [bc], a
    jr z, jr_00c_770f

    rst $28

jr_00c_76e0:
    rst $28
    rst $28
    rst $28
    rst $28
    nop
    rra
    rra
    ld e, $1c
    dec l
    ld [hl+], a
    jr z, jr_00c_7714

    rst $28
    ld de, $2d1a
    ld e, $ef
    jp hl


    cp $00
    nop
    nop
    nop
    nop

jr_00c_76fa:
    nop
    ld bc, $007d
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    call nz, $c6c5
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_770f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7714:
    rst $28
    rst $28
    ldh [$ffe1], a
    ldh [c], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld a, [hl]
    nop
    nop
    dec bc
    ld a, [de]
    dec l
    ld e, $2c
    dec l
    rst $28
    dec b
    ld l, $27
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
    rst $28
    rst $28
    rst $28
    rst $28
    or d
    or e
    or h
    or l
    or [hl]
    rst $28
    ld b, $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld a, [hl]
    nop
    nop
    rlca
    ld a, [de]
    add hl, hl
    add hl, hl
    ld [hl+], a
    daa
    ld e, $2c
    inc l
    rst $28
    ld [$1d27], sp
    ld e, $31
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$ffe1], a
    ldh [c], a
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec c
    ld l, $26
    dec de
    ld e, $2b
    rst $28
    jr z, jr_00c_77a8

    rst $28
    rrca
    jr z, jr_00c_77bd

    ld e, $2b
    rst $28
    ld bc, $2b1e
    dec hl
    ld [hl+], a
    ld e, $2c
    rst $28
    inc b
    ld a, [de]
    dec l
    ld e, $27
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]

jr_00c_77a8:
    ld a, [hl]
    nop
    nop
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_77bd:
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$ffe1], a
    rst $28
    ld bc, $2b1e
    dec hl
    ld [hl+], a
    ld e, $2c
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc de
    ld hl, $ef1e
    dec l
    ld [hl+], a
    ld h, $1e
    rst $28
    ld hl, $251e
    add hl, hl
    ld e, $1d
    rst $28
    dec de
    ld [hl-], a
    rst $28
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
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ldh [$ffe1], a
    ldh [c], a
    db $e3
    rst $28
    rlca
    jr z, @+$30

    dec hl
    inc l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    nop
    ld hl, $ef40
    jr jr_00c_785a

    ld l, $ef
    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    rst $28
    inc e
    ld a, [de]
    ld l, $20
    ld hl, $ef2d
    ld l, $29
    rst $28
    dec l
    jr z, @-$0f

    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld h, $1e
    ld b, b

jr_00c_785a:
    ld b, b
    rst $28
    jr @+$2a

    ld l, $ef
    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    jr nz, @+$2d

    jr z, jr_00c_789b

    daa
    rst $28
    ld [hl+], a
    daa
    dec l
    jr z, @-$0f

    ld a, [de]
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    rra
    ld [hl+], a
    daa
    ld e, $ef
    ld h, $1a
    daa
    rst $28
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc h
    ld e, $1e
    add hl, hl
    rst $28
    ld l, $29
    rst $28
    dec l

jr_00c_789b:
    ld hl, $ef1e
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr nz, jr_00c_78da

    ld e, $1a
    dec l
    rst $28
    jr nc, jr_00c_78dd

    dec hl
    inc h
    ld b, b
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld d, $28

jr_00c_78da:
    jr nc, jr_00c_791c

    rst $28

jr_00c_78dd:
    jr jr_00c_7907

    ld l, $ef
    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    ld h, $1a
    dec e
    ld e, $ef
    ld [hl+], a
    daa
    inc e
    dec hl
    ld e, $1d
    ld [hl+], a
    dec de
    dec h
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    add hl, hl
    dec hl
    jr z, jr_00c_7927

jr_00c_7907:
    dec hl
    ld e, $2c
    inc l
    adc [hl]
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    ld de, $271a
    inc e
    ld hl, $30ef
    jr z, @+$2d

jr_00c_791c:
    inc h
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_00c_7927:
    nop
    nop
    nop
    ld bc, $007d
    nop
    daa
    jr z, jr_00c_795e

    rst $28
    ld e, $1a
    inc l
    ld [hl-], a
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec de
    ld l, $2d
    rst $28
    ld [hl-], a
    jr z, jr_00c_7973

    rst $28
    ld hl, $2f1a
    ld e, $ef
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_7958:
    nop
    dec e
    jr z, jr_00c_7983

    ld e, $ef

jr_00c_795e:
    ld a, [de]
    daa
    rst $28
    ld a, [de]
    ld h, $1a
    inc sp
    ld [hl+], a
    daa
    jr nz, jr_00c_7958

    inc hl
    jr z, @+$1d

    ld b, b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7973:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_7983:
    nop
    rrca
    dec h
    ld e, $1a
    inc l
    ld e, $ef
    inc h
    ld e, $1e
    add hl, hl
    rst $28
    ld l, $29
    rst $28
    rst $28
    dec l
    ld hl, $ef1e
    jr nz, jr_00c_79c5

    ld e, $1a
    dec l
    rst $28
    jr nc, jr_00c_79c8

    dec hl
    inc h
    ld b, b
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc de
    ld hl, $ef1e
    jr nc, jr_00c_79d3

    ld a, [de]
    dec l
    ld hl, $2b1e
    rst $28
    ld [hl+], a
    inc l
    rst $28
    rst $28
    daa
    ld [hl+], a
    inc e
    ld e, $ef
    dec l

jr_00c_79c5:
    jr z, jr_00c_79e4

    ld a, [de]

jr_00c_79c8:
    ld [hl-], a
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop

jr_00c_79d3:
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$30ef], sp
    ld a, [de]
    inc l
    rst $28
    dec h
    jr z, @+$2a

    inc h

jr_00c_79e4:
    ld [hl+], a
    daa
    jr nz, @-$0f

    rst $28
    rst $28
    rra
    jr z, jr_00c_7a18

    jr nc, jr_00c_7a09

    dec hl
    dec e
    rst $28
    dec l
    jr z, jr_00c_79e4

    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld hl, $2f1a
    ld [hl+], a

jr_00c_7a09:
    daa
    jr nz, @-$0f

    ld a, [de]
    rst $28
    add hl, hl
    ld [hl+], a
    inc e
    daa
    ld [hl+], a
    inc e
    ld b, b
    rst $28
    rst $28
    rst $28

jr_00c_7a18:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld c, $1c
    inc e
    ld a, [de]
    inc l
    ld [hl+], a
    jr z, jr_00c_7a5f

    ld a, [de]
    dec h

jr_00c_7a3a:
    dec h
    ld [hl-], a
    adc [hl]
    rst $28
    ld [hl+], a
    dec l
    ld [hl+], a
    inc l
    rst $28
    jr nz, jr_00c_7a6d

    jr z, jr_00c_7a64

    rst $28
    dec l
    jr z, jr_00c_7a3a

    dec l
    ld a, [de]
    inc h
    ld e, $e9
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld a, [de]
    rst $28
    dec e
    ld a, [de]

jr_00c_7a5f:
    ld [hl-], a
    rst $28
    jr z, jr_00c_7a82

    rra

jr_00c_7a64:
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7a6d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_00c_7a82:
    ld bc, $007d
    nop
    inc b
    cpl

jr_00c_7a88:
    ld e, $2b
    ld [hl-], a
    jr z, jr_00c_7ab4

    ld e, $ef
    daa
    ld e, $1e
    dec e
    inc l
    rst $28
    rst $28
    dec l
    jr z, jr_00c_7a88

    dec hl
    ld e, $25
    ld a, [de]
    ld sp, $ef8e
    ld [hl+], a
    dec l
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld hl, $251e

jr_00c_7ab4:
    add hl, hl
    inc l
    rst $28

jr_00c_7ab7:
    inc e
    dec hl
    ld e, $1a
    dec l
    ld e, $ef
    ld a, [de]
    rst $28
    rst $28
    inc l
    dec l
    dec hl
    jr z, jr_00c_7aed

    jr nz, jr_00c_7ab7

    ld h, $22
    daa
    dec e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld d, $21
    ld a, [de]
    dec l
    rst $28
    ld a, [de]
    rst $28
    dec de
    ld e, $1a
    ld l, $2d
    ld [hl+], a
    rra
    ld l, $25
    dec e

jr_00c_7aed:
    ld a, [de]
    ld [hl-], a
    rst $28
    and b
    and c
    and d
    and e
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld [$30ef], sp
    ld [hl+], a
    inc l
    ld hl, $04ef
    cpl
    ld e, $ef
    ld a, [de]
    daa
    dec e
    rst $28
    rst $28
    nop
    daa
    daa
    rst $28
    inc e
    jr z, jr_00c_7b4c

    dec h
    dec e
    rst $28
    ld hl, $2f1a
    ld e, $ef
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc e
    jr z, @+$28

    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7b4c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    nop
    jr nc, jr_00c_7bac

    ld c, h
    ld c, h
    dec bc
    jr z, jr_00c_7b8d

    inc h
    rst $28
    ld a, [de]
    dec l
    rst $28
    dec l
    ld hl, $2d1e
    ld [hl+], a
    ld h, $1e
    ld c, h
    rst $28
    ld d, $1e
    rst $28
    inc l
    ld hl, $2e28
    dec h
    dec e
    jp hl


    cp $00
    nop

jr_00c_7b80:
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec de
    ld e, $ef
    jr nz, jr_00c_7bb5

jr_00c_7b8d:
    ld [hl+], a
    daa
    jr nz, jr_00c_7b80

    ld hl, $2628
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop

jr_00c_7bac:
    nop
    nop
    nop
    ld bc, $007d
    nop
    ld c, $21

jr_00c_7bb5:
    adc [hl]
    rst $28
    jr nc, jr_00c_7bda

    ld a, [de]
    dec l
    rst $28
    ld a, [de]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc l
    ld l, $2b
    add hl, hl
    dec hl
    ld [hl+], a
    inc l
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop

jr_00c_7bd6:
    nop
    nop
    nop
    nop

jr_00c_7bda:
    ld bc, $007d
    nop
    jr jr_00c_7c08

    ld l, $ef
    ld a, [de]
    dec h
    inc l
    jr z, jr_00c_7bd6

    inc e
    ld a, [de]
    ld h, $1e
    rst $28
    dec l
    jr z, jr_00c_7c0d

    daa
    inc hl
    jr z, jr_00c_7c25

    rst $28
    dec l
    ld hl, $2c22
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_7c08:
    nop
    inc e
    jr z, jr_00c_7c34

    dec h

jr_00c_7c0d:
    rst $28
    daa
    ld [hl+], a
    jr nz, jr_00c_7c33

    dec l
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
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7c25:
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d

jr_00c_7c33:
    nop

jr_00c_7c34:
    inc de
    ld hl, $ef1e
    ld [de], a
    ld l, $26
    ld h, $1e
    dec hl
    rst $28
    daa
    ld [hl+], a
    jr nz, jr_00c_7c64

    dec l
    inc l
    inc h
    ld [hl-], a
    rst $28
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
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec de
    ld e, $1a
    ld l, $2d

jr_00c_7c64:
    ld [hl+], a
    rra
    ld l, $25
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    nop
    ld hl, $2121
    ld hl, $4c21
    ld c, h
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    inc de
    ld hl, $ef1e
    inc l
    dec l
    ld a, [de]
    dec hl
    inc l
    rst $28
    ld [hl+], a
    daa
    rst $28
    dec l
    ld hl, $2c1e
    inc h
    ld [hl-], a
    rst $28
    ld a, [de]
    dec hl
    ld e, $ef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    dec e
    ld a, [de]
    inc sp
    inc sp
    dec h
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
    ld [$30ef], sp
    ld [hl+], a
    inc l
    ld hl, $08ef
    rst $28
    inc e
    jr z, jr_00c_7cff

    dec h
    dec e
    rst $28
    jp hl


    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    jr nz, @+$2a

    rst $28
    dec l
    ld hl, $2b1e
    ld e, $4c
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_00c_7cff:
    rst $28
    rst $38
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_00c_7d24

    ld hl, sInventory
    ld a, [hl]
    cp $0c
    jr z, jr_00c_7d16

    inc hl
    ld a, [hl]
    cp $0c
    jr nz, jr_00c_7d1c

jr_00c_7d16:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00c_7d1c:
    xor a
    ld [$b8a4], a
    ld [$ba39], a
    ret


jr_00c_7d24:
    ld a, $ff
    ld [$ba39], a
    ret


    ld hl, sInventory
    ld a, [hl]
    cp $0e
    jr z, jr_00c_7d38

    inc hl
    ld a, [hl]
    cp $0e
    jr nz, jr_00c_7d3e

jr_00c_7d38:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00c_7d3e:
    xor a
    ld [$b8a6], a
    ld a, $01
    ld [sShedSuperAxFlag], a
    ret


    ld a, $37
    call $16d1
    ld a, $3c
    ld [$c912], a
    ld [$cb8c], a
    ld a, $07
    ld [$cb8d], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [sNumPowerBerriesEaten]
    inc a
    ld [sNumPowerBerriesEaten], a
    ret


    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_00c_7d6e:
    ld a, [hl]
    cp $ff
    jr z, jr_00c_7d74

    inc b

jr_00c_7d74:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_00c_7d6e

    ld a, b
    ld hl, $7ea2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$ccad], a
    ret


    ld a, [$cc9c]
    ld h, a
    ld a, [$cc9b]
    ld l, a
    call Call_000_325c
    ld a, [$ccce]
    ld [$ccad], a
    ld a, [$cccf]
    ld [$ccae], a
    ld a, [$ccd0]
    ld [$ccaf], a
    ld a, [$ccd1]
    ld [$ccb0], a
    ret


    ld a, [$b941]
    ld [$cccc], a
    ld a, [$b940]
    ld [$cccb], a
    ld a, [$b93f]
    ld [wTempPlayerMoney], a
    call Call_000_3268
    ld a, [$cccd]
    ld [$ccad], a
    ld a, [$ccce]
    ld [$ccae], a
    ld a, [$cccf]
    ld [$ccaf], a
    ld a, [$ccd0]
    ld [$ccb0], a
    ld a, [$ccd1]
    ld [$ccb1], a
    ret


    ld a, [$cbe8]
    ld c, $2b
    call Multiply8Bit
    ld a, [$cb54]
    ld d, a
    ld a, [$cb53]
    ld e, a
    ld a, e
    add l
    ld l, a
    ld a, d
    adc h
    ld h, a
    ld a, l
    ld [$cb53], a
    ld a, h
    ld [$cb54], a
    ret


    ld a, [$cc15]
    call Call_000_3304
    ld a, [$cccf]
    ld [$ccad], a
    ld a, [$ccd0]
    ld [$ccae], a
    ld a, [$ccd1]
    ld [$ccaf], a
    ret


    ld a, [$cb53]
    ld l, a
    ld a, [$cb54]
    ld h, a
    ld e, $56
    ld d, $00
    ld a, e
    add l
    ld l, a
    ld a, d
    adc h
    ld h, a
    ld [$cb54], a
    ld a, l
    ld [$cb53], a
    ret


    ld a, [$cb53]
    ld l, a
    ld a, [$cb54]
    ld h, a
    ld e, $2b
    ld d, $00
    ld a, e
    add l
    ld l, a
    ld a, d
    adc h
    ld h, a
    ld [$cb54], a
    ld a, l
    ld [$cb53], a
    ret


    ld a, [$b8f2]
    call Call_000_3304
    ld a, [$cccf]
    ld [$ccad], a
    ld a, [$ccd0]
    ld [$ccae], a
    ld a, [$ccd1]
    ld [$ccaf], a
    ret


    ld a, [sNumPowerBerriesEaten]
    call Call_000_3304
    ld a, [$ccd0]
    ld [$ccad], a
    ld a, [$ccd1]
    ld [$ccae], a
    ret


    ld a, [$ba11]
    ld h, a
    ld a, [$ba10]
    ld l, a
    call Call_000_325c
    ld a, [$ccce]
    ld [$ccad], a
    ld a, [$cccf]
    ld [$ccae], a
    ld a, [$ccd0]
    ld [$ccaf], a
    ld a, [$ccd1]
    ld [$ccb0], a
    ret


    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00c_7ee1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $007d
    nop
    and e
    nop
    sub h
    nop
    or b
    nop
    ld bc, $4400
    nop
    xor a
    nop
    ld hl, $0000
    nop
    ld [hl], e
    nop
    inc hl
    nop
    ld hl, $2200
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    xor h
    nop
    xor h
    nop
    xor a
    nop
    xor a

jr_00c_7ee1:
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $00d7
    ld b, $00
    sbc c
    nop
    add hl, sp
    nop
    cp l
    nop
    ld [hl+], a
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
