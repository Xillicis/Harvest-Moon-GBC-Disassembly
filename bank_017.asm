; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    rla
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
    cpl
    ld de, $0000
    ldh [rP1], a
    db $18, $e0
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, $2cf2
    dec hl
    inc d
    jr nc, jr_017_4034

    dec [hl]
    ld a, [bc]
    add hl, de
    ld b, $09
    rlca
    dec de
    rlca
    dec h
    dec de
    dec sp
    inc d
    ld [$0614], a

jr_017_4034:
    ld hl, sp+$56
    xor b
    ld c, h
    or b
    ret z

    ldh a, [$ffee]
    ld [hl], b
    ld d, d
    db $ec
    xor $14
    jr c, jr_017_4052

    dec e
    inc bc
    add hl, bc
    rlca
    ld [$0407], sp
    inc bc
    dec c
    ld [bc], a
    rra
    ld [$001e], sp
    adc [hl]

jr_017_4052:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff88]
    ldh a, [$ff90]
    ld h, b
    ret c

    jr nz, jr_017_40da

    db $10
    inc a
    nop
    jr c, jr_017_4072

    dec e
    inc bc
    add hl, bc
    rlca
    ld [$0c07], sp
    inc bc
    ld e, $09
    rra
    nop
    ld c, $00
    adc [hl]

jr_017_4072:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff88]
    ldh a, [$ff90]
    ld h, b
    ret nc

    jr nz, @+$7a

    nop
    jr nc, jr_017_4081

jr_017_4081:
    jr c, jr_017_4092

    dec e
    inc bc
    add hl, bc
    rlca
    ld [$0407], sp
    inc bc
    dec b
    ld [bc], a
    rrca
    nop
    ld b, $00
    adc [hl]

jr_017_4092:
    ld hl, sp-$24
    ldh [$ffc8], a
    ldh a, [$ff88]
    ldh a, [$ff98]
    ld h, b
    cp h
    ld d, b
    ld a, h
    nop
    jr c, jr_017_40a1

jr_017_40a1:
    nop
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
    daa
    jr jr_017_40b2

jr_017_40b2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_40b9:
    nop
    nop
    or b
    nop
    ld d, b
    and b
    ret z

    jr nc, jr_017_40fa

    rlca
    jr nz, jr_017_40e4

    jr nz, @+$21

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
    jr c, @-$3e

jr_017_40d3:
    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c

jr_017_40da:
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ff2a]
    rla
    inc d

jr_017_40e4:
    dec bc
    ld e, $01
    inc h
    dec de
    ld c, a
    jr nc, @+$81

    nop
    ccf
    nop
    rrca
    nop
    xor b
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    jr c, jr_017_40b9

    db $fc

jr_017_40fa:
    jr z, @-$02

    jr @-$06

    nop
    ldh [rP1], a
    ld [$0b07], sp
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
    jr nz, jr_017_40d3

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
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld c, [hl]
    ld sp, $1b24
    ld a, a
    jr nz, jr_017_41ab

    jr nc, jr_017_416d

    nop
    rrca
    nop
    ld [$1b07], sp
    inc c
    ld a, $01
    rra
    nop
    dec c
    nop
    nop

jr_017_413c:
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$3e

    ldh [$ffc0], a
    ldh a, [rNR41]
    and b
    ld b, b
    ret nc

    jr nz, jr_017_413c

    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld b, h
    dec sp
    ld a, a
    nop
    ld a, a
    jr nc, jr_017_419d

    nop
    rrca
    nop
    ld [$0f07], sp
    ld b, $1e
    add hl, bc
    dec bc
    inc b
    rla
    ld [$001e], sp

jr_017_416d:
    nop
    nop
    nop
    nop
    jr nz, @-$3e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_4189:
    nop
    nop
    ccf
    nop
    ld b, c
    ld a, $a4
    ld e, e
    rrca
    nop
    jr nc, jr_017_41a4

    ld h, b
    ccf
    push de
    ld a, a
    cp $6b
    cp l
    db $d3

jr_017_419d:
    rst $18
    dec l
    ld a, a
    sbc [hl]
    add b
    nop
    ld b, b

jr_017_41a4:
    add b
    ld h, b
    ret nz

    jr nc, jr_017_4189

    ldh a, [$ffe0]

jr_017_41ab:
    cp b
    ldh a, [$ff58]
    ldh a, [$ff88]
    ldh a, [rNR24]
    ld b, $2c
    rra
    ld a, $0f
    cpl
    rra
    ld d, $0f
    rrca
    nop
    dec de
    dec c
    rrca
    ld [bc], a
    rra
    db $e4
    ld a, a
    add l
    ccf
    call z, $e71f
    adc a
    ld [hl], b
    rra
    ldh [rWave_f], a
    db $db
    cp a
    ld e, [hl]
    ldh a, [c]
    call z, $d4fa
    db $f4
    ret z

    add sp, -$70
    ldh a, [rP1]
    add sp, -$30
    db $f4
    ld c, b
    add sp, $00
    rlca
    inc bc
    ld c, $03
    dec de
    inc c
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    ldh [$ff9c], a
    ld h, b
    inc l
    call nc, $8054
    adc h
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld c, b
    or b
    db $f4
    ld a, b
    ld hl, sp+$00
    call c, $9c20
    ld h, b
    ld hl, sp+$00
    nop
    nop
    inc e
    ldh [$ff9c], a
    ld l, b
    inc l
    call nc, $807c
    cp h
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    ld [$b874], sp
    cp $00
    sub a
    ld [$102e], sp
    inc e
    nop
    nop
    nop
    rra
    ldh [$ff9f], a
    ld h, b
    cpl
    sub $7f
    add e
    cp a
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]

jr_017_4245:
    sbc h
    ld [hl], b
    cp $20
    ld a, $00
    inc a
    nop
    jr jr_017_424f

jr_017_424f:
    nop
    nop
    nop
    nop
    nop
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
    jr jr_017_427c

    jr nz, jr_017_4296

    jr nz, jr_017_4298

    ld d, b
    ccf
    ld [hl], h

jr_017_427c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ldh [rP1], a
    jr nc, jr_017_4245

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$00
    nop
    nop
    nop
    nop

jr_017_4296:
    nop
    nop

jr_017_4298:
    nop
    nop
    nop
    ld bc, $2700
    nop
    dec [hl]
    ld [bc], a
    rrca
    nop
    jr nc, @+$11

    ld h, b
    ccf
    push de
    ld a, a
    xor $7b
    cp l
    db $d3
    ld e, a
    xor l
    ld a, a
    sbc [hl]
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
    rrca
    ld b, $bf
    call nc, $c53f
    cp a
    ld c, h
    cpl
    rst $00
    sub a
    ldh [$ffdf], a
    jr nz, @-$3f

    db $db
    rst $38
    sbc a
    ld e, c
    ld [hl], $38
    rra
    ld a, b
    scf
    cp b
    ld d, a
    ld e, h
    dec hl
    ccf
    ld b, $06
    nop
    nop
    nop
    ret nz

    nop
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    cp $00
    cp a
    ld b, d
    sbc l
    ld l, [hl]
    rst $38
    nop
    push hl
    ld [bc], a
    rlc h
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
    add b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    cp $00
    sbc a
    ld h, b
    jp hl


    ld [hl], a
    rst $38
    ld [de], a
    di
    nop
    or e
    ld b, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_017_4327:
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    ld [hl], $19
    daa
    ld a, [de]
    nop
    nop
    ldh [rP1], a
    jr jr_017_4327

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    cp [hl]
    call z, $2cf2
    ld h, $1b
    inc a
    inc bc
    ccf
    db $10
    dec e
    ld [bc], a
    add hl, de
    rlca
    ld [hl], a
    add hl, bc
    ld e, e
    inc h
    ld e, a
    dec h
    cp d
    ld h, h
    ld e, $e0
    ld a, [hl]
    add h
    ld e, h
    and b
    call z, $f670
    ret z

    xor $14
    cp $d4
    cpl
    inc de
    cpl
    inc de
    dec hl
    rla
    add hl, de
    rlca
    dec bc
    inc b
    dec c
    ld [bc], a
    rra
    nop
    ld e, $00
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffc8]
    ldh a, [$ffe8]
    db $10
    ret c

    jr nz, jr_017_440a

    nop
    inc a
    nop
    cpl
    inc de
    cpl
    inc de
    dec hl
    rla
    add hl, de
    rlca
    dec c
    ld [bc], a
    rra
    nop
    rra
    nop
    ld c, $00
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffc8]
    ldh a, [$ffe8]
    db $10
    ret nc

    jr nz, jr_017_4426

    nop
    jr c, jr_017_43b1

jr_017_43b1:
    cpl
    inc de
    cpl
    inc de
    dec hl
    rla
    add hl, de
    rlca
    dec bc
    inc b
    dec b
    ld [bc], a
    rrca
    nop
    ld c, $00
    cp $ec
    db $fc
    ldh [$ffe8], a
    ldh a, [$ffc8]

jr_017_43c8:
    ldh a, [$ffd8]
    jr nz, jr_017_43c8

    nop
    ld a, h
    nop
    jr c, jr_017_43d1

jr_017_43d1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_440a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_4426:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_4ffd:
    nop
    nop
    nop
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
    inc b
    inc bc
    ld [$0a07], sp
    dec b
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
    ldh [$ff08], a
    ldh a, [$ff28]
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0a00
    ld bc, $0304
    ld a, [bc]
    dec b
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
    jr nz, jr_017_4ffd

    db $10
    ldh [$ff28], a
    ret nc

    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$0a07], sp
    dec b
    inc c
    inc bc
    ld [$0007], sp
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff28]
    ret nc

    jr @-$1e

jr_017_505f:
    ld [$06f0], sp
    nop
    add hl, bc
    ld b, $09
    ld b, $08
    rlca
    ld [$0a07], sp
    dec b
    inc c
    inc bc
    ld [$3007], sp
    nop
    ret z

    jr nc, @+$4a

    or b
    ld [$08f0], sp
    ldh a, [$ff28]
    ret nc

    jr jr_017_505f

    ld [$01f0], sp
    ld bc, $0000
    jr z, jr_017_5087

jr_017_5087:
    ld e, $00
    ld hl, $481e
    scf
    ld d, h
    cpl
    ld [hl], b
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_017_50b9

    nop
    nop

jr_017_509b:
    ldh [rP1], a
    sbc b
    ld h, b
    inc b
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr z, jr_017_50a9

jr_017_50a9:
    ld e, $00
    ld hl, $401e
    ccf
    ld c, h
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_017_50b9:
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    add h
    ld a, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add c
    add b
    ld [bc], a
    ld bc, $0304
    inc b
    inc bc
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_017_509b

jr_017_50db:
    db $10
    ldh [rNR10], a
    ldh [$ff08], a
    ldh a, [rP1]
    nop
    db $10
    db $10
    ld b, c
    ld b, b
    ld [bc], a
    ld bc, $030c
    inc d
    dec bc
    db $10
    rrca
    ld [$0007], sp
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_017_50b9

    jr jr_017_50db

    inc d
    add sp, $04
    ld hl, sp+$08
    ldh a, [$ff0d]
    ld b, $18
    rlca
    dec h
    dec de
    daa
    jr jr_017_5122

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    or b
    inc c
    ldh a, [$ffd2]
    db $ec
    ldh a, [c]
    adc h
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a

jr_017_5122:
    ld b, $48
    scf
    dec l
    inc de
    dec de
    inc b
    jr nc, jr_017_513a

    jr z, jr_017_5144

    dec h
    ld a, [de]
    ld e, $00
    ld e, [hl]
    or b
    add hl, bc
    or $da
    db $e4
    db $ec
    sub b
    add [hl]

jr_017_513a:
    ld a, b
    ld a, [bc]
    db $f4
    jp nc, Jump_000_3c2c

    nop
    ld [$0e07], sp

jr_017_5144:
    dec b
    add hl, bc
    ld b, $0d
    inc bc
    dec bc
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$38f0], sp
    ret nc

    ld c, b
    or b
    ret c

    ldh [$ffe8], a
    sub b
    or b
    nop
    nop
    nop
    nop
    nop
    ld [$0e07], sp
    dec b
    ld de, $150e
    dec bc
    inc de
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    ld [$38f0], sp
    ret nc

    ld b, h
    cp b
    call nc, $e4e8
    sbc b
    cp b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff7f]
    ld h, b
    rra
    jr jr_017_518e

    ld hl, $1e1e
    nop
    nop
    nop
    nop

jr_017_518e:
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld bc, $02fe
    db $fc
    add c
    ld a, [hl]
    ld [hl], c
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld l, $70
    ccf
    ldh a, [$ff7f]
    ld [hl], b
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp-$38
    jr nc, jr_017_51ee

    nop
    nop
    nop
    ld [$1007], sp
    rrca
    db $10
    rrca
    db $10
    rrca
    add hl, bc
    ld b, $04
    inc bc
    inc bc
    nop
    nop
    nop
    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp-$7c
    ld a, b
    ld c, b
    or b
    sub b
    ld h, b

jr_017_51dd:
    ld h, b
    nop
    nop
    nop
    ld [$1007], sp
    rrca
    db $10
    rrca
    add hl, bc
    ld b, $08

jr_017_51ea:
    rlca
    inc b
    inc bc
    inc bc

jr_017_51ee:
    nop
    nop
    nop
    ld [$04f0], sp
    ld hl, sp-$7c
    ld a, b
    ld c, b
    or b
    ld [$90f0], sp
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
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$0807], sp
    rlca
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
    jr nz, jr_017_51dd

    db $10
    ldh [$ff08], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$6000], sp
    ld bc, $0260
    ld bc, $0000
    nop
    nop
    jr nz, jr_017_5257

jr_017_5257:
    ld [hl], b
    jr nz, jr_017_51ea

    ld h, b
    ld h, b
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
    nop
    nop
    nop
    ld [$6000], sp
    nop
    ld h, b
    ld [bc], a
    nop
    nop

jr_017_5272:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_5279:
    nop
    jr nz, jr_017_527c

