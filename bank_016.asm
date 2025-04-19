; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld d, $00
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
    ld a, a
    ld a, $77
    ld a, $63
    ld a, $63
    ld a, $41
    ld a, $20
    rra
    jr nz, jr_016_4044

    inc h
    dec de
    ld a, [hl+]
    dec d
    ld a, [hl+]
    dec d
    dec de
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    add b
    nop
    ldh a, [rP1]
    adc h
    ld [hl], b

jr_016_4037:
    add d
    ld a, h
    add $7c
    xor e
    cp $57
    xor $f9
    sub [hl]
    rla
    ld a, [bc]
    ccf

jr_016_4044:
    nop
    ccf
    ld a, [de]
    ccf
    jr @+$81

    inc hl
    ccf
    jr @+$41

    rra
    rra
    nop
    ld a, [$fef4]
    sub b
    cp $b4
    db $fc
    sub b
    rst $38
    ldh [$fff1], a
    ld c, $fe
    or b
    ld hl, sp+$60
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
    jr nc, jr_016_4037

    add sp, $70
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_40bc

    nop
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld [hl], a
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
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
    nop
    nop
    nop
    ldh [rP1], a
    inc h
    dec de
    ld a, [hl+]
    dec d
    ld a, [hl+]
    dec d
    dec de
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    rrca
    nop
    rrca
    dec b
    adc h
    ld [hl], b
    add d
    ld a, h
    add $7c
    xor e
    cp $55
    xor $fb

jr_016_40bc:
    sub [hl]
    db $fd
    ld c, d
    rst $38
    ld e, b
    ccf
    jr jr_016_4143

    daa
    ld a, a
    add hl, de
    ccf
    ld e, $1f
    inc bc
    rrca
    nop
    rlca
    nop
    nop
    nop
    cp $94
    cp $70
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    ld sp, hl
    or [hl]
    cp $60
    ldh a, [$ff80]
    nop
    nop
    db $10
    db $10
    inc d
    inc d
    inc d
    inc d
    ld d, $16
    rla
    ld d, $1c
    rla

jr_016_40ed:
    ld de, $151f
    rra
    db $10
    db $10
    sub b
    sub b
    db $10
    db $10
    ld d, b
    ld d, b
    ldh a, [$ff50]
    jr c, jr_016_40ed

    inc [hl]
    ld hl, sp+$7c
    ld hl, sp+$35
    rra
    dec a
    rra
    dec a
    rra
    ccf
    rra
    dec a
    rra
    ccf
    rra
    dec a
    rra
    rra
    inc e
    ld a, [hl]
    db $fc
    ld a, d
    db $fc
    or $fc
    ld a, [$f2fc]
    ld a, h
    halt
    ld hl, sp-$03
    ldh a, [c]
    ld sp, hl
    or $1f
    rra
    rra
    ld e, $1e
    rra
    rra
    rrca
    cpl
    rra
    ccf
    rrca
    rra
    rrca
    rrca
    rrca
    cp $f0
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$04
    ldh a, [$fff6]
    add sp, -$12
    ldh a, [$fffc]
    ldh [$fff8], a
    ldh [rWave_e], a
    ld a, a

jr_016_4143:
    ld a, $3e
    ld a, $3e

jr_016_4147:
    ld a, $3e
    inc e
    ld a, $1c
    inc e
    ld [$001c], sp
    ld [$0000], sp
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_416a

    jr c, jr_016_417c

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_016_4147

    inc b
    ld hl, sp+$0c

jr_016_416a:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    dec hl
    ld e, $27
    dec e
    scf
    ld [$163f], sp
    rra
    inc b
    rrca

jr_016_417c:
    nop
    rra
    dec bc
    rra
    rlca
    xor d
    call c, Call_000_2cf2
    or $88
    cp $b4
    db $fd
    sub d
    ld sp, hl
    ld h, [hl]
    cp $88
    db $fc
    ret c

    inc a
    rlca
    ld a, c
    ld d, $7b
    dec b
    dec sp
    dec b
    add hl, de
    ld b, $0c
    rlca
    ld c, $07
    ld c, $07
    ld a, [hl]
    ret nc

    ccf
    call nz, Call_016_48bf
    cp [hl]
    ld b, b
    inc l
    ret nz

    ld h, b
    ret nz

    ldh [$ffc0], a
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
    ld a, [hl+]
    rra
    daa
    jr jr_016_4205

    rlca
    ccf
    dec d
    rra
    rlca
    rrca
    nop
    rra
    dec bc
    rra
    rlca
    xor d
    call c, $8c72
    cp $70
    cp $54
    cp $70
    ld sp, hl
    ld b, $fd
    adc d
    cp $d8
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

jr_016_4205:
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    rst $38
    ld h, b
    cp $05
    ld a, h
    dec bc
    ld a, c
    ld b, $1e
    db $e4
    inc a
    ret z

    ld e, [hl]
    or b

jr_016_4217:
    xor a
    halt
    ld e, l
    xor $ba
    call c, Call_000_18f6
    cp $a0
    cpl
    db $10
    rra
    dec c
    rra
    inc c
    ccf
    ld d, $3f
    dec de
    ld a, a
    ld hl, $087f
    rra
    ld [$ccf2], sp
    ld a, [$f4d4]
    ret z

    add sp, -$70
    ld hl, sp+$00
    db $e4
    ld e, b
    ldh a, [c]
    call z, $00ec
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

jr_016_4255:
    jr nz, jr_016_4217

    ret nc

    ldh [$ffe0], a
    nop
    or b
    ld b, b
    ld [hl], b
    add b
    ldh [rP1], a
    cpl
    dec d
    rra
    ld bc, $061f
    ccf
    ld d, $1e
    add hl, bc
    rrca

jr_016_426c:
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
    jr nz, jr_016_426c

    ld l, h
    ld sp, hl
    ld b, $f6
    nop
    ldh a, [rP1]
    jr c, jr_016_42a2

    ld a, $05
    ld a, l
    nop
    sbc l
    ld h, b
    ld l, h
    db $10
    jr jr_016_428d

jr_016_428d:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_016_4255

    ld [hl], b
    and b
    ldh a, [$ffc0]
    ld hl, sp+$00
    ld e, b
    jr nz, @-$4e

    ld b, b
    ldh [rP1], a
    inc bc

jr_016_42a2:
    db $10
    inc c
    inc hl
    jr c, jr_016_42d6

    dec [hl]
    ld a, a
    ld a, e
    ld e, [hl]
    db $eb
    ld [hl], h
    rst $10
    db $eb
    rst $18
    rst $20
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
    rst $38
    call nc, $e5df
    rst $10

jr_016_42d6:
    sbc h
    db $db
    sbc a
    di
    cp h
    or a
    ei
    pop af
    rst $38
    rst $28
    rst $38
    ldh a, [c]
    call z, $d4fa
    or $c8
    jp hl


    sub [hl]
    ldh a, [c]
    inc c
    db $fc
    ld h, b
    db $fc
    and b
    db $fc
    nop
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
    rst $38
    ei
    rst $38
    ld a, [$f7ff]
    cp $fd
    cp $fa
    db $fc
    ldh [$fff8], a
    ld a, [$6204]
    sbc h
    ld [hl], d

jr_016_4316:
    cp h
    db $fc
    ld [$c038], sp
    ret c

    jr nz, jr_016_4316

    nop
    jr nc, jr_016_4321

jr_016_4321:
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4336

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

jr_016_4336:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    nop
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
    ccf
    inc d
    rst $38
    dec b
    rra
    db $ec
    rst $38
    rst $20
    rst $28
    nop
    ccf
    ret


    rst $38
    sub $ff
    rlca
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    xor $90
    pop af
    ld c, $fe
    ld h, b
    db $fc
    and b
    db $fc
    add b
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
    cp $fb
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    ld a, [$6204]
    sbc h
    ld [hl], d

jr_016_4396:
    cp h
    db $fc
    ld [$c038], sp
    ret c

    jr nz, jr_016_4396

    nop
    jr nc, jr_016_43a1

jr_016_43a1:
    ccf
    dec d
    rst $38
    rlca
    rra
    add sp, -$01
    rst $20
    rst $28
    nop
    ccf
    ret


    rst $38
    sub $ff
    rlca
    ldh a, [c]
    ld c, h
    ld a, [$f454]
    ret z

    db $ec
    sub b
    ldh a, [c]
    inc c
    ld sp, hl
    ld h, [hl]
    cp $a0
    db $fc
    add b
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
    ldh a, [c]
    inc c
    ld [hl], d

jr_016_43d4:
    cp h
    ld a, [$3c0c]
    ret nz

    ret c

    jr nz, jr_016_43d4

    nop
    jr nc, jr_016_43df

jr_016_43df:
    nop
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
    jr jr_016_43fc

    jr nz, jr_016_4416

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_43fc:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    cp $1c
    ld a, $cc

jr_016_4405:
    ld c, $f4
    ld c, $f4
    ld d, $f8
    ld e, [hl]
    ld hl, sp-$42
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_4416:
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
    ldh a, [$ffac]
    ret nc

    ld e, [hl]

jr_016_4426:
    xor h
    cp $0c
    ld a, $d4
    db $fc
    jr nc, jr_016_4426

    nop
    ldh a, [rP1]
    dec de
    inc c
    jr jr_016_443c

    ccf
    nop
    ld d, $08
    inc c
    nop
    nop

jr_016_443c:
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, jr_016_4405

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
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    cp [hl]
    rst $38
    add b
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
    rst $38
    nop
    rra
    nop
    add d
    ld a, h
    ld b, h
    cp b
    xor b
    ld d, b
    db $fc
    ld [$10f8], sp
    ld hl, sp+$20
    ld hl, sp-$50
    ldh a, [$ff60]
    rrca
    nop
    rra
    nop

jr_016_44a5:
    inc d
    dec bc
    rrca
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ret nc

    jr nz, @+$22

    ret nz

    ret nc

    ldh [$ffe0], a
    nop
    sub b
    ld h, b
    ld hl, sp+$00
    ld [hl], b
    nop
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
    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a
    ccf
    ld a, d
    ccf
    ld a, h
    ccf
    ldh a, [rWave_0]

jr_016_44e3:
    jr nc, jr_016_44a5

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$7c
    ld hl, sp+$38
    rla
    ld [hl], a
    ld [$639c], sp
    ld c, e
    inc [hl]
    ccf
    ld [$001f], sp
    rrca
    nop
    rrca
    nop
    jr c, @-$2e

    ret c

    jr nz, jr_016_4576

    add b
    or b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$10
    ld hl, sp+$10
    ldh a, [rNR41]
    jr c, jr_016_451a

    ld e, h
    dec hl
    ld e, a
    inc h
    dec l
    inc de
    add hl, de

jr_016_451a:
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    jr c, jr_016_44e3

    ld a, h
    and b
    db $fc
    ld b, b
    ret c

    and b
    ldh a, [$ffc0]
    add b
    ret nz

    add b
    ret nz

    nop
    add b
    rlca
    nop

jr_016_4533:
    jr jr_016_453c

    jr nz, jr_016_4556

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_016_453c:
    ccf
    ld a, d
    ccf
    ld a, h
    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$7c
    ld hl, sp+$38
    rla
    daa
    jr @+$76

jr_016_4556:
    dec bc
    adc e
    ld [hl], h
    ld a, a
    ld [$001f], sp
    rrca
    nop
    ccf
    nop
    jr c, jr_016_4533

    ret z

    jr nc, jr_016_45b6

    and b
    or b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$10
    ld hl, sp+$00
    ld hl, sp+$20
    ld a, b
    rlca
    ld e, h
    dec hl
    cpl

jr_016_4576:
    inc d
    ld e, $01
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc a
    ret nz

    ld a, h
    and b
    add sp, $50
    ld [hl], b
    add b
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    inc [hl]
    rra
    jr z, @+$19

    rra
    nop
    inc h
    dec de
    ld c, a
    jr nc, jr_016_45db

    ld [$001f], sp
    rrca
    nop
    ld e, b
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_45c8

    ret nz

    ldh a, [rNR41]
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$00
    ccf
    nop
    ld e, h
    dec hl
    ld e, a

jr_016_45b6:
    inc h
    ld l, $11
    dec e
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld hl, sp+$00
    ld a, h
    and b
    db $fc
    ld b, b
    ld c, b

jr_016_45c8:
    or b
    ldh a, [$ff80]
    ld b, b
    add b
    add b
    nop
    add b
    nop
    rlca
    nop
    jr jr_016_45dc

    scf
    rrca
    cpl
    rra
    ld e, h
    ccf

jr_016_45db:
    ld e, b

jr_016_45dc:
    ccf
    ld e, b
    ccf
    ld e, b
    ccf
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    and b
    ret nz

    ld d, b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [$ffa0], a
    ld a, a
    pop de
    ld a, $e3
    inc e
    rst $18
    ld hl, $48f7
    rst $30
    dec hl
    rst $38
    ld [bc], a
    rst $38
    ld e, d
    sub b
    ld h, b
    or b
    ld h, b
    ld e, b
    ldh a, [$ffb8]
    ld [hl], b
    ret z

    or b
    add sp, -$30
    ld hl, sp+$40
    ld hl, sp-$30
    rra
    ld c, $3f
    add hl, de
    ccf
    ld d, $3f
    rla
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    sub b
    db $f4
    add sp, -$06
    inc b
    ld sp, hl
    sub $f6
    jr nz, jr_016_462c

jr_016_462c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld a, a
    pop de
    ld a, $e3
    inc e
    rst $38
    ld hl, $48f7
    rst $10
    ld a, [hl+]
    rst $38
    ld [bc], a
    nop
    nop
    sub b
    ld h, b

jr_016_4645:
    or b
    ld h, b
    ld e, b
    ldh a, [$ffa8]
    ld [hl], b
    ret c

    or b
    add sp, $50
    ld hl, sp-$40
    ccf
    ld d, $3f
    ld c, $3f
    add hl, de
    ccf
    ld d, $3f
    rla
    rra
    ld [$000f], sp
    rlca
    nop
    cp $94
    cp $70
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    ld sp, hl
    or [hl]
    cp $c0
    ldh a, [rP1]
    ldh a, [$ff80]
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
    jr nc, jr_016_4645

    add sp, $70
    ld [hl], b
    nop
    ld e, b
    jr nz, jr_016_46e4

    jr nz, jr_016_46ba

    db $10
    inc e
    nop
    inc bc
    nop
    ld c, $03

jr_016_4695:
    db $10
    rra
    ld a, [de]
    rrca
    dec sp
    ccf
    dec de
    ccf
    ccf
    ccf
    rra
    ccf
    ldh [$ff80], a
    jr jr_016_4695

    call nz, $9cf8
    ld hl, sp-$2a
    db $fc
    jp c, Jump_016_56fc

    db $fc
    jp nc, Jump_000_1ffc

    ccf
    rla
    ccf
    rra
    ccf
    rla
    ccf
    rla

jr_016_46ba:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld e, d
    db $fc
    ld e, [hl]
    ld hl, sp+$4e
    db $fc
    rst $08
    ld hl, sp-$33
    ld a, [$fc8a]
    xor h
    ld hl, sp-$50
    ld hl, sp+$3d
    ccf
    dec a
    ccf
    ccf
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
    or h
    ld hl, sp-$0e

jr_016_46e4:
    db $fc
    ld d, [hl]
    ld hl, sp-$2a
    ld hl, sp+$5c
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
    ld a, a
    rrca
    ccf
    ld b, b
    ld hl, sp-$40
    ld a, b

jr_016_4705:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_4728

    jr c, jr_016_473a

    dec l
    rra
    ld [hl], $1f
    dec hl
    dec e
    ldh [rP1], a
    jr jr_016_4705

    inc b
    ld hl, sp+$0c

jr_016_4728:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    call c, Call_000_2cfa
    daa
    jr @+$41

    inc bc
    ccf
    ld de, $061f
    rra

jr_016_473a:
    dec bc
    rrca
    inc b
    rrca
    ld b, $1f
    nop
    ld a, [$fee4]
    ldh a, [$fffe]
    call nz, $b0fe
    ld sp, hl
    and $f2
    inc c
    db $fc
    ld [hl], b
    db $fc
    jr nz, jr_016_4791

    inc de
    inc a
    rrca
    inc l
    rra
    ld [hl], $0f
    ccf
    inc de
    ccf
    inc e
    ccf
    rra
    inc a
    rra
    ld a, h
    add b
    ld e, $e8
    ld c, $f0
    ld e, $e0
    db $ec
    sub b
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [rWave_d]
    ld e, $3e
    dec e
    ccf
    inc e
    ccf

Call_016_4778:
    dec e
    dec a
    ld e, $1c
    rrca
    inc c
    inc bc
    inc bc
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

jr_016_4791:
    daa
    jr @+$41

    inc bc
    ccf
    ld de, $041f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$fee4]
    ldh a, [$fffe]
    call nz, Call_000_30fc
    inc e
    db $10
    ld a, [bc]
    inc b
    ld bc, $0506
    ld [bc], a
    rrca
    inc bc
    inc e
    rrca
    inc l
    rra
    ld [hl], $0f
    ccf
    inc de
    ccf
    inc e
    ccf
    rra
    inc a
    rra
    ld h, b
    add b
    db $10
    ldh [$ff08], a
    ldh a, [rNR32]
    ldh [$ffec], a
    sub b
    adc h
    ld [hl], b
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    dec a
    ld e, $3e
    dec e
    ccf
    inc e
    ccf
    dec e
    dec a
    ld e, $1c
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld c, $f0
    adc h
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$10f0], sp
    ldh [$ff60], a

jr_016_47ee:
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_4800

    jr nz, jr_016_481a

    jr nz, jr_016_481c

    ld d, b
    ccf
    ld [hl], h

jr_016_4800:
    ccf
    nop
    nop
    jr nz, jr_016_4805

jr_016_4805:
    ldh [rP1], a
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp+$70
    nop
    adc h
    ld [hl], b
    halt
    ld hl, sp+$7a
    ld a, h
    dec b

jr_016_481a:
    ld a, $01

jr_016_481c:
    ld a, $01
    ld e, $01
    ld e, $7a
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla

