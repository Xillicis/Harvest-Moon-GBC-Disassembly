; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    add hl, de
    nop
    nop
    ld bc, $0700
    ld bc, $070b
    rla
    rrca
    cpl
    rra
    ld a, $1f
    ld a, h
    ccf
    ld a, h
    nop
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$08
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ff78]
    ccf
    ld hl, sp+$7f
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    rst $38
    ld h, b
    cp $01
    db $fc
    inc de
    rst $38
    inc l
    ld e, $e4
    inc a
    ret z

    ld e, [hl]
    or b
    xor a
    halt
    ld e, l
    xor $ba
    call c, $18f4
    xor $d0
    rst $38
    inc c
    rst $38
    ld [de], a
    rst $38
    ld [hl], $7f
    inc hl
    ld a, a
    inc bc
    ccf
    inc bc
    dec de
    dec b
    rra
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $40
    ld hl, sp+$00
    ret nc

    jr nz, @-$36

    or b
    call nz, $fcb8
    nop
    inc d
    dec bc
    ld [$0c07], sp
    inc bc
    add hl, bc
    ld b, $05
    ld [bc], a
    rrca
    nop
    ld b, $00
    nop
    nop
    inc d
    ldh [rNR10], a
    ldh [$ff88], a
    ld [hl], b
    ret c

    db $20, $84
    ld a, b
    cp h
    ld b, b
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, b
    ccf
    ld hl, sp+$7f
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    rst $38
    ld h, b
    cp $01
    rst $38
    ld b, $ff
    ld d, $1e
    db $e4
    inc a
    ret z

    ld e, [hl]
    or b
    xor a
    halt

jr_019_4099:
    ld e, l
    xor $fa
    sbc h
    or $18
    rst $28
    db $10
    rst $38
    ld d, $3f
    dec de
    ld a, a
    inc bc
    ld a, a
    ld hl, $011f
    ccf
    db $10
    ld a, a
    ld [bc], a
    add d
    ld a, l
    rst $38
    nop
    cp [hl]
    ld b, b
    db $fc
    nop
    add sp, -$70
    add sp, -$30
    db $f4
    ret z

    db $fc
    ret nz

    ldh [rP1], a
    add b
    ld a, a
    ld d, b
    cpl
    ld c, h
    inc sp
    ld h, [hl]
    add hl, de
    ld sp, hl
    nop
    ld [hl], c
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_019_4099

    jr nz, @-$3e

    sub b
    ld h, b
    ldh a, [rP1]
    ldh a, [rP1]
    inc bc
    db $10
    inc c
    inc hl
    jr nc, jr_019_4116

    jr nz, @+$81

    ld a, b
    ld h, a
    sub $6b
    rst $08
    db $f4
    push de
    xor $e0
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
    ld de, $1111
    ld de, $3131
    inc sp
    inc sp
    ld a, e
    ld [hl], e
    ld a, e
    ld [hl], e
    ld a, a
    ld [hl], a
    ld a, a
    jp c, $ceef

    ei
    cp l

jr_019_4116:
    db $db
    sub l
    rst $18
    or d
    rst $38
    or a
    ei
    push af
    rst $38
    rst $28
    rst $38
    db $fc
    ld b, b
    db $fc
    ldh [rIE], a
    ret nz

    ld sp, hl
    ld b, $e2
    inc e
    db $fc
    ld [hl], b
    ldh a, [c]
    db $ec
    rst $38
    add b
    ld [hl], a
    rst $38
    rst $38
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
    rlca
    rra
    rst $28
    rst $38
    rst $38
    db $fd
    ei
    rst $38
    ld a, [$f7ff]
    cp $fc
    cp $f8
    db $fc
    ldh [$fff8], a
    sbc c
    ld h, [hl]
    pop af
    ld c, $e9
    ld d, $96
    ld l, b
    db $f4
    ld [$007c], sp
    jr c, jr_019_415f

jr_019_415f:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_4188

    jr c, jr_019_4172

    ld h, h
    dec de
    rst $38
    nop
    rst $38
    ld c, $01

jr_019_4172:
    nop
    rlca
    nop
    ld [$0f07], sp
    rlca
    rrca
    nop
    inc d
    dec bc
    rrca
    inc bc
    rlca
    nop
    rst $38
    dec bc
    rst $38
    dec bc
    rra
    db $eb
    rst $38

jr_019_4188:
    rst $28
    rst $38
    inc bc
    ccf
    ret nz

    rst $20
    db $db
    rst $38
    inc bc
    db $fc
    ld b, b
    db $fc
    ldh [rIE], a
    ret nz

    ld sp, hl
    add [hl]
    ldh [c], a
    inc e
    db $fc
    ldh a, [$fff2]
    db $ec
    rst $38
    nop
    ld [$3007], sp
    rrca
    ret nc

    ccf
    db $fc
    ld a, a
    cp a
    ld a, a
    ld e, a
    ccf
    scf
    rrca
    rrca
    nop
    rla
    ldh [rIF], a
    ldh a, [$ff0b]
    db $fc
    ccf
    cp $fd
    cp $fa
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    sbc c
    ld h, [hl]
    pop af
    ld c, $e9
    ld d, $96
    ld l, b
    db $f4
    ld [$007c], sp
    jr c, jr_019_41cf

jr_019_41cf:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_41f8

    jr c, jr_019_41e2

    ld h, h
    dec de
    rst $38
    nop
    rst $38
    ld b, $01

jr_019_41e2:
    nop
    rlca
    nop
    ld [$0f07], sp
    rlca
    rrca
    nop
    inc d
    dec bc
    rrca
    inc bc
    rlca
    nop
    rst $38
    rrca
    rst $38
    dec bc
    rra
    and $ff

jr_019_41f8:
    jp hl


    rst $38
    rlca
    ccf
    ret nz

    rst $20
    db $db
    rst $38
    inc bc
    db $fc
    ld b, b
    db $fc
    ld h, b
    db $fc
    ret nz

    and $98
    pop af
    ld c, $ff
    ldh a, [$fff2]
    db $ec
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $1c
    ld a, [hl-]
    inc d
    ld a, $08
    ld [hl], $08
    ld a, [hl-]
    inc d
    rlca
    nop
    jr jr_019_422c

    jr nz, jr_019_4246

    jr nz, jr_019_4248

    ld h, b
    rra
    and b

jr_019_422c:
    ld e, a
    sub b
    ld l, a
    ret nz

    ccf
    cp $1c
    ld a, $cc
    ld c, $f4
    ld c, $f4
    ld c, $f0
    ld e, $e0
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    nop
    ccf
    nop
    rst $38

jr_019_4246:
    nop
    add a

jr_019_4248:
    ld a, b
    ld [hl], b
    rrca
    jr nz, @+$21

    ld a, $01
    rra
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [bc], a
    rst $08
    ld [hl], $1f
    and $fe
    inc c
    inc c
    ldh a, [$fff8]
    ld b, b
    ld h, $19
    db $10
    rrca
    daa
    jr jr_019_42da

    inc c
    inc a
    nop
    jr jr_019_426d

jr_019_426d:
    nop
    nop
    nop
    nop
    ret z

    jr nc, @+$12

    ldh [$ffc8], a
    jr nc, @-$22

    jr nz, @+$7a

    nop
    jr nc, jr_019_427d

jr_019_427d:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc d
    ld [$081c], sp
    ld a, [hl+]
    inc e
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld e, l
    ld a, $7f
    ld a, $6b
    ld [hl], $ff
    ld a, [hl+]
    ld [hl], a
    xor d
    ld d, l
    xor d
    ld c, c
    or [hl]
    rlca
    nop
    jr jr_019_42ac

    jr nz, jr_019_42c6

    jr nz, jr_019_42c8

    ld h, b
    rra
    and b

jr_019_42ac:
    ld e, a
    sbc b
    ld h, a
    ret nz

    ccf
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld a, a
    add b
    pop bc
    ld a, $e2
    inc e
    db $f4
    ld [$04fe], sp
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_019_42c6:
    nop
    ccf

jr_019_42c8:
    nop
    inc e
    inc bc
    ldh [$ff1f], a
    add b
    ld a, a
    ld a, a
    nop
    inc c
    ldh a, [$fffe]
    inc c
    inc a
    ret nc

    ld hl, sp+$00
    nop

jr_019_42da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld a, [bc]
    dec e
    ld [bc], a

jr_019_42e5:
    db $10
    rrca
    daa
    jr jr_019_4368

    nop
    inc a
    nop
    jr jr_019_42ef

jr_019_42ef:
    nop
    nop
    ldh a, [$ff80]
    sub b
    ld h, b
    db $10
    ldh [$ff90], a

jr_019_42f8:
    ld h, b
    ret c

    jr nz, jr_019_42f8

    nop
    ld a, b
    nop
    jr nc, jr_019_4301

jr_019_4301:
    add c
    add c
    and l
    and l
    add c
    add c
    and h
    and h
    and l
    and l
    push de
    push de
    db $db
    db $db
    rst $38
    rst $38
    rrca
    ld [$0718], sp
    jr nz, jr_019_4336

    jr nz, jr_019_4338

    jr nz, jr_019_433a

    ld h, b
    rra

jr_019_431d:
    sub b
    ld l, a
    ret nz

    ccf
    ldh a, [$ff30]
    jr nc, jr_019_42e5

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    sbc a

jr_019_4336:
    ld h, b
    ld b, b

jr_019_4338:
    ccf
    add hl, sp

jr_019_433a:
    ld b, $30
    rrca
    cpl
    db $10
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$00fa], sp
    jr @-$1e

    ldh a, [rP1]
    jr c, jr_019_431d

    ld hl, sp+$00
    db $fc
    add b
    add sp, $17
    ldh [$ff1f], a
    ldh a, [rIF]
    ld a, a
    nop
    dec sp
    inc bc
    ld bc, $0101
    ld bc, $0000
    sub d
    ld l, h
    ld d, $e8
    ld a, $c0
    db $fc

jr_019_4368:
    nop
    ld hl, sp-$40
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    rlca
    nop
    jr jr_019_437c

    jr nz, jr_019_4396

    jr nz, jr_019_4398

    jr nz, jr_019_439a

    ld h, b

jr_019_437c:
    rra
    sub b
    ld l, a
    ret nz

    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ccf

jr_019_4396:
    nop
    rst $38

jr_019_4398:
    nop
    add b

jr_019_439a:
    ld a, a
    ld h, b
    rra
    ccf
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$00fa], sp
    ret c

    jr nz, jr_019_43ba

    ldh [$ff38], a
    ret nc

    ld hl, sp+$10
    db $fc
    add b
    db $ed
    ld [de], a
    ldh [$ff1f], a
    ldh a, [rIF]
    ld a, a
    nop
    add hl, sp

jr_019_43ba:
    nop
    ld bc, $0000
    nop
    nop
    nop
    sbc [hl]
    ld h, b
    ld e, $e0
    ld a, [hl-]
    call nz, $18e4
    ld hl, sp-$80
    ret nz

    add b
    add b
    nop
    add b
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld [hl], b
    rrca
    add b
    ld a, a
    rst $38
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$00fa], sp
    ret c

    jr nz, @+$12

    ldh [$ff38], a
    ret nc

    ld hl, sp+$10
    db $fc
    add b
    nop
    nop
    rlca
    nop
    jr jr_019_43fe

    ld [hl], $0f
    jr z, jr_019_441a

    ld d, b
    ccf
    ld d, b

jr_019_43fe:
    ccf
    ld b, b
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    and b
    ret nz

    ld d, b
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rOBP0], a
    ccf
    ld hl, $371f
    rrca
    jr c, jr_019_4420

    ld a, a

jr_019_441a:
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38

jr_019_4420:
    ld [$e0f8], sp
    db $e4
    ret c

    and $98
    pop bc
    ld a, $49
    or [hl]
    db $fd
    ld [bc], a
    ld a, [$feb4]
    or b
    rst $28
    ld b, $5f
    ld b, $2f
    ld de, $063f
    ccf
    rla
    rra
    nop
    rrca
    nop
    rrca
    ld [bc], a
    cp $b4
    cp $f0
    ld sp, hl
    ld h, [hl]
    ld a, [$fc04]
    ld hl, sp-$04
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$20
    ld [$0907], sp
    ld b, $17
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ld [$c8f0], sp
    jr nc, jr_019_44da

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ccf
    ld hl, $371f
    rrca
    jr c, jr_019_4480

    ld a, a
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38

jr_019_4480:
    ld [$e0f0], sp
    add sp, -$30
    db $e4
    sbc b
    call nz, $4238
    cp h
    push hl
    ld a, [de]
    db $fd
    and d
    ei
    or h
    rst $28
    ld b, $5f
    ld b, $2f
    ld de, $063f
    ccf
    rla
    rla
    add hl, bc
    add hl, bc
    ld b, $0f
    ld [bc], a
    rst $38
    ldh a, [$fffe]
    ld [hl], h
    db $fc
    ld [hl], b
    ld a, [$f964]
    ld b, $fe
    ld hl, sp-$08
    ldh a, [$fff8]
    nop
    ld a, [bc]
    dec b
    ld [$0807], sp
    rlca
    add hl, bc
    ld b, $1b
    inc b
    ld e, $00
    ld a, $00
    inc a
    nop
    jr z, @-$2e

    ld [$88f0], sp
    ld [hl], b
    ld c, b
    jr nc, jr_019_453e

    ld [$003c], sp
    ld a, $00
    ld e, $00
    rlca
    nop
    ld a, [de]
    rlca
    ld sp, $2a1f
    rra
    dec sp

jr_019_44da:
    ccf
    dec de
    ccf
    ld a, a
    ccf
    sbc a
    ld a, a
    ret nz

    add b
    jr nc, @-$2e

    ret z

    ldh a, [$ff96]
    ld hl, sp-$2f
    cp $d9
    cp $51
    cp $d2
    db $fc
    rst $18
    ld a, a
    rst $10
    ld a, a
    sbc a
    ld a, a
    ld d, a
    ccf
    ld d, a
    ccf
    scf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld e, [hl]
    ld hl, sp+$5f
    ld a, [$fa4f]
    set 7, [hl]
    jp z, $8cfc

    ld hl, sp-$52
    ld hl, sp-$4b
    cp $bd
    ld a, a
    db $fd
    ccf
    rst $38
    ccf
    dec a
    ccf
    dec a
    ccf
    dec l
    ccf
    dec a
    ccf
    dec a
    ccf
    or a
    ld hl, sp-$09
    ld hl, sp+$56
    ld hl, sp-$2c
    ld hl, sp+$58
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$2d
    ccf
    cpl
    dec a
    ld l, $3d
    dec c
    cp [hl]
    sub [hl]
    rst $38
    ld l, c
    rst $38
    dec a

jr_019_453e:
    ld a, a
    rrca
    ccf
    ld b, b
    ld hl, sp-$40
    ld a, b
    ret z

    ld a, b
    ld c, b
    ei
    xor e
    rst $38
    ld e, h
    cp $78
    db $fc
    ldh [$fff8], a
    rlca
    nop
    jr @+$09

    jr nz, jr_019_4576

    jr nz, jr_019_4578

    jr nz, jr_019_457a

    jr nz, jr_019_457c

    halt
    add hl, bc
    ld sp, hl
    ld b, $c0
    nop
    jr nc, @-$3e

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $09
    or $01
    cp $0a
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_019_4576:
    rlca
    ld a, a

jr_019_4578:
    dec de
    ld e, a

jr_019_457a:
    dec c
    rra

jr_019_457c:
    rlca
    rla
    ld [$0c7f], sp
    cp $00
    db $fd
    ld [bc], a
    db $fd
    jp z, $a6f9

    ldh a, [c]
    ld l, h
    db $ec
    ret nc

    adc $30
    rst $38
    ld h, b
    rst $38
    ld b, e
    db $fc
    rrca
    db $ec
    rra
    ld [hl], $0f
    ccf
    inc de
    inc sp
    inc e
    jr nc, jr_019_45be

    jr nc, jr_019_45c0

    ld a, a
    adc h
    rra
    ldh [$ff0e], a
    ldh a, [rNR23]
    ldh [$ffe8], a
    sub b
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$ff31]
    ld e, $32
    dec e
    inc sp
    inc e
    inc sp
    dec e
    ld sp, $101e
    rrca
    inc c

jr_019_45be:
    inc bc
    inc bc

jr_019_45c0:
    nop
    ld [$88f0], sp
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$10f0], sp
    ldh [$ff60], a
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    jr jr_019_4657

    inc bc
    ld a, h
    rrca
    inc l
    rra
    ld [hl], $0f
    ld a, a
    inc de
    db $fc
    nop
    db $fc
    sub b
    db $fc

jr_019_45e6:
    jr z, jr_019_45e6

    add b
    ld e, $e8
    inc c
    ldh a, [rNR34]
    ldh [$ffef], a
    sub [hl]
    di
    ld e, h
    ldh a, [$ff1f]
    ldh a, [$ff1f]
    ld sp, $321e
    dec e
    inc sp
    inc e
    inc sp
    dec e
    ld sp, $8f1e
    ld [hl], b
    rrca
    ldh a, [$ff0e]
    ldh a, [$ff08]
    ldh a, [$ff88]
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$10f0], sp
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
    nop
    nop
    db $10
    ldh [$ff60], a
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
    inc de
    inc c
    ccf
    dec e
    ld e, e
    dec a
    ld a, l
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_019_4649

jr_019_4649:
    add sp, $30
    ld [hl], b
    add b
    ret c

    ldh [$ffe4], a
    ld hl, sp-$4c
    ld a, e
    adc b
    ld [hl], a
    adc b
    ld [hl], a

jr_019_4657:
    sub b
    ld l, a
    ld h, b
    rra
    jr c, jr_019_4664

    ld a, [hl]
    ld bc, $36f9
    ld [hl], d
    db $fc
    ld a, [de]

jr_019_4664:
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$09
    or $91
    ld l, [hl]
    rst $38
    ld h, b
    rst $38
    ld e, e
    rst $38
    ld e, c
    ld a, a
    inc h
    ld a, a
    ld [hl], $3f
    inc de
    ccf
    ld de, $041f
    cp $00
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    add sp, -$30
    db $e4
    ret c

    ld hl, sp-$40
    inc c
    inc bc
    ld [$0807], sp
    rlca
    ld a, [bc]
    dec b
    dec c
    ld [bc], a
    rra
    nop
    rra
    nop
    inc bc
    nop
    ret nc

    jr nz, jr_019_46b4

    ldh [rNR10], a
    ldh [$ff60], a
    add b
    jr nz, @-$3e

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    inc bc