jr_017_527c:
    nop
    nop
    nop
    inc c
    nop
    rlca
    nop
    ld a, [bc]
    dec b
    dec e
    ld a, [bc]
    jr @+$09

    ld b, $03
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    add b
    nop
    ld h, b
    add b
    jr jr_017_5279

    inc b
    ld hl, sp+$58
    ldh [$ffe0], a
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $020d
    jr jr_017_52b2

    inc d
    dec bc
    add hl, de
    ld c, $1f
    nop
    nop

jr_017_52b2:
    nop
    ret nz

    nop
    or b
    ld b, b
    ld [$30f0], sp
    ldh [$ffe0], a
    ret nz

    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    jr c, jr_017_52c5

jr_017_52c5:
    ld d, h
    jr z, jr_017_5272

    ld d, h
    add d
    ld a, h

jr_017_52cb:
    xor d
    ld d, h
    ld d, h
    jr c, jr_017_5308

    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    ld c, $05
    inc b
    inc bc
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    sbc h
    nop
    ld h, h
    sbc b
    xor b
    ld d, b
    jr jr_017_52cb

    ld [$b0f0], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc
    dec de
    dec b
    cpl
    inc de
    ld l, e

jr_017_5308:
    dec [hl]
    ld d, c
    ld l, $28
    rla
    dec h
    ld a, [de]
    ld e, $00
    ld c, b
    or b

jr_017_5313:
    xor h
    ld [hl], b

jr_017_5315:
    xor d
    call nc, $36cb
    dec b
    ld a, [$f40a]
    jp nc, Jump_000_3c2c

    nop
    add hl, bc
    ld b, $3a
    rlca
    ld l, d
    dec [hl]
    add hl, hl
    ld d, $10
    rrca
    jr z, jr_017_5344

    dec h
    ld a, [de]
    ld e, $00
    jr jr_017_5313

    xor $50
    ei
    and $ea
    ld d, h
    ld b, h
    cp b
    ld a, [bc]
    db $f4
    jp nc, Jump_000_3c2c

    nop
    inc c
    inc bc
    db $10

jr_017_5344:
    ld c, a
    jr nz, @+$21

    jr nz, jr_017_5368

    nop
    ccf
    nop
    rlca
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr nz, jr_017_5315

    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld b, $41
    ld [$1007], sp

jr_017_5368:
    rrca
    nop
    rra
    nop
    rrca
    nop
    ld [bc], a
    nop
    nop
    ld [de], a
    inc c
    call z, Call_000_2000
    ret nz

    db $10
    ldh [rP1], a
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    ld c, $05
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    ld e, b
    and b
    ld [$70f0], sp
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $1e00
    ld bc, $1e21
    ld [hl+], a
    rra
    rla
    dec c
    rrca
    ld bc, $0001
    nop
    nop
    ret nz

    nop
    cp h
    ld b, b
    ld b, d
    cp h
    and d
    db $fc
    db $f4
    ld e, b

jr_017_53bd:
    ld hl, sp-$40

jr_017_53bf:
    ret nz

    nop
    ld bc, $0200
    ld bc, $0205
    ld [$0907], sp
    rlca
    add hl, bc
    ld b, $05
    ld [bc], a
    ld [bc], a
    nop
    ret nz

    nop
    and b
    ld b, b
    ld d, b
    and b
    adc b
    ldh a, [$ffc8]
    ld [hl], b
    ret z

    or b
    ret nc

    jr nz, jr_017_5400

    nop
    dec a
    nop
    ld [hl+], a
    dec e
    ld de, $080e
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0102

jr_017_53ef:
    ld bc, $de00
    nop
    and d
    ld e, h
    ld b, h
    cp b
    ld [$50f0], sp
    and b
    jr nz, jr_017_53bd

    jr nz, jr_017_53bf

    ret nz

jr_017_5400:
    nop
    ld bc, $0200
    ld bc, $0205
    inc b
    inc bc
    add hl, bc
    ld b, $0a
    dec b
    ld a, [bc]
    dec b
    dec b
    nop
    ret nz

    nop
    and b
    ld b, b
    ld d, b
    and b
    db $10
    ldh [rOBP0], a
    or b
    jr z, @-$2e

    jr z, jr_017_53ef

    ret nc

    nop
    nop
    nop
    ld bc, $1f00
    ld bc, $1e3d
    cpl
    rra
    ld [de], a
    dec c
    rrca
    ld bc, $0001
    nop
    nop
    ret nz

    nop
    db $fc
    ret nz

    sbc $bc
    ld a, [$a47c]
    ret c

    ld hl, sp-$40
    ret nz

    nop
    ld bc, $0300
    ld bc, $0205
    dec bc
    rlca
    ld c, $07
    rrca
    ld b, $07
    ld [bc], a
    ld [bc], a
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ret nc

    and b
    add sp, $70
    cp b
    ldh a, [$fff8]
    or b
    ldh a, [rNR41]
    jr nz, jr_017_5461

jr_017_5461:
    rlca
    nop
    ld c, $07
    rra
    dec bc
    rrca
    rlca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    db $10
    ldh [$ffd8], a
    ldh a, [$ffb0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    dec b
    rlca
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    cp h
    nop
    db $fc
    cp b
    ld hl, sp+$70
    cp b
    ldh [$ffd8], a
    ldh a, [$ffb0]
    ret nz

    ret nz

    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    dec b
    ld b, $03
    dec b
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0001
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ret c

    ldh [$ffb8], a
    ldh a, [$fff0]
    add b
    add b
    nop
    add b
    nop
    dec a
    nop
    ld a, [hl-]
    dec e
    rra
    rrca
    dec bc
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $de00
    nop
    xor [hl]
    call c, $f8fc
    add sp, -$10
    ret nc

    and b
    and b
    ret nz

    ldh [$ffc0], a
    ret nz

    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
    rrca
    ld b, $0e
    dec b
    rrca
    dec b
    dec b
    nop
    ret nz

    nop
    and b
    ret nz

    ret nc

    ldh [$fff0], a
    ldh [$fff8], a
    or b
    cp b
    ret nc

    ld hl, sp-$30
    ret nc

    nop
    nop
    nop
    jr jr_017_5505

jr_017_5505:
    ld d, $08
    ld de, $080e
    rlca
    inc b
    inc bc
    dec b
    ld [bc], a
    add hl, bc
    ld b, $00
    nop
    ld b, $00
    ld a, [de]
    inc b
    ldh [c], a
    inc e
    inc b
    ld hl, sp+$07
    ld hl, sp+$20
    rst $18
    inc h
    db $db
    nop
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
    ld h, b
    add b
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop

jr_017_5537:
    nop
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
    ld [bc], a
    ld bc, $0304
    ld [$0a07], sp
    dec b
    ld [hl-], a
    dec c
    ld l, [hl]
    dec a
    nop
    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    ld d, b
    and b
    dec bc
    ldh a, [$ff0c]
    di
    ret z

    rst $30
    dec c
    nop
    inc de
    inc c
    dec c
    ld [bc], a
    db $10
    rrca
    inc d
    dec bc
    ld h, h
    dec de
    db $dd
    ld a, e
    ld l, a
    rra
    add b
    nop
    ld b, b
    add b
    jr nz, jr_017_5537

    and b
    ld b, b
    rra
    ldh [rNR10], a
    rst $28
    add b
    rst $38
    ld b, b
    cp a
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
    ld h, b
    add b
    db $10
    ldh [rIF], a
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0304
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc b
    ld h, b
    ld c, l
    or b
    ld h, $d9
    inc b
    ei
    nop
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
    ld [$07f0], sp
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    dec bc
    ld b, $37
    ld c, $cf
    ld a, $0e
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

jr_017_55f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld c, $0b
    rlca
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
    ld a, [hl+]
    db $dd
    db $f4
    ei
    ld hl, sp-$39
    jr nz, jr_017_55f8

    pop bc
    ld a, $f6
    ld c, b
    ld a, h
    ld [$000c], sp
    ld c, $f0
    ld bc, $08fe
    rst $30
    inc d
    db $e3
    ld [de], a
    pop hl
    pop de
    jr nz, jr_017_569e

    jr nz, @+$32

    nop
    nop
    nop
    add b
    nop
    ld a, a
    add b
    rrca
    cp $1e
    db $fc
    sbc h
    ld a, b
    ld a, b
    nop
    nop
    nop
    scf
    rrca
    inc e
    inc bc
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
    and b
    rst $18
    ld h, b
    rst $18
    ret nz

    ccf
    nop
    rst $38
    add c
    ld a, [hl]
    or $48
    ld a, h
    ld [$000c], sp
    jr c, jr_017_566a

    rrca
    nop
    rrca
    inc b
    dec b
    nop
    nop

jr_017_566a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    cp a

jr_017_5673:
    add b
    ld a, a
    ldh [$ff1f], a
    add a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$1ff7], sp
    ldh [$ff86], a
    ld a, b
    ld [hl], e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    jr jr_017_5673

    inc c
    ld hl, sp-$72
    ld a, h
    ld [hl], a
    ld c, $0f
    ld [bc], a
    inc bc
    nop
    nop

jr_017_569e:
    nop
    nop
    nop
    add hl, de
    ld b, $37
    ld e, $1b
    rlca
    ld c, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    ei
    ld h, b
    rst $38
    ret nc

    rst $28
    jr nc, @-$0f

    ldh [$ff1f], a
    add hl, sp
    ld d, $17
    ld [bc], a
    inc bc
    nop
    nop
    rst $38
    inc b
    ei
    dec bc
    ldh a, [$ff08]
    ldh a, [$ffc8]
    jr nc, jr_017_573c

    jr nz, jr_017_56fe

    nop
    nop
    nop
    inc b
    ld hl, sp+$38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_56fe:
    nop
    nop
    nop
    ld [hl], l
    ld [bc], a
    ld c, h
    inc sp
    inc h
    dec de
    ld d, $09
    jr nz, jr_017_572a

    jr z, @+$19

    ld c, b
    scf
    ld a, [hl]
    ccf
    nop
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
    add b
    nop
    ret nz

    nop
    nop
    nop
    ld b, $00
    ld [hl], l
    ld [bc], a
    ld c, h
    inc sp
    inc h

jr_017_572a:
    dec de
    ld d, $09
    jr nz, jr_017_574e

    jr z, jr_017_5748

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

jr_017_573c:
    nop
    adc h
    nop
    cp [hl]
    inc c
    inc c
    nop
    ld [$9904], a
    ld h, [hl]
    ld c, c

jr_017_5748:
    ld [hl], $2d
    ld [de], a
    ld b, c
    ld a, $51

jr_017_574e:
    ld l, $91
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
    ret nz

    nop
    ld a, $c0
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
    ldh [$ffc0], a
    ldh a, [rNR41]
    or b
    nop
    nop

jr_017_5772:
    nop
    inc c
    nop
    ld [$9904], a
    ld h, [hl]
    ld c, c
    ld [hl], $2d
    ld [de], a
    ld b, c
    ld a, $51
    ld l, $00
    nop
    nop
    nop
    inc c
    nop
    ld e, $0c
    ccf
    inc b
    ld b, l
    dec sp
    add e
    ld a, h
    ld c, $f1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_017_579b

jr_017_579b:
    rla
    ld [$0d12], sp
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $00
    ld c, l
    add [hl]
    ld e, c
    adc [hl]
    sbc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$0c33], sp
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_017_57d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$0c32], sp
    ld b, [hl]
    jr c, jr_017_5772

    nop
    ld h, b
    add b
    ld d, b
    ldh [$ff28], a
    ldh a, [$ff98]
    ld [hl], b
    ld c, b
    jr nc, @+$32

    nop
    nop
    nop
    ccf
    ld c, $0e
    ld bc, $0708
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    rlca
    nop
    inc bc
    ld bc, $0003
    jr nz, jr_017_57d3

    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [rNR32]
    add sp, -$44
    ld e, b
    ret c

    ldh [$ffe0], a
    nop
    ld c, b
    scf
    ld a, [hl]
    ccf
    ccf
    ld c, $0e
    ld bc, $0304
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    adc $34
    add [hl]
    ld a, b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    and h
    ld e, b
    or d
    ld c, h
    db $fd
    ld e, $be
    nop
    db $fd
    ld a, [hl]
    ld a, [hl]
    dec e
    inc a
    inc bc
    ld c, c
    ld [hl], $32
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    rrca
    or $07
    ld a, [$d826]
    ld b, e
    cp h
    pop bc
    ccf
    ld h, $19
    add hl, de
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
    ret nz

    add b

jr_017_586d:
    ret nz

jr_017_586e:
    add b
    ret nz

    nop
    sub c
    ld l, [hl]
    db $fd
    ld a, [hl]
    ld a, [hl]
    dec e
    inc a
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    nop
    nop
    rst $38
    nop
    rst $38
    ld de, $6eee
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    rlca
    rrca
    dec b
    dec d
    ld a, [bc]
    rrca
    dec b
    rla
    ld c, $0e
    dec b
    ld d, $09
    add hl, de
    nop
    and d
    inc e
    and h
    jr @+$6a

    sub b
    ret z

    jr nc, jr_017_58fa

    and b
    jr nz, jr_017_586d

    ld b, b
    add b
    ret nz

    nop
    ld b, [hl]
    add hl, sp
    sbc b
    ld a, a
    ld e, h
    scf
    dec a
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    daa
    ret nz

    add hl, de
    rst $20
    add [hl]
    ld a, c
    add hl, bc
    ldh a, [rNR10]
    ldh [$ffd0], a
    jr nz, jr_017_586e

    ld b, b
    ld b, b
    nop
    inc e
    nop
    ld [$321c], a
    db $fc
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
    sbc c
    ld a, [hl]
    ld a, b
    rla
    inc de
    rrca
    cpl
    db $10
    ld d, c
    jr nz, jr_017_590c

    nop
    nop
    nop
    nop
    nop
    rst $28
    nop
    db $10
    rst $28
    inc b
    ei
    dec de
    ldh [$ff0c], a

jr_017_58fa:
    ldh a, [$fff4]
    ld [$0814], sp
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