jr_016_4829:
    inc d
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_016_47ee

    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ffae]
    ret nc

    ld e, [hl]
    xor h
    cp $04
    inc a
    ret c

    db $fc
    jr z, @+$04

    inc e
    ld b, $18
    inc c
    jr nc, jr_016_4848

jr_016_4848:
    nop

jr_016_4849:
    nop
    nop

jr_016_484b:
    nop
    nop

jr_016_484d:
    nop
    nop

jr_016_484f:
    nop
    nop

jr_016_4851:
    ccf
    nop
    rrca
    nop
    dec de
    inc c
    jr jr_016_4860

    ccf
    nop
    ld d, $08
    inc c
    nop
    nop

jr_016_4860:
    nop
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rP1], a
    jr nz, jr_016_4829

    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    ld c, $00
    ld sp, $f00e
    ccf
    db $f4
    ld a, e
    cp $75
    cp $71
    ld a, [$f475]
    ld a, e
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_016_4849

    jr nz, jr_016_484b

    jr nz, jr_016_484d

    jr nz, jr_016_484f

    jr nz, jr_016_4851

    push af
    ld a, [hl]
    rst $18
    ld a, [hl]
    ld l, e
    ld a, $55
    ld l, $29
    ld d, $3d
    ld [bc], a
    ld c, b
    scf
    sbc a
    ld h, b
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    db $e3
    db $e3
    sbc h
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    db $e3
    sbc h
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b

jr_016_48bd:
    add b
    nop

Call_016_48bf:
    nop
    nop
    ccf
    nop
    ccf
    nop
    cpl
    db $10
    inc e
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $50
    ld hl, sp+$30
    ldh a, [rP1]
    jr nz, @-$3e

    ret nc

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop
    ld bc, $1501
    dec d
    rla
    rla
    ccf
    ccf
    ccf
    jr c, @+$3a

    daa
    jr nz, jr_016_490e

    dec h
    rra
    nop
    nop
    and b
    and b
    and b
    and b
    ldh a, [$fff0]
    ldh a, [rWave_0]
    jr nc, jr_016_48bd

    ld [$48f0], sp
    ldh a, [rRP]
    ccf
    ld l, a
    ccf
    ld [hl], l
    ccf
    ld l, d
    ccf
    jr nc, jr_016_492a

    ld l, e
    inc d
    sub h

jr_016_490e:
    ld l, e
    ld c, e
    inc [hl]
    call nc, $ecf8
    ld hl, sp+$5c
    ld hl, sp-$54
    ld hl, sp+$18
    ldh a, [$ffa8]
    ld d, b
    ld d, b
    and b
    or b
    ld b, b
    ccf
    ld [$103f], sp

jr_016_4925:
    ccf
    nop
    rra
    nop
    ld a, b

jr_016_492a:
    rlca
    ld e, h
    dec hl
    cpl
    inc d
    nop
    nop
    ldh a, [rNR41]
    ld hl, sp+$10
    ld hl, sp+$00
    ldh a, [rP1]
    inc a
    ret nz

    ld a, h
    and b
    add sp, $50
    nop
    nop
    ld e, $23
    ld a, [de]
    ccf
    ld a, [de]
    ccf
    ld [$91bf], sp
    rst $38

jr_016_494b:
    ld l, c
    rst $38
    dec e
    ld a, a
    rlca
    rra
    ldh a, [$ff88]
    sub b
    ld hl, sp-$70
    ld hl, sp+$00
    ld a, [$fe12]
    inc l
    cp $70
    db $fc
    ret nz

    ldh a, [$ffc0]
    nop
    jr nc, jr_016_4925

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
    dec bc
    ld a, [hl]
    ld bc, $7788
    ld a, a
    nop
    ccf
    db $10
    ccf
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr nc, jr_016_494b

    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$00
    scf
    ld [$0778], sp
    ld e, h
    dec hl
    cpl
    inc d
    ccf
    ld bc, $1f3f
    ccf
    rra
    ccf
    rra
    ret c

    jr nz, jr_016_49e0

    ret nz

    ld a, h
    and b
    add sp, $50
    ld hl, sp+$00

jr_016_49ab:
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$50
    rla
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
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld c, b
    scf
    sbc a
    ld l, b
    ld a, a
    db $10
    ccf

jr_016_49e0:
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr nc, jr_016_49ab

    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$00
    scf
    ld [$1738], sp
    ld e, a
    inc l
    ld l, a
    inc de
    ccf
    rlca
    ccf
    rra
    nop
    nop
    nop
    nop
    add sp, $10
    ld a, b
    and b
    ld hl, sp-$40
    ld hl, sp+$00
    cp b
    ld b, b
    ld hl, sp-$70
    nop
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
    rra
    inc c
    ccf
    dec e
    ld a, a
    dec a
    ld a, l
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_016_4a29

jr_016_4a29:
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
    sub b
    ld l, a
    ld h, b
    rra
    jr c, jr_016_4a44

    ld a, $11
    add hl, sp
    ld b, $72
    db $fc
    ld a, [de]

jr_016_4a44:
    db $fc

jr_016_4a45:
    ld [bc], a
    db $fc

jr_016_4a47:
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$0e

jr_016_4a4e:
    db $f4
    sbc [hl]
    ld h, h
    rra
    nop
    ccf
    ld a, [de]
    ld a, a
    add hl, de
    ld a, a
    inc l
    ld a, a
    ld [hl], $3f
    ld bc, $021f
    rra
    ld [bc], a
    cp $90
    db $f4
    ld l, b
    ld hl, sp-$40
    ret z

    jr nc, jr_016_4a4e

    ret c

    ld hl, sp-$80
    ldh [rP1], a
    ldh [rP1], a
    add hl, bc
    ld b, $09
    ld b, $1e
    dec c
    rrca
    ld bc, $000f
    rla
    ld [$011e], sp
    inc bc
    nop
    ldh a, [rP1]
    jr nz, jr_016_4a45

    jr nz, jr_016_4a47

    ret nc

    ldh [$ffe0], a
    nop
    ldh a, [rP1]
    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070c
    dec de
    ld c, $1d
    ld c, $37
    ld a, [de]
    dec hl
    inc d
    ld e, $00
    db $eb
    inc e
    cp $bd
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
    ld hl, sp+$5f
    ld h, $2f
    inc d
    rra
    inc c

jr_016_4ac7:
    rra
    inc bc
    ccf
    dec de
    rra
    dec c
    rrca
    nop
    rrca
    inc bc
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$ff5f], a
    ldh a, [rVBK]
    db $fc
    add e
    di
    ldh [$fff0], a
    nop
    ld c, b
    ldh a, [$ff28]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc
    rra
    inc c
    inc c
    inc bc
    ld e, $01
    daa
    add hl, de
    dec a
    nop
    ld bc, $0100
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    jr nc, jr_016_4ac7

    ld h, b
    ret nz

    ldh a, [$ff80]
    or b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    dec bc
    ld [$1b1c], sp
    jr nc, jr_016_4b56

    ld [hl-], a
    ccf
    ld a, l
    ld a, a
    ld a, a
    ld a, d
    rst $28
    db $fd
    rst $30
    ei
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    sub $7c
    ldh a, [c]
    adc h
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
    rst $28
    rst $30
    rst $38
    and $bf
    db $ed
    xor a
    rst $20
    ld [hl], a
    ldh a, [$ff73]
    pop af
    ld [hl], a
    ldh a, [c]
    ld a, a
    push af
    ld a, [$f6d4]
    ld c, b
    jp hl


jr_016_4b56:
    sub $f2
    adc h
    call z, $fe30
    ld b, b
    rst $38
    jr nz, @+$01

    add b
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
    ld e, e
    cp $5f
    ld hl, sp+$17
    pop af
    ld d, e
    db $fc
    xor c
    db $fc
    ld [hl], b
    ld hl, sp-$40
    ldh a, [$ffe1]
    ld e, $3a
    call c, $84fe
    sbc h
    ld h, b
    db $ec
    db $10
    db $fc
    nop
    jr jr_016_4b8f

jr_016_4b8f:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4ba6

    ld [hl-], a
    rra
    dec a
    rra
    ld l, a
    ld a, [hl-]
    ld c, a
    dec [hl]
    ld d, a
    dec hl
    rrca
    nop
    ld [hl], $0f
    ld e, h

jr_016_4ba6:
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, jr_016_4c2b

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    rst $18
    daa
    ld l, a
    sub [hl]
    rra
    db $ed
    ld a, a
    add a
    sub a
    ld h, b
    inc de
    pop hl
    rla
    ldh [c], a
    rra
    rst $20
    ld a, [$f4d4]
    ld c, b
    xor $d0
    pop af
    adc [hl]
    cp $30
    cp $40
    rst $38
    ldh [rIE], a
    add b
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
    ldh [rNR22], a
    pop hl
    inc de
    ldh [rNR11], a
    ldh [rNR10], a
    ldh [$ff60], a
    add b
    add b
    nop
    cp c
    ld e, [hl]
    cp $84
    sbc h
    ld h, b
    db $ec
    db $10
    db $fc
    nop
    jr jr_016_4bfd

jr_016_4bfd:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4c16

    ld [hl-], a
    rra
    dec a
    rra
    ld l, a
    ld a, [hl-]
    ld c, a
    dec [hl]
    ld d, a
    dec hl
    rrca
    nop
    ld [hl], $0f
    ld e, h

jr_016_4c16:
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
    rst $18
    inc h
    ld l, a
    sub l
    rra
    db $ec
    ld a, a
    add a
    sub a
    ld h, b

jr_016_4c2b:
    ld de, $17e0
    pop hl
    rra
    db $e4
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    ldh a, [c]
    inc c
    add hl, sp
    add $fe

jr_016_4c3e:
    jr nc, jr_016_4c3e

    ld d, b
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
    db $eb
    rra
    and $17
    ldh [rNR13], a
    pop hl
    rla
    ldh [rNR22], a
    ldh [c], a
    ld h, e
    add b
    add b
    nop
    cp $e0
    ldh [c], a
    inc e
    and d
    ld e, h
    ld [hl], h
    cp b
    db $fc
    nop
    sbc h
    ld h, b
    db $fc
    nop
    jr c, jr_016_4c71

jr_016_4c71:
    nop
    nop
    nop
    nop
    stop
    jr z, jr_016_4c89

jr_016_4c79:
    ld b, h
    jr c, @+$54

    inc a
    sbc l
    ld a, d
    cp e
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_016_4c89:
    db $10
    rrca
    db $10
    rrca
    jr z, @+$21

    cp b
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_4c79

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld c, $fc
    cp e
    ld [hl], c
    cp e
    ld [hl], c
    cp c
    ld [hl], b
    sbc b
    ld [hl], b
    ld c, h
    jr c, jr_016_4ce0

    ld [$000e], sp
    nop
    nop
    db $ed
    sbc a
    or $9f
    db $e4
    ld e, a
    di
    ld c, l
    ld a, a
    db $10
    ld a, a
    ld h, $3f
    inc d
    rra
    inc bc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, Call_000_28d6
    cp $84
    db $fc
    or b
    ld a, [$f194]
    xor $0f
    nop
    rrca
    inc bc
    rrca
    inc bc
    rra
    inc c
    rra
    nop
    ld l, $10
    inc a
    nop
    nop

jr_016_4ce0:
    nop
    cp $10
    ld hl, sp-$40

jr_016_4ce5:
    db $fc
    nop
    sbc b
    ld h, b
    add sp, $70
    ld hl, sp+$00
    ld c, h
    jr nc, jr_016_4d6c

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
    ld h, c
    ld e, $b9
    ld a, [hl]
    ld a, c
    cp $01
    nop
    ld [bc], a
    ld bc, $0103
    dec b
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    ld [bc], a
    nop
    rst $38
    ldh [$ffec], a
    add e
    sub b
    rrca
    jr z, jr_016_4d38

    dec [hl]
    rra
    ld [hl], e
    ccf
    ld l, l
    ld [hl], $57
    add hl, hl
    ret nz

    nop
    jr nc, jr_016_4ce5

    ld [$8cf0], sp
    ld hl, sp-$2c
    ld hl, sp-$02
    ld a, h
    xor [hl]
    ld a, h
    sub $bc
    ld e, a
    daa
    ld e, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ccf

jr_016_4d38:
    ld a, [bc]
    ccf
    rla
    ccf
    jr jr_016_4d5d

    ld a, [bc]
    rrca
    nop
    ldh a, [c]
    call z, Call_016_64fa
    db $fc
    add sp, -$04
    ld h, b
    ldh a, [c]
    call z, Call_000_36c9
    or $00
    ld hl, sp+$00
    ld [$1c07], sp
    rrca
    rra
    nop
    ld l, $10
    inc a
    nop
    nop
    nop

jr_016_4d5d:
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $10
    ldh [rBCPS], a
    ldh a, [$fff0]
    nop
    ldh a, [rP1]
    sbc b

jr_016_4d6c:
    ld h, b
    ld a, b
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
    jr z, jr_016_4d9a

    ld a, [hl-]
    rra
    dec a
    rra
    scf
    rra
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, [hl]
    db $fc
    or $fc
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [hl-]
    dec b
    daa
    jr jr_016_4dac

jr_016_4d9a:
    dec c
    rrca
    nop
    rlca
    nop
    rlca
    nop
    xor h
    ld hl, sp+$57
    jp hl


    cpl
    rst $10
    ld a, a
    add h
    rra
    db $eb
    rst $38

jr_016_4dac:
    dec e
    rst $38
    ld a, [bc]
    rst $38
    rlca
    nop
    nop
    nop
    add b
    add b
    ldh a, [rNR10]
    db $fc
    adc h
    ld a, [hl]
    ld b, $ff
    and [hl]
    rst $30
    ld h, e
    rst $30
    ret c

    rst $00
    ld a, a
    ld a, a
    rra
    rra
    rrca
    inc bc
    rrca
    nop
    add hl, de
    ld b, $1f
    nop
    rrca
    nop
    di
    ld a, a
    adc $ff
    db $fc
    cp $e1
    ld sp, hl
    add $07
    ret nz

    nop
    add b
    nop
    nop
    nop
    inc c
    adc h
    jr z, jr_016_4e11

    ld c, b
    ld l, h
    sub b
    ret c

    nop
    stop
    jr nz, jr_016_4dee

jr_016_4dee:
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, [de]
    rlca
    dec l
    rra
    add hl, sp
    rra
    ld h, a
    ld a, [hl-]
    ld l, a
    ld sp, $2e5f
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld l, b
    ldh a, [$ffd8]
    or b
    xor h
    ld e, b
    db $fc
    ld [$e8f4], sp

jr_016_4e11:
    nop
    inc bc
    ld b, $0e
    jr jr_016_4e56

    inc h
    ld a, a
    ld l, c
    ld a, a
    ld e, c
    rst $38
    reti


    rst $38
    call c, $dfff
    ld a, [hl+]
    ld a, a
    ld c, $ff
    ld hl, $8fff
    rst $28
    rst $10
    sbc a
    add b
    cp h
    sbc e
    rst $38
    db $ec
    db $f4
    xor b
    db $fc
    ldh [$fffc], a
    ld [$e0fc], sp
    add sp, -$30
    db $e4
    jr jr_016_4e70

    call z, $20fe
    rst $18
    rst $38
    ld c, a
    rst $38
    ld h, e
    ld a, a
    jr nc, jr_016_4ec8

    jr jr_016_4e87

    ld b, $1f
    ld bc, $0003
    nop
    inc bc
    db $fd
    push hl
    ei
    db $fc

jr_016_4e56:
    rst $38
    ld a, a
    rst $38
    rrca
    nop
    rra
    inc bc
    rst $08
    ret nz

    inc bc
    nop
    ldh a, [$ffc0]
    ldh a, [$ffa0]
    ldh [rP1], a
    ret nz

    ldh a, [rLCDC]
    add b
    ret nz

    nop
    ret nz

    nop
    add b

jr_016_4e70:
    nop
    inc bc
    ld bc, $0307
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    nop
    ld a, [bc]
    dec b
    dec bc
    inc b
    ret nz

    rst $38
    pop bc
    cp $82
    db $fd

jr_016_4e87:
    add l
    ei
    ld a, [$f707]
    adc h
    rst $20
    ld e, b
    rst $38
    add d
    ldh a, [rNR41]
    ldh [rLCDC], a
    ldh a, [$ff80]
    ld a, b
    or b
    add sp, $70
    ret nc

    ldh [$ffa0], a
    ret nz

    ret nz

    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4eb6

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    jr z, jr_016_4f0f

    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_4eb6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_4ec8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_4f0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $e3
    ld b, b
    db $fc
    ld h, e
    db $fc
    ld [hl], a
    ld a, [hl]
    dec sp
    ccf
    dec e
    ccf
    ld c, $2f
    rla
    nop
    nop
    ldh [rP1], a
    add hl, de
    ldh [rTAC], a
    ld sp, hl
    adc a
    ei
    ld e, a
    rst $30
    cp a
    adc $fe
    inc c
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
    daa
    dec de
    ccf
    dec b
    ccf
    ld d, $1f
    dec b
    rla
    add hl, bc
    rrca
    nop
    rrca
    dec b
    rrca
    inc bc
    cp $50
    cp $58
    cp $a4
    db $fc
    ldh a, [$fffc]
    ldh a, [$fff2]
    db $ec
    ld sp, hl
    ld b, $fe
    and b
    rrca
    nop
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    ld hl, sp+$70
    ld hl, sp-$80
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_50ac

    nop
    nop
    nop
    nop
    nop

jr_016_5075:
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
    inc bc
    nop
    inc c
    inc bc
    db $f4
    rrca
    cp $f3
    rst $38
    ld a, h
    ld a, a
    rra
    ccf
    rlca
    daa
    add hl, de
    ldh [rP1], a
    jr jr_016_5075

    inc b
    ld hl, sp-$73
    ld hl, sp+$57
    ld sp, hl
    rst $28
    rla
    rst $38
    xor a
    rst $38
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