jr_019_46b4:
    nop
    inc b
    inc bc
    ld [$3f07], sp
    nop
    ld a, c
    ld b, $7f
    nop
    ld a, a
    inc b
    ld e, $00
    db $eb
    inc e
    cp $3d
    cp e
    ld a, l
    ld [hl], l
    ei
    ld l, e
    rst $30
    ld sp, $c0cf
    ccf
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld l, b
    or b
    or b
    ret nz

    ret nc

    ldh [$ffc8], a
    ldh a, [$ffe4]
    ld hl, sp+$7f
    dec c
    ccf
    dec c
    ccf
    ld c, $7f
    ld sp, $1f7f
    ld e, a
    ld h, $27
    jr jr_019_472f

    nop
    add b
    ld a, a
    ret nz

    cp a
    ldh [$ff1f], a
    ldh a, [$ff8f]
    ld hl, sp-$49
    cp $51
    db $fd
    ret nz

    db $fc
    nop
    inc h
    ld hl, sp+$14
    ld hl, sp+$08
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    halt
    dec l
    and h
    ld e, e
    sbc b
    ld h, a
    ld c, [hl]
    ld sp, $136c
    di
    nop
    ld [hl], a
    nop
    inc bc
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3e

    ldh [rP1], a

jr_019_472f:
    ldh [rP1], a
    add hl, bc
    ld [$191e], sp
    jr c, jr_019_476e

    jr nc, jr_019_4778

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    db $fc
    db $e3
    ldh a, [c]
    db $ed
    ldh [rP1], a
    db $10
    ldh [$ff0e], a
    ldh a, [$ff09]
    or $01
    cp $01
    cp $06
    ld hl, sp+$3e
    ret nz

    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec e
    dec e
    rra
    rra
    ccf
    ccf
    scf
    ccf
    ld [hl], $3f
    rst $38
    ldh [rIE], a
    rst $28
    cp a
    db $ec
    cp a
    ei
    ld a, a
    rst $28
    ld a, a
    or $7f

jr_019_476e:
    ldh a, [rPCM34]
    ld sp, hl
    cp $00
    cp $a0
    ld sp, hl
    and $e1

jr_019_4778:
    sbc $c6
    cp b
    cp $40
    rst $38
    ldh [rIE], a
    ret nz

    ld l, [hl]
    ld a, a
    ld l, [hl]
    ld a, a
    ld c, h
    ld a, a
    ld a, [hl+]
    rst $38
    sub d
    rst $38
    ld l, d
    rst $38
    ccf
    ld a, a
    rrca
    ccf
    ld d, a
    rst $38
    ld e, a
    cp $5f
    ld hl, sp+$11
    ldh a, [$ff50]
    db $fc
    xor b
    db $fc
    ld [hl], b
    ld hl, sp-$40
    ldh a, [$fff9]
    ld b, $e6
    jr jr_019_4818

    adc h
    cp d
    ld b, h
    ld a, [$1c04]
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
    ld a, h
    inc bc
    ldh a, [c]
    dec c
    rst $38
    nop
    ldh [rP1], a
    db $10
    ldh [$ff0e], a
    ldh a, [$ff09]
    or $01
    cp $01
    cp $06
    ld hl, sp-$06
    inc b
    rrca
    nop
    ld [hl], $0f
    ld e, h
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, @+$81

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    rst $38
    rrca
    rst $38
    inc c
    ld a, a
    sbc e
    ld a, a
    adc a
    sbc a
    ld h, [hl]
    rra
    ldh [rNR22], a
    jp hl


    rra
    rst $20
    cp $a0
    cp $e0
    pop af
    adc $c3
    cp h
    cp $40
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    db $fc
    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    rra
    and $17
    ldh [rNR11], a
    ldh [rNR10], a

jr_019_4818:
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff60], a
    add b
    add b
    nop
    ldh [c], a
    inc e
    ld [hl], d
    adc h
    cp d
    ld b, h
    ld a, [$1c04]
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
    jr jr_019_483e

    jr nz, jr_019_4858

    jr nz, jr_019_485a

    jr nz, jr_019_485c

    inc a

jr_019_483e:
    inc bc
    ld [hl], e
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
    cp $86
    ld a, b
    rrca
    nop
    ld [hl], $0f
    ld e, h
    ccf
    ld a, [hl]

jr_019_4858:
    rrca
    ld a, a

jr_019_485a:
    jr nc, jr_019_48db

jr_019_485c:
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    rrca
    ld e, a
    and b
    rra
    ldh [rNR22], a
    add sp, -$04
    nop
    db $fc
    nop
    db $fc
    ld b, b
    db $fc
    ret nz

    ld hl, sp-$80
    add [hl]
    ld a, b
    ld a, c

jr_019_487e:
    add [hl]
    rst $38
    jr nc, jr_019_487e

    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    rra
    rst $20
    rra
    and $17
    ldh [rNR12], a
    pop hl
    rla
    ldh [rNR22], a
    ldh [$ff67], a
    add b
    add b
    nop
    ld a, [$f2f4]
    inc c
    ldh [c], a
    inc e
    jp nc, Jump_019_642c

jr_019_48aa:
    sbc b
    db $e4
    jr jr_019_48aa

    nop
    db $fc
    nop
    nop
    nop
    nop
    nop

jr_019_48b5:
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    rlca
    nop
    ld [$0007], sp
    nop
    inc bc
    nop
    ld a, a
    ld bc, $7c83
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0fe
    nop
    jr jr_019_48b5

    db $ec
    ldh a, [$fff4]
    ld hl, sp-$76
    ld a, h

jr_019_48db:
    add d

jr_019_48dc:
    ld a, h
    add d
    ld a, h
    ldh [c], a
    inc e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld b, a
    jr c, jr_019_48dc

    rrca
    ld h, b
    rra
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    adc a
    halt
    ld a, a
    add d
    rrca
    db $f4
    rst $38
    inc b
    ld b, b
    add b
    ret nz

    nop

jr_019_4905:
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
    jr nz, jr_019_4932

    ld e, $05
    inc h
    dec de
    db $10
    rrca
    daa
    jr jr_019_499a

    nop
    inc a
    nop
    jr jr_019_4921

jr_019_4921:
    ld b, $f8
    db $f4
    ld c, b
    ld c, b
    or b
    db $10

jr_019_4928:
    ldh [$ffc8], a
    jr nc, jr_019_4928

    nop
    ld a, b
    nop
    jr nc, jr_019_4931

jr_019_4931:
    rlca

jr_019_4932:
    nop
    jr jr_019_493c

    jr nz, jr_019_4956

    jr nz, @+$21

    jr nz, jr_019_495a

    ld h, b

jr_019_493c:
    rra
    sbc b
    ld h, a
    ret nz

    ccf
    ret nz

    nop
    jr nz, jr_019_4905

jr_019_4945:
    ld h, b
    and b

jr_019_4947:
    ldh [$ff60], a
    ldh [$ff60], a
    ldh [$ff60], a

jr_019_494d:
    ldh [$ff60], a
    ldh [$ff60], a
    ld [hl], b
    nop
    adc h
    ld [hl], b
    ld [bc], a

jr_019_4956:
    db $fc
    ld hl, $71de

jr_019_495a:
    xor [hl]
    ld [hl], c
    adc [hl]
    ld d, c
    xor [hl]
    ld hl, $ffde
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    ld h, b
    ld b, b
    ccf
    ld a, c
    ld b, $20
    rra
    ldh [$ff7f], a
    xor $7f
    cp $71
    pop af
    ld c, [hl]
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    pop af
    ld c, $20
    ret nz

    jr nz, jr_019_4945

    jr nz, jr_019_4947

    and b
    ld b, b
    ld h, b
    add b
    jr nz, jr_019_494d

    ld b, b
    add b
    add b
    nop
    ccf
    nop
    ld [hl], b
    rrca
    ld a, b
    rlca

jr_019_4997:
    ccf
    nop
    inc e

jr_019_499a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $a0
    sub b
    ld h, b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_019_49b1

jr_019_49b1:
    ld bc, $0301
    inc bc
    rla
    rla
    rra
    rra
    ccf
    ccf
    ccf
    jr c, @+$3a

    daa
    jr nz, jr_019_49e0

    nop
    nop
    and b
    and b
    and b
    and b
    ldh a, [$fff0]
    ldh a, [$fff0]
    ld hl, sp+$38
    jr c, jr_019_4997

    ld [$60f0], sp
    rra
    and b
    ld e, a
    sub b
    ld l, a
    add c
    ld a, [hl]
    ret nz

    ccf
    ld [hl], b
    rrca
    ld a, a
    nop
    ld a, a

jr_019_49e0:
    nop
    ld [$08f0], sp
    ldh a, [rNR32]
    ldh [$fffe], a
    nop
    rra
    ldh [$ff7f], a
    add b
    rst $38
    ld [$08ff], sp
    ccf
    nop
    ld h, b
    rra
    ld hl, sp+$07
    ld b, b
    ccf
    ldh [$ff1f], a
    ld hl, sp+$27
    db $fd
    ld [hl+], a
    ld a, a
    jr z, @-$04

    nop
    db $10
    ldh [$fff8], a
    nop
    inc e
    ldh [$ff3e], a
    ret nc

    rst $38
    nop
    rst $38
    ld d, b
    cp $30
    ccf
    nop
    ccf
    jr nc, jr_019_4a30

    ccf
    ld [$91bf], sp
    rst $38
    ld l, c
    rst $38
    dec e
    ld a, a
    rlca
    rra
    db $fc
    nop
    ldh a, [rNR23]
    sub b
    ld hl, sp+$00
    ld a, [$fe12]
    inc l
    cp $70
    db $fc
    ret nz

jr_019_4a30:
    ldh a, [rTAC]
    nop
    jr jr_019_4a3c

    jr nz, jr_019_4a56

    ld h, b
    rra
    and b
    ld e, a
    sub b

jr_019_4a3c:
    ld l, a
    add c
    ld a, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR32]
    ldh [$fffe], a
    nop
    rra

jr_019_4a50:
    ldh [$ff7f], a
    nop
    ld a, a
    nop
    ld a, a

jr_019_4a56:
    nop
    ccf
    nop
    ldh [$ff1f], a
    sbc h
    ld h, e
    ld h, b
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$3000]
    ret nz

    ld a, b
    add b
    inc c
    ldh a, [$ffce]
    jr nc, jr_019_4a50

    dec h
    db $f4
    dec bc
    ld [hl], b
    rrca
    jr c, jr_019_4a80

    ccf
    jr jr_019_4abb

    dec e
    ccf
    ld e, $3f

jr_019_4a80:
    rra
    ei
    ld b, h
    ld c, a
    or b
    ld c, $f0

jr_019_4a87:
    inc a
    ret nz

    ld hl, sp+$10
    ld hl, sp+$70
    ld hl, sp-$10
    ld hl, sp-$10
    cpl
    rra
    inc de
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
    add sp, -$10
    sub b
    ldh [$ff60], a
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

jr_019_4ab1:
    nop
    nop
    rlca
    nop
    jr jr_019_4abe

    jr nz, jr_019_4ad8

    ld h, b
    rra

jr_019_4abb:
    and b
    ld e, a
    sub c

jr_019_4abe:
    ld l, [hl]
    ret nz

    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_4a87

    ld [$08f0], sp
    ldh a, [rNR23]
    ldh [$fffc], a
    nop
    ld e, $e0
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

jr_019_4ad8:
    nop
    adc a
    ld [hl], b
    ldh [$ff1f], a
    jr c, jr_019_4ae6

    jr nz, jr_019_4b00

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_019_4ae6:
    ld [$08ff], sp
    jp c, $1020

    ldh [$ff78], a
    add b
    jr c, jr_019_4ab1

    ccf
    nop
    ld e, $05
    inc d
    dec bc
    jr nc, jr_019_4b08

    ld e, b
    daa
    rst $38

jr_019_4afc:
    nop
    ld a, a
    inc bc
    ld a, a

jr_019_4b00:
    rlca
    ret c

    jr nc, jr_019_4afc

    ld b, b

jr_019_4b05:
    ld e, h
    and b
    ld a, [bc]

jr_019_4b08:
    db $f4
    rra
    ldh [$fffe], a
    nop
    db $fc
    ret nz

    ld hl, sp-$10
    ld de, $0c0f
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
    nop
    nop
    stop
    jr z, jr_019_4b35

    ld b, h
    jr c, @+$54

    inc a
    sbc l
    ld a, d
    cp e
    ld [hl], b
    cp e
    ld [hl], c
    cp e
    ld [hl], c
    rlca
    nop
    jr jr_019_4b3c

jr_019_4b35:
    jr nz, jr_019_4b56

    jr nz, jr_019_4b58

    jr nz, @+$21

    and b

jr_019_4b3c:
    rra
    rst $30
    adc b
    ld hl, sp+$07
    ret nz

    nop
    jr nc, jr_019_4b05

    ld c, $f0
    add hl, bc
    or $09
    or $01
    cp $0a
    db $f4
    sbc h
    ld h, b
    cp c
    ld [hl], b
    sbc b
    ld [hl], b
    ld c, h

jr_019_4b56:
    jr c, jr_019_4b8c

jr_019_4b58:
    ld [$000e], sp
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
    dec l
    ld a, a
    dec l
    ccf
    rla
    rra
    nop
    ld [$0f07], sp
    inc b
    db $fc
    ld [$68fc], sp
    rst $38
    ld h, b
    ld sp, hl
    ld h, [hl]
    or $c8
    ret c

    jr nz, jr_019_4bba

    ret c

    db $fc
    ld e, b
    inc e
    inc bc
    db $10
    rrca
    cpl
    db $10
    ld a, [hl]
    nop
    ld a, h
    nop
    nop

jr_019_4b8c:
    nop
    nop
    nop
    nop
    nop
    ld e, b
    and b
    ld [$c8f0], sp
    jr nc, @-$02

    nop
    ld a, h
    nop

jr_019_4b9b:
    jr c, jr_019_4b9d

jr_019_4b9d:
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
    ld h, c
    ld e, $b9
    ld a, [hl]
    ld a, c
    cp $ff
    ldh [$ffe5], a
    add d
    ld bc, $0200
    ld bc, $0103
    dec b
    inc bc
    rlca

jr_019_4bba:
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    ld [bc], a
    nop
    add a
    nop
    jr @+$09

    jr nz, jr_019_4be6

    jr nz, jr_019_4be8

    jr nz, jr_019_4bea

    jr nz, jr_019_4bec

    ld l, h
    inc de
    ldh a, [c]
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_4b9b

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $ff
    nop
    rst $38
    ld a, [bc]
    rst $38

jr_019_4be6:
    ld a, [bc]
    rst $18

jr_019_4be8:
    ld a, [bc]
    sbc a

jr_019_4bea:
    rlca
    rrca

jr_019_4bec:
    nop
    ld c, $05
    inc c
    inc bc
    add hl, bc
    or $01
    cp $0e
    ldh a, [$fffc]
    ld [$e8fc], sp
    db $fc
    ldh [$fffe], a
    ldh [$fffe], a
    call nc, Call_000_0f10
    rra
    nop
    ccf
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
    db $fc
    db $10
    db $fc
    ld [hl], b

jr_019_4c15:
    db $f4
    ld l, b
    ld h, h
    sbc b
    and $18
    ccf
    nop
    ld a, $00
    inc e
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    ld [hl], b
    rrca
    adc b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    ldh [rP1], a
    jr jr_019_4c15

    inc b
    ld hl, sp+$04
    ld hl, sp+$0c
    ldh a, [$fffe]
    nop
    rra
    and $7f
    add [hl]
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld c, a
    jr nc, @+$25

    inc e
    jr c, jr_019_4c56

    cp a
    add b
    db $fd
    inc bc
    cp $01
    rst $38

jr_019_4c56:
    ld a, [bc]
    rst $38
    add hl, bc
    db $fd
    ld b, $f6
    dec de
    cp $e5
    xor h
    ld e, a
    add b
    nop
    add b
    nop
    add b
    ld h, b

jr_019_4c67:
    and b
    ld a, b
    jr jr_019_4c67

    inc c
    cp $4c
    xor $c6
    xor $60
    ld a, a
    ccf
    ccf

jr_019_4c75:
    rrca
    rrca
    rlca
    ld bc, $0304
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld a, c
    cp a
    rst $20
    rst $38
    cp $ff
    ldh a, [$fffc]
    db $e3
    inc bc
    and b
    ld b, b
    ret nz

    nop
    add b
    nop
    add [hl]
    add $16
    sub [hl]
    inc h
    ld [hl], $c8
    db $ec
    nop
    adc b
    nop
    stop
    nop
    nop
    nop
    add a
    nop
    ret z

    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    ld a, c
    ld b, $3f
    jr @+$81

    dec l
    ret nz

    nop
    jr nc, jr_019_4c75

    ld [$04f0], sp
    ld hl, sp+$06
    ld hl, sp-$1b
    ld a, [de]
    pop af
    adc $f9
    and [hl]
    nop
    nop
    inc bc
    rlca
    ld [$121f], sp
    ccf
    inc [hl]
    ccf
    inc l
    ld a, a
    ld l, h
    ld a, a
    ld l, [hl]
    ld a, a
    ld a, a
    dec a
    ccf
    ld a, [de]
    ccf
    rst $00
    ccf
    rst $18
    rra
    rst $28
    ccf
    ret nz

    ld l, a
    or b
    rla
    add sp, -$02
    ldh [$fffc], a
    ret z

    db $fc

jr_019_4ce6:
    jr z, jr_019_4ce6

    ldh [$fff1], a
    adc $c7
    jr c, jr_019_4d07

    ldh [$ffe8], a
    db $10
    ld l, a
    ld a, a
    daa
    ld a, a

jr_019_4cf5:
    ld sp, $183f
    ccf
    inc c
    ld e, $03
    rrca
    nop
    ld bc, $0000
    add l
    ld a, [$fef1]
    cp $ff

