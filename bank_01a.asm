; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld a, [de]
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
    inc de
    inc c
    ld a, h
    inc bc
    nop
    nop
    ldh [rP1], a
    db $18, $e0
    ld b, $f8
    dec b
    ld a, [$fa05]
    add c
    ld a, [hl]
    ld b, l
    cp d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $7f
    ld b, $2f
    ld b, $0f
    inc bc
    rra
    inc c
    rra
    ld c, $fe
    nop

jr_01a_4033:
    cp $04
    cp $b4
    db $fd
    or d
    ld sp, hl
    or [hl]
    cp $e0
    db $fc
    jr @-$02

    jr jr_01a_4051

    ld b, $07
    ld bc, $0305
    dec c
    inc bc
    dec d
    dec bc
    ccf
    ld bc, $013e
    dec e
    nop

jr_01a_4051:
    jr jr_01a_4033

    jr @-$0e

    inc d
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp-$48
    ldh a, [$ffa8]
    ldh a, [$ff50]
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop

jr_01a_4067:
    nop
    nop
    nop
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
    ld de, $160e
    add hl, bc
    ld l, h

Call_01a_4080:
    rla
    nop
    nop
    ldh [rP1], a
    jr jr_01a_4067

    ld b, $f8
    dec b
    ld a, [$02fd]
    rlca
    ld hl, sp+$03
    cp $fe
    rrca
    cp $1f
    rst $38
    ccf
    ld e, a
    ccf
    add a
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    sbc h
    rst $38
    ld [hl], b
    rst $18
    ld [hl], b
    xor a
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ldh [$ffc0], a
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff80], a
    ld a, a
    add e
    ld a, a
    ld c, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ld a, $0f
    ld l, $17
    ld e, $01
    ldh a, [$ffdf]
    adc h
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    cp $06
    ld hl, sp+$10
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ldh [$ffc0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop

jr_01a_40f7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_01a_411f

    cp $00
    ld b, $01
    ld de, $270f
    rra
    ld c, a
    ccf
    rst $38
    rra
    rst $18
    ld c, b
    ld e, e
    ld b, h

jr_01a_411f:
    ld [hl], a
    dec bc
    ld d, e
    db $fc
    adc h
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$26
    inc h
    push af
    adc d
    nop
    nop
    ret nz

    nop
    jr nz, jr_01a_40f7

    sub b
    ldh [$fff8], a
    ret nz

    ret c

    sub b
    add b
    nop
    jr nz, jr_01a_4161

    rst $38
    rlca
    rst $38
    rlca
    rst $38
    db $10
    ld a, a
    daa

jr_01a_4149:
    xor a
    and e
    adc a
    add b
    sbc [hl]
    adc l
    rra
    ld c, $ff
    and b
    cp $a8
    cp $ac
    cp $a0
    ld sp, hl
    and [hl]
    rst $30
    add hl, bc
    db $fd
    ld h, c
    cp $dc

jr_01a_4161:
    xor b
    xor b
    and b
    and b
    jr nz, @+$22

    nop
    nop
    ld [$4808], sp
    ld c, b
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ccf
    ld h, $af
    and b
    jr z, jr_01a_419e

    dec c
    ld [bc], a
    ld d, a
    ld c, b
    ld a, a
    ld b, b
    ld a, $00
    sbc h
    add b
    cp $b8
    db $fc
    nop
    ld a, [hl-]
    jp nz, $22da

    ld [hl], h
    ld [$80fe], sp
    cp [hl]
    add b
    inc a
    jr nz, jr_01a_41da

    ld c, b
    ld [$8808], sp
    adc b
    add b
    add b
    sub b
    sub b
    db $10
    db $10
    ld b, b

jr_01a_419e:
    ld b, b
    ld b, b
    ld b, b
    rlca
    ld bc, $071e
    jr c, @+$21

    ld [hl], b
    ccf
    ldh [$ff1f], a
    or a
    jr z, jr_01a_4149

    add h
    ld [hl], a
    dec bc
    xor a
    db $fc
    ld [hl], e
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$06
    inc h
    push af
    adc d
    nop
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ld [hl], b
    ldh [rWave_8], a
    ret nz

    ld [$88c0], sp
    ld [$a8a8], sp
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    db $10
    ld a, a
    daa
    cpl

jr_01a_41da:
    inc hl
    xor a
    and b
    sbc [hl]
    adc l
    rra
    ld c, $ff
    and b
    cp $a8
    cp $ac
    cp $a0
    ld sp, hl
    and [hl]
    or $08
    db $fc
    ld h, b
    cp $dc
    and b
    and b
    ld [$8808], sp
    adc b
    add b
    add b
    add b
    add b
    db $10
    db $10
    db $10
    stop
    nop
    rra
    ld b, $5f
    ld d, b
    ld e, b
    ld d, a
    ld c, l
    ld b, d
    rla
    ld [$003f], sp
    cp a
    add c
    dec e
    ld bc, $b8fe
    db $fc
    nop
    add hl, sp
    pop bc
    reti


    ld hl, $0874
    ld a, [hl]
    nop
    ccf
    ld bc, $415d
    db $10
    db $10
    ld d, b
    ld d, b
    ld b, b
    ld b, b

jr_01a_4227:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
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
    jr jr_01a_4227

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld a, [$f005]
    rrca
    push af
    ld a, [bc]
    ld e, c
    ld b, $09
    rlca
    dec de
    rlca
    dec h
    dec de
    dec sp
    inc d
    ld a, [hl+]
    call nc, $f806
    ld d, [hl]
    xor b
    ld c, h
    or b
    ret z

    ldh a, [$ffee]
    ld [hl], b
    jp nc, $eeec

    inc d
    jr c, jr_01a_4282

    dec e
    inc bc
    add hl, bc
    rlca
    ld [$1c07], sp
    inc bc
    ccf
    ld [bc], a
    ccf
    nop
    inc e
    nop
    adc [hl]

jr_01a_4282:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff88]
    ldh a, [$ff9c]
    ld h, b
    ld a, [hl]
    jr nz, @+$80

    nop
    inc e
    nop
    jr c, jr_01a_42a2

    dec e
    inc bc
    add hl, bc
    rlca
    ld [$1c07], sp
    inc bc
    rra
    ld [bc], a
    rrca
    nop
    nop
    nop
    adc [hl]

jr_01a_42a2:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff8c]
    ldh a, [$ff9e]
    ld h, b
    ld a, [hl]
    jr nz, @+$7e

    nop
    jr jr_01a_42b1

jr_01a_42b1:
    jr c, jr_01a_42c2

    dec e
    inc bc
    add hl, bc
    rlca

jr_01a_42b7:
    jr jr_01a_42c0

    inc a
    inc bc
    ccf
    ld [bc], a
    rra
    nop
    inc c

jr_01a_42c0:
    nop
    adc [hl]

jr_01a_42c2:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff88]
    ldh a, [$ff9c]
    ld h, b
    ld a, h
    jr nz, jr_01a_4346

    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [c]
    dec c
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_01a_42b7

    ld [$04f0], sp
    ld hl, sp+$0e
    ldh a, [rSB]
    cp $c1
    ld a, $29
    ld d, $19
    ld b, $3c
    rra
    ld a, $0f
    ccf
    rra
    ld e, $0f
    rrca
    nop
    dec de
    dec c
    rra
    db $eb
    rra
    db $eb
    ld a, a
    sbc e
    ccf
    rst $08
    rra
    rst $20
    sub a
    ld h, b
    rrca
    ldh a, [$ff1f]
    db $ec
    cp $00
    db $fc
    nop

jr_01a_4325:
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    db $f4
    ld [$70f8], sp
    ld [hl], $09
    db $10
    rrca
    ld [hl-], a
    dec c
    ld l, h
    inc sp
    dec a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld h, b
    and b
    jr nz, @-$3e

jr_01a_4345:
    ld h, b

jr_01a_4346:
    add b
    and b
    ld b, b
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    rst $38
    db $fc
    db $fd
    ld [bc], a
    ld [bc], a
    db $fc
    ld h, d
    sbc h
    db $e4

jr_01a_435a:
    jr jr_01a_435a

    nop
    sbc [hl]
    ld h, b
    cp $00
    ld [hl], b
    or b
    jr nc, jr_01a_4325

    ld [hl], b
    add b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr nc, jr_01a_4371

jr_01a_4371:
    cp $f8
    db $fc
    nop
    inc b
    ld hl, sp+$0f
    ldh a, [$ffbf]
    ld b, b
    rst $08
    nop
    sbc $00
    adc h
    nop
    ld [hl], b
    or b
    jr nc, jr_01a_4345

    ld [hl], b
    add b
    or b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr nc, jr_01a_4391

jr_01a_4391:
    cp $f8
    db $fc
    nop
    inc b
    ld hl, sp-$72
    ld [hl], b
    rst $38
    nop
    cp e
    inc b
    ld h, $18
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
    dec de
    nop
    inc d
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    ld d, b
    and b
    daa
    jr @+$3a

    rlca
    jr nz, jr_01a_43e6

    jr nz, jr_01a_43e8

    ld h, b
    rra
    and b
    ld e, a
    sub c
    ld l, [hl]
    ret nz

    ccf
    ret z

    jr nc, jr_01a_440c

    ret nz

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

jr_01a_43e6:
    nop
    add a

jr_01a_43e8:
    ld a, b
    ld a, b
    rlca
    rst $38
    ld d, b
    rst $38
    ld h, b
    ld a, a
    inc b
    rst $38
    ld [$08ff], sp
    ld a, [$d000]
    jr nz, jr_01a_4436

    ret nz

    cp $14
    cp $0c
    db $fc
    ld b, b
    inc d
    dec bc
    db $10
    rrca
    dec de
    inc b
    ld l, $10
    ld a, [hl]
    nop
    inc a

jr_01a_440c:
    nop
    jr jr_01a_440f

jr_01a_440f:
    nop
    nop
    ld d, b
    and b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $10
    db $fc
    nop
    ld a, b
    nop
    jr nc, jr_01a_441f

jr_01a_441f:
    nop
    nop
    inc d
    dec bc
    db $10
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
    ld d, b
    and b
    db $10
    ldh [rSVBK], a

jr_01a_4436:
    add b
    sbc b
    ld h, b
    ld hl, sp+$00
    ld a, b
    nop
    jr nc, jr_01a_443f

jr_01a_443f:
    nop
    nop
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
    jr jr_01a_444f

jr_01a_444f:
    nop
    nop
    ld d, b
    and b
    db $10
    ldh [$ff98], a
    ld h, b

jr_01a_4457:
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
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc de
    inc c
    halt
    add hl, bc
    rst $38
    ld [bc], a
    nop
    nop
    ldh [rP1], a
    jr jr_01a_4457

    inc b
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    ld [hl], l
    adc d
    db $fd
    ld [hl+], a
    cp $03
    db $fc
    dec bc
    rst $38
    jr jr_01a_44e5

    ld [bc], a
    ret


    rlca
    or a
    ld c, c
    cp e
    ld d, h
    ld e, a
    dec h
    cp [hl]
    ld h, b
    ld e, $e8
    ld a, [hl]
    adc h
    ld e, [hl]
    and b
    call z, $f670
    ret z

    xor $14
    cp $d4
    ld e, a
    inc hl
    ld c, a
    inc sp
    dec hl
    rla
    add hl, de
    rlca
    dec de
    inc b
    dec a
    ld [bc], a
    ccf
    nop
    inc e
    nop
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffc8]
    ldh a, [$ffec]
    db $10
    ld e, [hl]
    jr nz, jr_01a_453c

    nop
    inc e
    nop
    ld e, a
    inc hl
    ld c, a
    inc sp
    dec hl
    rla
    add hl, de
    rlca
    dec e
    ld [bc], a
    rra
    nop
    rrca
    nop
    nop
    nop
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffcc]
    ldh a, [$ffee]
    db $10
    ld e, [hl]
    jr nz, jr_01a_455a

    nop

jr_01a_44df:
    jr jr_01a_44e1

jr_01a_44e1:
    ld e, a
    inc hl
    ld c, a
    inc sp

jr_01a_44e5:
    dec hl
    rla
    add hl, de
    rlca
    dec sp
    inc b
    dec a
    ld [bc], a
    rra
    nop
    inc c
    nop
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffc8]
    ldh a, [$ffdc]
    jr nz, @+$7e

    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    nop
    dec bc
    inc b
    ld [$0d07], sp
    ld [bc], a
    dec c
    ld [bc], a
    rrca
    dec b
    rlca
    inc bc
    rlca
    nop
    ld a, a
    adc e
    cp a
    srl a
    db $db
    cp a
    ld c, a
    cpl
    rst $00
    sub a

