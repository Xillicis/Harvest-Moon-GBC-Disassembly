; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    dec a
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $5e7e
    ld c, $3d
    ld de, $8800
    call Call_000_31a0
    ld hl, $58d0
    ld c, $3d
    ld de, $9000
    call Call_000_31a0
    ld hl, $6157
    ld c, $3d
    ld de, $8000
    call Call_000_31a0
    ld hl, $6236
    ld c, $3d
    ld de, $9800
    call Call_000_31a0
    ld hl, $63af
    ld c, $3d
    ld de, vBGMap1
    call Call_000_31a0
    ld a, $60
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld hl, $40b6
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $00
    call Call_000_25c5
    ld a, $83
    ld [$c0a2], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $00
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_03d_4106
    call Call_03d_40a7
    ret


Call_03d_40a7:
    ld a, [$c0a2]
    ld b, a
    ld hl, $ff40

jr_03d_40ae:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_03d_40ae

    ld [hl], b
    ret


    ld [hl+], a
    ld b, c
    ld d, b
    ld b, c
    di
    ld b, c
    scf
    ld b, d
    rst $10
    ld b, d
    inc b
    inc e
    inc l
    ld l, h
    rst $10
    ld b, d
    inc b
    inc e
    jr z, @+$6a

    rst $10
    ld b, d
    inc b
    jr jr_03d_40e7

    ld e, b
    rst $10
    ld b, d
    inc b
    jr jr_03d_40ed

    jr jr_03d_40ae

    ld b, d
    inc b
    inc b
    inc b
    inc b
    rst $10
    ld b, d
    inc b
    nop

jr_03d_40e0:
    nop
    nop
    ld b, $43
    inc l
    ld b, e
    db $e4

jr_03d_40e7:
    ld b, b
    pop af
    ld d, a
    inc b
    ld e, b
    ld e, b

jr_03d_40ed:
    jr jr_03d_40e0

    ld d, a
    inc b
    jr jr_03d_410b

    nop
    pop af
    ld d, a
    inc b
    inc b
    inc b
    inc b
    pop af
    ld d, a
    inc b
    nop
    nop
    nop
    ld b, $43
    inc l
    ld b, e
    ld [bc], a
    ld b, c

Call_03d_4106:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]

jr_03d_410b:
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4119
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_03d_4328

    push bc
    ld hl, $c0a3
    ld a, $6c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld a, $1c
    ld [hl], a
    ld hl, $cd63
    ld b, $04
    call Call_03d_433e
    jr nz, jr_03d_414a

    ldh a, [$ff93]
    dec a
    ldh [$ff93], a
    cp $d0
    jr z, jr_03d_414e

jr_03d_414a:
    pop hl
    dec hl
    dec hl
    ret


jr_03d_414e:
    pop hl
    ret


    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_03d_4328

    push bc
    ld hl, $cd63
    ld a, [hl]
    and $02
    rlca
    rlca
    ld b, a
    ld a, [$c0a2]
    and $f7
    or b
    ld [$c0a2], a
    ld b, $04
    call Call_03d_433e
    jr nz, jr_03d_419d

    ldh a, [$ff91]
    dec a
    ldh [$ff91], a
    or a
    jr z, jr_03d_41a1

    jr jr_03d_419d

    ld hl, $41a3
    jr jr_03d_4195

    ld hl, $41b3
    jr jr_03d_4195

    ld hl, $41c3
    jr jr_03d_4195

    ld hl, $41d3
    jr jr_03d_4195

    ld hl, $41e3
    jr jr_03d_4195

jr_03d_4195:
    call Call_000_23e9
    ld a, $04
    ld [$cd63], a

jr_03d_419d:
    pop hl
    dec hl
    dec hl
    ret


jr_03d_41a1:
    pop hl
    ret


    add hl, hl
    dec b
    xor l
    adc $cf
    ret nc

    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec b
    xor l
    xor [hl]
    rst $08
    ret nc

    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec b
    xor l
    xor [hl]
    xor a
    ret nc

    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec b
    xor l
    xor [hl]
    xor a
    or b
    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    dec b
    xor l
    xor [hl]
    xor a
    or b
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_03d_4328

    push bc
    ld hl, $cd67
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


Call_03d_4237:
    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_03d_4328

    push bc
    ld hl, $cd63
    ld a, [hl]
    and $02
    rlca
    rlca
    ld b, a
    ld a, [$c0a2]
    and $f7
    or b
    ld [$c0a2], a
    ld b, $04
    call Call_03d_433e
    ld hl, $cd77
    call Call_03d_42bc
    ld de, $5484
    call Call_03d_42ce
    ld hl, $cd75
    ld b, $04
    call Call_03d_433e
    dec hl
    dec hl
    call nz, Call_03d_42bc
    ld de, $546b
    call Call_03d_42ce
    ld hl, $cd71
    ld b, $02
    call Call_03d_433e
    dec hl
    dec hl
    call nz, Call_03d_42bc
    ld de, $545a
    call Call_03d_42ce
    ld hl, $cd6d
    ld b, $03
    call Call_03d_433e
    dec hl
    dec hl
    call z, Call_03d_42bc
    ld de, $5449
    call Call_03d_42ce
    ld hl, $cd69
    ld b, $08
    call Call_03d_433e
    dec hl
    dec hl
    call z, Call_03d_42bc
    ld de, $5440
    call Call_03d_42ce
    ld a, [$cd77]
    cp $50
    jr c, jr_03d_42ba

    pop hl
    dec hl
    dec hl
    ret


jr_03d_42ba:
    pop hl
    ret


Call_03d_42bc:
    dec [hl]
    inc hl
    inc hl
    inc hl
    ld b, $02
    call Call_03d_433e
    dec hl
    dec hl
    bit 0, a
    jr z, jr_03d_42cc

    inc [hl]

jr_03d_42cc:
    dec hl
    ret


Call_03d_42ce:
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, d
    ld l, e
    call Call_000_20de
    ret


    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_03d_4328

    push bc
    call Call_03d_4237
    pop hl
    push hl
    ld b, [hl]
    inc hl
    ld de, $c0a3
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$cd65]
    inc a
    cp b
    jr nz, jr_03d_42ff

    xor a
    ld [$cd65], a
    pop de
    ret


jr_03d_42ff:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


    push bc
    ld a, $00
    ldh [rSTAT], a
    ld a, $04
    ld [$cd62], a
    xor a
    ld [$cb56], a
    ld a, $11
    ld [wSTAT_HandlerIndex], a
    ld a, $01
    ld [$c0a6], a
    ld a, [$c0a2]
    and $83
    ld [$c0a2], a
    pop hl
    ret


Jump_03d_4328:
    ld hl, $40e8
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c

jr_03d_4334:
    ld a, [hl+]
    or a
    ret z

    ld d, [hl]
    inc hl
    ld e, a
    ld a, [hl+]
    ld [de], a
    jr jr_03d_4334

Call_03d_433e:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    ld a, [hl+]
    ld b, [hl]
    ld c, a
    or b
    ret z

    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


    ret


    call Call_03d_43f2
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $6b51
    ld c, $3e
    ld de, $8000
    call Call_000_31a0
    ld hl, $64fa
    ld c, $3e
    ld de, $8800
    call Call_000_31a0
    ld hl, $7ae6
    ld c, $37
    ld de, $9000
    call Call_000_31a0
    ld hl, $7afa
    ld c, $30
    ld de, $9400
    call Call_000_31a0
    ld hl, $7bd7
    ld c, $33
    ld de, $9800
    call Call_000_31a0
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    ld hl, $4447
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd66], a
    ld [$cd65], a
    xor a
    ld [$cd67], a
    ld [$cd68], a
    ld a, [$cd61]
    or a
    jr z, jr_03d_43cf

    ld a, $01
    ld [$cd66], a

jr_03d_43cf:
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $00
    call Call_000_25c5
    ld a, $83
    ld [$c0a2], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $4d
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_03d_43f2:
    xor a
    ld [$cd61], a
    ld hl, $bff0
    ld de, $441e
    ld b, $10
    call Call_03d_4414
    ret nz

    ld hl, $a002
    ld de, $442e
    ld b, $10
    call Call_03d_4414
    ret nz

    ld a, $01
    ld [$cd61], a
    ret


Call_03d_4414:
jr_03d_4414:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc hl
    dec b
    jr nz, jr_03d_4414

    cp a
    ret


    ld b, d
    ld h, c
    ld h, e
    ld l, e
    ld d, l
    ld [hl], b
    ld e, a
    ld b, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld hl, $2423
    dec h
    ld c, $01

jr_03d_4430:
    ld c, $01
    ld c, $01
    ld c, $01

jr_03d_4436:
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld a, [$cb4e]
    or a
    ret nz

    call Call_03d_4106
    ret


    ret nc

jr_03d_4448:
    ld b, h
    inc b
    nop
    nop
    nop
    ret nc

    ld b, h
    inc b
    inc b
    inc b
    inc b
    ret nc

    ld b, h
    inc b
    jr jr_03d_4470

    nop
    ret nc

    ld b, h
    inc b
    ld e, b
    ld e, b
    jr jr_03d_4430

    ld b, h
    inc b
    ld l, b
    ld l, b
    jr jr_03d_4436

jr_03d_4466:
    ld b, h
    inc b
    ld l, h
    ld l, h
    inc e
    sub [hl]
    ld b, l
    adc a
    ld b, h
    xor l

jr_03d_4470:
    ld b, h
    ret nc

    ld b, h
    inc b
    ld e, b
    ld e, b
    jr jr_03d_4448

    ld b, h
    inc b
    jr jr_03d_4494

    nop
    ret nc

    ld b, h
    inc b
    inc b
    inc b
    inc b
    ret nc

jr_03d_4484:
    ld b, h
    inc b
    nop
    nop
    nop
    dec bc
    ld b, l
    inc l
    ld b, e
    bit 0, h
    ret nc

    ld b, h
    inc b
    ld e, b
    ld e, b

jr_03d_4494:
    jr jr_03d_4466

    ld b, h
    inc b
    jr jr_03d_44b2

    nop
    ret nc

    ld b, h
    inc b
    inc b
    inc b
    inc b
    ret nc

    ld b, h
    inc b
    nop
    nop
    nop
    ld b, e
    ld b, l
    inc l
    ld b, e
    bit 0, h
    ret nc

    ld b, h
    inc b
    ld e, b
    ld e, b

jr_03d_44b2:
    jr jr_03d_4484

    ld b, h
    inc b
    jr jr_03d_44d0

    nop
    ret nc

    ld b, h
    inc b
    inc b
    inc b
    inc b
    ret nc

    ld b, h
    inc b
    nop
    nop
    nop
    ld h, c
    ld b, l
    inc l
    ld b, e
    bit 0, h
    nop
    inc l
    ld b, e
    bit 0, h

jr_03d_44d0:
    push bc
    call Call_03d_4630
    pop hl
    push hl
    ld b, [hl]
    inc hl
    ld de, $c0a3
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld e, b
    push hl
    ld hl, $cd63
    ld b, $04
    call Call_03d_433e
    pop hl
    ld a, [$cd64]
    jr nz, jr_03d_44f7

    inc a
    ld [$cd64], a

jr_03d_44f7:
    ld a, [$cd65]
    inc a
    cp e
    jr nz, jr_03d_4504

    xor a
    ld [$cd65], a
    pop bc
    ret


jr_03d_4504:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $00
    ldh [rSTAT], a
    ld a, $01
    ld [$c0a6], a
    xor a
    ld [$ccc1], a
    push hl
    ld hl, $cd62
    ld b, $05
    call Call_03d_433e
    pop hl
    cp $02
    jr z, jr_03d_453d

    cp $03
    jr z, jr_03d_4539

    cp $04
    jr nz, jr_03d_4532

    ld a, $02

jr_03d_4532:
    ld [$c90b], a
    ld a, $26
    jr jr_03d_453f

jr_03d_4539:
    ld a, $29
    jr jr_03d_453f

jr_03d_453d:
    ld a, $27

jr_03d_453f:
    ld [wSTAT_HandlerIndex], a
    ret


    ld h, b
    dec b
    nop
    inc e
    ld bc, $1c00
    ld a, $00
    ldh [rSTAT], a
    xor a
    ld [$cb56], a
    inc a
    ld [$c0a6], a
    ld a, $12
    ld [wSTAT_HandlerIndex], a
    ld a, $01
    ld [$cb92], a
    ret


    ld a, [$cb4f]
    or a
    ret nz

    ld a, $ff
    ld [$cb92], a
    ld a, $00
    ldh [rSTAT], a
    di
    xor a
    ld [$cb56], a
    ld a, $03
    ld [$c910], a
    ld a, [$b90a]
    cp $01
    jr nz, jr_03d_458b

    ld a, $28
    ld [$cb50], a
    ld a, $02
    ld [$cb4f], a
    ret


jr_03d_458b:
    ld a, $02
    ld [$cb50], a
    ld a, $02
    ld [$cb4f], a
    ret


    push bc
    call Call_03d_4630
    call Call_03d_45b7
    ld hl, $cd67
    ld b, $0a
    call Call_03d_433e
    ld hl, $cd68
    ld b, $b4
    call z, Call_03d_433e
    pop hl
    jr z, jr_03d_45b2

    jr jr_03d_45c8

jr_03d_45b2:
    inc hl
    inc hl
    inc hl
    inc hl
    ret


Call_03d_45b7:
    ld hl, $cd63
    ld b, $04
    call Call_03d_433e
    ld a, [$cd64]
    ret nz

    inc a
    ld [$cd64], a
    ret


jr_03d_45c8:
    ldh a, [$ff8b]
    ld c, a
    bit 0, c
    jr nz, jr_03d_461d

    bit 3, c
    jr nz, jr_03d_461d

    bit 6, c
    jr nz, jr_03d_45fe

    bit 7, c
    jr nz, jr_03d_45de

    dec hl
    dec hl
    ret


jr_03d_45de:
    ld a, [$cd61]
    or a
    jr z, jr_03d_45fb

    ld a, [$cd66]
    dec a
    jr z, jr_03d_45fb

    xor a
    ld [$cd67], a
    ld [$cd68], a
    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [$cd66], a

jr_03d_45fb:
    dec hl
    dec hl
    ret


jr_03d_45fe:
    ld a, [$cd61]
    or a
    jr z, jr_03d_461a

    ld a, [$cd66]
    or a
    jr z, jr_03d_461a

    xor a
    ld [$cd67], a
    ld [$cd68], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd66], a

jr_03d_461a:
    dec hl
    dec hl
    ret


jr_03d_461d:
    ld a, $42
    call Call_000_25ce
    ld a, [$cd66]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_03d_4630:
    ld bc, $5c58
    ld hl, $54ae
    call Call_000_20de
    ld a, [$cd61]
    or a
    jr z, jr_03d_4648

    ld bc, $6c58
    ld hl, $54db
    call Call_000_20de

jr_03d_4648:
    ld b, $5c
    ld a, [$cd66]
    or a
    jr z, jr_03d_4652

    ld b, $6c

jr_03d_4652:
    ld c, $33
    ld hl, $549d
    call Call_000_20de
    ret


jr_03d_465b:
    ldh a, [rLY]
    cp $4f
    jr z, jr_03d_4665

    jr nc, jr_03d_4675

    jr jr_03d_465b

jr_03d_4665:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_03d_4665

    ld a, [$cd64]
    ldh [rSCX], a
    ld a, $75
    ldh [rLYC], a
    ret


jr_03d_4675:
    ldh a, [rLY]
    cp $77
    jr z, jr_03d_467e

    ret nc

    jr jr_03d_4675

jr_03d_467e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_03d_467e

    xor a
    ldh [rSCX], a
    ld a, $4d
    ldh [rLYC], a
    ret


Call_03d_468c:
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $4001
    ld a, $31
    ld de, $9000
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $4801
    ld a, $31
    ld de, $8800
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $6509
    ld c, $3d
    ld de, $89a0
    call Call_000_31a0
    ld hl, $6512
    ld c, $3d
    ld de, $8aa0
    call Call_000_31a0
    ld hl, $651d
    ld c, $3d
    ld de, $8e00
    call Call_000_31a0
    ld hl, $6cb0
    ld de, $88c0
    ld b, $10
    call CopyHLtoDE
    ld hl, $66a0
    ld c, $3d
    ld de, $8000
    call Call_000_31a0
    ld a, [$cd61]
    or a
    jr nz, jr_03d_470a

    ld hl, $6ad5
    ld c, $3d
    ld de, $cd7f
    call Call_000_31a0
    ld a, $fd
    ldh [$ff93], a
    ld a, $ff
    ldh [$ff91], a
    xor a
    ld [$cd69], a
    ld [$cd64], a
    jr jr_03d_4726

jr_03d_470a:
    ld hl, $6c2b
    ld c, $3d
    ld de, $cd7f
    call Call_000_31a0
    ld a, $00
    ldh [$ff93], a
    xor a
    ldh [$ff91], a
    ld a, $05
    ld [$cd69], a
    ld a, $01
    ld [$cd64], a

jr_03d_4726:
    xor a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
    ld [$cd6a], a
    ld hl, $55c6
    ld a, l
    ld [$cd6f], a
    ld a, h
    ld [$cd70], a
    ld hl, $562a
    ld a, l
    ld [$cd71], a
    ld a, h
    ld [$cd72], a
    ld hl, $9800
    ld bc, $0400
    ld a, $e0
    call Call_03d_5108
    ld hl, vBGMap1
    ld bc, $0400
    ld a, $e0
    call Call_03d_5108
    ld de, $9800
    call Call_03d_5113
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    ld a, $4e
    ld hl, $cd6b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $47e4
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $04
    call Call_000_25c5
    ld a, $83
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_03d_4106
    ld hl, $cd68
    inc [hl]
    ld hl, $cd63
    inc [hl]
    ld a, [$cd69]
    rst $00
    rst $10
    ld b, a
    rst $10
    ld b, a
    rst $10
    ld b, a
    rst $10
    ld c, [hl]
    ld a, [$4f4f]
    ld d, b
    call Call_03d_4bc6
    call Call_03d_4e25
    call Call_03d_4e01
    call Call_03d_4e6d
    ret


    add a
    ld c, c
    inc b
    ld c, b
    ld [$5947], a
    ld d, b
    db $fc
    ld b, a
    or $47
    or $47
    ld a, c
    ld c, c
    ld [$9547], a
    ld c, c
    inc l
    ld b, e
    ld hl, sp+$47
    xor l
    ld c, c
    push de
    ld l, d
    dec a
    db $fc
    nop
    nop
    and d
    ld c, c
    nop
    nop
    ld l, a
    ld c, d
    inc e
    ld c, b
    inc e
    ld c, b
    inc e
    ld c, b
    inc d
    ld c, b
    inc e
    ld c, b
    rla
    ld c, d
    ld [$2248], sp
    ld c, b
    ld [hl], l
    call Call_03d_4995
    inc l
    ld b, e
    ld e, $48
    pop hl
    ld c, [hl]
    xor l
    ld c, c
    ld a, b
    ld l, e
    dec a
    nop
    nop
    inc bc
    add sp, $4e
    rst $28
    ld c, [hl]
    add $55
    ld a, [hl+]
    ld d, [hl]
    add $55
    ld a, [hl+]
    ld d, [hl]
    inc c
    ld l, [hl]
    ld c, b
    db $fc
    ld b, a
    rst $28
    ld c, [hl]