jr_019_4d07:
    ccf
    rst $38
    rlca
    nop
    ld a, [bc]
    add l
    rst $20
    ldh [rSB], a
    nop
    ld hl, sp+$30
    jr c, jr_019_4cf5

    ld [hl], b
    add b
    ld a, [$20fa]
    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    rst $20
    ld b, b
    ld hl, sp+$67
    ld hl, sp+$77
    ld a, h
    dec sp
    ld a, [hl]
    dec e
    rst $38
    ld c, $ff
    rlca
    nop
    nop
    ret nz

    nop
    ld sp, $0bc0
    pop af
    rrca
    di
    rrca
    rst $30
    sbc a
    ld l, [hl]
    cp $1c
    ld h, b
    nop
    ldh [rLCDC], a
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec e
    ld a, a
    ld e, $3f
    dec c
    rra
    dec b
    ld l, a
    db $10
    sbc [hl]
    ld l, l
    rst $38
    ld c, $fc
    ld e, b
    db $fc
    db $10
    db $fc
    xor b
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$ffe0]
    ldh a, [rP1]
    ld hl, sp+$70
    rra

jr_019_4d72:
    rlca
    rla
    ld [$0f10], sp
    dec de
    inc b
    ld a, $00
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_4d81

jr_019_4d81:
    ld hl, sp+$60
    ld hl, sp+$00
    db $10
    ldh [$ffd0], a
    jr nz, jr_019_4d72

    db $10
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_019_4d91

jr_019_4d91:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_4dac

    ldh a, [rIF]
    db $fc
    di
    rst $38
    ld a, h
    rst $38

jr_019_4dac:
    rra
    rst $38
    rlca
    rst $38
    add hl, bc
    ret nz

    nop
    jr nc, @-$3e

    ld [$09f0], sp
    ldh a, [rIF]
    pop af
    rst $28
    rla
    rst $38
    xor a
    rst $18
    xor h
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    cp $7c
    db $fc
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    nop
    nop
    rst $38
    ld c, $7f
    ld l, $3f
    ld c, $1f
    ld b, $6f
    db $10
    sbc h
    ld l, e
    rst $38
    inc c
    rra
    rlca
    db $fc
    ld d, b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ld [hl], b
    ldh a, [rP1]
    ld a, b
    or b
    ld hl, sp+$70
    ld hl, sp-$80
    rla
    ld [$0f10], sp
    inc de
    inc c
    ld d, $08
    ld a, $00
    inc a
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ret z

jr_019_4e02:
    jr nc, jr_019_4e14

    ldh [$ff90], a
    ld h, b
    ret nc

    jr nz, jr_019_4e02

    nop
    ld a, b
    nop
    inc a
    nop
    inc e
    nop
    nop
    nop
    nop

jr_019_4e14:
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld c, $04
    ld c, $04
    ld e, $0c
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    nop
    ld a, c
    ld b, $1e
    inc c
    sbc $0c
    ld a, $cc
    cp $04
    rst $38
    ret c

    rst $20
    db $db
    rst $38
    rlca
    rst $38
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    cp $f8
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    inc bc
    rst $38
    dec c
    ld e, a
    rrca
    ccf
    inc bc
    ld c, e
    inc [hl]
    ccf
    inc bc
    rst $38

jr_019_4e62:
    or [hl]
    rst $38
    or [hl]
    cp $34
    db $fc
    jr nc, jr_019_4e62

    or b
    ld hl, sp-$60
    db $fc
    jr @-$02

    cp b
    rra
    ld bc, $0c13
    db $10
    rrca
    dec de
    inc b
    ld l, $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_4e81

jr_019_4e81:
    db $fc
    add b
    db $ec
    jr jr_019_4e9e

    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_019_4e91

jr_019_4e91:
    ld a, $00
    ccf
    ld e, $1f
    rlca
    rra
    ld bc, $0e11
    db $10
    rrca
    rla

jr_019_4e9e:
    ld [$017f], sp
    nop
    nop
    pop bc
    nop
    rst $30
    add c
    rst $38
    rst $20
    rst $38
    ld e, d
    ld h, [hl]
    sbc b
    rst $38
    ld h, [hl]
    rst $38
    rst $20
    ld a, b
    nop
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    rst $38
    rlca
    rst $38
    ld e, $ff
    add hl, sp
    rst $38
    dec b
    ld e, a
    rrca
    ccf
    inc bc
    ld c, a
    inc [hl]
    ccf
    rrca
    rst $38

jr_019_4ed2:
    sbc c
    rst $38
    ld a, h
    cp $7c
    db $fc
    jr c, jr_019_4ed2

    ret nz

    ld hl, sp-$40
    db $fc
    jr @-$02

    cp b
    ld hl, sp-$20
    db $fc
    ld a, b
    ld a, [hl]
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_4fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec de
    ld b, $06
    ld bc, $0001
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
    adc h
    inc bc
    ret nc

    adc a
    ld h, b
    rst $18
    ldh a, [rIF]
    add b
    ld a, a
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_4fe9

    ld [$08f0], sp
    ldh a, [$ff38]
    ret nz

    ld c, [hl]
    or b
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ld [bc], a
    rra
    inc bc
    rrca
    ld bc, $0c33
    rst $08
    jr nc, @+$01

jr_019_5042:
    nop
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    ld a, [$f0f0]
    ldh [$fffe], a
    nop
    sbc a
    ld h, [hl]
    ld a, a
    rlca
    daa
    dec de
    inc hl
    inc e
    jr nz, jr_019_5078

    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    rst $38
    add [hl]
    cp $d8
    db $fd
    ld a, [de]

jr_019_5067:
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $28
    ldh [rNR24], a
    jr jr_019_507c

    ld b, $71

jr_019_5078:
    ld [hl], c
    ld [$0008], sp

jr_019_507c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ld [hl], b
    jr nz, jr_019_5042

    sub b
    ld l, h
    ld e, b
    inc a
    jr z, @+$18

    inc c
    ld c, $04
    rrca
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_50ba

    ld h, b
    rra
    sub b
    ld l, a
    add e
    ld a, h
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5067

    ld [$08f0], sp
    ldh a, [$ff38]
    ret nz

    ld c, [hl]
    or b
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ld [bc], a
    rra
    inc bc
    rrca

jr_019_50ba:
    ld bc, $0e31
    ld b, e
    inc a
    add a
    ld a, c
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    cp $f0
    cp $ec
    cp $0c
    db $fc
    ldh a, [$fff0]
    ldh [$ff7b], a
    inc b
    jr nz, jr_019_50f4

    jr nz, jr_019_50f6

    jr nz, jr_019_50f8

    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    ld d, [hl]
    xor b
    dec l
    jp nc, Jump_019_609f

    sbc a
    ld h, b
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_50f4:
    nop
    nop

jr_019_50f6:
    nop
    nop

jr_019_50f8:
    nop
    inc b
    nop
    ld h, $20
    inc de
    db $10
    inc de
    db $10
    xor b
    sub b
    sbc b
    add b
    ld d, h
    ld c, b
    ld e, h
    ld c, b
    ld l, $24
    ld l, $24
    rla
    ld [de], a
    rrca
    ld a, [bc]
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
    jr nz, jr_019_513c

    ld [hl], b
    rrca
    add b
    ld a, a
    ld [hl], $2c
    ld l, $24
    adc $04
    ld a, $c4
    ld c, $f4
    dec bc
    or $3f
    jp nz, $b24f

    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ld [bc], a
    rra
    inc bc
    rra

jr_019_513c:
    ld bc, $1ce3
    ld c, a
    inc sp
    rst $38
    ld [bc], a
    rst $38
    jp nc, $d2ff

    rst $38
    ret nc

    rst $38
    or $ff
    and $fe

jr_019_514e:
    jr jr_019_514e

    db $fc
    scf
    dec bc
    daa
    jr jr_019_5179

    inc e
    jr nz, jr_019_5178

    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    db $fc
    ret nz

    or $08
    xor l
    ld d, d
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf

jr_019_5178:
    ld [bc], a

jr_019_5179:
    rra
    inc bc
    rrca
    ld bc, $0c33
    ld b, a
    ld a, [hl-]
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    ei
    pop af
    or $e3
    db $fd
    ld b, $fb
    inc c
    nop

jr_019_5192:
    nop
    rlca
    nop
    dec e
    ld b, $7e
    jr jr_019_5192

    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    ld hl, sp+$00
    ld a, $c0
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
    rst $38
    rlca
    daa
    dec de
    inc hl
    inc e
    jr nz, jr_019_51d8

    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    db $fd
    jp nc, $98fe

    db $fd
    ld [bc], a
    adc a
    ld [hl], b
    sbc a
    ld h, b
    ld a, [hl]
    nop
    nop
    nop
    nop

jr_019_51d0:
    nop
    nop
    nop
    jr c, jr_019_520d

    ld b, b
    ld b, b
    rra

jr_019_51d8:
    nop
    ld a, h
    rra
    rst $38
    ld h, b
    ldh [$ff80], a
    ret nz

    nop
    jr nc, jr_019_5213

    ld [$6008], sp
    ld h, b
    sbc b
    jr @+$66

    add h
    ld hl, sp+$00
    inc e
    nop
    ld b, $00
    ld bc, $0700
    nop
    ld c, $04
    inc e
    ld [$1038], sp
    ld l, b
    jr nc, jr_019_526e

    jr nz, jr_019_51d0

    ld h, b
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

jr_019_520d:
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5213:
    inc bc
    nop
    dec c
    ld [bc], a
    ld de, $230e
    dec e
    ld h, e
    dec e
    sub e
    ld l, l
    add a
    ld a, d
    ldh [rLCDC], a
    and b
    ret nz

    ldh a, [$ff80]
    ret z

    or b
    ld c, b
    or b
    ld hl, sp+$00
    adc $30
    rst $38
    nop
    ld a, a
    inc bc
    ccf
    nop
    ccf
    ld bc, $011f
    rrca
    ld [bc], a
    rla
    dec bc
    daa
    dec de
    ld c, a
    jr nc, @+$01

    ld d, b
    rst $38
    ld d, b
    rst $38
    sbc b
    ld a, [$f0b0]
    ret nz

    ldh a, [$ff60]
    ldh a, [$ff60]
    ldh [rP1], a
    ld [hl], e
    inc c
    ld [hl+], a
    dec e
    jr nz, jr_019_5276

    jr nz, @+$21

    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld d, [hl]
    xor b
    dec l
    jp nc, Jump_019_609f

    sbc a
    ld h, b
    ld a, [hl]
    nop
    nop

jr_019_526e:
    nop
    nop
    nop
    inc e
    nop
    rlca
    nop
    inc bc

jr_019_5276:
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
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    or b
    ld h, b
    ld [hl], b
    jr nz, jr_019_52e8

    jr nc, jr_019_52ca

    db $10
    cpl
    jr jr_019_52b2

    dec bc
    inc a
    dec bc
    ld d, [hl]
    dec l
    adc $35
    sub a
    ld l, d
    add a
    ld a, c
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR10], a
    ldh [rSVBK], a
    add b
    ld c, [hl]
    or b
    rst $38
    nop
    ld a, a

jr_019_52b2:
    inc bc
    ccf
    nop
    ccf
    ld bc, $011f
    rrca
    ld [bc], a
    rla
    add hl, bc
    daa
    add hl, de
    ld c, a
    jr nc, @+$01

    ld d, b
    rst $38
    ld d, b
    rst $38
    sbc b
    ld a, [$f080]

jr_019_52ca:
    ld h, b
    ldh a, [$ffa0]
    ldh a, [$ffa0]
    ldh [$ffc0], a
    ld [hl], e
    inc c
    ld [hl+], a
    dec e
    jr nz, jr_019_52f6

    ld hl, $111e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    xor [hl]
    ld d, b
    ld d, a
    xor b

jr_019_52e7:
    ccf

jr_019_52e8:
    ret nz

    ccf
    ret nz

    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c

jr_019_52f6:
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
    nop
    nop
    ldh [rP1], a
    jr jr_019_52e7

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $37
    add hl, bc
    ld a, e
    inc [hl]
    ld a, b
    daa
    cp $00
    cp $04
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    or $c8
    and $18
    ld c, $f4
    ccf
    ld a, [de]
    ld a, [de]
    dec b
    db $10
    rrca
    dec c
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    rst $38
    ld h, $2f
    sub $0e
    ldh a, [$ffd8]
    jr nz, @+$76

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $1f
    add hl, bc
    dec sp
    inc d
    jr c, jr_019_5378

    ccf
    ld a, [de]
    ld e, $09
    jr @+$09

jr_019_5367:
    dec c
    ld [bc], a
    rla
    ld [$003f], sp
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

jr_019_5378:
    rrca
    db $10
    rrca
    inc de
    inc c
    inc a
    inc bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_019_5367

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a

jr_019_5396:
    db $10
    ccf
    rlca
    ld a, a
    inc hl
    rst $38
    jr nz, jr_019_5396

    ld d, a
    rst $38
    ld d, b
    cp $f0
    cp $f4
    cp $84
    cp $f0
    ld sp, hl
    ld h, [hl]
    or $08
    ld a, [bc]
    db $f4
    cp $00
    ld a, a
    ld [de], a
    ld a, [hl-]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    ld a, [hl]
    xor h
    ld a, $cc
    inc c
    ldh a, [$ffd8]
    jr nz, @+$76

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    ld a, a
    rlca
    ld a, a
    rrca
    ld a, a
    nop
    ccf
    inc de
    ld a, a
    dec hl
    rst $38
    ld l, b
    cp $51
    ld a, l
    ld [de], a
    rra
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    ld h, b
    ld h, b
    ldh [$ffe0], a
    add b
    add b

jr_019_53f7:
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    jr c, jr_019_5437

    jr @+$1a

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
    ld a, a
    rlca
    nop
    nop
    ldh [rP1], a
    jr jr_019_53f7

    inc b
    ld hl, sp-$7c
    ld a, b
    ld b, d
    cp h
    push af
    ld a, [bc]
    db $fd
    ldh a, [c]
    ld a, a
    ld b, $7f
    ld bc, $173f
    rra
    rlca
    rrca
    inc bc
    rla
    ld [$1738], sp
    ld a, a
    jr nc, @+$01

    or b
    cp $c0
    cp $f4

jr_019_5437:
    cp $70
    ld sp, hl
    ld h, [hl]
    or $08
    ld c, $f4
    rst $38
    ld b, $7f
    ld [hl-], a
    ld a, [hl-]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    ld a, a
    and [hl]
    ld l, $d0

jr_019_5455:
    ld [$d8f0], sp
    jr nz, jr_019_54ce

    ld [$007e], sp
    ld a, $00
    inc e
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
    jr c, @+$09

    ld a, e
    inc b
    ldh [rP1], a
    jr jr_019_5455

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $05fe
    ld a, [$7886]
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, $3f
    ld bc, $1b3f
    ccf
    jr jr_019_54ca

    inc de
    ccf

jr_019_5490:
    jr jr_019_5490

    inc b
    cp $00
    ld sp, hl
    or [hl]
    cp $c0
    cp $ec
    cp $0c
    ld e, $e4
    cp $0c
    dec a
    ld a, [de]
    dec de
    inc b
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
    sbc $2c
    ld l, h
    db $10

jr_019_54b5:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    db $10

jr_019_54ca:
    rrca
    db $10
    rrca
    dec sp

jr_019_54ce:
    inc b
    ld a, h
    inc bc
    ldh [rP1], a
    jr jr_019_54b5

    ld b, $f8
    dec b
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, [hl]
    or h
    ld a, a
    nop
    ld a, a
    ld b, $7f
    add hl, bc
    ccf
    rlca
    ccf
    jr @+$3e

    dec de
    ccf
    db $10
    ccf
    ld a, [de]
    cp $04
    cp $b0

jr_019_54f5:
    ld sp, hl
    add $fe
    ldh a, [$fffe]
    inc c
    ld e, $ec
    cp $04
    cp $2c
    ld a, $19
    dec e
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, $cc
    call c, Call_019_7420
    ld [$007e], sp
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

    jr nz, jr_019_5546

    jr nz, jr_019_5548

    jr nz, jr_019_554a

    jr nz, jr_019_554c

    ld [hl], a
    ld [$07f8], sp
    ret nz

    nop
    jr nc, jr_019_54f5

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

jr_019_5546:
    dec c
    ld e, a

jr_019_5548:
    dec c
    ccf

jr_019_554a:
    inc de
    ld [hl], e

jr_019_554c:
    inc l
    ld hl, sp+$47
    ld a, a
    nop
    db $fc
    ld [$68fc], sp
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    db $ec
    ret nc

    call nc, Call_000_1a28
    db $e4
    cp $00
    sbc a
    ld h, b
    cp h
    ld b, b
    ld a, b
    nop
    jr nc, jr_019_5569

jr_019_5569:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [bc], a
    add hl, sp
    ld b, $1e
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
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld bc, $0f5f
    ccf
    inc de
    ld [hl], e
    inc l
    ld hl, sp+$47
    ld a, a
    nop
    db $fc
    ld [$e8fc], sp
    db $fc
    nop
    ldh a, [c]
    db $ec
    db $ec
    ret nc

    call nc, Call_000_1a28
    db $e4
    cp $00
    rlca
    nop
    jr jr_019_55ac

    jr nz, jr_019_55c6

    jr nz, jr_019_55c8

    ld h, a
    jr @-$06

jr_019_55ac:
    rlca
    rst $38
    nop
    rst $38
    dec c
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rDIV]
    ld hl, sp-$76
    ld [hl], h
    ld a, [$f604]
    ld l, b
    rst $38
    dec c
    rst $38
    dec l
    ld a, a

jr_019_55c6:
    rlca
    rra

jr_019_55c8:
    nop
    inc a
    inc de
    ld [hl], e
    inc l
    ld hl, sp+$47
    ld a, a
    nop
    db $fc
    ld l, b
    db $fc
    ld l, b
    db $fc
    ret nz

    ldh a, [c]
    inc c
    ld l, h
    sub b
    sub h
    ld l, b
    ld a, [hl-]
    call nz, Call_000_00fe
    sbc a
    ld h, b
    cp h
    ld b, b
    ld a, b
    nop
    jr nc, jr_019_55e9

jr_019_55e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld b, $3b
    inc b
    ld e, $00

jr_019_55f7:
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
    ld [hl], h
    dec bc
    rst $38
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_019_55f7

    inc b
    ld hl, sp+$04
    ld hl, sp-$7d
    ld a, h
    ld b, h
    cp e
    db $fc
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
    add b
    nop
    add b
    nop
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    ld [$032f], sp
    rrca
    ld bc, $0c73
    db $fc
    ld [hl], e
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    ld e, b
    rst $38
    ldh [c], a
    rst $38
    ld hl, sp-$04
    di
    rst $38
    nop
    ld b, $f8
    rst $38
    ld b, $80
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0d07], sp
    ld [bc], a
    rla
    ld [$003f], sp
    ld a, $00
    inc e
    nop
    ld a, a
    and d
    cpl
    sub $0f
    or $de
    jr nz, @+$76

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    nop
    rst $38
    rra
    rst $38
    dec [hl]
    rst $38
    ld l, $7f
    rra
    ld a, a
    rra
    rst $18
    jr nz, @-$1e

    rst $18
    rst $38
    ld b, b
    db $fc
    add b
    ld hl, sp-$40
    ld hl, sp+$50
    ld hl, sp-$40
    db $e4
    ret c