jr_01a_453c:
    ldh [$ffdf], a
    jr nz, jr_01a_44df

    db $ed
    cp $00
    db $fc
    nop
    db $fc
    ld b, b
    ld hl, sp-$40
    ldh a, [$ff80]
    xor b
    ld d, b
    db $f4
    jr z, @-$06

    ldh a, [$fffd]
    ld l, d
    ld e, b
    scf
    jr c, jr_01a_4576

    ld a, b
    scf
    cp b

jr_01a_455a:
    ld d, a
    ld e, h
    dec hl
    ccf
    ld b, $06
    nop
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    rst $38
    cp $ff
    nop
    add c

jr_01a_4576:
    ld a, [hl]
    jp $ef3c


    db $10
    di
    nop
    rst $20
    nop
    jp $8000


    nop
    nop
    nop
    nop
    nop
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
    rst $38
    cp $ff
    nop
    add c
    ld a, [hl]
    db $e3
    inc e
    rst $38
    nop
    xor $01
    ret


    ld b, $c7
    nop
    add b
    nop
    nop
    nop

jr_01a_45a5:
    nop
    nop
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
    nop
    nop
    nop
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
    ld a, [bc]
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
    ld h, b
    nop
    and b
    ld b, b
    rrca
    nop
    jr jr_01a_45dc

    jr nz, jr_01a_45f6

    jr nz, jr_01a_45f8

    ld h, b
    rra
    and b

jr_01a_45dc:
    ld e, a
    sub c
    ld l, [hl]
    add b
    ld a, a
    ldh [rP1], a
    jr nc, jr_01a_45a5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_01a_45f6:
    nop
    nop

jr_01a_45f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01a_4c3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    inc bc
    ld bc, $0102
    dec b
    inc bc
    nop
    nop
    jr jr_01a_5015

jr_01a_5015:
    inc d
    ld [$0c1a], sp
    xor c
    ld e, $57
    cp b
    xor b
    ret nc

    ret nc

    ldh [rP1], a
    nop
    inc bc
    nop
    rrca
    inc bc
    rla
    rrca
    cpl
    inc e
    ccf
    ld de, $375f
    ld e, a
    ld [hl-], a
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$20
    db $f4
    ld hl, sp-$06
    sbc h
    cp $44
    db $fd
    or $fd
    and [hl]
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0304
    inc c
    inc bc
    ld [$8007], sp
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    jr nz, @-$3e

    ld d, b
    ldh [rBCPS], a
    ldh a, [rWave_8]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    jr nz, jr_01a_508c

    jr nz, jr_01a_508e

    inc d
    dec bc
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
    ld h, b
    add b
    sbc b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    ccf

jr_01a_508c:
    rra
    ccf

jr_01a_508e:
    rra
    rra
    dec bc
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
    ldh [$ff80], a
    ld hl, sp+$60
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
    jr nz, @+$21

    jr nz, @+$21

    inc d
    dec bc
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
    ld h, b
    add b
    sbc b
    ld h, b
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
    jr nz, @+$21

    jr nz, @+$21

    inc d
    dec bc
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
    ld h, b
    add b
    sbc b
    ld h, b
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
    jr nz, jr_01a_510c

    jr nz, jr_01a_510e

    inc d
    dec bc
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
    ld h, b
    add b
    sbc b
    ld h, b
    dec bc
    rlca

jr_01a_5103:
    rla
    rrca
    ld l, $1f
    inc l
    rra
    db $10
    rrca
    add hl, hl

jr_01a_510c:
    ld d, $36

jr_01a_510e:
    nop
    ld b, b
    nop
    jr z, jr_01a_5103

    inc d
    ld hl, sp+$34
    ret z

    ld c, h
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld a, [hl-]
    ld e, a
    ld [hl], $7c
    rla
    inc l
    dec de
    scf
    inc c
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    push af
    xor [hl]
    db $fd
    or [hl]
    rra
    db $f4
    ld a, [de]
    db $ec
    or $18
    db $ec
    ldh a, [rWave_8]
    ret nz

    ldh [rP1], a
    jr jr_01a_514a

    db $10
    rrca
    db $10
    rrca
    ld sp, $2f0f

jr_01a_514a:
    jr jr_01a_5185

    ld b, $1a
    dec b
    rlca
    nop
    inc [hl]
    ld hl, sp+$3c
    ld hl, sp+$1c
    ld hl, sp-$2e
    db $fc
    ld a, [$ca0c]
    or h
    ld l, h
    ret nc

    ldh a, [rP1]
    dec c
    ld [bc], a
    ld [de], a
    dec c
    inc h
    rra
    ld l, $1f
    ld h, $1f
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    call nz, $a238
    ld e, h
    ld [hl+], a
    call c, $fc02
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    rrca
    ld [bc], a
    rra
    dec c

jr_01a_5185:
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    db $fc

jr_01a_5192:
    jr c, jr_01a_5192

    ld e, h
    cp $dc
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    nop
    dec c
    ld [bc], a
    ld [de], a
    dec c
    inc h
    rra
    ld l, $1f
    ld h, $1f
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    call nz, $a238
    ld e, h
    ld [hl+], a
    call c, $fc02
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    dec c
    ld [bc], a
    ld [de], a
    dec c
    inc h
    rra
    ld l, $1f
    ld h, $1f
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    call nz, $a238
    ld e, h
    ld [hl+], a
    call c, $fc02
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    dec c
    ld [bc], a
    ld [de], a
    dec c
    inc h
    rra
    ld l, $1f
    ld h, $1f
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    call nz, $a238
    ld e, h
    ld [hl+], a
    call c, $fc02
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    ccf
    nop
    ld e, [hl]
    ccf
    xor l
    ld [hl], e
    sbc $61
    xor l
    ld [hl], e
    ld e, [hl]
    ccf
    ld h, b
    ccf
    ld a, [hl]
    ccf
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ccf
    inc d
    inc a
    inc de
    inc sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $ec
    ldh a, [$fffe]
    inc d
    ld e, $e4
    and $f8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    nop
    ld d, b
    cpl
    or b
    ld c, a
    cp a
    ld d, b
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
    ld h, b
    add b
    and b
    ld b, b
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ld a, l
    inc bc
    sub $2f
    db $eb
    inc d
    ld [hl], h
    ld [$0000], sp
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, [$fffc]
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rla
    rrca
    rra
    rrca
    cpl
    dec d
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, h
    inc bc
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
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
    ld bc, $0f00
    ld bc, $0f3e
    ld e, c
    ccf
    ld l, h
    ccf
    ld b, l

jr_01a_52b0:
    ld a, $00
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$ffe0]
    ld e, b
    ldh a, [$ff88]
    ldh a, [$ffc8]
    jr nc, jr_01a_52b0

    ret nz

    nop
    nop
    ld bc, $0100
    nop
    ld bc, $1b00
    nop
    daa
    jr @+$35

    inc c
    add hl, sp
    ld b, $00
    nop
    ret nz

    nop
    ldh a, [$ffc0]
    ld l, b

jr_01a_52d8:
    ldh a, [$fff4]
    jr c, jr_01a_52d8

jr_01a_52dc:
    jr jr_01a_52dc

    inc c
    or $0c
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_01a_52f2

    daa
    rra
    cpl
    rra
    ld e, a
    ccf
    nop

jr_01a_52f2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    ret c

    ldh [$ffe4], a
    ld hl, sp+$5c
    ccf
    add hl, hl
    ld e, $12
    inc c
    ld a, [de]
    inc c
    ld e, $00
    dec bc
    inc b
    ld [$0707], sp
    nop
    call nz, $9238
    ld l, h
    xor d
    ld b, h
    xor d
    ld b, h
    or c
    ld c, [hl]
    cp l
    ld c, [hl]
    ld c, [hl]
    add b
    add b
    nop
    cpl
    inc de
    inc hl
    inc e
    daa
    rra
    add hl, de
    rlca
    rra
    nop
    rra
    dec b
    rrca
    ld bc, $0003
    ld a, [$e2e4]
    inc e
    ldh a, [c]
    db $fc
    call z, $fcf0
    nop

jr_01a_533b:
    db $fc
    ld d, b
    ld hl, sp+$40
    ld h, b
    nop
    cp [hl]
    ld e, a
    cp h
    ld e, a
    cp h
    ld e, a
    call c, Call_01a_6c3f
    rra
    inc [hl]
    rrca
    jr jr_01a_5356

    rrca
    nop
    cpl
    ret nz

    dec [hl]
    adc $7e

jr_01a_5356:
    add b
    add h
    ld a, b
    adc h
    ld [hl], b
    ld hl, sp+$00
    ld h, b
    add b
    ret nz

    nop
    ld a, [hl-]
    inc b
    add hl, de
    ld b, $0c
    inc bc
    ld b, $01
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
    add b
    nop
    ld b, b
    add b
    jr nz, jr_01a_533b

    ret nc

    jr nz, @-$6e

    ld h, b
    ld h, b
    nop
    ld a, [hl]
    ld bc, $003f
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
    nop
    nop
    ld b, b
    add b
    jr nz, @-$3e

    sub b
    ld h, b

jr_01a_5397:
    ret z

    jr nc, jr_01a_53fe

    jr @+$3c

    inc b
    ld [de], a
    inc c
    inc c
    nop
    ld b, c
    ld a, $23
    inc e
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
    ldh a, [$ffe0]
    ld hl, sp+$70
    db $fc
    jr c, @+$80

    inc e
    ccf
    ld c, $1d
    ld [bc], a
    add hl, bc
    ld b, $06
    nop
    inc e
    inc bc
    ld c, $01
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    ld b, b
    add b
    jr nz, jr_01a_5397

    sub b
    ld h, b
    ret z

    jr nc, jr_01a_5450

    ld [$1824], sp
    jr jr_01a_53e1

jr_01a_53e1:
    ld e, a
    ccf
    cp a
    ld a, a
    rst $18
    ld a, a
    xor d
    ld a, a
    add l
    ld a, a
    ld h, b
    rra
    ld e, $01
    ld bc, $d200
    db $fc
    ld [$45fc], a
    cp $a1
    cp $42
    db $fc
    inc e
    ldh [rNR41], a

jr_01a_53fe:
    ret nz

    ret nz

    nop
    nop
    nop
    rra
    nop
    jr nc, @+$11

    inc hl
    inc e
    ld b, a
    add hl, sp
    ld c, a
    scf
    ld e, e
    ld h, $7f
    ld [bc], a
    nop
    nop
    db $fc
    nop
    ld b, $f8
    ld h, d
    sbc h
    pop af
    ld c, [hl]
    ld sp, hl
    or $ed
    or d
    rst $38
    and b
    nop
    nop
    rra
    nop
    jr nc, @+$11

    inc hl
    inc e
    ld b, a
    dec sp
    ld b, a
    ld a, [hl-]
    ld e, a
    ld h, $7f
    inc bc
    nop
    nop
    db $fc
    nop
    ld b, $f8
    add d

jr_01a_5438:
    ld a, h
    pop bc
    cp [hl]
    pop hl
    sbc $fd
    ldh [c], a
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld e, l
    ld a, $37
    ld c, $0f

jr_01a_5450:
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
    nop
    ld e, l
    ld a, $76
    jr c, jr_01a_5438

    ld h, b
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_01a_5470

    ld h, e
    rra
    sbc $2f
    db $eb
    ld d, h
    ld [hl], h

jr_01a_5470:
    jr z, jr_01a_5472

jr_01a_5472:
    nop
    nop
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$fff2]
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rla
    rrca
    rra
    rrca
    cpl
    rra
    ld a, [hl+]
    rra
    dec [hl]
    rra
    dec hl
    inc e
    inc [hl]
    dec de
    ldh a, [rP1]
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    or b
    ldh [$ff60], a
    ret nz

    and b
    ld b, b
    and b
    ld b, b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [hl-], a
    ld bc, $334c
    ld h, h
    dec de
    ld d, d
    dec l
    ldh [rP1], a
    ld hl, sp-$20
    db $fc
    ld hl, sp+$3e
    db $fc
    ld e, $fc
    cpl
    cp $17
    cp $0f
    cp $00
    nop
    nop
    nop
    inc bc
    nop
    inc a
    inc bc
    ld a, e
    ccf
    rst $08
    ld a, a
    add l
    ld a, a
    add h
    ld a, a
    nop
    nop
    ld a, h
    nop
    jp c, $ed3c

    cp $f7
    cp $f3
    cp $53
    cp [hl]
    and c
    ld e, [hl]
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $7f
    ld b, $6e
    rla
    ld b, h
    dec sp
    ld h, e
    inc e
    ld e, b
    daa
    ld b, a
    jr c, jr_01a_553e

jr_01a_550e:
    rrca
    rra
    nop
    rst $38
    or b

jr_01a_5513:
    dec sp
    db $f4
    ld de, $e3ee
    inc e
    dec c
    ldh a, [c]
    pop af
    ld c, $06
    ld hl, sp-$04
    nop
    ld a, a
    inc bc
    ld h, l
    dec de
    ld b, e
    inc a
    ld h, b
    rra
    ld e, b
    daa
    ld b, a
    jr c, jr_01a_555e

    rrca
    rra
    nop
    rst $38
    ldh a, [$fff3]
    db $ec
    pop hl
    ld e, $43
    cp h
    dec c
    ldh a, [c]