jr_016_50ac:
    ret nz

    ret nz

    nop
    nop
    nop
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rla
    dec bc
    rrca
    nop
    rrca
    ld b, $0f
    inc b
    rrca
    inc bc
    cp $50
    cp $f8
    db $fc
    ld hl, sp-$04
    ld [hl], b
    db $fc
    nop
    ld a, d
    or h
    db $fd
    ld l, d
    cp $d8
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    rlca
    nop
    dec bc
    inc b
    ld d, $08
    inc e
    nop
    ld hl, sp+$00
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ldh a, [rP1]
    ld [hl], b
    nop
    ld e, b
    jr nz, jr_016_511a

    db $10
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
    ccf
    nop
    ld [hl], $1f
    ld e, $0c
    cp $0c
    ld e, $ec
    cp $04
    rst $38

jr_016_511a:
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
    inc h
    rra
    inc hl
    dec e
    scf
    ld a, [bc]
    ccf
    ld bc, $163f
    rla
    dec bc
    rra
    nop
    rrca
    dec b
    cp $30
    cp $34
    cp $34

jr_016_5147:
    cp $b0
    cp $a4
    db $fc
    and b
    ldh a, [c]
    inc c
    ld sp, hl
    sub $0f
    inc bc
    rlca
    nop
    inc b
    inc bc
    ld c, $07

jr_016_5159:
    rlca
    ld bc, $000f
    inc de
    inc c
    ld e, $00
    cp $b8
    db $fc
    ld e, b
    jr jr_016_5147

    jr z, jr_016_5159

    ldh a, [rLCDC]
    ld hl, sp+$00
    ld c, h
    jr nc, jr_016_51ac

    nop
    ld a, $00
    ccf
    ld e, $1f
    rlca
    rla
    add hl, bc
    add hl, de
    ld c, $38
    rra
    dec l
    ld e, $37
    add hl, de
    nop
    nop
    pop hl
    nop
    rst $38
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
    ccf
    rlca
    ld a, a
    ld e, $7f
    add hl, sp
    ccf
    ld bc, $163f
    rla

jr_016_51ac:
    dec bc
    rra
    nop
    rrca
    dec b
    rst $38
    sbc c
    rst $38
    ld a, h
    cp $7c

jr_016_51b7:
    cp $b8
    cp $84
    db $fc
    ret nc

    ldh a, [c]
    inc c
    ld sp, hl
    sub $f8
    ldh [$fffc], a
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
    cp $00
    rra
    ld b, $07
    ld bc, $0001
    nop
    nop
    rlca
    nop
    adc b
    rlca
    ret c

    adc a

jr_016_51e9:
    ldh a, [c]
    rst $18
    db $fd
    ld e, a
    halt
    ccf
    ld l, e
    ld a, $00
    nop
    ret nz

    nop
    jr nc, jr_016_51b7

    jr jr_016_51e9

    xor h
    ld hl, sp-$24
    ld a, b
    or $2c
    ld [$47d4], a
    dec a
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    rra
    nop
    daa

jr_016_520e:
    dec de
    ld c, a
    ld [hl-], a
    ld a, [$f4e4]

jr_016_5214:
    jr z, jr_016_520e

    and b
    ld hl, sp+$30
    db $fc
    add sp, -$02
    ld [$46bf], sp
    rst $38
    sbc d
    ld a, a
    ld bc, $003f
    dec a
    inc bc
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $f8
    rst $38
    nop
    ld l, a
    sub b
    rst $38
    nop

jr_016_5239:
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    rlca
    nop
    db $e3
    pop hl
    add hl, de
    jr jr_016_5250

    ld b, $71
    ld [hl], c
    ld [$0008], sp

jr_016_5250:
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ld [hl], b
    jr nz, jr_016_5214

    sub b
    ld a, h
    ld e, b
    inc a
    jr z, @+$20

    inc c
    ld c, $04
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_526b:
    ld [hl-], a
    rra
    dec a
    rra
    halt
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_5239

    jr jr_016_526b

    xor h
    ld hl, sp-$24
    ld a, b
    or $2c
    ld l, e
    ld a, $47
    dec a
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    ccf
    ld bc, $3a45
    inc hl

jr_016_5290:
    dec e
    ld [$fad4], a
    db $e4
    db $f4
    jr z, jr_016_5290

    and b
    db $fc

jr_016_529a:
    jr nc, jr_016_529a

    db $ec
    cp $1c
    db $fc
    ld [hl], b
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    ld bc, $1f21
    ld de, $0e0e
    nop
    nop
    nop
    ldh a, [$ff80]
    db $ec
    nop
    sub $68
    ld l, a
    sub b
    rst $28
    db $10
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    sbc b
    add b
    sbc b
    add b
    ld e, h
    ld c, b
    ld c, h
    ld b, b
    ld l, $24
    ld l, $24
    rla
    ld [de], a
    rla
    ld [de], a
    nop
    nop
    rlca
    nop
    ld [$1807], sp
    rrca
    ld [hl-], a
    rra
    dec a
    rra
    halt
    ccf
    ld l, e
    ld a, $5c
    ld c, b
    inc a
    jr z, @+$40

    inc l
    ld l, $24
    adc $04
    ld a, $c4
    ld e, $f4
    xor a
    ld a, [$3d47]
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    dec sp
    inc b
    ld b, a
    ld a, [hl-]
    ld a, a
    ld bc, $7adf
    rst $30
    inc l
    db $eb
    call nc, $e4fb
    rst $30
    ld a, [hl+]
    rst $38
    and b
    rst $38
    ld [hl], $ff
    ldh [c], a
    rst $38
    nop
    ld a, a
    ld bc, $0739
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $1c
    cp $fc
    db $fc
    nop
    or $48
    ld l, a
    sub b
    rst $28
    db $10
    rst $38
    nop
    ld a, [hl]
    nop
    ld b, a
    dec a
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    rra
    nop
    daa
    dec de

jr_016_533f:
    ld c, a
    ld [hl-], a
    ld a, [$f4e4]
    jr z, jr_016_533f

    and b
    ei
    ld sp, $e3f7
    rst $28
    ld b, $be
    ld c, h
    db $fc
    sub b
    nop

jr_016_5352:
    nop
    rlca
    nop
    rra
    ld b, $7e
    jr jr_016_5352

    ld h, b
    ldh [$ffc0], a
    ret nz

    add b
    add b
    nop
    ld hl, sp+$00
    cp $c0
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
    ld a, a
    ld bc, $003f
    dec a
    inc bc
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $f8
    rst $38
    nop
    ld l, a
    sub b
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop

jr_016_538e:
    nop
    nop
    nop
    nop
    nop
    jr c, jr_016_53cd

    ld b, b
    ld b, b
    rra
    nop
    ld a, a
    rra
    rst $38
    ld h, b
    ldh [$ff80], a
    add b
    nop
    jr nc, jr_016_53d3

    ld [$6008], sp
    ld h, b
    sbc b
    jr jr_016_538e

    add h
    ld hl, sp+$00
    inc e
    nop
    ld b, $00
    ld [hl], b
    nop
    inc e
    nop
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
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
    ldh a, [$ff60]

jr_016_53cd:
    ld [hl], b
    jr nz, jr_016_5448

    jr nc, @+$3a

    db $10

jr_016_53d3:
    ccf
    jr jr_016_53f2

    dec bc
    ld e, $0d
    ld a, $15
    ccf
    ld d, $7f
    ld [hl], $67
    dec sp
    ld b, a
    ld a, [hl-]
    ld c, a
    ld sp, $285f
    cpl
    inc de
    rla
    dec bc
    rra
    ld bc, $1a27
    ld c, a
    jr nc, jr_016_53f2

jr_016_53f2:
    nop
    ld [$fa54], a
    ld h, h
    db $f4
    xor b
    ld hl, sp-$60
    ld hl, sp+$50
    ldh a, [$ff60]
    ld hl, sp+$30
    ld a, a
    nop
    ccf
    nop
    ccf
    ld bc, $1f21
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ffa0]
    ldh [$ff80], a
    db $ec
    nop
    or [hl]
    add sp, $6f
    sub b
    rst $28
    db $10
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    ld c, $04
    inc e
    ld [$1038], sp
    ld a, b
    jr nc, jr_016_54a2

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
    rlca

jr_016_5444:
    nop
    add hl, bc
    ld b, $19

jr_016_5448:
    ld c, $33
    dec e
    ccf
    dec e
    ld [hl], a
    dec a
    ld l, a
    dec sp
    ld [hl], b
    jr nz, jr_016_5444

    ld h, b
    ldh [rLCDC], a
    ldh [$ffc0], a
    ldh a, [$ff80]
    ret c

    or b
    db $ec
    cp b
    call c, Call_016_4778
    dec sp
    ld c, a
    ld [hl-], a
    ld e, a
    add hl, hl
    cpl

jr_016_5468:
    db $10
    rla
    dec bc
    rra
    inc bc
    daa
    ld a, [de]
    ld c, a
    jr nc, jr_016_5468

jr_016_5472:
    inc l
    ld [$fa54], a
    ld h, h
    db $f4
    jr z, jr_016_5472

    and b
    ld hl, sp-$50
    ldh a, [rLCDC]
    ldh a, [$ff60]
    ld a, a
    nop
    ccf
    nop
    ccf
    ld bc, $1f21
    ld de, $0e0e
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ffa0]
    ldh [$ff80], a
    db $ec
    nop

jr_016_5497:
    or [hl]
    add sp, $6f
    sub b
    rst $28
    db $10
    rst $38
    nop
    ld a, [hl]
    nop
    nop

jr_016_54a2:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_54ba

    inc [hl]
    rra
    ld a, [hl-]
    rra
    dec [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_016_5497

    inc b
    ld hl, sp+$04

jr_016_54ba:
    ld hl, sp-$76
    db $fc
    or [hl]

jr_016_54be:
    db $fc
    ld e, [hl]
    cp h
    daa
    ld a, [de]
    cpl

jr_016_54c4:
    ld de, $051f
    rra
    dec b
    rrca
    inc bc
    rrca
    nop
    ld e, $0d
    ccf
    jr jr_016_54c4

    ld c, h
    ld a, [$fe24]
    ld l, b
    db $fc
    jr nz, jr_016_54be

    ret c

    call c, $2220
    call c, $00fc
    ccf
    db $10
    ccf
    inc e
    ld e, $0d
    ld c, $03
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    rst $38
    adc h
    ld a, a
    add [hl]
    ld d, $e0
    add sp, $70
    ld [hl], b

Call_016_54fa:
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_553c

    nop
    ccf
    inc e
    rra
    inc c
    inc c
    inc bc
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    rst $38
    adc h
    ld a, a
    add [hl]
    ld d, $e0

jr_016_5517:
    add sp, $70
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_555c

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
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_016_5517

    inc b
    ld hl, sp-$74
    ld hl, sp+$56

jr_016_553c:
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    daa
    ld a, [de]
    ccf
    rlca
    ccf
    db $10
    ccf
    rlca
    ld a, a
    inc sp
    ei
    ld [hl], h
    db $fc
    ld d, e
    rst $38
    ld d, b
    ld a, [$fef4]
    ldh a, [$fffe]
    add h
    db $fc
    ldh a, [$fff4]
    ld l, b
    db $ec

jr_016_555c:
    db $10
    ld [de], a
    db $ec
    db $fc
    nop
    ld a, a
    db $10
    scf
    nop
    ld b, $01

jr_016_5567:
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
    adc h
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_55bc

    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5567

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cd2
    ld h, b
    ld h, b
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    jr c, jr_016_55d7

    jr jr_016_55b9

    daa
    ld a, [de]
    ccf
    rlca
    ccf
    nop
    ccf
    dec de
    ld a, a
    dec hl
    rst $38
    ld l, b
    db $fc
    ld e, e
    ld a, a
    jr jr_016_55d1

    nop
    rlca
    nop
    ld b, $01

jr_016_55b7:
    ld c, $07

jr_016_55b9:
    rlca
    nop
    rrca

jr_016_55bc:
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
    rra
    dec sp
    dec e
    scf
    ld a, [de]

jr_016_55d1:
    nop
    nop
    ldh [rP1], a
    jr jr_016_55b7

jr_016_55d7:
    inc b
    ld hl, sp+$4c
    ld hl, sp-$2a
    cp h
    ld [$f65c], a
    db $ec
    cpl
    ld d, $3f
    nop
    ccf
    rla
    ccf
    rlca
    rla
    dec bc
    rrca
    nop
    inc c
    inc bc
    rra
    ld [$b4fa], sp
    cp $80
    cp $f4
    cp $70
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    add hl, de
    and $fe
    ld [$183f], sp
    ccf
    db $10
    ld e, $01
    ld c, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    cp $8c
    ld a, [hl]
    add h
    inc a
    ret nz

    add sp, $70

jr_016_5619:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_016_564e

    inc [hl]
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5619

    inc b
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld d, $fc
    ld a, $1f
    dec hl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    scf
    ld [$173f], sp
    rra

jr_016_564e:
    nop
    rra
    dec bc
    cp [hl]
    db $fc
    jp c, $b6fc

    call c, Call_000_2cf2
    cp $f0
    cp $f4
    cp $80
    db $fd
    ld [$081f], a
    rra
    inc c
    ld e, $0d
    rrca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    nop
    nop
    cp $08
    ld a, h
    sbc b
    cp h
    ld e, b
    ld a, b
    nop

jr_016_5679:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_569c

    jr c, jr_016_56ae

    dec l
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5679

    inc b
    ld hl, sp+$0c

jr_016_569c:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    ld [hl], $1f
    cpl
    rra
    inc h
    rra
    inc hl
    dec e
    scf
    ld [$173f], sp
    rra

jr_016_56ae:
    nop
    rra
    dec bc
    or [hl]
    db $fc
    jp c, $a2fc

    call c, Call_000_2cf2
    cp $f0
    cp $f4
    cp $80
    db $fd
    ld [$081f], a
    ld e, $0d
    rra
    inc c
    ld c, $03
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    cp $08
    cp h
    ld e, b
    ld a, h
    sbc b
    ld hl, sp+$60

jr_016_56d9:
    ldh a, [rP1]
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_571c

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
    jr jr_016_56fc

    inc a
    rra
    ld a, [hl+]
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_56d9

    inc b
    ld hl, sp+$0c

Jump_016_56fc:
jr_016_56fc:
    ld hl, sp+$0e
    db $fc
    sub [hl]
    db $fc
    scf
    rra
    dec hl
    rra
    inc hl
    dec e
    scf
    ld a, [bc]
    ccf
    db $10
    rra
    ld b, $0f
    inc b
    rrca
    inc bc
    ld l, [hl]
    db $fc
    or [hl]
    call c, $1ce2
    or $e8
    cp $94
    db $fc

jr_016_571c:
    or b
    cp $90
    ld sp, hl
    and $3f
    inc c
    ld a, a
    ld [hl+], a
    daa
    add hl, de
    ld [hl+], a
    dec e
    rla
    ld [$001e], sp
    inc c
    nop
    nop
    nop
    cp $18
    ld a, a
    and d
    ld [hl], d
    call z, $dc22
    db $ec
    db $10

jr_016_573b:
    inc a
    nop
    jr jr_016_573f

jr_016_573f:
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
    inc [hl]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_573b

    inc b
    ld hl, sp+$04
    ld hl, sp+$16
    db $fc
    ld a, $1f
    dec sp
    rra
    inc [hl]
    rra
    inc hl
    dec e
    scf
    ld [$173f], sp
    rra
    nop
    rrca
    inc bc
    cp [hl]
    db $fc
    jp c, $b6fc

    call c, Call_000_2cf2

jr_016_5779:
    cp $f0
    cp $f4
    cp $80
    ld sp, hl
    and $00
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
    ld e, $00
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5779

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, $1d23
    daa
    ld a, [de]
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rla
    dec bc
    rrca
    nop
    inc c
    inc bc
    ldh a, [c]
    inc l
    ld a, [$fef4]
    sub b
    cp $b4
    db $fc
    sub b
    db $f4
    add sp, -$06
    inc b
    add hl, de
    and $1f
    ld [$003f], sp
    ld h, [hl]
    add hl, de
    ld a, [hl+]
    dec d
    rra
    nop
    ld e, $00
    inc c
    nop
    nop
    nop
    cp $08
    cp $80
    inc sp
    call z, $d02e
    db $fc
    nop
    inc a
    nop
    jr jr_016_57df

jr_016_57df:
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
    inc [hl]
    rra
    inc hl
    dec e
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
    daa
    ld a, [de]
    ccf
    ld b, $3f
    db $10
    rra
    rlca
    rrca
    inc bc
    ld a, a
    ld [$73fc], sp
    rst $38
    ld h, b
    ld a, [$fef4]
    or b
    cp $84
    cp $f0
    db $f4
    ld l, b
    ld a, [$3904]
    sub $fe
    ld [$016f], sp
    ld c, $01
    inc c
    inc bc
    dec e
    ld c, $0e
    nop
    ld e, $00
    ld h, $18
    inc a
    nop
    db $fc
    ld [$18fc], sp
    ld a, h
    sbc b
    ret c

    ldh [$fff0], a
    nop
    ldh a, [rP1]
    sbc b
    ld h, b
    ld a, b
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_584e

    jr nc, @+$21

    ld l, c
    ccf
    ld a, d
    ccf
    push de

jr_016_584e:
    ld a, [hl]
    cp a
    ld l, c
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rWave_8], a
    ldh a, [$ff58]
    ldh a, [$ffbc]
    ld hl, sp-$2c
    ld a, b
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
    cp a
    ld b, a
    ld a, a
    dec d
    ld a, a
    inc b
    cp a
    rra
    rst $18
    adc e
    rst $38
    add b
    ld hl, sp-$29
    rst $38
    ld h, b
    db $e4
    sbc b
    db $f4
    ret z

    ld hl, sp+$50
    cp $c0
    reti


    and [hl]
    or d
    ld c, h
    cp $20
    rst $38
    ld e, $7f
    ld [bc], a
    inc e
    inc bc
    ld [$1f07], sp
    inc c
    rrca
    nop
    dec bc
    inc b
    ld d, $08
    inc e
    nop
    rst $38
    ld b, $e6
    nop
    ld d, b
    and b
    or b
    ld h, b
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    nop
    nop
    cp a
    ld l, c
    cp a
    ld b, a
    ld a, a
    dec d
    ld a, a
    inc b
    ccf
    rra
    rra
    dec bc
    ccf
    nop
    ld [hl], b
    cpl
    call nc, $e478
    sbc b
    db $f4
    ret z

    db $fc
    ld d, b
    ldh a, [c]
    call z, $98e4
    cp b
    ld b, b
    ld hl, sp+$10
    ld bc, $0300
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
    ld b, b
    db $fd
    jp nz, $81ce

    add e
    ld bc, $0003
    inc b
    inc bc
    rlca
    nop
    nop