jr_019_56ab:
    sbc $20

jr_019_56ad:
    ccf
    sbc $ff
    ld b, $7d
    ld a, [bc]
    jr z, jr_019_56cc

    jr nz, jr_019_56d6

    dec de
    inc b
    ld [de], a
    inc c
    ccf
    nop
    ld a, $00
    inc e
    nop
    and $80
    sub b
    ld h, b
    db $10
    ldh [$ff78], a
    add b
    cp b
    ld b, b
    ld a, b

jr_019_56cc:
    nop
    jr nc, jr_019_56cf

jr_019_56cf:
    nop
    nop
    nop
    nop
    nop
    nop
    rra

jr_019_56d6:
    nop
    ld h, b
    rra
    add b
    ld a, a
    add b
    ld a, a
    sbc b
    ld h, a
    and h
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_019_56ab

    jr nz, jr_019_56ad

    jr jr_019_56cf

    inc h
    ret c

    ld a, a
    nop
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    rla
    rst $38
    rra
    ld e, a
    dec c
    rrca
    nop
    jr jr_019_5708

    rst $38
    nop
    cp $c0
    db $fc
    ldh [$fffc], a

jr_019_5708:
    jr z, jr_019_5708

    ldh [$fff2], a
    db $ec
    db $e4
    jr @+$20

    db $e4
    rst $38
    db $10
    cp $f5
    db $f4
    jp $01c2


    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $fe00
    inc b
    cp $4c
    ld e, [hl]
    xor h

jr_019_5727:
    cpl
    ret nc

    scf
    ret z

    rst $38
    nop
    and $00
    ret nz

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
    rla
    ld [$0778], sp
    nop
    nop
    ldh [rP1], a
    jr jr_019_5727

    inc b
    ld hl, sp+$04
    ld hl, sp+$03
    db $fc
    inc b
    ei
    sbc h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    rlca
    rst $38
    dec b
    rst $28
    inc bc
    ld a, a
    rlca
    rst $38
    ld a, d
    ei
    ld h, b
    ld h, b
    nop
    rst $38
    nop
    rst $38
    push af
    rst $38
    ld [hl], h
    db $fc
    sub e
    ei
    db $f4
    rst $38
    add $ff
    inc c
    inc c
    nop
    call c, $ec20
    sub b
    ret z

    or b
    xor b
    ld d, b
    jr nc, @-$3e

    ld b, b
    add b
    add b
    nop
    nop
    nop

jr_019_5791:
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    jr jr_019_5791

    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    rla
    ld [$0778], sp
    rst $38
    nop
    rst $38
    rlca
    rst $38
    dec b
    inc b
    ld hl, sp+$04
    ld hl, sp+$03
    db $fc
    inc b
    ei
    sbc h
    ld h, e
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [hl], h
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    sub b
    ld h, b
    ld d, b
    and b
    ld d, b
    and b
    rst $28

jr_019_57e2:
    inc bc
    ld e, a
    rlca
    ccf
    ld a, [bc]

jr_019_57e7:
    ld a, a
    jr c, jr_019_57e2

    ld h, b
    ldh a, [$ff60]
    ld h, b
    nop
    nop
    nop
    db $fd
    sub d
    ld hl, sp-$19
    db $ed
    jp nc, $04ff

    ccf
    inc e
    inc a
    jr @+$1a

    nop
    nop
    nop
    cp b
    ld b, b
    inc [hl]
    ret z

    ld h, d
    sbc h
    jp nc, $ec2c

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_581e

    jr nz, @+$21

    jr nz, jr_019_583a

    ld h, $19
    add hl, hl

jr_019_581e:
    ld d, $ff
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_57e7

    ld [$08f0], sp
    ldh a, [rTMA]
    ld hl, sp+$09
    or $f9
    ld b, $01
    nop
    ld bc, $0100
    nop
    ld bc, $0300

jr_019_583a:
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc

jr_019_5840:
    nop
    rst $38
    rrca
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $c0
    db $fc
    add sp, -$04
    add sp, -$04
    ldh [$fff2], a
    ld c, h
    db $ec
    db $10
    sbc [hl]
    ld l, h
    sbc $2c
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    add b
    ld a, a
    ld a, a
    nop
    ld a, $00
    inc e
    nop
    ld a, [hl]
    xor h
    ld a, [hl]
    adc h
    ld c, h
    or b
    ld e, b
    and b
    ld [hl], h
    adc b
    cp $00
    ld a, $00
    inc e
    nop
    nop
    nop
    rlca
    nop
    ld [$7707], sp
    ld [$00ff], sp
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    jr c, jr_019_5892

jr_019_5892:
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$c4f0], sp
    jr c, jr_019_5840

    ld e, b
    ldh a, [c]
    adc h
    ld a, [$0f44]
    inc bc
    rla
    rrca
    rra
    rrca
    cpl
    rra
    inc l
    rra
    jr nz, jr_019_58cc

    inc d
    rrca
    ld d, $0f
    rst $38
    sbc l
    rst $18
    xor $f1
    xor $0f
    ldh a, [rIF]
    or $0f
    rst $30
    rla

jr_019_58be:
    jp hl


    rra
    ldh [$fffe], a
    ret nc

    cp $d0
    rst $38
    ret nz

    rst $38
    add b
    rst $00
    jr c, jr_019_58be

jr_019_58cc:
    adc h
    ld a, [$fef4]
    ld [hl], b
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
    nop
    nop
    nop
    nop
    ld a, [hl]
    add l
    call nc, $100b
    rrca
    dec de
    inc b
    ld l, $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_58f1

jr_019_58f1:
    ldh a, [rP1]
    ld d, b
    and b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_019_5901

jr_019_5901:
    ld bc, $0700
    ld bc, $070b

jr_019_5907:
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    ret nz

    nop
    di
    ret nz

    db $ec
    di
    rst $38
    ldh a, [$ffe7]
    ld hl, sp-$61
    ld hl, sp-$4a
    ei
    ld l, a
    or $00
    nop
    ldh [rP1], a
    jr jr_019_5907

    add h
    ld a, b
    ldh [c], a
    inc e
    ld d, d
    xor h
    ld a, [$ea04]
    call nc, Call_000_070b
    ld b, $01
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
    ld e, a
    and $3d
    adc $de
    ld hl, $12ed
    ld a, a
    jr nz, jr_019_59cb

    inc sp
    ccf
    nop
    ld e, $05
    cp $c0
    cp $50
    cp $50

jr_019_5957:
    ei
    ld h, h
    rst $30
    ld l, b
    pop hl
    sbc [hl]
    cp $00
    or $40
    inc d
    dec bc
    db $10
    rrca
    inc de
    inc c
    ld h, $18
    ld a, $00
    ld a, h
    nop
    ld a, b
    nop
    jr nc, jr_019_5971

jr_019_5971:
    ld d, b
    and b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $10
    ld hl, sp+$00
    ld a, h
    nop
    inc a
    nop
    jr jr_019_5981

jr_019_5981:
    nop
    nop
    rrca
    nop
    db $10
    rrca
    ld a, [hl]
    ld bc, $06f9
    rst $38
    nop
    rst $38
    dec d
    rst $38
    dec d
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5957

    ld [$04f0], sp
    ld hl, sp-$7c
    ld a, b
    add $38
    push hl
    sbc d
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
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld b, b
    ccf
    ld a, a
    inc sp
    ld a, a
    dec l
    ccf
    inc c
    rst $38
    inc bc
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ret nz

    cp $d0
    ld hl, sp-$40
    ld hl, sp+$20

jr_019_59cb:
    db $e4
    ret c

    ld hl, sp-$40
    ldh [rP1], a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add b
    ld a, a
    ld a, a
    nop
    ld a, h
    sub b
    ld d, h
    xor b
    ld b, h
    cp b
    ld l, h
    sub b
    ld a, d
    add h
    ld a, a
    add b
    ld e, a
    add b
    adc [hl]
    nop
    jr jr_019_5a2b

    inc a
    ld a, h
    ccf
    ld a, a
    inc c
    inc a
    inc bc
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld b, b
    ccf
    ld a, a
    ccf
    ld a, a
    ld [hl-], a
    ccf
    add hl, de
    rst $38
    ld bc, $f8ff
    cp $fd
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ret nz

    cp $50
    ld hl, sp-$80
    db $ec
    sub b
    ldh a, [c]
    ld l, h
    db $fc
    ld [hl], b
    ld hl, sp+$30
    ld a, [hl]
    sub b
    ld d, h
    xor b
    ld b, h
    cp b
    ld l, h

jr_019_5a28:
    sub b
    ld a, d
    add h

jr_019_5a2b:
    ld a, a
    add b
    ld e, a
    add b
    adc [hl]
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    inc c
    ld a, h
    inc bc
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec de
    rst $38
    rra
    ldh a, [rP1]
    ld [$84f0], sp
    ld a, b
    ld b, h
    cp b
    di
    inc c
    db $fc
    ld [hl], e
    db $fc
    db $db
    ei
    xor h
    ld a, a
    rrca
    rst $38
    ld h, h
    rst $38
    ld h, a
    ld a, a
    inc de
    dec de
    inc b
    inc b
    inc bc
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld [$7aff], a
    rst $38
    adc b
    db $fc
    di
    rst $30
    ld [$f60f], sp
    rst $38
    rlca
    rst $38
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop

jr_019_5a7a:
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld a, [$f305]
    inc c
    ld a, d
    inc b
    ld a, h
    nop
    add hl, sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc sp
    ret nz

    ld [$c8f0], sp
    jr nc, jr_019_5a28

    ld h, b
    ret nc

    jr nz, @-$06

    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    rra
    inc bc
    ccf
    ld [bc], a
    ld a, a
    inc sp
    ld a, a
    add hl, sp
    dec a
    ld [bc], a
    inc b
    inc bc
    rrca
    nop
    ccf
    ld bc, $f5ff
    rst $38
    dec a
    rst $38
    call nz, $f9fe
    ei
    inc b
    rlca
    ei
    rst $38
    nop
    cp h
    ld d, b
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b

jr_019_5ac9:
    ret nz

    nop
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    nop
    ld c, l
    ld [hl-], a
    ld a, c
    ld b, $7d
    ld [bc], a
    ld a, $00
    dec e
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc d
    add sp, $04
    ld hl, sp-$78
    ld [hl], b
    ret z

    jr nc, jr_019_5a7a

    ld h, b
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_5b00

    daa
    jr @-$02

    inc bc
    rst $38
    inc e
    rst $38

jr_019_5b00:
    ld [hl], $00
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5ac9

    ld [$88f0], sp
    ld [hl], b
    and $18
    ld sp, hl
    and [hl]
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, $ff00
    dec hl
    rst $38
    scf
    rst $38
    rra
    cp a
    ld de, $1ebf
    rst $38
    adc a
    rst $38
    ldh [$ffc0], a
    ccf
    rst $38
    ld d, b
    cp $b0
    db $fc
    add sp, -$04
    add sp, -$04
    nop
    ldh a, [c]
    inc c
    adc $30
    ccf
    sbc $3d
    ld a, [bc]
    ld l, b
    rla
    db $f4
    dec bc
    ldh a, [c]
    dec c
    ld a, l
    ld [bc], a
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    add [hl]
    and [hl]

jr_019_5b54:
    ld b, b
    jr nz, @-$3e

    ld b, b
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
    nop
    nop
    rlca
    nop
    jr jr_019_5b70

    daa
    jr jr_019_5b54

    rla
    rra
    xor $3f

jr_019_5b70:
    db $db
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$f6f0], sp
    ld [$76f9], sp
    ld sp, hl
    sbc $ff
    dec d
    rst $38
    dec sp
    rst $38
    ccf
    ld a, a
    jr jr_019_5bc9

    rra
    rra
    rrca
    cpl
    db $10
    ld [hl], b
    rrca
    cp $a8
    db $fc
    ret c

    db $fc
    ld hl, sp-$04
    jr @+$01

    ldh a, [$fff9]
    and $e6
    jr jr_019_5bbf

    and $ff
    ld h, h
    db $f4
    ld l, e
    ld [hl], b
    rrca
    ld de, $2e0e
    db $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_5bb1

jr_019_5bb1:
    rst $38
    ld b, [hl]
    ld d, [hl]
    and b
    ld [$c4f0], sp
    jr c, jr_019_5bf4

    inc b
    ccf
    nop
    rra
    nop

jr_019_5bbf:
    ld c, $00
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca

jr_019_5bc9:
    db $10
    rrca
    inc de
    inc c
    ld [hl], h
    dec bc
    rst $38
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
    rra
    inc c
    rlca

jr_019_5bee:
    rlca
    nop
    nop
    rst $38
    ldh a, [$fffe]

jr_019_5bf4:
    or b
    cp $b4

jr_019_5bf7:
    db $fc
    or b
    ld hl, sp-$20
    db $fc
    jr jr_019_5bee

    ldh a, [rP1]
    nop
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    rra
    inc c
    ccf
    rra
    rrca
    rrca
    cp $f0
    cp $b0
    cp $b4
    db $fc
    or b
    ld hl, sp-$20
    db $fc

jr_019_5c1c:
    jr jr_019_5c1c

    db $fc
    ld hl, sp-$08
    nop
    nop
    rlca
    nop
    jr jr_019_5c2e

    jr nz, jr_019_5c48

    jr nz, jr_019_5c4a

    ld h, b
    rra
    and b

jr_019_5c2e:
    ld e, a
    sub b
    ld l, a
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5bf7

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    add b
    ld a, a
    add c
    ld a, [hl]
    ld a, a
    nop
    ccf

jr_019_5c48:
    nop
    rra

jr_019_5c4a:
    nop
    ccf
    rra
    rrca
    rrca
    nop
    nop
    ccf
    ret nz

    rst $38

jr_019_5c54:
    ld [$08ff], sp
    ld a, [$f000]
    jr nz, jr_019_5c54

    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    add b
    ld a, a
    add c
    ld a, [hl]
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    ccf
    rra
    rra
    ccf
    ret nz

    rst $38

jr_019_5c74:
    ld [$08ff], sp
    ld a, [$f000]
    jr nz, jr_019_5c74

    ldh a, [$fffc]
    ld hl, sp-$10
    ldh a, [$ff03]
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
    rst $38
    dec bc
    ret nz

    nop
    jr nc, @-$3e

    ld [$04f0], sp
    ld hl, sp+$06
    ld hl, sp+$09
    or $c1
    ld a, $fe
    nop
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
    rrca
    rlca
    rlca
    rlca
    nop
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    ldh [rP1], a
    ldh a, [$ffe0]
    ldh a, [$fff0]
    nop
    nop
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
    rrca
    rlca
    rra
    rrca
    rlca
    rlca
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    ldh [rP1], a
    ldh a, [$ffe0]
    ld hl, sp-$10
    ldh [$ffe0], a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    db $10
    ld e, a
    rlca
    rrca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$fef4]
    ld hl, sp-$02
    adc h

jr_019_5cf7:
    db $fc
    ldh a, [$fff8]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    add c
    ld a, [hl]
    ld a, a
    nop
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
    ccf
    ret nz

    rst $38
    ld [$08ff], sp
    ld a, [$0000]
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
    ld [hl], $09
    ld a, e
    inc b
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5cf7

    ld [$06f0], sp
    ld hl, sp+$09
    or $01
    cp $e2
    inc e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc b
    ld a, a
    rrca
    cpl
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp $80
    cp $60

jr_019_5d57:
    db $fc
    ldh [$fff8], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    jr jr_019_5dc7

    rrca
    rrca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ld c, $fe
    nop
    db $fc
    ret nz

    ld hl, sp-$40
    ldh a, [$ff80]
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
    jr nz, jr_019_5daa

    ld h, b
    rra
    sub b
    ld l, a
    add e
    ld a, h
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5d57

    ld [$08f0], sp
    ldh a, [$ff38]
    ret nz

    ld c, [hl]
    or b
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ld [bc], a
    rra
    inc bc
    rrca

jr_019_5daa:
    ld bc, $0007
    rrca
    rlca
    rrca
    rlca
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    ld a, [$f0f0]
    ldh [$ffe0], a
    nop
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ccf
    rlca
    ld c, a
    inc sp
    daa
    dec de

jr_019_5dc7:
    rra
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    rlca
    rlca
    nop
    ldh a, [$ff60]
    ldh a, [rP1]
    sub b
    ld h, b
    ldh [rP1], a
    ldh a, [$ffe0]

jr_019_5ddb:
    ld hl, sp+$30
    ld hl, sp-$40
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    ld [hl], b
    rrca
    adc b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_019_5ddb

    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$80
    ld a, a
    ld h, e
    inc e
    ccf
    nop
    ccf
    nop
    ccf
    ld [bc], a
    rra
    inc bc
    rrca
    nop
    ld e, a
    nop
    inc [hl]
    ret z

    xor $10
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    ld a, [$f0f0]
    nop
    cp a
    ld e, a
    cp a
    ld e, c
    ld a, a
    jr nc, jr_019_5ea0

    scf
    ccf
    ld [$0f1f], sp
    rra
    rlca
    rrca
    nop
    ldh [$ffc0], a
    ldh a, [$ffe0]

jr_019_5e35:
    ldh a, [$ff60]
    ld [hl], b
    and b
    ldh [rLCDC], a
    ldh a, [$ff60]
    ldh [$ff80], a
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
    nop
    nop
    ld a, $00
    pop bc
    ld a, $10
    rrca
    jr nz, jr_019_5e74

    jr nz, @+$21

    jr nz, jr_019_5e78

    ld [hl], c
    ld c, $87
    ld a, b
    sbc a
    ld h, b
    ld a, a
    ld bc, $e018
    jr z, jr_019_5e35

    ld c, [hl]
    or b
    ld a, a
    add b
    rst $38
    jr nc, @+$01

    sub b
    rst $38
    ret c

    rst $38
    ldh a, [$ff1f]
    inc bc
    rrca

jr_019_5e74:
    ld bc, $000f
    rrca