jr_03d_483f:
    rst $18
    ld d, l
    ld a, [hl+]
    ld d, [hl]
    add $55
    ld b, e
    ld d, [hl]
    inc c
    ld l, [hl]
    ld c, b
    db $fc
    ld b, a
    rst $28
    ld c, [hl]
    add $55
    ld a, [hl+]
    ld d, [hl]
    add $55
    ld a, [hl+]
    ld d, [hl]
    inc c
    ld l, [hl]
    ld c, b
    db $fc
    ld b, a
    rst $28
    ld c, [hl]
    ld hl, sp+$55
    ld a, [hl+]
    ld d, [hl]
    add $55
    ld e, h
    ld d, [hl]
    inc c
    ld l, [hl]
    ld c, b
    db $fc
    ld b, a
    ld a, c
    ld c, c
    ld l, $48
    ld a, l
    ld c, a
    add [hl]
    ld c, a
    halt
    ld c, b
    add e
    ld c, b
    sub h
    ld c, a
    ld de, $2a56
    ld d, [hl]
    ld b, b
    and d
    ld c, b
    inc l
    ld b, e
    and d
    ld c, b
    sub h
    ld c, a
    add $55
    ld [hl], l
    ld d, [hl]
    db $10
    and d
    ld c, b
    sub h
    ld c, a
    add $55
    adc [hl]
    ld d, [hl]
    db $10
    and d
    ld c, b
    sub h
    ld c, a
    add $55
    ld [hl], l
    ld d, [hl]
    jr nz, jr_03d_483f

    ld c, b
    inc l
    ld b, e
    and d
    ld c, b
    pop hl
    ld c, [hl]
    xor l
    ld c, c
    adc $6b
    dec a
    db $fc
    nop
    inc b
    add sp, $4e
    rst $28
    ld c, [hl]
    inc e
    ld d, l
    ld [hl], c
    ld d, l
    inc e
    ld d, l
    ld [hl], c
    ld d, l
    inc c
    rst $18
    ld c, b
    ld [hl+], a
    ld c, b
    rst $28
    ld c, [hl]
    dec l
    ld d, l
    ld [hl], c
    ld d, l
    inc e
    ld d, l
    add d
    ld d, l
    inc c
    rst $18
    ld c, b
    ld [hl+], a
    ld c, b
    rst $28
    ld c, [hl]
    ld a, $55
    ld [hl], c
    ld d, l
    inc e
    ld d, l
    sub e
    ld d, l
    inc c
    rst $18
    ld c, b
    ld [hl+], a
    ld c, b
    ld a, c
    ld c, c
    xor [hl]
    ld c, b
    inc d
    ld d, b
    add [hl]
    ld c, a
    rst $20
    ld c, b
    rrca
    ld c, c
    sub h
    ld c, a
    ld c, a
    ld d, l
    ld [hl], c
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    ld h, b
    ld d, l
    ld [hl], c
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    ld c, a
    ld d, l
    ld [hl], c
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    ld h, b
    ld d, l
    ld [hl], c
    ld d, l
    jr jr_03d_4941

    ld c, c
    inc l
    ld b, e
    scf
    ld c, c
    sub h
    ld c, a
    inc e
    ld d, l
    and h
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    inc e
    ld d, l
    or l
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    inc e
    ld d, l
    and h
    ld d, l
    inc c
    scf
    ld c, c
    sub h
    ld c, a
    inc e
    ld d, l
    or l
    ld d, l
    jr @+$39

    ld c, c
    inc l
    ld b, e
    scf
    ld c, c
    inc b
    ld d, b
    xor l
    ld c, c
    push de
    ld l, d
    dec a
    db $fc
    nop
    nop

jr_03d_4941:
    and d
    ld c, c
    nop
    nop
    ld l, a
    ld c, d
    ld e, e
    ld c, c
    ld e, e
    ld c, c
    ld e, e
    ld c, c
    ld d, c
    ld c, c
    ld e, e
    ld c, c
    rla
    ld c, d
    ld b, l
    ld c, c
    ld e, c
    ld c, c
    ld a, e
    call Call_03d_495f
    inc l
    ld b, e
    and d
    ld c, b

Call_03d_495f:
    ld h, b
    ld l, c
    ld a, $24
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_03d_496c:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld h, b
    ld l, c
    ld a, [$cd61]
    or a
    jr z, jr_03d_4991

    inc hl
    inc hl

jr_03d_4991:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_03d_4995:
    ld h, b
    ld l, c
    ld a, $1d
    ld [$cb4f], a
    ld a, $11
    ld [$cb50], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd65], a
    ld a, [hl+]
    ld [$cd66], a
    ret


    ld h, b
    ld l, c
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    push hl
    ld l, c
    ld h, b
    ld c, a
    ld de, $cd7f
    call Call_000_31a0
    ld a, [$dd00]
    or a
    jr z, jr_03d_49ca

    ld hl, $49f7
    call Call_000_23e9

jr_03d_49ca:
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld a, [hl+]
    ldh [$ff93], a
    ldh [rSCX], a
    ld a, [hl+]
    ldh [$ff91], a
    ldh [rSCY], a
    push hl
    ld de, $9800
    call Call_03d_5113
    call Call_000_2273
    ld a, [$dd00]
    or a
    jr z, jr_03d_49f1

    call Call_000_2424
    ld hl, $4a07
    call Call_000_23e9

jr_03d_49f1:
    pop hl
    ld a, [hl+]
    ld [$cd69], a
    ret


    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $cd6b
    ld a, [hl+]
    call Call_03d_4a5f
    jr nz, jr_03d_4a3d

    ld a, [hl+]
    call Call_03d_4a5f
    jr nz, jr_03d_4a3d

    ld a, [hl+]
    call Call_03d_4a5f
    jr nz, jr_03d_4a3d

    ld a, [hl+]
    call Call_03d_4a5f
    jr nz, jr_03d_4a3d

    ld a, $51
    call Call_000_25cb
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03d_4a3d:
    ld a, $42
    call Call_000_25cb
    ld h, b
    ld l, c
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld hl, $cd6b
    ld b, $04

jr_03d_4a54:
    ld a, [hl+]
    call Call_03d_4a65
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_4a54

    pop hl
    ret


Call_03d_4a5f:
    cp $d8
    ret z

    cp $4e
    ret


Call_03d_4a65:
    cp $d8
    jr z, jr_03d_4a6c

    cp $4e
    ret nz

jr_03d_4a6c:
    ld a, $d8
    ret


    push bc
    ld a, [$cd24]
    bit 4, a
    jr nz, jr_03d_4aac

    bit 5, a
    jr nz, jr_03d_4a97

    bit 6, a
    jr nz, jr_03d_4ac1

    bit 7, a
    jr nz, jr_03d_4ad6

    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_03d_4aeb

    bit 1, a
    jp nz, Jump_03d_4b2b

    bit 3, a
    jp nz, Jump_03d_4b58

    pop hl
    dec hl
    dec hl
    ret


jr_03d_4a97:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    sub $01
    jr nc, jr_03d_4aa5

    ld a, $0c

jr_03d_4aa5:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


jr_03d_4aac:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    inc a
    cp $0d
    jr c, jr_03d_4aba

    xor a

jr_03d_4aba:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4ac1:
jr_03d_4ac1:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd66]
    sub $01
    jr nc, jr_03d_4acf

    ld a, $05

jr_03d_4acf:
    ld [$cd66], a
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4ad6:
jr_03d_4ad6:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd66]
    inc a
    cp $06
    jr c, jr_03d_4ae4

    xor a

jr_03d_4ae4:
    ld [$cd66], a
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4aeb:
jr_03d_4aeb:
    call Call_03d_4c88
    ld b, $00
    inc b
    inc b
    inc b
    cp $fc
    jr z, jr_03d_4b1e

    ld e, a
    ld a, $42
    call Call_000_25cb
    ld hl, $cd6b
    ld a, [$cd67]
    cp $04
    jr c, jr_03d_4b08

    dec a

jr_03d_4b08:
    ld d, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, d
    ld [hl], e
    inc a
    ld [$cd67], a
    pop hl
    dec hl
    dec hl
    ret


    ld a, $42
    call Call_000_25cb

jr_03d_4b1e:
    ld a, b
    add a
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Jump_03d_4b2b:
jr_03d_4b2b:
    ld a, $51
    call Call_000_25cb
    ld a, [$cd67]
    or a
    jr z, jr_03d_4b4b

    ld hl, $cd6b
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $4e
    ld a, b
    dec a
    ld [$cd67], a
    pop hl
    dec hl
    dec hl
    ret


jr_03d_4b4b:
    pop hl
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Jump_03d_4b58:
jr_03d_4b58:
    ld a, $48
    call Call_000_25ce
    ld bc, $0b05
    ld a, [$cd69]
    cp $02
    jr nz, jr_03d_4b69

    ld b, $08

jr_03d_4b69:
    ld hl, $cd65
    ld [hl], b
    inc hl
    ld [hl], c
    pop hl
    dec hl
    dec hl
    ret


    push bc
    ld a, [$cd24]
    bit 4, a
    jr nz, jr_03d_4bb1

    bit 5, a
    jr nz, jr_03d_4b9c

    bit 6, a
    jp nz, Jump_03d_4ac1

    bit 7, a
    jp nz, Jump_03d_4ad6

    ldh a, [$ff8b]
    bit 0, a
    jp nz, Jump_03d_4aeb

    bit 1, a
    jr nz, jr_03d_4b2b

    bit 3, a
    jr nz, jr_03d_4b58

    pop hl
    dec hl
    dec hl
    ret


jr_03d_4b9c:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    sub $01
    jr nc, jr_03d_4baa

    ld a, $09

jr_03d_4baa:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


jr_03d_4bb1:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    inc a
    cp $0a
    jr c, jr_03d_4bbf

    xor a

jr_03d_4bbf:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


Call_03d_4bc6:
jr_03d_4bc6:
    call Call_03d_4e41
    ld a, [hl+]
    bit 7, a
    jr nz, jr_03d_4be7

    add a
    add a
    add a
    add $01
    ld b, a
    ld a, [hl]
    add a
    add a
    add a
    add $03
    ld c, a
    ld hl, $4be2
    call Call_000_20de
    ret


    nop
    nop
    jp hl


    nop
    add b

jr_03d_4be7:
    ld a, [hl]
    ld hl, $4c14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cd24]
    bit 4, a
    jr nz, jr_03d_4c0b

    inc hl
    inc hl
    bit 5, a
    jr nz, jr_03d_4c0b

    inc hl
    inc hl
    bit 6, a
    jr nz, jr_03d_4c0b

    inc hl
    inc hl
    bit 7, a
    jr nz, jr_03d_4c0b

    ret


jr_03d_4c0b:
    call Call_03d_4c10
    jr jr_03d_4bc6

Call_03d_4c10:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, h
    ld c, h
    ld d, a
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    ld c, h
    ld h, a
    ld c, h
    ld e, a
    ld c, h
    ld c, h
    ld c, h
    ld d, d
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld [hl], c
    ld c, h
    ld [hl], d
    ld c, h
    ld a, d
    ld c, h
    ld [hl], c
    ld c, h
    ld [hl], c
    ld c, h
    ld [hl], d
    ld c, h
    ld a, d
    ld c, h
    ld [hl], c
    ld c, h
    add d
    ld c, h
    ld [hl], d
    ld c, h
    ld a, d
    ld c, h
    ld a, [$cd65]
    inc a
    ld [$cd65], a
    ret


    ld a, $04
    ld [$cd66], a
    ret


    xor a
    ld [$cd66], a
    ret


    ld a, [$cd65]
    dec a
    ld [$cd65], a
    ret


    ld a, [$cd65]
    dec a
    ld [$cd65], a
    ret


    xor a
    ld [$cd65], a
    ret


    xor a
    ld [$cd65], a
    ret


    ret


    ld a, [$cd66]
    dec a
    ld [$cd66], a
    ret


    ld a, [$cd66]
    inc a
    ld [$cd66], a
    ret


    ld a, $04
    ld [$cd65], a
    ret


Call_03d_4c88:
    call Call_03d_4e41
    ld a, [hl+]
    ld d, [hl]
    ld hl, $cd7f
    inc a
    add a
    add a
    ld e, a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $4f
    ret nz

    ld a, $d8
    ret


    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    dec c
    inc bc
    ld c, $03
    rrca
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    dec b
    dec bc
    dec b
    inc c
    dec b
    dec c
    dec b
    ld c, $05
    rrca
    rlca
    inc bc
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    rlca
    ld [$0907], sp
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    inc c
    rlca
    dec c
    rlca
    ld c, $07
    rrca
    add hl, bc
    inc bc
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $09
    rlca
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    add hl, bc
    ld c, $09
    rrca
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0b
    rlca
    dec bc
    ld [$090b], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    dec c
    dec bc
    ld c, $0b
    rrca
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $0d
    rlca
    dec c
    ld [$090d], sp
    dec c
    ld a, [bc]
    dec c
    dec bc
    dec c
    inc c
    dec c
    dec c
    dec c
    ld c, $80
    ld [$0403], sp
    inc bc
    dec b
    inc bc
    ld b, $03

jr_03d_4d54:
    rlca
    inc bc

jr_03d_4d56:
    ld [$0a03], sp
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    dec c
    inc bc
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
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0a05], sp
    dec b
    dec bc
    dec b
    inc c
    dec b
    dec c
    dec b
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
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    rlca
    ld [$0a07], sp
    rlca
    dec bc
    rlca
    inc c
    rlca
    dec c
    rlca
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
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $09
    rlca
    add hl, bc
    ld [$0a09], sp
    add hl, bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    add hl, bc
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
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0b
    rlca
    dec bc
    ld [$1880], sp
    add b
    jr nz, jr_03d_4d54

    jr nz, jr_03d_4d56

    jr nz, @-$7e

    jr z, jr_03d_4dda

jr_03d_4dda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    inc b
    dec c
    dec b
    add b
    nop
    dec c
    rlca
    add b
    nop
    dec c
    ld a, [bc]
    add b
    nop
    add b
    nop
    dec c
    dec c
    add b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03d_4e01:
    ld de, $984a
    ld bc, $cd6b
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], $04
    inc hl
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld [hl], $00
    ldh a, [$ff97]
    add $07
    ldh [$ff97], a
    ret


Call_03d_4e25:
    ld a, [$cd68]
    bit 4, a
    ld c, $d8
    jr z, jr_03d_4e30

    ld c, $4e

jr_03d_4e30:
    ld a, [$cd67]
    cp $04
    ret nc

    ld hl, $cd6b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ret


Call_03d_4e41:
    ld hl, $4cb1
    ld a, [$cd69]
    cp $02
    jr nz, jr_03d_4e4e

    ld hl, $4d4d

jr_03d_4e4e:
    ld a, [$cd66]
    add a
    ld b, a
    add a
    ld c, a
    add b
    ld b, a
    ld a, c
    add a
    add a
    add a
    sub b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cd65]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_03d_4e6d:
    call Call_000_0924
    ld a, $8e
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, [$cd68]
    rrca
    rrca
    and $0e
    ld bc, $4ec7
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $13
    ldh [$ff97], a
    ret


    or b
    ld l, h
    ret nz

    ld l, h
    ret nc

    ld l, h
    ldh [$ff6c], a
    ldh a, [$ff6c]
    nop
    ld l, l
    db $10
    ld l, l
    jr nz, jr_03d_4f44

    call Call_03d_4fca
    call Call_03d_4fe1
    call Call_03d_4e6d
    ret


    xor a
    ld [$cd64], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd63], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    push hl
    ld a, [$cd64]
    ld b, a
    or a
    jr z, jr_03d_4efd

    inc hl
    inc hl
    inc hl
    inc hl

jr_03d_4efd:
    ld de, $cd6f
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, b
    or a
    jr nz, jr_03d_4f13

    inc hl
    inc hl
    inc hl
    inc hl

jr_03d_4f13:
    ldh a, [$ff8b]
    bit 6, a
    jp nz, Jump_03d_4f32

    bit 7, a
    jp nz, Jump_03d_4f44

    bit 0, a
    jp nz, Jump_03d_4f57

    bit 1, a
    jr nz, jr_03d_4f62

    ld a, [$cd63]
    cp [hl]
    jr nc, jr_03d_4f6f

    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4f32:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr z, jr_03d_4f40

    ld a, $48
    call Call_000_25ce
    xor a
    ld [hl], a

jr_03d_4f40:
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4f44:
jr_03d_4f44:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr nz, jr_03d_4f53

    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [hl], a

jr_03d_4f53:
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4f57:
    pop de
    ld a, $42
    call Call_000_25cb
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03d_4f62:
    pop de
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03d_4f6f:
    xor a
    ld [$cd63], a
    pop hl
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    ld a, [$cd64]
    ld [wPlayerGenderSelection], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd64]
    or a
    jr z, jr_03d_4f90

    inc hl
    inc hl

jr_03d_4f90:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    push hl
    ld de, $cd6f
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ldh a, [$ff8b]
    bit 0, a
    jp nz, Jump_03d_4fb6

    ld a, [$cd63]
    cp [hl]
    jr nc, jr_03d_4fbc

    pop hl
    dec hl
    dec hl
    ret


Jump_03d_4fb6:
    pop de
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03d_4fbc:
    xor a
    ld [$cd63], a
    pop hl
    ld a, $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_03d_4fca:
    ld bc, $4824
    ld a, [$cd64]
    or a
    jr z, jr_03d_4fd5

    ld b, $68

jr_03d_4fd5:
    ld hl, $4fdc
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_03d_4fe1:
    ld bc, $5070
    ld hl, $cd6f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld bc, $7070
    ld hl, $cd71
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    call Call_03d_501f
    call Call_03d_5036
    call Call_03d_4e6d
    ret


    xor a
    ld [$cd67], a
    ld hl, $cd6b
    ld a, $4e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, b
    ld l, c
    ret


    ld a, [$cd64]
    xor $01
    ld [wCatOrDogSelection], a
    ld h, b
    ld l, c
    ret


Call_03d_501f:
    ld bc, $402e
    ld a, [$cd64]
    or a
    jr z, jr_03d_502a

    ld b, $58

jr_03d_502a:
    ld hl, $5031
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_03d_5036:
    ld bc, $4a6c
    ld hl, $cd6f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld bc, $626c
    ld hl, $cd71
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    call Call_03d_50b8
    call Call_03d_50cf
    call Call_03d_4e6d
    ret


    push bc
    ldh a, [$ff8b]
    bit 4, a
    jr nz, jr_03d_5083

    bit 5, a
    jr nz, jr_03d_5071

    bit 0, a
    jp nz, Jump_03d_5096

    bit 1, a
    jr nz, jr_03d_50aa

    pop hl
    dec hl
    dec hl
    ret


jr_03d_5071:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr z, jr_03d_507f

    ld a, $48
    call Call_000_25ce
    xor a
    ld [hl], a

jr_03d_507f:
    pop hl
    dec hl
    dec hl
    ret


jr_03d_5083:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr nz, jr_03d_5092

    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [hl], a

jr_03d_5092:
    pop hl
    dec hl
    dec hl
    ret


Jump_03d_5096:
    pop hl
    ld a, $42
    call Call_000_25cb
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03d_50aa:
    pop hl
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_03d_50b8:
    ld bc, $6820
    ld a, [$cd64]
    or a
    jr z, jr_03d_50c3

    ld c, $60

jr_03d_50c3:
    ld hl, $50ca
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_03d_50cf:
    ld a, [$cd68]
    ld de, $cdc1
    bit 4, a
    jr z, jr_03d_50dc

    ld de, $cdd5

jr_03d_50dc:
    call Call_000_0924
    ld a, $98
    ld [hl+], a
    ld a, $66
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $0b
    ldh [$ff97], a
    ret


Call_03d_5108:
    push af

jr_03d_5109:
    pop af
    ld [hl+], a
    dec bc
    push af
    ld a, c
    or b
    jr nz, jr_03d_5109

    pop af
    ret


Call_03d_5113:
    ld hl, $cd7f
    ld b, $12

jr_03d_5118:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $0c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_03d_5118

    ret


    call Call_03d_51d9
    ld hl, $441e
    ld a, $3d
    ld de, $bff0
    ld bc, $0010
    call BankedCopyHLtoDEBig
    ld hl, $cd75
    ld de, sPlayerName
    call Call_03d_496c
    ld a, [wPlayerGenderSelection]
    ld [sPlayerGender], a
    or a
    jr z, jr_03d_519a

    ld a, $01
    ld [sShedTurnipSeedsFlag], a
    ld [sNumTurnipSeeds], a
    ld [sShedPotatoSeedsFlag], a
    ld [sNumPotatoSeeds], a
    ld [sShedGrassSeedsFlag], a
    ld [sNumGrassSeeds], a
    ld [sShedWateringCanFlag], a