jr_017_590c:
    nop
    ld [$1400], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $0708
    ld [hl], a
    ld [$7088], sp
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$ffc0]

jr_017_5929:
    jr c, @-$0e

    inc c
    ld hl, sp-$3c
    jr c, @+$3a

    nop
    rlca
    nop
    jr jr_017_593c

    ld [de], a
    dec c
    add hl, bc
    rlca
    inc b
    inc bc
    ld [bc], a

jr_017_593c:
    ld bc, $0102
    ld bc, $0000
    nop
    ldh [rP1], a
    sub b
    ldh [$ffc8], a
    ldh a, [rBCPS]
    or b
    sub b
    ld h, b
    add sp, $10
    ld [hl], b
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, d
    scf
    daa
    rra
    ld sp, $4e0e
    ld sp, $0031
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [$ff80], a
    jr nc, jr_017_5929

    adc b
    ld [hl], b
    ld [hl], h
    ld [$000c], sp
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
    inc sp
    inc c
    ld b, [hl]
    add hl, sp
    sbc b
    ld a, a
    ld a, b
    rla
    inc d
    dec bc
    dec c
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    nop
    ld [$0cf0], sp
    ldh a, [rSC]
    db $fc
    adc c
    halt
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_017_6001:
    ld bc, $85ff
    ld h, b
    ld bc, $8bff
    ld h, b
    ld bc, $99ff
    ld h, b
    ld bc, $a7ff
    ld h, b
    ld bc, $b5ff
    ld h, b
    ld bc, $c3ff
    ld h, b
    ld bc, $b5ff
    ld h, c
    ld bc, $b9ff
    ld h, c
    ld bc, $bdff
    ld h, c
    ld bc, $bfff
    ld h, c
    ld bc, $c1ff
    ld h, c
    ld bc, $c3ff
    ld h, c
    ld bc, $cdff
    ld h, d
    ld bc, $d3ff
    ld h, d
    ld bc, $d9ff
    ld h, d
    ld bc, $dbff
    ld h, d
    ld bc, $7dff
    ld h, e
    ld bc, $83ff
    ld h, e
    ld bc, $89ff
    ld h, e
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$c760]
    ld h, b
    jp hl


    ld h, b
    ld a, [$fa60]
    ld h, b
    jp hl


    ld h, b
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$0b60]
    ld h, c
    inc e
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$2d60]
    ld h, c
    ld a, $61
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$4f60]
    ld h, c
    ld h, b
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    nop
    nop
    ld de, $0017
    ld hl, sp+$10
    rla
    ld hl, sp+$00
    ld bc, $f817
    ld hl, sp+$00
    rla
    add b
    nop
    nop
    inc de
    inc de
    nop
    ld hl, sp+$12
    inc de
    ld hl, sp+$00
    inc bc
    inc de
    ld hl, sp-$08
    ld [bc], a
    inc de
    add b
    nop
    nop
    dec d
    rla
    nop
    ld hl, sp+$14
    rla
    ld hl, sp+$00
    dec b
    rla
    ld hl, sp-$08
    inc b
    rla
    add b
    nop
    nop
    rla
    rla
    nop
    ld hl, sp+$16
    rla
    ld hl, sp+$00
    rlca
    rla
    ld hl, sp-$08
    ld b, $17
    add b
    nop
    nop
    add hl, de
    rla
    nop
    ld hl, sp+$18
    rla
    ld hl, sp+$00
    add hl, bc
    rla
    ld hl, sp-$08
    ld [$8017], sp
    nop
    nop
    dec de
    rla
    nop
    ld hl, sp+$1a
    rla
    ld hl, sp+$00
    dec bc
    rla
    ld hl, sp-$08
    ld a, [bc]
    rla
    add b
    nop
    ld hl, sp+$19
    scf
    nop
    nop
    jr jr_017_616c

    ld hl, sp-$08
    add hl, bc
    scf
    ld hl, sp+$00
    ld [$8037], sp
    nop
    ld hl, sp+$1b
    scf
    nop
    nop
    ld a, [de]
    scf
    ld hl, sp-$08
    dec bc
    scf
    ld hl, sp+$00
    ld a, [bc]
    scf
    add b
    nop
    nop
    dec e
    rla
    nop
    ld hl, sp+$1c
    rla
    ld hl, sp+$00
    dec c
    rla
    ld hl, sp-$08
    inc c
    rla
    add b
    nop
    nop
    rra
    rla
    nop
    ld hl, sp+$1e
    rla
    ld hl, sp+$00
    rrca
    rla

jr_017_616c:
    ld hl, sp-$08
    ld c, $17
    add b
    nop
    nop
    ld sp, $0013
    ld hl, sp+$30
    inc de
    ld hl, sp+$00
    ld hl, $f813
    ld hl, sp+$20
    inc de
    add b
    nop
    nop
    inc sp
    inc de
    nop
    ld hl, sp+$32
    inc de
    ld hl, sp+$00
    inc hl
    inc de
    ld hl, sp-$08
    ld [hl+], a
    inc de
    add b
    nop
    nop
    dec [hl]
    rla
    nop
    ld hl, sp+$34
    rla
    ld hl, sp+$00
    dec h
    rla
    ld hl, sp-$08
    inc h
    rla
    add b
    nop
    nop
    scf
    rla
    nop
    ld hl, sp+$36
    rla
    ld hl, sp+$00
    daa
    rla
    ld hl, sp-$08
    ld h, $17
    add b
    rlca
    ld h, d
    jr z, jr_017_621b

    adc e
    ld h, d
    xor h
    ld h, d
    and $61
    ld l, d
    ld h, d
    push bc
    ld h, c
    ld c, c
    ld h, d
    nop
    ld [$1763], sp
    nop
    nop
    ld h, d
    rla
    nop
    ld hl, sp+$61
    rla
    nop
    ldh a, [$ff60]
    rla
    ld hl, sp+$08
    ld d, e
    rla
    ld hl, sp+$00
    ld d, d
    rla
    ld hl, sp-$08
    ld d, c
    rla
    ld hl, sp-$10
    ld d, b
    rla
    add b
    nop
    ld [$1763], sp
    nop
    nop
    ld h, d
    rla
    ld hl, sp+$08
    ld d, e
    rla
    ld hl, sp+$00
    ld d, d
    rla
    nop
    ld hl, sp+$65
    rla
    nop
    ldh a, [$ff64]
    rla
    ld hl, sp-$08
    ld d, l
    rla
    ld hl, sp-$10
    ld d, h
    rla
    add b
    nop
    ld [$1769], sp
    nop
    nop
    ld l, b
    rla
    nop
    ld hl, sp+$67
    rla
    nop
    ldh a, [$ff66]
    rla
    ld hl, sp+$08
    ld e, c
    rla

jr_017_621b:
    ld hl, sp+$00
    ld e, b
    rla
    ld hl, sp-$08
    ld d, a
    rla
    ld hl, sp-$10
    ld d, [hl]
    rla
    add b
    nop
    ld [$176d], sp
    nop
    nop
    ld l, h
    rla
    nop
    ld hl, sp+$6b
    rla
    nop
    ldh a, [rOCPS]
    rla
    ld hl, sp+$08
    ld e, l
    rla
    ld hl, sp+$00
    ld e, h
    rla
    ld hl, sp-$08
    ld e, e
    rla
    ld hl, sp-$10
    ld e, d
    rla
    add b
    nop
    ldh a, [$ff63]
    scf
    nop
    ld hl, sp+$62
    scf
    nop
    nop
    ld h, c
    scf
    nop
    ld [$3760], sp
    ld hl, sp-$10
    ld d, e
    scf
    ld hl, sp-$08
    ld d, d
    scf
    ld hl, sp+$00
    ld d, c
    scf
    ld hl, sp+$08
    ld d, b
    scf
    add b
    nop
    ldh a, [$ff63]
    scf
    nop
    ld hl, sp+$62
    scf
    ld hl, sp-$10
    ld d, e
    scf
    ld hl, sp-$08
    ld d, d
    scf
    nop
    nop
    ld h, l
    scf
    nop
    ld [$3764], sp
    ld hl, sp+$00
    ld d, l
    scf
    ld hl, sp+$08
    ld d, h
    scf
    add b
    nop
    ldh a, [rBCPD]
    scf
    nop
    ld hl, sp+$68
    scf
    nop
    nop
    ld h, a
    scf
    nop
    ld [$3766], sp
    ld hl, sp-$10
    ld e, c
    scf
    ld hl, sp-$08
    ld e, b
    scf
    ld hl, sp+$00
    ld d, a
    scf
    ld hl, sp+$08
    ld d, [hl]
    scf
    add b
    nop
    ldh a, [$ff6d]
    scf
    nop
    ld hl, sp+$6c
    scf
    nop
    nop
    ld l, e
    scf
    nop
    ld [$376a], sp
    ld hl, sp-$10
    ld e, l
    scf
    ld hl, sp-$08
    ld e, h
    scf
    ld hl, sp+$00
    ld e, e
    scf
    ld hl, sp+$08
    ld e, d
    scf
    add b
    inc bc
    ld h, e
    jr jr_017_6334

    ldh a, [c]
    ld h, d
    ld d, e
    ld h, e
    ld l, b
    ld h, e
    ld b, d
    ld h, e
    db $dd
    ld h, d
    dec l
    ld h, e
    ldh a, [$fff8]
    ld l, [hl]
    rla
    nop
    nop
    add c
    rla
    nop
    ld hl, sp-$80
    rla
    ld hl, sp+$00
    ld [hl], c
    rla
    ld hl, sp-$08
    ld [hl], b
    rla
    add b
    nop
    nop
    add e
    rla
    nop
    ld hl, sp-$7e
    rla
    ld hl, sp+$00
    ld [hl], e
    rla
    ld hl, sp-$08
    ld [hl], d
    rla
    add b
    nop
    ld [$1786], sp
    nop
    nop
    add l
    rla
    nop
    ld hl, sp-$7c
    rla
    ld hl, sp+$00
    ld [hl], l
    rla
    ld hl, sp-$08
    ld [hl], h
    rla
    add b
    ld a, [$7608]
    rla
    nop
    nop
    adc b
    rla
    nop
    ld hl, sp-$79
    rla
    ld hl, sp+$00
    ld a, b
    rla
    ld hl, sp-$08
    ld [hl], a
    rla
    add b
    ldh a, [rP1]
    ld l, [hl]
    scf
    nop
    ld hl, sp-$7f

jr_017_6334:
    scf
    nop
    nop
    add b
    scf
    ld hl, sp-$08
    ld [hl], c
    scf
    ld hl, sp+$00
    ld [hl], b
    scf
    add b
    nop
    ld hl, sp-$7d
    scf
    nop
    nop
    add d
    scf
    ld hl, sp-$08
    ld [hl], e
    scf
    ld hl, sp+$00
    ld [hl], d
    scf
    add b
    nop
    ldh a, [$ff86]
    scf
    nop
    ld hl, sp-$7b
    scf
    nop
    nop
    add h
    scf
    ld hl, sp-$08
    ld [hl], l
    scf
    ld hl, sp+$00
    ld [hl], h
    scf
    add b
    ld a, [$76f0]
    scf
    nop
    ld hl, sp-$78
    scf
    nop
    nop
    add a
    scf
    ld hl, sp-$08
    ld a, b
    scf
    ld hl, sp+$00
    ld [hl], a
    scf
    add b
    or c
    ld h, e
    jp nz, $9c63

    ld h, e
    db $ec
    ld h, e
    db $fd
    ld h, e
    rst $10
    ld h, e
    adc e
    ld h, e
    nop
    nop
    adc d
    rla
    nop
    ld hl, sp-$77
    rla
    ld hl, sp+$00
    ld a, d
    rla
    ld hl, sp-$08
    ld a, c
    rla
    add b
    nop
    ld [$178d], sp
    nop
    nop
    adc h
    rla
    nop
    ld hl, sp-$75
    rla
    ld hl, sp+$00
    ld a, h
    rla
    ld hl, sp-$08
    ld a, e
    rla
    add b
    cp $08
    ld a, a
    rla
    cp $00
    adc a
    rla
    cp $f8
    adc [hl]
    rla
    or $f8
    ld a, [hl]
    rla
    add b
    ld sp, hl
    ld [$1792], sp
    nop
    nop
    and c
    rla
    nop
    ld hl, sp-$60
    rla
    ld hl, sp+$00
    sub c
    rla
    ld hl, sp-$08
    sub b
    rla
    add b
    nop
    ldh a, [$ff8d]
    scf
    nop
    ld hl, sp-$74
    scf
    nop
    nop
    adc e
    scf
    ld hl, sp-$08
    ld a, h
    scf
    ld hl, sp+$00
    ld a, e
    scf
    add b
    cp $f0
    ld a, a
    scf
    cp $f8
    adc a
    scf
    cp $00
    adc [hl]
    scf
    or $00
    ld a, [hl]
    scf
    add b
    ld sp, hl
    ldh a, [$ff92]