jr_019_5e78:
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    ld b, $1f
    ld b, $fa
    ldh a, [$fff0]
    ldh [$ffe0], a
    nop
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ldh a, [$ff60]
    ldh a, [rP1]
    db $10
    ldh [$ff2f], a
    ld d, $1f
    nop
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_019_5ea0:
    nop
    ld h, b
    add b
    ldh [rLCDC], a
    ldh a, [$ff60]
    ldh a, [$ff60]
    ld hl, sp-$50
    ldh a, [$ff80]
    add b
    nop
    nop
    nop
    rra
    inc bc
    rrca
    ld bc, $000f
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    ld b, $1f
    ld b, $2f
    ld d, $47
    jr c, jr_019_5f05

    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    ld h, b
    add b
    ldh [rLCDC], a
    ldh a, [$ff60]
    ldh a, [$ff60]
    ld hl, sp-$50
    ldh a, [$ff80]
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
    ld [hl], b
    rrca
    sub b
    ld l, a
    add b
    ld a, a
    ld b, a
    jr c, jr_019_5ef2

jr_019_5ef2:
    nop
    ret nz

    nop

jr_019_5ef5:
    ld [hl-], a
    ret nz

    ld a, [bc]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$ff6f]
    sub b
    rst $18
    jr nz, jr_019_5f81

    ld bc, $067f

jr_019_5f05:
    ld a, a
    ld b, $3f
    dec b
    rra
    dec c
    rra
    dec c
    ccf
    inc c
    ccf
    dec e
    cp $80
    db $fc
    and b
    ldh a, [$ffa0]
    ld hl, sp-$50
    ldh a, [$ffe0]
    ldh [$ff80], a
    ret nz

    nop
    ret nz

    add b
    ccf
    ld e, $7f
    inc e
    cp h
    ld d, e
    sub c
    ld l, [hl]
    ld l, a
    ld bc, $070f
    rlca
    inc bc
    inc bc
    nop
    and b
    ld b, b
    jr nz, jr_019_5ef5

    ld a, b
    and b
    ld hl, sp+$50

jr_019_5f39:
    ldh a, [$ffc0]
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_5f50

    jr nz, jr_019_5f6a

    jr nz, jr_019_5f6c

    jr nz, jr_019_5f6e

    ld l, h

jr_019_5f50:
    inc de
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
    cp $f7
    ld [$02ff], sp
    rst $38
    dec bc
    rst $38
    dec bc
    ld a, a

jr_019_5f6a:
    dec de
    rra

jr_019_5f6c:
    rrca
    nop

jr_019_5f6e:
    nop
    nop
    nop
    add $38
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    nop
    nop
    nop
    nop

jr_019_5f81:
    ld h, e
    inc e
    ccf
    nop
    ccf
    nop

jr_019_5f87:
    ccf
    ld [bc], a
    sbc a
    jp $edcb


    ld h, h
    ld l, h
    ld bc, $ef03
    db $10
    rst $38
    ld b, b
    rst $38
    ret nc

    db $fd
    jp nc, $d7fb

    rst $30
    rst $28
    adc [hl]
    adc [hl]
    jr jr_019_5f39

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
    jr nc, jr_019_5f87

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$0e
    ldh a, [$ffe1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5ff7:
    nop
    nop
    nop
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
    inc de
    inc c
    inc [hl]
    dec bc
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_019_5ff7

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

jr_019_605d:
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
    inc bc
    nop
    inc c
    inc bc
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
    nop
    nop
    ldh [rP1], a
    jr jr_019_605d

    inc b
    ld hl, sp+$06
    ld hl, sp+$10
    rrca
    db $10
    rrca
    jr nc, @+$11

    ld a, e
    inc b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld b, $7f
    ld b, $05
    ld a, [$fa05]
    ld bc, $85fe
    ld a, d
    ld c, d
    or h
    cp $00
    cp $b4

Jump_019_609f:
    cp $b0
    cpl
    ld b, $0f
    ld bc, $0c1f
    ld a, $0d
    ccf
    ld b, $7f
    ld b, $7e
    nop
    jr c, jr_019_60b1

jr_019_60b1:
    ld sp, hl
    or [hl]
    cp $c0
    db $fc
    jr @+$40

    ret c

    cp $30
    ld a, a
    jr nc, jr_019_60fd

    nop
    ld c, $00
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
    ld [hl], h
    dec bc
    rst $38
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
    ld b, $ff
    ld b, $ff
    ld d, $5f
    rlca
    rra
    inc bc
    ccf
    jr jr_019_6166

    scf
    ld a, [hl]
    ld sp, $b0ff
    cp $b4
    cp $b4
    cp $f0
    ld sp, hl
    ld h, [hl]
    and $18

jr_019_60fd:
    rra
    and $3f
    add $7f
    ld a, [hl-]
    ld a, [hl-]
    dec b
    db $10
    rrca
    add hl, de
    ld b, $2e
    db $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_6111

jr_019_6111:
    rst $38
    ld l, $2e
    ret nc

    inc b
    ld hl, sp-$34
    jr nc, @+$3c

    inc b
    ccf
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc sp
    inc c
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    rlca
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    add h
    ld a, b
    db $f4
    ld [$a4fa], sp
    db $fd
    or d
    db $fd
    ldh a, [c]
    rst $38
    rla
    ld a, a
    rla
    rra
    rlca
    rrca
    inc bc
    rra
    nop
    jr c, @+$19

    ld a, a
    jr nc, jr_019_61cf

    ld a, [hl+]
    rst $38
    ld [hl], h
    cp $74
    db $fc
    ld [hl], b
    cp $e0
    ld sp, hl
    ld b, $0e
    ldh a, [rIE]
    ld b, $ff
    ld a, [hl+]
    ld a, [hl]
    add hl, sp
    jr c, jr_019_616c

    db $10

jr_019_6166:
    rrca
    add hl, de
    ld b, $2e
    db $10
    ld a, [hl]

jr_019_616c:
    nop
    ld a, h
    nop
    jr c, jr_019_6171

jr_019_6171:
    ccf
    adc $0e
    ldh a, [rDIV]
    ld hl, sp-$34
    jr nc, @+$3c

    inc b
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
    nop
    nop
    nop
    rlca
    nop
    ccf
    ld bc, $077f
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$ffc0]
    ld hl, sp-$10
    db $fc
    ld [hl], b
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rla
    ld a, a
    inc bc
    ld d, e
    inc c
    inc e
    inc bc
    ccf
    jr jr_019_622f

    ld [hl+], a
    cp $70
    cp $74
    cp $f4
    or $e8
    jp hl


    ld d, $1d
    ldh [c], a
    rst $38
    inc c
    rst $38
    ld [hl+], a
    ld a, [hl]
    add hl, sp
    inc a
    dec de
    jr jr_019_61ce

    jr @+$09

    dec l
    ld [de], a
    ld a, [hl]
    nop
    ld a, h

jr_019_61ce:
    nop

jr_019_61cf:
    jr c, jr_019_61d1

jr_019_61d1:
    ccf
    adc $1e
    db $ec
    inc c
    ldh a, [$ff0c]
    ldh a, [$ffda]
    inc h
    ccf
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $003e
    pop bc
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$ff7f], a
    adc [hl]
    cp a
    ld d, a
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld a, b
    add b
    ld b, h
    cp b
    add h
    ld a, b
    ld hl, sp+$00
    or $20
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $00
    inc b
    nop
    nop
    nop
    ld bc, $ff00
    dec sp
    rst $38
    ld e, l
    rst $38
    ld l, a
    rst $38
    or a
    rst $38
    inc e
    ld a, h
    inc bc
    pop af
    ld l, [hl]

jr_019_622f:
    ei
    call nz, $e6ff
    rst $38
    adc [hl]
    cp $98
    cp h
    ld e, b
    ld a, [hl-]
    call nc, $807c
    ldh a, [rLCDC]
    ld hl, sp+$00
    db $fc
    ld [hl], e
    ld a, c
    ld [hl], $36
    ld [$205c], sp
    ld a, h
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$84f0], sp
    ld a, b
    ld c, h
    jr nc, @+$3c

    inc b
    ccf
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_019_6276

    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add a
    ld a, b
    sbc a
    ld h, e
    nop
    nop
    add b
    nop
    ld l, [hl]

jr_019_6276:
    add b
    ld de, $31ee
    adc $7a

jr_019_627c:
    or h
    db $fc
    jr nc, jr_019_627c

    add b
    ld a, [bc]
    dec b
    rra
    nop
    ccf
    ld bc, HeaderManufacturerCode
    ccf
    ld [bc], a
    dec sp
    nop
    ld sp, $1300
    ld bc, $5cff
    rst $38
    xor $ff
    halt
    rst $38
    cp [hl]
    cp $dd
    db $fc
    ld [hl], e
    pop af
    ld c, $c3
    cp l
    ldh [$ffc0], a
    ldh [$ffc0], a
    ldh [$ffc0], a
    ld hl, sp-$40
    db $ec
    ld d, b
    ret nc

    jr nz, @-$1e

    nop
    ldh [rP1], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_019_62b9:
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
    ld hl, sp-$19
    rst $30
    ld l, b
    ld l, h
    db $10
    ld a, h
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    db $10
    ldh [$ff08], a
    ldh a, [$ff8c]
    ld [hl], b
    ld a, d
    inc b
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
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_62b9

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [rSB]
    cp $ff
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
    rlca
    rlca
    nop
    ld bc, $ff00
    nop
    cp $80
    db $fc
    nop
    db $fc
    ld b, b
    db $fc
    ret nz

    ldh [c], a
    sbc h
    db $fc
    nop
    ld a, d
    or h
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $fd
    ld [hl-], a
    pop af
    xor $e2
    call c, Call_000_10ee
    or $08
    cp $00
    inc a
    nop
    nop
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop

jr_019_6347:
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    ldh [c], a
    inc e
    inc e
    ldh [$ff1f], a
    nop
    ccf
    rra
    ccf
    jr jr_019_6395

    ld [bc], a
    ld e, $01
    rrca
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    call nz, $e4b8
    jr jr_019_636c

    ld hl, sp-$38
    jr nc, jr_019_639c

jr_019_636c:
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
    jr nz, jr_019_639a

    jr nz, jr_019_639c

    inc a
    inc bc
    ld [hl], e
    inc c
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_6347

    ld [$0ef0], sp
    ldh a, [rNR11]
    xor $01
    cp $fe
    nop
    rst $38
    nop
    rst $38
    dec bc

jr_019_6395:
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a

jr_019_639a:
    rrca
    rrca

jr_019_639c:
    nop
    rrca
    ld b, $0f
    rlca
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    adc h
    ld [hl], b
    ldh a, [c]
    inc c
    db $fc
    ldh a, [rTAC]
    nop
    rlca
    ld [bc], a
    ld b, $01
    inc bc
    nop
    ld b, $01
    rrca
    nop
    rrca
    nop
    ld bc, $f800
    ldh [$ffe8], a
    db $10
    ld c, b
    or b
    ld [$90f0], sp
    ld h, b
    jr c, @-$3e

    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
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
    ld e, $01
    rra
    ld b, $fc
    nop
    db $fc
    nop

jr_019_63e5:
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    add $38
    inc [hl]
    ret z

    ld hl, sp+$30
    rrca
    rlca
    rlca
    nop
    inc b
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $f800
    ldh [$ffe8], a
    db $10
    ld [$08f0], sp
    ldh a, [$ff90]
    ld h, b
    cp b
    ld b, b
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    dec bc
    ret nz

    nop
    jr nc, jr_019_63e5

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$0e

Jump_019_642c:
    ldh a, [$ffc1]
    ld a, $b1
    ld c, [hl]
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    ld c, a
    rlca
    ccf
    nop
    ld a, a
    jr @+$01

    ld e, a
    rst $38
    ld h, e
    cp $00
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    ldh [rP1], a
    sub b
    ld h, b
    ret nc

    and b
    ldh a, [$ff80]
    ld a, a
    nop
    ld c, $05
    inc c
    inc bc
    ld b, $01
    dec c
    ld [bc], a
    rra
    nop
    rra
    nop
    ld bc, $b000
    ld b, b
    ret nc

    and b
    sub b
    ld h, b
    ld h, b
    add b
    db $10
    ldh [$ffb0], a
    ld b, b
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    ld bc, $ff00
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    ccf
    rlca
    ld a, a
    jr jr_019_650b

    jr @-$5f

jr_019_648e:
    ld h, e
    rlca
    ei
    cp $00
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    and b
    ld b, b
    ret nc

    jr nz, jr_019_648e

    nop
    ldh a, [rNR41]
    ld bc, $0200
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
    rlca
    ld hl, sp+$03
    db $fc
    add c
    ld a, [hl]
    ld a, a
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld bc, $b000
    ld b, b
    db $10
    ldh [rNR10], a
    ldh [$ff60], a
    add b
    db $10
    ldh [$fff0], a
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld [$0008], sp
    nop
    nop
    nop
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    rlca
    rra
    nop
    ccf
    inc e
    ccf
    inc bc
    rst $38
    rra
    cp $00
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    ldh [rP1], a
    ret nc

    jr nz, @-$06

    add b
    ld hl, sp-$70
    ld c, a
    ld b, b
    inc b
    inc bc

jr_019_6505:
    ld [bc], a
    ld bc, $0001
    nop
    nop

jr_019_650b:
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret c

    ccf
    jp nz, $fc03

    add a
    ld a, b
    ld a, a
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    ret c

    jr nz, @+$0a

    ldh a, [$ff08]
    ldh a, [$ff30]
    ret nz

    adc b
    ld [hl], b
    ld hl, sp+$00

jr_019_652d:
    ld hl, sp+$00
    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_6558

    jr nz, jr_019_655a

    ld [hl], b

jr_019_653c:
    rrca
    add c
    ld a, [hl]
    add a
    ld a, b
    ret nz

    nop
    jr nc, jr_019_6505

    ld [$08f0], sp
    ldh a, [$ff38]
    ret nz

    ld c, [hl]
    or b
    rst $38
    nop
    rst $38
    ldh [$ff7f], a
    ld bc, HeaderManufacturerCode
    ccf
    inc bc
    rra

jr_019_6558:
    inc bc
    rrca

jr_019_655a:
    nop
    ld [$1707], sp
    ld [$030f], sp
    rst $38
    db $10
    rst $38
    ld hl, sp-$06
    ret nz

    ret nz

    add b
    ret nz

    nop
    jr nc, jr_019_652d

    ret z

    jr nc, jr_019_6558

    sub b
    rlca
    inc bc

jr_019_6573:
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    inc bc
    rlca

jr_019_657a:
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ret c

    jr nz, jr_019_653c

    ld d, b
    sub b
    ld h, b
    ret nc

    jr nz, jr_019_657a

    nop
    ld hl, sp+$00
    ld a, b
    add b
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
    nop
    nop
    nop
    nop
    rrca
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nz, @+$21

    jr nz, jr_019_65ca

    ld [hl], c
    ld c, $87
    ld a, c
    add a
    ld a, c
    jr nc, jr_019_6573

    ld [$38f0], sp
    ret nz

    ld c, [hl]
    or b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld hl, sp+$7f
    ld bc, $033f
    rra
    ld bc, $010f
    inc bc

jr_019_65ca:
    nop
    inc b
    inc bc
    dec bc
    inc b
    rlca
    nop
    ld a, [$c0c0]
    add b

jr_019_65d5:
    ret nz

    add b
    ret nz

    add b
    ldh a, [rP1]
    ld [$e4f0], sp
    jr @-$2a

    add sp, $03
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    db $fc
    ret nz

    call z, $e8b8
    ret nc

    add sp, -$30
    ret c

    jr nz, @-$02

    nop
    cp h
    ld b, b
    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_6628

    ld [hl], b
    rrca
    add b
    ld a, a
    add e
    ld a, h
    ld a, a
    ld bc, $00c0
    jr nc, jr_019_65d5

    ld [$08f0], sp
    ldh a, [$ff3e]
    ret nz

    ld c, a
    or b
    rst $38
    nop
    rst $38
    ldh a, [$ff3f]
    ld bc, $033f
    ld a, a
    inc sp
    ld a, a

jr_019_6628:
    ld sp, $183f
    rra
    ld c, $3f
    rla
    rra
    inc bc
    rst $38
    db $10
    cp $f8

jr_019_6635:
    ld hl, sp-$10
    ldh a, [$ffe0]
    ldh a, [rP1]
    ld [$9cf0], sp
    ld h, b
    db $fc
    ld [$0003], sp
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, $01
    rlca
    nop
    inc bc
    nop
    ld bc, $8c00
    ld [hl], b
    inc b
    ld hl, sp+$08
    ldh a, [$ffa8]
    ld d, b
    ld e, b
    and b
    db $fc
    nop
    db $fc
    nop
    ret nz

    nop
    rlca
    nop
    jr jr_019_666c

    jr nz, jr_019_6686

    jr nz, jr_019_6688

    ld h, b
    rra
    and b

jr_019_666c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_019_6635

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    ld a, a
    nop
    ccf
    nop
    ld a, a

jr_019_6686:
    nop
    adc a

jr_019_6688:
    ld [hl], b
    ld [hl], b
    rrca
    ld a, b
    scf
    ld a, a
    jr nz, @+$01

    ld h, h
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_019_66d2

    ret nc

    inc a
    ret c

    db $fc
    ld [$4cfe], sp
    db $f4
    ld l, e
    ld [hl], b
    rrca
    inc de
    inc c
    ld h, $18
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_019_66af

jr_019_66af:
    nop
    nop
    ld e, [hl]
    xor h
    inc e
    ldh [$ff90], a

jr_019_66b6:
    ld h, b
    ret z

    jr nc, jr_019_66b6

    nop
    ld a, b
    nop
    jr nc, jr_019_66bf

jr_019_66bf:
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    add a
    ld a, b
    ld [hl], b
    rrca
    jr c, jr_019_66e4

    rra
    nop
    rra
    inc b
    rst $38

jr_019_66d2:
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_019_66f2

    ldh [$ff38], a
    ret nc

    ldh a, [rP1]
    ldh a, [rLCDC]
    inc d
    dec bc
    db $10

jr_019_66e4:
    rrca
    inc de
    inc c
    ld d, $08
    ld l, $10
    ld e, $00
    inc a
    nop
    jr c, jr_019_66f1

jr_019_66f1:
    ld d, b

jr_019_66f2:
    and b
    db $10
    ldh [$ff90], a
    ld h, b
    sub b
    ld h, b
    ret z

    jr nc, @-$0e

    nop
    ld a, b
    nop
    jr c, jr_019_6701