jr_01a_553b:
    pop af
    ld c, $06

jr_01a_553e:
    ld hl, sp-$04
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    rla
    ld c, $2e
    rra
    cpl
    rra
    rla
    rrca
    inc c
    inc bc
    inc bc
    nop
    jr nz, jr_01a_5513

    ret c

    and b

jr_01a_5555:
    ld [hl], h
    cp b
    cp d
    ld a, h
    ld a, [$f4fc]
    ld hl, sp+$18

jr_01a_555e:
    ldh [$ffe0], a
    nop
    ld a, [hl+]
    inc d
    add hl, de
    ld b, $0c
    inc bc
    ld b, $01
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
    add b
    nop
    ld b, b
    add b

jr_01a_5579:
    jr nz, jr_01a_553b

    ret nc

    jr nz, jr_01a_550e

    ld h, b
    ld h, b
    nop
    ld h, $19
    inc hl
    inc e
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
    nop
    nop
    ld h, b
    add b
    jr nz, jr_01a_5555

    sub b
    ld h, b
    ret z

    jr nc, jr_01a_55fe

    jr @+$3c

    inc b
    ld [de], a
    inc c
    inc c
    nop
    add hl, hl
    ld d, $14
    dec bc
    ld c, $01
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add [hl]
    add a
    nop
    ld b, b
    add b
    jr nz, jr_01a_5579

    sub b
    ld h, b
    add sp, $10
    ld c, b
    jr nc, jr_01a_55f0

    nop
    add l
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, e
    inc a
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
    ld [de], a
    db $ec
    adc h
    ld [hl], b
    call nz, Call_01a_6238
    inc e
    ld sp, $1f0e
    nop
    add hl, bc
    ld b, $06
    nop
    jr nc, jr_01a_5615

    ld [hl-], a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [de]
    ld e, $1e
    ld e, $0e

jr_01a_55ec:
    ld c, $06
    ld b, $00

jr_01a_55f0:
    nop
    inc c
    inc c
    inc c
    ld e, h
    ld e, h
    ld e, h
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld h, b

jr_01a_55fe:
    ld h, b
    nop
    nop
    ld bc, $0700
    nop
    inc c
    inc bc
    ld d, $09

jr_01a_5609:
    rra
    nop
    inc hl
    ld e, $75
    dec bc
    jp nc, $c02f

    nop
    ld h, b
    ret nz

jr_01a_5615:
    or b
    ld h, b
    jr jr_01a_5609

jr_01a_5619:
    ld c, h
    cp b
    xor d
    ld d, h
    rst $10
    jr z, jr_01a_5619

jr_01a_5620:
    add [hl]
    nop
    nop
    inc e
    nop
    daa
    inc e
    dec de
    ld b, $25
    ld a, [de]
    ld [hl], e
    inc a
    dec a
    ld [bc], a
    ld h, $1f
    nop
    nop
    jr c, jr_01a_5635

jr_01a_5635:
    ld a, h
    jr c, jr_01a_5620

    ld [hl], b
    ld e, $e0
    ld a, l
    add [hl]
    sbc $38
    or $0c
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    ld b, b
    sub c
    ld h, b

jr_01a_564b:
    xor h
    ld [hl], b
    ld d, d
    inc a
    ld a, h
    nop
    nop
    nop
    inc e
    nop
    ld h, h
    jr jr_01a_55ec

jr_01a_5658:
    ld a, b
    jr z, jr_01a_564b

    ldh a, [rP1]
    inc e
    nop
    ccf
    inc b
    inc a
    nop
    ld d, d
    inc a
    xor h
    ld [hl], b
    sub b
    ld h, b
    and b
    ld b, b
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    inc b
    nop
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    ld a, [de]
    inc c
    dec d
    ld c, $09
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld d, b
    jr nz, jr_01a_56d6

    jr nc, jr_01a_56de

    inc a
    add hl, hl
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    dec c
    ld [bc], a
    inc de
    ld c, $2d
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
    inc a
    nop
    ld d, [hl]
    jr c, jr_01a_5658

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
    jr nc, jr_01a_56bd

jr_01a_56bd:
    jr z, jr_01a_56cf

    inc h
    jr jr_01a_56c2

jr_01a_56c2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec e
    inc bc
    ld l, e
    rra

jr_01a_56cf:
    cp [hl]
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_01a_56d6:
    nop
    nop
    nop
    ldh a, [rP1]
    ld e, [hl]
    ldh [$fff5], a

jr_01a_56de:
    ld a, [$c0be]
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    inc a
    inc c
    inc sp
    inc hl
    rrca
    ld c, $3f
    inc [hl]
    ld a, [hl]
    nop
    ldh a, [$ffe0]
    or $c7
    rra
    dec d
    ld a, $2a
    db $fc

jr_01a_56fb:
    adc h
    ldh a, [$ff58]
    db $ec
    jr jr_01a_56fb

    jp hl


    rla
    or b
    ld c, a
    ld e, d
    dec h
    jr z, jr_01a_5720

    dec d
    ld a, [bc]
    dec bc
    inc b
    rlca
    nop
    inc bc
    nop
    cp e
    ld c, [hl]
    db $dd
    and [hl]
    ld a, [hl-]
    call nz, Call_000_30cc
    ld l, b
    ldh a, [$ff88]
    ldh a, [$ff50]
    ldh [$ffe0], a

jr_01a_5720:
    nop
    ld d, a
    jr c, jr_01a_57a0

    daa
    dec a
    ld c, $3b
    inc c
    ld d, l
    ld a, [hl+]
    ld a, c
    ld b, $0b
    inc b
    ld b, $00
    xor l
    ld [hl], d
    sub $38
    ld e, a
    cp d
    xor a
    reti


    rst $30
    ld c, b
    db $ec
    db $10
    ld [hl], d

jr_01a_573e:
    inc c
    inc e
    nop
    sbc [hl]
    ld h, b
    xor c
    ld e, [hl]
    jp nc, Jump_01a_4c3c

    jr nc, jr_01a_579b

    jr nz, jr_01a_57ae

    ld bc, $0001
    nop
    nop
    ld b, $00
    ld a, b
    nop
    sub h
    ld a, b
    ld c, d
    inc a
    ld [hl-], a
    inc c
    ld a, [bc]
    inc b
    ld b, $00
    nop
    nop
    and b
    ld b, b
    ld [hl], b
    nop
    ld b, $00
    ld a, [de]
    inc b
    ldh [c], a
    inc e
    or h
    ld a, b
    ld c, c
    jr nc, @+$34

    nop
    nop
    nop
    ld l, [hl]
    nop
    ld d, l
    ld [hl+], a
    ld c, [hl]
    jr nc, jr_01a_57cc

    inc a
    add hl, hl
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_5785

jr_01a_5785:
    ld l, b
    db $10
    sbc b
    ld h, b
    ld [hl], h
    ld [$0c1b], sp
    ld d, $0f
    rrca
    nop
    ld e, $00
    nop
    nop
    ld b, $00
    ld a, [bc]
    inc b
    ld [hl], $0c

jr_01a_579b:
    ld e, d
    inc a
    and h
    jr jr_01a_57b8

jr_01a_57a0:
    nop
    ldh a, [rP1]
    nop
    nop
    jr jr_01a_57a7

jr_01a_57a7:
    ld l, b
    db $10
    xor b
    ld d, b
    ld l, b
    jr nc, jr_01a_573e

jr_01a_57ae:
    ld h, b
    ld h, b
    nop
    ld a, [hl+]
    inc e
    dec d
    ld c, $0e
    nop
    ld b, l

jr_01a_57b8:
    ld [bc], a
    and d
    ld b, b
    ret c

    ld h, b
    and h
    ld a, b
    ld a, b
    nop
    ld c, b
    ccf
    cpl
    rra
    ld e, [hl]
    ccf
    ld a, b
    rlca
    sub l
    ld a, a
    ld l, a

jr_01a_57cc:
    rra
    jr jr_01a_57d6

    rlca
    nop
    dec a
    cp $d6
    ld hl, sp-$54

jr_01a_57d6:
    ld hl, sp+$32
    call z, $fee9
    ld d, [hl]
    ld hl, sp-$08
    nop
    nop
    nop
    ld c, [hl]
    add hl, sp
    inc sp
    ld c, $07
    rrca
    ld b, $1b
    ld [bc], a
    ld sp, $6011
    nop
    nop
    nop
    nop
    ld [bc], a
    cp a
    jr nz, @-$1e

    add b
    ld h, b
    ret nz

    db $fc
    and b
    ldh a, [$ff90]
    ld a, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0602
    inc c
    inc c
    jr jr_01a_5827

    jr c, @+$3b

    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc c
    ld [$301c], sp
    ld a, b
    ldh a, [$fff0]
    ldh [$fff0], a
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5827:
    nop
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
    rst $38
    ccf
    ld a, a
    rra
    ccf
    ld a, $7f
    ld h, $7f
    ld [bc], a
    ld h, a
    nop
    ld b, d
    nop
    ld bc, $8100
    add c
    jp $8100


    nop
    nop
    nop
    ld bc, $0100
    ld bc, $8083
    jp $fe30


    cp $ff
    db $fc
    cp $78
    db $fc
    ld hl, sp-$04
    adc b
    db $fc
    inc b
    adc [hl]
    nop
    ld b, $7c
    nop
    rst $28
    ld e, h
    xor e
    halt
    ld a, l
    ld [bc], a
    ld h, d
    inc e
    inc [hl]
    ld [$003c], sp
    jr jr_01a_5871

jr_01a_5871:
    nop
    nop
    nop
    nop
    inc c
    nop
    ld a, [de]
    inc c
    ld a, [de]
    inc c
    ld a, [hl-]
    inc c
    ld [hl], d
    inc l
    ld [hl], a
    inc l
    ld a, b
    nop
    ld d, h
    jr c, jr_01a_58f2

    jr jr_01a_58f4

    db $10
    ld a, h
    nop
    inc l
    jr jr_01a_58c2

    jr jr_01a_58c4

    jr jr_01a_58c2

    nop
    call z, $b630
    ld c, b
    jp c, Jump_01a_736c

    ld e, $45
    ld a, $5a
    inc a
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
    ld e, b
    jr nz, jr_01a_590c

    jr z, jr_01a_5914

jr_01a_58ba:
    inc [hl]
    ld c, d
    inc a
    dec [hl]
    ld c, $1e
    nop
    nop

jr_01a_58c2:
    nop
    nop

jr_01a_58c4:
    nop
    ld [hl], b
    nop
    ld l, b
    jr nc, jr_01a_593e

    jr c, jr_01a_58f8

    db $10
    jr c, jr_01a_58cf

jr_01a_58cf:
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld b, h
    jr c, jr_01a_58ba

    ld a, h
    cp [hl]
    ld h, b
    ld l, [hl]
    db $10
    inc a
    nop
    nop
    nop
    rlca
    nop
    add hl, de
    ld b, $3d
    ld e, $7b
    inc e
    ld a, l
    ld a, [hl-]
    ld [hl], l
    ld a, [hl-]
    ld b, [hl]
    jr c, jr_01a_593c

    jr nc, jr_01a_590e

jr_01a_58f2:
    nop
    ld a, d

jr_01a_58f4:
    inc e
    ld a, l
    ld [hl-], a
    xor c

jr_01a_58f8:
    halt
    sub c
    ld l, [hl]
    ldh [c], a
    inc e
    sbc h
    ld h, b
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
    nop

jr_01a_590c:
    nop
    nop

jr_01a_590e:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5914:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld c, $0c
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
    nop
    nop
    stop
    jr jr_01a_5940

    jr c, jr_01a_5932

jr_01a_5932:
    ld [$1e08], sp
    ld a, [bc]
    ld a, a
    ld a, h
    cp $1c
    ld a, [hl]
    inc d

jr_01a_593c:
    ld a, $22

jr_01a_593e:
    ld [hl], a
    nop

jr_01a_5940:
    ld [hl+], a
    ld b, c
    db $e3
    ld [bc], a

jr_01a_5944:
    ld b, a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_594e:
    nop
    nop
    nop
    nop
    add b
    nop
    db $10
    db $10
    ld a, b
    ld d, b
    ld hl, sp+$38
    ld a, h
    ld d, b
    ld hl, sp+$08
    ld e, h
    nop
    ld [$0060], sp
    ld [hl], b
    jr nz, jr_01a_594e

    jr nc, jr_01a_5944

    ld a, b
    ldh a, [c]
    inc c
    rst $18
    jr nc, jr_01a_59d1

    inc e
    jr c, @+$08

    ld a, a
    jr nz, @+$65

    inc e
    ld e, l
    ld a, $4b
    inc a
    sbc l
    ld a, [hl]
    di
    ld a, h
    ld a, h
    nop
    nop
    nop
    inc e
    ld [$0814], sp
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
    nop
    nop
    ld bc, $0f00
    nop
    ld a, a
    dec c
    ld h, d
    dec a
    ld b, [hl]
    dec a
    ld a, c
    ld e, $77
    jr jr_01a_59de

    nop
    rst $38
    nop
    pop de
    ld a, $56