jr_03d_519a:
    ld a, [wCatOrDogSelection]
    ld [sCatOrDog], a
    ld hl, $cd7b
    ld de, sPetName
    call Call_03d_496c
    ld a, $0a
    ld hl, sNumCroissant
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ld [sShedSickleFlag], a
    ld [$b8a4], a
    ld [$b8a5], a
    ld [$b8a6], a
    ld h, b
    ld l, c
    xor a
    ld [$cb56], a
    inc a
    ld [$c910], a
    ld a, $0e
    ld [$cb50], a
    ld a, $02
    ld [$cb4f], a
    ret

    ret

Call_03d_51d9:
    di
    call Call_000_0cd5
    di
    ld hl, sMapObjectLocation
    ld bc, $1fff
    call ZeroOutHL
    ld hl, $75e4
    ld a, $23
    call BankSwitchCallHL
    ld a, $ff
    ld [$cb52], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    call InitializeFarmMap
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld [$c910], a
    ld a, $06
    ld [sCurrentHour], a
    ld a, $ff
    ld [sCurrentDayCounter], a
    ld a, $80
    ld [$b892], a
    ld [$b89b], a
    ld a, $ff
    ld [$b8a1], a
    ld [$b8a2], a
    ld [$ba4c], a
    ld [$ba4d], a
    ld a, $0a
    ld [sNumCroissant], a
    ld [sNumRiceBall], a
    ld [sNumMeatDumpling], a
    ld [sNumWildGrapeJuice], a
    ld [sNumGreenTea], a
    xor a
    ld [$b8cc], a
    ld a, $80
    ld [$b8eb], a
    ld a, $64
    ld [sPlayerEnergy], a
    ld [sPlayerMaxEnergy], a
    ld a, $01
    ld [$b906], a
    xor a
    ld [$b907], a
    ld [sNumPowerBerriesEaten], a
    ld a, $ff
    ld [sInventory], a
    ld [sInventory+1], a
    ld a, $ff
    ld [sInventory+2], a
    ld a, $02
    ld [sItemSlot], a
    ld a, $00
    ld [$b901], a
    ld a, $16
    ld [$b902], a
    ld a, $00
    ld [$b903], a
    ld a, $f4
    ld [sPlayerMoney], a
    ld a, $01
    ld [sPlayerMoney+1], a
    xor a
    ld [sPlayerMoney+2], a
    call Call_000_1056
    call Call_000_070b
    call Call_000_07ab
    call Call_000_08b7
    call Call_000_1002
    call Call_000_0f73
    ld hl, $456e
    ld a, $28
    call BankSwitchCallHL
    call Call_000_0fc7
    ld a, $00
    ld [$b89f], a
    ld [$b8a0], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $02
    ld [$ba43], a
    ret


    call Call_03d_468c
    ld hl, $6ad5
    ld c, $3d
    ld de, $cd7f
    call Call_000_31a0
    ld de, $9800
    call Call_03d_5113
    ld a, $fd
    ldh [$ff93], a
    ld a, $ff
    ldh [$ff91], a
    xor a
    ld [$cd69], a
    ld [$cd64], a
    ld hl, $5329
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_03d_4106
    ld hl, $cd68
    inc [hl]
    ld hl, $cd63
    inc [hl]
    ld a, [$cd69]
    rst $00
    inc e
    ld d, e
    inc e
    ld d, e
    inc e
    ld d, e
    call Call_03d_4bc6
    call Call_03d_4e25
    call Call_03d_4e01
    call Call_03d_4e6d
    ret


    inc b
    ld d, b
    and d
    ld c, c
    nop
    nop
    ld l, a
    ld c, d
    cpl
    ld d, e
    cpl
    ld d, e
    cpl
    ld d, e
    dec sp
    ld d, e
    cpl
    ld d, e
    rla
    ld c, d
    cpl
    ld d, e
    ld b, e
    ld d, e
    ld a, e
    call Call_03d_5349
    inc l
    ld b, e
    ld b, l
    ld d, e

Call_03d_5349:
    push bc
    ld a, [wSTAT_HandlerIndex]
    cp $1d
    jr z, jr_03d_5392

    cp $23
    jr z, jr_03d_5373

    ld hl, $cd7b
    ld de, $b8e6
    call Call_03d_496c
    ld a, $01
    ld [$b89c], a
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    pop hl
    ret


jr_03d_5373:
    ld hl, $cd7b
    ld de, $cd2c
    call Call_03d_496c
    ld a, [$b9a1]
    and $f0
    or $0f
    ld [$b9a1], a
    ld a, $03
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    pop hl
    ret


jr_03d_5392:
    ld de, $1388
    push bc
    ld b, $00
    ld hl, sPlayerMoney
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop bc
    ld b, $04
    ld hl, $b949

jr_03d_53aa:
    ld a, [hl]
    inc a
    jr z, jr_03d_53b9

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_03d_53aa

jr_03d_53b9:
    push hl
    inc hl
    ld d, h
    ld e, l
    ld hl, $cd7b
    call Call_03d_496c
    xor a
    ld [de], a
    inc de
    call Call_03d_5432
    ld b, $50
    cp $0a
    jr c, jr_03d_53d7

    ld b, $0a
    cp $5f
    jr c, jr_03d_53d7

    ld b, $00

jr_03d_53d7:
    ld a, b
    ld [de], a
    push de
    inc de
    call Call_03d_5432
    ld b, $00
    cp $0a
    jr c, jr_03d_53ea

    inc b
    cp $5f
    jr c, jr_03d_53ea

    inc b

jr_03d_53ea:
    ld a, b
    ld [de], a
    inc de
    call Call_03d_5432
    ld b, $00
    cp $0a
    jr c, jr_03d_53fc

    inc b
    cp $0a
    jr c, jr_03d_53fc

    inc b

jr_03d_53fc:
    ld a, b
    ld [de], a
    xor a
    inc de
    ld [de], a
    inc de
    ld [de], a
    pop hl
    ld b, $01
    ld a, [hl]
    cp $50
    jr c, jr_03d_540d

    ld b, $02

jr_03d_540d:
    pop hl
    ld [hl], b
    ld de, $cd2c
    ld hl, $cd7b
    call Call_03d_496c
    pop hl
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_03d_5432:
    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_09c9
    ret


    nop
    db $fc
    stop
    ld hl, sp-$04
    nop
    nop
    add b
    ld bc, $1203
    nop
    ld bc, $11fb
    nop
    ld sp, hl
    inc bc
    ld [bc], a
    nop
    ld sp, hl
    ei
    ld bc, $8000
    nop
    ld [bc], a
    inc d
    nop
    nop
    ld a, [$0013]
    ld hl, sp+$02
    inc b
    nop
    ld hl, sp-$06
    inc bc
    nop
    add b
    rlca
    ld [bc], a
    ld h, $00
    rlca
    ld a, [$0025]
    rst $38
    ld [bc], a
    ld d, $00
    rst $38
    ld a, [$0015]
    rst $30
    ld [bc], a
    ld b, $00
    rst $30
    ld a, [$0005]
    add b
    inc b
    nop
    jr z, jr_03d_5488

jr_03d_5488:
    inc b
    ld hl, sp+$27
    nop
    db $fc
    nop
    jr jr_03d_5490

jr_03d_5490:
    db $fc
    ld hl, sp+$17
    nop
    db $f4
    nop
    ld [$f400], sp
    ld hl, sp+$07
    nop
    add b
    nop
    nop
    inc bc
    stop
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    ld bc, $f810
    ld hl, sp+$00
    db $10
    add b
    ld bc, $0e08
    db $10
    ld bc, $0d00
    db $10
    ld bc, $0cf8
    db $10
    ld bc, $0bf0
    db $10
    ld bc, $0ae8
    db $10
    ld sp, hl
    db $10
    add hl, bc
    db $10
    ld sp, hl
    ld [$1008], sp
    ld sp, hl
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$06
    db $10
    ld sp, hl
    ldh a, [rTIMA]
    db $10
    ld sp, hl
    add sp, $04
    db $10
    add b
    ld bc, $1e20
    db $10
    ld bc, $1d18
    db $10
    ld bc, $1c10
    db $10
    ld bc, $1b08
    db $10
    ld bc, $1a00
    db $10
    ld bc, $19f8
    db $10
    ld bc, $18f0
    db $10
    ld bc, $17e8
    db $10
    ld sp, hl
    jr nz, jr_03d_5514

    db $10
    ld sp, hl
    jr jr_03d_5517

    db $10
    ld sp, hl
    db $10
    inc d
    db $10
    ld sp, hl
    ld [$1013], sp
    ld sp, hl
    nop
    ld [de], a
    db $10
    ld sp, hl
    ld hl, sp+$11
    db $10
    ld sp, hl

jr_03d_5514:
    ldh a, [rNR10]
    db $10

jr_03d_5517:
    ld sp, hl
    add sp, $0f
    db $10
    add b
    ld sp, hl
    nop
    ld de, $f900
    ld hl, sp+$10
    nop
    pop af
    nop
    ld bc, $f100
    ld hl, sp+$00
    nop
    add b
    ld sp, hl
    nop
    inc de
    nop
    ld sp, hl
    ld hl, sp+$12
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    add b
    ld hl, sp+$00
    dec d
    nop
    ld hl, sp-$08
    inc d
    nop
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$fff8]
    inc b
    nop
    add b
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    ld c, e
    nop
    ldh a, [rP1]
    inc a
    nop
    ldh a, [$fff8]
    dec sp
    nop
    add b
    ld hl, sp+$00
    ld c, d
    nop
    ld hl, sp-$08
    ld c, e
    nop
    ldh a, [rP1]
    inc a
    nop
    ldh a, [$fff8]
    dec sp
    nop
    add b
    ld sp, hl
    nop
    rla
    nop
    ld sp, hl
    ld hl, sp+$16
    nop
    pop af
    nop
    rlca
    nop
    pop af
    ld hl, sp+$06
    nop
    add b
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_03d_558a

jr_03d_558a:
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$fff8]
    ld [$8000], sp
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    add b
    ld sp, hl
    nop
    ld c, [hl]
    nop
    ld sp, hl
    ld hl, sp+$4d
    nop
    pop af
    nop
    ld a, $00
    pop af
    ld hl, sp+$3d
    nop
    add b
    ld sp, hl
    ld hl, sp+$4f
    nop
    pop af
    ld hl, sp+$3f
    nop
    ld sp, hl
    nop
    ld c, [hl]
    nop
    pop af
    nop
    ld a, $00
    add b
    ld hl, sp+$00
    dec l
    nop
    ld hl, sp-$08
    inc l
    nop
    ldh a, [rP1]
    dec e
    nop
    ldh a, [$fff8]
    inc e
    nop
    add sp, $00
    dec c
    nop
    add sp, -$08
    inc c
    nop
    add b
    ld hl, sp+$00
    cpl
    nop
    ld hl, sp-$08
    ld l, $00
    ldh a, [rP1]
    rra
    nop
    ldh a, [$fff8]
    ld e, $00
    add sp, $00
    rrca
    nop
    add sp, -$08
    ld c, $00
    add b
    add sp, $00
    rrca
    nop
    add sp, -$08
    ld c, $00
    ld hl, sp+$00
    ld sp, $f800
    ld hl, sp+$30
    nop
    ldh a, [rP1]
    ld hl, $f000
    ld hl, sp+$20
    nop
    add b
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [rP1]
    inc sp
    nop
    ldh a, [$fff8]
    ld [hl-], a
    nop
    add sp, $00
    inc hl
    nop
    add sp, -$08
    ld [hl+], a
    nop
    add b
    ld hl, sp+$00
    ld b, l
    nop
    ld hl, sp-$08
    ld b, h
    nop
    ldh a, [rP1]
    dec [hl]
    nop
    ldh a, [$fff8]
    inc [hl]
    nop
    add sp, $00
    dec h
    nop
    add sp, -$08
    inc h
    nop
    add b
    add sp, $00
    daa
    nop
    add sp, -$08
    ld h, $00
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_03d_5653

jr_03d_5653:
    ldh a, [rP1]
    add hl, hl
    nop
    ldh a, [$fff8]
    jr z, jr_03d_565b

jr_03d_565b:
    add b
    ld hl, sp+$00
    ld b, a
    nop
    ld hl, sp-$08
    ld b, [hl]
    nop
    ldh a, [rP1]
    scf
    nop
    ldh a, [$fff8]
    ld [hl], $00
    add sp, $00
    daa
    nop
    add sp, -$08
    ld h, $00
    add b
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ldh a, [$fff8]
    ld a, [hl+]
    nop
    ld hl, sp+$00
    ld b, l
    nop
    ldh a, [rP1]
    dec [hl]
    nop
    add sp, $00
    dec h
    nop
    add sp, -$08
    inc h
    nop
    add b
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ldh a, [rP1]
    dec hl
    nop
    ldh a, [$fff8]
    ld a, [hl+]
    nop
    ld hl, sp+$00
    ld b, l
    nop
    add sp, $00
    dec h
    nop
    add sp, -$08
    inc h
    nop
    add b
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $7a68
    ld c, $32
    ld de, $9000
    call Call_000_31a0
    ld hl, $7ee9
    ld c, $32
    ld de, $9800
    call Call_000_31a0
    ld hl, $7ee9
    ld c, $32
    ld de, vBGMap1
    call Call_000_31a0
    ld a, $60
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld a, [$dd00]
    or a
    jr z, jr_03d_5702

    xor a
    ld [$cb4e], a
    ld hl, $576c
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$c0a3], a
    ld [$c0a4], a
    ld [$c0a5], a
    jr jr_03d_571c

jr_03d_5702:
    ld a, $1d
    ld [$cb4e], a
    ld hl, $5760
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$c0a3], a
    ld [$c0a4], a
    ld [$c0a5], a

jr_03d_571c:
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $4d
    call Call_000_25c5
    ld a, $83
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_03d_4106
    ret


    pop af
    ld d, a
    or h
    ld l, h
    ld l, h
    ld l, h
    and $57
    inc l
    ld b, e
    ld l, b
    ld d, a
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld b, b
    ld e, b
    ld a, [hl-]
    ld e, b
    pop af
    ld d, a
    ld bc, $6c6c
    ld l, h
    add hl, hl
    ld e, b
    ld d, b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld h, b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld [hl], b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    add b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    sub b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    and b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    or b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ret nz

    ld e, b
    ld a, [hl-]
    ld e, b
    pop af
    ld d, a
    or h
    ld l, h
    ld l, h
    ld l, h
    add hl, hl
    ld e, b
    or b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    and b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    sub b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    add b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld [hl], b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld h, b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld d, b
    ld e, b
    ld a, [hl-]
    ld e, b
    add hl, hl
    ld e, b
    ld b, b
    ld e, b
    ld a, [hl-]
    ld e, b
    and $57
    inc l
    ld b, e
    ldh [c], a
    ld d, a
    ld a, $10
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    ld h, b
    ld l, c
    push hl
    ld b, [hl]
    inc hl
    ld de, $c0a3
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld e, b
    push hl
    ld hl, $cd63
    ld b, $04
    call Call_03d_433e
    pop hl
    ld a, [$cd64]
    jr nz, jr_03d_5815

    inc a
    ld [$cd64], a

jr_03d_5815:
    ld a, [$cd65]
    inc a
    cp e
    jr nz, jr_03d_5822

    xor a
    ld [$cd65], a
    pop bc
    ret


jr_03d_5822:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e
    call Call_000_23e9
    call Call_000_2424
    pop hl
    ret


    push bc
    call Call_000_2424
    pop hl
    ret


    ld bc, $7fff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6f7f
    ld a, e
    ld l, a
    ld a, e
    ld l, a
    ld a, e
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5eff
    rst $30
    ld e, [hl]
    rst $30
    ld e, [hl]
    rst $30
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4e7f
    ld [hl], h
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3dff
    db $f4
    dec a
    rst $28
    dec a
    rst $28
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2d7f
    ld [hl], h
    dec l
    ld l, e
    dec l
    ld l, e
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1cff
    db $f4
    inc e
    jp hl


    inc e
    rst $20
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0c7f
    ld [hl], h
    inc c
    ld l, c
    inc c
    ld h, e
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0c1f
    inc d
    inc c
    add hl, bc
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
    ld [$fff1], sp
    dec l
    nop
    rra
    nop
    jp nc, $fe00

    rst $38
    ld hl, sp-$01
    rst $30
    ldh [rIE], a
    ld b, $94
    ld bc, rWave_f
    rrca
    rst $38
    ld e, a
    ld h, a
    rst $38
    ld l, c
    rst $38
    inc [hl]
    sbc h
    ld [bc], a
    ld a, a
    sbc b
    inc bc
    ld sp, hl
    db $fc
    nop
    inc bc
    pop af
    inc b
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    cp $a0
    inc bc
    jr c, @+$01

    ld bc, $0aff
    rst $38
    rlca
    rst $38
    rst $38
    ld b, b
    rst $38
    jp nc, $a9ff

    rst $38
    pop de
    cp a
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    jp nz, $0004

    rst $28
    rst $38
    add b
    rst $38
    ld d, l
    ret nz

    nop
    ld d, l
    rst $38
    rra
    ld a, [hl-]
    ldh [c], a
    ld [bc], a
    ret nz

    ld d, d
    add hl, bc
    pop bc
    rst $38
    ld a, b
    ret nc

    add hl, bc
    ld b, c
    nop
    ld e, a
    ld [bc], a
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    add b
    inc bc
    db $10
    ret nz

    inc bc
    push de
    jr z, jr_03d_59a0

    inc bc
    and b
    ld b, b
    inc b
    inc d
    jr nz, jr_03d_5948

    ld e, l

jr_03d_5948:
    rst $38
    push de
    xor a
    and b
    ld bc, $c042
    ld bc, $a203
    ld bc, $ff9d
    ld e, l
    xor $20
    inc b
    and e
    rst $38
    ld e, h
    nop
    dec b
    nop
    and b
    ld b, $f9
    inc bc
    and b
    ld [bc], a
    ld h, e
    add hl, bc
    rrca
    rst $38
    and c
    rst $38
    ld d, [hl]
    cp e
    rst $38
    sbc c
    ld a, [$3f0d]
    rst $38
    rst $00
    pop af
    ld c, $00
    rst $38
    inc [hl]
    set 1, l
    ld [hl-], a
    or e
    ld c, h
    ld l, [hl]
    sub c
    rst $38
    rst $38
    nop
    inc c
    ei
    ld h, $d9
    rst $38
    nop
    rst $38
    sub $29
    ld a, l
    add d
    adc $31
    inc sp
    call z, $ffff
    nop
    ret c

    scf
    ld b, e
    cp l
    push hl
    push hl
    rst $28
    ld a, [$fcfa]
    db $fc

jr_03d_59a0:
    rlca
    ld de, $5757
    xor e
    rst $38
    xor e
    ld d, l
    ld d, l
    jr z, jr_03d_59d3

    sub h
    sub h
    ldh [$ffbf], a
    ldh [$fff0], a
    ldh a, [$fffc]
    db $fc
    cp $10
    nop
    ldh a, [rPCM34]
    ldh a, [$ffc0]
    ret nz

    dec b
    dec d
    rlca
    rlca
    rrca
    stop
    cp a
    rra
    rra
    rrca
    rrca
    ld b, $06
    ld [bc], a
    ld d, $ff
    rst $38
    cp $fe
    ld hl, sp-$08
    push hl