jr_019_6701:
    inc d
    dec bc
    jr nz, jr_019_6724

    inc sp
    inc c
    ld h, $18
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_019_670f

jr_019_670f:
    nop
    nop
    ld d, b
    and b
    ld [$98f0], sp
    ld h, b
    ret z

    jr nc, @-$0a

    ld [$0078], sp
    jr nc, jr_019_671f

jr_019_671f:
    nop
    nop
    rra
    nop
    rrca

jr_019_6724:
    nop
    rra
    nop
    ld hl, $1c1e
    inc bc
    ld a, [hl]
    dec e
    rst $38
    ld [hl], h
    rst $30
    ld h, c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $00
    db $f4
    ld [$f807], sp
    rrca
    rst $30
    rst $38
    dec b
    db $fd
    db $10
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
    ret nz

    nop
    ldh [$ffc0], a
    ldh [$ffc0], a
    ld h, l
    ld [bc], a
    ld [$0c07], sp
    inc bc
    add hl, bc
    ld b, $1f
    nop
    rrca
    nop
    ld b, $00
    nop
    nop
    inc d
    add sp, $02
    db $fc
    and $18
    or d
    inc c
    cp l
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
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

jr_019_677c:
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld l, a
    nop
    rst $38
    ld h, b
    pop af
    ld l, [hl]
    ld a, h
    inc de
    ld e, $0d
    rrca
    inc b
    rlca
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$fb07], sp
    rst $38
    ld b, $1e
    db $e4
    db $fc
    db $10
    ret nz

    nop
    ret nz

    nop
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    inc b
    inc bc
    inc b
    inc bc
    dec b
    ld [bc], a
    dec bc
    inc b
    rrca
    nop
    rra
    nop
    ld c, $00
    inc d
    add sp, $04
    ld hl, sp-$1c
    jr jr_019_677c

    ld [$04ba], sp
    cp [hl]
    nop
    rra
    nop
    ld c, $00
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_019_67ea

    ld c, b
    scf
    ld b, c
    ld a, $67
    add hl, de
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp+$1c

jr_019_67ea:
    ldh [$ff27], a
    ret c

    rst $38
    nop
    rst $38
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
    add b
    nop
    ld b, b
    add b
    ld a, a
    inc bc
    ccf
    rlca
    rra
    inc bc
    daa
    add hl, de
    inc de
    inc c
    jr c, jr_019_6814

    ld a, a
    jr nz, @+$01

    ld l, b
    rst $38
    ld l, h
    rst $38

jr_019_6814:
    ld l, h
    rst $38
    ld l, h
    db $fd
    ld hl, sp-$08
    nop
    ld [hl], b
    and b
    ld hl, sp+$30
    db $fc
    sbc b
    ret nz

    nop
    ret nz

    nop
    add b
    nop

jr_019_6827:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld h, [hl]
    ld [hl], b
    rrca
    rla
    ld [$1825], sp
    ld a, a
    nop
    inc a
    nop
    jr jr_019_683f

jr_019_683f:
    nop
    nop
    sbc [hl]
    ld l, h
    ld e, $ec
    inc a
    ret nz

    adc b
    ld [hl], b
    db $f4
    ld [$00f8], sp
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_685e

    jr nz, jr_019_6878

    jr nz, jr_019_687a

    jr nz, jr_019_687c

    inc hl

jr_019_685e:
    inc e
    ld [hl], h
    dec bc
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_6827

    ld c, $f0
    add hl, bc
    or $09
    or $01
    cp $8a
    ld [hl], h
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    rst $38

jr_019_6878:
    dec c
    ld a, a

jr_019_687a:
    dec c
    ld a, a

jr_019_687c:
    scf
    ld a, a
    jr c, jr_019_68ff

    rra
    db $fc
    nop
    db $fc
    ld [$68fc], sp
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    db $fc
    ret nc

    cp $38
    cp $30
    sbc a
    ld h, d
    adc e
    ld [hl], h
    ld e, h
    inc hl
    ld a, a
    inc b
    cp a
    ld b, b
    sbc [hl]
    ld h, l
    sbc a
    ld h, [hl]
    sbc a
    ld h, a
    ld sp, hl
    add $f1
    adc $fa
    inc b
    cp $20
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $7f
    dec bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    dec bc
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    nop
    cp $d0
    ld hl, sp-$70
    ld hl, sp-$70
    ld hl, sp-$70
    ld hl, sp-$30
    ldh a, [$ffc0]
    ldh [$ffc0], a
    ret nz

    nop
    db $fc
    nop
    db $fc
    ld [$68fc], sp
    db $fc
    ld h, b
    ldh a, [c]
    ld l, h
    ld a, [$fed4]

jr_019_68de:
    jr c, jr_019_68de

    ld [hl], b
    sbc a
    ld h, d
    cp a
    ld b, b
    ld a, b
    rlca
    scf
    ld [$255e], sp
    sbc a
    ld h, b
    sbc [hl]
    ld h, l
    sbc a
    ld h, [hl]
    ld sp, hl
    add $fd
    jp nz, Jump_000_20de

    db $ec
    db $10
    ld a, d
    and h
    ld sp, hl
    ld b, $79
    and [hl]

jr_019_68ff:
    ld sp, hl
    ld h, [hl]
    sbc a
    ld h, a
    ld a, a
    dec bc
    rra
    add hl, bc
    rra
    add hl, bc
    rrca
    ld bc, $0307
    rlca
    inc bc
    inc bc
    nop
    ld sp, hl
    and $fe
    ret nc

    ld hl, sp-$70
    ld hl, sp-$70
    ldh a, [$ff80]
    ldh [$ffc0], a
    ldh [$ffc0], a
    ret nz

    nop
    db $fc
    nop
    db $fc
    ld [$68fc], sp
    ld a, [$f264]
    ld l, h
    db $fc
    ret nc

    cp $38
    cp $70
    sbc a
    ld h, d
    cp e
    ld b, h
    ld a, b
    rlca
    cp a
    ld b, b
    sbc [hl]
    ld h, l
    sbc a
    ld h, [hl]
    sbc a
    ld h, a
    ld a, a
    dec bc
    ld sp, hl
    add $fd
    jp nz, Jump_000_20de

    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $fe
    ret nc

    rra
    add hl, bc
    rra
    add hl, bc
    ccf
    add hl, de
    ccf
    dec de
    daa
    dec de
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    ld hl, sp-$70
    ld hl, sp-$70
    db $fc
    sbc b
    db $fc
    ret c

    db $e4
    ret c

    ld hl, sp-$40
    ret nz

    nop
    nop
    nop
    sbc a
    ld h, d
    cp e
    ld b, h
    ld a, b
    rlca
    scf
    ld [$205f], sp
    cp [hl]
    ld b, l
    sbc a
    ld h, [hl]
    sbc a
    ld h, a
    ld sp, hl
    add $fd
    jp nz, Jump_000_20de

    ld l, h
    sub b
    ld a, [$7d04]
    and d
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    and $9f
    ld l, e
    ld a, a
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rrca
    inc bc
    rlca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    ld sp, hl
    add $fe
    sub b
    ld hl, sp-$70
    ld hl, sp-$70
    ldh a, [$ffc0]
    ldh [$ffc0], a
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    rlca
    nop
    jr jr_019_69be

    jr nz, @+$21

    jr nz, jr_019_69da

    jr nz, jr_019_69dc

    ld a, h

jr_019_69be:
    inc bc
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
    jr c, jr_019_69d5

    nop
    inc bc
    nop

jr_019_69d5:
    inc bc
    nop
    ld bc, $0f00

jr_019_69da:
    nop
    dec e

jr_019_69dc:
    ld a, [bc]
    rra
    ld [$0f1f], sp
    rst $38
    ld [$2cff], sp
    rst $38
    dec l
    rst $38
    ld l, a
    rst $38

jr_019_69ea:
    ld a, $ff
    add b
    db $db
    add l
    rst $38
    inc bc
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    adc b
    ld [hl], b
    ret nc

    and b
    ldh [$ffc0], a
    rra
    rrca
    rra
    dec c
    rra
    dec c
    rra
    dec c
    ccf
    rra
    ccf
    rra
    ccf
    ld e, $1e
    nop
    cp a
    ld e, a
    rst $38
    sbc b
    ld a, [$fdc5]
    ldh [c], a
    cp $e1
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    ldh a, [$ff6f]
    ld d, b
    and b
    sub b
    ld h, b
    db $10
    ldh [$ff78], a
    add b
    db $fc
    jr nc, jr_019_69ea

    ld d, h
    rst $38
    ld d, $3f
    jp nc, Jump_019_6ff0

    ld hl, sp+$37
    rst $38
    ld e, b
    ld hl, sp+$50
    cp b
    ld d, b
    add sp, $10
    jr c, jr_019_6a3f

jr_019_6a3f:
    nop

jr_019_6a40:
    nop
    scf
    jp nz, $b07b

    ld sp, hl
    jr nc, jr_019_6a40

    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr nc, jr_019_6a4f

jr_019_6a4f:
    nop
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    dec sp
    dec d
    ccf
    inc de
    ccf
    ld e, $3f
    ld e, $3f
    dec de
    rst $38
    db $10
    rst $38
    ld e, d
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    inc a
    ld a, l
    add d
    ld [hl], e
    adc l
    rst $18
    inc hl
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld [$f0f0], sp
    nop
    ldh [$ffc0], a
    ldh [$ffc0], a
    ccf
    dec de
    ccf
    dec de
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    dec a
    dec a
    nop
    rlca
    nop
    rrca
    ld b, $ff
    adc [hl]
    cp $cd
    cp $e1
    ld sp, hl
    and $fc
    db $e3
    rst $38
    ldh [$fff6], a
    jp hl


    ldh a, [$ff6f]
    ret nc

    jr nz, jr_019_6ab4

    ldh [rNR10], a
    ldh [$ff60], a
    add b
    ld hl, sp+$60
    ld a, h
    cp b
    ld a, [hl]
    and h
    scf
    ret nz

    cp a
    ld e, [hl]
    rst $38

jr_019_6ab4:
    jr @+$26

    jr jr_019_6af4

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
    db $fc
    add a
    ld a, d
    ld a, a
    ld [bc], a
    rra
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $00
    nop
    nop
    rlca
    nop
    jr jr_019_6adc

    jr nz, @+$21

    jr nz, jr_019_6af8

    jr nz, jr_019_6afa

    ld a, h

jr_019_6adc:
    inc bc
    di
    inc c
    rst $38
    ld [bc], a
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_019_6aec:
    cp $c6
    jr c, jr_019_6aec

    nop
    inc bc
    nop
    inc bc

jr_019_6af4:
    nop
    ld bc, $0100

jr_019_6af8:
    nop
    rrca

jr_019_6afa:
    nop
    dec e
    ld a, [bc]
    rra
    add hl, bc
    rra
    rrca
    rst $38
    inc l
    rst $38
    dec l
    rst $38
    ld l, a
    ld a, a
    ld a, $ff
    nop
    reti


    add [hl]

jr_019_6b0d:
    rst $28

jr_019_6b0e:
    add c
    rst $18
    daa
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    db $10
    ldh [$ffc8], a
    jr nc, jr_019_6b0e

    ret nz

    ldh a, [$ff80]
    ld a, [hl]
    dec a
    ld a, a
    ld [hl], $7f
    scf
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    ld a, e
    ld bc, $71fe
    ld hl, sp+$67
    push af
    ld a, [bc]
    ei
    add h
    db $fd
    add d
    ld a, [$fcc5]
    db $e3
    ld hl, sp-$09
    ld a, h
    add b
    ld a, [hl]
    sbc b
    ei
    ld h, b
    ldh [rLCDC], a
    ld h, b
    add b
    jr nc, jr_019_6b0d

    inc a
    ret nc

    inc a
    ret c

    ld a, a
    ld a, $7e
    dec a
    ld a, a
    inc e
    ld a, [hl]
    inc l
    cp $6c
    cp h
    ld e, b
    db $e4
    jr jr_019_6b9c

    nop
    add hl, de
    and $e7
    nop
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
    ld a, [hl]
    dec a
    ld a, a
    ld [hl], $7f
    scf
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, c
    ld a, e
    ld bc, $7eff

jr_019_6b83:
    cp $61
    add sp, $17
    push af
    adc d
    ei
    add h
    cp $c1
    rst $38
    ret nz

    ret nz

    cp a
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    rst $20
    nop
    cp $c4
    db $fc

jr_019_6b9c:
    ld e, b
    ld hl, sp+$40
    ldh a, [rLCDC]
    ldh a, [$ff6f]
    ld hl, sp+$37
    cp a
    ld e, b
    ld a, [hl]
    inc e
    ld [hl-], a
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    jr c, jr_019_6b83

    ld a, b
    or b
    ld hl, sp+$30
    ldh a, [$ff60]
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
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
    inc b
    inc bc
    dec bc
    inc b
    db $fc
    nop
    db $fc
    nop
    rst $38
    ld b, b
    ld a, [$c4c4]
    cp b
    db $fc
    nop
    db $fc
    ld a, b
    db $fc
    ld [hl], b
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7e
    dec a
    ld a, [hl]
    dec a
    ld a, a
    ld [hl], $7f
    scf
    ld a, a
    scf
    cp $79
    ld hl, sp+$67
    ld l, b
    rla
    push af
    ld a, [bc]
    ld [hl], e
    adc h
    db $fc
    inc bc
    ld hl, sp-$79
    ldh [$ffdf], a
    ld b, b
    add b
    ld b, b
    add b
    ld a, h
    add b
    cp $18
    ei
    ldh [$ffe0], a
    ld b, b
    ld a, b
    add b
    ld [hl], h
    sbc b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    ld a, a
    ld [bc], a
    dec bc
    dec b
    rrca
    inc bc
    inc b
    inc bc
    inc bc
    nop
    ldh a, [$ffef]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    db $fc
    ld h, b
    ld a, [$fafc]
    sbc h
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp Jump_000_203c


    rra
    jr nz, jr_019_6c74

    jr nz, @+$21

    ld a, h
    inc bc
    di
    inc c
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_019_6c68:
    cp $c6
    jr c, jr_019_6c68

    nop
    db $fc
    nop
    rst $38
    ld b, b
    rrca
    inc bc
    dec bc

jr_019_6c74:
    ld bc, $0001
    nop
    nop
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7e
    dec a
    rst $38
    ld a, b
    db $fc
    di
    rst $30
    ld [$37cf], sp
    ld a, a
    adc a
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    nop
    ld b, b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $18
    nop
    cp $1c
    db $fc
    jr nc, jr_019_6ce1

    ld e, $3f
    dec de
    ccf
    dec de
    ccf
    dec de
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    inc a
    dec a
    nop
    ld [hl-], a
    call $06f9
    cp $c1

jr_019_6cb7:
    db $fc
    db $e3
    ld hl, sp-$09
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld [hl], b
    ld hl, sp+$20
    ld a, b
    and b
    inc a
    ret nz

    ld [hl-], a
    call z, $b04e
    db $fd
    ld a, [hl]
    db $fd
    adc $cf
    nop
    ccf
    ld d, $3f
    ld d, $5e
    inc l
    ld [hl], d
    inc c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6ce1:
    nop
    nop
    rlca
    nop
    jr jr_019_6cee

    jr nz, jr_019_6d08

    jr nz, jr_019_6d0a

    ld h, b
    rra
    sub b

jr_019_6cee:
    ld l, a
    pop bc
    ld a, $00
    nop
    ret nz

    nop
    jr nc, jr_019_6cb7

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf

jr_019_6d08:
    nop
    rra

jr_019_6d0a:
    nop
    ld h, b
    rra
    add b
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    ei
    nop
    pop de
    jr nz, jr_019_6d2c

    ldh [$ff38], a
    ret nc

    ld hl, sp+$10
    ld e, [hl]
    dec h
    ld [hl], h
    dec bc
    ld [hl], b
    rrca
    dec sp
    inc b
    ld e, a
    inc hl
    cp a

jr_019_6d2c:
    ld b, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    db $f4
    ld c, b
    ld e, h
    and b
    inc e
    ldh [$fffc], a
    nop
    ld a, [$fdc4]
    ldh [c], a
    ld sp, hl
    or $f9
    or $9f
    ld l, l
    ld a, a
    dec c
    rra
    ld [$081c], sp
    inc d
    ld [$0814], sp
    jr jr_019_6d4f

jr_019_6d4f:
    nop
    nop
    ld sp, hl
    halt
    cp $b0
    ld hl, sp-$30
    ld hl, sp+$50
    add sp, $10
    xor b
    db $10
    jr jr_019_6d5f

jr_019_6d5f:
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    add a
    ld a, b
    ld h, b
    rra
    ccf
    nop
    ld e, [hl]
    dec h
    ld [hl], h
    dec bc
    ld [hl], b
    rrca
    dec sp
    inc b
    ld e, a
    inc hl
    cp a
    ld b, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    ld hl, sp+$40
    ld d, h
    xor b
    inc e
    ldh [$fffc], a
    nop
    ld a, [$fdc4]

jr_019_6d8c:
    ldh [c], a
    ld sp, hl
    or $f9
    or $9f
    ld l, [hl]
    ld a, a
    dec c
    rra
    add hl, bc
    rra
    add hl, bc
    dec d
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld sp, hl
    or [hl]
    cp $30
    cp b
    db $10
    cp b
    db $10
    xor b
    db $10
    or b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    add a
    ld a, b
    ld [hl], b
    rrca
    jr c, jr_019_6dd6

    ccf
    db $10
    ld a, $05
    ld d, h
    dec hl
    ld [hl], b
    rrca
    ld a, b
    rlca
    ccf
    nop
    ld d, a
    dec hl
    cp a
    ld b, a
    sbc a
    ld l, a
    ld hl, sp+$40
    ld d, h
    xor b
    inc e

jr_019_6dd6:
    ldh [$ff3c], a
    ret nz

    db $fc
    nop
    ld a, [$fdc4]
    ldh [c], a
    ld sp, hl
    or $9f
    ld l, [hl]
    sbc a
    ld l, l
    ld a, a
    dec c
    rrca
    dec b
    rrca
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    or [hl]
    ld sp, hl
    or [hl]
    cp $30
    ldh a, [rNR41]
    ldh a, [$ffa0]
    and b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld b, a