Jump_017_6400:
    scf
    nop
    ld hl, sp-$5f
    scf
    nop
    nop
    and b
    scf
    ld hl, sp-$08
    sub c
    scf
    ld hl, sp+$00
    sub b
    scf
    add b
    ld d, [hl]
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld l, h
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    add b
    ld h, h
    add b
    ld h, h
    add e
    ld h, h
    add e
    ld h, h
    adc d
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    cpl
    nop
    rrca
    ld bc, $020f
    rst $38
    cpl
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rra
    ld b, $ff
    rrca
    nop
    rra
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    ldh a, [rP1]
    rst $38
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $21ff
    ld h, l
    ld bc, $5fff
    ld h, l
    ld bc, $63ff
    ld h, l
    ld bc, $67ff
    ld h, l
    ld bc, $6bff
    ld h, l
    ld bc, $6fff
    ld h, l
    ld bc, $73ff
    ld h, l
    ld bc, $77ff
    ld h, l
    ld bc, $f3ff
    ld h, l
    ld bc, $f7ff
    ld h, l
    ld bc, $fbff
    ld h, l
    ld bc, $ffff
    ld h, l
    ld bc, $03ff
    ld h, [hl]
    ld bc, $07ff
    ld h, [hl]
    ld bc, $7bff
    ld h, l
    ld [hl-], a
    ld h, l
    dec sp
    ld h, l
    ld [hl-], a
    ld h, l
    add hl, hl
    ld h, l
    ld c, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld c, l
    ld h, l
    ld b, h
    ld h, l
    db $fc
    nop
    sub h
    rla
    db $fc
    ld hl, sp-$6d
    rla
    add b
    db $fc
    ld [bc], a
    sub [hl]
    rla
    ld a, [$95fa]
    rla
    add b
    ld sp, hl
    ld [bc], a
    sub [hl]
    rla
    rst $30
    ld a, [$1795]
    add b
    db $fc
    ld hl, sp-$6c
    scf
    db $fc
    nop
    sub e
    scf
    add b
    db $fc
    or $96
    scf
    ld a, [$95fe]
    scf
    add b
    ld sp, hl
    or $96
    scf
    rst $30
    cp $95
    scf
    add b
    and c
    ld h, l
    and [hl]
    ld h, l
    ld a, l
    ld h, l
    add [hl]
    ld h, l
    adc a
    ld h, l
    sbc b
    ld h, l
    rst $08
    ld h, l
    ret c

    ld h, l
    xor e
    ld h, l
    or h
    ld h, l
    cp l
    ld h, l
    add $65
    pop hl
    ld h, l
    ld [$7d65], a
    ld h, l
    db $fc
    nop
    add hl, hl
    rla
    db $fc
    ld hl, sp+$28
    rla
    add b
    db $fc
    nop
    dec hl
    rla
    db $fc
    ld hl, sp+$2a
    rla
    add b
    db $fc
    ld hl, sp+$29
    scf
    db $fc
    nop
    jr z, jr_017_65ce

    add b
    db $fc
    ld hl, sp+$2b
    scf
    db $fc
    nop
    ld a, [hl+]
    scf
    add b
    db $fc
    db $fc
    inc l
    rla
    add b
    ei
    db $fc
    inc l
    rla
    add b
    db $fc
    nop
    ld l, $17
    db $fc
    ld hl, sp+$2d
    rla
    add b
    db $fc
    nop
    add hl, sp
    rla
    db $fc
    ld hl, sp+$38
    rla
    add b
    db $fc
    ld hl, sp+$2e
    scf
    db $fc
    nop
    dec l
    scf
    add b
    db $fc
    ld hl, sp+$39
    scf
    db $fc
    nop
    jr c, jr_017_6605

jr_017_65ce:
    add b
    db $fc
    nop
    dec sp
    rla
    db $fc
    ld hl, sp+$3a
    rla
    add b
    db $fc
    nop
    dec a
    rla
    db $fc
    ld hl, sp+$3c
    rla
    add b
    db $fd
    nop
    ccf
    rla
    db $fd
    ld hl, sp+$3e
    rla
    add b
    db $fc
    nop
    ld b, c
    rla
    db $fc
    ld hl, sp+$40
    rla
    add b
    dec bc
    ld h, [hl]
    inc d
    ld h, [hl]
    dec e
    ld h, [hl]
    ld h, $66
    cpl
    ld h, [hl]
    jr c, jr_017_6665

    ld b, c
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld d, e
    ld h, [hl]

jr_017_6605:
    ld e, h
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld l, [hl]
    ld h, [hl]
    db $fd
    nop
    ld b, a
    rla
    db $fd
    ld hl, sp+$46
    rla
    add b
    db $fc
    nop
    ld b, a
    rla
    db $fc
    ld hl, sp+$46
    rla
    add b
    db $fd
    ld hl, sp+$47
    scf
    db $fd
    nop
    ld b, [hl]
    scf
    add b
    db $fc
    ld hl, sp+$47
    scf
    db $fc
    nop
    ld b, [hl]
    scf
    add b
    db $fc
    nop
    ld b, e
    rla
    db $fc
    ld hl, sp+$42
    rla
    add b
    db $fc
    nop
    ld b, l
    rla
    db $fc
    ld hl, sp+$44
    rla
    add b
    db $fc
    nop
    ld c, c
    rla
    db $fc
    ld hl, sp+$48
    rla
    add b
    db $fc
    nop
    ld c, e
    rla
    db $fc
    ld hl, sp+$4a
    rla
    add b
    db $fc
    ld hl, sp+$49
    scf
    db $fc
    nop
    ld c, b
    scf
    add b
    db $fc
    ld hl, sp+$4b
    scf
    db $fc
    nop
    ld c, d
    scf
    add b

jr_017_6665:
    db $fd
    nop
    ld c, l
    rla
    db $fd
    ld hl, sp+$4c
    rla
    add b
    db $fc
    nop
    ld c, a
    rla
    db $fc
    ld hl, sp+$4e
    rla
    add b
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    add $66
    add $66
    add $66
    add $66
    add $66
    add $66
    add $66
    bit 4, [hl]
    bit 4, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    push de
    ld h, [hl]
    ld [$0a00], sp
    ld bc, $0208
    ld a, [bc]
    inc bc
    rst $38
    rrca
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0aff
    nop
    ld a, [bc]
    ld bc, $f0ff
    nop
    rst $38
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

jr_017_66eb:
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

jr_017_66ff:
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
    cp $1f
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$fff8]
    rst $38
    nop
    jr z, jr_017_66eb

    inc b
    ld hl, sp+$54
    xor b
    ld c, h
    rst $38
    or b
    ret z

    ldh a, [$ffe8]
    ld [hl], b
    ld d, h
    add sp, -$1c
    rst $28
    jr @+$3a

    db $10
    jr jr_017_66ff

    ld [bc], a
    rlca
    nop
    ld a, [bc]
    rst $38
    dec b
    db $10
    rrca
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $09
    rst $38
    rlca
    dec bc
    rlca
    dec e
    dec bc
    dec bc
    inc b
    add hl, bc
    rst $38
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    rlca
    ld [bc], a
    inc bc
    cp $b6
    inc b
    ld c, h
    nop
    ld l, d
    inc b
    ld e, l
    ld h, $41
    rst $38
    ld a, $6d
    ld [de], a
    ld l, b
    rla
    nop
    nop
    jr @+$01

    nop
    jr z, jr_017_6775

    ld d, b
    jr nz, jr_017_67b8

    jr nz, jr_017_6792

    rst $18
    db $10
    inc d
    ld [$04fa], sp
    ret


    ld bc, $2f78
    rst $38

jr_017_6775:
    ld a, $1d
    nop
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    rst $38
    ld a, [bc]
    inc b

jr_017_6780:
    dec b
    ld [bc], a
    add l
    ld [bc], a
    ld h, l
    add d
    ei
    dec e
    ldh [c], a
    inc bc
    add hl, bc
    sbc b
    nop
    call nc, $ba08
    rst $38
    ld c, h

jr_017_6792:
    add d
    ld a, h
    jp c, $0024

    nop
    inc bc
    rst $18
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, c
    ld [bc], a
    ld a, [bc]
    inc b
    ld l, e
    ld [hl], h
    ld [$0b01], sp
    ld b, $20
    ld bc, $0306
    ld b, b
    rlca
    cp $a0
    ld bc, $0000
    ld [bc], a
    nop
    dec [hl]
    ld [bc], a

jr_017_67b8:
    ld e, d
    rst $38
    inc h
    cp d
    ld h, h
    ld a, [de]
    db $e4
    ld [hl], h
    adc b
    ld d, h
    db $fd
    xor b
    ret


    ld bc, $0107
    dec bc
    ld b, $30
    nop
    rst $38
    ld d, b
    jr nz, jr_017_6780

    ld h, b
    db $10
    ldh [rSVBK], a
    add b
    cp a
    ld d, b
    and b
    ldh a, [rLCDC]
    add sp, -$50
    ld bc, $010f
    or $20
    nop
    ld b, $01
    ld b, e
    inc b
    ld h, b
    nop
    sub d
    ld h, b
    rst $38
    ld l, l
    sub d
    jp nc, Jump_000_3c0c

    ret nz

    ld d, b
    and b
    ret z

    add c
    ld [bc], a
    ld bc, $2711
    dec bc
    call nc, $0702
    dec b
    dec c
    ld h, a
    jr @+$7d

    ld l, h
    inc de
    add hl, bc
    ld c, $61
    ld e, $6f
    db $10
    inc bc
    inc bc
    db $db
    inc d
    ld [$0c43], sp
    push bc
    ld [bc], a
    ld b, c
    dec c
    ld e, $03
    cp a
    ld b, $01
    ld c, $05
    rrca
    inc bc
    ld hl, $0211
    rst $38
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$44
    cp b
    db $ec
    rst $28
    db $10
    ld hl, sp+$30
    ld [hl], b
    ret nc

    ld d, $1e
    inc bc
    rra
    ei
    ld a, [bc]
    ld c, $58
    rla
    ld [bc], a
    db $fc
    ld b, h
    cp b
    call nz, Call_000_387f
    ldh [c], a
    ld e, h
    ld [hl], d
    inc l
    inc a
    ld [$0dd1], sp
    rst $38
    pop de
    ld l, $f0
    ld e, a
    ld a, h

jr_017_684e:
    dec sp
    jr c, @+$09

    rst $38
    dec bc
    inc b
    ld c, $04
    inc e
    ld [$0018], sp
    rst $38
    adc d
    ld [hl], b
    dec b
    ld a, [$fe03]
    daa
    jp c, $dbdd

    sub h
    ld a, [de]
    ld bc, $0707
    and b
    dec bc
    dec b
    inc bc
    cp $20
    nop
    ld [bc], a
    rrca
    ld b, $06
    nop
    ret z

    ld [hl], b
    cp a
    ld hl, sp-$40
    ret c

    jr nz, jr_017_684e

    ldh [rNR41], a
    nop
    jr nz, jr_017_68c2

    ld a, b
    jr nc, jr_017_68b6

    nop
    rrca
    inc b
    pop bc
    ld bc, $1901
    ei
    rlca
    ld [bc], a
    ret nc

    ld de, $f800
    db $10
    call c, Call_017_7fe0
    db $d3
    db $ec
    cp l
    ld h, d
    ld [hl], d
    jr nz, @+$22

    or d
    ld e, $7f
    rrca
    nop
    dec e
    ld a, [bc]
    add hl, de
    rrca
    rrca
    ldh [rIF], a
    cp $03
    ld [bc], a
    ld a, b
    add b
    ld e, h
    xor b
    call z, $f878
    rst $28

jr_017_68b6:
    ret nz

    ret nc

    jr nz, jr_017_692a

    ld [hl+], a
    ld [bc], a
    ld a, [hl-]
    call nz, $ff0a
    db $f4
    inc b

jr_017_68c2:
    ld hl, sp-$3c
    jr c, @-$1a

    ld e, b
    ld hl, sp+$7d
    jr nz, jr_017_68cc

    dec bc

jr_017_68cc:
    ld a, d
    dec l
    ld a, $1d
    rra
    jr nz, jr_017_68eb

    scf
    ld c, $04
    inc c
    or d
    ld [hl+], a
    ld a, h
    dec hl
    nop
    ld c, $c0
    inc de
    call z, $0105
    add hl, bc
    rra
    ld b, c
    ld a, $03
    ld [de], a
    ld b, e
    dec h
    add hl, de

jr_017_68eb:
    nop
    xor a
    dec hl
    db $10
    ld e, l
    ld [hl-], a
    dec bc
    ld h, $c0
    db $ec
    nop

jr_017_68f6:
    jr nc, jr_017_68f6

    db $10
    ld bc, $001c
    inc hl
    inc e
    ld e, h
    inc hl
    and e
    db $db
    ld b, b
    ld b, l
    ld h, b
    dec c
    dec bc
    rlca
    add l
    ld [bc], a
    ld h, b
    add b
    cp a
    ret nc

    and b
    ret nc

    ld h, b
    add sp, -$10
    ld bc, $162a
    rst $38
    nop
    dec l
    ld [de], a
    inc d
    dec bc
    inc d
    dec bc
    ld a, [bc]
    and a
    dec b
    dec bc
    inc b
    ld bc, $412b
    dec e
    sub b
    ld b, b
    dec e

jr_017_692a:
    db $10
    ld d, a
    ldh [$ff50], a
    and b
    pop bc
    jr nz, @+$06

    ret nz

    jr nz, jr_017_6941

    jr nz, jr_017_6937

jr_017_6937:
    xor a
    ld a, [bc]
    dec b

jr_017_693a:
    inc b
    inc bc
    push bc
    ld bc, $2018
    nop

jr_017_6941:
    jr z, jr_017_693a

    ret nc

    sub b
    ld h, b
    inc bc
    ld l, $3e
    nop
    ld b, c
    ld a, $bf
    and h
    ld e, e
    ld h, h
    dec de
    or c
    ld a, [hl]
    dec b
    cpl
    add b
    ld a, a
    nop
    ld [hl], b
    add b
    ld c, [hl]
    or b
    add l