jr_016_58f0:
    nop
    db $fc
    jr jr_016_58f0

jr_016_58f4:
    jr jr_016_58f4

    nop
    ld l, [hl]
    or b
    db $fc
    nop
    ret z

    nop
    add b
    nop
    nop
    nop

jr_016_5901:
    nop
    nop
    nop
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
    jr jr_016_5901

    db $10
    rrca
    jr jr_016_5934

    ld a, [hl-]
    rra
    dec [hl]
    rra
    dec sp
    dec e
    scf
    ld a, [de]
    daa
    add hl, de
    cpl
    rla
    inc b
    ld hl, sp+$0c

jr_016_5934:
    ld hl, sp-$61
    db $fc
    ld [hl], a
    db $fc
    ld e, e
    cp h
    di
    ld c, h
    cp $f1
    cp $f5
    ld [hl], b
    nop
    add sp, $10
    sbc h
    ld h, b
    xor $10
    ldh [c], a
    inc e
    db $fc
    nop
    db $f4
    ld [$00f8], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $137f
    rst $38
    ld a, b
    ld hl, sp+$60
    ld h, b
    nop

jr_016_596b:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [de], a
    rst $30
    jp hl


    rst $38
    inc bc
    rra
    ld c, $1e
    inc c
    inc c
    nop
    nop
    nop
    nop

jr_016_5980:
    nop
    ldh a, [rP1]
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
    inc b
    ld hl, sp+$0c
    ld hl, sp-$62
    db $fc
    ld [hl], a
    db $fc
    db $db
    cp h
    di
    ld c, h
    rst $38
    ldh a, [rIE]
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_596b

    sub b
    ld h, b
    ret nc

    jr nz, jr_016_5980

    jr nz, jr_016_59d1

    ld bc, $030f
    rra
    inc b
    ld a, $0c
    ld a, h
    jr c, jr_016_5a34

    jr nc, jr_016_59ee

    nop
    nop
    nop
    db $fc
    inc de
    db $fd
    ldh [c], a
    rst $28
    inc d
    sbc a
    ld h, h
    ld a, a
    inc e
    inc a
    jr @+$1a

    nop
    nop
    nop

jr_016_59d1:
    ldh a, [rP1]
    add sp, $10
    db $fc
    nop
    cp h
    ld b, b
    ld e, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_016_59f6

    ld b, b
    ccf
    ld h, b
    ccf
    jp nc, $ea7f

jr_016_59ee:
    ld a, a
    push de
    ld a, [hl]
    nop
    nop
    add b
    nop
    ld h, b

jr_016_59f6:
    add b
    db $10
    ldh [rWave_0], a
    ldh [rWave_8], a
    ldh a, [$ffd8]
    ldh a, [$ff78]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    dec b

jr_016_5a0c:
    inc bc
    dec c
    inc bc
    dec e

jr_016_5a10:
    dec bc
    sbc a
    ld l, c
    cp a
    ld b, h
    rst $38
    dec d
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    db $fc
    cp $fd

jr_016_5a1f:
    rst $38

jr_016_5a20:
    db $fc
    ret z

    jr nc, jr_016_5a0c

    sub b
    ld hl, sp-$60
    ldh a, [$ff80]
    ret c

    jr nz, jr_016_5a10

    jr jr_016_5a20

    ld c, h
    db $fc
    jr nz, jr_016_5a4f

    dec bc
    dec c

jr_016_5a34:
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    db $fd
    nop

jr_016_5a4f:
    ld a, b
    nop
    ldh a, [$ffe0]
    ldh a, [$ffc0]
    ldh [rP1], a

jr_016_5a57:
    and b
    ret nz

    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_016_5a1f

    ldh a, [rP1]
    nop
    nop
    ld bc, $0600
    ld bc, $070d
    ld d, $0f
    add hl, de
    rrca
    ccf
    ld [bc], a
    rst $38
    dec a
    nop
    nop
    ldh [rP1], a
    jr jr_016_5a57

    inc [hl]
    ld hl, sp-$06
    call c, Call_000_2cf6
    push af
    xor $fb
    ld d, $03
    nop
    ld b, $01
    add hl, bc
    rlca
    rrca
    rlca
    rla
    rrca
    ld d, $0f
    db $10
    rrca
    ld a, [bc]
    rlca
    push bc
    ld a, $72
    rst $08
    add sp, -$09
    rst $28
    ldh a, [$ff87]
    ei
    rlca
    ei
    rlca
    ld hl, sp+$0f
    pop af
    db $fd
    ldh a, [c]
    rst $38
    ld [hl], h
    db $fd
    ld [hl], d
    ld a, [$fc64]
    nop
    db $f4
    adc b
    ld a, [$fad4]
    inc d
    ld [$0607], sp
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
    rrca
    pop af
    ld a, $c1
    call z, $1d03
    ld c, $0e
    nop
    ld e, $00
    ld h, $18
    inc a
    nop
    db $f4
    nop
    ldh a, [rP1]
    ld h, b
    add b
    ret nc

    ldh [$ffe0], a
    nop
    ldh a, [rP1]
    sbc b
    ld h, b
    ld a, b
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    ldh [rP1], a
    ei
    ldh [$fff7], a
    ld a, [$f9ff]
    di
    db $fc
    adc $fd
    jp c, $b5fd

    ld a, [$0000]
    ret nz

    nop
    ld [hl], b
    ret nz

    ld c, b

jr_016_5b08:
    or b
    db $f4
    jr jr_016_5b08

    ld e, b
    or $2c
    ld a, [$08d4]
    rlca
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
    dec bc
    push af
    ld sp, $d1ce
    ld l, $e9
    ld d, $7f
    jr nz, jr_016_5bab

    db $10
    ccf
    ld [bc], a
    dec e
    ld [bc], a
    db $f4
    xor b
    db $fc

jr_016_5b34:
    and b
    db $fc
    adc b

jr_016_5b37:
    add sp, -$30
    ld hl, sp-$40
    add sp, $50
    db $e4
    jr jr_016_5b34

    ld [$0718], sp
    db $10
    rrca
    rla
    dec c
    dec a
    jr jr_016_5b67

    nop
    dec l
    db $10
    ld e, b
    jr nz, jr_016_5bc0

    nop
    add sp, $00
    ld h, b
    add b
    ld b, b
    add b
    ldh [$ffc0], a
    ret nz

    nop
    and b
    ld b, b
    ret nc

    jr nz, jr_016_5bd0

    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca

jr_016_5b67:
    dec l
    rra
    ld a, [hl-]
    rra
    ld e, a
    inc [hl]
    ld c, a
    ld [hl-], a
    ld e, a
    ld a, [hl+]
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_5b37

    xor b
    ldh a, [$ffd8]
    ld [hl], b
    db $fc
    cp b
    db $ec
    ld e, b
    db $e4
    ret c

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
    rrca
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld a, a
    ld d, $7f
    add hl, de
    ccf
    ld d, $1f
    rlca
    rst $38
    ld bc, $f8ff
    db $fc
    ei

jr_016_5b9f:
    rst $38
    ld hl, sp-$0c
    ld c, b
    db $fc
    ret nc

    db $f4
    adc b
    add sp, $10
    ld hl, sp-$80

jr_016_5bab:
    db $f4
    xor b
    ldh a, [c]
    ld l, h
    db $ec
    nop
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
    dec bc
    rlca
    inc c
    rlca
    rlca

jr_016_5bc0:
    nop
    rst $30
    ld a, [$faf5]
    db $f4
    ei
    rst $30
    ld sp, hl
    push af
    ld hl, sp-$0b
    ld hl, sp+$0d
    ld hl, sp-$08

jr_016_5bd0:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    and b
    ret nz

    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_016_5b9f

jr_016_5bdf:
    ldh a, [rP1]
    jr jr_016_5c1b

    inc a
    ld a, h
    ccf
    ld a, a
    inc c
    ld a, $07
    nop
    rrca
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld a, a

jr_016_5bf2:
    ld d, $7f
    add hl, de
    cp a
    sbc l
    rra
    ld c, $ff
    ld [bc], a
    rst $38
    ld hl, sp-$04
    ei
    rst $38

jr_016_5c00:
    ld hl, sp-$0c
    ld c, b
    db $fc
    ret nc

    db $f4
    ld [$d0e8], sp
    ld hl, sp-$40
    db $f4
    jr z, jr_016_5c00

    ld l, h
    db $fc
    jr nz, jr_016_5bf2

    nop
    ret nz

    nop

jr_016_5c15:
    ret nz

    nop
    and b
    ret nz

    ret nz

    nop

jr_016_5c1b:
    ldh [rP1], a
    jr nc, jr_016_5bdf

    ldh a, [rP1]
    ld bc, $0600
    ld bc, $070b
    inc d
    rrca
    rra
    dec bc
    ccf
    inc d
    cpl
    inc de
    scf
    dec c
    ldh [rP1], a
    jr jr_016_5c15

    inc h
    ld hl, sp-$06
    db $fc
    halt
    sbc h
    ei
    ld e, [hl]
    rst $38
    xor [hl]
    ei
    ld l, [hl]
    rrca
    ld bc, $0d1f
    rra
    inc c
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $003b
    ld c, a
    ld [hl-], a
    adc [hl]
    ld [hl], l
    rst $38
    adc [hl]
    rst $38
    xor h
    rst $38
    ld c, d
    ei
    inc b
    adc h
    ld [hl], e
    cp $05
    rst $38
    ld [bc], a
    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    add b
    nop
    ld [hl], a
    add hl, bc
    ccf
    ld bc, $001f
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
    ccf
    jp Jump_016_619f


    ld l, c
    db $10
    ld a, h
    jr c, @+$3a

    nop
    ld a, h
    nop
    ld h, [hl]
    jr jr_016_5ccc

    nop
    ret nz

    add b
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
    rlca
    ld bc, $0133
    ld a, l
    jr nc, jr_016_5d27

    inc a
    ccf
    dec b
    scf
    nop
    ld c, e
    jr nc, jr_016_5d27

    ld a, [bc]
    adc [hl]
    ld [hl], l
    rst $38
    adc [hl]
    rst $38
    xor h
    rst $38

jr_016_5cb8:
    ld c, d
    ld a, [$8f05]
    ld [hl], b
    rst $38
    dec bc
    rst $38
    ld b, c
    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    ld b, b

jr_016_5ccc:
    add b
    add b
    nop
    ret nz

    add b
    ld [hl], a
    add hl, bc
    ccf
    ld bc, $003d
    jr jr_016_5cd9

jr_016_5cd9:
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld a, e
    add c
    cp c
    ld b, b
    ld e, b
    jr nz, jr_016_5cb8

    ld h, b
    ld hl, sp+$30
    ld [hl], b
    add b
    cp b
    ld b, b
    ld [hl], b
    nop
    ret nz

    add b
    add b
    nop
    nop
    nop

jr_016_5cf7:
    nop
    nop
    nop
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
    ld bc, $070b
    inc d
    rrca
    rra
    dec bc
    ccf
    inc d
    cpl
    inc de
    nop
    nop
    ldh [rP1], a
    jr jr_016_5cf7

    inc h
    ld hl, sp-$06
    db $fc
    halt
    sbc h
    ei
    ld e, [hl]
    rst $38
    xor [hl]
    ld b, $01
    rlca
    ld bc, $011b

jr_016_5d27:
    ccf
    jr jr_016_5d69

    ld e, $1f
    ld bc, $0003

jr_016_5d2f:
    inc bc
    nop
    rst $38
    xor l
    adc [hl]
    ld [hl], l
    rst $30
    cp [hl]
    rst $38
    adc h
    cp a
    ld e, b
    rst $38
    inc bc
    rrca
    db $f4
    cp $00
    ld h, b
    ret nz

    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ldh [$ff80], a
    ldh a, [$ff60]
    ldh a, [$ff60]
    rlca
    inc bc
    rrca
    nop
    ld [$0f07], sp
    nop
    rlca
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    cp h
    ld b, b
    db $fc
    add b
    cp h
    ld b, b
    ld d, b
    and b

jr_016_5d69:
    ldh [rP1], a
    ldh a, [rP1]
    jr nc, jr_016_5d2f

    ldh [rP1], a
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
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca
    scf
    dec e
    daa
    ld a, [de]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$54
    ret c

    or $2c
    ld a, [$2ff4]
    inc d
    inc a
    inc bc
    ccf
    rla
    ccf
    rlca
    rla
    dec bc
    rrca
    nop
    ld [$1f07], sp
    ld [$94fa], sp
    ld e, $e0
    cp $f4
    cp $70
    db $f4
    ld l, b
    ld a, [$0904]
    or $fe
    ld [$103f], sp
    ccf
    jr jr_016_5e04

    add hl, de
    ld e, $07
    rlca
    nop
    rrca
    nop
    inc de
    inc c
    ld e, $00
    cp $84
    cp $0c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, h
    jr nc, jr_016_5e1c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5e04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5e1c:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_5e36

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

jr_016_5e36:
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
    rra
    rlca
    ccf
    jr jr_016_5e88

    dec de
    ld a, e
    inc h
    ld a, a
    inc [hl]
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ld hl, sp+$00

jr_016_5e5b:
    ld h, h
    sbc b
    ldh a, [c]
    ld l, h
    db $fc
    db $10
    ccf
    ld [bc], a
    dec b
    ld [bc], a
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
    cp $0c
    cp $0c
    inc l
    ret nz

    sub b
    ldh [$ffe0], a
    nop
    ld [hl], b
    add b

jr_016_5e7d:
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_016_5e88:
    nop
    jr jr_016_5e92

    jr nc, jr_016_5eac

    ld l, d

jr_016_5e8e:
    ccf
    ld [hl], a
    dec a
    nop

jr_016_5e92:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_5e5b

    jr nc, jr_016_5e7d

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffde]
    ld l, c
    xor a
    ld d, [hl]
    cp a
    ld c, a
    ld e, a
    inc l
    ccf
    dec bc
    ccf

jr_016_5eac:
    rra
    rra
    rlca
    ccf
    jr jr_016_5e8e

    ld hl, sp-$54
    ld hl, sp-$3c
    ld a, b
    db $e4
    sbc b
    db $fc
    and b
    ldh a, [c]
    adc h
    and h
    ld e, b
    ld a, b
    add b
    ccf
    ld a, [de]
    rra
    ld b, $06
    ld bc, $0001
    ld bc, $0200
    ld bc, $0003
    nop
    nop
    cp $28
    rst $38
    ld c, $ff
    ld b, $56
    cp b
    db $fc
    nop
    and $18
    adc $30
    ld a, h
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
    daa
    ld a, [de]
    ldh [rP1], a
    jr @-$1e

jr_016_5ef5:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3ff4]
    inc b
    ccf
    ld d, $3f
    inc b
    rla
    ld a, [bc]
    rra
    ld bc, $0f1f
    rra
    inc c
    rrca
    nop
    cp $90
    cp $b4
    db $fc
    sub b
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    cp $90
    rst $38
    ld c, $ff
    add [hl]
    rlca
    nop
    ld b, $01
    dec b
    inc bc
    rrca
    ld b, $07
    nop
    dec bc
    inc b
    ld d, $08
    inc e
    nop
    halt
    add b
    jr nc, jr_016_5ef5

    ret nc

    ld h, b
    ld l, b
    jr nc, jr_016_5faa

    nop
    ld e, b
    jr nz, @+$2e

    db $10
    inc e
    nop
    ld h, [hl]
    ccf
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld l, a
    dec d
    ld a, a
    inc hl
    ccf
    dec c
    rra
    inc b
    ccf
    dec de
    sbc h
    ld hl, sp+$64
    cp b
    rst $20
    ld e, b
    rst $38
    and $ff
    add [hl]
    cp $68
    ld hl, sp+$50
    ldh a, [rNR41]
    ccf
    rra
    rra
    nop
    ld e, $0d
    dec c
    ld [bc], a
    ld e, $00
    ld h, $18
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    add sp, $10
    ldh a, [$ff60]
    ld h, b
    add b
    ldh a, [rP1]
    sbc b
    ld h, b
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
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_016_5f91

jr_016_5f91:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5faa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5ff5:
    nop
    nop
    nop
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    dec [hl]
    ld e, $23
    dec e
    daa
    dec de
    ldh [rP1], a
    jr jr_016_5ff5

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3ff4]
    inc b
    ccf
    ld d, $1f
    inc b
    rla
    dec bc
    rrca
    nop
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop
    cp $90
    cp $b4
    db $fc
    sub b

jr_016_6037:
    db $f4
    add sp, -$08
    nop
    ldh a, [$ffe0]
    ldh [$ffe0], a
    nop
    nop
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rla
    dec bc
    rrca
    nop
    rlca
    inc bc
    rrca
    dec b
    inc bc
    inc bc
    cp $90
    cp $b4
    db $fc
    sub b
    db $f4
    add sp, -$08
    nop
    ldh a, [$ffe0]
    ld hl, sp-$30
    ldh [$ffe0], a
    nop
    nop
    rlca
    nop
    jr jr_016_606e

    jr nz, jr_016_6088

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_606e:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_6037

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

jr_016_6088:
    dec bc
    ld c, $01
    rrca
    rlca
    rlca
    rlca
    nop
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nz

    ret nz

    nop
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    rrca
    rlca
    rra
    dec bc
    rrca
    rrca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ldh a, [$ffa0]
    ldh [$ffe0], a
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_60d6

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

jr_016_60d6:
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
    inc bc
    ld bc, $0303
    nop
    nop
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [rP1]
    ldh [$ffc0], a
    ret nz

    ret nz

    nop
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
    inc bc
    ld bc, $0207
    rlca
    ld b, $f2
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [rP1]
    ldh [$ffc0], a
    ldh a, [$ffc0]
    ldh [$ffe0], a
    ccf
    rlca
    ccf
    db $10
    inc e
    rlca
    rrca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $f0
    cp $84
    inc e
    ldh a, [$fff8]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
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
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    rla
    rra
    inc b
    add hl, de
    rrca
    rrca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    call z, Call_016_54fa
    db $f4
    ret z

    add sp, -$70
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    call z, $d4fa
    ldh a, [c]
    call z, $98e4
    nop
    nop
    nop
    nop
    nop
    nop