jr_03d_59d3:
    push hl
    add d
    add d
    cp $c1
    ld bc, $3f3f
    adc d
    adc d
    ld d, l
    ld d, l
    xor d
    cp a
    xor d
    ld d, c
    ld d, c
    adc a
    adc a
    ld a, a
    ret c

    ld [de], a
    cp $fd
    cp $25
    rla
    ret nc

    ret nc

    ld [$d5ea], a
    push de
    ld sp, hl
    and b
    sub e
    dec bc
    ld h, c
    inc d
    db $fc
    nop
    nop
    ld d, b
    ld d, b
    ld b, a
    nop
    nop
    db $fc
    stop
    adc c
    ld b, $05
    inc e
    ld bc, $0016
    ldh a, [c]
    pop hl
    inc e
    ld b, $15
    ld a, [de]
    db $10
    inc e
    rra
    rra
    inc bc
    inc bc
    db $db
    jr z, @+$2a

    xor e
    inc e
    cp a
    cp a
    ld l, h
    dec e
    cp $ff
    rst $38
    nop
    scf
    ret z

    ld [$9e15], a
    ld h, c
    ret


    rst $38
    ld [hl], $ff
    nop
    ld c, h
    di
    ld c, $79
    rst $38
    rst $38
    nop
    xor e
    ld d, h
    ld a, d
    add l
    rst $10
    jr z, jr_03d_5a70

    ld a, a
    call $00ff
    call nz, $d23b
    cpl
    add a
    ld [$f2bf], sp
    ldh a, [c]
    push bc
    push bc
    ld a, [hl+]
    ld a, [hl+]
    pop hl
    inc c
    db $e4
    rst $38
    db $e4
    adc d
    adc d
    ld d, h
    ld d, h
    xor e
    xor e
    ld b, a
    rst $38
    ld b, a
    sbc a
    sbc a
    ld bc, $0701
    rlca
    rra
    rst $30
    rra
    ccf
    ccf
    ld h, e
    inc c
    cp $fe
    add b
    add b
    ld a, a
    ret nz

jr_03d_5a70:
    ret nz

    add b
    add b
    add e
    add e
    rlca
    inc d
    nop
    cp [hl]
    pop hl
    db $10
    rrca
    rrca
    add a
    add a
    add e
    stop
    pop bc
    ld a, [hl]
    stop
    sub l
    sub l
    ldh [c], a
    ldh [c], a
    ld sp, hl
    ld sp, hl
    rlca
    rrca
    sbc a
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, a
    stop
    and l
    add hl, bc
    ld sp, hl
    rst $38
    ld sp, hl
    ldh [c], a
    ldh [c], a
    or l
    or l
    cp $fe
    db $fd
    db $fd
    db $fd
    ld b, c
    nop
    rst $30
    rst $30
    ld d, l
    ld d, l
    xor b
    xor b
    ccf
    ld d, e
    ld d, e
    xor a
    xor a
    rra
    rra
    inc bc
    inc de
    ld l, c
    inc de
    cp $03
    ld [de], a
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, [$f5fa]
    ld a, a
    push af
    ldh a, [c]
    ldh a, [c]
    push hl
    push hl
    ld [$03ea], a
    rlca
    cp a
    adc a
    adc a
    ld e, a
    ld e, a
    sbc a
    sbc a
    ld b, c
    nop
    call nz, $c4e7
    ld [$81ea], a
    ld bc, $0201
    push af
    push af
    ld a, [$fafd]
    ld b, e
    rlca
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    cp a
    cp $41
    ld [bc], a
    dec b
    ld [$7807], a
    dec [hl]
    ld [$ff0e], a
    pop af
    add [hl]
    jp hl


    add l
    ld a, d
    rrca
    ldh a, [$fffb]
    rst $38
    inc b
    ld c, d
    cp l
    ld b, b
    cp l
    ret nz

    ld l, $4e
    rst $38
    or l
    ret nc

    dec a
    ld b, c
    cp a
    ld l, e
    sub h
    rst $18
    db $fd
    ld h, b
    db $eb
    ld [de], a
    cp $fe
    push de
    push de
    jp z, $ffca

    sub l
    sub l
    xor d
    xor d
    ld d, l
    ld d, l

Jump_03d_5b20:
    ld a, [hl+]
    ld a, [hl+]
    rrca
    ld d, l
    ld d, l
    ld a, [$81fa]
    inc b
    pop bc
    inc b
    ld b, c
    inc c
    add c
    inc c
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, [$fdfa]
    db $fd
    rst $38
    rst $38
    db $fc
    ld b, c
    nop
    ld h, c
    inc [hl]
    ld c, a
    ld c, a
    xor a
    xor a
    rst $30
    rst $30
    ldh [$ff09], a
    dec [hl]
    and l
    ld bc, $00e5
    pop bc
    rra
    rlca
    jr nz, @+$01

    add c
    add c
    rst $38
    ld a, [hl]
    rst $38

jr_03d_5b54:
    nop
    sub l
    ld l, d
    or l
    ld c, d
    rst $08
    rst $18
    jr nc, jr_03d_5b54

    ld [$12ed], sp
    inc bc
    ld bc, $748b
    rst $38
    and e
    ld e, h
    xor c
    ld d, [hl]
    cp l
    ld b, d
    push de
    ld a, [hl+]
    rst $38
    push hl
    ld a, [de]
    pop de
    ld l, $d5
    ld a, [hl+]
    db $ed
    ld [de], a
    rst $38
    db $eb
    inc d
    rst $30
    ld [$24db], sp
    xor e
    ld d, h
    rst $38
    rst $38
    ld b, b
    add sp, $1f
    push de
    ld a, [hl+]
    push de
    ld a, [hl+]
    rst $38
    db $fd
    ld a, [bc]
    push de
    ld a, [hl+]
    jp z, $e135

    ld e, $ff
    rst $38
    nop
    ld b, [hl]
    rst $38
    ld [hl], l
    adc d
    ld d, h

jr_03d_5b99:
    cp e
    ld a, a
    ld h, h
    sbc e
    ld b, l
    cp e
    rst $30
    adc b
    ld a, [de]
    nop
    ld l, $ff
    sub e
    ld l, h
    rla
    add sp, -$55
    ld d, h
    ld l, a
    ldh a, [$ffbf]
    ld de, $43ee
    cp h
    dec d
    ld [$04a3], a
    xor e
    rst $38
    ld d, h
    push de
    ld a, [hl+]
    rst $20
    jr jr_03d_5b99

    inc h
    push af
    rst $38
    ld a, [bc]
    sbc [hl]
    ld h, l
    pop bc
    ld a, $7c
    add e
    xor d
    rst $38
    ld d, l
    inc d
    db $eb
    jr nz, jr_03d_5c4c

    nop
    xor d
    nop
    rst $38
    ld b, b
    call c, $9723
    add sp, $2a
    push de
    push de
    db $fd
    ld a, [hl+]
    ld b, b
    add hl, sp
    sub $00
    adc b
    nop
    dec b
    sbc l
    rst $38
    ld h, d
    ldh [c], a
    dec e
    ld d, l
    xor d
    xor b
    ld d, a
    ld bc, $fbff
    nop
    ld d, l
    nop
    ld [bc], a
    nop
    nop
    inc a
    rst $38
    jp $a857


    ld a, [hl+]
    push de
    dec b
    ld a, [$ff10]
    cp a
    nop
    ld d, [hl]
    nop
    add b
    nop
    dec b
    nop
    rst $38
    ld b, b
    nop
    ldh [$ffa0], a
    ld e, e
    add d
    rst $28
    inc h
    rst $38
    db $db
    ld l, e
    cp l
    nop
    rst $38
    inc d
    db $eb
    ld bc, $00ff
    inc bc
    nop
    inc bc
    add b
    inc bc
    ld b, b
    ld b, e
    rst $38
    or b
    inc sp
    db $ec
    ld c, [hl]
    or l
    xor b
    ld d, a
    call c, $00ef
    ld [hl-], a
    call z, Call_000_2033
    nop
    ld [hl-], a
    call $df32

Call_03d_5c38:
    call $54ab
    xor c
    rst $38
    ld b, c
    ld b, a
    or $00
    rst $38
    jp hl


    ld d, $08
    rst $30
    nop
    rst $38
    or [hl]
    ld c, c
    db $fd
    add hl, bc

jr_03d_5c4c:
    ld [bc], a
    ld bc, $0500
    ld bc, $1716
    dec l
    rst $38
    jr nz, @-$07

    add d
    ld a, l
    jp hl


    ld d, $00
    dec e
    rst $38
    ld bc, $2cae
    ld d, a
    ld b, h
    db $eb
    nop
    rst $38
    rst $38
    add hl, de
    and $02
    rst $38
    and l
    ld e, d
    ret c

    cpl
    rst $38
    call z, $d133
    ld l, $d1
    ld l, $f5
    ld l, $ff
    call z, $c033
    ccf
    cp a
    ld b, b
    ld sp, $ffce
    adc d
    ld [hl], l
    ld d, l
    xor d
    ld [hl], l
    xor d
    ld e, l
    xor d
    ei
    push de
    ld l, d
    pop hl
    dec sp
    dec c
    cp $75
    adc d
    ld b, l
    rst $38
    cp d
    ld h, l
    sbc d
    ld d, c
    cp [hl]
    push af
    adc d
    ld bc, $feff
    rst $38
    ld bc, $54ab
    or a
    ld c, b
    db $dd
    rst $38
    ld [hl+], a
    db $ed
    ld [de], a
    push de
    ld a, [hl+]

jr_03d_5cac:
    rst $10
    jr z, jr_03d_5cac

    rst $38
    ld [bc], a
    cp h
    ld b, a
    ld c, d
    or a
    dec d
    ld [$ffef], a
    db $10
    xor [hl]
    ld d, c
    ld d, h
    xor e
    cp b
    ld b, a
    ldh a, [rIE]
    rrca
    ret nz

    ccf
    dec h
    rst $18
    ld h, b
    sbc l
    adc b
    rst $38
    ld a, a
    ld b, b
    db $ed
    ld [$807a], sp
    xor l
    nop
    rst $38
    ret nz

    nop
    ld [hl-], a
    nop
    and b
    nop
    ld h, l
    ld d, b
    rst $38
    xor e
    ld hl, $8ade
    ld a, a
    halt
    adc c
    db $db
    db $fd
    inc h
    ldh a, [$ff09]
    xor d
    nop
    ld d, a
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    adc d
    push af
    or l
    ld c, d
    xor $11
    ld a, a
    db $fd
    add b
    ld b, b
    ld c, $25
    ld hl, $00fb
    rst $38
    xor l
    ld a, a
    ld d, d
    ld d, d
    xor l
    xor l
    ld d, d
    rst $30
    ld [$1040], sp
    cp a
    ld d, l
    inc b
    xor a
    nop
    rst $38
    ld a, [bc]
    nop
    ld [bc], a
    ld e, d
    db $fd
    and l
    ldh a, [$ff0c]
    cp a
    add b
    db $ed
    nop
    cp b
    nop
    rst $38
    jp nc, $bd00

    nop
    ld c, e
    nop
    call nz, $ff00
    sub b
    ld b, d
    rst $38
    ld [$005e], sp
    db $eb
    nop
    rst $30
    sbc l
    nop
    ld [$1300], a
    adc [hl]
    nop
    jr nz, jr_03d_5d71

    rst $38
    ld c, d
    ccf
    ldh [rSC], a
    cp l
    add hl, bc
    sbc $00
    rst $38
    cp a
    dec b
    ld e, a
    db $10
    or a
    nop
    dec c
    ld bc, $ffff
    ret nc

    cpl
    and h
    ld e, e
    call c, $ea23
    rst $38
    dec d
    ld a, a
    add b
    dec d
    ld [$f807], a
    or l
    rst $18
    ld c, d
    xor l
    ld d, d
    push af
    ld a, [bc]
    and c
    inc e
    db $ed
    ld [de], a
    rst $38
    ei
    inc c
    ld h, b
    cp a
    ret c

    daa

jr_03d_5d71:
    dec d
    ld [$20af], a
    rst $18
    add b
    ld a, a
    sub b
    ld e, c
    ld d, [hl]
    ld bc, $c118
    ld e, a
    ld a, $80
    ld a, a
    ld b, h
    cp e
    ldh [rNR12], a
    ld a, [$1803]
    rst $38
    add hl, hl
    rst $18
    ld b, b
    cp l
    inc h
    sbc $00
    cp $ef
    nop
    and l
    nop
    ld d, d
    nop
    jr jr_03d_5d9a

jr_03d_5d9a:
    nop
    ld c, d
    ei
    nop
    inc e
    add b
    inc c
    ld de, $8400
    nop
    cpl
    cp $02
    ld bc, $0005
    sbc d
    nop
    ld h, b
    nop
    ld b, $ba
    ld b, b
    nop
    db $10
    ld [de], a
    ld e, [hl]
    ld h, d
    nop
    rla
    add b
    ld c, $19
    ei
    nop
    pop bc
    inc bc
    ld bc, $fa47
    ld d, $7d
    ld bc, $dff7
    nop
    push af
    ret nz

    ld e, $85
    nop
    jr nz, jr_03d_5dd0

jr_03d_5dd0:
    rst $18
    nop
    ld [hl], a
    ld [hl], a
    db $dd
    db $dd
    pop hl
    inc l
    xor d
    xor d
    rst $38
    ld b, h
    ld b, h
    ld de, $0011
    nop
    ld [hl], l
    rst $08
    rst $38
    ld b, a
    cp b
    ld h, d
    db $dd
    dec b
    ld a, d
    nop
    xor a
    ld a, e
    nop
    ld d, $a1
    add hl, de
    sbc d
    ld h, b
    pop hl
    ld [hl], $03
    ld [hl+], a
    ld [hl], e
    nop
    ld e, l
    ld bc, $4022
    rra
    jr nz, jr_03d_5e00

jr_03d_5e00:
    jp c, Jump_03d_5b20

    dec e
    ld a, a
    inc b
    ld de, $0000
    ld [$08c2], sp
    sub b
    ld h, h
    ld [bc], a
    ld de, $0097
    nop
    ld c, b
    add b
    ld [hl+], a
    xor c
    sub c
    ld h, l
    ld [bc], a
    inc de
    ret nz

    cp $40
    ld [hl+], a
    xor e
    nop
    ccf
    nop
    rst $38
    dec [hl]
    jp z, $0280

    inc de
    nop
    dec d
    ld bc, $0504
    dec d
    dec c
    ld [hl], $a1
    ld h, a
    ld bc, $8055
    ld [hl], b
    pop bc
    dec c
    ld [bc], a
    ld d, h
    ld b, c
    ld b, d
    ld bc, $0755
    rlca
    inc bc
    stop
    ld b, $01
    ld b, [hl]
    ldh a, [$fff0]
    rlca
    ld l, d
    pop bc
    ld d, [hl]
    xor c
    ld d, h
    cpl
    ld l, [hl]
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
    dec bc
    ld a, b
    ret nz

    add c
    ld e, l
    ld b, e
    nop
    db $e3
    rrca
    rrca
    ld e, [hl]
    dec h
    ld e, [hl]
    pop hl
    rrca
    rlca
    rlca
    nop
    cpl
    inc b
    rra
    nop
    rra
    nop
    rra
    nop
    dec d
    nop
    nop
    ld [$2f40], sp
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    jp $ff00


    inc d
    nop
    sbc a
    ld hl, sp-$08
    ldh [$ffe0], a
    ret nz

    stop
    ld bc, $fe01
    rst $30
    cp $f8
    ld hl, sp-$5d
    ld [bc], a
    dec d
    dec d
    rst $38
    rst $38
    ei
    ldh [$ffe0], a
    ld h, c
    inc bc
    ld bc, $0201
    ld [bc], a
    dec d
    rst $38
    dec d
    ld b, b
    ld b, b
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld bc, $01ff
    nop
    nop
    ld b, b
    ld b, b
    and b
    and b
    ld d, b
    rst $30
    ld d, b
    ld a, [bc]
    ld a, [bc]
    ld bc, $5f04
    ld e, a
    xor a
    xor a
    rst $38
    dec d
    dec d
    dec hl
    dec hl
    ld d, l
    ld d, l
    xor e
    xor e
    ccf
    ret nz

    ret nz

    ld [$fdea], a
    db $fd
    ld h, l
    dec b
    pop hl
    ld [bc], a
    cp a
    jr nz, @+$22

    ld d, l
    ld d, l
    ld [$85ea], a
    ld b, $05
    ld a, a
    dec b
    xor d
    xor d
    ld d, l
    ld d, l
    cp a
    cp a
    add l
    rlca
    rrca
    ld d, l
    ld d, l
    xor a
    xor a
    rst $20
    ld [bc], a
    pop bc
    inc b
    jp hl


    nop
    pop hl
    add hl, bc
    or a
    ldh a, [$fff0]
    ldh [rNR10], a
    nop
    ldh a, [$fff0]
    and l
    ld a, [bc]
    rrca
    rst $38
    rrca
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    add c
    db $ed
    add c
    ld l, c
    inc bc
    xor a
    xor a
    xor e
    inc bc
    db $fc
    db $fc
    ld hl, sp-$79
    ld hl, sp-$10
    ldh a, [$ff03]
    ld c, $23
    inc c
    rlca
    rrca
    pop hl
    ld a, [bc]
    ld [bc], a
    rst $20
    ld [bc], a
    inc b
    inc b
    add c
    inc c
    dec b
    db $10
    cp a
    cp a
    ld e, a
    rst $20
    ld e, a
    dec hl
    dec hl
    ld bc, $e90f
    ld [$7f7f], sp
    ldh a, [$ffef]
    ldh a, [$ffc0]
    ret nz

    add b
    stop
    nop
    nop
    inc d
    add a
    inc d
    ld [$8108], sp
    nop
    ld b, l
    inc d
    ld h, c
    db $10
    and e
    ld de, $df0a
    ld a, [bc]
    dec d
    dec d
    ld c, b
    ld c, b
    push bc
    dec d
    ld b, b
    ld b, b
    cp $67
    ld [bc], a
    ld bc, $2001
    jr nz, jr_03d_5f75

    ld a, [bc]
    inc h
    rst $20
    inc h
    db $10
    db $10
    add e
    ld [bc], a
    and c
    rrca

jr_03d_5f75:
    ld e, a
    ld e, a
    cpl
    ld a, c
    cpl
    ld b, e
    nop
    ld h, c
    db $10
    ret nz

    ret nz

    push af
    push af
    add hl, bc
    db $10
    or $e1
    ld de, $fafa
    rlca
    inc d
    nop
    nop
    ld d, h
    ld d, h
    ei

jr_03d_5f90:
    xor d
    xor d
    daa
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld d, c
    ld d, c
    and b
    rst $30
    and b
    ld d, l
    ld d, l
    ld b, e
    dec de
    ret nz

    ret nz

    xor a
    xor a
    ld a, e
    ld a, a
    ld a, a
    ld b, l
    inc e
    ccf
    ccf
    ld bc, $0d01
    inc c

jr_03d_5fae:
    scf
    cp $fe
    db $fc
    stop
    cp $fe
    rlca
    dec b
    ld b, e
    jr nz, jr_03d_5fae

    pop af
    pop af
    rlca
    ld bc, $1d01
    ld d, l
    ld d, l
    xor d
    xor d
    ld h, [hl]
    pop bc
    jr nz, jr_03d_6020

    ld d, a
    add e
    inc e
    add l
    jr jr_03d_5f90

    pop bc
    pop hl
    rrca
    inc bc
    jp z, Jump_03d_67ca

    ld a, [bc]
    and c
    ld [de], a
    rlca
    inc e
    db $eb
    ld a, [de]
    inc bc
    inc h
    rst $20
    nop
    ld l, h
    rlca
    ld h, $c3
    dec c
    dec b
    dec b
    db $eb
    dec e
    ld e, a
    ld e, a
    add l
    daa
    ld [hl], $43
    ld e, $fe
    cp $2b
    ld a, [hl+]
    ld d, h
    ld d, h
    cpl
    dec hl
    pop hl
    nop
    ld a, b
    ld b, c
    dec d
    ld h, e
    ld bc, $1b41
    ld a, [hl+]
    ld a, [hl+]
    ld d, b
    ld d, b
    and e
    add hl, de
    ld a, [hl]
    ld bc, $7f2b
    ld a, a
    xor a
    xor a
    rla