jr_01a_59a6:
    db $fc
    ld d, [hl]
    ld hl, sp-$48
    ldh [$ff60], a
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp b
    ld b, b
    or h
    ld l, b
    sbc d
    ld [hl], h
    ld l, d
    inc e
    inc e
    nop
    ret nz

    nop
    cp b
    ld b, b
    db $fc
    jr nc, jr_01a_59a6

    jr c, jr_01a_5a2c

    inc e
    ld a, [hl]
    nop
    inc l
    db $10
    jr c, jr_01a_59d1

jr_01a_59d1:
    nop
    nop
    rra
    nop
    ld [hl], c
    ld c, $fd
    ld a, $9e
    ld a, h
    adc $30
    ld a, h

jr_01a_59de:
    nop
    jr nc, jr_01a_59e1

jr_01a_59e1:
    call c, $e820
    db $10
    sbc b
    ld h, b
    or b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    ld b, b
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

jr_01a_5a2c:
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_01a_5a57:
    nop
    nop
    ld b, b
    ld d, b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    inc bc
    rlca
    rlca
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
    jr jr_01a_5ab5

    jr c, jr_01a_5a57

    jr nz, @-$4e

    jr @+$1e

    inc e
    rra
    ld [bc], a
    rlca
    ld d, $3e
    jr nz, @+$79

    ld h, b
    ld a, c
    ld h, b
    ld [hl], c
    nop
    nop
    jr nz, jr_01a_5ae3

    ld b, b
    ld h, b

jr_01a_5ab5:
    inc c
    ld c, h
    ld e, $3e
    ld b, $1e
    add d
    add $88
    call z, $8080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    rrca
    rra
    ld [hl], b
    ld a, b
    add b
    add b
    inc bc
    rlca
    ld [$0008], sp
    db $10
    ld b, b
    ret nz

    add b
    ret nz

    ld hl, sp-$04

jr_01a_5ae3:
    ld [bc], a
    ld b, a
    ld b, b
    ldh [$ffa0], a
    ldh [$ff08], a
    adc b
    inc b
    add [hl]
    ld b, $07
    dec b
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    nop
    ld h, b
    jr nz, jr_01a_5b1d

    jr nz, jr_01a_5b1f

    jr nz, jr_01a_5b21

    jr nz, jr_01a_5b23

    ld bc, $0001
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    jr nz, @+$22

    nop
    nop

jr_01a_5b1d:
    nop
    nop

jr_01a_5b1f:
    nop
    nop

jr_01a_5b21:
    jr nz, @+$22

jr_01a_5b23:
    nop
    ld bc, $0000
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld b, b
    ld b, b
    ld [$4008], sp
    ld b, b
    nop
    nop
    nop
    jr nz, jr_01a_5b3c

jr_01a_5b3c:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_5b44

jr_01a_5b44:
    ld bc, $0000
    nop
    ld [$0000], sp
    nop
    nop
    ld b, b
    ld b, b
    inc b
    inc b
    ld b, b
    ld b, b
    ld [$8008], sp
    ret nz

    nop
    nop
    nop
    jr nz, jr_01a_5b5c

jr_01a_5b5c:
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    inc b
    add b
    ret nz

    nop
    ld [$8080], sp
    nop
    nop
    nop
    nop
    jr nz, jr_01a_5b9d

    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [$010b], sp
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ret nz

    add b
    ret nz

    add b
    add sp, $10
    ret nc

    nop
    nop

jr_01a_5b9d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc c
    db $10
    db $10
    db $10
    db $10
    ld [$031c], sp
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    ld [$0498], sp
    inc b
    inc b
    inc b
    ld [$e01c], sp
    ld hl, sp+$00
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    db $10
    db $10
    dec bc
    rrca
    nop
    ld bc, $8000
    ld h, b
    ld [hl], b
    rlca
    rra
    nop
    nop
    inc b
    dec b
    ld c, b
    ret z

    ret nz

    ldh a, [$ff80]
    ret nz

    nop

jr_01a_5bea:
    nop
    ld [bc], a
    rlca
    ld hl, sp-$04
    nop
    nop
    jr nz, jr_01a_5c13

    nop

jr_01a_5bf4:
    jr nz, jr_01a_5bf6

jr_01a_5bf6:
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ccf
    ld e, $3f
    rra
    ccf
    dec de
    nop
    nop

jr_01a_5c13:
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    sbc [hl]
    nop
    db $f4
    adc b
    db $e4
    ret c

    nop
    nop
    nop
    nop
    ld b, $00
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $010e
    rra
    ld c, $3e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ret z

    jr nc, jr_01a_5bf4

    ld b, b
    ld a, h
    sbc b
    sbc $2c
    nop
    nop
    ld c, $00
    ld de, $0d0e
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    rrca
    inc bc
    rra
    rrca
    nop
    nop
    jr c, jr_01a_5c55

jr_01a_5c55:
    ld b, h
    jr c, jr_01a_5ca0

    jr nc, jr_01a_5bea

    ld h, b
    ldh [rP1], a
    ld hl, sp-$20
    db $fc
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $030d
    rla
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
    db $10
    ldh [$ffc8], a
    ldh a, [$ffd4]
    cp b
    inc bc
    nop
    rlca
    inc bc
    ld [hl], e
    ld bc, $2073
    dec a
    inc de

jr_01a_5c8b:
    rla
    rrca
    cpl
    rra
    cpl
    rra
    ldh [rP1], a
    ret nc

    ldh [$ffa7], a
    ret nz

    ld h, a
    add d
    jp c, $e4e4

    ld hl, sp-$0e
    db $fc
    ldh a, [c]

jr_01a_5ca0:
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    inc bc
    ld bc, $0275
    ld e, e
    scf
    scf
    rrca
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ldh [$ffa0], a
    ret nz

    rst $10
    jr nz, jr_01a_5c8b

    or $e6
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    dec de
    nop
    dec l
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ldh [$ffd0], a
    ldh [rWave_6], a
    ret nz

    db $ed
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
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
    and b
    ret nz

    ret nc

    ldh [$fff0], a
    ldh [$ff1f], a
    rrca
    rra
    ld a, [bc]
    rrca
    dec b
    rlca
    ld [bc], a
    rlca
    nop
    ld [$0f07], sp
    nop
    ld [$e400], sp
    ld hl, sp-$1c
    ret c

    db $e4
    ld e, b
    ldh [c], a
    sbc h
    ldh [c], a
    inc e
    ld [de], a
    db $ec
    db $fc
    nop
    nop
    nop
    ld a, $1d
    ccf
    ld e, $3f
    rra
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    cp $4c
    cp $fc
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    cp $fc
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ldh [$fff8], a
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    cpl
    rra
    daa
    rra
    dec hl
    rra
    ld l, $1f
    dec d
    rrca
    ld d, $0b
    add hl, bc
    ld b, $07
    nop
    ld [hl+], a
    db $fc
    sbc $f0
    and $d8
    adc d
    db $fc
    ld e, h
    ldh [$ffb8], a
    ld h, b
    sub b
    ld h, b
    ldh [rP1], a
    ld d, b
    ccf
    ld e, a
    ccf
    ld e, h
    ccf
    ld e, h
    ccf
    ld e, h
    ccf
    ld e, a
    ccf
    jr nz, @+$21

    rra
    nop
    ld bc, $f9fe
    cp $19
    cp $19
    cp $19
    cp $f9
    cp $02
    db $fc
    db $fc
    nop
    jr jr_01a_5daa

    rla
    rrca
    inc d
    rrca
    inc d
    rrca
    inc d

jr_01a_5daa:
    rrca
    rla
    rrca
    ld [$0707], sp
    nop
    inc c
    ldh a, [$ffe4]
    ld hl, sp+$24
    ld hl, sp+$24
    ld hl, sp+$24
    ld hl, sp-$1c
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    dec de
    rlca
    ld [$0b07], sp
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    or $f8
    inc b
    ld hl, sp-$0c
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$18
    ldh a, [$fff0]
    nop
    dec bc
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    dec bc
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    add sp, -$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    add sp, -$10
    ret nc

    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $20
    ld h, e
    rst $28
    ld h, d
    ld a, a
    dec c
    dec l
    inc c
    ld a, h
    jr nz, jr_01a_5e12

jr_01a_5e12:
    nop
    nop
    nop
    ldh [c], a
    ld [bc], a
    ldh a, [$ff60]
    db $e4
    add h
    ldh [rLCDC], a
    call c, $1c18
    ld [$0000], sp
    nop
    nop
    ld b, $00
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $010e
    ccf
    ld c, $7e
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld a, b
    add b
    sub h
    ld l, b
    ld l, b
    sub b
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
    ld bc, $3800
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [$ff60]
    ldh [$ffc0], a
    ret nz

    nop
    db $fc
    add b
    cp [hl]
    inc e
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    cp b
    ld d, b
    sbc b
    ldh a, [$fff8]
    ld [hl], b
    ldh a, [$ffe0]
    ldh [rP1], a
    jr jr_01a_5e81

jr_01a_5e81:
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    cpl
    rra
    ld e, a
    ccf
    ld c, a
    inc sp
    rst $18
    dec l
    db $fd
    ld [de], a
    ldh [rP1], a
    ret c

    ldh [$fff4], a
    ld hl, sp-$16
    db $fc
    push af
    cp $f1
    cp $ef
    ldh a, [$ffcf]
    cp $00
    nop
    rlca
    nop
    jr jr_01a_5eae

    cpl
    rra
    ccf
    rra
    ld e, a

jr_01a_5eac:
    ccf
    ld a, [hl]

jr_01a_5eae:
    ccf
    ld a, l
    ld b, $00
    nop
    add b
    nop
    ld h, b
    add b
    sub b
    ldh [$ffd0], a
    ldh [$ff08], a
    ldh a, [$ffc8]
    jr nc, jr_01a_5eac

    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    ld a, [bc]
    rlca
    add hl, de
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld l, b
    ldh a, [rWave_4]
    ld hl, sp+$34
    ld hl, sp+$74
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01a_5eeb

jr_01a_5eeb:
    ld a, [hl]
    jr c, @+$01

    ld a, [hl]
    rst $38
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    db $fc
    ld a, h
    daa
    ld bc, $070f
    rrca
    ld bc, $425d
    ld sp, $1f0e
    ld bc, $2021
    nop
    nop
    sbc h
    nop
    ldh a, [c]
    adc h
    xor c
    ld b, [hl]
    sub l
    ld h, d
    swap b
    db $e4
    sbc b
    ld hl, sp+$00
    nop
    nop
    cp $7d
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld e, l
    ccf
    scf
    nop
    nop
    nop
    nop
    or $68
    cp $f4
    rst $38
    cp [hl]
    rst $38
    ld a, d
    rst $38
    cp $fe
    db $ec
    db $fc
    ldh a, [rP1]
    nop
    ld a, h

jr_01a_5f42:
    jr z, jr_01a_5f42

    ld l, h
    rst $38
    ld l, [hl]
    rst $38
    halt
    ld a, a
    ld [hl], $3e
    inc d
    inc e
    nop
    nop
    nop
    ld a, a
    ld a, $7f
    ld a, $ff
    ld a, [hl]
    cp $7c
    cp $6c
    db $fc
    ld d, b
    ld hl, sp+$60
    ld h, b
    nop
    ld a, b
    nop
    cp h
    ld e, b
    adc [hl]
    ld a, h
    or a
    ld e, [hl]
    rst $08
    scf
    ld h, l
    ld a, [de]
    ld a, $01
    rra
    nop
    inc h
    jr @+$6c

    inc a
    ld d, [hl]
    jr c, @-$5c

    inc e
    call c, $c080
    nop
    ld b, b
    add b
    add b
    nop
    ld l, l
    ld a, [de]
    ld a, d
    dec c
    inc a
    rra
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    rrca
    ldh a, [rTIMA]
    ld a, [$fa05]
    ld a, [bc]
    db $f4
    adc [hl]
    cp $fe
    cp $f8
    ld hl, sp-$40
    ret nz

    ld a, e
    dec a
    ld a, d
    dec b
    ld b, c
    ld a, $20
    rra
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    call c, $d820
    jr nz, @+$6a

    ldh a, [$fff0]
    ld [hl], b
    cp $fe
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    ld a, $17
    dec de
    rlca
    dec a
    dec de
    ld l, d
    ld d, l
    ld a, e
    ld l, h
    ld a, a
    ld a, e
    ccf
    ccf
    rrca
    rrca
    db $e4
    ld hl, sp+$44
    ld hl, sp-$74
    db $f4
    cp [hl]
    ld c, [hl]
    ld a, [hl]
    cp [hl]
    db $fc
    ld a, h
    ld hl, sp-$08
    ldh [$ffe0], a
    rst $38
    ld a, l
    cp [hl]
    ld a, c
    ld e, [hl]
    scf
    dec hl
    rla
    dec [hl]
    daa
    dec de
    dec de
    dec c
    dec c
    inc bc
    inc bc
    inc e
    ldh [rWave_e], a
    call c, $be7f
    ld a, a
    cp [hl]
    db $fd
    ld a, [hl]
    ld a, [$847c]
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld h, d
    inc e
    ld de, $090e
    ld b, $1e
    ld bc, $1d3e
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    adc h
    ld [hl], b