jr_019_6e0a:
    jr c, jr_019_6d8c

    ld a, a
    ld h, e
    inc e
    inc a
    inc bc
    ld e, a
    inc h
    halt
    add hl, bc
    ld [hl], b
    rrca
    ccf
    nop
    ld e, a
    daa
    cp a
    ld c, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    db $f4
    ld c, b
    ld e, h
    and b
    inc e
    ldh [$fffc], a
    nop
    ld a, [$fde4]
    ldh a, [c]
    ld sp, hl
    or $f9
    or $9f
    ld l, a
    ld a, a
    dec c
    rra
    dec c
    rra
    dec c
    rra
    dec c
    ccf
    add hl, de
    dec a
    jr jr_019_6e59

    nop
    ld sp, hl
    halt
    cp $b0
    ld hl, sp-$50
    ld hl, sp-$50
    ld hl, sp+$30
    db $fc
    jr jr_019_6e0a

    jr jr_019_6e68

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6e59:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6e68:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6fd5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_019_6ff0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    inc bc
    ldh a, [c]
    dec c
    rst $38
    nop
    rst $38
    dec bc
    ret nz

    nop
    jr nc, jr_019_6fd5

    ld [$04f0], sp
    ld hl, sp+$07
    ld hl, sp+$08
    rst $30
    ret nz

    ccf
    cp a
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
    add b
    nop
    add b
    nop
    nop
    nop
    rst $38
    dec bc
    ld a, a

jr_019_7034:
    dec de
    ld a, a
    cpl
    ld a, a
    scf
    rst $38
    jr nc, jr_019_7034

    ld b, a
    di
    ld l, h
    ld a, a
    ld [$00fc], sp
    db $fc
    ld b, b
    ld hl, sp-$40

jr_019_7047:
    ldh a, [$ff80]
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$ffe0]
    db $fc
    ldh a, [$ff29]
    ld d, $20
    rra
    db $10
    rrca
    dec d
    ld a, [bc]
    ld e, $01
    ccf
    nop
    dec a
    ld [bc], a
    rlca
    nop
    cp $3c
    cp [hl]
    inc c
    adc h
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    jr nc, jr_019_7047

    ld [$04f0], sp
    ld hl, sp+$07
    ld hl, sp+$08
    rst $30
    add b
    ld a, a
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    rlca
    rra
    ld [$0c1f], sp
    rrca
    inc bc
    rst $38
    nop
    db $fc
    add b

jr_019_70a5:
    db $fc
    ldh [$fffc], a
    ret nz

    ldh [c], a
    sbc h
    cp h
    ld b, b
    ld a, [hl]
    or b
    rst $38
    jr nc, @+$05

    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    xor $fa
    call nz, Call_000_18e6
    cp $00
    adc $30
    ld a, h
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_70dc

    jr nz, jr_019_70f6

    jr nz, jr_019_70f8

    daa
    jr jr_019_7144

jr_019_70dc:
    rla
    rst $38
    nop
    rst $38
    dec c
    ret nz

    nop
    jr nc, jr_019_70a5

    ld [$08f0], sp
    ldh a, [rTMA]
    ld hl, sp-$77
    halt
    ld sp, hl
    ld b, $f5
    ld l, d
    rst $38
    dec c
    rst $38
    dec e
    rst $38

jr_019_70f6:
    rrca
    cp a

jr_019_70f8:
    nop
    ld a, a
    ld a, [hl-]
    ld a, a
    ccf
    ccf
    nop
    rra
    inc b
    cp $60
    db $fc
    ld l, b
    db $fc
    ldh [$fff2], a
    db $ec
    db $fc
    nop

jr_019_710b:
    sbc [hl]
    ld l, h
    rst $38
    ld c, $ff
    ld b, [hl]
    inc d
    dec bc
    db $10
    rrca
    db $10
    rrca
    dec de
    inc b
    ld l, $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_7121

jr_019_7121:
    ld d, [hl]
    and b
    db $10
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_019_7131

jr_019_7131:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7142

    jr nz, jr_019_715c

    jr nz, jr_019_715e

    jr nz, jr_019_7160

    nop

jr_019_7142:
    nop
    nop

jr_019_7144:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_710b

    ld c, $f0
    add hl, bc
    or $09
    or $20
    rra
    ld [hl], a
    ld [$07f8], sp
    rst $38
    nop
    rst $38
    rrca
    rst $38

jr_019_715c:
    inc bc
    ld e, a

jr_019_715e:
    rrca
    ccf

jr_019_7160:
    inc d
    ld bc, $0afe
    db $f4
    sub h
    ld l, b
    rst $38
    ld [$ebff], sp
    rst $38
    add e
    rst $38
    db $ec
    db $fc
    ld e, b
    ccf
    inc de
    ccf
    rra
    rra
    inc c
    rra
    nop
    ld l, $10
    ld a, [hl]
    nop
    ld a, h
    nop
    jr c, jr_019_7181

jr_019_7181:
    ld hl, sp+$10
    sub b
    ld h, b

jr_019_7185:
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, h
    nop
    jr c, jr_019_7191

jr_019_7191:
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
    jr jr_019_7185

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
    ld b, $1f
    dec bc
    ccf
    nop
    inc a
    dec bc
    ccf
    ld a, [de]
    cp $00
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    or $e8
    db $fc
    nop
    inc e
    add sp, -$02
    inc l
    ld a, $19
    dec a
    ld a, [de]
    add hl, de
    ld b, $0f
    nop
    dec c
    ld [bc], a
    rrca
    nop
    nop
    nop
    nop
    nop
    ld a, $cc
    sbc $2c
    cp h
    ld b, b
    db $fc
    nop
    cp b
    nop
    nop
    nop

jr_019_71ed:
    nop
    nop
    nop
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
    nop
    nop
    inc h
    inc h
    nop
    nop
    ld bc, $e001
    nop
    jr jr_019_71ed

    ld b, $f8
    dec b
    ld a, [$0f10]
    db $10
    rrca
    dec sp
    inc b
    ld a, h
    inc bc
    rst $38
    nop
    rst $38
    rlca
    ld a, a
    ld bc, $062f
    dec b
    ld a, [$fe01]
    add l
    ld a, d
    ld c, d
    or h

jr_019_7229:
    or $08
    cp $f4
    cp $c0
    ld a, [$1fb4]
    dec bc
    rra
    ld [$091e], sp
    dec a
    ld a, [de]
    ccf
    jr jr_019_727b

    jr jr_019_7259

    inc b
    rrca
    nop
    cp $e8
    db $fc
    ld [$c83e], sp
    cp $0c
    cp $0c
    cp $0c
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7260

jr_019_7259:
    jr nz, jr_019_727a

    jr nz, jr_019_727c

    inc l
    inc de
    ld [hl-], a

jr_019_7260:
    dec c
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_7229

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $01
    cp $7f
    nop
    rst $38

jr_019_7274:
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38

jr_019_727a:
    rra

jr_019_727b:
    ld e, a

jr_019_727c:
    rrca
    rrca
    nop
    rlca
    ld [bc], a
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$60
    ldh a, [$ffc0]
    ld hl, sp-$80
    call nz, $e838
    ret nc

    rrca
    ld bc, $0f1f
    rra
    inc c
    inc c
    inc bc
    ld b, $01
    dec bc
    inc b
    rrca
    nop
    ld bc, $f800
    ret nz

    ret z

    or b
    adc b

jr_019_72a6:
    ld [hl], b
    ld [$d0f0], sp
    jr nz, jr_019_7274

    jr nc, jr_019_72a6

    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_72c0

    jr nz, jr_019_72da

    jr nz, jr_019_72dc

    inc l
    inc de
    ld [hl-], a

jr_019_72c0:
    dec c
    ld b, b
    ld b, b
    inc b
    inc b
    ret nz

    nop
    ld sp, $08c1
    ldh a, [$ff0e]
    ldh a, [$ff09]
    or $01
    cp $7f
    nop
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    dec bc
    rst $38

jr_019_72da:
    rra
    ld e, a

jr_019_72dc:
    rrca
    ccf
    nop
    dec sp
    ld de, $00fe
    db $fc
    nop
    db $fc
    nop

jr_019_72e7:
    db $fc
    ld h, b
    ld hl, sp-$40
    db $fc
    add b
    ldh [c], a
    inc e
    db $f4
    ret z

    ccf
    dec de
    rra
    rrca
    rra
    ld [$000f], sp
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    ld a, [$e2e4]
    call c, Call_000_38c6
    ld h, c
    sbc [hl]
    sub c
    ld l, [hl]
    rst $38
    nop
    xor $10
    inc e
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_731e

    jr nz, jr_019_7338

    jr nz, jr_019_733a

    ld h, b
    rra
    sub b

jr_019_731e:
    ld l, a
    pop bc
    ld a, $00
    nop
    ret nz

    nop
    jr nc, jr_019_72e7

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop

jr_019_7335:
    ld a, a
    nop
    adc a

jr_019_7338:
    ld [hl], b
    ld h, b

jr_019_733a:
    rra
    ldh a, [$ff6f]
    rst $38
    ld h, b
    ld a, a
    inc b
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_019_7376

    ret nz

    ld a, [hl]
    adc h
    cp $0c
    db $fc
    ld d, b
    inc d
    dec bc
    jr z, jr_019_736c

    scf
    ld [$007e], sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    and b
    jr z, jr_019_7335

    ret c

    jr nz, @-$02

    nop
    ld a, b
    nop
    nop

jr_019_736c:
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    rlca
    nop
    sbc b

jr_019_7376:
    add a
    jr nz, jr_019_7398

    jr nz, jr_019_739a

    ld h, b
    rra
    sub b
    ld l, a
    pop bc
    ld a, $00
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add b

jr_019_7398:
    ld a, a
    ld [hl], e

jr_019_739a:
    inc c
    ld a, b
    scf
    ccf
    db $10
    rra
    inc b
    rst $38
    ld [$08ff], sp
    jp c, Jump_000_1c20

    add sp, -$04
    jr @+$3a

    ret nc

    ldh a, [rP1]
    ldh a, [rLCDC]
    ld d, $09
    jr z, @+$19

    daa
    jr jr_019_7416

    jr nz, jr_019_7436

    nop
    jr c, jr_019_73bd

jr_019_73bd:
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_019_73ec

    ret nc

jr_019_73c5:
    ret z

    jr nc, @-$0a

    ld [$007c], sp
    jr c, jr_019_73cd

jr_019_73cd:
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
    ld [hl], h
    dec bc
    rst $38
    nop
    rst $38
    rlca
    ldh [rP1], a
    jr jr_019_73c5

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l

jr_019_73ec:
    cp d
    db $fd
    ld [bc], a
    cp $f0
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    rla
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    cp $b0
    cp $b4

jr_019_7405:
    cp $b0
    ld sp, hl
    and $f6
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rst $38
    db $10
    ld e, a

jr_019_7416:
    rlca
    rrca
    inc bc
    rla
    add hl, bc
    nop
    nop
    nop
    nop
    nop

Call_019_7420:
    nop
    cp $f0
    cp $84
    cp $f0
    db $fd
    and $f6
    ret z

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

jr_019_7436:
    rrca
    db $10
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    rst $38
    nop
    rst $38
    dec bc
    ret nz

    nop
    jr nc, jr_019_7405

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [rSB]
    cp $c1
    ld a, $fe
    nop
    rst $38
    dec bc
    rst $38
    dec de
    ld e, a
    rrca
    rrca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    db $fc
    nop
    db $fc
    ret nz

    ld hl, sp-$40
    ldh a, [$ff80]
    ret z

    jr nc, jr_019_746c

jr_019_746c:
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
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    db $fc
    nop
    db $fc
    ret nz

    ld hl, sp-$40
    ldh a, [$ff80]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    inc b
    inc bc
    inc c
    inc bc
    ld a, [bc]
    dec b
    add hl, sp
    ld b, $7e
    ld bc, $06ff
    rst $38
    ld b, $fb
    jr nz, jr_019_7551

    adc d
    ld a, $c4
    rra
    ldh [$ff3f], a
    ret nc

    rst $38
    jr nc, @-$0b

    ld l, h
    push hl
    ld e, d
    nop
    nop

jr_019_74e3:
    add b
    nop

jr_019_74e5:
    add b
    nop

jr_019_74e7:
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    rst $38
    dec c
    ld a, a
    ld bc, $063f
    ccf
    ld d, $1f
    ld [$0619], sp
    dec de
    dec c
    add hl, sp
    ld b, $ff
    add b
    cp $80
    cp $40
    db $f4
    ld c, b
    or $68
    ld a, [$f934]
    ld [hl], $fe
    nop
    jr nz, jr_019_7532

    ld c, b
    scf
    db $e4
    dec de
    rst $30
    ld [$007d], sp
    inc e
    nop
    ld bc, $0100
    nop
    jr nc, jr_019_74e3

    jr nz, jr_019_74e5

    jr nz, jr_019_74e7

    or b
    ld b, b
    ld [$f8f0], sp
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop

jr_019_7532:
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
    ld b, $00
    ld c, $00
    ld c, $07
    nop
    jr jr_019_754c

    jr nz, jr_019_7566

    jr nz, jr_019_7568

    jr nz, jr_019_756a

    ld l, h

jr_019_754c:
    inc de
    rst $30
    ld [$02ff], sp

jr_019_7551:
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR34], a
    ldh [rNR11], a
    xor $01

jr_019_755c:
    cp $c6
    jr c, jr_019_755c

    nop
    ld [$081c], sp
    inc e
    inc c

jr_019_7566:
    jr jr_019_7574

jr_019_7568:
    jr c, jr_019_757e

jr_019_756a:
    ld a, [hl-]
    inc d
    ld l, d
    ld [hl], e
    adc $7d
    rst $00
    rst $38
    dec bc
    rst $38

jr_019_7574:
    dec bc

jr_019_7575:
    ld a, a

jr_019_7576:
    dec de
    ld e, a
    rrca
    rrca
    nop
    inc e
    inc bc
    daa

jr_019_757e:
    jr @+$01

    rlca
    db $fc
    nop
    db $fc
    ld b, b
    rst $38
    ret nz

    ldh a, [c]
    adc h
    add h
    ld a, b
    ret c

    jr nz, jr_019_7576

    ret nc

    ld hl, sp-$40
    cp e
    ld b, h
    ld [hl], h
    ld [$001c], sp
    ld a, [de]
    inc b
    ld c, $00
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    db $d3
    db $ec
    cp b
    ld b, a
    dec c
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
    jr nc, jr_019_7575

    ld [$dcf0], sp
    jr nz, @-$06

    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $04
    ld e, $08
    inc e
    nop
    inc a
    db $10
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
    ld [$1f07], sp
    nop
    rst $38
    rlca
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    db $e3
    inc e
    sub h
    ld l, b
    add sp, -$30
    ld hl, sp-$40
    cp a
    ld b, e
    ld a, a
    nop
    inc a
    nop
    inc e
    nop
    ld e, $00
    ld c, $00
    ld b, $00
    ld [bc], a
    nop
    rst $38
    db $ec
    ld hl, sp+$07
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
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
    ld a, [bc]
    dec b
    rra
    nop
    rst $38
    ld a, [de]
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    db $e4
    jr jr_019_764f

    db $ec
    db $fc
    nop
    db $fc
    ret c

    rlca
    nop
    rlca
    nop
    dec bc
    inc b
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_019_764f:
    nop
    nop
    rst $38
    ld h, e
    rst $28
    nop
    add h
    inc bc
    add $01
    rst $28
    nop
    rst $38
    nop
    jr c, jr_019_765f

jr_019_765f:
    nop
    nop
    db $fc
    ld e, b
    ld hl, sp+$00
    ld [$48f0], sp

jr_019_7668:
    or b
    db $e4
    jr jr_019_7668

    nop
    ld hl, sp+$00
    nop
    nop
    ld [$0800], sp
    nop

jr_019_7675:
    ld [$1c00], sp
    ld [$081c], sp
    inc e
    nop
    ld a, $10
    ld a, $00
    ccf
    nop
    ld a, $01
    ld a, $09
    ld a, $09
    ld a, a
    ld [$03fc], sp
    rst $38
    jr @+$01

    ld a, [de]
    ldh [rP1], a
    jr jr_019_7675

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
    ld [bc], a
    ld a, a
    add hl, de
    rst $38
    ld e, d
    rst $38
    ld h, e
    ld a, a
    ld sp, $103f
    dec e
    ld [bc], a
    dec e
    ld a, [bc]
    cp $b0
    cp $f4
    cp $74
    rst $38
    add b
    ld sp, hl
    or $fe
    ld [hl], b
    ld hl, sp+$00
    ld hl, sp-$80
    jr jr_019_76ca

    db $10
    rrca
    add hl, bc
    ld b, $11
    ld c, $1b

jr_019_76ca:
    inc b
    ccf
    nop
    ld a, $00
    nop
    nop
    sbc b
    ld h, b
    inc h
    ret c

    sbc $20
    ld a, d
    inc b
    ld a, h
    nop
    jr c, jr_019_76dd

jr_019_76dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld c, $03
    ld [de], a
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
    jr jr_019_76dd

    ld b, $f8
    dec b
    ld a, [$0f12]
    ld [hl-], a
    rrca
    ld a, e
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $18
    ld [bc], a
    sbc d
    rlca
    ld a, [de]
    rlca
    dec b
    ld a, [$fe01]
    add l
    ld a, d
    ld c, d
    or h
    or $08
    cp $b4
    cp $30
    db $fc
    jr nc, jr_019_773c

    rlca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    dec d
    rrca
    dec [hl]
    rrca
    ld [hl-], a
    rrca
    rlca
    ld a, [bc]
    cp $40
    ld a, h
    or b
    ld a, h
    or b
    ld a, h
    add b
    ld h, h
    sbc b
    ld a, h

jr_019_773c:
    add b
    ld a, [hl]
    add b
    ld e, $80
    ld c, $15
    ld a, [bc]
    dec d
    dec d
    ld a, [bc]
    dec de
    inc b
    rra
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    inc b
    nop
    inc b
    nop