jr_017_695d:
    ld a, d
    rst $00
    ld bc, $b0bf
    ld a, a
    ld sp, hl
    ld a, $bc
    ld a, a
    jp Jump_017_6001


    rst $38
    add b
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
    ld b, $fd
    ld hl, sp+$03
    ld [hl-], a
    ld b, c
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    rst $28
    ld h, h
    dec de
    ld h, l
    ld a, [de]
    push hl
    inc bc
    ld h, [hl]
    add b
    ld e, d
    rst $18
    and h
    ld b, h
    cp b
    add h
    ld a, b
    ld bc, $042a
    inc bc
    rst $20
    ld [$0f07], sp
    add h
    ld sp, $1061
    ld e, e
    inc h
    ld c, a
    cp a
    ld a, [hl-]
    ld a, [hl]
    dec e
    cp [hl]
    ld h, e
    ld h, e
    pop bc
    ld a, [bc]
    ret nz

    rst $38
    inc c
    ldh a, [rTMA]
    ld hl, sp+$45
    cp d
    adc l
    ld [hl], d
    rst $38
    ldh a, [c]
    inc c
    adc h
    ld [hl], b
    ld [hl], b
    nop
    ld [$fbf0], sp
    inc b
    ld hl, sp+$09
    ld bc, $0e1b
    ld e, $09
    dec c
    db $fc
    ret nz

    ld a, [de]
    dec b
    inc [hl]
    db $ec
    cp b
    inc a
    ret z

    ret c

    jr nz, jr_017_695d

    ld [hl], b
    and b
    ldh a, [rNR41]
    or e
    dec bc
    and b
    ld l, $04
    rra
    rlca
    dec sp
    ld [bc], a
    dec c
    nop
    rra
    or b
    ld b, b
    ld d, b
    add b
    ld de, $1f00
    rst $28
    ld h, b
    ld [hl], b
    jr nz, @+$5a

    nop
    rra
    dec b
    ld [bc], a
    dec e
    rst $38
    ld [bc], a
    ld h, [hl]
    add hl, de
    sbc c
    ld h, [hl]
    ld l, a
    ld bc, $7f0d
    ld b, $0e
    inc b
    inc b
    nop
    ld d, b
    and b
    ld bc, rSC
    ret z

    ldh a, [$fff8]
    ld h, b
    ld e, b
    jr nc, @+$3a

    db $10
    rst $38
    stop
    ld hl, sp+$3f
    cp h
    ld a, a
    ld e, d
    dec a
    sbc a
    ld a, $01
    dec bc
    inc b
    dec b
    inc b
    daa
    inc hl
    nop
    inc h
    rst $28
    ret c

    call c, $d888
    ret nc

    ccf
    ld e, e
    inc a
    ld a, $af
    ld bc, $0b16
    dec bc
    halt
    ld b, b
    inc c
    nop
    ld a, [bc]
    or $ed
    inc c
    rst $00
    dec e
    or b
    ld a, a
    dec h
    inc b
    ld c, $05
    rlca
    cp a
    ld bc, $0001
    ld c, $f0
    ld b, $20
    dec l
    jr @-$3f

    ldh [$ff60], a
    add b
    ld b, b
    add b
    add b
    ld h, b
    inc d
    add hl, de
    ld a, [hl]
    add b
    ld b, b
    dec de
    rlca
    dec d
    dec bc

jr_017_6a5a:
    inc de
    inc c
    pop hl
    rlca
    or a
    nop
    nop
    ldh a, [$ff8a]
    ld b, e
    ld e, h
    add sp, $01
    inc a
    inc c
    rst $38
    inc bc
    inc de
    inc c
    ld [hl+], a
    dec e
    jr c, jr_017_6a78

    add hl, bc
    rst $30
    ld b, $19
    ld b, $01
    ld b, [hl]

jr_017_6a78:
    jr jr_017_6a5a

    db $e4
    jr jr_017_6afc

    ld [hl+], a
    call c, $f00e
    ld c, b
    or b
    ld c, h
    ld [bc], a
    add hl, sp
    sbc [hl]
    inc bc
    add hl, de
    ld b, b
    add b
    ld h, b
    add b
    ld bc, $c11b
    add hl, sp
    ld [$073f], sp
    ld de, $150e
    ld a, [bc]
    add hl, de
    jr nz, jr_017_6ae1

    ld h, e
    ld [hl+], a
    cp a
    ld [$44f0], sp
    cp b
    ld d, h
    xor b
    and c
    ld c, b
    ld l, b
    rst $38
    ldh a, [$ffd2]
    ldh [$ffed], a
    ld [de], a
    ld a, [bc]
    db $f4
    ld d, h
    rst $18
    xor b
    sub h
    ld l, b
    add sp, $50
    ld hl, $0035
    nop
    rst $38
    dec c
    nop
    ld [de], a
    dec c
    jr nz, jr_017_6ae0

    ld e, $01
    db $fc
    add c
    jr jr_017_6ac8

    ld c, l

jr_017_6ac8:
    ret c

    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    ld e, a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [de], a
    ld [bc], a
    dec c
    ld b, d
    ld c, e
    rst $00
    inc d
    dec bc
    ld c, $20
    ld [bc], a
    inc bc

jr_017_6ae0:
    ld [bc], a

jr_017_6ae1:
    pop bc
    ld c, l
    inc d
    add sp, -$0f
    jr c, jr_017_6b08

    ld [bc], a
    push bc
    ld bc, $23e1
    ld [$0807], sp
    rlca
    inc e
    push bc
    ld bc, $23e1
    ld [$08f0], sp
    ld [bc], a
    jr z, jr_017_6b41

jr_017_6afc:
    ld d, d
    ld h, c
    inc h
    ld a, [$530b]
    add b
    ld a, [$0c53]
    nop
    adc d

jr_017_6b08:
    inc b
    add sp, $3f
    db $10
    ret z

    ldh a, [$ffc8]
    ldh a, [$ff90]
    ldh [rNR24], a
    or e
    daa
    rst $38
    add hl, sp
    rla
    dec hl
    rla
    dec e
    inc bc
    dec bc
    inc b
    cp $e3
    jr c, jr_017_6b22

jr_017_6b22:
    nop
    adc $f4
    ld [$5c74], a
    rst $10
    ldh [$ffe8], a
    db $10
    db $e3
    ld [hl], $00
    nop
    ld hl, $f00e
    rst $38
    dec b
    ld a, [$f806]
    inc h
    ret c

    ld hl, sp-$70
    db $ed
    ret nc

    ret nc

    ld e, b
    dec bc

jr_017_6b41:
    rlca
    ld h, b
    jr nc, jr_017_6b49

    jr jr_017_6b4e

    rst $38
    dec d

jr_017_6b49:
    ld a, [bc]
    inc d
    dec bc
    dec bc
    dec b

jr_017_6b4e:
    rlca
    nop
    rst $38
    ld l, b
    ldh a, [$ffd0]
    ldh [$ffee], a
    db $10
    add hl, bc

jr_017_6b58:
    or $f9
    ld d, [hl]
    ld [$030f], sp
    dec l
    add b
    ld a, a
    ld l, h
    inc de
    or c
    or a
    ld a, [hl]
    add hl, bc
    ld b, $61
    dec bc
    add hl, bc
    ld b, $05
    ccf
    ld c, b
    ld a, a
    or b
    adc b
    ld [hl], b
    ld [$d8f0], sp
    jr nz, jr_017_6b58

    ld c, [hl]
    ld [hl], $20
    dec a
    jr nc, jr_017_6b7e

jr_017_6b7e:
    ld b, c
    dec c
    ld [$4107], sp
    ld [hl-], a
    ld hl, $793f
    ld b, $00
    jr z, jr_017_6bec

    dec c
    ld d, b
    and b
    sub b
    ld h, b
    ld hl, $c43f
    ld bc, $a002
    ld e, h
    ld b, $21
    inc [hl]
    ld hl, HeaderCGBFlag
    ld [bc], a
    ld c, b
    or b
    rrca
    ld c, b
    or b
    sub b
    ld h, b
    ld hl, $010c
    inc b
    ld h, e
    inc sp
    ld h, e
    inc h
    rst $38
    cp $43
    rst $20
    nop
    ld a, [hl]
    add b
    ld b, l
    cp d
    rst $38
    add d
    ld a, l
    inc bc
    db $fc
    ld b, $f8
    inc bc
    db $fc
    rst $38
    ld [hl], e
    adc [hl]
    adc [hl]
    nop
    ld a, d
    add h
    ld b, [hl]
    cp b
    rlca
    add d
    ld a, h
    ld [bc], a
    ld b, $01
    nop
    nop
    adc $6d
    nop
    nop
    ret nc

    ld l, l
    nop
    nop
    jp nc, $006d

    nop
    call nc, $006d
    nop
    sub $6d
    nop
    nop
    call c, $006d
    nop
    ldh [c], a
    ld l, l
    nop
    nop

jr_017_6bec:
    add sp, $6d
    nop
    nop
    xor $6d
    nop
    nop
    ldh a, [$ff6d]
    nop
    nop
    ldh a, [c]
    ld l, l
    nop
    nop
    db $f4
    ld l, l
    nop
    nop
    or $6d
    nop
    nop
    ld hl, sp+$6d
    nop
    nop
    ld a, [$006d]
    nop
    cp $6d
    nop
    nop
    ld [bc], a
    ld l, [hl]
    nop
    nop
    ld b, $6e
    nop
    nop
    ld a, [bc]
    ld l, [hl]
    nop
    nop
    ld c, $6e
    nop
    nop
    ld [de], a
    ld l, [hl]
    nop
    nop
    ld d, $6e
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    jr jr_017_6cc2

    nop
    nop
    ld a, [de]
    ld [hl], b
    nop
    nop
    inc e
    ld [hl], b
    nop
    nop
    ld e, $70
    nop
    nop
    jr nz, jr_017_6cd2

    nop
    nop
    ld h, $70
    nop
    nop
    inc l
    ld [hl], b
    nop
    nop
    ld [hl-], a
    ld [hl], b
    nop
    nop
    jr c, jr_017_6ce2

    nop
    nop
    ld a, [hl-]
    ld [hl], b
    nop
    nop
    inc a
    ld [hl], b
    nop
    nop
    ld a, $70
    nop
    nop
    ld b, b
    ld [hl], b
    nop
    nop
    ld b, h
    ld [hl], b
    nop
    nop
    ld b, [hl]
    ld [hl], b
    nop
    nop
    ld c, b
    ld [hl], b
    nop
    nop
    ld c, h
    ld [hl], b
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d

jr_017_6cc2:
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    ldh a, [$ff71]

jr_017_6cd2:
    nop
    nop
    ldh a, [c]
    ld [hl], c
    nop
    nop
    db $f4
    ld [hl], c
    nop
    nop
    or $71
    nop
    nop
    ld hl, sp+$71

jr_017_6ce2:
    nop
    nop
    cp $71
    nop
    nop
    inc b
    ld [hl], d
    nop
    nop
    ld a, [bc]
    ld [hl], d
    nop
    nop
    db $10
    ld [hl], d
    nop
    nop
    ld [de], a
    ld [hl], d
    nop
    nop
    inc d
    ld [hl], d
    nop
    nop
    ld d, $72
    nop
    nop
    jr jr_017_6d74

    nop
    nop
    ld a, [de]
    ld [hl], d
    nop
    nop
    inc e
    ld [hl], d
    nop
    nop
    jr nz, jr_017_6d80

    nop
    nop
    inc h
    ld [hl], d
    nop
    nop
    jr z, jr_017_6d88

    nop
    nop
    inc l
    ld [hl], d
    nop
    nop
    jr nc, jr_017_6d90

    nop
    nop
    inc [hl]
    ld [hl], d
    nop
    nop
    jr c, jr_017_6d98

    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    ld a, [hl-]
    ld [hl], h
    nop
    nop
    inc a
    ld [hl], h
    nop
    nop
    ld a, $74
    nop
    nop
    ld b, b
    ld [hl], h
    nop
    nop
    ld b, d
    ld [hl], h
    nop
    nop
    ld c, b
    ld [hl], h
    nop
    nop
    ld c, [hl]
    ld [hl], h
    nop
    nop
    ld d, h
    ld [hl], h
    nop
    nop
    ld e, d
    ld [hl], h
    nop
    nop

jr_017_6d74:
    ld e, h
    ld [hl], h
    nop
    nop
    ld e, [hl]
    ld [hl], h
    nop
    nop
    ld h, b
    ld [hl], h
    nop
    nop

jr_017_6d80:
    ld h, d
    ld [hl], h
    nop
    nop
    ld h, [hl]
    ld [hl], h
    nop
    nop

jr_017_6d88:
    ld l, b
    ld [hl], h
    nop
    nop
    ld l, d
    ld [hl], h
    nop
    nop

jr_017_6d90:
    ld l, [hl]
    ld [hl], h
    nop
    nop
    adc $6d
    nop
    nop

jr_017_6d98:
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    nop
    nop
    adc $6d
    ld l, [hl]
    ld l, a
    ld a, [de]
    ld l, [hl]
    ld c, l
    ld l, [hl]
    and c
    ld l, a
    ld a, a
    ld l, a
    sub b
    ld l, a
    ld l, [hl]
    ld l, a
    dec hl
    ld l, [hl]
    inc a
    ld l, [hl]
    ld a, [de]
    ld l, [hl]
    ld e, [hl]
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld c, l
    ld l, [hl]
    or d
    ld l, a
    jp $a16f


    ld l, a
    sub c
    ld l, [hl]
    and $6e
    or e
    ld l, [hl]
    ld [$806f], sp
    ld l, [hl]
    push de
    ld l, [hl]
    and d
    ld l, [hl]
    sub c
    ld l, [hl]
    rst $30
    ld l, [hl]
    and $6e
    call nz, $b36e
    ld l, [hl]
    add hl, de
    ld l, a
    ld [$2a6f], sp
    ld l, a
    dec sp
    ld l, a
    ld c, h
    ld l, a
    ld e, l
    ld l, a
    call nc, $e56f
    ld l, a
    or $6f
    rlca
    ld [hl], b
    nop
    nop
    ld sp, $0014
    ld hl, sp+$30
    inc d
    ld hl, sp+$00
    ld hl, $f814
    ld hl, sp+$20
    inc d
    add b
    nop
    nop
    inc sp
    inc d
    nop
    ld hl, sp+$32
    inc d
    ld hl, sp+$00
    inc hl
    inc d
    ld hl, sp-$08
    ld [hl+], a
    inc d
    add b
    rst $38
    nop
    dec [hl]
    inc d
    rst $38
    ld hl, sp+$34
    inc d
    rst $30
    nop
    dec h
    inc d
    rst $30
    ld hl, sp+$24
    inc d
    add b
    nop
    ld hl, sp+$31
    inc [hl]
    nop
    nop
    jr nc, jr_017_6e89

    ld hl, sp-$08
    ld hl, $f834
    nop
    jr nz, jr_017_6e91

    add b
    nop
    ld hl, sp+$33
    inc [hl]
    nop
    nop
    ld [hl-], a
    inc [hl]
    ld hl, sp-$08
    inc hl
    inc [hl]
    ld hl, sp+$00
    ld [hl+], a
    inc [hl]
    add b
    rst $38
    ld hl, sp+$35
    inc [hl]
    rst $38
    nop
    inc [hl]
    inc [hl]
    rst $30
    ld hl, sp+$25
    inc [hl]
    rst $30
    nop
    inc h
    inc [hl]
    add b
    ld hl, sp-$08
    ccf
    inc d
    nop
    nop
    ld sp, $0014