Jump_03d_6010:
    rla
    pop bc
    inc e
    rst $08
    xor e
    xor e
    ld d, l
    ld d, l
    and a
    rrca
    and e
    ld l, $40
    ld b, b
    dec de
    sub l

jr_03d_6020:
    sub l
    ld c, c
    ld bc, $0202
    and l
    rrca
    dec b
    ld d, $2b
    add hl, hl
    di
    xor e
    xor e
    rlca
    ld d, $ad
    add hl, hl
    cp $fe
    ldh [$ffe0], a
    sbc b
    ret


    dec hl
    add hl, bc
    dec [hl]
    add e
    dec [hl]
    rra
    rra
    dec l
    add hl, hl
    and e
    add hl, hl
    ldh [$ff99], a
    ldh [$ffa9], a
    inc h
    add a
    nop
    dec d
    dec d
    add hl, bc
    ld h, $a1
    ld [hl-], a
    rla
    rst $18
    rla
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
    add a
    dec h
    rst $38
    rst $38
    db $e3
    or l
    or l
    inc hl
    jr c, jr_03d_6066

    inc a
    ld bc, $550f
    ld d, l

jr_03d_6066:
    ld a, [hl+]
    scf
    ld a, [hl+]
    dec b
    dec b
    add hl, bc
    dec a
    cp a
    cp a
    ld hl, $0b1d
    dec l
    rrca
    xor a
    xor a
    ld d, a
    ld d, a
    ld h, a
    dec [hl]
    add e
    dec l
    jp Jump_000_0b32


    ld b, c
    ld a, e
    ld a, [bc]
    ld a, [bc]
    and e
    add hl, bc
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]
    push bc
    inc b
    and $61
    ccf
    ld b, d
    ld b, d
    rlca
    ld h, $63
    jr nz, jr_03d_60f4

    ld e, a
    ret nz

    ld h, a
    ret nz

    db $fc
    db $fc
    add hl, bc
    inc a
    ld h, c
    ld [$f2f2], sp
    rlca
    ld b, b
    ld l, a
    ld d, b
    ld d, b
    nop
    nop
    add hl, bc
    ld d, $0a
    ld a, [bc]
    ld b, a
    ld [$1f36], sp
    nop
    rlca
    rlca
    db $eb
    ccf
    push de
    push de
    dec c
    add hl, sp
    inc bc
    ld c, d
    ld a, [hl]
    pop hl
    dec a
    ld hl, sp-$08
    push af
    push af
    ld a, [$a9fa]
    inc d
    ld l, a
    ld bc, $a001
    and b
    ld b, a
    dec d
    jr z, jr_03d_60f7

    ld h, c
    ld de, $a7ec
    ld [de], a
    ld bc, $8a0d
    adc d
    ld h, c
    ld a, $17
    rla
    dec bc
    rst $38
    dec bc
    rla
    rla
    cpl
    cpl
    ld d, a
    ld d, a
    dec bc
    pop af
    dec bc
    ret


    ld c, d
    inc bc
    dec bc
    dec b
    ld c, h
    db $e3
    db $e3
    pop bc
    pop bc
    db $fc
    inc bc

jr_03d_60f4:
    dec b
    dec h
    add hl, sp

jr_03d_60f7:
    ld a, a
    ld a, a
    cp a
    cp a
    nop
    nop
    inc c
    ld hl, $0723
    ld c, h
    rlca
    rlca
    dec bc
    ld c, h
    cpl
    dec bc
    ld l, a
    ld c, $e5
    inc hl
    call z, $4a41
    dec b
    ld e, b
    jp $0bc3


    ld e, c
    ld h, e
    ld d, l
    ld d, a
    ld d, a
    nop
    ld c, a
    ld [hl+], a
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
    dec d
    nop
    nop
    inc bc
    cp $13
    nop
    db $10
    db $10
    jr c, jr_03d_6198

    ld a, h
    ld a, h
    cp $fe
    stop
    nop
    nop
    ld [$1c08], sp
    inc e
    ld a, $4f
    ld a, $7f
    ld a, a
    rst $38
    ld [de], a
    nop
    ld b, a
    ld [bc], a
    add b
    ld [de], a
    nop
    rst $38
    inc b
    inc b
    ld c, $0e
    rra
    rra
    ccf
    ccf
    ld a, $0b
    ld [bc], a
    add b
    add b
    ret nz

    ret nz

    ldh [rNR12], a
    nop
    rrca
    ld [bc], a
    cp $0b
    ld [bc], a
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca

jr_03d_6198:
    ld sp, hl
    rrca
    ld b, l
    ld [bc], a
    push bc
    inc bc
    ldh a, [$fff0]
    ld hl, sp-$08
    db $fc
    ld bc, $01fc
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
    ei
    nop
    nop
    ld b, c
    rrca
    ld a, h
    ld a, h
    jr c, jr_03d_61f4

    db $10
    ld sp, hl
    db $10
    or e
    db $10
    ld h, c
    rrca
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    rst $00
    inc e
    ld [$6508], sp
    rrca
    xor c
    ld [de], a
    ld h, e
    ld de, $7f7f
    rst $38
    ccf
    ccf
    rra
    rra
    ld c, $0e
    inc b
    inc b
    ld b, $63
    rrca
    ret nz

    ret nz

    ld h, l
    ld [bc], a
    ld h, e
    inc de
    ld b, a
    ld [bc], a
    ld h, e
    ld de, $0247
    nop
    rlca
    ld [bc], a
    inc bc
    ld d, $41
    rla
    ld c, c

jr_03d_61f4:
    nop
    cpl
    ld a, [bc]
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
    xor c
    inc h

jr_03d_620c:
    ld b, c
    ld de, $6ff8
    ld bc, $1409
    jp $0f13


    rrca
    rlca
    rlca
    inc bc
    rst $38
    inc bc
    ld bc, $fe01
    cp $fc
    db $fc
    ld hl, sp+$07
    ld hl, sp-$10
    ldh a, [rOBP1]
    inc d
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
    nop
    inc b
    db $fd
    ld bc, $0014
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    db $fc
    push hl
    nop
    ld e, $00
    jr jr_03d_6262

    ld a, [de]
    dec de
    inc e
    dec e
    ld sp, hl
    ld e, $9f
    ld bc, $0403
    rra
    ld [hl+], a
    inc hl
    inc h
    dec h
    rst $20
    ld h, $27
    jr z, jr_03d_620c

    ld bc, $0603
    add hl, hl
    ld a, [hl+]

jr_03d_6262:
    dec hl
    rst $08
    inc l
    dec l
    ld l, $2f
    sbc a
    ld bc, $0096
    ld [hl-], a
    inc sp
    ld h, a
    inc [hl]
    dec [hl]
    ld [hl], $7f
    ld bc, $0096
    scf
    jr c, @+$51

    ld bc, $1fb8
    nop
    rra
    nop
    ld bc, $900e
    sub c
    sub d
    ld e, d
    ld bc, $efc5
    add $c7
    ret z

    ret


    sub c
    rrca
    adc $cf
    ret nc

    ld a, [hl]
    xor a
    ld [bc], a
    ld bc, $ca01

jr_03d_6297:
    set 1, h
    call $1180
    rst $18
    pop de
    jp nc, $d4d3

    push de
    ld bc, $8612
    add a
    rst $20
    adc b
    adc c
    adc d
    sub l
    ld [de], a
    rst $10
    nop
    sub $d7
    ret c

    ei
    reti


    jp c, Jump_000_05a1

    adc e
    adc h
    adc l
    adc [hl]
    adc a
    rst $00
    ld bc, $a9a8
    jp nz, $d314

    nop
    ld [hl], d
    dec d
    db $db
    call c, $90f3
    sub c
    add sp, $06
    sbc d
    add hl, bc
    xor d
    xor e
    xor h
    xor l
    ld hl, sp-$3d
    rla
    db $e4
    ld b, $5b
    ld bc, $afae
    or b
    or c
    or d
    ld sp, hl
    or e
    cp h
    inc c
    ld e, c
    ld bc, $b5b4
    or [hl]
    or a
    cp b
    ldh [$ffd1], a
    dec de
    ld [hl], h
    rlca
    ld e, e
    ld bc, $001f
    ld e, d
    nop
    sub e
    sub h
    sub l
    di
    sub [hl]
    sub a
    rst $28
    nop
    push bc
    jr nz, jr_03d_6297

    sbc c
    sbc d
    sbc e
    di
    sbc h
    sbc l
    rst $28
    nop
    push bc
    ld [hl+], a
    sbc [hl]
    sbc a
    and b
    and c
    di
    and d
    and e
    rst $28
    nop
    and a
    ld [de], a
    and h
    and l
    and [hl]
    and a
    nop
    ld [hl], a
    rlca
    rst $20
    nop
    ret c

    ld de, $119f
    dec l
    nop
    sbc b
    ld de, $02df
    rst $18
    ld [bc], a
    nop
    ld h, l
    inc d
    db $ed
    ld e, $1f
    nop
    ld b, h
    cpl
    and [hl]
    inc de
    ld [$e922], sp
    inc d
    rra
    nop
    xor [hl]
    pop de
    ld [hl-], a
    ld [bc], a
    inc bc
    inc b
    ld e, c
    ld bc, $1339
    inc [hl]
    ld a, [hl-]
    cp $80
    inc [hl]
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rst $08
    inc c
    dec c
    ld c, $0f
    jp nc, Jump_03d_7100

    nop
    ld bc, $7d3b
    ld h, b
    ld [de], a
    nop
    inc a
    dec a
    ld a, $10
    ld de, $002f
    rst $38
    db $10
    ld de, $443f
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    cp a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr nz, jr_03d_6397

    cpl
    nop
    jr nz, @+$01

    ld hl, $4e4d
    ld c, a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    rst $20
    ld e, b
    jr nc, jr_03d_63b7

    cpl
    nop
    pop hl
    nop
    ld e, d
    ld e, e
    ld e, h
    rst $38
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, c
    ld b, d
    ld b, e
    ld b, b
    ld sp, hl

jr_03d_6397:
    ld b, c
    ld b, e
    nop
    xor d
    nop
    ld e, c
    ld h, a
    ld h, a
    ld h, e
    ld h, h
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    nop
    ld b, e
    nop
    xor e
    nop
    nop
    inc b
    sbc l
    ld bc, $0015
    ld l, b
    ld l, c

jr_03d_63b7:
    ld l, d
    add $00
    rra
    nop
    ld bc, $01cf
    ld a, b
    ld a, c
    ld a, d
    ld e, a
    ld bc, $0069
    ld l, e
    ld l, h
    nop
    ld c, a
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
    xor $c5
    dec c
    sub b
    sub c
    sub d
    ld e, d
    ld bc, $c6c5
    rst $00
    cp e
    ret z

    ret


    sub c
    rrca
    adc $cf
    ret nc

    xor a
    ld [bc], a
    ld bc, $01df
    jp z, $cccb

    call $1180
    pop de
    jp nc, $d3f7

    call nc, $01d5
    ld [de], a
    add [hl]
    add a
    adc b
    adc c
    ld sp, hl
    adc d
    sub l
    ld [de], a
    rst $10
    nop
    sub $d7
    ret c

    reti


    jp c, $a1fe

    dec b
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld bc, $f1a8
    xor c
    jp nz, $d314

    nop
    ld [hl], d
    dec d
    db $db
    call c, $9190
    inc a
    add sp, $06
    sbc d
    add hl, bc
    xor d
    xor e
    xor h
    xor l
    jp $e417


    ld b, $7e
    ld e, e
    ld bc, $afae
    or b
    or c
    or d
    or e
    cp h
    inc c
    ld a, $59
    ld bc, $b5b4
    or [hl]
    or a
    cp b
    pop de
    dec de
    ld [hl], h
    rlca
    ld hl, sp+$5b
    ld bc, $001f
    ld e, d
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    db $fc
    rst $28
    nop
    push bc
    jr nz, @-$66

    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    db $fc
    rst $28
    nop
    push bc
    ld [hl+], a
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    inc a
    rst $28
    nop
    and a
    ld [de], a
    and h
    and l
    and [hl]
    and a
    ld [hl], a
    rlca
    rst $20
    nop
    nop
    ret c

    ld de, $119f
    dec l
    nop
    sbc b
    ld de, $02df
    rst $18
    ld [bc], a
    ld h, l
    inc d
    db $ed
    ld e, $80
    rra
    nop
    ld b, h
    cpl
    and [hl]
    inc de
    ld [$e922], sp
    inc d
    rra
    nop
    pop de
    ld [hl-], a
    ld [bc], a
    xor e
    inc bc
    inc b
    ld e, c
    ld bc, $1339
    inc [hl]
    ld a, [hl-]
    add b
    inc [hl]
    dec b
    rst $38
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld [hl], e
    ld c, $0f
    jp nc, Jump_03d_7100

    nop
    ld bc, $603b
    ld [de], a
    nop
    rst $18
    inc a
    dec a
    ld a, $10
    ld de, $002f
    db $10
    ld de, $3fff
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    rst $28
    ld c, e
    ld c, h
    jr nz, jr_03d_64f2

    cpl
    nop
    jr nz, jr_03d_64f6

    ld c, l
    rst $38
    ld c, [hl]
    ld c, a

jr_03d_64d9:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    jr nc, jr_03d_64d9

    ld sp, $002f
    pop hl
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld a, a
    ld e, [hl]
    ld e, a
    ld h, c
    ld b, d
    ld b, e
    ld b, b
    ld b, c

jr_03d_64f2:
    ld b, e
    nop
    cp $aa

jr_03d_64f6:
    nop
    ld e, c
    ld h, a
    ld h, a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ccf
    ld h, a
    ld h, a
    ld d, d
    ld d, e
    ld d, b
    ld d, c
    ld b, e
    nop
    xor e
    nop
    jr nc, jr_03d_650b

jr_03d_650b:
    nop
    cpl
    ld bc, $001f
    add hl, de
    nop
    ld b, b
    nop
    nop
    cpl
    ld bc, $001f
    rra
    nop
    rla
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $7e01
    ld a, a
    ld b, d
    ld a, a
    ld e, d
    ld a, e
    rst $38
    ld e, d
    ld a, e
    ld b, d
    ld h, e
    ld a, [hl]
    ld a, a
    add b
    rst $38
    rst $38
    ld bc, $02ff
    ld [bc], a
    db $fc
    cp $84
    cp $ff
    or h
    or $b4
    or $84
    add $fc
    cp $ff
    ld sp, hl
    db $fd
    ld [bc], a
    rst $38
    inc b
    inc b
    ld sp, hl
    db $fd
    rst $38
    add hl, bc
    db $fd
    ld l, c
    db $ed
    ld l, c
    db $ed
    add hl, bc
    adc l
    rst $38
    ld [de], a
    dec de
    di
    ei
    inc b
    rst $38
    ld [$ff08], sp
    di
    ei
    ld [de], a
    ei
    jp nc, $d2db

    db $db
    rst $38
    and l
    or a
    inc h
    ld [hl], $e7
    rst $30
    ld [$ffff], sp
    db $10
    db $10
    rst $20
    rst $30
    inc h
    rst $30
    and l
    or a
    rst $38
    ld c, e
    ld l, a
    ld c, e
    ld l, a
    ld c, b
    ld l, h
    rst $08
    rst $28
    rst $38
    db $10
    rst $38
    jr nz, jr_03d_65a7

    rst $08
    rst $28
    ld c, b
    rst $28
    rst $38
    sub b
    rst $18
    sub [hl]
    sbc $96
    sbc $90
    ret c

    rst $38
    sbc a
    rst $18
    jr nz, @+$01

    ld b, b
    ld b, b
    sbc a
    rst $18
    rst $38
    ccf
    cp a
    ld hl, $2dbf
    cp l
    dec l
    cp l
    rst $38

jr_03d_65a7:
    ld hl, $3fb1
    cp a

jr_03d_65ab:
    ld b, b
    rst $38
    add b
    add b
    cp [hl]
    dec c
    ld [$0000], sp
    cp $00
    ld a, h
    jr nz, jr_03d_65b9

jr_03d_65b9:
    jr c, @-$04

    jr nz, jr_03d_65bd

jr_03d_65bd:
    db $10
    jr nz, jr_03d_65c0

jr_03d_65c0:
    nop
    nop
    add b
    nop
    ldh [$ffab], a
    nop
    ld hl, sp+$60
    ld bc, $80f8
    nop
    add b
    ld b, e
    dec bc
    nop
    ld a, a
    inc bc

jr_03d_65d3:
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld h, [hl]
    inc c
    ld d, a
    add b
    nop
    ret nz

    ld h, b
    ld [bc], a
    ldh a, [rLY]
    dec c

jr_03d_65e4:
    rra
    ret nz

    ld bc, $0755
    ld b, b
    ld [bc], a
    ld bc, $0e44
    ldh a, [rNR41]
    inc b
    ret nz

    call nz, $fe03
    dec c
    db $10
    ccf
    nop
    ld b, b
    nop
    cp a
    ccf
    or b
    rst $08
    ccf
    xor a
    jr nc, jr_03d_65ab

    ld [hl+], a
    nop
    db $10
    ld [$ff00], sp
    ld sp, hl
    rst $38
    ld sp, $0300
    ld [de], a
    db $fc
    nop
    ld [bc], a
    nop
    db $fd
    ccf
    cp $0d
    cp $f5
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    rst $38
    xor a
    jr nc, jr_03d_65d3

    jr nc, jr_03d_65e4

    ccf
    ld b, b
    ccf
    pop af
    ccf
    ld h, h
    inc d
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $0d
    ld c, $3f
    db $fd
    cp $02
    db $fc
    db $fc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    cp h
    ld h, e
    inc b
    ld h, a
    nop
    ccf
    ret nz

    ld b, b
    add b
    add hl, bc
    ld [$e7fc], sp
    inc bc
    ld [bc], a
    ld bc, $070f
    inc b
    rlca
    cp a
    ccf
    ret nz

    cp $0a
    ld b, $fd
    db $fc
    inc bc
    rst $38
    rst $38
    adc b
    add a
    rst $38
    cp a
    add b
    sub b
    adc a
    and b
    sbc a
    adc d
    add c
    rst $38
    ldh a, [$ff89]
    and d
    ret c

    cp $ff
    ld bc, $fffe
    ld sp, hl
    ld b, $05
    cp $05
    cp $45
    ld a, $fe
    ld hl, $a300
    ret c

    and d
    reti


    and h
    db $db
    and b
    rst $38
    rst $18
    and b
    rst $18
    sbc a
    rst $38
    add b
    rst $38
    ld a, a
    db $fd
    add b
    ld h, b
    ld bc, $9302
    ld c, b
    inc de
    ret z

    inc de
    ld a, a
    ret z

    push bc
    jp nz, $c639

    rst $38
    nop
    nop
    ld [$13fe], sp
    nop
    ld a, $00
    ld b, c
    ld a, $a4
    ld e, e
    ld h, h
    rst $30
    dec de
    or c
    ld a, [hl]
    dec h
    ld bc, $0080
    ld [hl], b
    add b
    rst $28
    ld c, [hl]
    or b
    add l
    ld a, d
    rst $00
    ld bc, $7fb0
    ld sp, hl
    rst $30
    ld a, $bc
    ld a, a
    jp $6001


    add b
    ld e, b
    and b
    cp a
    ld b, [hl]
    cp b
    add l
    ld a, d
    ld b, $f8
    inc de
    inc b
    ld b, c
    rst $38
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    ld h, h
    dec de
    ld h, l
    db $fd
    ld a, [de]
    push hl
    inc bc
    ld h, [hl]
    add b
    ld e, d
    and h
    ld b, h
    cp b
    ei
    add h
    ld a, b
    ld de, $4c06
    nop
    ld l, [hl]
    inc b
    ld e, e
    rst $38
    ld h, $6d
    ld a, $7f
    ld [de], a
    ld a, [hl]
    rla
    nop
    rst $38
    nop
    jr jr_03d_66fe