jr_01a_6019:
    db $10
    ldh [rNR41], a
    ret nz

    ldh a, [rP1]
    ld hl, sp+$70
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
    inc hl
    inc e
    inc h
    dec de
    ld c, b
    scf
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_01a_6019

    ld h, h
    ld hl, sp-$4e
    ld a, h
    ld e, d
    cp h
    xor c
    sbc $00
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ret nz

    nop
    jr nz, jr_01a_6019

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

jr_01a_6061:
    inc bc
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0102
    ldh a, [rP1]
    ret nc

    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    ldh [$ffc0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld [de], a
    rrca
    add hl, bc
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ret nz

    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_01a_6061

    inc bc
    nop
    inc c
    inc bc
    scf
    rrca
    ld l, a
    rra
    ld c, a
    ccf
    add a
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    nop
    jr nc, @-$3e

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$3e
    db $fc
    add c
    cp $01
    cp $01
    cp $00
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    inc de
    ld c, $17
    ld c, $63
    ld e, $00
    nop
    nop
    nop
    ld [hl], b
    nop
    add sp, $70
    ret z

    ldh a, [rNR10]
    ldh [$ff64], a
    add b
    jp z, $0004

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $7f
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$fff8]
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b

jr_01a_611f:
    add b
    nop
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    scf
    inc h
    dec de
    inc hl
    inc e
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld l, c
    sbc $69
    sbc $a9
    sbc $5a
    cp h
    ld [hl-], a
    db $fc
    ld h, h
    ld hl, sp+$18
    ldh [$ffe0], a
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    jr nz, jr_01a_611f

    ret nz

    nop
    dec b
    inc bc
    dec b
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    ret nc

    ldh [$fff0], a
    ldh [$ffe8], a
    ldh a, [$ffe8]
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    ld [$1307], sp
    rrca
    daa
    rra
    ld b, a
    ccf
    ld b, e
    ccf
    jr nz, @+$21

    db $10
    rrca
    rrca
    nop
    ret nc

    ldh [$ffe8], a
    ldh a, [$fff4]
    ld hl, sp-$04
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp+$18
    ldh [$ffe0], a
    nop
    ld b, b
    ccf
    ld b, b
    ccf
    ld hl, $181e
    rlca
    rra
    ld [$0f1f], sp
    rrca
    rlca
    rlca

jr_01a_61b0:
    nop
    inc bc
    db $fc
    ld c, $f0
    db $fc
    nop
    ld a, b
    add b
    ldh a, [rP1]
    ldh a, [$ffc0]
    ldh [$ffc0], a
    ret nz

    nop
    sub c
    ld l, [hl]
    cp [hl]
    ld [hl], b
    or l
    ld a, b
    ld c, c
    jr nc, jr_01a_6215

    ld sp, $0334
    inc b
    inc bc
    inc bc
    nop
    adc c
    ld b, $15
    ld c, $9d
    ld c, [hl]
    db $ed
    sbc [hl]
    dec e
    xor $19
    xor $32
    call z, $00cc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6204:
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld b, $01
    rlca
    ld [bc], a
    rlca
    inc bc
    nop
    nop
    nop
    nop

jr_01a_6215:
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rWave_0], a
    ret nz

    ret nc

    jr nz, jr_01a_61b0

    ldh [rP1], a
    nop
    nop
    nop
    ld a, b
    nop
    or h
    ld a, b
    ld a, [$bb7c]
    ld a, h
    ld d, h
    dec sp
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01a_6238:
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    call nz, RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld bc, $4300
    ld b, b

jr_01a_624f:
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr nc, jr_01a_6259

jr_01a_6259:
    ret z

    jr nc, jr_01a_6204

    ld d, b
    jr jr_01a_624f

    jr @-$0e

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_6289

    add e
    add b
    inc c
    inc bc
    jr nc, jr_01a_627e

    ld b, [hl]
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [$04f0], sp

jr_01a_627e:
    ld hl, sp-$3e
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6289:
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
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
    ret nc

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
    rlca
    nop
    dec bc
    rlca
    rla
    rrca
    nop
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
    or b
    ret nz

    add sp, -$10
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
    dec de
    rlca
    cpl
    rra
    ld e, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $ec
    ldh a, [$fffa]
    db $fc
    db $fd
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
    ld bc, $0200
    ld bc, $030d
    nop
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
    and b
    ret nz

    jr nc, @-$1e

    ld b, $03
    ld b, $03
    rra
    nop
    ld l, $1f
    ld e, h
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ccf
    nop
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff90], a
    ld h, b
    db $10
    ldh [rWave_0], a
    ret nz

    ret nz

    nop
    nop
    nop
    rrca
    nop
    dec bc
    inc b
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    db $ec
    db $10
    db $f4
    ld [$f884], sp
    add h
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp-$38
    ldh a, [$fff0]
    nop
    ld b, $01