jr_019_7755:
    nop
    nop
    nop
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
    jr jr_019_7755

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
    inc b
    dec bc
    inc b
    rra
    nop
    cp $04
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    ei
    db $e4
    db $fc
    jr @+$7e

    cp b
    db $fc
    ld h, b
    rla
    ld a, [bc]
    ccf
    ld [bc], a
    ccf
    inc b
    rrca
    inc b
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    ret c

    db $fc
    nop
    cp $00
    sbc [hl]
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc b
    rra
    inc b
    rra
    nop
    rra
    nop
    rra
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld a, a
    nop
    ld a, a
    ld b, $7f
    ld b, $2f
    ld b, $1f
    dec bc
    dec de
    inc c
    rra
    ld [$020f], sp
    cp $04
    cp $b4
    cp $b0
    ld sp, hl
    or [hl]
    cp $e8
    db $fc
    jr @-$02

    ld [hl], b
    db $fc
    ldh [$ff1f], a
    nop
    ccf
    inc d
    ccf
    inc b
    dec c
    ld [bc], a
    rrca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    xor $10
    cp $00
    cp h
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
    rra
    nop
    rra
    nop
    rra
    nop
    ld c, $00
    ld c, $00
    inc b
    nop
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
    rlca
    nop
    ld [$0807], sp
    nop
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    inc e
    ld [$04fe], sp
    ld a, $c4
    db $10
    rrca
    jr nz, jr_019_7864

    jr nz, jr_019_7866

    jr nz, jr_019_7868

    ld h, b
    rra
    sub b
    ld l, a
    add b
    ld a, a
    ret nz

    ccf
    ld a, $c0
    ld a, $c8
    ld [hl], $c8
    ld a, $c0
    ccf
    ret nz

    rra
    ldh [rIE], a
    nop
    dec e
    ldh [rIE], a
    nop
    ld a, a

jr_019_7864:
    nop
    ld a, a

jr_019_7866:
    nop
    adc a

jr_019_7868:
    ld [hl], b
    ld h, b
    rra
    jr nc, jr_019_787c

    ccf
    nop
    rra
    ld [$04fe], sp
    db $fc
    nop
    cp $04
    sbc $2c
    inc e
    ldh [$ff7c], a

jr_019_787c:
    adc b
    ld hl, sp+$30
    ldh a, [$ff80]
    jr jr_019_788a

    jr nc, jr_019_7894

    jr c, @+$09

    cpl
    db $10
    halt

jr_019_788a:
    ld [$003c], sp
    jr jr_019_788f

jr_019_788f:
    nop
    nop

jr_019_7891:
    sub b
    ld h, b
    db $10

jr_019_7894:
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_019_78a1

jr_019_78a1:
    nop
    ld [$0800], sp
    ld [$0808], sp
    ld [$1c08], sp
    ld [$081c], sp
    inc e
    ld [$071c], sp
    nop
    jr jr_019_78bc

    jr nz, jr_019_78d6

    jr nz, jr_019_78d8

    ld h, b
    rra
    and b

jr_019_78bc:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret z

    inc e
    jr c, jr_019_7891

    ld [$08f4], sp
    db $f4
    ld [$1ef4], sp
    ldh [rIE], a
    nop
    rra
    ldh [$ff7f], a
    nop
    ccf
    nop

jr_019_78d5:
    ld a, a

jr_019_78d6:
    nop
    add c

jr_019_78d8:
    ld a, [hl]
    ld a, b
    rlca
    jr nz, jr_019_78fc

    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld [$0aff], sp
    ld a, [$7604]
    adc b

jr_019_78eb:
    ld e, $e4
    cp $0c
    db $fc
    nop
    dec e
    ld a, [bc]
    jr z, jr_019_790c

    db $10
    rrca
    cpl
    db $10
    ld a, [hl]
    nop
    inc a

jr_019_78fc:
    nop
    jr jr_019_78ff

jr_019_78ff:
    nop
    nop
    ret c

    xor h
    adc b
    ld [hl], h
    jr jr_019_78eb

    db $f4
    ld [$007e], sp
    inc a

jr_019_790c:
    nop
    jr jr_019_790f

jr_019_790f:
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_78d5

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

jr_019_7925:
    ccf
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld h, b
    rra
    jr nc, jr_019_793e

    rra
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    cp $04
    ld e, $e0
    rst $38
    ld b, $3f

jr_019_793e:
    call nz, Call_000_00fe
    jp c, $8aa4

    ld [hl], h
    inc e
    ldh [$fff4], a
    ld [$007e], sp
    inc a
    nop
    jr jr_019_794f

jr_019_794f:
    nop
    nop
    rlca
    nop
    jr jr_019_795c

    jr nz, jr_019_7976

    jr nz, jr_019_7978

    ld h, b
    rra
    and b

jr_019_795c:
    ld e, a
    sub b
    ld l, a
    pop bc
    ld a, $c0
    nop
    jr nc, jr_019_7925

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ff1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf

jr_019_7976:
    nop
    ccf

jr_019_7978:
    nop
    ld l, a
    db $10
    add b
    ld a, a
    ld b, b
    ccf
    ccf
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    cp $04
    ld e, $e4
    ld a, $cc
    cp $34
    cp $30
    ccf
    inc b
    ld h, $19
    jr nc, jr_019_79a6

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
    ld b, b
    call nc, $3828

jr_019_79a6:
    ret nz

    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_019_79af

jr_019_79af:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    ld de, $1a0e
    dec b
    rst $38
    ld [$72ff], sp
    ld a, a
    ld a, [hl-]
    ccf
    ld [bc], a
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
    ld [$000f], sp
    cp $f0
    cp $74

jr_019_79e5:
    db $fc
    ld [hl], b
    cp $60
    ld sp, hl
    ld b, $06
    ld hl, sp-$02
    inc b
    cp $04
    dec bc
    dec b
    add hl, bc
    ld b, $08
    rlca
    dec e
    ld [bc], a
    inc de
    inc c
    ccf
    nop
    ld a, $00
    inc e
    nop
    cp a
    ld d, [hl]
    rra
    and $0e
    ldh a, [$ffdc]
    jr nz, jr_019_7a7e

    ld [$007e], sp
    ld a, $00
    inc e
    nop
    rlca
    nop
    jr jr_019_7a1c

    jr nz, jr_019_7a36

    jr nz, jr_019_7a38

    ld h, b
    rra
    and b

jr_019_7a1c:
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret nz

    nop
    jr nc, jr_019_79e5

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [rIF]
    ldh a, [$fffe]
    nop
    ld e, $ec
    rst $38
    nop
    ld a, a
    nop
    ccf

jr_019_7a36:
    nop
    ld a, a

jr_019_7a38:
    nop
    adc a
    ld [hl], b
    ld h, b
    rra
    ld [hl], b
    cpl
    ld a, a

jr_019_7a40:
    jr nz, jr_019_7a40

    inc c
    cp $04

jr_019_7a45:
    db $fc
    nop
    db $fc
    ld [$d038], sp
    ld a, b
    or b
    ldh a, [rP1]
    ldh a, [rP1]
    db $fd
    ld l, d
    ld hl, sp+$67
    ld [hl], b
    rrca
    dec de
    inc b
    ld l, $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_019_7a61

jr_019_7a61:
    ret nc

    and b
    sub b
    ld h, b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_019_7a71

jr_019_7a71:
    rlca
    nop
    ld [$1007], sp
    rrca
    inc e
    inc bc
    ld [hl], d
    dec c
    cp $01
    rst $38

jr_019_7a7e:
    inc c
    rst $38
    dec c
    ret nz

    nop
    jr nc, jr_019_7a45

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$72
    ld [hl], b
    pop bc
    ld a, $01
    nop
    inc bc
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec de
    rst $38
    adc a
    rst $38
    ld l, e
    ld a, a
    inc sp
    ccf
    jr jr_019_7ac8

    dec bc
    rrca
    nop
    rrca
    inc b
    rst $38
    nop
    cp $40
    ld hl, sp-$40
    ldh a, [rP1]
    ld hl, sp+$00
    inc h
    ret c

    ldh a, [c]
    inc c
    db $fc
    ldh [$ffcf], a
    ld [hl-], a
    adc a
    halt

jr_019_7ac5:
    ld c, a
    ld [hl], $56

jr_019_7ac8:
    jr z, jr_019_7b1c

    inc l
    rst $38
    nop
    rst $30
    ld [$001e], sp
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
    jr jr_019_7ac5

    inc b
    ld hl, sp+$06
    ld hl, sp+$05
    ld a, [$fe01]
    add c
    ld a, [hl]
    ld b, l
    cp d
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    ld a, a
    dec bc
    cpl
    inc bc
    rra
    add hl, bc
    rra
    inc c
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    ld e, d
    rst $38
    ld e, b
    db $fd
    ld e, d
    ld sp, hl
    or $ff
    nop
    inc bc
    ld bc, $0007

jr_019_7b15:
    inc bc
    nop
    inc b
    inc bc
    rrca
    nop
    rrca

jr_019_7b1c:
    nop
    rlca
    nop
    nop
    nop
    rst $38
    xor $ff
    ld [hl], $7f
    or b
    ld sp, hl
    ld b, $df
    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld h, b
    ld h, h
    ld hl, sp+$72
    db $fc
    ld [hl-], a
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nz, jr_019_7b66

    jr nz, jr_019_7b68

    jr nz, jr_019_7b6a

    jr nz, jr_019_7b6c

    ld [hl], a
    ld [$07f8], sp
    ret nz

    nop
    jr nc, jr_019_7b15

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [bc], a
    db $fc

jr_019_7b5d:
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    ccf
    nop
    ccf
    inc bc
    ccf

jr_019_7b66:
    inc bc
    rla

jr_019_7b68:
    inc bc
    rrca

jr_019_7b6a:
    dec b
    rrca

jr_019_7b6c:
    ld b, $0f
    ld b, $07
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld e, d
    cp $58
    db $fd
    ld e, d
    ld sp, hl
    or $ff
    ld bc, $f805
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ld hl, sp-$40
    db $e4
    jr jr_019_7bf2

    db $fc
    rlca
    inc bc
    dec bc
    inc b

jr_019_7b95:
    rra
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    jr jr_019_7b5d

    ld b, $bf
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
    ld [hl], c
    cp $31
    cp $01
    cp $82
    ld a, h
    ld a, h
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

    jr nz, jr_019_7be6

    jr nz, jr_019_7be8

    jr nz, jr_019_7bea

    jr nz, jr_019_7bec

    ld [hl], a
    ld [$07f8], sp
    ret nz

    nop
    jr nc, jr_019_7b95

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

jr_019_7be6:
    ld b, $3f

jr_019_7be8:
    ld b, $1f

jr_019_7bea:
    dec bc
    rra

jr_019_7bec:
    inc c
    ld e, $0d
    rra
    ld b, $fe

jr_019_7bf2:
    inc b
    rst $38
    or h
    rst $38
    or e
    ei
    or l
    di
    db $ec
    db $fd
    nop
    dec c
    ldh a, [rIE]
    nop
    cpl
    ld d, $7f
    ld b, $7e
    nop
    jr c, jr_019_7c09

jr_019_7c09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [$047b], sp
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
    ld bc, $82fe
    ld a, h
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
    rlca
    nop
    jr @+$09

    jr nz, jr_019_7c56

    jr nz, jr_019_7c58

    jr nz, jr_019_7c5a

    jr nz, jr_019_7c5c

    ld [hl], a
    ld [$07f8], sp
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
    rst $38
    nop
    rst $38
    dec c
    rst $38

jr_019_7c56:
    dec c
    ld a, a

jr_019_7c58:
    dec c
    ccf

jr_019_7c5a:
    rla
    ccf

jr_019_7c5c:
    db $10
    inc a

jr_019_7c5e:
    dec de
    ccf
    jr jr_019_7c5e

    ld [$68ff], sp
    rst $38
    ld h, a
    rst $30
    ld l, e
    rst $28
    ret nc

    di
    ld bc, $e11b
    rst $38
    ld bc, $1c3f
    ld a, [hl]
    inc c

jr_019_7c75:
    ld a, h
    nop
    jr c, jr_019_7c79

jr_019_7c79:
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
    jr nc, jr_019_7c9a

    ld d, b
    cpl
    adc b
    ld [hl], a
    ret nz

    ccf
    ldh [rP1], a
    jr jr_019_7c75

    inc b
    ld hl, sp+$04
    ld hl, sp+$04

jr_019_7c9a:
    ld hl, sp+$0e
    ldh a, [rIE]
    nop
    ccf
    ret nz

    rra
    nop
    rrca
    nop
    rrca
    nop
    ld de, $0c0e
    inc bc
    ld b, $01
    rlca
    nop
    inc bc
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld a, [$0704]
    ld hl, sp+$0f
    or $ff
    ld c, $ff
    sub c
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    jr nz, jr_019_7cc9

jr_019_7cc9:
    add b
    nop
    ret nz

    add b
    ldh a, [$ff80]
    adc h
    ld [hl], b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0304
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    sub c
    ld l, [hl]
    inc bc
    db $fc
    ld sp, hl
    ld b, $df
    nop
    adc a
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl-], a
    db $fc
    add hl, sp
    cp $19
    cp $81
    ld a, [hl]
    add d
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7d0c

    jr nz, jr_019_7d26

    jr nz, jr_019_7d28

    jr nz, jr_019_7d2a

    ld h, b

jr_019_7d0c:
    rra
    sub b
    ld l, a
    pop bc
    ld a, $c0
    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ff1f]
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_019_7d26:
    nop
    ld a, a

jr_019_7d28:
    nop
    ld a, a

jr_019_7d2a:
    nop
    adc a
    ld [hl], b
    ld h, b
    rra
    jr nc, jr_019_7d40

    nop
    nop
    nop
    nop
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_019_7d7c

    ret nz

    ccf

jr_019_7d40:
    sbc $0f
    inc b
    rrca
    inc b

jr_019_7d45:
    inc b
    inc bc
    ld [bc], a
    ld bc, $0304
    ld c, $01
    rlca
    nop
    inc bc
    nop
    ei
    inc b
    cp $88
    adc c
    halt
    inc bc
    db $fc
    ld sp, hl
    ld b, $db
    inc b
    adc a
    nop
    ld b, $00
    ldh a, [$ffc0]
    call z, Call_000_3230
    db $fc
    add hl, sp
    cp $19
    cp $01
    cp $82
    ld a, h
    ld a, h
    nop
    rlca
    nop
    jr jr_019_7d7c

    jr nz, jr_019_7d96

    jr nz, jr_019_7d98

    ld h, b
    rra
    sub c

jr_019_7d7c:
    ld l, [hl]
    add b
    ld a, a
    pop bc
    ld a, $c0
    nop
    jr nc, jr_019_7d45

    ld [$08f0], sp
    ldh a, [rNR23]
    ldh [$fffe], a
    nop
    rra
    ldh [rIE], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    adc a

jr_019_7d96:
    ld [hl], b
    ld h, b

jr_019_7d98:
    rra
    ldh a, [rVBK]
    rst $38
    ld h, b
    ld a, a
    inc b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$08ff], sp
    jp c, $1020

    ldh [$ff7c], a
    sub b
    ld d, b
    cpl
    cpl

jr_019_7db4:
    db $10
    ld a, [hl]
    nop
    inc a
    nop
    jr jr_019_7dbb

jr_019_7dbb:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr nc, jr_019_7db4

    ld c, a
    db $ec
    rra
    call c, $d83f
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    jr nz, jr_019_7df0

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
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    rra
    nop
    nop
    nop
    nop
    nop

jr_019_7de7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7df0:
    nop
    ld a, a
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld h, b
    rra
    jr nc, @+$11

    ld a, a
    jr nz, jr_019_7e7d

    inc h
    ld a, a
    nop
    jr nc, jr_019_7e12

    daa
    jr jr_019_7e84

    nop
    inc a
    nop
    jr jr_019_7e0b

jr_019_7e0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7e12:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_7e3a

    jr nz, jr_019_7e3c

    jr nz, jr_019_7e3e

    scf
    ld [$0000], sp
    ret nz

    nop
    jr nc, jr_019_7de7

    ld e, $e0
    ld de, $01ee
    cp $06
    ld hl, sp-$04
    nop
    ld a, a
    nop
    rst $38
    ld bc, $05ff
    ld a, a
    ld b, $7f

jr_019_7e3a:
    rrca
    cpl

jr_019_7e3c:
    inc bc
    rlca

jr_019_7e3e:
    nop
    rrca
    inc b
    cp $00
    cp $80
    cp $a0
    db $fc
    ldh [$fffe], a
    ret nz

    pop af
    adc [hl]
    cp $70
    db $fc
    ld a, b
    rrca
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    cp $84
    adc [hl]
    ld [hl], h
    ld h, [hl]
    ld hl, sp-$1e
    db $fc
    ld h, d
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7e7e

    jr nz, jr_019_7e98

    jr nz, jr_019_7e9a

    jr nz, jr_019_7e9c

jr_019_7e7d:
    ld l, h

jr_019_7e7e:
    inc de
    rst $30
    ld [$0000], sp
    add b

jr_019_7e84:
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

jr_019_7e95:
    rst $38
    dec bc
    rst $38

jr_019_7e98:
    dec de
    ld e, a

jr_019_7e9a:
    rrca
    ld l, a

jr_019_7e9c:
    nop
    di
    ld l, l
    rst $38
    ld h, c
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$80
    db $ec
    db $10
    ldh a, [c]
    db $ec
    db $fc
    ldh a, [$ff7f]
    ld c, $1e
    add hl, bc
    dec c
    inc bc
    dec bc
    rlca
    add hl, bc
    rlca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    ld hl, sp+$00
    jr c, jr_019_7e95

    sbc b
    ldh [$ff88], a
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7ee0

    jr nz, jr_019_7efa

    jr nz, jr_019_7efc

    jr nz, jr_019_7efe

    ld l, h

jr_019_7ee0:
    inc de
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
    cp $ff
    nop
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38

jr_019_7efa:
    dec de
    ld e, a

jr_019_7efc:
    rrca
    rrca

jr_019_7efe:
    nop
    ld b, $01
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    and [hl]
    ld e, b
    ccf
    add $03
    ld bc, $031f
    ccf
    ld e, $3f
    jr jr_019_7f33

    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    dec b
    add a
    ld a, d
    sbc e
    ld h, h
    pop de
    cp [hl]
    sub a
    ld l, b
    ei
    inc b
    rst $38
    nop
    ld a, $00
    ret nc

    and b

jr_019_7f33:
    adc h
    ld [hl], b
    ld h, d
    db $fc
    ld [hl], c
    cp $31
    cp $01
    cp $82
    ld a, h
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    cp $01
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    db $fc
    add b
    and [hl]
    ld e, b
    ccf
    add $00
    nop
    nop
    nop
    nop
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
    ld a, a
    dec a
    ld a, a
    scf
    scf
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld hl, sp-$80
    add h
    ld a, b
    ld h, d
    db $fc
    ld [hl], c
    cp $71
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