jr_017_6e89:
    ld hl, sp+$30
    inc d
    ld hl, sp+$00
    ld hl, $8014

jr_017_6e91:
    nop
    nop
    inc a
    inc d
    ld hl, sp+$00
    inc l
    inc d
    nop
    ld hl, sp+$30
    inc d
    ld hl, sp-$08
    jr nz, jr_017_6eb5

    add b
    ld hl, sp+$00
    cpl
    inc d
    nop
    nop
    inc a
    inc d
    nop
    ld hl, sp+$30
    inc d
    ld hl, sp-$08
    jr nz, jr_017_6ec6

    add b
    ld hl, sp-$08

jr_017_6eb5:
    ccf
    inc d
    nop
    nop
    inc a
    inc d
    ld hl, sp+$00
    inc l
    inc d
    nop
    ld hl, sp+$30
    inc d
    add b
    ld hl, sp-$08

jr_017_6ec6:
    ccf
    inc d
    ld hl, sp+$00
    cpl
    inc d
    nop
    nop
    inc a
    inc d
    nop
    ld hl, sp+$30
    inc d
    add b
    ld hl, sp+$00
    ccf
    inc [hl]
    nop
    ld hl, sp+$31
    inc [hl]
    nop
    nop
    jr nc, jr_017_6f15

    ld hl, sp-$08
    ld hl, $8034
    nop
    ld hl, sp+$3c
    inc [hl]
    ld hl, sp-$08
    inc l
    inc [hl]
    nop
    nop
    jr nc, jr_017_6f26

    ld hl, sp+$00
    jr nz, jr_017_6f2a

    add b
    ld hl, sp-$08
    cpl
    inc [hl]
    nop
    ld hl, sp+$3c
    inc [hl]
    nop
    nop
    jr nc, @+$36

    ld hl, sp+$00
    jr nz, jr_017_6f3b

    add b
    ld hl, sp+$00
    ccf
    inc [hl]
    nop
    ld hl, sp+$3c
    inc [hl]
    ld hl, sp-$08
    inc l
    inc [hl]
    nop

jr_017_6f15:
    nop
    jr nc, jr_017_6f4c

    add b
    ld hl, sp+$00
    ccf
    inc [hl]
    ld hl, sp-$08
    cpl
    inc [hl]
    nop
    ld hl, sp+$3c
    inc [hl]
    nop

jr_017_6f26:
    nop
    jr nc, jr_017_6f5d

    add b

jr_017_6f2a:
    nop
    ld hl, sp+$3d
    inc d
    ld hl, sp-$08
    dec l
    inc d
    nop
    nop
    inc a
    inc d
    ld hl, sp+$00
    inc l
    inc d
    add b

jr_017_6f3b:
    nop
    ld hl, sp+$3e
    inc d
    ld hl, sp-$08
    ld l, $14
    nop
    nop
    inc a
    inc d
    ld hl, sp+$00
    inc l
    inc d
    add b

jr_017_6f4c:
    nop
    nop
    dec a
    inc [hl]
    ld hl, sp+$00
    dec l
    inc [hl]
    nop
    ld hl, sp+$3c
    inc [hl]
    ld hl, sp-$08
    inc l
    inc [hl]
    add b

jr_017_6f5d:
    nop
    nop
    ld a, $34
    ld hl, sp+$00
    ld l, $34
    nop
    ld hl, sp+$3c
    inc [hl]
    ld hl, sp-$08
    inc l
    inc [hl]
    add b
    rst $38
    nop
    scf
    inc d
    rst $38
    ld hl, sp+$36
    inc d
    rst $30
    nop
    daa
    inc d
    rst $30
    ld hl, sp+$26
    inc d
    add b
    rst $38
    nop
    add hl, sp
    inc d
    rst $38
    ld hl, sp+$38
    inc d
    rst $30
    nop
    add hl, hl
    inc d
    rst $30
    ld hl, sp+$28
    inc d
    add b
    nop
    nop
    dec sp
    inc d
    nop
    ld hl, sp+$3a
    inc d
    ld hl, sp+$00
    dec hl
    inc d
    ld hl, sp-$08
    ld a, [hl+]
    inc d
    add b
    rst $38
    nop
    ld d, [hl]
    inc d
    rst $38
    ld hl, sp+$55
    inc d
    rst $30
    nop
    ld b, [hl]
    inc d
    rst $30
    ld hl, sp+$45
    inc d
    add b
    rst $38
    nop
    ld e, b
    inc d
    rst $38
    ld hl, sp+$57
    inc d
    rst $30
    nop
    ld c, b
    inc d
    rst $30
    ld hl, sp+$47
    inc d
    add b
    nop
    nop
    ld d, h
    inc d
    nop
    ld hl, sp+$53
    inc d
    ld hl, sp+$00
    ld b, h
    inc d
    ld hl, sp-$08
    ld b, e
    inc d
    add b
    nop
    nop
    ld d, c
    inc d
    nop
    ld hl, sp+$50
    inc d
    ld hl, sp+$00
    ld b, c
    inc d
    ld hl, sp-$08
    ld b, b
    inc d
    add b
    nop
    nop
    ld d, d
    inc d
    ld hl, sp+$00
    ld b, d
    inc d
    nop
    ld hl, sp+$50
    inc d
    ld hl, sp-$08
    ld b, b
    inc d
    add b
    nop
    ld hl, sp+$51
    inc [hl]
    nop
    nop
    ld d, b
    inc [hl]
    ld hl, sp-$08
    ld b, c
    inc [hl]
    ld hl, sp+$00
    ld b, b
    inc [hl]
    add b
    nop
    ld hl, sp+$52
    inc [hl]
    ld hl, sp-$08
    ld b, d
    inc [hl]
    nop
    nop
    ld d, b
    inc [hl]
    ld hl, sp+$00
    ld b, b
    inc [hl]
    add b
    inc e
    ld [hl], c
    ld d, b
    ld [hl], b
    add e
    ld [hl], b
    ld [hl], c
    ld [hl], c
    dec l
    ld [hl], c
    ld a, $71
    inc e
    ld [hl], c
    ld h, c
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld d, b
    ld [hl], b
    sub h
    ld [hl], b
    and l
    ld [hl], b
    add e
    ld [hl], b
    add d
    ld [hl], c
    sub e
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $00
    ld [hl], b
    ld a, [$d870]
    ld [hl], b
    dec bc
    ld [hl], c
    ld c, a
    ld [hl], c
    ld h, b
    ld [hl], c
    and h
    ld [hl], c
    jp z, $b971

    ld [hl], c
    and h
    ld [hl], c
    rst $18
    ld [hl], c
    jp z, $0071

    nop
    ld e, d
    inc d
    nop
    ld hl, sp+$59
    inc d
    ld hl, sp+$00
    ld c, d
    inc d
    ld hl, sp-$08
    ld c, c
    inc d
    add b
    nop
    nop
    ld e, h
    inc d
    nop
    ld hl, sp+$5b
    inc d
    ld hl, sp+$00
    ld c, h
    inc d
    ld hl, sp-$08
    ld c, e
    inc d
    add b
    rst $38
    nop
    ld e, [hl]
    inc d
    rst $38
    ld hl, sp+$5d
    inc d
    rst $30
    nop
    ld c, [hl]
    inc d
    rst $30
    ld hl, sp+$4d
    inc d
    add b
    nop
    ld hl, sp+$5a
    inc [hl]
    nop
    nop
    ld e, c
    inc [hl]
    ld hl, sp-$08
    ld c, d
    inc [hl]
    ld hl, sp+$00
    ld c, c
    inc [hl]
    add b
    nop
    ld hl, sp+$5c
    inc [hl]
    nop
    nop
    ld e, e
    inc [hl]
    ld hl, sp-$08
    ld c, h
    inc [hl]
    ld hl, sp+$00
    ld c, e
    inc [hl]
    add b
    rst $38
    ld hl, sp+$5e
    inc [hl]
    rst $38
    nop
    ld e, l
    inc [hl]
    rst $30
    ld hl, sp+$4e
    inc [hl]
    rst $30
    nop
    ld c, l
    inc [hl]
    add b
    ld hl, sp-$08
    halt
    inc d
    nop
    nop
    ld e, d
    inc d
    nop
    ld hl, sp+$59
    inc d
    ld hl, sp+$00
    ld c, d
    inc d
    add b
    nop
    nop
    ld [hl], e
    inc d
    ld hl, sp+$00
    ld h, e
    inc d
    nop
    ld hl, sp+$59
    inc d
    ld hl, sp-$08
    ld c, c
    inc d
    add b
    ld hl, sp-$08
    halt
    inc d
    nop
    nop
    ld [hl], e
    inc d
    ld hl, sp+$00
    ld h, e
    inc d
    nop
    ld hl, sp+$59
    inc d
    add b
    ld hl, sp+$00
    halt
    inc [hl]
    nop
    ld hl, sp+$5a
    inc [hl]
    nop
    nop
    ld e, c
    inc [hl]
    ld hl, sp-$08
    ld c, d
    inc [hl]
    add b
    nop
    ld hl, sp+$73
    inc [hl]
    ld hl, sp-$08
    ld h, e
    inc [hl]
    nop
    nop
    ld e, c
    inc [hl]
    ld hl, sp+$00
    ld c, c
    inc [hl]
    add b
    ld hl, sp+$00
    halt
    inc [hl]
    nop
    ld hl, sp+$73
    inc [hl]
    ld hl, sp-$08
    ld h, e
    inc [hl]
    nop
    nop
    ld e, c
    inc [hl]
    add b
    nop
    nop
    dec e
    inc d
    ld hl, sp+$00
    inc e
    inc d
    nop
    ld hl, sp+$5f
    inc d
    ld hl, sp-$08
    ld c, a
    inc d
    add b
    nop
    ld hl, sp+$1f
    inc d
    ld hl, sp-$08
    ld e, $14
    nop
    nop
    ld [hl], b
    inc d
    ld hl, sp+$00
    ld h, b
    inc d
    add b
    nop
    nop
    ld [hl], d
    inc d
    nop
    ld hl, sp+$71
    inc d
    ld hl, sp+$00
    ld h, d
    inc d
    ld hl, sp-$08
    ld h, c
    inc d
    add b
    rst $38
    nop
    ld [hl], l
    inc d
    rst $38
    ld hl, sp+$74
    inc d
    rst $30
    nop
    ld h, l
    inc d
    rst $30
    ld hl, sp+$64
    inc d
    add b
    rst $38
    nop
    ld h, [hl]
    inc d
    rst $38
    ld hl, sp+$74
    inc d
    rst $30
    nop
    ld h, l
    inc d
    rst $30
    ld hl, sp+$64
    inc d
    add b
    rst $38
    nop
    ld a, d
    inc d
    rst $38
    ld hl, sp+$79
    inc d
    rst $30
    nop
    ld l, d
    inc d
    rst $30
    ld hl, sp+$69
    inc d
    add b
    rst $38
    nop
    ld a, h
    inc d
    rst $38
    ld hl, sp+$7b
    inc d
    rst $30
    nop
    ld l, h
    inc d
    rst $30
    ld hl, sp+$6b
    inc d
    add b
    rst $38
    nop
    ld a, b
    inc d
    rst $38
    ld hl, sp+$77
    inc d
    rst $30
    nop
    ld l, b
    inc d
    rst $30
    ld hl, sp+$67
    inc d
    add b
    ld a, [$6e08]
    inc d
    rst $38
    nop
    ld a, [hl]
    inc d
    rst $38
    ld hl, sp+$7d
    inc d
    rst $30
    nop
    ld l, [hl]
    inc d
    rst $30
    ld hl, sp+$6d
    inc d
    add b
    rst $38
    nop
    ld a, a
    inc d
    rst $30
    nop
    ld l, a
    inc d
    rst $38
    ld hl, sp+$7d
    inc d
    rst $30
    ld hl, sp+$6d
    inc d
    add b
    ld a, [$6ef0]
    inc [hl]
    rst $38
    ld hl, sp+$7e
    inc [hl]
    rst $38
    nop
    ld a, l
    inc [hl]
    rst $30
    ld hl, sp+$6e
    inc [hl]
    rst $30
    nop
    ld l, l
    inc [hl]
    add b
    rst $38
    ld hl, sp+$7f
    inc [hl]
    rst $30
    ld hl, sp+$6f
    inc [hl]
    rst $38
    nop
    ld a, l
    inc [hl]
    rst $30
    nop
    ld l, l
    inc [hl]
    add b
    sub b
    ld [hl], e
    inc a
    ld [hl], d
    ld l, a
    ld [hl], d
    jp $a173


    ld [hl], e
    or d
    ld [hl], e
    sub b
    ld [hl], e
    ld c, l
    ld [hl], d
    ld e, [hl]
    ld [hl], d
    inc a
    ld [hl], d
    add b
    ld [hl], d
    sub c
    ld [hl], d
    ld l, a
    ld [hl], d
    call nc, $e573
    ld [hl], e
    jp $b373


    ld [hl], d
    ld [$d573], sp
    ld [hl], d
    ld a, [hl+]
    ld [hl], e
    and d
    ld [hl], d
    rst $30
    ld [hl], d
    call nz, $b372
    ld [hl], d
    add hl, de
    ld [hl], e
    ld [$e673], sp
    ld [hl], d
    push de
    ld [hl], d
    dec sp
    ld [hl], e
    ld a, [hl+]
    ld [hl], e
    ld c, h
    ld [hl], e
    ld e, l
    ld [hl], e
    ld l, [hl]
    ld [hl], e
    ld a, a
    ld [hl], e
    or $73
    rlca
    ld [hl], h
    jr jr_017_72ae

    add hl, hl
    ld [hl], h
    nop
    nop
    ld [hl], c
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp+$00
    ld h, c
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    add b
    nop
    nop
    ld [hl], e
    inc d
    nop
    ld hl, sp+$72
    inc d
    ld hl, sp+$00
    ld h, e
    inc d
    ld hl, sp-$08
    ld h, d
    inc d
    add b
    nop
    nop
    ld [hl], l
    inc d
    nop
    ld hl, sp+$74
    inc d
    ld hl, sp+$00
    ld h, l
    inc d
    ld hl, sp-$08
    ld h, h
    inc d
    add b
    nop
    ld hl, sp+$71
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp-$08
    ld h, c
    inc [hl]
    ld hl, sp+$00
    ld h, b
    inc [hl]
    add b
    nop
    ld hl, sp+$73
    inc [hl]
    nop
    nop
    ld [hl], d
    inc [hl]
    ld hl, sp-$08
    ld h, e
    inc [hl]
    ld hl, sp+$00
    ld h, d
    inc [hl]
    add b
    nop
    ld hl, sp+$75
    inc [hl]
    nop
    nop
    ld [hl], h
    inc [hl]
    ld hl, sp-$08
    ld h, l
    inc [hl]
    ld hl, sp+$00
    ld h, h
    inc [hl]
    add b
    ld hl, sp-$08
    ld a, a
    inc d
    nop
    nop
    ld [hl], c
    inc d
    nop
    ld hl, sp+$70
    inc d