Jump_016_619f:
    nop
    nop
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    rrca
    nop
    rlca

jr_016_61ac:
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    db $fc
    jr z, jr_016_61ac

    and b
    ld hl, sp+$30
    ldh a, [$ffe0]
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_016_61d0

    ldh [rTAC], a
    inc bc
    rlca
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    ld b, $0f
    rlca
    rlca
    nop
    nop

jr_016_61d0:
    nop
    sub b
    ld h, b
    sub b
    ld h, b

jr_016_61d5:
    ldh [rP1], a
    ldh [rLCDC], a
    ldh a, [$ff60]
    ldh a, [$ff80]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld c, a
    inc sp
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    rrca
    nop
    rra

jr_016_61ee:
    rrca
    ccf
    add hl, de
    nop
    nop
    db $f4
    jr z, jr_016_61ee

    and b
    ld hl, sp+$30
    ldh a, [$ffe0]
    ldh [rP1], a
    ret nz

    add b
    ldh [$ffc0], a

jr_016_6201:
    ld a, c
    ld [hl], $7c
    inc sp
    ld a, $0d
    rra
    ld b, $1f
    inc c
    rrca
    rlca
    rlca
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, jr_016_61d5

    ld [hl], b
    and b
    ldh [rLCDC], a
    ldh a, [$ffe0]
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
    ret nz

    nop
    jr nc, jr_016_6201

    db $10
    rrca
    ld hl, $321f

jr_016_6246:
    dec e
    ld [hl], c
    ld a, $6b
    ld a, $7d
    ld a, $6b
    dec a
    ld b, e
    dec a
    ld e, b
    ldh a, [$ff6c]
    ld hl, sp-$24
    ld hl, sp-$4a
    ld l, h
    ld a, [$fa94]
    add h
    cp $d8
    db $fc
    sub b
    daa
    ld a, [de]
    inc de
    inc c
    dec c
    ld [bc], a
    rlca
    ld bc, $0307
    rlca
    inc bc
    rlca
    ld [bc], a
    rrca
    ld b, $f8
    ldh a, [$fff0]
    ldh [$ffe0], a
    nop
    ldh [$ffc0], a
    ldh [rP1], a
    sub b
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [rIF], a
    ld b, $07
    nop
    rlca
    ld [bc], a
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh [$ffe0], a
    nop
    ldh [$ffc0], a
    ldh a, [$ff60]
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop
    nop
    inc de
    dec c
    add hl, bc
    ld b, $07
    nop
    ld bc, $0300
    ld bc, $0307
    rlca
    inc bc
    inc bc
    nop
    db $fc
    ld a, b
    ld hl, sp+$70
    ldh a, [rP1]
    ldh a, [$ffe0]

jr_016_62b9:
    ldh a, [$ffc0]
    ret z

    jr nc, jr_016_6246

    ld [hl], b
    ld [$01f0], sp
    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [$f0f0], sp
    nop
    ldh a, [$ffa0]
    ld hl, sp-$50
    ld hl, sp-$30
    ldh a, [rLCDC]
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_62eb:
    ld [hl-], a
    rra
    dec a
    rra
    halt
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_62b9

    jr jr_016_62eb

    xor h
    ld hl, sp-$24
    ld a, b
    ldh a, [c]
    inc l
    ld l, e
    ld a, $4f
    ld sp, $2d5f
    ccf
    dec c
    ccf
    dec bc
    rra
    add hl, bc
    rra
    inc c
    ccf

jr_016_6310:
    inc c
    ld [$fad4], a
    db $e4
    db $f4
    jr z, jr_016_6310

    and b
    ld hl, sp+$30
    ldh a, [$ffe0]
    ldh [rP1], a
    ret nz

    add b
    inc a
    inc bc
    jr nc, jr_016_6334

    ld h, e
    inc e
    and a
    ld e, e
    ld c, a
    scf
    ccf
    dec c
    rrca
    ld bc, $0001
    add b
    nop
    ld h, b

jr_016_6334:
    add b
    ld a, b
    and b
    ld hl, sp+$50
    ldh a, [$ffc0]
    ret nz

    add b
    add b
    nop
    nop
    nop
    ld c, a
    inc sp
    ld e, a
    dec hl
    rst $28
    or e
    ei
    db $ed
    ld a, a
    ld a, h
    inc de

jr_016_634c:
    inc de
    nop
    nop
    nop
    nop
    db $fc
    jr z, jr_016_634c

    and b
    ei
    inc sp
    ld [hl], a
    rst $20

jr_016_6359:
    db $ec
    adc [hl]
    db $10
    sbc b
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
    jr jr_016_637c

    jr c, jr_016_638e

    dec l
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_6359

    inc b
    ld hl, sp+$0c

jr_016_637c:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    ld [hl], $1f
    dec hl
    rra
    jr nz, jr_016_63a6

    inc hl
    dec e
    scf
    ld [$163f], sp
    rra

jr_016_638e:
    inc b
    rra
    inc bc
    or [hl]
    db $fc
    jp z, $a2fc

    call c, Call_000_2cd2
    or $88
    cp $b4
    db $fd
    sub d
    ld sp, hl
    and $1f
    inc c
    ld e, $0d
    rrca

jr_016_63a6:
    ld b, $1f
    ld b, $26
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    cp $18
    inc a
    ret c

    ld hl, sp+$30
    ld a, h
    jr nc, jr_016_63f0

    ld [$001e], sp
    nop
    nop
    nop
    nop
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
    inc e
    dec bc
    ccf
    db $10
    ld a, [$fef4]
    sub b
    cp $b4
    db $fc
    sub b
    cp $e0
    jp hl


    ld d, $1e
    add sp, -$02
    inc b
    ccf
    jr jr_016_6423

    jr jr_016_6404

    ld bc, $070e

jr_016_63e9:
    dec c
    inc bc
    rra
    nop
    ld h, $18
    inc a

jr_016_63f0:
    nop
    cp $8c
    ld a, [hl]
    adc h
    inc a
    ret nz

    jr c, jr_016_63e9

    ret c

    ld h, b
    ld a, h
    nop
    ld h, $18
    ld e, $00
    nop
    nop
    inc bc

jr_016_6404:
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca
    inc sp
    dec e
    scf
    jr jr_016_643f

    ld d, $00
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$14
    sbc b
    or $6c
    ld a, [$fe94]
    or h
    cpl
    inc d

jr_016_6423:
    ccf
    rlca
    ccf
    rla
    ccf
    inc bc
    rla
    ld [$031c], sp
    ccf
    jr jr_016_64af

    jr nc, @-$04

    sub h
    cp $70
    cp $74
    cp $60
    pop af
    ld c, $1e
    ldh [$fffe], a
    inc c

jr_016_643f:
    rst $38
    add [hl]
    ccf
    jr jr_016_6482

    add hl, de
    inc e
    inc bc
    ld c, $07
    dec c
    inc bc
    rra
    nop
    ld h, $18
    inc a
    nop
    ld a, [hl]
    adc h
    ld a, $cc
    inc e
    ldh [rWave_8], a
    ldh a, [$ffd8]
    ld h, b
    ld a, h
    nop
    ld h, $18
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $03
    dec d
    ld c, $1f
    add hl, bc
    cpl
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp b
    ld h, b
    call nc, $fcb8
    ret z

    ld a, [$3f74]

jr_016_6482:
    rrca
    ccf
    rrca
    ccf
    rra
    ccf
    rrca
    cpl
    rla
    rla
    dec bc
    ld e, $01
    inc a
    inc de
    cp $78
    cp $78

jr_016_6495:
    cp $fc
    cp $f8
    ld a, [$f4f4]
    add sp, $3c
    ret nz

    ld e, $e4
    ld a, a
    jr c, jr_016_64e2

    add hl, de
    inc e
    inc bc
    ld c, $07

jr_016_64a9:
    dec c
    inc bc
    rra
    nop
    ld h, $18

jr_016_64af:
    inc a
    nop
    rst $38
    ld c, $3e
    call z, $e01c
    jr c, jr_016_64a9

    ret c

    ld h, b
    ld a, h
    nop
    ld h, $18
    ld e, $00
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca

jr_016_64c7:
    ld [hl+], a
    rra
    dec h
    rra
    ld l, [hl]
    ccf
    ld l, a
    ld a, [hl-]
    ld [hl], a
    ld a, [hl-]
    ret nz

    nop
    jr nc, jr_016_6495

    jr c, jr_016_64c7

    sbc h
    ld hl, sp-$54
    ld a, b
    jp nc, $ea3c

    call nc, Call_000_28fe
    dec b

jr_016_64e2:
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, [hl]
    rst $38
    ld e, e
    rst $38
    cpl
    ld a, a
    or d
    cp [hl]

Call_016_64fa:
    ld e, c
    ld a, c
    ld b, $7f
    ld [hl+], a
    rst $38
    ld b, e
    and [hl]
    ld b, b
    xor a
    ld b, [hl]
    rst $38
    ld c, $fe
    ld e, b
    ld hl, sp+$00
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [hl]
    ld sp, $337c
    ccf
    inc c
    inc a
    nop
    ld l, h
    db $10
    sbc h
    ld h, b
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld a, b
    nop
    ld a, h
    nop
    ld h, $18
    ld e, $00
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld de, $0210
    ld bc, $0304
    ld b, h
    ld b, e
    adc l
    add a
    dec c
    rlca
    nop
    nop
    ld a, b
    nop
    add [hl]
    ld a, b
    rlca
    cp $53
    rst $38
    or a
    jp hl


    rst $18
    and $ff
    ld d, [hl]
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
    ld b, b
    add b
    ld b, b
    add b
    rst $28
    ld [hl], h
    cp a
    ld l, d
    ld e, a
    dec hl
    ld e, a
    dec h
    cpl
    ld d, $1f
    inc bc
    rlca
    nop
    rrca

jr_016_6570:
    inc b
    db $fc
    jr nc, jr_016_6570

    ret c

    db $fc
    ld e, b
    rst $38
    db $e4
    db $fd
    ld c, d
    sbc $20

jr_016_657d:
    ld a, $c0
    rst $38
    ld b, b
    ei
    ld [hl], h
    ld a, b
    scf
    rst $38
    ld b, b
    ld a, b
    nop
    ld l, h
    db $10
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nc

    ldh [$fff8], a
    nop
    ld a, h
    nop
    ld h, $18
    ld e, $00
    nop
    nop
    ld l, a
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
    jr nc, jr_016_65ef

    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr nz, jr_016_657d

    ldh a, [rNR41]
    ld hl, sp+$10
    ccf
    db $10
    ld a, a
    jr nc, jr_016_663e

    scf
    dec sp
    inc b
    dec e
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    ld hl, sp+$10
    db $fc
    jr jr_016_6612

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
    rlca
    nop
    jr jr_016_65ec

    jr nz, jr_016_6606

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_65ec:
    ccf
    ld a, d
    ccf

jr_016_65ef:
    ld l, a
    ccf
    ret nz

    nop
    jr nc, @-$3e

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

jr_016_6606:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_016_664d

    ld [$000f], sp
    ld e, b

jr_016_6612:
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, @-$3e

    ldh a, [rNR41]

jr_016_661d:
    ldh a, [rNR41]
    ldh [rP1], a
    rrca
    nop
    rrca
    nop
    ld [$1d07], sp
    ld a, [bc]
    rrca
    ld b, $1e
    nop
    ld h, $18
    inc e
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, @-$3e

    ld d, b
    and b
    ldh [$ffc0], a
    ldh a, [rP1]
    sbc b

jr_016_663e:
    ld h, b
    ld [hl], b
    nop
    ld l, a
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

jr_016_664d:
    ld c, a
    jr nc, jr_016_668f

    ld [$f8ec], sp
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nz, jr_016_661d

jr_016_665d:
    ldh a, [rNR41]
    ldh a, [rNR41]
    rra
    nop
    rla
    ld [$0708], sp
    rra
    ld [$063d], sp
    ld e, $00
    inc c
    nop
    nop
    nop
    ldh a, [rP1]
    ret nc

    jr nz, jr_016_6696

    ret nz

    ret nc

    jr nz, @-$46

    ret nz

    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    ld l, a
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
    ld c, e
    inc [hl]

jr_016_668f:
    rst $38
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]

jr_016_6696:
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    jr nc, jr_016_665d

    ld hl, sp+$30
    cp $08
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
    rst $38
    ldh [$ffef], a
    ret nz

    ret z

    rlca
    dec bc
    inc b
    dec e
    ld c, $3e
    nop
    ld e, $08
    inc c
    nop
    rst $38
    ld c, $ef
    ld b, $26
    ret nz

    and b
    ld b, b
    ret nc

    ldh [$fff8], a
    nop
    ldh a, [rLCDC]
    ld h, b
    nop
    push af
    rra
    ld [$f4d7], a
    set 7, [hl]
    ld h, c
    ld h, h
    dec de
    ld c, a
    jr nc, jr_016_671d

    nop
    rrca
    nop
    ld e, [hl]
    ldh a, [$ffaf]
    sub $5f
    and [hl]
    cp $0c
    inc a
    ret z

    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rP1], a
    rrca
    nop
    ld [$0d07], sp
    ld [bc], a
    rra
    inc c
    dec c
    ld [bc], a
    inc de
    inc c
    ld l, $10
    inc e
    nop
    ldh [rP1], a
    jr nz, @-$3e

    ld h, b
    add b

jr_016_6707:
    ret nc

    ld h, b
    ld h, b
    add b
    or b
    ld b, b
    ld hl, sp+$00
    ld [hl], b
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

jr_016_671d:
    dec [hl]
    ld e, $23
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_016_6707

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
    add hl, de
    and $fe
    ld [$081f], sp
    ccf
    jr jr_016_6794

    add hl, de
    ld e, $07
    dec c
    inc bc
    rra
    nop
    ld h, $18
    inc a
    nop
    db $fc
    adc b
    ld a, [hl]
    adc h
    ld a, $cc
    inc a
    ldh a, [$ffd8]
    ld h, b
    ld a, h
    nop
    ld h, $18
    ld e, $00
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    rra
    rrca
    rrca
    nop
    ld b, $01
    rrca
    ld b, $0f
    rlca
    db $e4
    sbc b
    db $f4
    xor b
    add sp, -$70
    ld hl, sp+$00
    and h
    ld e, b
    ld [hl], d
    adc h
    db $fc
    ld b, b
    ld hl, sp-$80
    ld a, a
    jr @+$61

jr_016_6794:
    jr nz, @-$01

    ld e, [hl]
    ld a, [hl]
    nop
    ei
    inc b
    rst $20
    jr jr_016_67dc

    nop
    nop
    nop
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    rra
    rrca
    rrca
    nop
    rrca
    ld b, $0f
    rlca
    rlca
    inc bc
    db $e4
    sbc b
    db $f4
    xor b
    add sp, -$70
    ld hl, sp+$00
    and h
    ld e, b
    ld [hl], d
    adc h
    db $fc
    ld b, b
    ld hl, sp-$80
    ld a, a
    nop

jr_016_67c3:
    ld e, a
    jr nz, jr_016_67c3

    ld e, [hl]
    ld a, [hl]
    nop
    ei
    inc b
    rst $20
    jr jr_016_680c

    nop
    nop
    nop
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rra
    nop
    ld a, a

jr_016_67dc:
    ld a, [de]
    cp a
    ld e, a
    sbc a
    ld h, b
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [rP1]
    ldh a, [$ff80]
    ldh a, [rP1]
    ldh a, [rP1]
    dec d
    ld [$0009], sp
    ld bc, $0300
    ld bc, $0001
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld b, $0f
    inc bc
    rra
    inc c
    ccf

jr_016_680c:
    rrca
    ld c, a
    inc sp
    ld b, e
    inc a
    ld sp, hl
    ld h, [hl]
    db $fd
    ld [$64fa], a
    db $f4
    ret z

    ld hl, sp+$00
    ld hl, sp+$40
    ld hl, sp-$80
    ld hl, sp+$00
    ld hl, $411e
    ld a, $71
    ld c, $0f
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    ld a, h
    add b
    inc a
    ret nz

    sbc b
    ld [hl], b
    ld hl, sp+$60
    db $fc
    nop
    db $ec
    db $10
    sbc h
    ld h, b
    ldh a, [rP1]
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
    cpl
    inc d
    rra
    dec b
    rra
    inc c
    rrca
    rlca
    rra
    nop
    ccf
    add hl, de
    ccf
    ld b, $ff
    ld e, $f2
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [rP1]
    ldh a, [$ff80]
    ld hl, sp+$00
    ld hl, sp+$00
    ld c, a
    ld b, b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret c

    dec a
    jp nz, $fc03

    add a
    ld a, d
    ld a, e
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $f800
    nop
    ldh a, [rP1]
    jr nc, @-$1e

    ldh a, [$ffc0]
    ld hl, sp+$00
    ret c

    jr nz, jr_016_68d6

    ret nz

    ldh [rP1], a
    ld e, a
    add hl, hl
    ccf
    dec bc
    ccf
    add hl, de
    rra
    rrca
    rrca
    nop
    inc b
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $98e4
    db $f4
    xor b
    ld hl, sp-$80
    db $e4
    jr jr_016_6932

    and b
    db $fc
    nop
    cp $60
    db $fc
    ret nz

    inc bc
    ld bc, $0207
    inc bc
    nop
    ld b, $01
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    adc h
    ld a, [$fc34]

jr_016_68d6:
    ld [$00f8], sp
    sbc h
    ld h, b
    ld hl, sp+$00
    nop
    nop
    nop
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
    inc c
    inc bc
    rra

jr_016_68ee:
    inc c
    rra
    dec c
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    ld hl, sp-$80
    db $e4
    jr jr_016_68ee

    ld c, h
    db $fc
    add b
    cp $80
    dec l
    ld [de], a
    inc sp
    inc c
    rra
    nop
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
    cp $00
    call c, $c460
    jr c, jr_016_6950

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    inc d
    ld e, $05
    rra
    inc c