jr_03d_66fe:
    jr c, jr_03d_6710

    ld [hl], b
    jr nz, @+$72

    ld a, a
    jr nz, @+$3a

    db $10
    inc e
    ld [$04fe], sp
    ret


    ld bc, $79ff
    cpl

jr_03d_6710:
    ld [hl], $1d
    nop
    nop
    inc c
    nop
    rst $38
    ld c, $04
    ld c, $04
    rlca
    ld [bc], a
    add a
    ld [bc], a
    rst $28
    ld h, a
    add d
    ld e, a
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    call c, $08ff
    or [hl]
    ld c, h
    jp c, $fe7c

    inc h
    nop
    ld a, a
    nop
    inc bc
    nop
    rlca

jr_03d_6737:
    ld [bc], a
    rlca
    ld [bc], a
    ld b, c
    ld [bc], a
    rst $28
    ld c, $04
    ld a, h
    ld [$0101], sp
    inc c
    inc bc
    inc de
    rst $38
    rrca
    rla
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    rst $38
    ld [hl], b
    nop
    nop
    ldh [rP1], a
    jr jr_03d_6737

    add h
    rst $38
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    db $ed
    ld [bc], a
    db $eb
    ld bc, $77ca
    db $eb
    ld bc, $f4ba
    ld hl, sp-$01
    ccf
    cp h
    ld a, a
    ld e, d
    dec a
    ld a, $01
    dec bc
    db $db
    inc b
    dec b
    jp nz, $0210

    db $fc
    inc hl
    nop
    inc h
    ret c

    rst $30
    call c, $d888
    ldh [rNR11], a
    ld e, e
    inc a
    ld a, $01
    rst $30
    ld d, $0b
    dec bc
    and [hl]
    ld [de], a
    inc c
    ldh a, [rDIV]
    ld hl, sp-$49
    or $0c
    inc c
    and [hl]
    inc de
    or b
    ld a, a
    dec h
    inc b
    ld c, $ff
    dec b
    rlca
    ld bc, $0001

jr_03d_67a5:
    ld c, $f0
    ld b, $ff
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ff60], a
    add b
    ld b, b
    ei
    add b
    add b
    ld h, b
    inc d

jr_03d_67b6:
    ld a, c
    cpl
    scf
    dec e
    dec e
    rst $38
    inc bc
    rlca
    ld bc, $050b
    ld c, $03
    inc bc
    cp $e0
    ld d, $56
    db $fc
    ld d, h

Jump_03d_67ca:
    ld hl, sp-$44
    ld hl, sp+$74
    rst $18
    cp b
    db $fc
    db $10
    add sp, $30
    ret nc

    ld a, [bc]
    nop
    rra
    rst $28
    inc bc
    rra
    ld a, [bc]
    ld c, $a8
    jr jr_03d_67b6

    db $fc
    db $f4
    rst $38
    cp b
    db $fc
    jr c, jr_03d_67a5

    ld e, h
    ld d, [hl]
    inc l
    inc a
    db $fd
    ld [$0dd0], sp
    nop
    db $fd
    ld l, $f2
    ld e, a
    ld l, [hl]
    rst $28
    dec sp
    ccf
    rlca
    rrca
    ld b, b
    ld de, $081c
    jr @+$01

Jump_03d_6800:
    nop
    xor d
    ld [hl], b
    and a
    ld a, [$fedf]
    xor a
    ei
    jp c, $a4db

    dec de
    jp z, $d577

    ld l, [hl]
    or l
    rst $38
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    dec hl
    rst $38
    dec d
    add hl, sp
    ld d, $ba
    db $f4
    sub $b8
    sub $ff
    cp h
    sbc $b0
    rst $28
    or $36
    ret z

    ld [$d4f7], a
    adc $34
    push hl
    ld bc, $0936
    ld a, e
    dec [hl]
    ld l, a
    ld a, c
    ld [hl], $3f
    ld [bc], a
    db $eb
    ld bc, $a07c
    db $eb
    inc bc
    db $fd
    rra
    ld [$ef02], sp
    sub $cf
    ld [hl], $7e
    and b
    rst $38
    inc bc
    nop
    rrca
    inc bc
    dec d
    ld c, $1a
    dec b
    rst $38
    ccf
    nop
    ld a, l
    ld a, [hl+]
    ld a, a
    ld [hl-], a
    ld a, a
    ld [hl-], a
    rst $38
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    jr c, jr_03d_689c

    ret c

    rst $38
    push hl
    ld a, [de]
    ld d, l
    xor d
    db $ed
    or d
    ei
    or h
    cp $03
    jr jr_03d_6888

    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    di
    rra
    inc hl
    nop
    inc e
    ld bc, $0418
    ld hl, sp-$74
    ld hl, sp-$41
    ld d, [hl]
    db $fc

jr_03d_6888:
    xor [hl]
    call c, Call_000_2cf2
    db $eb
    ld bc, $fd25
    ld a, [de]
    db $eb
    ld bc, $f4ea
    dec sp
    inc b
    dec a
    ld d, $ff
    rra
    inc b

jr_03d_689c:
    dec d
    dec bc
    rrca
    nop
    dec bc
    dec b
    rst $38
    dec e
    ld [bc], a
    ccf
    ld a, [de]
    xor $90
    sbc $b4
    rst $38
    db $fc
    sub b
    call c, $fce0
    ld [$d0f8], sp
    cp a
    ld d, h
    xor b
    ld a, d
    and h
    dec h
    ld a, [de]
    inc hl
    ld [bc], a
    dec e
    rst $38
    inc bc
    rra
    inc c
    dec de
    dec c
    dec l
    ld [de], a
    ld [$f4ff], a
    xor $f0
    cp $94
    db $fc
    ldh a, [$ffd4]
    rst $38
    add sp, -$04
    nop
    xor $dc
    ld d, h
    xor b
    ld l, a
    rst $38
    ld [hl-], a
    ld a, e
    dec [hl]
    dec sp
    rlca
    dec c
    ld [bc], a
    dec de
    rst $38
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    ld a, e
    rst $38
    and [hl]
    cpl
    sub $8e
    ldh a, [$ffd8]
    jr nz, @+$76

    ld [hl], a
    jr jr_03d_6965

    jr nc, @+$03

    ld bc, $050b
    dec bc
    ldh [rSB], a
    rst $28
    rla
    ld [$0e11], sp
    ld h, e
    ld d, $28
    ret nc

jr_03d_6908:
    sbc b
    rst $38
    ldh [$fffc], a
    jr jr_03d_6970

    inc a
    ld c, [hl]
    jr nc, jr_03d_694e

    ld a, [$28a0]
    nop
    ld [bc], a
    ld [bc], a
    rra
    inc c
    ld sp, $3d1e
    di
    ld [bc], a
    ld e, $a0
    daa
    ld bc, $8802
    ldh a, [$ffc8]
    jr nc, jr_03d_6908

    ld [hl], h
    ld [$3844], sp
    jr c, @-$3c

    ld sp, $073b
    rst $38
    dec sp
    rla
    scf
    dec de
    ccf
    dec de
    ld a, [hl+]
    dec e
    rst $38
    dec de
    inc c
    inc d
    dec bc
    ld c, $01

jr_03d_6942:
    or $f8
    rst $38
    or $7c
    db $fc
    ld [hl], b
    xor $70
    ccf
    add $3f

jr_03d_694e:
    or $e8
    ld [$ae14], a
    ld d, h
    dec b
    ld a, [bc]
    inc hl
    inc c
    jp $0a15


    nop
    ld a, [bc]
    ld [hl+], a
    inc c
    dec b
    ld a, [bc]
    db $eb
    ld bc, $122f

jr_03d_6965:
    cp $e7
    ld bc, $ccfe
    ld e, [hl]
    xor h
    ld a, h
    and b
    ccf
    rst $38

jr_03d_6970:
    ld a, [de]
    ld e, $01
    inc b
    inc bc
    ld a, [bc]
    dec b
    dec b
    rst $30
    ld [bc], a
    add hl, bc

jr_03d_697b:
    ld b, $81
    jr nz, jr_03d_697b

    db $10
    jr c, jr_03d_6942

    rst $38
    sbc b
    ld [hl], b
    cp h
    ld h, b
    call c, Call_03d_5c38
    jr nz, @-$40

    ld hl, $2708
    ld a, [de]
    rra
    ld [bc], a
    ld b, $20
    ld [bc], a
    ld c, $ee
    ld b, b
    ld c, $1d
    ld c, $1e
    nop
    dec sp
    ld bc, $0600
    rst $38
    ld bc, $0708
    ld de, $150e
    ld a, [bc]
    add hl, de
    rst $38
    rlca
    dec bc
    rlca
    nop
    nop
    ret nz

    nop
    jr nc, @+$01

    ret nz

    ld [$44f0], sp
    cp b
    ld d, h
    xor b
    ret z

    ld [hl], e
    ldh a, [$ffe8]
    ld sp, $0725
    scf
    jr jr_03d_6a43

    inc de
    ld de, $723e
    daa
    scf
    call c, $2531
    rlca
    add hl, sp
    ld e, $7f
    db $10
    cpl
    ld b, c
    xor [hl]
    xor e

jr_03d_69d7:
    ld b, c
    dec bc
    dec b
    add hl, bc
    ret nz

    dec h
    dec e
    ld b, $16
    cp e
    cp a
    ld d, [hl]
    sbc a
    ld h, [hl]
    adc [hl]
    ldh a, [$ffdc]
    ld b, $16
    rra
    cp a
    ld a, [bc]
    scf
    ld a, [de]
    ld a, $19
    inc e
    ld b, $0a
    ld a, h
    rst $38
    xor b
    or $2c
    ld a, $cc
    sbc h
    ld h, b
    add sp, -$03
    ld [hl], b
    ld b, b

jr_03d_6a01:
    jr jr_03d_6a3b

    inc a
    nop
    rra
    inc b
    ld b, $da
    and b
    ld sp, $c00f
    dec bc
    dec e
    ld [bc], a
    add c
    ld l, $f0
    jr nz, @+$01

    jr nc, jr_03d_69d7

    sub b
    ld h, b
    xor b
    ld d, b
    ret nc

    jr nz, jr_03d_6a01

    ld c, b
    jr nc, jr_03d_6a44

    ld d, $1f
    nop
    xor c
    ld c, c
    ld l, b
    ldh a, [$ffd2]
    rst $38
    ldh [$ffed], a
    ld [de], a
    ld a, [bc]
    db $f4
    ld d, h
    xor b
    sub h
    rst $38
    ld l, b
    add sp, $50
    ld [hl], b
    nop
    dec bc
    rlca
    dec b

jr_03d_6a3b:
    rst $38
    inc bc
    dec bc
    inc b
    jr jr_03d_6a48

    dec d
    ld a, [bc]

jr_03d_6a43:
    inc d

jr_03d_6a44:
    rst $28
    dec bc
    dec bc
    dec b

jr_03d_6a48:
    rlca
    nop
    ld [bc], a
    ret nc

    ldh [$ffee], a
    rst $28
    db $10
    add hl, bc
    or $56
    inc b
    ld [bc], a
    ld a, e
    dec l
    scf
    ld a, a
    dec e
    rra
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    ld b, e
    ld a, [hl-]
    rst $38
    ld a, [hl]
    call nz, $f45e
    call nc, $ecf8
    jr c, jr_03d_6adb

    or h
    ld e, b
    ld hl, sp+$20
    ld bc, $7e37
    dec hl
    nop
    ld [bc], a
    ld bc, $0701
    ld [bc], a
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
    add hl, de
    nop
    ld l, b
    ld bc, $e059
    rra
    nop

jr_03d_6adb:
    ldh a, [rP1]
    ld hl, sp-$0f
    add hl, de
    nop
    ld sp, hl
    ld [de], a
    ld [bc], a
    rst $38
    or $ef
    dec c
    ld a, [de]
    ld h, $1e
    ld b, c
    rst $28
    dec e
    ld c, [hl]
    stop
    rst $28
    rst $28
    rst $30
    ld b, h
    ld bc, $0019
    ld b, h
    ld bc, $00ff
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    sbc a
    ld [$0a09], sp
    dec bc
    inc c
    adc a
    ld [bc], a
    add $03
    dec c
    rst $38
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    rst $08
    ld d, $17
    jr @+$1b

    adc a
    ld [bc], a
    ld b, [hl]
    ld b, $1a
    dec de
    rst $38
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03d_6b4a

    ld [hl+], a
    inc hl
    rst $20
    inc h
    dec h
    ld h, $8f
    ld [bc], a
    add $08
    daa
    jr z, jr_03d_6b5f

    rst $38
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03d_6b70

    di
    ld [hl-], a
    inc sp
    adc a
    ld [bc], a
    ld b, [hl]
    dec bc
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_03d_6b4a:
    rst $38
    jr c, jr_03d_6b86

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld sp, hl
    ld b, d
    adc a
    ld [bc], a
    add $0d
    ld a, $3f
    ld b, e
    ld b, [hl]
    ld b, a
    rst $38

jr_03d_6b5f:
    ld c, b
    ld c, c
    ld c, d
    ld b, h
    ld b, l
    ld c, a
    db $fc
    db $fd
    or [hl]
    adc a
    ld [bc], a
    cp $ff
    ld b, e
    ld bc, $f4fa

jr_03d_6b70:
    add hl, de
    nop
    ei
    nop
    rst $18
    inc d
    jp nc, Jump_03d_6800

    ld bc, $e0b1
    rra
    nop
    rra
    nop
    pop hl
    nop
    ld hl, sp-$0f
    inc e
    nop

jr_03d_6b86:
    ld sp, hl
    rst $38
    ldh [$ffe0], a
    or $18
    jr z, jr_03d_6bbc

    rst $28
    ld a, [de]
    rst $38
    dec hl
    ld e, $ef
    ld a, [de]
    rst $28
    rst $28
    inc c
    ld a, [de]
    cpl
    dec h
    ld e, $41
    rst $30
    ld b, b
    ld bc, $1cef
    nop
    ld c, d
    ld bc, $0507
    ld e, $26
    adc a
    ld [bc], a
    adc a
    ld [bc], a
    ld c, a
    ld bc, $014f
    ld de, $8007
    adc a
    ld [bc], a
    adc a
    ld [bc], a
    ld c, a
    ld bc, $014f

jr_03d_6bbc:
    or a
    add hl, bc
    adc a
    ld [bc], a
    ret z

    inc bc
    ld a, [$f405]
    inc e
    nop
    ei
    adc a
    ld [de], a
    rra
    nop
    jp nc, Jump_03d_6800

    ld bc, $e0c1
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l

jr_03d_6bdb:
    nop
    ld hl, sp-$0f

jr_03d_6bde:
    cp $1c
    nop
    ld sp, hl
    ldh [$ffe0], a
    or $16
    ld hl, $bf22
    inc e
    ld hl, $1def
    jr z, jr_03d_6bde

    inc d
    nop
    rst $30
    db $fc
    ld b, b
    ld bc, $00c4
    ld [hl-], a
    jr z, jr_03d_6c28

    rst $28
    dec h
    ld [hl+], a
    rst $00
    inc h
    ld e, $41
    ld c, b
    ld bc, $0076
    add [hl]
    ld [bc], a
    inc bc
    jr z, @-$1d

    jr nz, jr_03d_6bdb

    inc bc
    adc a
    ld [bc], a
    ld c, a
    ld bc, $0220
    ld [bc], a
    ld a, [de]
    dec l
    inc l
    adc a
    ld [bc], a
    adc d
    ld [bc], a
    ld a, [$1cf4]
    nop
    ei
    adc a
    dec c
    rra
    nop
    nop
    rra
    nop
    rra

jr_03d_6c28:
    nop
    sub [hl]
    nop
    ld l, b
    ld bc, $e0b1
    rra
    nop
    rra
    nop
    pop hl
    nop
    ld hl, sp-$0f
    inc e
    nop
    ld sp, hl
    rst $38
    ldh [$ffe0], a
    or $ef
    rst $28
    rst $28
    ld b, h
    ld [bc], a
    rst $38
    nop
    inc d
    inc de
    ld [$0d0e], sp
    ld b, b
    ld b, h
    ldh [c], a
    ret nc

    nop
    rst $30
    ld b, e
    ld bc, $003a
    ld b, c
    ld bc, $2113
    ld [hl+], a
    ccf
    inc l
    rst $28
    jr nc, jr_03d_6c80

    dec h
    dec h
    ld c, b
    ld bc, $028f
    cp $46
    ld bc, $2b1e
    ld a, [de]
    inc l
    ld e, $ef
    ld a, [de]
    di
    dec h
    dec h
    adc a
    ld [bc], a
    dec b
    dec b
    ld e, $ef
    ld [de], a
    ld a, [de]
    rst $38
    cpl
    ld e, $1d
    rst $28
    dec e
    ld a, [de]

jr_03d_6c80:
    dec l
    ld a, [de]
    di
    ld b, b
    ld b, b
    adc a
    ld [bc], a
    ld b, [hl]
    ld b, $08
    inc l
    rst $28
    ld [hl+], a
    ccf
    dec l
    rst $28
    ld c, $0a
    ld b, c
    ld b, c
    adc a
    rlca
    ret


    ld [$1837], sp
    inc b
    ld [de], a
    and d
    ld bc, $0e0d
    adc a
    ld [bc], a
    add l
    inc c
    dec bc
    ld a, [$1cf4]
    nop
    ei
    adc a
    ld [de], a
    rra
    nop
    jp nc, Boot

    rst $38
    ld [bc], a
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
    jr nz, jr_03d_6d1c

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

jr_03d_6d1c:
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
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $7aca
    ld c, $2f
    ld de, $8800
    call Call_000_31a0
    ld hl, $781a
    ld c, $23
    ld de, $9000
    call Call_000_31a0
    ld hl, $5ab0
    ld c, $2d
    ld de, $8000
    call Call_000_31a0
    ld hl, $594a
    ld c, $2d
    ld de, $9800
    call Call_000_31a0
    ld a, $66
    ld [$cb5c], a
    ld a, $04
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $00
    ldh [$ff93], a
    ld a, $34
    ldh [$ff91], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    ld [$cb62], a
    ld [$ccbf], a
    ld [$cc27], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    ld [$cc25], a
    call Call_03d_7111
    call Call_03d_7149
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $08
    call Call_000_25c8
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb56], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $e9
    call Call_000_3f52
    ret


    call Call_000_2d67
    call Call_000_36f4
    call Call_03d_6df4
    call Call_000_0e54
    call Call_03d_6fe8
    ret


Call_03d_6df4:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_03d_6e0b

    ldh a, [$ff8b]
    or a
    jp nz, Jump_03d_6fc9

    jr jr_03d_6e12

jr_03d_6e0b:
    ldh a, [$ff8b]
    cp $02
    jp z, Jump_03d_6fc9

jr_03d_6e12:
    ld a, [$cc17]
    ld b, a
    ld a, [$cc16]
    or b
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$c912]
    or a
    ret nz

    ld a, [$ccbf]
    rst $00
    ld c, b
    ld l, [hl]
    ld c, h
    ld l, [hl]
    ld e, d
    ld l, [hl]
    ld l, l
    ld l, [hl]
    add l
    ld l, [hl]
    and d
    ld l, [hl]
    or l
    ld l, [hl]
    call nc, $fb6e
    ld l, [hl]
    ld d, $6f
    ld c, d
    ld l, a
    ld [hl], h
    ld l, a
    sbc e
    ld l, a
    xor c
    ld l, a
    ret nz

    ld l, a
    call Call_03d_6fe0
    ret


    ld a, $0b
    call RST_TableJumpBankSwitch
    ld a, $64
    ld [$c912], a
    call Call_03d_6fe0
    ret


    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $0d
    call Call_000_1887
    ld a, $1e
    ld [$c912], a
    call Call_03d_6fe0
    ret


    ld a, $ea
    call Call_000_3f52
    ld a, $14
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ld a, $32
    ld [$c912], a
    call Call_03d_6fe0
    ret


    ld a, $23
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $23
    ld [$cb4a], a
    ld a, $03
    call RST_TableJumpBankSwitch
    call Call_03d_6fe0
    ret


    ld a, $30
    ld [$c912], a
    ld a, $0d
    call Call_000_1887
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_03d_6fe0
    ret


    ld a, [$c60b]
    cp $56
    jr z, jr_03d_6ed0

    inc a
    ld [$c60b], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ret