jr_017_72ae:
    ld hl, sp+$00
    ld h, c
    inc d
    add b
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    add b
    ld hl, sp+$00
    ld l, a
    inc d
    nop
    nop
    ld a, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    add b
    ld hl, sp-$08
    ld a, a
    inc d
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    add b
    ld hl, sp-$08
    ld a, a
    inc d
    ld hl, sp+$00
    ld l, a
    inc d
    nop
    nop
    ld a, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    add b
    ld hl, sp+$00
    ld a, a
    inc [hl]
    nop
    ld hl, sp+$71
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp-$08
    ld h, c
    inc [hl]
    add b
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp+$00
    ld h, b
    inc [hl]
    add b
    ld hl, sp-$08
    ld l, a
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp+$00
    ld h, b
    inc [hl]
    add b
    ld hl, sp+$00
    ld a, a
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    add b
    ld hl, sp+$00
    ld a, a
    inc [hl]
    ld hl, sp-$08
    ld l, a
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    add b
    nop
    ld hl, sp+$7d
    inc d
    ld hl, sp-$08
    ld l, l
    inc d
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    add b
    nop
    ld hl, sp+$7e
    inc d
    ld hl, sp-$08
    ld l, [hl]
    inc d
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    add b
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    nop
    nop
    ld a, l
    inc [hl]
    ld hl, sp+$00
    ld l, l
    inc [hl]
    add b
    nop
    nop
    ld a, [hl]
    inc [hl]
    ld hl, sp+$00
    ld l, [hl]
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    add b
    nop
    nop
    ld [hl], a
    inc d
    nop
    ld hl, sp+$76
    inc d
    ld hl, sp+$00
    ld h, a
    inc d
    ld hl, sp-$08
    ld h, [hl]
    inc d
    add b
    nop
    nop
    ld a, c
    inc d
    nop
    ld hl, sp+$78
    inc d
    ld hl, sp+$00
    ld l, c
    inc d
    ld hl, sp-$08
    ld l, b
    inc d
    add b
    nop
    nop
    ld a, e
    inc d
    nop
    ld hl, sp+$7a
    inc d
    ld hl, sp+$00
    ld l, e
    inc d
    ld hl, sp-$08
    ld l, d
    inc d
    add b
    nop
    nop
    rst $18
    inc d
    nop
    ld hl, sp-$22
    inc d
    ld hl, sp+$00
    rst $08
    inc d
    ld hl, sp-$08
    adc $14
    add b
    nop
    nop
    rst $38
    inc d
    nop
    ld hl, sp-$02
    inc d
    ld hl, sp+$00
    rst $28
    inc d
    ld hl, sp-$08
    xor $14
    add b
    nop
    nop
    cp a
    inc d
    nop
    ld hl, sp-$42
    inc d
    ld hl, sp+$00
    xor a
    inc d
    ld hl, sp-$08
    xor [hl]
    inc d
    add b
    nop
    nop
    ld e, l
    inc d
    ld hl, sp+$00
    ld e, h
    inc d
    nop
    ld hl, sp+$5b
    inc d
    ld hl, sp-$08
    ld e, d
    inc d
    add b
    nop
    nop
    ld e, a
    inc d
    ld hl, sp+$00
    ld e, [hl]
    inc d
    nop
    ld hl, sp+$5b
    inc d
    ld hl, sp-$08
    ld e, d
    inc d
    add b
    nop
    ld hl, sp+$5d
    inc [hl]
    ld hl, sp-$08
    ld e, h
    inc [hl]
    nop
    nop
    ld e, e
    inc [hl]
    ld hl, sp+$00
    ld e, d
    inc [hl]
    add b
    nop
    ld hl, sp+$5f
    inc [hl]
    ld hl, sp-$08
    ld e, [hl]
    inc [hl]
    nop
    nop
    ld e, e
    inc [hl]
    ld hl, sp+$00
    ld e, d
    inc [hl]
    add b
    ld a, $75
    ld [hl], d
    ld [hl], h
    and l
    ld [hl], h
    sub e
    ld [hl], l
    ld c, a
    ld [hl], l
    ld h, b
    ld [hl], l
    ld a, $75
    add e
    ld [hl], h
    sub h
    ld [hl], h
    ld [hl], d
    ld [hl], h
    or [hl]
    ld [hl], h
    rst $00
    ld [hl], h
    and l
    ld [hl], h
    and h
    ld [hl], l
    or l
    ld [hl], l
    sub e
    ld [hl], l
    jp hl


    ld [hl], h
    inc e
    ld [hl], l
    ld a, [$2d74]
    ld [hl], l
    ld [hl], c
    ld [hl], l
    add d
    ld [hl], l
    add $75
    db $ec
    ld [hl], l
    db $db
    ld [hl], l
    add $75
    ld bc, $ec76
    ld [hl], l
    nop
    nop
    ld [hl], c
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp+$00
    ld h, c
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    add b
    nop
    nop
    ld [hl], e
    inc d
    nop
    ld hl, sp+$72
    inc d
    ld hl, sp+$00
    ld h, e
    inc d
    ld hl, sp-$08
    ld h, d
    inc d
    add b
    nop
    nop
    ld [hl], l
    inc d
    nop
    ld hl, sp+$74
    inc d
    ld hl, sp+$00
    ld h, l
    inc d
    ld hl, sp-$08
    ld h, h
    inc d
    add b
    nop
    ld hl, sp+$71
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp-$08
    ld h, c
    inc [hl]
    ld hl, sp+$00
    ld h, b
    inc [hl]
    add b
    nop
    ld hl, sp+$73
    inc [hl]
    nop
    nop
    ld [hl], d
    inc [hl]
    ld hl, sp-$08
    ld h, e
    inc [hl]
    ld hl, sp+$00
    ld h, d
    inc [hl]
    add b
    nop
    ld hl, sp+$75
    inc [hl]
    nop
    nop
    ld [hl], h
    inc [hl]
    ld hl, sp-$08
    ld h, l
    inc [hl]
    ld hl, sp+$00
    ld h, h
    inc [hl]
    add b
    ld hl, sp-$08
    ld a, a
    inc d
    nop
    nop
    ld [hl], c
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp+$00
    ld h, c
    inc d
    add b
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    ld hl, sp-$08
    ld h, b
    inc d
    add b
    ld hl, sp-$08
    ld a, a
    inc d
    nop
    nop
    ld a, h
    inc d
    ld hl, sp+$00
    ld l, h
    inc d
    nop
    ld hl, sp+$70
    inc d
    add b
    ld hl, sp+$00
    ld a, a
    inc [hl]
    nop
    ld hl, sp+$71
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    ld hl, sp-$08
    ld h, c
    inc [hl]
    add b
    ld hl, sp+$00
    ld h, b
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    add b
    ld hl, sp+$00
    ld a, a
    inc [hl]
    nop
    nop
    ld [hl], b
    inc [hl]
    nop
    ld hl, sp+$7c
    inc [hl]
    ld hl, sp-$08
    ld l, h
    inc [hl]
    add b
    nop
    nop
    ld [hl], a
    inc d
    nop
    ld hl, sp+$76
    inc d
    ld hl, sp+$00
    ld h, a
    inc d
    ld hl, sp-$08
    ld h, [hl]
    inc d
    add b
    nop
    nop
    ld a, c
    inc d
    nop
    ld hl, sp+$78
    inc d
    ld hl, sp+$00
    ld l, c
    inc d
    ld hl, sp-$08
    ld l, b
    inc d
    add b
    nop
    nop
    ld a, e
    inc d
    nop
    ld hl, sp+$7a
    inc d
    ld hl, sp+$00
    ld l, e
    inc d
    ld hl, sp-$08
    ld l, d
    inc d
    add b
    nop
    nop
    ld a, [hl]
    inc d
    nop
    ld hl, sp+$7d
    inc d
    ld hl, sp+$00
    ld l, [hl]
    inc d
    ld hl, sp-$08
    ld l, l
    inc d
    add b
    nop
    nop
    ld l, a
    inc d
    nop
    ld hl, sp+$7d
    inc d
    ld hl, sp+$00
    ld l, [hl]
    inc d
    ld hl, sp-$08
    ld l, l
    inc d
    add b
    nop
    nop
    rst $18
    inc d
    nop
    ld hl, sp-$22
    inc d
    ld hl, sp+$00
    rst $08
    inc d
    ld hl, sp-$08
    adc $14
    add b
    nop
    nop
    rst $38
    inc d
    nop
    ld hl, sp-$02
    inc d
    ld hl, sp+$00
    rst $28
    inc d
    ld hl, sp-$08
    xor $14
    add b
    nop
    nop
    cp a
    inc d
    nop
    ld hl, sp-$42
    inc d
    ld hl, sp+$00
    xor a
    inc d
    ld hl, sp-$08
    xor [hl]
    inc d
    add b
    ei
    ld [$145b], sp
    nop
    nop
    ld e, l
    inc d
    nop
    ld hl, sp+$5c
    inc d
    ld hl, sp+$00
    ld e, e
    inc d
    ld hl, sp-$08
    ld e, d
    inc d
    add b
    ld hl, sp+$00
    ld e, [hl]
    inc d
    nop
    nop
    ld e, a
    inc d
    nop
    ld hl, sp+$5c
    inc d
    ld hl, sp-$08
    ld e, d
    inc d
    add b
    ei
    ldh a, [$ff5b]
    inc [hl]
    nop
    ld hl, sp+$5d
    inc [hl]
    nop
    nop
    ld e, h
    inc [hl]
    ld hl, sp-$08
    ld e, e
    inc [hl]
    ld hl, sp+$00
    ld e, d
    inc [hl]
    add b
    nop
    ld hl, sp+$5f
    inc [hl]
    ld hl, sp-$08
    ld e, [hl]
    inc [hl]
    nop
    nop
    ld e, h
    inc [hl]
    ld hl, sp+$00
    ld e, d
    inc [hl]
    add b
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    inc e
    ld [hl], a
    inc e
    ld [hl], a
    rra
    ld [hl], a
    rra
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    inc [hl]
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    dec d
    ld [hl], a
    inc e
    ld [hl], a
    inc e
    ld [hl], a
    rra
    ld [hl], a
    rra
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    ld [hl+], a
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    dec h
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    inc [hl]
    ld [hl], a
    inc [hl]
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ld [de], a
    ld [hl], a
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $f0ff

jr_017_772b:
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    rra
    nop
    rra
    db $01
    db $ff

; Returns the (S/W)RAM address in `bc`, indexed by register `a`.
; This gets called (in bank_000) when the text byte is larger than $A0. Indicating we are going to
; read the text byte from SRAM (and maybe WRAM?)
;
; Clobbers a, hl, bc
; Returns: bc 
GetSRAMText: ; 17x7739
    ld a, b
    sub $a0
    sla a
    ld hl, TileIndexSRAMPointerTable
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ret