jr_016_6927:
    dec bc
    rlca
    rlca
    nop
    rlca
    ld [bc], a
    dec bc
    dec b
    dec bc
    dec b
    or d

jr_016_6932:
    call z, $d4fa
    or d
    call z, $9864
    ret c

    jr nz, @-$46

    ret nc

    db $fc
    ld c, b
    xor b
    ld b, b
    or $0c
    cp [hl]
    ld c, h
    ld e, [hl]
    jr nz, jr_016_69c1

    ld c, $9d
    ld h, [hl]
    db $fd
    ld e, $3e
    nop
    nop

jr_016_6950:
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_695e

    jr nz, jr_016_6978

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_695e:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_6927

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

jr_016_6978:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, @+$41

    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr nz, @-$3e

    ldh a, [rNR41]
    ld hl, sp+$10
    ccf
    db $10
    ld a, a
    jr nc, jr_016_6a0e

    scf
    dec sp
    inc b
    dec e
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    ld hl, sp+$10
    db $fc
    jr jr_016_69e2

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
    ld bc, $0600
    ld bc, $070c
    inc e
    rrca
    dec de
    rrca
    ld a, $1f
    dec [hl]
    ld e, $23
    dec e

jr_016_69c1:
    ldh [rP1], a
    jr @-$1e

    inc c
    ld hl, sp+$06
    db $fc
    ld e, [hl]
    db $fc
    ld a, e
    xor $fd
    sub [hl]
    ld sp, hl
    halt
    daa
    add hl, de
    rra
    inc b
    rla
    add hl, bc
    ccf
    nop
    ld b, h
    dec sp
    sbc a
    ld h, b
    ld a, a
    ld [$183f], sp
    db $fd

jr_016_69e2:
    ldh [c], a
    cp $28
    db $fc
    ldh [$fffc], a

jr_016_69e8:
    ldh a, [$ff7e]
    adc h
    cp $2c
    db $fc
    jr jr_016_69e8

jr_016_69f0:
    db $10
    ccf
    jr jr_016_6a0c

    rlca
    dec b
    ld [bc], a
    ld c, $07
    rra
    nop
    dec bc
    inc b
    ld b, $00
    nop
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_016_69f0

    ld [hl], b
    ld a, h
    nop
    ld e, b

jr_016_6a0c:
    jr nz, jr_016_6a3e

jr_016_6a0e:
    nop
    nop
    nop
    ld c, a
    inc sp
    ld e, a
    ld a, [hl+]

jr_016_6a15:
    cpl
    inc de
    rla
    add hl, bc
    rrca
    nop
    ld [de], a
    dec c
    daa

jr_016_6a1e:
    jr jr_016_6a3f

    ld [bc], a
    db $f4

jr_016_6a22:
    add sp, -$08
    jr nz, jr_016_6a1e

    ldh a, [$fff0]
    ldh [$ffec], a
    nop
    ld e, $ec
    cp $0c
    db $fc
    jr nz, @+$80

    jr nz, @-$04

    ld h, h
    rst $38
    ld l, d
    ld a, [hl]
    nop
    rst $18
    jr nz, jr_016_6a22

    jr jr_016_6ab6

jr_016_6a3e:
    nop

jr_016_6a3f:
    nop
    nop
    rlca
    nop
    jr jr_016_6a4c

    ld hl, $221f
    rra
    ld d, l
    ld a, $7f

jr_016_6a4c:
    ld a, $6b
    dec a
    ld [hl], a
    dec a
    ret nz

    nop
    jr nc, jr_016_6a15

    jr z, @-$0e

    ret c

    ldh a, [$ff7c]
    ret c

    cp h
    ld l, b
    db $f4
    adc b
    db $f4
    add sp, $47
    ld a, [hl-]
    cpl
    inc de
    ccf
    dec bc
    dec de
    dec b
    rrca
    nop
    ld a, [bc]
    dec b
    inc de
    inc c
    rla

jr_016_6a70:
    ld a, [bc]
    ld hl, sp+$20
    ld hl, sp-$10
    ld hl, sp-$70
    db $fc
    add b
    db $fc
    ld [$d83c], sp
    ret c

jr_016_6a7e:
    jr nz, jr_016_6a70

jr_016_6a80:
    jr nz, jr_016_6a80

    jr nz, jr_016_6a7e

    ld h, h
    rst $38
    ld l, d
    ld a, [hl]
    nop
    rst $18
    jr nz, @-$18

    jr jr_016_6b06

    nop
    nop
    nop
    ld c, a
    ld [hl-], a
    ld e, a
    dec hl
    cpl
    inc de
    rla
    add hl, bc
    rrca
    nop
    inc de
    inc c
    daa
    dec de
    rra
    inc b
    db $f4
    add sp, -$08
    ldh a, [$fff0]
    and b
    ldh [$ffc0], a
    ret nc

    jr nz, jr_016_6ab4

    ldh a, [$ffec]
    db $10
    cp $14
    ccf
    inc e
    ccf

jr_016_6ab4:
    jr jr_016_6ad1

jr_016_6ab6:
    nop
    inc bc
    ld bc, $0007
    ld b, $01
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_016_6ac5:
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    inc e

jr_016_6ace:
    nop
    ld a, $10

jr_016_6ad1:
    ccf
    nop
    ld a, $01
    ld a, $01
    ld a, $09
    ccf
    add hl, bc
    ld a, $09
    ccf
    ld bc, $1a3d
    ldh [rP1], a
    jr jr_016_6ac5

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$3f94]
    db $10
    rra
    inc c
    rra
    dec c
    ccf
    ld [de], a
    ccf
    dec de
    rra
    dec b
    rrca
    nop
    rlca
    nop
    cp $b0
    cp $94
    db $fc

jr_016_6b06:
    ldh a, [$fff4]
    add sp, -$04
    nop
    ldh a, [c]
    xor h
    ld sp, hl
    ld h, [hl]
    or $80
    rlca
    nop
    ld b, $01
    inc b
    inc bc
    rrca
    rlca
    rlca
    nop
    dec c
    ld [bc], a
    inc de
    inc c
    ld e, $00
    ret z

    jr nc, jr_016_6b60

    ret c

    db $fc
    jr nz, jr_016_6ace

    jr jr_016_6ba6

    nop
    cp b
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
    ld a, [de]
    rrca
    ld a, [hl-]
    rra
    cpl
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    ld [hl], $1f
    cpl
    ld a, [de]
    daa
    ld a, [de]
    scf
    ld a, [bc]
    ccf
    ld d, $1f
    ld b, $0f
    rlca
    rra

jr_016_6b60:
    rrca
    or [hl]
    db $fc
    ld [$62dc], a
    sbc h
    or $68
    cp $94
    db $fd
    or d
    ld sp, hl
    sub [hl]
    cp $e8
    rla
    rrca
    rlca
    rrca
    dec d
    rrca
    dec h
    rra
    ld [de], a
    rrca
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    dec b
    ld a, [bc]
    ld a, h
    sub b
    ld a, b
    ldh a, [$ff7c]
    add sp, $7c
    add b
    ld h, $98
    ld e, $80
    nop
    add b
    nop
    add b
    dec d
    ld a, [bc]
    dec de
    inc b
    rra
    nop

jr_016_6b97:
    ld c, $00
    ld c, $00
    ld c, $00
    inc b
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    inc c

jr_016_6ba6:
    inc bc
    db $10
    rrca
    jr jr_016_6bba

    jr c, jr_016_6bcc

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_016_6b97

    inc b
    ld hl, sp+$0c

jr_016_6bba:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    dec hl
    rra
    inc hl
    dec e
    ld [hl], $0b
    ccf
    inc d
    rra
    ld b, $0f

jr_016_6bcc:
    inc b
    rra
    dec bc
    rra
    inc c
    ld [$62dc], a
    sbc h
    or $68
    cp $94
    cp $b0
    ld sp, hl
    sub [hl]
    cp $e8
    db $fc
    db $10
    rrca
    nop
    rra
    ld [bc], a
    daa
    ld a, [de]
    rra
    inc b
    rrca
    inc b
    rrca
    nop
    dec c
    ld [bc], a
    rrca
    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    inc b
    nop
    inc b
    nop
    dec hl
    rra
    inc hl
    dec e
    ld [hl], $0b
    ccf
    inc d
    rra
    ld b, $0f
    inc b
    rra
    ld [$081f], sp
    ld [$62dc], a
    sbc h
    or $68
    cp $94
    db $fc
    or b
    ld a, [$fd94]
    ld [$18fe], a
    rrca
    ld [bc], a
    rra
    nop
    cpl
    inc d
    rra
    inc b
    dec c
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    nop
    rrca
    nop
    ld hl, sp-$20
    db $fc
    ld e, b
    db $fc
    nop
    and [hl]
    jr @-$60

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rra
    nop
    ld c, $00
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
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    dec hl
    ld e, a
    inc h
    ei
    jr nz, jr_016_6cf3

    adc d
    ld a, $c4
    ld e, a
    ldh [rIE], a
    ret nc

    ld a, e
    or h
    push af
    ld l, [hl]
    jp hl


    sbc $00
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

    nop
    ret nz

    nop
    cpl
    dec d
    rla
    add hl, bc
    rra
    ld b, $3f
    ld e, $1e
    add hl, bc
    rrca
    inc b
    rrca
    inc b

jr_016_6c9f:
    rra
    nop
    di
    adc h
    ld a, [$f494]
    ret z

    add sp, $50
    ld hl, sp+$20
    db $f4
    ld l, b
    ldh a, [c]
    inc c
    ld a, [$c004]
    nop
    ret nz

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
    add hl, sp
    ld e, $3c
    rlca
    ld a, a
    nop
    sbc h
    ld h, b
    ld l, l
    db $10
    jr jr_016_6ccd

jr_016_6ccd:
    ld bc, $0100
    nop
    db $f4
    nop
    ld h, b
    add b
    jr nz, @-$3e

    or b
    ld h, b
    ldh a, [$ffc0]
    ld hl, sp+$00
    jr nc, jr_016_6c9f

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
    ld [bc], a
    nop
    ld b, $00
    ld c, $00
    ld c, $08
    inc e

jr_016_6cf3:
    ld [$0c1c], sp
    jr jr_016_6d04

    jr c, jr_016_6d0e

    ld a, [hl-]
    inc d
    ld l, d
    ld [hl], e
    adc $7d
    rst $00
    cpl
    inc d
    rra

jr_016_6d04:
    dec b
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    dec e
    ld [bc], a
    ccf

jr_016_6d0e:
    ld de, $0fff
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    db $ec
    sub b
    ldh a, [c]
    inc c
    db $e4
    ret c

    ld hl, sp+$40
    ld hl, sp-$80
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
    ld e, a
    db $ec
    cp [hl]
    ld b, e
    rlca
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
    ld hl, sp+$00
    ldh a, [rP1]
    ret c

    ldh [$fffc], a
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
    dec e
    ld [bc], a
    ccf
    ld de, $0fff
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ld hl, sp+$00
    db $e4
    ret c

    ldh a, [c]
    ld c, h
    db $fc
    add b
    cp a
    ld b, e
    ld a, a
    nop
    inc e
    nop
    ld e, $00
    ld c, $00
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    rst $38
    db $ec
    cp $03
    rlca
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
    ld e, $0d
    ccf
    ld [$37ff], sp
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    db $fc
    nop
    ldh a, [c]
    ld c, h
    ld sp, hl
    ld b, [hl]
    cp $80
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
    nop
    nop
    rst $38
    ld b, [hl]
    adc $01
    add [hl]
    inc bc
    jp $e500


    ld [bc], a
    rst $38
    nop
    jr c, jr_016_6def

jr_016_6def:
    nop
    nop
    ld hl, sp+$00
    ld a, b
    add b
    db $f4
    ld a, b
    ld hl, sp+$00
    db $fc
    nop
    sbc h
    ld h, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    inc e
    ld [$043e], sp
    ld a, $04
    ld a, $00
    cp $08
    ld a, $c0

jr_016_6e17:
    ld a, $c0
    ld a, $c0
    inc e
    ldh [$ff5c], a
    ldh [$ffbc], a
    ldh [$ff6f], a
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
    jr nc, jr_016_6e6f

    nop
    db $fc
    ldh [$ff5c], a
    ldh [$ffbc], a
    ret z

    ld e, [hl]
    and h
    cp $0c
    ld a, $c4
    db $fc
    jr z, @-$02

    ld e, b
    rrca
    nop
    dec bc
    inc b
    ld [$1b07], sp
    inc c
    ccf
    ld b, $16
    ld [$000c], sp
    nop
    nop
    ld hl, sp+$10
    ldh a, [rP1]
    jr nz, jr_016_6e17

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
    ld [$0800], sp
    ld [$0808], sp
    ld [$1c08], sp
    ld [$081c], sp
    inc e

jr_016_6e6f:
    inc c
    jr jr_016_6e72

jr_016_6e72:
    nop
    rlca
    nop
    jr jr_016_6e7e

    jr nz, jr_016_6e98

    jr nz, jr_016_6e9a

    ld b, l
    ccf
    ld d, [hl]

jr_016_6e7e:
    ccf
    ld l, a
    ccf
    inc e
    ld [$08dc], sp
    inc a
    ret z

    inc c
    ldh a, [$ff0c]
    ldh a, [rLY]
    ld hl, sp-$2c
    ld hl, sp-$14
    ld hl, sp+$7b
    ccf
    dec [hl]
    rra
    ld e, b
    daa
    ld c, a

jr_016_6e98:
    jr nc, jr_016_6ebe

jr_016_6e9a:
    dec de
    dec sp
    inc b
    ccf
    db $10
    rra
    nop
    cp h
    ld hl, sp+$5c
    ldh a, [$ff2c]
    ret nc

    call c, Call_016_7c28
    add b
    cp h
    ld d, b
    db $fc
    db $10
    db $fc
    ld [$033c], sp
    jr @+$09

    dec de
    inc c
    ccf
    ld b, $16
    ld [$000c], sp
    nop

jr_016_6ebe:
    nop
    nop
    nop
    ld a, b
    add h
    jr c, @-$3a

    cp h
    ld c, b
    call c, $f4e0
    ld [$40b8], sp
    ld hl, sp+$00
    ld [hl], b
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    scf
    ld [$0778], sp
    add a
    ld a, b
    ld a, a
    nop
    rrca
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ret c

    jr nz, jr_016_6f62

    add b
    cp h

jr_016_6eec:
    ld c, b

jr_016_6eed:
    db $fc
    jr nc, jr_016_6eec

    jr jr_016_6f11

    ld [$0718], sp
    dec de
    inc c
    ccf
    ld b, $16
    ld [$000c], sp
    nop
    nop
    nop
    nop
    call c, Call_000_3c28
    ret nz

    xor h
    ld d, b
    call nc, $f8e8
    nop
    cp b
    ld b, b
    ld hl, sp+$00
    ld [hl], b
    nop

jr_016_6f11:
    ld l, a
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
    jr nc, jr_016_6f5f

    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ld hl, sp+$00
    jr c, jr_016_6eed

    db $fc
    jr z, @-$02

    jr nc, jr_016_6f51

    ld [$000f], sp
    ld [$0b07], sp
    inc b
    dec e
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    db $fc
    db $10
    db $fc
    nop
    inc a
    ret nz

    cp h
    ld b, b
    ret c

    ldh [$fff8], a
    nop
    or b
    ld b, b
    ld h, b
    nop

jr_016_6f51:
    ld a, b
    or b
    db $fc
    ld l, b
    db $fc
    ld h, b
    and $18
    sbc [hl]
    nop
    add b
    nop
    add b
    nop

jr_016_6f5f:
    add b
    nop
    add b

jr_016_6f62:
    nop
    nop
    nop

jr_016_6f65:
    nop
    nop

jr_016_6f67:
    nop
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
    add b
    inc a
    ret nz

    jr jr_016_6f67

    ld hl, sp+$60
    db $fc
    nop
    db $ec
    db $10
    sbc h
    ld h, b
    ldh a, [rP1]
    xor $14
    call nc, $1020
    ldh [$ff58], a
    or b
    ld hl, sp-$40
    db $f4
    ld [$c038], sp
    ret nz

    nop
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_6f97:
    ld [hl-], a
    rra
    ccf
    rra
    ld [hl], l
    ccf
    ld l, e
    ld a, $47
    dec a
    ret nz

    nop
    jr nc, jr_016_6f65

    jr jr_016_6f97

    xor h
    ld hl, sp-$24
    ld a, b
    or $2c
    ld [$fad4], a
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $070c
    ld a, [de]
    rrca
    dec e
    rrca

jr_016_700b:
    scf
    ld a, [de]
    dec hl
    dec d
    cpl
    inc de
    ldh a, [rP1]
    ld [$0cf0], sp
    ld hl, sp-$5a
    db $fc
    sbc [hl]
    ld a, h
    rst $10
    ld a, [hl]
    db $eb
    cp [hl]
    pop af
    sbc $07
    ld [bc], a
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7f
    inc a
    ld a, [hl]
    dec a
    cp $99
    rst $38
    cp d
    cp $99
    db $fd
    ldh a, [c]
    rst $30
    ld [$324f], sp
    rst $38
    ld [$78ff], sp
    ld b, b
    add b
    ld b, b
    add b
    ldh [rP1], a
    sub b
    ld h, b
    jr nz, jr_016_700b

    ret nz

    nop
    add b

jr_016_704e:
    nop
    ret nz

    nop
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    rst $38
    ld a, a
    db $fd
    ld a, a
    rst $38
    ld a, c
    ld a, e
    ld bc, $0103
    rst $38
    ld h, b
    db $fc
    rrca
    rst $18
    and d
    rst $28
    sub b
    cp $c1
    rst $38
    ret nz

    call c, $d8bf
    cp a
    ret nz

    nop
    ld b, b
    add b
    ldh [rP1], a
    ldh a, [$ffc0]
    add sp, $50
    db $e4
    ld e, b
    db $f4
    ld c, b
    call nc, $f808
    scf
    rst $38
    ld e, b
    ld hl, sp+$50
    cp b
    ld d, b
    add sp, $10
    jr c, jr_016_708d