jr_01a_6343:
    inc h
    inc bc
    ld d, h
    inc hl
    ld c, l
    inc sp
    ld h, b
    rra
    inc hl
    inc e
    inc l
    db $10
    stop
    jr z, jr_01a_6343

    ld a, b
    ldh [$ffd0], a
    ldh [$ffa0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    jr c, jr_01a_6398

    ld [$000c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    cp $b1
    ld a, [hl]
    ld l, l
    ld a, [de]
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rlca
    rla
    rrca
    rra
    inc c
    cpl
    inc e
    cpl
    inc e
    daa
    inc e
    inc de
    inc c
    rrca
    nop
    add sp, -$10
    db $f4
    ld hl, sp-$04
    jr @-$04

jr_01a_6398:
    inc e
    ld a, [$f21c]
    inc e
    db $e4
    jr jr_01a_6398

    nop
    dec sp
    rlca
    ld d, h
    dec sp
    or h
    ld a, e
    and d
    ld a, l
    add d
    ld a, l
    adc [hl]
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    db $ec
    ldh a, [$ffca]
    db $f4
    ld [de], a
    db $ec
    dec d
    xor $2d
    sbc $45
    cp [hl]
    pop bc
    ld a, $3e
    nop
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    ld b, e
    ccf
    ld b, b
    ccf
    jr nz, jr_01a_63ec

    jr jr_01a_63d6

    rlca
    nop
    db $fd
    cp $fd
    cp $f9

jr_01a_63d6:
    cp $e1
    cp $01
    cp $02
    db $fc
    inc c
    ldh a, [$fff0]
    nop
    ld d, $0f
    dec a
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    cpl

jr_01a_63ec:
    rra
    dec de
    rlca
    rlca
    nop
    cp b
    ldh a, [$ffdc]
    ld hl, sp-$06
    db $fc
    cp $fc
    ld a, [$f4fc]
    ld hl, sp-$18
    ldh a, [$fff0]
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
    inc bc
    ccf
    rrca
    ld a, a
    ccf
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    ldh a, [$fffa]
    db $fc
    ld sp, hl
    cp $f9
    cp $f9
    cp $00
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    rla
    ld c, $3f
    inc c
    cpl
    inc de
    scf
    dec de
    ccf
    dec de
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ret nc

    ldh [$fff8], a
    ld h, b
    add sp, -$70
    ret c

    or b
    ld hl, sp-$50
    ld b, $00
    rlca
    ld [bc], a
    ld h, d
    nop
    ldh a, [$ff60]
    ld h, b
    nop
    inc b
    nop
    ld c, $04
    inc b
    nop
    nop
    nop
    ld h, b
    nop
    ldh [rLCDC], a
    ld c, b
    nop
    inc e
    ld [$081c], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6468:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    nop
    rrca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    db $fc
    ld c, b
    ld a, b
    db $10
    db $fc
    jr z, jr_01a_64a4

    nop
    rlca

jr_01a_64a4:
    ld [bc], a
    ld e, $00
    inc hl
    inc e
    ld b, a
    add hl, sp
    add hl, sp
    nop
    nop
    nop
    ld [$1800], sp
    nop
    inc h
    jr jr_01a_64fe

    jr nc, jr_01a_6468

    nop
    jp nz, $ef80

    ld b, d
    ld e, [hl]
    inc c
    rrca
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
    nop
    nop
    nop

jr_01a_64db:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_01a_64fe:
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld c, a
    ld a, [hl]
    ld hl, $0f30
    rrca
    nop
    nop
    nop
    pop af
    cp $82
    db $fc
    inc c
    ldh a, [rWave_0]
    ret nz

    jr nz, jr_01a_64db

    ret nz

    nop
    nop
    nop
    nop
    nop
    ccf
    dec de
    ld a, $1b
    dec [hl]
    dec de
    inc l
    inc de
    inc sp
    inc c
    ld de, $0d0e
    ld [bc], a
    inc bc
    nop
    ld l, b
    or b
    ret z

    or b
    ld c, b
    or b
    ld l, b
    sub b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    and $40
    ld c, [hl]
    inc b
    ld b, $00
    jr nz, jr_01a_654b

jr_01a_654b:
    ld [hl], d
    jr nz, jr_01a_65b5

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_01a_6559

jr_01a_6559:
    jr c, jr_01a_656b

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

jr_01a_656b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc de
    dec c
    add hl, bc
    ld b, $0e
    ld bc, $0e11
    ld h, $18
    jr c, jr_01a_658f

jr_01a_658f:
    nop

jr_01a_6590:
    nop
    db $fc
    add b
    ldh [c], a
    ld e, h
    call c, $b020
    ld b, b
    ld e, h
    and b
    jp nz, Jump_000_393c

    ld b, $06
    nop
    dec e
    ld [$010e], sp
    inc de
    inc c
    inc de
    dec c
    daa
    ld a, [de]
    ld a, $00
    nop
    nop
    nop
    nop
    adc h
    nop
    ld d, d
    adc h

jr_01a_65b5:
    and h
    jr jr_01a_6590

    nop
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    jr z, jr_01a_65ff

    db $10
    jr c, jr_01a_65f2

    jr c, jr_01a_65cc

jr_01a_65cc:
    ld b, h
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
    db $10
    jr c, jr_01a_65da

jr_01a_65da:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c08], sp
    inc e
    ld a, $3e
    rst $38
    inc e
    ld a, $08
    inc e
    nop
    ld [$0800], sp
    nop

jr_01a_65f2:
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

jr_01a_65ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3a00
    ld bc, $385f
    adc a
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    add sp, $70
    sub h
    add sp, -$0c
    ld [$1ce2], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    add hl, de
    ld b, $23
    inc e
    inc [hl]
    dec bc
    dec sp
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
    nop
    nop
    nop
    add b
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, [de]
    dec b
    dec [hl]
    ld a, [bc]
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
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
    ldh [rP1], a
    ret c

    jr nz, jr_01a_6662

jr_01a_6662:
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    dec d
    rrca
    ld a, [hl+]
    rra
    dec [hl]
    rra
    ld e, $0b
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
    ld h, b
    add b
    cp b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    dec d
    rrca
    ld a, [hl+]
    rra
    dec [hl]
    rra
    ld e, $0b
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
    ld h, b
    add b
    cp b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    dec d
    rrca
    ld a, [hl+]
    rra
    dec [hl]
    rra
    ld e, $0b
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
    ld h, b
    add b
    cp b
    ld h, b
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    rra
    dec b
    ccf
    rra
    ccf
    nop
    ccf
    rra
    nop
    nop
    ldh [rP1], a
    ldh a, [$ffe0]
    ld hl, sp+$10
    db $fc
    ret nc

    cp $fc
    cp $00
    cp $fc
    nop
    nop
    nop
    nop
    add hl, de
    nop
    daa
    add hl, de
    ccf
    inc b
    rra
    ld [$031c], sp
    ld a, $01
    nop
    nop
    ld a, [hl]
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    add [hl]
    ld a, a
    ld b, c
    ld a, $3e
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    or d
    ld a, h
    ld [hl], c
    cp $79
    cp $79
    cp $3a
    db $fc
    xor h
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    inc hl
    rra
    ld de, $110f
    ld c, $09
    ld b, $08
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    db $fc
    cp b
    or d
    ld a, h
    ld b, d
    db $fc
    ld [bc], a
    db $fc
    inc c
    ldh a, [rSVBK]
    add b
    ldh [rP1], a
    add b
    nop
    rrca
    nop
    rla
    ld [$152a], sp
    ld sp, $280e
    rla
    dec d
    ld a, [bc]
    ld c, $01
    inc bc
    nop
    db $ec
    db $10
    or $08
    xor d
    ld d, h
    ld d, [hl]
    xor b
    xor d
    ld d, h
    ld d, h
    xor b
    xor b
    ld d, b
    ldh a, [rP1]
    dec c
    ld [bc], a
    ld a, [de]
    dec c
    dec [hl]
    rra
    ld l, $1f
    scf
    rra
    ld a, [de]
    rrca
    dec c
    inc bc
    inc bc
    nop
    call nc, $aa38
    ld e, h
    halt
    call c, $fcaa
    ld d, [hl]
    db $fc
    xor h
    ld hl, sp+$58
    ldh a, [$fff0]
    nop
    dec c
    ld [bc], a
    ld a, [de]
    dec c
    dec [hl]
    rra
    ld l, $1f
    scf
    rra
    ld a, [de]
    rrca
    dec c
    inc bc
    inc bc
    nop
    call nc, $aa38
    ld e, h
    halt
    call c, $fcaa
    ld d, [hl]
    db $fc
    xor h
    ld hl, sp+$58
    ldh a, [$fff0]
    nop
    dec c
    ld [bc], a
    ld a, [de]
    dec c
    dec [hl]
    rra
    ld l, $1f
    scf
    rra
    ld a, [de]
    rrca
    dec c
    inc bc
    inc bc
    nop
    call nc, $aa38
    ld e, h
    halt
    call c, $fcaa
    ld d, [hl]
    db $fc
    xor h
    ld hl, sp+$58
    ldh a, [$fff0]
    nop
    ccf
    rra
    ccf
    nop
    ccf
    ld e, $3f
    jr jr_01a_6806

    dec de
    ccf
    jr jr_01a_680d

    ld e, $1f
    nop
    cp $fc
    cp $00
    ld a, [hl]
    cp h
    ld a, [hl]
    adc h
    ld e, $ec
    ld a, [hl]
    adc h
    ld a, [hl]
    cp h
    db $fc
    nop
    ccf
    nop
    ld a, c
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$3e

    sub b
    ld h, b
    ret z

    jr nc, jr_01a_685c

    jr jr_01a_682c

    inc c
    dec e
    ld [bc], a
    add hl, bc
    ld b, $07
    nop
    nop
    nop
    ret nz

    nop
    db $fc

jr_01a_6806:
    ld b, b
    ld e, e
    inc a
    ld h, [hl]
    ccf
    ld h, c
    ccf

jr_01a_680d:
    ld d, b
    ccf
    jr nc, @+$21

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
    and b
    ret nz

    ret nc

    ldh [rBCPS], a
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc d

jr_01a_682c:
    ld [$1028], sp
    jr z, jr_01a_6841

    nop
    nop
    ld hl, sp+$00

jr_01a_6835:
    call nz, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc e
    nop
    jr nz, jr_01a_6841

jr_01a_6841:
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
    ld [hl-], a
    dec c
    ld c, b
    scf
    ld a, a
    nop
    nop
    nop
    jr nc, jr_01a_6855

jr_01a_6855:
    ret z

    jr nc, jr_01a_688c

    ret z

    ld [de], a
    db $ec
    push bc

jr_01a_685c:
    ld a, [hl-]
    ld a, a
    add b
    rst $30
    ld a, d
    nop
    nop
    dec c
    nop
    inc sp
    inc c
    ld d, a
    jr z, jr_01a_68e9

    ld b, $69
    ld a, $3a
    inc d
    dec a
    nop
    ret nz

    nop
    jr nz, jr_01a_6835

    xor h
    ret nz

    or $08
    xor c
    ld d, [hl]
    ld a, c
    ld c, $1e
    ld [$10f8], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_688c:
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
    ld [hl], b
    nop
    ret z

    jr nc, jr_01a_68b4

    add sp, $00
    nop
    inc bc
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    scf
    ld bc, $2073
    jr nc, jr_01a_68af

jr_01a_68af:
    nop
    nop
    nop
    nop
    nop

jr_01a_68b4:
    nop
    add b
    nop
    ld b, b
    add b
    ret c

    add b
    db $e4
    jr jr_01a_68fa

    nop
    jp c, $000c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    inc c
    nop
    ld a, [bc]
    inc b

jr_01a_68e9:
    ld d, $0c
    ld c, $04
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh [rLCDC], a
    ret nz

jr_01a_68fa:
    nop
    ld c, $00
    add hl, de
    ld b, $1d
    ld a, [bc]
    jr z, jr_01a_6922

    inc e
    rrca
    ld d, $0f
    dec bc
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    inc [hl]
    ld hl, sp+$1c
    ldh [rNR21], a
    add sp, $1d
    and $fb
    ld d, $a3
    ld e, [hl]
    pop de
    ld c, $0e
    nop
    ld d, b

jr_01a_6922:
    jr nz, jr_01a_6974

    jr nz, jr_01a_699e

    nop
    db $fd
    ld e, b
    and $58
    jp c, $9160

    ld h, b
    ld h, b
    nop
    jr nz, jr_01a_6933

jr_01a_6933:
    stop
    ld [$ca00], sp
    nop
    ld sp, $0e00
    nop
    ld e, $0c
    db $fc
    nop
    ld e, l
    ld l, $4b
    inc a
    ld a, l
    ccf
    ld a, a
    daa
    ld l, a
    ld [hl], $5f
    ld a, $40
    ccf
    ccf
    nop
    or e
    cp $3f
    sbc $e7
    sbc $f5
    xor $5b
    db $fc
    add c
    ld a, [hl]
    ld a, $c0
    ret nz

    nop
    ld e, d
    ld hl, $116a
    ld c, d
    ld sp, $285f
    scf
    add hl, de
    dec e
    ld [$0009], sp
    nop
    nop
    call nc, $3f20

jr_01a_6974:
    call nz, $36fb
    call $beb6
    ret nz

    db $f4
    ldh [$fff0], a
    jr nz, jr_01a_69e0

    nop
    add hl, de
    ld b, $24
    dec de
    ccf
    nop
    cpl
    rla
    ccf
    ld e, $3b
    ld d, $37
    dec de
    rra
    nop
    add d
    ld a, h
    cp $00
    ld l, d
    call c, $c8fe
    ld a, [hl]
    db $fc
    jp z, $fc7c

jr_01a_699e:
    add b
    add b
    nop
    add hl, sp
    nop
    ld c, h
    jr nc, jr_01a_69f2

    jr nc, @-$68

    ld l, h
    xor d
    ld e, h
    ld a, h
    jr nc, jr_01a_69de

    nop
    nop
    nop
    ld e, d
    adc h
    adc [hl]
    nop
    ld [hl], b
    nop
    sbc b
    ld h, b
    ld l, b
    db $10
    ld e, b
    jr nc, @+$3a

    db $10
    jr jr_01a_69c1

jr_01a_69c1:
    inc bc
    nop
    dec c
    ld [bc], a
    inc d
    dec bc
    rra
    nop
    ld d, $0d
    dec de
    rlca
    dec d
    ld c, $0f
    nop
    db $10
    ldh [$ff28], a
    ret nc

    ld hl, sp+$00
    cp b
    ldh a, [$ffd8]
    ldh [rBCPS], a
    or b
    ld [hl], b

jr_01a_69de:
    add b
    add b

jr_01a_69e0:
    nop
    ld bc, $f200
    ld bc, $609b
    ld a, b
    db $10
    ld e, b
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    sbc [hl]

jr_01a_69f2:
    nop
    add b
    nop
    jr nc, jr_01a_69f7

jr_01a_69f7:
    ld c, b
    jr nc, jr_01a_6a52

jr_01a_69fa:
    jr nz, jr_01a_6a38

    jr jr_01a_6a1a

    nop
    nop
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
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc

jr_01a_6a1a:
    nop
    cp $fc
    rst $38
    cp $ff
    cp $00
    nop
    ld b, $00
    ccf
    ld [bc], a
    ld a, a
    ld a, [hl-]
    ld a, [hl]
    inc a
    ld a, [hl-]
    inc e
    ld [hl], $18
    ld h, e
    inc e
    nop
    nop
    nop
    nop
    jr nc, jr_01a_6a37

jr_01a_6a37:
    ld a, b

jr_01a_6a38:
    jr nc, jr_01a_6ab2

    jr nc, jr_01a_69fa

    ld [hl], b
    cp a
    ld c, [hl]
    sbc a
    ld l, [hl]
    nop
    nop
    nop
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
    rra
    rrca
    nop

jr_01a_6a52:
    nop
    nop
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
    db $fc
    ld hl, sp+$00
    nop
    ld bc, $1a00
    ld bc, $193e
    dec a
    jr jr_01a_6a80

    ld [$0814], sp
    db $ec
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    ld a, h

jr_01a_6a78:
    sbc b
    ld e, h
    cp b
    db $db
    jr nz, jr_01a_6aeb

    ld [de], a
    ld d, d

jr_01a_6a80:
    jr nz, jr_01a_6a82

jr_01a_6a82:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_6aa7

jr_01a_6aa7:
    ld d, b
    jr nz, jr_01a_6acb

    nop
    ld bc, $1900
    nop
    dec a
    jr jr_01a_6ab2

jr_01a_6ab2:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and $c0
    xor d
    call nz, $8044
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
    ld a, [hl]
    nop

jr_01a_6acb:
    ld e, c
    ld a, $31
    ld c, $0f
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
    nop
    ld e, c
    ld a, $66
    jr c, jr_01a_6a78

    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    nop
    ccf
    dec e

jr_01a_6aeb:
    ld a, d
    ccf
    ld e, l
    ccf
    ld [$007d], a

jr_01a_6af2:
    nop
    nop
    nop
    ldh [rP1], a
    ld e, b
    ldh [$fff4], a
    ld hl, sp-$44
    ld hl, sp-$02
    db $fc
    ld d, [hl]
    db $fc
    ld a, a
    ccf
    ld e, a
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld b, b
    ccf
    ld d, b
    ccf
    jr nz, jr_01a_6b2e

    rra
    nop
    rst $38
    cp $fd
    cp $01
    cp $01
    cp $01
    cp $01
    cp $02
    db $fc
    db $fc
    nop
    ldh a, [c]
    ld l, l
    cp $61
    ld a, l
    jr c, jr_01a_6ba6

    jr jr_01a_6b4c

    inc e
    ld a, [de]
    inc b
    ld [de], a

jr_01a_6b2e:
    inc c
    inc c
    nop
    ld h, a
    sbc [hl]
    and a
    jr jr_01a_6b68

    inc c
    ld e, h
    jr nc, jr_01a_6af2

    ld [hl], b
    cp b
    ld [hl], b
    or b
    ld b, b
    ld h, b
    nop
    ccf
    rra
    ccf
    rra
    cpl
    rra
    jr c, jr_01a_6b68

    jr c, @+$21

    inc h

jr_01a_6b4c:
    rra
    db $10
    rrca
    rrca
    nop
    cp $fc
    cp $fc
    ld a, [$02fc]
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$08
    nop
    ldh a, [$ff60]
    ret


    ld [hl], b
    swap c
    dec sp

jr_01a_6b68:
    ld bc, $0304
    ld b, $01
    dec b
    ld [bc], a
    ld [bc], a
    nop
    inc l
    nop
    adc [hl]
    inc b
    jp nc, $d48c

    adc b
    ret c

    add b
    sub b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rla
    rrca
    inc e
    rrca
    inc e
    rrca
    ld a, [bc]
    rlca
    rlca
    nop
    ldh a, [rP1]

jr_01a_6b93:
    ld hl, sp-$10
    db $fc
    ld hl, sp-$0c
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    inc e
    ld [$0814], sp
    ld l, d

jr_01a_6ba6:
    inc b
    push de
    ld h, b
    sub e
    ld h, c
    db $e3
    ld bc, $0001
    nop
    nop
    add [hl]
    nop
    rrca
    ld b, $17
    ld c, $92
    inc c
    call z, Call_01a_4080
    add b
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    ld de, $2c0e
    rra
    inc l
    rra
    ld de, $0c0f
    inc bc
    inc bc
    nop
    jr nz, jr_01a_6b93

    ld e, b
    and b
    ld b, h
    cp b
    add d
    ld a, h

jr_01a_6bd9:
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ffe0], a
    nop
    add e
    ld a, h
    push de
    ld a, [hl+]
    ld l, e
    dec d
    scf
    rrca
    rrca
    rlca
    inc c
    inc bc
    ld b, $01
    inc bc
    nop
    adc d
    ld a, h
    ld d, h
    xor b
    xor h
    ret nc

    jr jr_01a_6bd9

    or h
    ret z

    ld d, d
    xor h
    and d
    ld e, h
    call c, RST_00
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    jr nc, jr_01a_6c0b