TileIndexSRAMPointerTable:
    dw sPlayerName
    dw sPlayerName+1 
    dw sPlayerName+2
    dw sPlayerName+3
    dw sSeasonTileIDPart1
    dw sSeasonTileIDPart1+1
    dw sSeasonTileIDPart2
    dw sSeasonTileIDPart2+1
    dw sSeasonTileIDPart2+2
    dw sSeasonTileIDPart2+3
    dw sAMorPMTileIndex
    db $18, $B9,
    db $44, $BA,
    db $45, $BA,
    db $46, $BA,
    db $47, $BA,
    db $48, $BA,
    dw sDayOfTheMonthSecondDigitTileIndex
    db $28, $B9,
    db $29, $B9,
    db $2A, $B9,
    db $2B, $B9,
    db $2C, $B9,
    db $33, $B9,
    db $34, $B9,
    db $35, $B9,
    db $36, $B9,
    db $37, $B9,
    db $2D, $B9,
    db $2E, $B9,
    dw sNumberOfFencePostsTileIndex1
    db $30, $B9,
    db $31, $B9, $32, $B9, $13, $CC, $14, $CC, $00, $CC, $01, $CC, $02, $CC, $03, $CC,
    db $19, $B9, $1A, $B9, $EC, $CB, $ED, $CB, $24, $B9, $25, $B9, $26, $B9, $27, $B9,
    db $1B, $B9, $1C, $B9, $1D, $B9, $1E, $B9, $1F, $B9, $20, $B9, $21, $B9, $22, $B9,
    db $23, $B9, $9D, $CC, $9E, $CC, $9F, $CC, $A0, $CC, $A1, $CC, $A2, $CC, $A3, $CC,
    db $AD, $CC, $AE, $CC, $AF, $CC, $B0, $CC, $B1, $CC, $F7, $CB, $F8, $CB, $F9, $CB,
    db $FA, $CB, $FB, $CB, $FC, $CB, $FD, $CB, $53, $BA, $17, $B9, $54, $BA, $FD, $00,
    db $55, $BA, $56, $BA, $57, $BA, $58, $BA, $59, $BA, $5A, $BA, $5B, $BA, $5C, $BA,
    db $5D, $BA, $5E, $BA, $5F, $BA, $FB, $CB, $FD, $00, $FD, $00, $FD, $00, $FD, $00,
    db $00, $04, $9B, $10, $02, $13, $00, $DE, $DF, $94, $00, $4B, $00, $10, $77, $01,
    db $34, $35, $22, $00, $EE, $EF, $34, $A4, $00, $FF, $37, $11, $01, $DC, $DD, $34,
    db $35, $5C, $FB, $6C, $6D, $C2, $00, $64, $65, $66, $67, $24, $FF, $25, $35, $C7,
    db $C9, $35, $05, $06, $20, $FF, $21, $22, $23, $05, $06, $11, $01, $EC, $FF, $ED,
    db $35, $34, $5D, $7C, $7D, $34, $35, $FF, $36, $11, $01, $74, $75, $76, $77, $26,
    db $FF, $27, $B8, $C7, $C9, $B9, $15, $16, $30, $3F, $31, $32, $33, $15, $16, $11,
    db $45, $05, $C2, $04, $FF, $AA, $AB, $AC, $AD, $28, $29, $C7, $C8, $FF, $C8, $C9,
    db $07, $08, $40, $41, $42, $43, $FF, $07, $08, $11, $01, $37, $36, $37, $36, $FB,
    db $48, $49, $61, $00, $11, $01, $6E, $6F, $7E, $FF, $7F, $38, $39, $C7, $E7, $E8,
    db $C9, $17, $FF, $18, $50, $51, $52, $53, $17, $18, $11, $FF, $01, $70, $71, $72,
    db $73, $58, $59, $BE, $F7, $BF, $CE, $CF, $03, $02, $A8, $A9, $D7, $D8, $FF, $D8,
    db $D9, $09, $19, $60, $61, $62, $63, $FF, $09, $19, $11, $01, $BA, $BB, $BC, $BD,
    db $FF, $A8, $A9, $A4, $A5, $A6, $A7, $11, $01, $6F, $44, $45, $45, $45, $43, $00,
    db $D0, $D1, $12, $00, $FF, $D4, $D5, $D6, $CA, $CB, $CC, $CD, $44, $7F, $45, $B4,
    db $B5, $B6, $B7, $11, $01, $E3, $01, $BF, $03, $04, $45, $45, $E0, $E1, $12, $00,
    db $E4, $FF, $E5, $E6, $A0, $A1, $A2, $A3, $45, $45, $6F, $C4, $C5, $C5, $C6, $03,
    db $04, $0A, $0B, $10, $00, $BD, $0C, $07, $02, $B0, $B1, $B2, $B3, $E2, $04, $D4,
    db $76, $03, $04, $1A, $1B, $10, $00, $1C, $F0, $F1, $12, $00, $7F, $F4, $68, $69,
    db $C0, $C1, $C2, $C3, $E2, $04, $FF, $E4, $11, $01, $4A, $4B, $45, $45, $2A, $75,
    db $2B, $10, $00, $2C, $84, $08, $47, $78, $79, $21, $09, $7E, $05, $02, $5A, $5B,
    db $44, $45, $3A, $3B, $10, $00, $CD, $3C, $A5, $0A, $A8, $A9, $21, $0B, $E2, $04,
    db $F4, $11, $37, $01, $6A, $6B, $01, $0C, $03, $04, $87, $0C, $03, $0D, $FF, $1D,
    db $1E, $1F, $3D, $3E, $C9, $11, $01, $5B, $7A, $7B, $21, $0E, $13, $14, $26, $0E,
    db $D2, $23, $0F, $FF, $2D, $2E, $2F, $4C, $4D, $3F, $11, $01, $D3, $DA, $DB, $87,
    db $03, $22, $0E, $E2, $03, $11, $0D, $0E, $3E, $10, $00, $0F, $11, $01, $EA, $EB,
    db $27, $12, $22, $0C, $ED, $F2, $23, $13, $F7, $F8, $21, $00, $11, $10, $12, $5E,
    db $19, $00, $54, $55, $56, $57, $1A, $01, $10, $2F, $25, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00,
    db $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1D, $00, $00, $04,
    db $E7, $30, $03, $02, $2F, $00, $A5, $00, $31, $00, $00, $EF, $14, $15, $13, $12,
    db $23, $00, $08, $09, $13, $E7, $12, $1C, $1D, $83, $00, $43, $01, $34, $35, $00,
    db $DF, $00, $04, $05, $23, $22, $23, $00, $18, $19, $CF, $23, $22, $0E, $0F, $83,
    db $00, $43, $01, $24, $25, $F6, $01, $04, $33, $32, $23, $00, $28, $29, $33, $32,
    db $63, $1E, $1F, $83, $00, $43, $01, $03, $04, $10, $11, $23, $00, $DB, $38, $39,
    db $8B, $00, $10, $11, $03, $04, $20, $21, $00, $2F, $00, $C3, $00, $0B, $04, $2F,
    db $00, $0F, $04, $0F, $04, $0F, $04, $0F, $04, $00, $2F, $00, $0F, $04, $2F, $00,
    db $0F, $04, $0F, $04, $0F, $04, $0F, $04, $8F, $03, $00, $0F, $04, $2F, $00, $0F,
    db $04, $2F, $00, $0F, $04, $0F, $04, $0F, $04, $0F, $04, $90, $2F, $00, $0F, $04,
    db $2F, $00, $01, $04, $31, $0F, $04, $09, $04, $02, $F3, $03, $31, $0F, $04, $87,
    db $00, $16, $12, $24, $25, $FC, $0F, $04, $05, $25, $46, $47, $26, $22, $34, $35,
    db $3C, $0F, $04, $A5, $00, $56, $57, $36, $32, $0F, $04, $4B, $00, $FC, $0F, $04,
    db $69, $00, $5C, $5D, $24, $25, $40, $07, $09, $06, $2F, $00, $87, $00, $41, $2F,
    db $37, $1F, $00, $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1D, $00, $00, $04, $5D, $FF, $2E, $00, $F0, $00, $CF, $20, $00, $B0, $24, $00,
    db $CA, $01, $01, $0F, $20, $00, $F0, $24, $00, $05, $01, $F1, $00, $BF, $F2, $01,
    db $F3, $01, $F2, $01, $01, $03, $7F, $FF, $00, $F9, $7E, $3E, $FF, $9E, $FF, $F0,
    db $F7, $FF, $3B, $FC, $07, $03, $FC, $00, $FE, $00, $7B, $87, $78, $09, $04, $F3,
    db $00, $FC, $03, $07, $05, $3F, $FF, $00, $E0, $1F, $00, $FF, $05, $06, $80, $07,
    db $FA, $50, $00, $7F, $06, $01, $FC, $03, $00, $FF, $3F, $09, $FF, $10, $00, $02,
    db $08, $FF, $92, $0A, $12, $00, $0F, $01, $00, $0A, $7F, $CF, $00, $3F, $C0, $00,
    db $FF, $C0, $06, $02, $EA, $01, $0B, $0F, $D0, $0A, $F0, $08, $01, $F8, $00, $07,
    db $D9, $F8, $07, $07, $03, $0D, $3C, $C0, $01, $0F, $3E, $01, $FF, $5D, $3E, $BF,
    db $7F, $B8, $7F, $87, $7F, $FB, $BF, $7F, $03, $0F, $8F, $00, $70, $80, $30, $BF,
    db $C0, $70, $80, $20, $D0, $FF, $A0, $0E, $0D, $02, $20, $00, $F3, $24, $00, $C1,
    db $11, $09, $12, $C1, $11, $09, $12, $C1, $12, $DF, $08, $07, $0B, $07, $FB, $22,
    db $00, $F5, $03, $FF, $F0, $FF, $EC, $1F, $38, $C7, $19, $66, $6F, $1E, $21, $1C,
    db $23, $21, $00, $83, $44, $2B, $00, $FF, $C0, $3F, $03, $FF, $0F, $FF, $1F, $FF,
    db $FF, $3F, $F0, $08, $F1, $10, $E8, $10, $E0, $F5, $B0, $40, $0E, $37, $80, $0E,
    db $7E, $FF, $F7, $0F, $DF, $1F, $27, $1B, $27, $05, $63, $0F, $C0, $40, $7F, $BF,
    db $40, $A0, $40, $80, $C0, $80, $53, $10, $FB, $F0, $0F, $E0, $0D, $3F, $00, $03,
    db $00, $01, $FD, $FC, $62, $11, $AF, $FF, $07, $FF, $BF, $7C, $1F, $5D, $B2, $70,
    db $8D, $29, $63, $12, $C2, $13, $00, $11, $FD, $7F, $64, $13, $DF, $DE, $AF, $D7,
    db $AF, $8F, $F7, $57, $88, $57, $64, $14, $FE, $02, $FD, $FC, $BF, $FB, $F8, $F6,
    db $28, $F4, $01, $40, $15, $7F, $DB, $80, $80, $80, $02, $00, $80, $01, $21, $03,
    db $FC, $FD, $F8, $60, $03, $7F, $8F, $0F, $F1, $01, $3E, $FC, $00, $06, $A0, $10,
    db $7F, $80, $0F, $F0, $E1, $FE, $FE, $80, $06, $7F, $7F, $BF, $40, $BF, $98, $7F,
    db $FD, $3F, $C0, $09, $FC, $3F, $3E, $CF, $8C, $F3, $FF, $E3, $FC, $00, $FF, $AF,
    db $40, $6F, $80, $5F, $2F, $C0, $4F, $80, $F0, $20, $13, $70, $60, $00, $F0, $C1,
    db $12, $09, $13, $09, $12, $41, $23, $0D, $03, $0D, $03, $FF, $1D, $03, $25, $1B,
    db $C5, $3B, $85, $7B, $EF, $02, $FD, $02, $FD, $61, $11, $0C, $13, $0E, $5F, $11,
    db $0E, $11, $0F, $10, $90, $26, $00, $01, $12, $FB, $81, $42, $23, $00, $01, $C2,
    db $01, $02, $30, $FF, $C0, $E0, $10, $A0, $42, $C0, $26, $C2, $EF, $05, $80, $47,
    db $80, $30, $0A, $09, $17, $0D, $FF, $13, $0C, $03, $04, $0B, $06, $09, $02, $7F,
    db $05, $03, $04, $01, $02, $40, $87, $20, $15, $7F, $04, $86, $01, $84, $0A, $80,
    db $08, $20, $0C, $DF, $80, $40, $C0, $80, $40, $A2, $0C, $01, $00, $FF, $03, $01,
    db $06, $07, $08, $40, $B1, $00, $FF, $C0, $00, $E0, $40, $A0, $60, $90, $E0, $FF,
    db $10, $D0, $68, $10, $E8, $FF, $7E, $7F, $FF, $BE, $4E, $BD, $3E, $5D, $24, $5A,
    db $14, $FF, $2A, $18, $24, $08, $14, $07, $8B, $05, $FF, $8B, $03, $05, $0F, $00,
    db $10, $0C, $10, $FF, $00, $20, $10, $20, $10, $70, $EC, $D0, $FF, $EC, $F8, $84,
    db $84, $60, $04, $02, $04, $5F, $02, 

jr_017_7d13:
    ld [bc], a
    dec b

jr_017_7d15:
    ld [bc], a
    dec a
    ld [hl], h
    ld [hl-], a
    rlca
    jr nz, jr_017_7d1c

jr_017_7d1c:
    ld sp, hl
    ld bc, $32f0
    ld b, d
    ld [de], a
    nop
    ld bc, $e001
    pop bc
    rst $38
    ld a, $30
    ret z

    db $10
    ld l, b
    nop
    inc e
    ld b, b
    rst $38
    cp a
    sbc a
    ld a, a
    add a
    ld a, b
    ld hl, sp+$07
    nop
    db $fd
    ldh [$fff2], a
    inc [hl]
    ld [$fe5f], sp
    cp [hl]
    pop bc
    ret nz

    db $fd
    inc a
    ld d, d
    ld [bc], a
    ld b, $06
    add hl, de
    ld [$ff17], sp
    rst $38
    nop
    rra
    ldh [$ff1f], a
    jr nz, jr_017_7d63

    jr nc, jr_017_7d91

    rst $08
    call nz, $3ec1
    inc e
    ret nc

    ld [hl], $0b
    inc hl
    ld [hl], b
    add b
    db $fd
    inc c

jr_017_7d63:
    nop
    ld de, $0709
    ld [$f707], sp
    rrca
    rst $38
    db $f4
    rrca
    pop af
    rrca
    ldh a, [c]
    rrca
    ld l, $fd
    db $fd
    cp $20
    nop
    add d
    db $fd
    pop af
    cp $17
    cp $8f
    rrca
    cp $ff
    cp $96
    ld a, [hl-]
    pop de
    rrca
    db $10
    db $10
    ld bc, $02a7
    ld bc, $3002
    nop
    pop af

jr_017_7d91:
    add hl, bc
    inc b
    ld hl, $0010
    rst $38
    adc a
    rlca
    ld [$120d], sp
    inc c
    inc de

jr_017_7d9e:
    jr jr_017_7d9e

    ret nz

    ld [hl+], a
    inc sp
    rrca
    scf
    rst $08
    ld bc, $0002
    rst $38
    add c
    nop
    add c
    add c
    ld b, b
    add c
    ld b, d
    ld b, d
    rst $18
    and l
    add $a9
    xor [hl]
    pop de
    add l
    ld a, $02
    dec e
    rst $38
    rrca
    db $10
    ld c, $11
    inc c
    inc de
    inc c
    inc de
    di
    ld b, $01
    sub c
    inc c
    or b
    inc c
    ld b, b
    ld h, b
    sub b
    jr jr_017_7dd2

    db $e4

jr_017_7dd2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_017_7f44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_017_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