jr_016_708d:
    nop
    nop
    nop
    nop
    ld a, e
    or b
    ld sp, hl
    jr nc, jr_016_704e

    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr nc, jr_016_709d

jr_016_709d:
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7f
    inc a
    ld a, [hl]
    dec a
    ld a, a
    ld [hl], $7f
    scf
    cp $99
    rst $38
    cp d

jr_016_70b5:
    cp $99
    db $fd
    ldh a, [c]
    rst $38
    nop
    rst $20
    add hl, de
    rst $38
    ld b, h
    rst $38
    inc e
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ldh [rP1], a
    db $10
    ldh [$ffe0], a
    nop
    ret nz

    nop
    ret nz

    nop
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    ld a, e
    ld bc, $010f
    rra
    inc c
    rla
    dec bc
    rst $38
    sbc b
    cp d
    rst $00
    rst $28
    pop de
    rst $30
    ret z

    cp $c1
    db $fc
    jp $dfee


    db $ec
    rst $18
    and b
    ld b, b
    jr nz, jr_016_70b5

    ret nz

    nop
    or b
    ret nz

    ret z

    ld [hl], b
    db $f4
    ld c, b
    ld l, [hl]
    add b
    ld b, b

jr_016_7100:
    add b
    rst $38
    jr jr_016_7128

    jr jr_016_7142

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    ld a, d
    ld a, a
    ld b, $17
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_016_7128:
    nop
    rlca
    nop
    ld c, $05
    rrca
    inc b
    rrca
    rlca
    ccf
    db $d3
    cp a
    ld d, a
    ld a, a
    inc sp
    ccf
    ld e, $ff
    nop
    db $ed
    ld b, d

jr_016_713d:
    rst $38

jr_016_713e:
    ret


    rst $38
    add e
    ret z

jr_016_7142:
    jr nc, @-$16

    ld d, b
    ret nc

    jr nz, jr_016_7100

    ld b, b
    db $e4
    jr jr_016_713e

    ld c, h
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
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
    ld bc, $70ff
    db $fc
    ld l, a
    ld a, [$df07]
    and c
    rst $28
    sub b
    rst $38
    pop bc
    rst $38
    db $e3
    ei
    rst $30
    db $fc
    nop
    ld h, [hl]
    sbc b
    db $db
    ld h, b
    ldh [rLCDC], a
    ld h, b
    add b
    jr nc, jr_016_713d

    inc a
    ret nc

    inc [hl]
    ret c

    ld a, a
    ld a, $7f
    dec a
    ld a, a
    inc e
    ld a, [hl]
    inc l
    cp $6c
    xor h
    ld e, b
    db $e4
    jr jr_016_71cc

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
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7f
    inc a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
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
    ld bc, $0103
    rst $38
    ld h, b
    db $fc
    rrca
    rst $18
    and d
    rst $28
    sub b
    cp $c1
    rst $38

jr_016_71cc:
    ret nz

    call c, $d8bf
    cp a
    ret nz

    nop
    ld b, b
    add b
    rst $20
    nop
    ld a, [$e4c4]
    ld e, b
    ld hl, sp+$40
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ld hl, sp+$37
    rst $38
    ld e, b
    ld a, d
    inc e
    ld [hl-], a
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    or b
    ld hl, sp+$30
    or b
    ld h, b
    sub b
    ld h, b
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
    inc bc
    jr jr_016_7218

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

jr_016_7218:
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    sub $7c
    cp a
    ld c, a
    sbc a
    ld l, c
    ld e, a
    dec hl
    ccf
    add hl, de
    rra
    rrca
    rrca
    nop
    inc bc
    nop
    rlca
    ld [bc], a
    call nz, $e478
    sbc b
    ld a, [$f2a4]
    adc h
    and $18
    cp a
    ld b, b
    ld a, a
    sub b
    rst $38
    jr nc, jr_016_7281

    nop
    ld [hl], a
    ld a, [hl+]
    ld a, a
    ld h, $7e
    dec a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    rst $38
    ld [hl], b
    db $fc
    ld h, e
    ld a, h
    rrca
    rst $18
    ld [hl+], a
    ld l, a
    sub b
    db $fc
    inc bc
    ld a, h
    add a
    xor $df
    ld b, b
    add b
    ld b, b
    add b
    cp h
    nop
    and $18
    db $db
    ldh [$ffe0], a
    ld b, b
    ld a, b
    add b
    ld h, h
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
    dec c
    inc bc

jr_016_727d:
    inc b
    inc bc
    inc bc
    nop

jr_016_7281:
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
    ldh a, [c]
    db $fc
    ldh [c], a
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
    ld e, a
    daa
    ld c, a
    inc [hl]
    cpl
    dec d
    rra
    inc c
    rrca
    rlca
    rlca
    nop
    inc bc
    ld bc, $02ff
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d0fe
    ld sp, hl
    add $f2
    adc h
    rst $18
    jr nz, jr_016_727d

    ld d, b
    rst $38
    jr nz, @+$79

    ld a, [hl+]
    ld a, a
    ld h, $7e
    dec a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    ld a, b
    cp $61
    db $fc
    rrca
    ld e, a
    and d
    xor $11
    ld a, h
    add e
    cp $c7
    ldh a, [$ffef]
    rst $18
    nop
    ld h, d
    sbc h
    ld c, h
    or b
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ld a, b
    add b
    ld h, h
    sbc b
    db $fc
    ld h, b
    rst $38
    ld a, a
    rst $38
    ld a, c
    ld a, e
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld a, [bc]
    dec b
    ld c, $01
    inc bc
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [$ffe0], a
    ret nz

    ldh [$ffc0], a
    ret nz

    add b
    ld b, b
    add b
    ret nz

    nop
    ld a, [$e2fc]
    sbc h

jr_016_7315:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    dec h
    rra
    ld a, [hl+]
    rra
    ccf
    rra
    inc [hl]
    rra
    ldh [rP1], a
    jr jr_016_7315

    inc b
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    adc d
    db $fc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, $1d23
    scf
    ld [$163f], sp
    rra
    inc b
    rra
    inc bc
    rra
    ld [$041f], sp
    ld a, a
    rla
    ldh a, [c]
    inc l
    cp $90
    cp $b4
    cp $90
    ld sp, hl
    and $fe
    db $10
    ld a, h
    and b
    cp $68
    cp a
    ld c, d
    cp a
    ld b, b
    ld e, [hl]
    ld hl, $057a
    cp a

jr_016_736a:
    ld b, b
    sbc $65
    rst $18
    ld h, [hl]
    sbc a
    ld h, a
    ei
    call nc, $c8f7
    cp $00
    ld e, [hl]
    and b
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
    rla
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
    add sp, -$30
    ldh a, [$ffc0]
    ldh [$ffc0], a
    ret nz

    nop
    cp a
    ld c, d
    cp e
    ld b, h
    ld e, [hl]
    ld hl, $053a
    ld e, a
    jr nz, jr_016_736a

    ld b, l
    rst $18
    ld h, [hl]
    rst $18
    ld h, a
    ei
    call nc, $c8f7
    cp $00
    ld e, h
    and b
    ei
    inc b
    ld a, l
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
    rra
    dec bc
    rrca
    inc bc
    rlca
    ld bc, $0003
    ld sp, hl
    sub $fe
    sub b
    ld hl, sp-$70
    ld hl, sp-$70
    ld hl, sp-$30
    ldh a, [$ffc0]
    ldh [$ff80], a
    ret nz

    nop
    cp a
    ld c, d
    cp a
    ld b, b
    ld e, c
    ld h, $36
    add hl, bc
    ld e, d
    dec h
    cp a
    ld b, b
    sbc $65
    rst $18
    ld h, [hl]
    ei
    call nc, $c8f7
    sbc $20
    ld l, h
    sub b
    ld e, d
    and h
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
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
    nop
    nop
    inc hl
    dec e
    scf
    ld [$163f], sp
    rra
    inc b
    rra
    dec bc
    rra
    inc c
    ld a, a
    rla
    nop
    nop
    ldh a, [c]
    inc l
    cp $90
    cp $b4
    db $fd
    sub d
    ld sp, hl
    and $fe

jr_016_743e:
    jr jr_016_743e

    ld a, b
    cp a
    ld c, d
    cp a
    ld b, b
    ld e, d
    dec h
    cp a
    ld b, b
    sbc $65
    rst $18
    ld h, [hl]
    sbc a
    ld h, a
    ld a, a
    dec bc
    ei
    call nz, $c8f7
    sbc $20

jr_016_7457:
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
    ld bc, $0003
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

    ld hl, sp-$80
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_748e

    jr nz, jr_016_74a8

    ld [hl+], a
    rra
    ld d, l
    ccf
    ld l, a

jr_016_748e:
    ccf
    ld a, a
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_7457

    ld [$88f0], sp
    ldh a, [rHDMA4]
    ld hl, sp-$14
    ld hl, sp-$04
    ld hl, sp+$7a
    ccf
    inc [hl]
    rra
    jr z, @+$19

    rla

jr_016_74a8:
    ld [$033c], sp
    ld c, e
    inc [hl]
    sbc a
    ld l, b
    ld a, a
    nop
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_751a

    add b
    and b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$00
    ld e, a
    jr nz, jr_016_751b

    jr z, jr_016_7536

    rrca

jr_016_74c7:
    dec sp
    inc b
    ld e, a
    inc hl
    cp a
    ld b, a
    rst $18
    ld l, a
    sbc $6f
    db $f4
    ld [$20dc], sp
    inc e
    ldh [$fffc], a
    nop
    ld a, [$fdc4]
    ldh [c], a
    ld sp, hl
    or $f9
    or $9e
    ld l, l
    ld a, [hl]
    dec c
    rra
    ld [$081c], sp
    inc e
    ld [$0814], sp
    jr jr_016_74ef

jr_016_74ef:
    nop
    nop
    ld sp, hl
    halt
    ld a, [hl]
    or b
    jr c, jr_016_74c7

    cp b
    ld d, b
    ld hl, sp+$10
    xor b
    db $10
    jr jr_016_74ff

jr_016_74ff:
    nop
    nop
    ld a, d
    ccf
    inc [hl]
    rra
    jr z, @+$19

    rla
    ld [$037c], sp
    adc e
    ld [hl], h
    ld a, a
    ld [$003f], sp
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_757a

jr_016_751a:
    add b

jr_016_751b:
    and b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$00
    ld e, a
    jr nz, jr_016_757c

    daa
    ld [hl], b
    rrca
    dec sp
    inc b
    ld e, a
    inc hl
    cp a
    ld b, a
    rst $18
    ld l, a
    rst $18
    ld l, a
    db $f4
    ld [$c03c], sp
    inc e

jr_016_7536:
    ldh [$fffc], a
    nop
    ld a, [$fdc4]
    ldh [c], a
    ld sp, hl
    or $79
    or $9f
    ld l, [hl]
    ld a, [hl]
    dec c
    ld e, $09
    ld e, $09
    dec d
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld a, c
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
    ld a, d
    ccf
    inc [hl]
    rra
    jr z, @+$19

    ld [hl], a
    ld [$639c], sp
    ld c, e
    inc [hl]
    ccf
    ld [$001f], sp
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_75da

jr_016_757a:
    add b
    and b

jr_016_757c:
    ld b, b
    ldh a, [rNR41]
    ldh a, [rP1]
    ccf
    nop
    ld e, h
    inc hl
    ld d, b
    cpl
    ld a, b
    rlca
    ccf
    nop
    ld d, a
    dec hl
    cp a
    ld b, a
    rst $18
    ld l, a
    ld hl, sp+$00
    ld [hl], h
    adc b
    inc e
    ldh [rWave_c], a
    ret nz

    db $fc
    nop
    ld a, [$fdc4]
    ldh [c], a
    ld a, c
    or $df
    ld l, [hl]
    sbc [hl]
    ld l, l
    ld a, [hl]
    dec c
    ld a, [bc]
    dec b
    dec bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, c
    or [hl]
    ld a, c
    or [hl]
    cp $30
    ret nc

    jr nz, jr_016_760a

    and b
    and b
    nop
    nop
    nop
    nop
    nop
    ld a, d

jr_016_75c2:
    ccf
    inc [hl]
    rra
    jr z, @+$19

    rla
    ld [$033c], sp
    ld c, e
    inc [hl]
    sbc a
    ld l, b
    ld a, a
    nop
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_763a

jr_016_75da:
    add b
    and b
    ld b, b
    ldh a, [rNR41]
    ld hl, sp+$00
    ld e, a
    jr nz, jr_016_763b

    jr z, @+$72

    rrca
    ccf
    nop
    ld e, a
    daa
    cp a
    ld c, a
    rst $18
    ld l, a
    sbc $6f
    db $f4
    ld [$20dc], sp
    inc e
    ldh [$fffc], a
    nop
    ld a, [$fde4]
    ldh a, [c]
    ld sp, hl
    or $f9
    or $9e
    ld l, a
    ld a, [hl]
    dec c
    ld e, $0d
    ld d, $0d
    ld a, [de]

jr_016_760a:
    dec c
    ld l, $19
    dec h
    jr jr_016_7629

    nop
    ld sp, hl
    halt
    ld a, [hl]
    or b

jr_016_7615:
    ld a, b
    or b
    ld l, b
    or b
    ret c

    jr nc, @-$2a

    jr c, jr_016_75c2

    jr jr_016_7638

    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_7638

jr_016_7629:
    jr c, jr_016_764a

    dec a
    rra
    ld [hl], $1f
    dec hl
    rra
    ldh [rP1], a
    jr jr_016_7615

    inc b
    ld hl, sp+$0c

jr_016_7638:
    ld hl, sp+$0e

jr_016_763a:
    db $fc

jr_016_763b:
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    jp c, Jump_000_20fc

    rra
    inc sp
    dec c
    ccf
    db $10
    rra
    ld b, $0f

jr_016_764a:
    inc b
    rrca
    inc bc
    rra
    ld [$011e], sp
    and d
    call c, $28f6
    cp $94
    cp $b0
    ld sp, hl
    sub [hl]
    cp $e0
    db $fc
    ld [$c03c], sp
    rra
    ld [$1b3c], sp
    ld a, $1b
    rra
    ld bc, $000f
    inc de
    inc c
    ld c, $00
    nop
    nop
    db $fc
    adc b
    ld e, $ec
    cp [hl]
    ld l, h
    db $fc
    ld b, b
    ld c, h
    jr nc, jr_016_76b4

    nop
    nop
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
    jr jr_016_769e

    jr c, @+$21

    sub b
    sub b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_016_769e:
    ld hl, sp+$0e
    db $fc
    dec a
    rra
    ld [hl], $1f
    dec hl
    rra
    jr nz, jr_016_76c8

    inc sp
    dec c
    ccf
    ld [de], a
    rra
    ld bc, $060f
    ld e, [hl]
    db $fc
    or [hl]

jr_016_76b4:
    db $fc
    jp c, $a2fc

    call c, $28f6
    cp $f4
    cp $c0
    ld sp, hl
    or [hl]
    rrca
    inc bc
    rra
    ld [$001f], sp
    rra

jr_016_76c8:
    ld [$193e], sp
    ccf
    jr @+$1b

    ld b, $1e
    nop
    cp $e0
    db $fc
    ld [$807c], sp
    db $fc
    ld [$4cbe], sp
    ld a, [hl]
    inc c
    inc a
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld b, $07
    inc bc
    inc bc
    nop
    ld b, $01
    rrca
    ld b, $0f
    rlca
    ld sp, hl
    ld h, [hl]
    db $fd
    ld [$64fa], a
    db $f4
    ret z

    db $fc
    nop
    ld [hl], d
    xor h
    ld sp, hl
    ld b, [hl]
    cp $c0
    rlca
    nop
    ld b, $03
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    sbc h
    ld h, b
    ld hl, sp-$10
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
    nop
    nop
    rlca
    nop
    jr jr_016_7730

    jr nc, jr_016_774a

    ld h, h
    ccf
    ld a, d
    dec a
    rst $10

jr_016_7730:
    ld a, c
    ld b, b
    ld b, b
    inc b
    inc b
    ret nz

    nop
    ld hl, $30c1
    ldh [$ff98], a
    ldh a, [$ff78]
    ldh a, [$ff5c]
    ld hl, sp-$71
    ld [hl], h
    sbc a
    ld l, a
    ld e, a
    inc l
    ccf
    dec bc
    ccf

jr_016_774a:
    rra
    rra
    rrca
    ld l, a
    nop
    rst $38
    ld h, c
    xor h
    ld hl, sp-$3c
    ld a, b
    db $e4

jr_016_7756:
    sbc b
    db $f4
    xor b

jr_016_7759:
    add sp, -$70
    ret nc

    jr nz, jr_016_7756

    nop
    call nz, $ff38
    ld a, [hl]
    ld a, a
    inc c
    dec c
    ld [bc], a
    dec c
    ld b, $06
    ld bc, $040b
    rrca
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $f4
    ld [$10f8], sp
    db $fc
    ld h, b
    db $ec
    db $10
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_7790

    jr nz, jr_016_77aa

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_7790:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_7759

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp+$7a
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_77aa:
    dec bc
    ld a, $01
    ld h, h
    dec de
    ld c, a
    inc [hl]
    cp h
    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld e, b
    and b
    db $fc
    nop
    ld a, $cc
    cp $2c
    ccf
    ld [$001f], sp
    rla
    ld [$1639], sp
    rla
    ld [$000f], sp
    ld b, $00
    nop
    nop
    db $fc
    db $10
    ldh a, [rP1]
    ret nc

    jr nz, @+$3a

    ret nc

    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ld [$4008], sp
    ld b, b
    rlca
    nop
    sbc b
    add a
    jr nz, jr_016_780a

    jr nz, jr_016_780c

    ld d, b
    ccf
    ld [hl], h
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    ld [hl], h
    dec hl
    ld a, [hl]
    ld hl, $1b24
    ld c, a
    jr nc, @-$42

    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld e, h

jr_016_780a:
    xor b
    db $fc