jr_01a_6c0b:
    ld a, h
    jr nc, @-$52

    ld a, b
    or d
    ld e, h
    nop
    nop
    ld [hl], h
    nop
    jp c, $ea74

    ld a, h
    db $f4
    jr jr_01a_6c70

    jr z, jr_01a_6c86

    db $10
    ld a, b
    nop
    nop
    nop
    nop
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
    jr jr_01a_6c38

    inc e
    nop
    ld a, $1c

jr_01a_6c35:
    ld a, a
    ld l, $7f

jr_01a_6c38:
    ld a, [bc]
    ld c, d
    inc [hl]
    add d
    ld a, h
    ld b, d
    db $fc

Call_01a_6c3f:
    add d
    db $fc
    nop
    nop
    nop
    nop
    ld hl, $5300
    ld hl, $0336
    ld b, $01
    ld [hl], e
    nop
    ret c

    ld h, b
    inc c
    nop
    sbc $04
    or d
    call c, $847a
    and [hl]
    ld b, b
    ldh [rP1], a
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
    ld bc, $1e00

jr_01a_6c70:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld e, [hl]
    jr c, jr_01a_6c35

    ld a, h
    ld e, l
    cp $00
    nop
    inc bc
    nop
    rlca

jr_01a_6c86:
    inc bc
    dec b
    inc bc
    ld b, h
    inc bc
    ldh [c], a
    ld b, c
    or c
    ld b, b
    sbc d
    ld h, c
    inc c
    nop
    sbc [hl]
    inc c
    call z, $a680

jr_01a_6c98:
    ret nz

    dec e
    ldh [c], a
    ld e, l
    and d
    dec sp
    call nz, $06f9
    rrca
    nop
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0700
    nop
    rrca
    rlca
    inc e
    nop
    and d
    inc e
    ld h, c
    sbc [hl]
    ld b, [hl]
    cp b
    sub d
    ld l, h
    cp h
    ld b, b

jr_01a_6cbd:
    ld [de], a
    db $ec
    and c
    ld e, [hl]
    ld b, $00
    add hl, bc
    ld b, $10
    rrca
    inc e
    inc bc
    ld [bc], a
    ld bc, $0102
    rlca
    ld [bc], a
    cpl
    rlca
    jr c, jr_01a_6cd3

jr_01a_6cd3:
    ld b, [hl]
    jr c, jr_01a_6c98

    inc a
    adc h
    ld [hl], b
    inc b
    ld hl, sp+$38
    ret nz

    ld b, h
    cp b
    ldh [c], a
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
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
    jr nz, jr_01a_6cbd

    sub b
    ldh [$ff90], a
    ldh [$ff5a], a
    inc h
    inc h
    nop
    ld c, $04
    ld [hl], e
    inc c
    xor l
    ld [hl], b
    jp hl


    ld d, b
    ld d, b
    nop
    nop
    nop
    and b
    ld b, b
    ld c, [hl]
    nop
    halt
    inc c
    cp h
    ld l, b
    add sp, -$10
    ld d, h
    add sp, -$58
    ld d, b
    ld a, b
    nop
    ld l, $1f
    ld e, [hl]
    ccf
    ld e, h
    ccf
    ld c, h
    ccf
    ld b, b
    ccf
    jr nz, jr_01a_6d4c

    jr jr_01a_6d36

    rlca
    nop
    ld [bc], a
    db $fc
    ld b, $f8
    inc b

jr_01a_6d36:
    ld hl, sp+$0c
    ldh a, [$ff98]
    ldh [rWave_0], a
    ret nz

    ldh [rP1], a
    add b
    nop
    db $f4
    ld l, b
    ldh a, [c]
    ld l, h
    adc d
    ld [hl], h
    swap h
    ld l, l
    db $10
    add hl, sp

jr_01a_6d4c:
    nop
    ld bc, $0000
    nop
    ld c, $00
    ld [hl], d
    inc c
    ldh [c], a
    ld a, h
    ld h, d
    db $fc

jr_01a_6d59:
    ld b, $f8
    ld c, h
    ldh a, [rWave_8]
    ret nz

    ldh [rP1], a
    ld a, [hl+]
    rra
    ld e, h
    ccf
    xor d
    ld a, a
    cp l
    ld a, [hl]
    cp h
    ld e, e
    pop bc
    ld a, $6a
    inc d
    inc a
    nop
    rst $28
    db $fc
    dec a
    ld a, [$bc42]
    inc d
    add sp, -$08
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld sp, $033e
    add hl, hl
    ld d, $53
    inc l
    ld e, [hl]
    ld hl, $2d52
    add hl, hl
    ld d, $1e
    nop
    and $18
    sub d
    ld l, h
    ld b, h
    cp b
    jr c, jr_01a_6d59

    ld b, b
    add b
    sbc b
    nop
    inc [hl]
    jr jr_01a_6db8

    nop
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    dec a
    ld a, a
    ld [hl], $fe
    ld e, b
    ld hl, sp+$60
    ldh [rP1], a
    db $fd
    add d
    jp $c080


    add b

jr_01a_6db7:
    add b

jr_01a_6db8:
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
    jr nz, jr_01a_6db7

    ld h, b
    ldh a, [$ff60]
    pop hl
    ld b, b
    ld h, e
    ld bc, $011b
    add hl, sp
    db $10

jr_01a_6dcf:
    stop
    jp c, $ec04

    ret nz

    sbc $0c
    cp [hl]
    inc e
    cp [hl]
    jr @-$42

    nop
    add b
    nop
    nop
    nop
    dec bc
    rlca
    ld [$0a07], sp
    rlca
    ld a, [bc]
    rlca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

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
    jr c, jr_01a_6e0b

jr_01a_6e0b:
    ld b, [hl]
    jr c, jr_01a_6dcf

    ld a, [hl]
    rst $20
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    ld a, l
    and [hl]
    ld a, c
    ld c, [hl]
    scf
    dec hl
    rla
    dec [hl]
    daa
    dec de
    dec de
    dec c
    dec c
    inc bc
    inc bc
    inc e
    ldh [rNR43], a
    call c, $be41
    ld b, c
    cp [hl]
    push hl
    ld a, [hl]
    ldh a, [c]
    ld a, h
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_71b4:
    nop
    nop

jr_01a_71b6:
    nop
    nop

jr_01a_71b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_71dc:
    nop
    nop

jr_01a_71de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_71e7:
    nop
    nop
    nop

jr_01a_71ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_71fb:
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
    jr nc, jr_01a_71b4

jr_01a_720c:
    jr nc, jr_01a_71b6

jr_01a_720e:
    jr nc, jr_01a_71b8

jr_01a_7210:
    jr nc, @+$01

jr_01a_7212:
    nop
    nop

jr_01a_7214:
    nop
    rst $38

jr_01a_7216:
    rst $38
    nop

jr_01a_7218:
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
    jr nc, jr_01a_71dc

    jr nc, jr_01a_71de

    jr nc, jr_01a_71e7

    jr nc, jr_01a_71ea

    jr nc, jr_01a_71fb

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
    rst $38
    nop
    rst $38
    rst $38
    nop
    dec d
    ld b, $15
    ld b, $15
    ld b, $f5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    xor b
    jr nc, jr_01a_720c

    jr nc, jr_01a_720e

    jr nc, jr_01a_7210

    jr nc, jr_01a_7212

    jr nc, jr_01a_7214

    jr nc, jr_01a_7216

    jr nc, jr_01a_7218

    jr nc, @+$17

    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $15
    ld b, $5f
    and b
    ld e, h
    rst $38
    ccf
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$ffd0], a
    ldh [$ff60], a
    ret nz

    ldh [$ffc0], a
    db $ed
    ld d, $cd
    or $bd
    or $cd
    halt
    ld l, l
    ld [hl], $5d
    ld [hl], $2d
    ld d, $2d
    ld d, $e0

jr_01a_72a2:
    ret nz

    ld h, b
    ret nc

    ld h, b
    ret c

    ldh a, [$ffef]
    jr jr_01a_72a2

    rst $38
    ld hl, sp-$4c
    ld a, a
    ld c, a
    rst $38
    dec l
    ld d, $2d
    ld d, [hl]
    dec l
    sub $4d
    or [hl]
    db $ed
    halt
    db $ed
    or $4d
    or $cd
    or $00
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec e
    inc bc
    ld [hl], a
    rrca
    cp a
    ld l, a
    rst $30
    ld l, a
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $28
    rst $18
    cp a
    rst $18
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ei
    push de
    ei
    db $fd
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp-$40
    cp $f0
    rst $38
    or $ef
    or $00
    nop
    rrca
    nop
    db $10
    rrca
    scf
    ld [$173f], sp
    ld a, a
    ld a, $7f
    ld b, $47
    ld a, [hl-]
    nop
    nop
    nop
    nop
    add b
    nop

jr_01a_7317:
    nop
    nop
    add b
    nop
    sbc $80
    rst $38
    sbc $ff
    cp $0f
    nop
    db $10
    rrca
    ld [hl], a
    ld [$57ff], sp
    ld a, a
    ld e, $9f
    ld l, [hl]
    ld l, a
    ld d, $9f
    ld l, a
    nop
    nop
    add b
    nop
    nop
    nop
    sbc [hl]
    nop
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    cp $fe
    db $fc
    nop
    nop
    ld bc, $0200
    ld bc, $0007
    rlca
    inc bc
    rrca
    rlca
    rla
    rrca
    rrca
    rlca
    nop
    nop
    ret nz

    nop
    jr nz, jr_01a_7317

    ldh [rP1], a
    ldh a, [$ffe0]
    ld a, [$fff0]
    add d
    rst $38
    ld a, [hl]
    inc bc
    nop
    inc b
    inc bc
    rrca
    nop
    rrca
    rlca
    ld a, a
    rlca
    rst $38

Jump_01a_736c:
    ld a, c
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, $fe00
    call c, $ecfe
    rst $38
    ldh [c], a
    rst $38
    cp $ff
    ld a, [hl]
    nop
    nop
    ld c, $00
    ld de, $2f0e
    db $10
    ccf
    rrca
    ld a, a
    ccf
    ld a, a
    cpl
    cp a
    ld l, a
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
    rst $18
    add d
    rst $38
    sbc $ff
    cp [hl]
    ld c, $00
    ld de, $3f0e
    nop
    ccf
    ld e, $7f
    dec a
    cp a
    ld l, l
    ld a, a

jr_01a_73ae:
    cpl
    cp a
    ld l, a
    jr nc, jr_01a_73b3

jr_01a_73b3:
    ld a, b
    jr nc, jr_01a_73ae

    ld [hl], b
    ld a, [$fff0]
    ldh a, [c]
    rst $38
    and $ff
    or $ff
    cp $ff
    ld l, a
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $18
    ld l, a
    or $6f
    or a
    ld l, a
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    or [hl]
    rst $18
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    rst $18
    ei
    push de
    ei
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    sub [hl]
    ei
    rst $38
    or $fd
    or $ff
    or $fd
    or $af
    or $fd
    or $bf
    or $eb
    or $ff
    ld b, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $5e
    ld hl, $0031
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $fe
    ld a, h
    db $fc
    jr c, jr_01a_7496

    add b
    add b
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $5f
    jr nz, jr_01a_7456

    db $10
    stop
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ld b, b
    ld h, b
    add b
    and b
    ld b, b
    ret nz

    nop
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    dec bc
    inc b
    ld b, $00
    rst $38
    cp $ff
    cp $ff

jr_01a_7456:
    cp $fe
    db $fc
    cp $e0
    db $fc
    ldh a, [$fff4]
    ld [$0008], sp
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $ff
    cp $fe
    db $fc
    db $fc
    ldh [$fff8], a
    ldh a, [$fff0]
    nop
    and b
    ld b, b
    ld b, b
    nop
    ld a, a
    cpl
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    cpl
    db $10
    jr jr_01a_7491

jr_01a_7491:
    rst $38
    ld a, [hl]
    rst $38
    cp $fe

jr_01a_7496:
    db $f4
    db $fc
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    ret nz

    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh [$fff0], a
    ret nz

    ldh [$ff80], a
    add b
    nop
    nop

jr_01a_74be:
    nop
    nop