jr_03d_6ed0:
    call Call_03d_6fe0
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $23
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    call Call_03d_6fe0
    ret


    ld a, [$c60b]
    cp $24
    jr z, jr_03d_6f12

    dec a
    dec a
    ld [$c60b], a
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_03d_6f12:
    call Call_03d_6fe0
    ret


    ld a, [$c60a]
    cp $b0
    jr z, jr_03d_6f2d

    inc a
    inc a
    ld [$c60a], a
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_03d_6f2d:
    ld a, $19
    call $16d1
    ld a, $20
    ld [$cb4a], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    ld a, $eb
    call Call_000_3f52
    call Call_03d_6fe0
    ret


    ld a, [$c60a]
    cp $58
    jr z, jr_03d_6f61

    dec a
    dec a
    ld [$c60a], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_03d_6f61:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    call Call_03d_6fe0
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    call Call_03d_6fe0
    ret


    call Call_03d_6fe0
    ld a, $3c
    ld [$cc27], a
    ld a, $4e
    call Call_000_3f52
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $60
    ld [$cc27], a
    call Call_03d_6fe0
    ld a, $4f
    call Call_000_3f52
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

Jump_03d_6fc9:
    ld a, $1d
    ld [$cb4f], a
    ld a, [$ccc1]
    or a
    jr z, jr_03d_6fda

    ld a, $29
    ld [$cb50], a
    ret


jr_03d_6fda:
    ld a, $11
    ld [$cb50], a
    ret


Call_03d_6fe0:
    ld a, [$ccbf]
    inc a
    ld [$ccbf], a
    ret


Call_03d_6fe8:
    ld a, [$cc16]
    rst $00
    or $6f
    rst $30
    ld l, a
    inc [hl]
    ld [hl], b
    ld c, l
    ld [hl], b
    adc b
    ld [hl], b
    ret


    ld hl, $70d1
    ld a, [$cc17]
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08
    call Call_000_0930
    ld c, b

jr_03d_700f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_700f

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_03d_702c

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    ret


jr_03d_702c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $08
    jr nz, jr_03d_7045

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    ret


jr_03d_7045:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $70f1
    ld a, [$cc17]
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08
    call Call_000_0930
    ld c, b

jr_03d_7065:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_7065

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_03d_7080

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_03d_7080:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $70c5
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call Call_000_0930
    ld c, b

jr_03d_70a0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_70a0

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_03d_70bd

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    ret


jr_03d_70bd:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    sbc c
    adc d
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    xor d
    ld [bc], a
    cp b
    cp c
    nop
    sbc d
    ld hl, $ac04
    xor l
    xor [hl]
    rrca
    nop
    sbc d
    ld b, c
    inc b
    cp h
    cp l
    cp [hl]
    rra
    nop
    sbc d
    ld h, c
    inc b
    call z, $cecd
    cpl
    nop
    sbc d
    add c
    inc b
    call c, $dedd
    ccf
    nop
    sbc d
    add c
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b
    nop
    sbc d
    ld h, c
    inc b
    ld l, l
    ld l, [hl]
    ld l, a
    ld c, b

Jump_03d_7100:
    nop
    sbc d
    ld b, c
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_03d_7109

jr_03d_7109:
    sbc d
    ld hl, $4d04
    ld c, [hl]
    ld c, a
    jr z, jr_03d_7111

Call_03d_7111:
jr_03d_7111:
    ld hl, $7128
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $7138
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0020], sp
    ld l, b
    nop
    jr nz, jr_03d_716c

    nop
    ld [bc], a
    ld bc, $0100
    db $10
    rst $38
    nop
    nop
    ld [$0038], sp
    ld l, b
    nop
    jr c, jr_03d_7174

    nop
    ld [bc], a
    nop
    nop
    ret


Call_03d_7149:
    ld hl, vBGMap1
    ld de, $7157
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    and [hl]

jr_03d_716c:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_03d_7174:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and e
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and l
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $769e
    ld c, $24
    ld de, $8800
    call Call_000_31a0
    ld hl, $7004
    ld c, $24
    ld de, $9000
    call Call_000_31a0
    ld hl, $7b5f
    ld c, $24
    ld de, $8000
    call Call_000_31a0
    ld hl, $6ec8
    ld c, $24
    ld de, $9800
    call Call_000_31a0
    ld a, $08
    ld [$cb5c], a
    ld a, $07
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $00
    ldh [$ff93], a
    ld a, $00
    ldh [$ff91], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld [$c800], a
    ld [$cb5a], a
    ld [$cb5b], a
    ld [$cc1f], a
    ld [$ccc0], a
    ld [$cc27], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    call Call_03d_7400
    call Call_03d_7438
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $02
    call Call_000_18d0
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $08
    call Call_000_25c8
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb56], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $ec
    call Call_000_3f52
    ret


    call Call_000_2d67
    call Call_000_36f4
    call Call_03d_7285
    call Call_000_0e54
    call Call_03d_73ae
    ret


Call_03d_7285:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_03d_729c

    ldh a, [$ff8b]
    or a
    jp nz, Jump_03d_738a

    jr jr_03d_72a3

jr_03d_729c:
    ldh a, [$ff8b]
    cp $02
    jp z, Jump_03d_738a

jr_03d_72a3:
    ld a, [$cc17]
    ld b, a
    ld a, [$cc16]
    or b
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$c912]
    or a
    ret nz

    ld a, [$ccc0]
    rst $00
    bit 6, d
    call nc, $fa72
    ld [hl], d
    inc d
    ld [hl], e
    ld b, b
    ld [hl], e
    ld d, e
    ld [hl], e
    ld l, d
    ld [hl], e
    add c
    ld [hl], e
    ld a, $b4
    ld [$cc27], a
    call Call_03d_73a6
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

    ld a, $19
    call $16d1
    ld a, $20
    ld [$cb4a], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    ld a, $35
    call Call_000_25ce
    call Call_03d_73a6
    ret


    ld a, [$c60a]
    cp $60
    jr z, jr_03d_7310

    dec a
    ld [$c60a], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ret


jr_03d_7310:
    call Call_03d_73a6
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $03
    call Call_000_18d0
    call Call_03d_73a6
    ret


    ld a, $ed
    call Call_000_3f52
    ld a, $64
    ld [$cc27], a
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_03d_73a6
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $64
    ld [$cc27], a
    ld a, $50
    call Call_000_3f52
    call Call_03d_73a6
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $64
    ld [$cc27], a
    ld a, $51
    call Call_000_3f52
    call Call_03d_73a6
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

Jump_03d_738a:
    ld a, $1d
    ld [$cb4f], a
    ld a, [$ccc1]
    or a
    jr z, jr_03d_73a0

    ld a, $26
    ld [$cb50], a
    ld a, $02
    ld [$c90b], a
    ret


jr_03d_73a0:
    ld a, $11
    ld [$cb50], a
    ret


Call_03d_73a6:
    ld a, [$ccc0]
    inc a
    ld [$ccc0], a
    ret


Call_03d_73ae:
    ld a, [$cc16]
    rst $00
    or [hl]
    ld [hl], e
    or a
    ld [hl], e
    ret


    ld hl, $73f4
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call Call_000_0930
    ld c, b

jr_03d_73cf:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_73cf

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_03d_73ec

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    ret


jr_03d_73ec:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    sbc b
    xor b
    ld [bc], a
    daa
    jr z, jr_03d_73fa

jr_03d_73fa:
    sbc b
    ret z

    ld [bc], a
    scf
    jr c, jr_03d_7400

Call_03d_7400:
jr_03d_7400:
    ld hl, $7417
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $7427
    ld de, $c880
    ld b, $10
    call CopyHLtoDE
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0070], sp
    ld b, l
    nop
    ld [hl], b
    ld b, l
    nop
    ld [bc], a
    ld bc, $0100
    inc d
    rst $38
    nop
    nop
    ld [$0028], sp
    ld d, b
    nop
    jr z, jr_03d_7483

    nop
    nop
    nop
    nop
    ret