jr_016_780c:
    ld [$d038], sp
    ldh a, [rNR41]
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rla
    ld [$1639], sp
    rla
    ld [$000f], sp
    ld b, $00
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nc

    jr nz, jr_016_7862

    ret nc

    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    ldh [c], a
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [$ff60]
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [c], a

jr_016_7862:
    cp h
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    nop
    nop

jr_016_786d:
    nop
    nop
    nop
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
    inc d
    rrca
    ld a, [de]
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
    jr jr_016_786d

    inc b
    ld hl, sp-$74
    ld hl, sp+$2f
    rra
    inc [hl]
    rra
    inc hl
    dec e
    daa
    ld a, [de]
    ccf
    rlca
    ccf
    db $10
    rra
    rlca
    rla
    dec bc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$fef4]
    ldh a, [$fffe]
    add h
    db $fc
    ldh a, [$fff4]
    add sp, $2f
    rra
    dec [hl]
    ld e, $23
    dec e
    daa
    dec de
    ccf
    inc b
    ccf
    ld d, $1f
    inc b
    rla
    dec bc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld a, [$fef4]
    sub b
    cp $b4
    db $fc
    sub b
    db $f4
    add sp, $03
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    rst $38
    rlca
    rst $38
    ld l, d
    ld a, a
    add hl, sp
    ccf
    nop
    ldh [rP1], a
    jr @-$1e

    inc h
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld a, [$3f94]
    ld a, [bc]
    ccf
    ld [$0b3f], sp
    rra
    dec c
    rra
    dec c
    rra
    ld [$050e], sp
    rlca
    nop
    cp $b0
    cp $94

jr_016_7905:
    cp $70
    db $fc
    ld [hl], b
    db $fc
    ld h, b
    ldh a, [c]
    inc c
    add hl, bc
    or $fe
    ld [$0007], sp
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
    cp $8c
    ld a, [hl]
    add h
    inc a
    ret nz

    add sp, $70
    ld [hl], b
    nop
    ret c

    jr nz, jr_016_799a

    db $10
    inc a
    nop
    rlca
    nop
    jr jr_016_793c

    jr nz, jr_016_7956

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_793c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_016_7905

    ld [$08f0], sp
    ldh a, [rNR22]
    ld hl, sp+$5f
    ld a, [$f8be]
    db $ec
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_7956:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, jr_016_799d

    ld [$103f], sp
    ld e, h
    ldh a, [$ffac]
    ret nc

    ld e, h
    xor b
    ld hl, sp+$10
    ld a, b
    and b
    ldh a, [rNR41]
    ldh [rP1], a
    ldh [rP1], a
    ld a, a
    jr nc, jr_016_79f3

    jr nc, jr_016_79ae

    rlca
    dec bc
    inc b
    dec e
    ld c, $3e
    nop
    ld d, $08
    inc c
    nop
    ldh [rP1], a
    ldh [rP1], a

jr_016_7985:
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
    ld bc, $0600
    ld bc, $070d
    dec de
    rrca
    dec e

jr_016_799a:
    rrca
    ld [hl], $1b

jr_016_799d:
    cpl
    inc d
    rst $28
    db $10

jr_016_79a1:
    ldh [rP1], a
    jr jr_016_7985

    inc b
    ld hl, sp+$42
    db $fc
    or [hl]
    call c, $3ec7
    db $eb

jr_016_79ae:
    cp [hl]
    rst $18
    cp [hl]
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
    xor l
    rst $38
    ld b, h
    ld a, a
    inc sp
    ccf
    dec de
    rra
    ld [$030c], sp
    dec bc
    inc b
    rrca
    inc b
    db $eb
    sbc $e1
    sbc $f2
    xor h
    db $e4
    sbc b
    ret c

    jr nz, @+$66

    sbc b
    ldh a, [c]
    ld c, h
    db $fc
    jr nz, jr_016_79a1

    ld b, d
    ld e, a
    ld h, $5f
    ld h, $fe
    ld e, b
    ld a, [hl]
    nop
    ei
    inc b
    rst $20
    jr jr_016_7a2e

    nop
    nop
    nop

jr_016_79f3:
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_016_7a1e

    inc [hl]
    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_7a07:
    ret nz

    nop
    jr nc, @-$3e

    ld [$14f0], sp
    ld hl, sp+$4c
    ld hl, sp+$6b
    ccf
    ld a, a
    dec a
    ld d, l
    ld a, [hl-]
    ld c, a
    ld sp, $265f
    ccf
    rla
    rra

jr_016_7a1e:
    ld b, $0f
    inc bc
    or [hl]
    call c, $9c6e
    ldh a, [c]
    ld l, h
    db $f4
    add sp, -$04
    ld d, b
    ld hl, sp+$50
    db $fc

jr_016_7a2e:
    ld d, b
    cp $e4
    ld bc, $0100
    nop

jr_016_7a35:
    ld bc, $0300
    ld bc, $0001
    ld bc, $0200
    ld bc, $0003
    rst $38
    add b
    rst $38
    ld h, h
    rst $38
    jr c, jr_016_7a07

    ret c

    rst $18
    jr nz, jr_016_7a35

    ld b, $67
    add b
    ret nz

    nop
    ldh a, [$ffc0]
    db $ec
    ret nc

    ldh a, [c]
    inc a
    ld sp, $b1fe
    ld a, [hl]
    add c
    ld a, [hl]
    jp nz, Jump_000_3c3c

    nop
    nop
    nop
    nop
    nop
    ld d, a

jr_016_7a66:
    ccf
    ld b, d
    ccf
    ld l, a
    inc d
    ld a, a
    add hl, hl
    ccf
    dec c
    ccf
    add hl, bc
    nop
    nop
    nop
    nop
    call nc, $c4b8
    jr c, jr_016_7a66

    ret nc

    db $fc

jr_016_7a7c:
    jr z, jr_016_7a7c

    ld h, b
    rst $38
    ld h, $0f
    ld b, $0f
    inc b
    rlca
    inc bc
    rrca
    inc bc
    rlca
    nop

jr_016_7a8b:
    rrca
    nop
    inc de
    inc c
    ld e, $00
    rst $38
    ld hl, sp-$01
    nop
    rst $18
    jr nz, jr_016_7a8b

    inc e
    cp l
    nop
    daa
    jr jr_016_7abc

    nop
    nop
    nop
    ldh a, [$ffc0]
    db $ec
    db $10
    ld h, d
    db $fc
    ld [hl], c
    cp $71
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
    xor a
    ld a, a
    add l
    ld a, [hl]
    rst $18

jr_016_7abc:
    add hl, hl
    rst $38
    ld d, d
    ld a, a
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    ld [hl], b
    adc b
    ld [hl], b
    ret c

    and b
    cp $50
    ld sp, hl
    add $3f
    inc d
    ccf
    inc de
    rra
    inc c
    rra
    ld b, $0f
    inc bc
    rra
    inc bc
    cpl
    db $10
    inc a
    nop
    rst $38
    sub [hl]
    rst $38
    pop hl
    rst $38
    nop
    ld h, l
    cp b
    cp l
    nop
    and [hl]
    jr jr_016_7b0c

    nop
    nop
    nop
    adc h
    ld [hl], b
    ldh [c], a
    ld a, h
    pop af
    cp $71
    cp $01
    cp $82
    ld a, h
    ld a, h
    nop
    nop
    nop
    ld d, a
    ccf
    ld b, d
    ccf
    ld l, a
    inc d
    ld a, a
    add hl, hl
    ccf
    dec c
    ld a, a

jr_016_7b0c:
    add hl, hl
    ld a, a
    daa
    ccf
    db $10
    ld e, $0d
    rrca
    ld b, $1f
    ld b, $2e
    db $10
    inc a
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

    jr nz, jr_016_7b46

    ld b, b
    ccf
    ld h, e
    ccf
    sub $7d
    rst $38
    ld l, d
    rst $28
    ld d, a
    add b
    nop
    ld h, b
    add b
    ld [hl], b
    ldh [$ffd8], a
    ldh a, [$ff6c]
    ld hl, sp-$2c
    ld hl, sp-$7c
    ld a, b
    db $e4
    sbc b
    cp a
    ld c, c
    ld e, a
    dec hl
    ccf

jr_016_7b46:
    add hl, de
    rra
    rlca
    rrca
    nop
    add hl, bc
    ld b, $1f
    ld [$071f], sp
    db $f4
    xor b
    add sp, -$70
    ret z

jr_016_7b56:
    or b
    ret nc

    jr nz, jr_016_7b56

    nop
    ldh [c], a
    call c, $e0fc
    ld hl, sp+$00
    inc bc
    ld bc, $0001
    ld bc, $0300
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    add $38
    or d
    ld a, h
    ld [hl], c
    cp $61
    cp $01
    cp $82
    ld a, h
    db $fc
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld b, $07
    inc bc
    scf
    nop
    ld a, c
    ld [hl], $7f
    jr c, jr_016_7bcf

    ld [bc], a
    ld sp, hl
    ld h, [hl]
    db $fd
    ld [$64fa], a
    db $f4
    ret z

    db $fc
    nop
    ldh a, [c]
    call z, $e2fd
    cp $00
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld b, $07
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0207
    ccf
    inc b

jr_016_7bc1:
    ld sp, hl
    ld h, [hl]
    db $fd
    ld [$64fb], a
    db $f4
    set 7, e
    inc b
    rra
    db $e3
    rst $38
    rla

jr_016_7bcf:
    rst $38
    adc b
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
    ret nz

    nop
    and b
    ld b, b
    jr jr_016_7bc1

    ccf
    ld e, $3f
    add hl, de
    add hl, de
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    ld a, a
    add b
    rst $30
    jr c, @+$01

    nop
    rst $20
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    ld h, d
    db $fc
    ld [hl], c
    cp $71
    cp $01
    cp $82
    ld a, h
    db $fc
    nop
    nop
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    ld b, $07
    inc bc
    inc bc
    nop
    ld a, [hl]
    ld bc, $7aff
    rst $38
    ld l, h
    scf
    nop
    inc bc
    ld bc, $0001
    ld [bc], a

Call_016_7c28:
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ccf
    inc [hl]
    rra
    jr z, @+$19

    rra
    nop
    inc h
    dec de
    ld c, a
    jr nc, jr_016_7c7f

    nop
    nop
    nop
    xor h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_7cac

    add b
    db $ec
    ld b, b
    cp $0c
    ld a, a
    inc bc
    ld a, a
    ld bc, $007f
    ld b, c
    ld a, $ee
    ld [hl], a
    rst $30
    nop
    or l
    ld b, d
    ld h, e
    nop
    db $fc
    jr nz, @-$1b

    call c, $dfec
    adc $3f
    add $3f
    ldh [$ff1f], a
    sub b
    rrca
    rrca
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

jr_016_7c7f:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_7c90

    jr nz, jr_016_7caa

    jr nz, jr_016_7cac

    ld d, b
    ccf
    ld [hl], h

jr_016_7c90:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp+$3d
    rra
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [bc]

jr_016_7caa:
    dec b
    rrca

jr_016_7cac:
    nop
    ld [de], a
    dec c
    daa
    jr jr_016_7d10

    db $fc
    or $fc
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    ld a, $d0
    rst $38
    ld d, $ff
    jr nz, @+$01

    ld b, b
    ld a, a
    nop
    jr nz, @+$21

    ld [hl], a
    dec sp
    ld a, e
    nop
    ld e, d
    ld hl, $0031
    db $fc
    ld [hl], b
    di
    inc c
    call z, $ce3f
    ccf
    add $bf
    ret nz

    ccf
    ldh [$ff1f], a
    sbc a
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_016_7cf8

    ld b, b
    ccf
    ld b, b
    ccf
    and b
    ld a, a
    add sp, $7f
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b

jr_016_7cf8:
    add b
    db $10
    ldh [rNR10], a
    ldh [$ff28], a
    ldh a, [$ffb8]
    ldh a, [$fff5]
    ld a, a
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    ld l, b
    rla
    sbc l
    ld h, d
    ld c, b
    scf
    rst $38

jr_016_7d10:
    ld b, b
    ld a, b
    ldh a, [$ffd8]
    ldh a, [$ffb0]
    ldh [$ff50], a
    and b
    and b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    ldh a, [rLCDC]
    rst $38
    ld h, b
    ld a, a
    nop
    cpl
    db $10
    ld [hl], l
    ld a, [hl-]
    ld a, e
    nop
    ld e, c
    jr nz, jr_016_7d5e

    nop
    nop
    nop
    call z, $b2b0
    ld a, h
    ld [hl], c
    cp $61
    cp $01
    cp $01
    cp $82
    ld a, h
    ld a, h
    nop
    push af
    ld a, a
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    ld l, b
    rla
    sbc l
    ld h, d
    ld c, b
    scf
    ld a, a
    nop
    rst $38
    ld h, b
    rst $38
    ld b, b
    ld l, a
    db $10
    ld [hl], l
    ld a, [hl-]
    ld a, e
    nop
    ld e, c
    jr nz, @+$32

jr_016_7d5e:
    nop
    nop
    nop
    nop

jr_016_7d62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_7d6d:
    nop
    nop
    ret nz

    nop
    call nc, $c4b8
    jr c, jr_016_7d62

jr_016_7d76:
    ret nc

    rst $38
    jr z, jr_016_7d76

    ld h, e
    rst $38
    inc l
    rst $38
    jp nz, $01ff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_7d6d

    call nz, $e2f8
    db $fc
    ld h, l
    cp b
    cp l
    nop
    ld h, $18
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
    cp $01
    cp $82
    ld a, h

jr_016_7da7:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_7dca

    jr c, jr_016_7ddc

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_016_7da7

    inc b
    ld hl, sp+$0c

jr_016_7dca:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    dec hl
    rra
    ld hl, $371f
    ld a, [bc]
    ccf
    inc d
    rra
    ld b, $0f

jr_016_7ddc:
    inc b
    rlca
    inc bc
    rrca
    inc b
    ld [$62dc], a
    sbc h
    or $68
    cp $94
    rst $38
    or b
    ld sp, hl
    sub [hl]
    cp $e0
    db $fc
    ld [$020f], sp
    rrca
    dec b

jr_016_7df5:
    dec b
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    rra
    ld bc, $1926
    dec a
    nop
    jr @-$1e

    jr jr_016_7df5

    inc d
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp-$44
    ldh a, [$ffae]
    ldh a, [$ff5e]
    and b
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_016_7e17:
    inc d
    rrca

jr_016_7e19:
    ld a, [de]
    rrca
    cpl
    ld e, $37
    add hl, de
    cpl
    inc de
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp-$06
    inc b
    cp $f8
    rst $38
    db $fc
    ld sp, $200f
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ldh a, [$ff7f]
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38

jr_016_7e49:
    ld [hl], b
    rst $38
    ld hl, $27ff
    rst $18
    rst $38
    xor a
    add b
    nop
    ld b, b
    add b
    jr nz, jr_016_7e17

    jr nz, jr_016_7e19

    ld [hl], b
    ldh [$fff0], a
    ldh [$fff0], a
    ldh [$fff0], a
    ldh [$fffe], a
    ld a, a
    ldh a, [$ff7f]
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_016_7e8a

    db $10
    rrca
    add hl, sp
    rla
    ccf
    ld bc, $df21
    jr nz, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    cp $fe
    ld hl, sp-$10
    ldh [rSVBK], a
    ldh [rNR41], a
    ret nz

jr_016_7e87:
    jr nz, jr_016_7e49

    ld b, b

jr_016_7e8a:
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
    stop
    jr c, jr_016_7eaf

    cp $00
    ld b, $01
    add hl, de
    rlca
    daa
    rra
    ld c, a
    ccf
    rst $38
    rra
    rst $38
    ld c, b
    ld a, a
    ld d, h

jr_016_7eaf:
    ld a, a
    ld d, c
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
    ld hl, sp-$12
    db $10
    cp $20
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_7e87

    sub b
    ldh [$fff8], a
    ret nz

    ret c

    sub b
    add b
    nop
    jr nz, @+$22

    daa
    ld a, [de]
    ccf
    rlca
    ccf
    db $10
    ccf
    daa
    or a
    xor e
    adc a
    add b
    sbc [hl]
    adc l
    rra
    ld [$a4fa], sp
    cp $a0
    cp $a4
    db $fc
    and b
    db $f4
    adc b
    db $fd
    ld h, c
    di
    dec l
    ld sp, hl
    sub $a8
    xor b
    and b
    and b
    jr nz, @+$22

    nop
    nop
    ld [$4808], sp
    ld c, b

jr_016_7efd:
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    cpl
    daa
    and a
    and b
    ld h, $21
    ld c, $07
    ld b, a
    ld b, b
    ld c, a
    ld b, b
    inc de
    inc c
    sbc [hl]
    add b
    cp $d8
    ld hl, sp+$00
    ld [hl-], a
    jp nz, $72ea

    ld [hl], b
    nop
    ld a, b
    nop
    call z, Call_000_3eb0
    ld [bc], a
    ld c, b
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
    ld b, b
    ld b, b
    ld b, b
    rlca
    ld bc, $071e
    jr c, @+$21

    ld [hl], b
    ccf
    ldh [$ff1f], a
    cp a
    jr z, jr_016_7efd

    sub h
    ccf
    ld de, $fcaf
    ld [hl], e
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$02
    db $10
    cp $20
    nop
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ld [hl], b
    ldh [rWave_8], a
    ret nz

    ld c, b
    add b
    adc b
    ld [$a8a8], sp
    daa
    ld a, [de]
    ccf
    rlca
    ccf
    db $10
    ccf
    daa
    scf
    dec hl
    xor a
    and b
    sbc [hl]
    adc l
    rra
    ld [$a4fa], sp
    cp $a0
    cp $a4
    db $fc
    and b
    db $f4
    adc b
    db $fc
    ld h, b
    ldh a, [c]
    inc l
    ld sp, hl
    sub $a0
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
    rla
    ld d, a
    ld d, b
    ld d, [hl]
    ld d, c
    ld c, [hl]
    ld b, a
    rlca
    nop
    rrca
    nop
    sub e
    adc h
    rra
    ld bc, $d8fe
    db $fc
    inc b
    ld sp, $e9c1
    ld [hl], c
    ld [hl], b
    nop
    ld a, b
    nop
    ld c, l
    ld sp, $417d
    db $10
    db $10
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