jr_01a_74c0:
    nop
    reti


    ld l, a
    jp c, $f96f

    ld l, a
    db $db
    ld l, a
    push af
    ld l, a
    cp c
    ld l, a
    cp d
    ld l, a
    sub d
    ld l, a
    db $eb
    rst $18
    rst $20
    rst $18
    push af
    rst $18
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_01a_74be

    jr z, jr_01a_74c0

    ld d, a
    ei
    ld d, [hl]
    ei
    ld e, l
    ei
    inc d
    ei
    inc d
    ei
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    ld l, a
    or $ed
    or $6f
    or $df
    or $4b
    or $59
    or $1b
    or $8f
    or $00
    nop
    rrca
    nop
    db $10
    rrca
    scf
    ld [$173f], sp
    ld a, a
    ccf
    ld a, a
    ld [$778f], sp
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    sbc $80
    rst $38
    sbc $ff
    cp $00
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    scf
    ld [$173f], sp
    ld a, a
    ccf
    ld a, a
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    sbc [hl]
    nop
    rst $38
    sbc [hl]
    rst $38
    sbc $0f
    nop
    db $10
    rrca
    scf
    ld [$173f], sp
    ld a, a
    dec a
    ld a, a
    dec c
    adc a
    ld [hl], l
    ld a, a
    rrca
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    sbc $80
    rst $38
    sbc $ff
    cp $fe
    db $fc
    rrca
    nop
    ld [hl], b
    rrca
    rst $30
    ld c, b
    rst $38
    ld d, a
    ld a, a
    dec e
    sbc a
    ld l, l
    ld l, a
    dec d
    sbc a
    ld l, a
    nop
    nop
    add b
    nop
    ld e, $00
    cp a
    ld e, $fe
    cp h
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    ld b, d
    inc a
    xor c
    ld d, [hl]
    add b
    ld a, a
    sub b
    ld l, a
    ld b, e
    inc a
    ld hl, $1e1e
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
    add b
    nop
    nop

jr_01a_75ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_75ba:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ret nc

    ld l, a
    sbc d
    ld l, a
    ret nc

    ld l, a
    sub a
    ld l, b
    cp b
    ld b, a
    ret nz

    ccf
    jr nz, jr_01a_75ae

    sbc a
    ldh [$ff72], a
    rst $18
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_01a_75ba

    ld h, b
    rst $18
    jr nc, @-$0f

    rst $38
    nop
    ld l, $fb
    inc b
    ei
    db $fc

jr_01a_75e6:
    inc bc
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    jr jr_01a_75e6

    rst $38
    nop
    adc e
    or $19
    or $0b
    or $e9
    ld d, $1d
    ldh [c], a
    inc bc
    db $fc
    ld c, $fa
    ld hl, sp+$07
    ld a, a
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    nop
    cp $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    cp $7c
    db $fc
    cp b
    ld hl, sp-$80
    ret nz

    nop
    adc a
    ld [hl], a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf

jr_01a_762e:
    rrca
    rrca
    nop
    cp $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    cp $7c
    db $fc
    cp b
    ld hl, sp-$80
    ret nz

    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $be
    ld e, l
    rst $18
    jr nz, jr_01a_762e

    ld b, b
    ld b, b
    nop
    cp $f8
    cp $fc
    cp $7c
    cp $7c
    db $fc
    jr c, jr_01a_76d4

    add b
    add b
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $5f
    jr nz, jr_01a_7696

    db $10
    stop
    cp $f0
    cp $ec
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ld b, b
    ld h, b
    add b
    and b
    ld b, b
    ld b, b
    nop
    ld b, d
    inc a
    xor c
    ld d, [hl]
    add e
    ld a, h
    sub b
    ld l, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld hl, $1e1e
    nop
    nop
    nop
    nop
    nop
    add b

jr_01a_7696:
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
    nop
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
    add h
    ld a, b
    add d
    ld a, h
    ld bc, $01fe
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    ld a, b
    nop
    add h
    ld a, b
    add d
    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop

jr_01a_76d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    add h
    ld a, b
    add d
    ld a, h
    ret


    ld [hl], $a1
    ld e, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    ld a, b
    nop
    add [hl]
    ld a, b
    add c
    ld a, [hl]
    ret


    ld [hl], $a1
    ld e, [hl]
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    dec [hl]
    dec [hl]
    cp $fe
    or e
    or e
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $00
    ld b, a
    dec sp
    add d
    ld a, h
    add e
    ld a, l
    dec [hl]
    inc [hl]
    rst $38
    cp $b3
    or d
    ld a, a
    ld a, [hl]
    rst $20
    and $7f
    ld a, a
    call z, Call_01a_7fcc
    ld a, a
    ld bc, $01fe
    cp $83
    cp $83
    cp $c7
    cp $ff
    ld a, l
    cp $ba
    rst $38
    rst $00
    ld e, a
    and b
    ld e, h
    rst $38
    ccf
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$ffd0], a
    ldh [$ff60], a
    ret nz

    ldh [$ffc0], a
    db $ed
    ld d, $cd
    or $bd
    or $cd
    halt
    ld l, l
    ld [hl], $5d
    ld [hl], $2d
    ld d, $2d
    ld d, $e0

jr_01a_7752:
    ret nz

    ld h, b
    ret nc

    ld h, b
    ret c

    ldh a, [$ffef]
    jr jr_01a_7752

    rst $38
    ld hl, sp-$4c
    ld a, a
    ld c, a
    rst $38
    dec l
    ld d, $2d
    ld d, [hl]
    dec l
    sub $4d
    or [hl]
    db $ed
    halt
    db $ed
    or $4d
    or $cd
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    nop
    stop
    jr c, jr_01a_780b

jr_01a_780b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_781b

jr_01a_781b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_782b

jr_01a_782b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_783b

jr_01a_783b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_784b

jr_01a_784b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_785b

jr_01a_785b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_786b

jr_01a_786b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    stop
    jr c, jr_01a_787b

jr_01a_787b:
    stop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    inc h
    nop
    ld l, $00
    ld l, d
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    inc h
    nop
    ld l, $00
    ld l, d
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    inc h
    nop
    ld l, $00
    ld l, d
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    inc h
    nop
    ld l, $00
    ld l, d
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld h, $00
    ld a, [hl+]
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr jr_01a_7956

    scf
    ld [$1738], sp
    ld h, c
    ld a, $79
    ld b, $7d
    ld a, [hl-]
    nop
    nop
    nop
    nop
    add b

jr_01a_7956:
    nop

jr_01a_7957:
    nop
    nop
    add b
    nop
    ld e, [hl]
    add b
    daa
    sbc $31
    adc $0f
    nop
    jr jr_01a_7974

    ld [hl], a
    ld [$57b8], sp
    ld h, c
    ld e, $f1
    ld l, [hl]
    ld a, c
    ld d, $f1
    ld l, a
    nop
    nop
    add b

jr_01a_7974:
    nop
    nop
    nop
    sbc [hl]
    nop
    ld h, c
    sbc [hl]
    ld d, c
    cp [hl]
    ld h, c
    cp [hl]
    and d
    db $fc
    nop
    nop
    ld bc, $0300
    ld bc, $0007
    dec b
    inc bc
    ld a, [bc]
    rlca
    jr jr_01a_799e

    ld [$0007], sp
    nop
    ret nz

    nop
    jr nz, jr_01a_7957

    ldh [rP1], a
    sub b
    ldh [$ff0a], a
    ldh a, [$ff7d]

jr_01a_799e:
    add d
    add l
    ld a, [hl]
    inc bc
    nop
    ld b, $03
    rrca
    nop
    dec bc
    rlca
    ld a, h
    rlca
    add h
    ld a, e
    cp d
    ld a, l
    adc h
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, $2200
    call c, $ec12
    ld a, l
    add d
    add l
    ld a, [hl]
    ld a, c
    cp $00
    nop
    ld c, $00
    add hl, de
    ld c, $3f
    db $10
    jr nc, jr_01a_79da

    ld h, b
    ccf
    ld l, b
    scf
    add sp, $57
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d

jr_01a_79da:
    nop
    ld e, l
    add d
    dec l
    sbc $01
    cp $0e
    nop
    add hl, de
    ld c, $3f
    db $10
    ld sp, $610e
    ld a, $ea
    ld d, l
    ld a, c
    daa
    jp hl


    ld d, a
    nop
    nop
    ld [hl], b
    nop
    adc b
    ld [hl], b
    ld c, d
    ldh a, [$ff8d]
    ldh a, [c]
    adc l
    or $09
    or $09
    or $00
    nop
    rrca
    nop
    jr jr_01a_7a16

    scf
    ld [$1738], sp
    ld h, b
    ccf
    ld [hl], a
    ld [$77e9], sp
    nop
    nop
    nop
    nop
    add b

jr_01a_7a16:
    nop
    nop
    nop
    add b
    nop
    ld e, [hl]
    add b
    daa
    sbc $b1
    adc $00
    nop
    nop
    nop
    rrca
    nop
    jr jr_01a_7a38

    scf
    ld [$1738], sp
    ld h, b
    ccf
    ld [hl], a
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add b

jr_01a_7a38:
    nop
    nop
    nop
    sbc [hl]
    nop
    ld h, a
    sbc [hl]
    ld sp, $b8ce
    ld b, a
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    ld c, b
    ccf
    ld hl, $7f1e
    ld hl, $0031
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$39
    cp $41
    cp $02
    db $fc
    add h
    ld a, b
    ld hl, sp-$80
    add b
    nop
    ldh a, [$ff1f]
    or b
    ld a, a
    sub b
    ld a, a
    ld c, b
    ccf
    ld hl, $7f1e
    jr nz, @+$3a

    db $10
    stop
    ld [hl+], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$ffb0]
    ld b, b
    ldh [$ff80], a
    ldh [rLCDC], a
    ret nz

    nop
    inc d
    rrca
    inc l
    rra
    jr z, @+$21

    ld a, [hl+]
    dec e
    ld [de], a
    dec c
    ld c, $01
    rrca
    inc b
    ld b, $00
    ld a, c
    cp $e1
    cp $01
    cp $02
    db $fc
    ld e, $e0
    inc c
    ldh a, [$fffc]
    ld [$0008], sp
    ld b, h
    ccf
    ld b, b
    ccf
    jr nz, jr_01a_7ac6

    jr jr_01a_7ab0

    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_01a_7ab0:
    nop
    pop hl
    cp $01
    cp $02
    db $fc
    inc e
    ldh [$ff08], a
    ldh a, [$fff0]
    nop
    ldh [rLCDC], a
    ld b, b
    nop
    ld c, b
    scf
    adc h
    ld a, a
    add c

jr_01a_7ac6:
    ld a, a
    or b
    ld a, a
    ld e, b
    ccf
    jr nc, jr_01a_7adc

    ccf
    db $10
    jr jr_01a_7ad1

jr_01a_7ad1:
    ld a, c
    add [hl]
    push hl
    ld a, [$f806]
    inc b
    ld hl, sp+$08
    ldh a, [rWave_0]

jr_01a_7adc:
    ret nz

    ret nz

    nop
    nop
    nop
    call z, $803f
    ld a, a
    or b
    ld a, a
    ld e, b
    ccf
    ld [hl-], a
    rrca
    rrca
    nop
    ld c, $04
    inc b
    nop
    ld de, $02ee
    db $fc
    inc e
    ldh [rWave_0], a
    ret nz

    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    rrca
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    ld c, b
    ccf
    ld [hl+], a
    rra
    jr jr_01a_7b16

    rlca
    nop
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$39

jr_01a_7b16:
    cp $41
    cp $82
    ld a, h
    add h
    ld a, b
    ld hl, sp+$00
    ret nz

    nop
    jp hl


    ld [hl], a
    ldh a, [rIF]
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    ld c, d
    ccf
    jr nc, @+$11

    rrca
    nop
    add [hl]
    ld hl, sp+$39
    cp $41
    cp $01
    cp $82
    ld a, h
    add h
    ld a, b
    ld hl, sp+$00
    ret nz

    nop
    rrca
    nop
    jr jr_01a_7b54

    scf
    ld [$1738], sp
    ld h, d
    dec a
    ld [hl], d
    dec c
    ld [$7375], a
    rrca
    nop
    nop
    add b

jr_01a_7b54:
    nop
    nop
    nop
    add b
    nop
    ld e, [hl]
    add b
    daa
    sbc $31
    adc $02
    db $fc
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    ret


    ld a, $e3
    ld e, l
    rst $38
    jr nz, @-$5e

    ld b, b
    ld b, b
    nop
    ld h, $f8
    ld b, d
    db $fc
    ld b, e
    db $fc
    ld h, c
    cp $b1
    ld a, [hl]
    jp hl


    sbc [hl]
    sbc d
    inc b
    inc b
    nop
    rrca
    nop
    ld a, b
    rrca
    or a
    ld c, b
    cp b
    ld d, a
    ld h, d
    dec e
    ldh a, [c]
    ld l, l
    ld e, d
    dec [hl]
    di
    ld l, a
    nop
    nop
    add b
    nop
    ld e, $00
    and c
    ld e, $52
    cp h
    ld h, c
    cp [hl]
    and c
    ld a, [hl]
    ld b, d
    db $fc
    ldh a, [$ff1f]
    or b
    ld a, a
    sub b
    ld a, a
    ld c, b
    ccf
    ld hl, $7f1e
    jr nz, jr_01a_7be6

    db $10
    stop
    ld b, d
    db $fc
    ld [hl+], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$ffb0]
    ld b, b
    ldh [$ff80], a
    ldh [rLCDC], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7be6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01a_7fcc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