Call_03d_7438:
    ld hl, vBGMap1
    ld de, $7446
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    and [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and [hl]

jr_03d_7483:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and e
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and l
    nop
    ld [$01ff], sp
    nop
    ld a, [de]
    nop
    inc a
    dec de
    ld [hl-], a
    ld e, $ff
    jr jr_03d_74b8

jr_03d_74b8:
    inc e

jr_03d_74b9:
    ld [$081c], sp
    inc a
    jr @+$01

    ld [$f500], sp
    nop
    adc a
    or b
    inc b
    dec de
    ld a, a
    ld [$2507], sp
    ld b, $21
    nop
    jr nz, jr_03d_74f0

    ld [bc], a
    rst $38
    rst $38
    nop
    add h
    rlca
    add c
    ld bc, $0080
    cp a
    nop
    add b
    dec b
    dec b
    ld a, [bc]
    rrca
    ld b, c
    inc bc
    ldh [rIE], a
    nop
    inc e
    ldh [$ff4e], a
    ld [hl], h
    inc e
    db $10
    jr z, @+$01

    ldh [$ff0c], a

jr_03d_74f0:
    add sp, $24
    ld [$0428], sp
    ld h, b
    rst $38
    jr nz, jr_03d_74b9

    ld b, b
    add b
    nop
    db $fc
    ld a, h
    add e
    rst $38
    ld a, a
    ld b, b
    ccf
    jr nz, jr_03d_7545

    ld b, c
    ld hl, rSB
    ld bc, $0303
    rlca
    rlca
    ld c, $0e
    ld a, [$feff]
    scf
    ei
    db $10
    rra
    jr nz, @+$41

    ld b, b
    ei
    ld a, a
    nop
    jr nz, jr_03d_751f

jr_03d_751f:
    ld b, e
    ld a, a
    inc h
    inc a
    nop
    rst $28
    nop
    inc d
    ldh a, [rDIV]
    ld [hl+], a
    nop
    inc d
    ldh a, [rNR50]
    ld a, a
    ldh [$ffcc], a
    ret z

    inc b
    ld [$0f30], sp
    ld [hl-], a
    dec b
    cp $06
    add hl, bc
    dec bc
    rst $30
    rst $30
    rrca
    ld l, a
    rra
    ld d, a
    rst $38
    cpl
    ld c, l

jr_03d_7545:
    inc sp
    dec hl
    ld de, $0132
    ld bc, $00bf
    add b
    add b
    ldh [$ffe0], a
    rst $38
    stop
    db $dd
    rst $38
    cp [hl]
    cp $80
    ret nz

    add b
    add b
    nop
    jr @+$01

    db $10
    ld hl, sp-$10
    add sp, -$10
    ldh a, [$ff60]
    ldh a, [$ffef]
    ld h, b
    ret nc

    ld h, b
    ld h, b
    inc b
    inc bc
    cpl
    rra
    scf
    rst $38
    rrca
    dec hl
    rla
    ld e, $07
    dec d
    ld c, $0e
    adc $06
    inc bc
    ld e, l

jr_03d_757e:
    cp [hl]
    cp $02
    ld c, $03
    inc bc
    add sp, $70
    rst $18
    cp b
    ld [hl], b
    ld e, b
    jr nc, jr_03d_75bc

    ld [$9d06], sp
    ld h, e
    rst $20
    and d
    ld b, c
    pop bc
    nop
    db $10
    rlca
    ld b, $ff
    ret nz

    ld h, b
    dec sp
    ret nz

    ret nz

    ld b, $06
    ld d, b
    ldh [$ffe0], a
    ldh [rP1], a
    add hl, bc
    ld [de], a
    cp a
    jr jr_03d_75b2

    rra
    add hl, bc
    ccf
    ld d, $07
    ld [de], a
    dec b
    rst $38

jr_03d_75b2:
    ld b, $79
    ld c, b
    ld a, b
    jr nc, jr_03d_75e1

    nop
    add hl, hl
    cp l
    nop

jr_03d_75bc:
    add hl, bc
    db $10
    ld c, b
    nop
    ld c, c
    ld bc, $1009
    nop
    xor a
    nop
    ld a, b
    nop
    db $10
    add b
    inc d
    ld a, b
    and b
    ld d, $02
    rst $30
    ld bc, $0106
    add l
    rla
    ldh a, [rP1]
    inc c
    ldh a, [rIE]
    ld [bc], a
    db $fc
    ld a, h
    add b
    ld c, $05

jr_03d_75e1:
    ld a, [de]
    add hl, bc
    rst $38
    ld de, $3000
    db $10
    jr nz, jr_03d_75ea

jr_03d_75ea:
    inc a
    nop
    rst $38
    inc hl
    nop
    ld b, a
    inc bc
    sub h
    jr jr_03d_757e

    inc c
    ld a, a
    ld b, $04
    ld bc, $0302
    ld [bc], a
    ld a, b
    ldh [rNR24], a
    db $fd
    add c
    nop
    inc bc
    ld b, b
    nop
    cp b
    ld b, b
    ld e, h
    cp b
    rst $38
    db $ec
    ld [hl], b
    jp nc, Jump_03d_7eec

    ld a, h
    cp h
    ret nz

    rst $30
    ld c, b
    nop
    ld c, a
    nop
    rlca
    jr nc, @+$12

    inc l
    inc e
    rst $38
    rla
    rrca
    dec c
    inc bc
    inc bc
    nop
    ret nz

    add b
    cp $61
    ld a, [bc]
    ld de, $0811
    add hl, de
    db $f4
    db $fc
    push hl
    rst $38
    ei
    ei
    nop
    ld a, [bc]
    inc c
    add $c4
    inc e
    rst $38
    ld a, b
    inc b
    jr @-$56

    or b
    db $10
    ldh [$ff60], a
    ld sp, hl
    nop
    ld h, b
    dec de
    and [hl]
    ld e, $30
    nop
    ld de, $2200
    ld l, h
    ld b, $08
    dec h
    ld [$0136], sp
    dec hl
    ld [$807c], sp
    add hl, hl
    ld [$1078], sp
    jr jr_03d_769d

    ld [hl+], a
    daa
    ld [$fcfe], sp
    ld b, a
    inc bc
    inc hl
    ld [$387f], sp
    jr jr_03d_7699

    rra
    dec de
    rlca
    rlca
    jr nz, jr_03d_7676

    sbc $21
    ld [$1010], sp
    ld a, [bc]

jr_03d_7676:
    dec de
    inc bc
    ld [$c0bc], sp
    ccf
    ld a, [bc]
    inc c
    and [hl]
    db $e4
    inc c
    jr c, jr_03d_768e

    ld [$0fc3], sp
    ret nc

    pop bc
    ld c, $c9
    rrca
    pop bc
    ld c, $eb

jr_03d_768e:
    jr z, jr_03d_76d0

    ld b, b
    ld a, [bc]
    jr c, jr_03d_76a4

    sbc a
    jr z, jr_03d_7697

jr_03d_7697:
    jr z, jr_03d_7699

jr_03d_7699:
    dec hl
    ret nz

    db $10
    pop bc

jr_03d_769d:
    ld c, $06
    cp a
    inc b
    ld hl, $2302

jr_03d_76a4:
    ld [bc], a
    jr nz, @-$5e

    jr z, @-$7d

    ld a, c
    ld bc, $0ec1
    ret


    db $10
    ld a, [bc]
    inc c
    add [hl]
    add h
    ret


    db $10
    rst $30
    dec b
    ld bc, $c907
    db $10
    inc b
    db $d3
    add d
    adc a
    add hl, sp
    nop
    rst $08
    db $10
    rst $20
    ld [$097a], sp
    or c
    jr nc, jr_03d_76ee

    jp hl


    ld [$06fb], sp
    inc b
    db $eb

jr_03d_76d0:
    ld [$40bc], sp
    ld hl, sp+$50
    add sp, -$01
    ld b, b
    add sp, $40
    xor e
    ld b, b
    call nz, $cb00
    rst $18
    nop
    ld b, l
    ld [bc], a
    ld h, e
    ld hl, $08e1
    ld hl, $e703
    ld h, $06
    add b
    add b

jr_03d_76ee:
    add hl, de
    ld bc, $7229
    or h
    add [hl]
    rst $38
    inc b
    ld a, [bc]
    inc c
    ld h, $3c
    add [hl]
    db $e4
    inc c
    cp a
    ld [$1814], sp
    ld c, b
    ld [hl], b
    ld sp, $08e7
    nop
    cp l
    ld b, $e0
    dec [hl]
    ld b, $06
    ld c, $0f
    nop
    inc l
    ld hl, sp-$01
    db $fd
    nop
    ld d, l
    nop
    res 0, d
    add [hl]
    nop
    sbc a
    jr nc, @+$22

    ldh [rP1], a
    ld b, b
    add b
    inc l
    rra
    nop
    nop
    rst $28
    nop
    rrca
    nop
    scf
    jp c, $8030

    nop
    ld h, b
    ld a, a
    add b
    ld e, a
    ccf
    cp a
    ld a, a
    rst $38
    ld e, l
    ld hl, rJOYP
    ld h, e
    ld bc, $40d0
    ldh a, [rLCDC]
    ret nc

    ldh [rIE], a
    rst $28
    ldh a, [$fff7]
    ei
    cp a
    ei
    rst $38
    cp e
    cp $20
    nop
    rst $00
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    nop
    rst $38
    or [hl]
    ret nz

    rst $28
    or $f7
    cp $fa
    db $fc
    rst $38
    db $fc
    ld hl, sp-$04
    ld hl, sp-$40
    ld b, b
    ret nz

    ld b, b
    sbc a
    ld a, a
    ccf
    ccf
    nop
    inc bc
    ret nz

    inc sp
    pop de
    ld h, $7f
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    ld a, e
    rst $38

jr_03d_777b:
    rst $38
    ld a, a
    jr c, jr_03d_777b

    sbc b
    and h
    nop
    jr jr_03d_7784

jr_03d_7784:
    ld b, c
    ld [bc], a
    rst $38
    db $f4
    ld hl, sp+$78
    ldh a, [$fff8]
    ld [hl], b
    add sp, $70
    jp $0090


    ld hl, $a534
    rlca
    and e
    ld b, $a7
    rlca
    ret nc

    ldh [$ff6f], a
    xor $f0
    push af
    ld a, [$42eb]
    add b
    nop
    and a
    ld [$c03f], sp
    ld b, b
    jp Jump_03d_7d40


    add hl, sp
    and a
    ld [$06a0], sp
    rst $38
    ld a, a
    rst $38
    rst $38
    ld h, b
    add b
    sub $e0
    rst $38
    ld [hl], d
    ldh [$ff08], a
    cp $c0
    ld [$0901], sp

jr_03d_77c3:
    dec a
    ld bc, $0a03
    ld b, a

jr_03d_77c8:
    rst $30
    rst $38
    rst $38
    rst $30
    ld a, [hl+]
    ccf
    db $f4
    ld hl, sp+$7a
    db $fc
    adc a
    jp c, $3238

jr_03d_77d6:
    nop
    sbc h
    jr nz, jr_03d_7820

    add hl, bc
    and a
    ld c, d
    add e
    rst $18
    nop
    ld l, l
    add e
    rst $10
    rst $28
    ld h, e
    ld c, e
    jr jr_03d_77e8

jr_03d_77e8:
    rst $38
    inc a
    jr jr_03d_77c8

    jr c, jr_03d_77d6

    ldh a, [$fffe]
    ldh a, [$ffde]
    db $eb
    ld de, $40c0
    rst $28
    rst $30
    jp hl


    ld de, $7f7f
    ld a, a
    push de
    db $ec
    db $fd
    db $fc
    cp $fc
    db $fc
    ld b, c
    ld b, e
    di
    ldh [$ffd0], a
    ld b, c
    dec a
    ldh [c], a
    ld de, $070a
    dec c
    ld b, $fe
    pop bc
    ld [hl+], a
    nop
    nop
    cp a
    rst $38
    cp l
    ld a, [hl]
    ld a, [hl]
    ccf
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b

jr_03d_7820:
    ld h, b
    jr nz, jr_03d_77c3

    inc d
    ldh [rWave_6], a
    ld [hl], h
    rst $08
    add hl, de
    add sp, $52
    rra

jr_03d_782c:
    jp z, $1053

    nop
    ld [$1386], sp
    cp $25
    ld a, [de]
    ld h, b
    add b
    pop de
    ldh [$ffee], a
    pop af
    push af
    sbc $26
    ld a, [de]
    nop
    nop
    or $00
    rst $20
    add hl, de
    db $fc
    ld hl, sp-$56
    ld de, $3826
    add b
    ld d, a
    inc b
    ret nz

    inc bc
    db $10
    add c
    ld b, b
    ld b, b
    rst $38
    ret c

    ld b, b
    db $fc
    ld b, b
    ld a, e
    daa
    ccf

jr_03d_785d:
    nop
    rst $00
    rlca
    ld [bc], a
    rlca
    ldh [$ff58], a
    add d
    inc d
    jr nz, @+$1d

    cp a
    ld a, h
    rst $20
    ld a, l
    ldh [rNR42], a
    ret nz

    dec e
    pop hl
    ld a, [de]
    ld hl, sp-$10
    ld l, b
    db $fc
    ldh [c], a
    dec bc
    inc hl
    ld a, [bc]
    nop
    nop
    inc sp
    nop
    ld a, [hl-]
    db $10
    rst $38
    ccf
    ld [$0c3f], sp
    ld sp, $601b
    ld a, [hl+]

jr_03d_7889:
    cp $63
    ld e, h
    ret nz

    nop
    ld h, b
    ld b, b
    cp [hl]
    jr nz, jr_03d_782c

    rst $30
    adc $30
    ld h, $c9
    ld e, l
    ret nz

    nop
    jr nc, jr_03d_785d

    rst $38
    ld h, b
    nop
    ld d, c
    nop
    sub c
    nop
    or c
    ld h, b
    rst $38
    adc b
    nop
    ld d, b
    jr nc, @+$41

    rrca
    ld a, a
    jr nc, @+$01

    sbc b
    ld [de], a
    ld [$0802], sp
    nop
    ld c, c
    ld [hl], b
    rst $38
    ld a, [de]
    ld de, $e99d
    ld a, h
    sbc b
    xor l
    dec sp
    rst $18
    ld [$0490], sp
    jr nz, jr_03d_7889

    ld h, b
    ld [hl], $83
    add [hl]
    rst $38
    ld de, $03f0
    ld b, $0d
    ld b, $68

jr_03d_78d3:
    jr nz, jr_03d_78d3

    ld h, c
    ld d, d
    nop
    nop
    rlca
    nop
    ld [$0801], sp
    cp $00
    dec [hl]

jr_03d_78e1:
    sbc [hl]
    inc de
    ld [hl], l
    inc bc
    ld [bc], a
    ld bc, $ff0f
    nop
    ldh a, [rDIV]
    ld bc, $1f25
    jr nc, jr_03d_78e1

    rst $38
    nop
    add hl, hl
    ldh [$ff0b], a
    ld d, $76
    add h
    and h
    rst $08
    jr nc, jr_03d_7915

    add b
    ldh [rSC], a
    ld h, h
    dec bc
    inc b
    add hl, bc
    ld [bc], a
    rra
    ld l, b
    jr nz, @+$33

    nop
    ld b, $a0
    inc bc
    pop bc
    inc bc
    ld bc, $ff66
    sbc a
    db $10
    db $fc

jr_03d_7915:
    nop
    nop
    inc h
    inc bc
    inc h
    db $fc
    ld h, b
    nop
    ld [bc], a
    ld h, a
    di
    ld a, [bc]
    ld b, $8c
    inc e
    sub b
    ld sp, hl
    ldh a, [rTMA]
    ld l, b
    dec b

jr_03d_792a:
    ld a, [bc]
    adc c
    nop
    ld d, [hl]
    ld sp, $f738
    ld bc, $3178
    dec b
    ld a, [bc]
    ld a, [$0f01]
    jr z, jr_03d_792a

    ld bc, $f825
    inc c
    add hl, bc
    ld a, [bc]
    jp Jump_000_3906


    ld [hl], e
    add d
    ld l, a
    inc b
    ld a, [bc]
    dec b
    ld l, h
    sbc a
    db $10
    ld [hl], h
    nop
    ld a, [bc]
    ld a, [hl]
    ld [hl], a
    ld c, l
    ld b, a
    call nc, $18ee
    inc e
    ldh [$ff0b], a
    ld b, $f7
    sub d
    nop
    or b
    nop
    db $10
    ld d, c
    jr nc, jr_03d_79a3

    ld c, $df
    ld a, a
    jr nc, jr_03d_7981

    ld [de], a
    ret z

    inc b
    ld b, $2d
    add hl, sp
    ld a, a
    ld e, h
    ld a, b
    push hl
    dec de
    ld e, $03
    dec b
    ld a, [bc]
    ld c, $c0
    rlca
    inc bc
    inc bc
    inc de
    dec b
    inc bc
    dec b

jr_03d_7981:
    inc de
    dec c
    ld de, $7201
    sub d
    ld [hl], e
    rst $38
    adc b
    ld a, b
    add h
    ld a, h
    ld b, h
    ld a, h
    add hl, hl
    add hl, sp
    ei
    ld [de], a
    inc de
    inc bc
    ld [hl], d
    ld e, h
    ld h, b
    ld c, [hl]
    ld [hl], h
    ld c, h
    rst $38
    ld [hl], b
    jr z, @+$32

    sub h
    sbc b
    inc b
    rlca

jr_03d_79a3:
    nop
    rst $38
    rlca
    jr nc, jr_03d_79df

    ld b, h
    ld [hl], a
    dec bc
    ld a, e
    adc b
    rst $38
    ld hl, sp-$70
    ldh a, [$ff60]
    ld h, b
    ld c, h
    ret z

    ld b, h
    rst $38
    ret nz

    ld [hl], h
    ldh a, [$ff8c]
    cp b
    inc b
    jr c, @+$06

    rst $18
    jr c, jr_03d_79e6

    jr c, @+$16

    jr jr_03d_79c7

    halt

jr_03d_79c7:
    add d
    inc bc
    ld sp, hl
    add b
    xor d
    ld e, d
    ld bc, $2e04
    inc [hl]
    inc e
    db $10
    ld [$0077], sp
    inc b
    ld [$7b0d], sp
    inc c
    ld [$c004], sp
    inc hl

jr_03d_79df:
    ldh a, [rSCX]
    nop
    ret nz

    nop
    nop
    ld [bc], a

jr_03d_79e6:
    inc bc
    inc b
    sbc [hl]
    ld e, $21
    ccf
    jp hl


    nop
    and c
    halt
    ld [bc], a
    ld a, d

jr_03d_79f2:
    db $fc
    nop
    ld a, d
    adc h
    ldh a, [$ff88]
    rst $18
    ldh a, [rDIV]
    ld hl, sp+$40
    ld a, a
    ldh [rPCM34], a
    ccf
    jr nz, jr_03d_79f2

    ccf
    ld [$020f], sp
    ld sp, $0041
    inc b
    ld hl, sp-$11
    inc b
    ld hl, sp+$0c
    ld hl, sp+$01
    ld a, b
    inc b
    ldh [$ff2c], a
    rlca
    add sp, -$7c
    ret z

    add b
    ld [$01c3], sp
    inc d
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld bc, $7f14
    rst $20
    inc d
    add sp, $14
    jp hl


    inc d
    ld [$01af], a
    sub b
    rrca
    ld [bc], a
    and $01
    rrca
    inc bc
    cpl
    nop
    rst $20
    ld c, a
    ld [bc], a
    ldh [c], a
    nop
    ld [$5447], a
    add sp, $54
    db $eb
    dec b
    add e
    ld [bc], a
    add c
    ld bc, $a8e7
    ld bc, $6f1c
    inc bc
    jp hl


    ld bc, $54ea
    db $eb
    rst $08
    ld [bc], a
    cpl
    nop
    ld l, a
    add hl, bc
    jp nz, $0962

    ld [bc], a
    jr z, jr_03d_7a63

jr_03d_7a63:
    rst $28
    dec d
    rra
    nop
    ld b, c
    rla
    ld [bc], a
    ld d, h
    add [hl]
    daa
    nop
    inc bc
    inc d
    daa
    nop
    xor a
    ld [bc], a
    rra
    nop
    ld b, c
    dec de
    inc bc
    dec c
    ld d, h
    daa
    nop
    inc b
    inc d
    daa
    nop
    xor a
    ld [bc], a
    rra
    nop
    ld b, c
    rra
    ei
    inc b
    ld d, h
    daa
    nop
    push af
    inc d
    or $14
    rst $30
    ccf
    inc d
    ld hl, sp+$14
    ld sp, hl
    inc d
    ld a, [$040f]
    rra
    nop
    cp $42
    inc hl
    ld a, [$f954]
    ld d, h
    ld hl, sp+$54
    rst $30
    rst $38
    ld d, h
    or $54
    push af
    ld d, h
    ld b, $14
    rlca
    rst $38
    inc d
    ld [$0914], sp
    inc d
    ld a, [bc]
    inc d
    dec bc
    ld hl, sp+$0f
    inc b
    rra
    nop
    ld b, d
    daa
    ld e, $14
    rra
    inc d
    add hl, bc
    rst $38
    ld d, h
    ld [$0754], sp
    ld d, h
    ld b, $54
    inc c
    rst $38
    inc d
    dec c
    inc d
    ld c, $14
    rrca
    inc d
    db $10
    db $e3
    inc d
    ld de, $040f
    rra
    nop
    ld b, d
    dec hl
    ld hl, $2214
    rst $38
    inc d
    inc hl
    inc d
    ld c, $54
    dec c
    ld d, h
    inc c
    rst $38
    ld d, h
    ld [de], a
    inc d
    inc de
    inc d
    inc d
    inc d
    dec d
    adc a
    inc d
    ld d, $14
    rla
    rrca
    inc b
    rra
    nop
    ld b, d
    cpl
    inc h
    rst $38
    inc d
    dec h
    inc d
    ld h, $14
    daa
    inc d
    inc de
    rst $38
    ld d, h
    ld [de], a
    ld d, h
    jr jr_03d_7b23

    add hl, de
    inc d
    ld a, [de]
    ccf
    inc d
    dec de
    inc d
    inc e
    inc d
    dec e
    rrca
    inc b
    rra
    nop
    cp $42
    inc sp
    jr z, jr_03d_7b36

    add hl, hl

jr_03d_7b23:
    inc d
    ld a, [hl+]
    inc d
    dec hl
    ld a, a
    inc d
    add hl, de
    ld d, h
    jr jr_03d_7b81

    inc l
    inc d
    ld hl, $1f00
    dec l
    inc d
    ld l, $14

jr_03d_7b36:
    cpl
    rrca
    inc b
    rra
    nop
    ld b, d
    scf
    db $fc
    ld b, e
    inc bc
    and e
    inc bc
    jr nc, jr_03d_7b58

    ld sp, $3214
    inc d
    rra
    inc sp
    inc d
    inc [hl]
    inc d
    dec [hl]
    rrca
    inc b
    rra
    nop
    ld b, d
    dec sp
    rst $38
    sub e
    db $10
    sub h

jr_03d_7b58:
    db $10
    sub l
    db $10
    sub [hl]
    db $10
    rst $38
    sub a
    db $10
    sbc b
    db $10
    ld [hl], $14
    scf
    inc d
    ld a, a
    jr c, jr_03d_7b7d

    add hl, sp
    inc d
    ld a, [hl-]
    inc d
    dec sp
    rrca
    inc b
    db $fc
    rra
    nop
    ld b, d
    ccf
    sbc c
    db $10
    sbc d
    db $10
    sbc e
    db $10
    rst $38
    sbc h

jr_03d_7b7d:
    db $10
    sbc l
    db $10
    sbc [hl]

jr_03d_7b81:
    db $10
    inc a
    inc d
    rst $38
    dec a
    inc d
    ld a, $14
    ccf
    inc d
    ld b, b
    inc d
    pop af
    ld b, c
    rrca
    inc b
    rra
    nop
    ld b, d
    ld b, e
    sbc a
    db $10
    and b
    db $10
    rst $38
    and c
    db $10
    and d
    db $10
    and e
    db $10
    and h
    db $10
    rst $38
    ld b, d
    inc d
    ld b, e
    inc d
    ld b, h
    inc d
    ld b, l
    inc d
    rst $00
    ld b, [hl]
    inc d
    ld b, a
    rrca
    inc b
    rra
    nop
    ld b, d
    ld b, a
    and l
    db $10
    rst $38
    and [hl]
    db $10
    and a
    db $10
    xor b
    db $10
    xor c
    db $10
    rst $38
    xor d
    db $10
    ld c, b
    inc d
    ld c, c
    inc d
    ld c, d
    inc d
    rra
    ld c, e
    inc d
    ld c, h
    inc d
    ld c, l
    rrca
    inc b
    rra
    nop
    ld b, d
    ld c, e
    rst $38
    xor e
    db $10
    xor h
    db $10
    xor l
    db $10
    xor [hl]
    db $10
    rst $38
    xor a
    db $10
    or b
    db $10
    ld c, [hl]
    inc d
    ld c, a
    inc d
    rst $38
    ld d, b
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    ld hl, sp-$51
    ld [bc], a
    rra
    nop
    ld b, c
    ld c, a
    or c
    db $10
    or d
    db $10
    or e
    rst $38
    db $10
    or h
    db $10
    or l
    db $10
    or [hl]
    db $10
    ld d, h
    rst $38
    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld d, a
    db $10
    ld e, b
    db $e3
    db $10
    ld e, c
    rrca
    inc b
    rra
    nop
    ld b, d
    ld d, e
    or a
    db $10
    cp b
    rst $38
    db $10
    cp c
    db $10
    cp d
    db $10
    cp e
    db $10
    cp h
    rst $38
    db $10
    ld e, d
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    ld e, l
    adc a
    db $10
    ld e, [hl]
    db $10
    ld e, a
    rrca
    inc b
    rra
    nop
    ld b, d
    ld d, a
    cp l
    rst $38
    db $10
    cp [hl]
    db $10
    cp a
    db $10
    ret nz

    db $10
    pop bc
    rst $38
    db $10
    jp nz, Jump_03d_6010

    db $10
    ld h, c
    db $10
    ld h, d
    ccf
    db $10
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    rrca
    inc b
    rra
    nop
    cp $42
    ld e, e
    jp $c410


    db $10
    push bc
    db $10
    add $ff
    db $10
    rst $00
    db $10
    ret z

    db $10
    ld h, [hl]
    db $10
    ld h, a
    rst $38
    db $10
    ld l, b
    db $10
    ld l, c
    db $10
    ld l, d
    db $10
    ld l, e
    rst $38
    db $10
    ld l, h
    db $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    rst $38
    db $10
    ldh a, [rNR14]
    di
    inc d
    db $f4
    inc d
    ldh a, [c]
    add $22
    nop
    di
    sub h
    ld b, b
    nop
    nop
    ld bc, $00e1
    ldh a, [rHDMA4]
    rst $38
    rst $28
    ld d, h
    db $ec
    ld d, h
    pop af
    inc d
    ret


    db $10
    rst $38
    jp z, $cb10

    db $10
    call z, $cd10
    db $10
    rst $38
    adc $10
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    db $10
    rst $38
    ld [hl], e
    db $10
    ld [hl], h
    db $10
    ld [hl], l
    db $10
    halt
    db $10
    ld a, a
    ld [hl], a
    db $10
    ld a, b
    db $10
    ld a, c
    db $10
    pop af
    jp nz, Jump_000_3903

    pop af
    add d
    inc bc
    ld b, c
    inc bc
    xor $54
    db $ed
    add b
    inc bc
    inc bc
    dec b
    rst $38
    pop af
    inc d
    rst $08
    db $10
    ret nc

    db $10
    pop de
    db $10
    rst $38
    jp nc, $d310

    db $10
    call nc, $d510
    db $10
    rst $38
    ld a, d
    db $10
    ld a, e
    db $10
    ld a, h
    db $10
    ld a, l
    db $10
    rst $38
    ld a, [hl]
    db $10
    ld a, a
    db $10
    add b
    db $10
    add c
    db $10
    adc a
    add d
    db $10
    add e
    db $10
    and l
    ld b, $61
    ld [$0462], sp
    sub h
    rst $38
    di
    inc d
    db $ec
    inc d
    db $ed
    inc d
    xor $14
    db $fd
    ldh a, [$ff82]
    dec b
    sub $10
    rst $10
    db $10
    ret c

    db $10
    rst $38
    reti


    db $10
    jp c, $db10

    db $10
    add h
    db $10
    rst $38
    add l
    db $10
    add [hl]
    db $10
    add a
    db $10
    adc b
    db $10
    ld a, [hl]
    and c
    inc [hl]
    adc c
    db $10
    adc d
    db $10
    adc e
    db $10
    inc b
    dec bc
    db $d3
    ld d, h
    db $f4
    ld h, [hl]
    inc bc
    pop bc
    ld [$64f4], sp
    inc c
    ldh a, [c]
    inc d
    rst $38
    call c, $dd10
    db $10
    sbc $10
    rst $18
    db $10

Jump_03d_7d40:
    rst $30
    ldh [rNR10], a
    pop hl
    ldh [rTMA], a
    adc h
    db $10
    adc l
    db $10
    rst $38
    adc [hl]
    db $10
    adc a
    db $10
    sub b
    db $10
    sub c
    db $10
    ld c, c
    sub d
    ret nz

    rlca
    and e
    ld b, $ef
    ld l, d
    inc bc
    ld b, c
    ld [$00ec], sp
    ld [$63fe], sp
    inc c
    ldh [c], a
    db $10
    db $e3
    db $10
    db $e4
    db $10
    push hl
    dec de
    db $10
    and $40
    rlca
    rst $38
    jr jr_03d_7da2

    nop
    cpl
    nop
    cpl
    nop
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld hl, sp+$2f
    nop
    cpl
    nop
    cpl
    nop
    rst $38
    jr jr_03d_7d93

jr_03d_7d93:
    nop
    rst $38
    rst $38
    dec sp
    pop af
    ld d, l
    add sp, $24
    ccf
    ld b, a
    or l
    rst $38
    dec e
    adc $08

jr_03d_7da2:
    adc c
    nop
    add hl, de
    ld de, $ff5f
    ld a, $96
    ld [bc], a
    ld [hl], c
    ld b, a
    xor h
    ld [hl], $66
    rst $38
    dec e
    rst $38
    ld a, a
    rst $30
    ld a, [hl]
    nop
    nop
    or b
    rst $18
    ld e, [hl]
    daa
    ld c, d
    rst $30
    ld a, [hl]
    dec b
    ld [bc], a
    ld e, d
    ld l, e
    ld l, a
    ld d, d
    ld c, d
    xor l
    dec [hl]
    dec b
    ld [bc], a
    ld a, e
    ld a, a
    ld b, c
    add h
    rst $38
    dec sp
    dec hl
    rst $38
    rra
    sbc a
    ld b, a
    ld d, l
    ld [de], a
    rlca
    ld c, l
    add hl, bc
    and a
    inc c
    inc b
    inc bc
    ld [bc], a
    rra
    nop
    rla
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_03d_7eec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
