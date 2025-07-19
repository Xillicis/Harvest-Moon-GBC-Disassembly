; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    dec e
    push hl
    push af
    ld l, $1c
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $5fe3
    ld c, $1d
    ld de, $8800
    call Call_000_31a0
    ld hl, $5a94
    ld c, $1d
    ld de, $9000

Jump_01d_402a:
    call Call_000_31a0
    ld hl, $62bc
    ld c, $1d
    ld de, $8000
    call Call_000_31a0
    ld hl, $63a6
    ld c, $1d
    ld de, $9800
    call Call_000_31a0
    ld hl, $651f
    ld c, $1d
    ld de, vBGMap1
    call Call_000_31a0
    ld a, $60
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld hl, $40c3
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
    ld [wTextID], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $00
    call Call_000_25c5
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $00
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_01d_4113
    call Call_01d_40b4
    ret


Call_01d_40b4:
    ld a, [wLCDCTempStorage]
    ld b, a
    ld hl, rLCDC

jr_01d_40bb:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01d_40bb
    ld [hl], b
    ret


    cpl
    ld b, c
    ld e, l
    ld b, c
    nop

jr_01d_40c8:
    ld b, d
    ld b, h
    ld b, d
    db $e4
    ld b, d
    inc b
    inc e
    inc l
    ld l, h
    db $e4
    ld b, d
    inc b
    inc e
    jr z, @+$6a

    db $e4
    ld b, d
    inc b
    jr jr_01d_40f4

    ld e, b
    db $e4
    ld b, d
    inc b
    jr jr_01d_40fa

    jr jr_01d_40c8

    ld b, d
    inc b
    inc b

Jump_01d_40e7:
    inc b
    inc b
    db $e4
    ld b, d
    inc b
    nop
    nop
    nop
    inc de
    ld b, e
    add hl, sp
    ld b, e
    pop af

jr_01d_40f4:
    ld b, b
    ld b, e
    ld e, b
    inc b
    ld e, b
    ld e, b

jr_01d_40fa:
    jr @+$45

    ld e, b
    inc b
    jr jr_01d_4118

    nop
    ld b, e
    ld e, b
    inc b
    inc b
    inc b
    inc b
    ld b, e
    ld e, b
    inc b
    nop
    nop
    nop
    inc de
    ld b, e
    add hl, sp
    ld b, e
    rrca
    ld b, c

Call_01d_4113:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]

jr_01d_4118:
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4126
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
    jp nz, Jump_01d_4335

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
    call Call_01d_434b
    jr nz, jr_01d_4157

    ldh a, [$ff93]
    dec a
    ldh [$ff93], a
    cp $d0
    jr z, jr_01d_415b

jr_01d_4157:
    pop hl
    dec hl
    dec hl
    ret


jr_01d_415b:
    pop hl
    ret


    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_01d_4335

    push bc
    ld hl, $cd63
    ld a, [hl]
    and $02
    rlca
    rlca
    ld b, a
    ld a, [wLCDCTempStorage]
    and $f7
    or b
    ld [wLCDCTempStorage], a
    ld b, $04
    call Call_01d_434b
    jr nz, jr_01d_41aa

    ldh a, [$ff91]
    dec a
    ldh [$ff91], a
    or a
    jr z, jr_01d_41ae

    jr jr_01d_41aa

    ld hl, $41b0
    jr jr_01d_41a2

    ld hl, $41c0
    jr jr_01d_41a2

    ld hl, $41d0
    jr jr_01d_41a2

    ld hl, $41e0
    jr jr_01d_41a2

    ld hl, $41f0
    jr jr_01d_41a2

jr_01d_41a2:
    call Call_000_23e9
    ld a, $04
    ld [$cd63], a

jr_01d_41aa:
    pop hl
    dec hl
    dec hl
    ret


jr_01d_41ae:
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
    jp nz, Jump_01d_4335

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


Call_01d_4244:
    ldh a, [$ff8b]
    and $0f
    or a
    jp nz, Jump_01d_4335

    push bc
    ld hl, $cd63
    ld a, [hl]
    and $02
    rlca
    rlca
    ld b, a
    ld a, [wLCDCTempStorage]
    and $f7
    or b
    ld [wLCDCTempStorage], a
    ld b, $04
    call Call_01d_434b
    ld hl, $cd77
    call Call_01d_42c9
    ld de, $54c9
    call Call_01d_42db
    ld hl, wPlayerName
    ld b, $04
    call Call_01d_434b
    dec hl
    dec hl
    call nz, Call_01d_42c9
    ld de, $54b0
    call Call_01d_42db
    ld hl, $cd71
    ld b, $02
    call Call_01d_434b
    dec hl
    dec hl
    call nz, Call_01d_42c9
    ld de, $549f
    call Call_01d_42db
    ld hl, $cd6d
    ld b, $03
    call Call_01d_434b
    dec hl
    dec hl
    call z, Call_01d_42c9
    ld de, $548e
    call Call_01d_42db
    ld hl, $cd69
    ld b, $08
    call Call_01d_434b
    dec hl
    dec hl
    call z, Call_01d_42c9
    ld de, $5485
    call Call_01d_42db
    ld a, [$cd77]
    cp $50
    jr c, jr_01d_42c7

    pop hl
    dec hl
    dec hl
    ret


jr_01d_42c7:
    pop hl
    ret


Call_01d_42c9:
    dec [hl]
    inc hl
    inc hl
    inc hl
    ld b, $02
    call Call_01d_434b
    dec hl
    dec hl
    bit 0, a
    jr z, jr_01d_42d9

    inc [hl]

jr_01d_42d9:
    dec hl
    ret


Call_01d_42db:
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
    jp nz, Jump_01d_4335

    push bc
    call Call_01d_4244
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
    jr nz, jr_01d_430c

    xor a
    ld [$cd65], a
    pop de
    ret


jr_01d_430c:
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
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $11
    ld [wSTAT_HandlerIndex], a
    ld a, $01
    ld [$c0a6], a
    ld a, [wLCDCTempStorage]
    and $83
    ld [wLCDCTempStorage], a
    pop hl
    ret


Jump_01d_4335:
    ld hl, $40f5
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c

jr_01d_4341:
    ld a, [hl+]
    or a
    ret z

    ld d, [hl]
    inc hl
    ld e, a
    ld a, [hl+]
    ld [de], a
    jr jr_01d_4341

Call_01d_434b:
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


    push hl
    push af
    ld l, $fb
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_01d_440c
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $6cb4
    ld c, $1e
    ld de, $8000
    call Call_000_31a0
    ld hl, $666a
    ld c, $1e
    ld de, $8800
    call Call_000_31a0
    ld hl, $7ace
    ld c, $17
    ld de, $9000
    call Call_000_31a0
    ld hl, $7b47
    ld c, $10
    ld de, $9400
    call Call_000_31a0
    ld hl, $7b73
    ld c, $13
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
    ld [wTextID], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld hl, $4461
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
    jr z, jr_01d_43e9

    ld a, $01
    ld [$cd66], a

jr_01d_43e9:
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $00
    call Call_000_25c5
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $4d
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret

Call_01d_440c:
    xor a
    ld [$cd61], a
    ld hl, $bff0
    ld de, Data_01d_4438
    ld b, $10
    call Call_01d_442e
    ret nz

    ld hl, $a002
    ld de, Data_01d_4448
    ld b, $10
    call Call_01d_442e
    ret nz

    ld a, $01
    ld [$cd61], a
    ret

Call_01d_442e:
jr_01d_442e:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc hl
    dec b
    jr nz, jr_01d_442e

    cp a
    ret

Data_01d_4438: ; 1dx4438
    db $42, $61, $63, $6B, $55, $70, $5F, $43, $68, $65, $63, $6B, $21, $23, $24, $25
Data_01d_4448: ; 1dx4448
    db $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01, $0E, $01

Label_01d_4458: ; 1dx4458
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz
    call Call_01d_4113
    ret


    ld [$0444], a

jr_01d_4464:
    nop
    nop
    nop
    ld [$0444], a

jr_01d_446a:
    inc b
    inc b
    inc b
    ld [$0444], a
    jr jr_01d_448a

    nop
    ld [$0444], a
    ld e, b
    ld e, b
    jr jr_01d_4464

    ld b, h
    inc b

jr_01d_447c:
    ld l, b
    ld l, b
    jr jr_01d_446a

    ld b, h
    inc b
    ld l, h
    ld l, h
    inc e
    or b
    ld b, l
    xor c
    ld b, h
    rst $00

jr_01d_448a:
    ld b, h
    ld [$0444], a
    ld e, b
    ld e, b
    jr jr_01d_447c

    ld b, h
    inc b
    jr jr_01d_44ae

    nop
    ld [$0444], a

jr_01d_449a:
    inc b
    inc b
    inc b
    ld [$0444], a
    nop
    nop
    nop
    dec h
    ld b, l
    add hl, sp
    ld b, e
    push hl
    ld b, h
    ld [$0444], a
    ld e, b
    ld e, b

jr_01d_44ae:
    jr jr_01d_449a

    ld b, h
    inc b
    jr jr_01d_44cc

    nop
    ld [$0444], a

jr_01d_44b8:
    inc b
    inc b
    inc b
    ld [$0444], a
    nop
    nop
    nop
    ld e, l
    ld b, l
    add hl, sp
    ld b, e
    push hl
    ld b, h
    ld [$0444], a
    ld e, b
    ld e, b

jr_01d_44cc:
    jr jr_01d_44b8

    ld b, h
    inc b
    jr jr_01d_44ea

    nop
    ld [$0444], a
    inc b
    inc b
    inc b
    ld [$0444], a
    nop
    nop
    nop
    ld a, e
    ld b, l
    add hl, sp
    ld b, e
    push hl
    ld b, h
    nop
    add hl, sp
    ld b, e
    push hl
    ld b, h

jr_01d_44ea:
    push bc
    call Call_01d_464a
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
    call Call_01d_434b
    pop hl
    ld a, [$cd64]
    jr nz, jr_01d_4511

    inc a
    ld [$cd64], a

jr_01d_4511:
    ld a, [$cd65]
    inc a
    cp e
    jr nz, jr_01d_451e

    xor a
    ld [$cd65], a
    pop bc
    ret


jr_01d_451e:
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
    call Call_01d_434b
    pop hl
    cp $02
    jr z, jr_01d_4557

    cp $03
    jr z, jr_01d_4553

    cp $04
    jr nz, jr_01d_454c

    ld a, $02

jr_01d_454c:
    ld [$c90b], a
    ld a, $26
    jr jr_01d_4559

jr_01d_4553:
    ld a, $29
    jr jr_01d_4559

jr_01d_4557:
    ld a, $27

jr_01d_4559:
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
    ld [wFreezePlayerInTextWindowOrInTown], a
    inc a
    ld [$c0a6], a
    ld a, $12
    ld [wSTAT_HandlerIndex], a
    ld a, $01
    ld [$cb92], a
    ret


    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, $ff
    ld [$cb92], a
    ld a, $00
    ldh [rSTAT], a
    di
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $03
    ld [$c910], a
    ld a, [$b90a]
    cp $01
    jr nz, jr_01d_45a5

    ld a, $28
    ld [$cb50], a
    ld a, $02
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


jr_01d_45a5:
    ld a, $02
    ld [$cb50], a
    ld a, $02
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


    push bc
    call Call_01d_464a
    call Call_01d_45d1
    ld hl, $cd67
    ld b, $0a
    call Call_01d_434b
    ld hl, $cd68
    ld b, $b4
    call z, Call_01d_434b
    pop hl
    jr z, jr_01d_45cc

    jr jr_01d_45e2

jr_01d_45cc:
    inc hl
    inc hl
    inc hl
    inc hl
    ret


Call_01d_45d1:
    ld hl, $cd63
    ld b, $04
    call Call_01d_434b
    ld a, [$cd64]
    ret nz

    inc a
    ld [$cd64], a
    ret


jr_01d_45e2:
    ldh a, [$ff8b]
    ld c, a
    bit 0, c
    jr nz, jr_01d_4637

    bit 3, c
    jr nz, jr_01d_4637

    bit 6, c
    jr nz, jr_01d_4618

    bit 7, c
    jr nz, jr_01d_45f8

    dec hl
    dec hl
    ret


jr_01d_45f8:
    ld a, [$cd61]
    or a
    jr z, jr_01d_4615

    ld a, [$cd66]
    dec a
    jr z, jr_01d_4615

    xor a
    ld [$cd67], a
    ld [$cd68], a
    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [$cd66], a

jr_01d_4615:
    dec hl
    dec hl
    ret


jr_01d_4618:
    ld a, [$cd61]
    or a
    jr z, jr_01d_4634

    ld a, [$cd66]
    or a
    jr z, jr_01d_4634

    xor a
    ld [$cd67], a
    ld [$cd68], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd66], a

jr_01d_4634:
    dec hl
    dec hl
    ret


jr_01d_4637:
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


Call_01d_464a:
    ld bc, $5c58
    ld hl, $54f3
    call Call_000_20de
    ld a, [$cd61]
    or a
    jr z, jr_01d_4662

    ld bc, $6c58
    ld hl, $5520
    call Call_000_20de

jr_01d_4662:
    ld b, $5c
    ld a, [$cd66]
    or a
    jr z, jr_01d_466c

    ld b, $6c

jr_01d_466c:
    ld c, $33
    ld hl, $54e2
    call Call_000_20de
    ret


; STAT interrupt handler to split horizontal scroll:
; at scanline 79→load map scroll, at 119→reset scroll for UI
SplitHScrollHandler:
.wait
    ldh a, [rLY]  
    cp $4f        ; is current scanline 79?
    jr z, .on79   ; yes → set up scroll for the main map
    jr nc, .on119 ; if past 79, skip to the next threshold logic
    jr .wait      ; otherwise, keep looping

.on79
    ldh a, [rSTAT]  
    and $03       ; mask mode bits
    jr nz, .on79  ; spin until mode=0 (H‑Blank)
    ld a, [$cd64]  
    ldh [rSCX], a ; load your “map scroll X” value
    ld a, $75      
    ldh [rLYC], a ; set LYC=0x75 (117) for the next interrupt
    ret

.on119
    ldh a,[rLY]  
    cp $77       ; is it scanline 119?
    jr z, .on119_2
    ret nc       ; if we’ve passed 119 already, bail out
    jr .on119

.on119_2
    ldh a, [rSTAT]
    and $03
    jr nz, .on119_2 ; wait for mode=0 again
    xor a
    ldh [rSCX], a   ; reset SCX to 0 (fixed section)
    ld a, $4d
    ldh [rLYC], a   ; set LYC back to 0x4d (77) for the next cycle
    ret

Call_01d_46a6:
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $63
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $4001
    ld a, $11
    ld de, $9000
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $4801
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $6679
    ld c, $1d
    ld de, $89a0
    call Call_000_31a0
    ld hl, $6682
    ld c, $1d
    ld de, $8aa0
    call Call_000_31a0
    ld hl, $668d
    ld c, $1d
    ld de, $8e00
    call Call_000_31a0
    ld hl, $6e00
    ld de, $88c0
    ld b, $10
    call CopyHLtoDE
    ld hl, $6810
    ld c, $1d
    ld de, $8000
    call Call_000_31a0
    ld a, [$cd61]
    or a
    jr nz, jr_01d_4731

    ld hl, $6c25
    ld c, $1d
    ld de, $cd7f
    call Call_000_31a0
    ld a, $fd
    ldh [$ff93], a
    ld a, $ff
    ldh [$ff91], a
    xor a
    ld [$cd69], a
    ld [$cd64], a
    jr jr_01d_474d

jr_01d_4731:
    ld hl, $6d7b
    ld c, $1d
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

jr_01d_474d:
    xor a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
    ld [$cd6a], a
    ld hl, $560b
    ld a, l
    ld [$cd6f], a
    ld a, h
    ld [$cd70], a
    ld hl, $566f
    ld a, l
    ld [$cd71], a
    ld a, h
    ld [$cd72], a
    ld hl, $9800
    ld bc, $0400
    ld a, $e0
    call Call_01d_513a
    ld hl, vBGMap1
    ld bc, $0400
    ld a, $e0
    call Call_01d_513a
    ld de, $9800
    call Call_01d_5145
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [wTextID], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $4e
    ld hl, $cd6b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $4816
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $04
    call Call_000_25c5
    ld hl, $5922
    ld c, $1d
    ld de, $8e00
    call Call_000_31a0
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_000_33c4
    call Call_01d_4113
    ld hl, $cd68
    inc [hl]
    ld hl, $cd63
    inc [hl]
    ld a, [$cd69]
    rst $00
    add hl, bc
    ld c, b
    add hl, bc
    ld c, b
    add hl, bc
    ld c, b
    add hl, bc
    ld c, a
    inc l
    ld d, b
    add c
    ld d, b
    call Call_01d_4bf8
    call Call_01d_4e57
    call Call_01d_4e33
    call Call_01d_4e9f
    ret


    cp c
    ld c, c
    ld [hl], $48
    inc e
    ld c, b
    adc e
    ld d, b
    ld l, $48
    jr z, jr_01d_486a

    jr z, jr_01d_486c

    xor e
    ld c, c
    inc e
    ld c, b
    rst $00
    ld c, c
    add hl, sp
    ld b, e
    ld a, [hl+]
    ld c, b
    rst $18
    ld c, c
    dec h
    ld l, h
    dec e
    db $fc
    nop
    nop
    call nc, $0049
    nop
    and c
    ld c, d
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld b, [hl]
    ld c, b
    ld c, [hl]
    ld c, b
    ld c, c
    ld c, d
    ld a, [hl-]
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    call Call_01d_49c7
    add hl, sp
    ld b, e
    ld d, b
    ld c, b
    inc de
    ld c, a
    rst $18
    ld c, c
    ret z

    ld l, h
    dec e
    nop
    nop
    inc bc
    ld a, [de]
    ld c, a
    ld hl, $0b4f
    ld d, [hl]
    ld l, a
    ld d, [hl]
    dec bc
    ld d, [hl]
    ld l, a
    ld d, [hl]

jr_01d_486a:
    inc c
    and b

jr_01d_486c:
    ld c, b
    ld l, $48
    ld hl, $244f
    ld d, [hl]
    ld l, a
    ld d, [hl]
    dec bc
    ld d, [hl]
    adc b
    ld d, [hl]
    inc c
    and b
    ld c, b
    ld l, $48
    ld hl, $0b4f
    ld d, [hl]
    ld l, a
    ld d, [hl]
    dec bc
    ld d, [hl]
    ld l, a
    ld d, [hl]
    inc c
    and b
    ld c, b
    ld l, $48
    ld hl, $3d4f
    ld d, [hl]
    ld l, a
    ld d, [hl]
    dec bc
    ld d, [hl]
    and c
    ld d, [hl]
    inc c
    and b
    ld c, b
    ld l, $48
    xor e
    ld c, c
    ld h, b
    ld c, b
    xor a
    ld c, a
    cp b

jr_01d_48a3:
    ld c, a
    xor b
    ld c, b
    or l
    ld c, b
    add $4f
    ld d, [hl]
    ld d, [hl]
    ld l, a
    ld d, [hl]
    ld b, b
    call nc, $3948
    ld b, e
    call nc, $c648
    ld c, a

Jump_01d_48b7:
    dec bc
    ld d, [hl]
    cp d
    ld d, [hl]
    db $10
    call nc, $c648
    ld c, a
    dec bc
    ld d, [hl]
    db $d3
    ld d, [hl]
    db $10
    call nc, $c648
    ld c, a
    dec bc
    ld d, [hl]
    cp d
    ld d, [hl]
    jr nz, jr_01d_48a3

    ld c, b
    add hl, sp
    ld b, e
    call nc, $1348
    ld c, a
    rst $18
    ld c, c
    ld e, $6d
    dec e
    db $fc
    nop
    inc b
    ld a, [de]
    ld c, a
    ld hl, $614f
    ld d, l
    or [hl]
    ld d, l
    ld h, c
    ld d, l
    or [hl]
    ld d, l
    inc c
    ld de, $5449
    ld c, b
    ld hl, $724f
    ld d, l
    or [hl]
    ld d, l
    ld h, c
    ld d, l
    rst $00
    ld d, l
    inc c
    ld de, $5449
    ld c, b
    ld hl, $834f
    ld d, l
    or [hl]
    ld d, l
    ld h, c
    ld d, l
    ret c

    ld d, l
    inc c
    ld de, $5449
    ld c, b
    xor e
    ld c, c
    ldh [rOBP0], a
    ld b, [hl]
    ld d, b
    cp b
    ld c, a
    add hl, de
    ld c, c
    ld b, c
    ld c, c
    add $4f
    sub h
    ld d, l
    or [hl]
    ld d, l
    inc c
    ld l, c
    ld c, c
    add $4f
    and l
    ld d, l
    or [hl]
    ld d, l
    inc c
    ld l, c
    ld c, c
    add $4f
    sub h
    ld d, l
    or [hl]
    ld d, l
    inc c
    ld l, c
    ld c, c
    add $4f
    and l
    ld d, l
    or [hl]
    ld d, l
    jr $49a5

    ld c, c
    add hl, sp
    ld b, e
    ld l, c
    ld c, c
    add $4f
    ld h, c
    ld d, l
    jp hl


    ld d, l
    inc c
    ld l, c
    ld c, c
    add $4f
    ld h, c
    ld d, l
    ld a, [$0c55]
    ld l, c
    ld c, c
    add $4f
    ld h, c
    ld d, l
    jp hl


    ld d, l
    inc c
    ld l, c
    ld c, c
    add $4f
    ld h, c
    ld d, l
    ld a, [$1855]
    ld l, c
    ld c, c
    add hl, sp
    ld b, e
    ld l, c
    ld c, c
    ld [hl], $50
    rst $18
    ld c, c
    dec h
    ld l, h
    dec e
    db $fc
    nop
    nop
    call nc, $0049
    nop
    and c
    ld c, d
    adc l
    ld c, c
    adc l
    ld c, c
    adc l
    ld c, c
    add e
    ld c, c
    adc l
    ld c, c
    ld c, c
    ld c, d
    ld [hl], a
    ld c, c
    adc e
    ld c, c
    ld a, e
    call $4991
    add hl, sp
    ld b, e
    call nc, Call_01d_6048
    ld l, c
    ld a, $24
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


CopyHLToDE4Bytes:
    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hli]
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
    jr z, jr_01d_49c3

    inc hl
    inc hl

jr_01d_49c3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_01d_49c7:
    ld h, b
    ld l, c
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
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
    jr z, jr_01d_49fc

    ld hl, $4a29
    call Call_000_23e9

jr_01d_49fc:
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
    call Call_01d_5145
    call Call_000_2273
    ld a, [$dd00]
    or a
    jr z, jr_01d_4a23

    call Call_000_2424
    ld hl, $4a39
    call Call_000_23e9

jr_01d_4a23:
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

Call_01d_4a41:
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
    call Call_01d_4a91
    jr nz, jr_01d_4a6f

    ld a, [hl+]
    call Call_01d_4a91
    jr nz, jr_01d_4a6f

    ld a, [hl+]
    call Call_01d_4a91
    jr nz, jr_01d_4a6f

    ld a, [hl+]
    call Call_01d_4a91
    jr nz, jr_01d_4a6f

    ld a, $51
    call Call_000_25cb
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01d_4a6f:
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

jr_01d_4a86:
    ld a, [hl+]
    call Call_01d_4a97
    ld [de], a
    inc de
    dec b
    jr nz, jr_01d_4a86

    pop hl
    ret


Call_01d_4a91:
    cp $d8
    ret z

    cp $4e
    ret


Call_01d_4a97:
    cp $d8
    jr z, jr_01d_4a9e

    cp $4e
    ret nz

jr_01d_4a9e:
    ld a, $d8
    ret


    push bc
    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01d_4ade

    bit 5, a
    jr nz, jr_01d_4ac9

    bit 6, a
    jr nz, jr_01d_4af3

    bit 7, a
    jr nz, jr_01d_4b08

    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01d_4b1d

    bit 1, a
    jp nz, Jump_01d_4b5d

    bit 3, a
    jp nz, Jump_01d_4b8a

    pop hl
    dec hl
    dec hl
    ret


jr_01d_4ac9:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    sub $01
    jr nc, jr_01d_4ad7

    ld a, $0c

jr_01d_4ad7:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


jr_01d_4ade:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    inc a
    cp $0d
    jr c, jr_01d_4aec

    xor a

jr_01d_4aec:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4af3:
jr_01d_4af3:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd66]
    sub $01
    jr nc, jr_01d_4b01

    ld a, $05

jr_01d_4b01:
    ld [$cd66], a
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4b08:
jr_01d_4b08:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd66]
    inc a
    cp $06
    jr c, jr_01d_4b16

    xor a

jr_01d_4b16:
    ld [$cd66], a
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4b1d:
jr_01d_4b1d:
    call Call_01d_4cba
    ld b, $00
    inc b
    inc b
    inc b
    cp $fc
    jr z, jr_01d_4b50

    ld e, a
    ld a, $42
    call Call_000_25cb
    ld hl, $cd6b
    ld a, [$cd67]
    cp $04
    jr c, jr_01d_4b3a

    dec a

jr_01d_4b3a:
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

jr_01d_4b50:
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


Jump_01d_4b5d:
jr_01d_4b5d:
    ld a, $51
    call Call_000_25cb
    ld a, [$cd67]
    or a
    jr z, jr_01d_4b7d

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


jr_01d_4b7d:
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


Jump_01d_4b8a:
jr_01d_4b8a:
    ld a, $48
    call Call_000_25ce
    ld bc, $0b05
    ld a, [$cd69]
    cp $02
    jr nz, jr_01d_4b9b

    ld b, $08

jr_01d_4b9b:
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
    jr nz, jr_01d_4be3

    bit 5, a
    jr nz, jr_01d_4bce

    bit 6, a
    jp nz, Jump_01d_4af3

    bit 7, a
    jp nz, Jump_01d_4b08

    ldh a, [$ff8b]
    bit 0, a
    jp nz, Jump_01d_4b1d

    bit 1, a
    jr nz, jr_01d_4b5d

    bit 3, a
    jr nz, jr_01d_4b8a

    pop hl
    dec hl
    dec hl
    ret


jr_01d_4bce:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    sub $01
    jr nc, jr_01d_4bdc

    ld a, $09

jr_01d_4bdc:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


jr_01d_4be3:
    ld a, $48
    call Call_000_25ce
    ld a, [$cd65]
    inc a
    cp $0a
    jr c, jr_01d_4bf1

    xor a

jr_01d_4bf1:
    ld [$cd65], a
    pop hl
    dec hl
    dec hl
    ret


Call_01d_4bf8:
jr_01d_4bf8:
    call Call_01d_4e73
    ld a, [hl+]
    bit 7, a
    jr nz, jr_01d_4c19

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
    ld hl, $4c14
    call Call_000_20de
    ret


    nop
    nop
    jp hl


    nop
    add b

jr_01d_4c19:
    ld a, [hl]
    ld hl, $4c46
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01d_4c3d

    inc hl
    inc hl
    bit 5, a
    jr nz, jr_01d_4c3d

    inc hl
    inc hl
    bit 6, a
    jr nz, jr_01d_4c3d

    inc hl
    inc hl
    bit 7, a
    jr nz, jr_01d_4c3d

    ret


jr_01d_4c3d:
    call Call_01d_4c42
    jr jr_01d_4bf8

Call_01d_4c42:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    halt
    ld c, h
    adc c
    ld c, h
    ld a, [hl]
    ld c, h
    add h
    ld c, h
    sbc c
    ld c, h
    sub c
    ld c, h
    ld a, [hl]
    ld c, h
    add h
    ld c, h
    sbc [hl]
    ld c, h
    sbc [hl]
    ld c, h
    sbc [hl]
    ld c, h
    sbc [hl]
    ld c, h
    sbc [hl]
    ld c, h
    and e
    ld c, h
    and h
    ld c, h
    xor h
    ld c, h
    and e
    ld c, h
    and e
    ld c, h
    and h
    ld c, h
    xor h
    ld c, h
    and e
    ld c, h
    or h
    ld c, h
    and h
    ld c, h
    xor h
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


Call_01d_4cba:
    call Call_01d_4e73
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

jr_01d_4d86:
    rlca
    inc bc

jr_01d_4d88:
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
    jr nz, jr_01d_4d86

    jr nz, jr_01d_4d88

    jr nz, @-$7e

    jr z, jr_01d_4e0c

jr_01d_4e0c:
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

Call_01d_4e33:
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


Call_01d_4e57:
    ld a, [$cd68]
    bit 4, a
    ld c, $d8
    jr z, jr_01d_4e62

    ld c, $4e

jr_01d_4e62:
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


Call_01d_4e73:
    ld hl, $4ce3
    ld a, [$cd69]
    cp $02
    jr nz, jr_01d_4e80

    ld hl, $4d7f

jr_01d_4e80:
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


Call_01d_4e9f:
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
    ld bc, $4ef9
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


    nop
    ld l, [hl]
    db $10
    ld l, [hl]
    jr nz, jr_01d_4f6d

    jr nc, @+$70

    ld b, b
    ld l, [hl]
    ld d, b
    ld l, [hl]
    ld h, b
    ld l, [hl]
    ld [hl], b
    ld l, [hl]
    call Call_01d_4ffc
    call Call_01d_5013
    call Call_01d_4e9f
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
    jr z, jr_01d_4f2f

    inc hl
    inc hl
    inc hl
    inc hl

jr_01d_4f2f:
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
    jr nz, jr_01d_4f45

    inc hl
    inc hl
    inc hl
    inc hl

jr_01d_4f45:
    ldh a, [$ff8b]
    bit 6, a
    jp nz, Jump_01d_4f64

    bit 7, a
    jp nz, Jump_01d_4f76

    bit 0, a
    jp nz, Jump_01d_4f89

    bit 1, a
    jr nz, jr_01d_4f94

    ld a, [$cd63]
    cp [hl]
    jr nc, jr_01d_4fa1

    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4f64:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr z, jr_01d_4f72

    ld a, $48

jr_01d_4f6d:
    call Call_000_25ce
    xor a
    ld [hl], a

jr_01d_4f72:
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4f76:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr nz, jr_01d_4f85

    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [hl], a

jr_01d_4f85:
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4f89:
    pop de
    ld a, $42
    call Call_000_25cb
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01d_4f94:
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


jr_01d_4fa1:
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
    jr z, jr_01d_4fc2

    inc hl
    inc hl

jr_01d_4fc2:
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
    jp nz, Jump_01d_4fe8

    ld a, [$cd63]
    cp [hl]
    jr nc, jr_01d_4fee

    pop hl
    dec hl
    dec hl
    ret


Jump_01d_4fe8:
    pop de
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01d_4fee:
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


Call_01d_4ffc:
    ld bc, $4824
    ld a, [$cd64]
    or a
    jr z, jr_01d_5007

    ld b, $68

jr_01d_5007:
    ld hl, $500e
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_01d_5013:
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


    call Call_01d_5051
    call Call_01d_5068
    call Call_01d_4e9f
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


Call_01d_5051:
    ld bc, $402e
    ld a, [$cd64]
    or a
    jr z, jr_01d_505c

    ld b, $58

jr_01d_505c:
    ld hl, $5063
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_01d_5068:
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


    call Call_01d_50ea
    call Call_01d_5101
    call Call_01d_4e9f
    ret


    push bc
    ldh a, [$ff8b]
    bit 4, a
    jr nz, jr_01d_50b5

    bit 5, a
    jr nz, jr_01d_50a3

    bit 0, a
    jp nz, Jump_01d_50c8

    bit 1, a
    jr nz, jr_01d_50dc

    pop hl
    dec hl
    dec hl
    ret


jr_01d_50a3:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr z, jr_01d_50b1

    ld a, $48
    call Call_000_25ce
    xor a
    ld [hl], a

jr_01d_50b1:
    pop hl
    dec hl
    dec hl
    ret


jr_01d_50b5:
    ld hl, $cd64
    ld a, [hl]
    or a
    jr nz, jr_01d_50c4

    ld a, $48
    call Call_000_25ce
    ld a, $01
    ld [hl], a

jr_01d_50c4:
    pop hl
    dec hl
    dec hl
    ret


Jump_01d_50c8:
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


jr_01d_50dc:
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


Call_01d_50ea:
    ld bc, $6820
    ld a, [$cd64]
    or a
    jr z, jr_01d_50f5

    ld c, $60

jr_01d_50f5:
    ld hl, $50fc
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_01d_5101:
    ld a, [$cd68]
    ld de, $cdc1
    bit 4, a
    jr z, jr_01d_510e

    ld de, $cdd5

jr_01d_510e:
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


Call_01d_513a:
    push af

jr_01d_513b:
    pop af
    ld [hl+], a
    dec bc
    push af
    ld a, c
    or b
    jr nz, jr_01d_513b

    pop af
    ret


Call_01d_5145:
    ld hl, $cd7f
    ld b, $12

jr_01d_514a:
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
    jr nz, jr_01d_514a

    ret

INCLUDE "engine/new_game.asm"

    call Call_01d_46a6
    ld hl, $6c25
    ld c, $1d
    ld de, $cd7f
    call Call_000_31a0
    ld de, $9800
    call Call_01d_5145
    ld a, $fd
    ldh [$ff93], a
    ld a, $ff
    ldh [$ff91], a
    xor a
    ld [$cd69], a
    ld [$cd64], a
    ld hl, $536e
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    call Call_000_0d90
    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_000_33c4
    call Call_01d_4113
    ld hl, $cd68
    inc [hl]
    ld hl, $cd63
    inc [hl]
    ld a, [$cd69]
    rst $00
    ld h, c
    ld d, e
    ld h, c
    ld d, e
    ld h, c
    ld d, e
    call Call_01d_4bf8
    call Call_01d_4e57
    call Call_01d_4e33
    call Call_01d_4e9f
    ret


    ld [hl], $50
    call nc, $0049
    nop
    and c
    ld c, d
    ld [hl], h
    ld d, e
    ld [hl], h
    ld d, e
    ld [hl], h
    ld d, e
    add b
    ld d, e
    ld [hl], h
    ld d, e
    ld c, c
    ld c, d
    ld [hl], h
    ld d, e
    adc b
    ld d, e
    ld a, e
    call Call_01d_538e
    add hl, sp
    ld b, e
    adc d
    ld d, e

Call_01d_538e:
    push bc
    ld a, [wSTAT_HandlerIndex]
    cp $1d
    jr z, jr_01d_53d7

    cp $23
    jr z, jr_01d_53b8

    ld hl, wPetName
    ld de, $b8e6
    call CopyHLToDE4Bytes
    ld a, $01
    ld [$b89c], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    pop hl
    ret


jr_01d_53b8:
    ld hl, wPetName
    ld de, $cd2c
    call CopyHLToDE4Bytes
    ld a, [$b9a1]
    and $f0
    or $0f
    ld [$b9a1], a
    ld a, $03
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    pop hl
    ret


jr_01d_53d7:
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

jr_01d_53ef:
    ld a, [hl]
    inc a
    jr z, jr_01d_53fe

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01d_53ef

jr_01d_53fe:
    push hl
    inc hl
    ld d, h
    ld e, l
    ld hl, wPetName
    call CopyHLToDE4Bytes
    xor a
    ld [de], a
    inc de
    call Call_01d_5477
    ld b, $50
    cp $0a
    jr c, jr_01d_541c

    ld b, $0a
    cp $5f
    jr c, jr_01d_541c

    ld b, $00

jr_01d_541c:
    ld a, b
    ld [de], a
    push de
    inc de
    call Call_01d_5477
    ld b, $00
    cp $0a
    jr c, jr_01d_542f

    inc b
    cp $5f
    jr c, jr_01d_542f

    inc b

jr_01d_542f:
    ld a, b
    ld [de], a
    inc de
    call Call_01d_5477
    ld b, $00
    cp $0a
    jr c, jr_01d_5441

    inc b
    cp $0a
    jr c, jr_01d_5441

    inc b

jr_01d_5441:
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
    jr c, jr_01d_5452

    ld b, $02

jr_01d_5452:
    pop hl
    ld [hl], b
    ld de, $cd2c
    ld hl, wPetName
    call CopyHLToDE4Bytes
    pop hl
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $01
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ret


Call_01d_5477:
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    ret


    nop
    db $fc
    db $10
    db $10
    ld hl, sp-$04
    nop
    db $10
    add b
    ld bc, $1203
    db $10
    ld bc, $11fb
    db $10
    ld sp, hl
    inc bc
    ld [bc], a
    db $10
    ld sp, hl
    ei
    ld bc, $8010
    nop
    ld [bc], a
    inc d
    stop
    ld a, [$1013]
    ld hl, sp+$02
    inc b
    db $10
    ld hl, sp-$06
    inc bc
    db $10
    add b
    rlca
    ld [bc], a
    ld h, $10
    rlca
    ld a, [$1025]
    rst $38
    ld [bc], a
    ld d, $10
    rst $38
    ld a, [$1015]
    rst $30
    ld [bc], a
    ld b, $10
    rst $30
    ld a, [$1005]
    add b
    inc b
    nop
    jr z, @+$12

    inc b
    ld hl, sp+$27
    db $10
    db $fc
    nop
    jr jr_01d_54e5

    db $fc
    ld hl, sp+$17
    db $10
    db $f4
    nop
    ld [$f410], sp
    ld hl, sp+$07
    db $10
    add b
    nop
    nop
    inc bc

jr_01d_54e5:
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
    jr nz, jr_01d_5559

    db $10
    ld sp, hl
    jr jr_01d_555c

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

jr_01d_5559:
    ldh a, [rNR10]
    db $10

jr_01d_555c:
    ld sp, hl
    add sp, $0f
    db $10
    add b
    ld sp, hl
    nop
    ld de, $f914
    ld hl, sp+$10
    inc d
    pop af
    nop
    ld bc, $f114
    ld hl, sp+$00
    inc d
    add b
    ld sp, hl
    nop
    inc de
    inc d
    ld sp, hl
    ld hl, sp+$12
    inc d
    pop af
    nop
    inc bc
    inc d
    pop af
    ld hl, sp+$02
    inc d
    add b
    ld hl, sp+$00
    dec d
    inc d
    ld hl, sp-$08
    inc d
    inc d
    ldh a, [rP1]
    dec b
    inc d
    ldh a, [$fff8]
    inc b
    inc d
    add b
    ld hl, sp+$00
    ld c, h
    inc d
    ld hl, sp-$08
    ld c, e
    inc d
    ldh a, [rP1]
    inc a
    inc d
    ldh a, [$fff8]
    dec sp
    inc d
    add b
    ld hl, sp+$00
    ld c, d
    inc d
    ld hl, sp-$08
    ld c, e
    inc d
    ldh a, [rP1]
    inc a
    inc d
    ldh a, [$fff8]
    dec sp
    inc d
    add b
    ld sp, hl
    nop
    rla
    inc de
    ld sp, hl
    ld hl, sp+$16
    inc de
    pop af
    nop
    rlca
    inc de
    pop af
    ld hl, sp+$06
    inc de
    add b
    ld hl, sp+$00
    add hl, de
    inc de
    ld hl, sp-$08
    jr jr_01d_55e2

    ldh a, [rP1]
    add hl, bc
    inc de
    ldh a, [$fff8]
    ld [$8013], sp
    ld hl, sp+$00
    dec de
    inc de
    ld hl, sp-$08
    ld a, [de]
    inc de
    ldh a, [rP1]

jr_01d_55e2:
    dec bc
    inc de
    ldh a, [$fff8]
    ld a, [bc]
    inc de
    add b
    ld sp, hl
    nop
    ld c, [hl]
    inc de
    ld sp, hl
    ld hl, sp+$4d
    inc de
    pop af
    nop
    ld a, $13
    pop af
    ld hl, sp+$3d
    inc de
    add b
    ld sp, hl
    ld hl, sp+$4f
    inc de
    pop af
    ld hl, sp+$3f
    inc de
    ld sp, hl
    nop
    ld c, [hl]
    inc de
    pop af
    nop
    ld a, $13
    add b
    ld hl, sp+$00
    dec l
    db $10
    ld hl, sp-$08
    inc l
    db $10
    ldh a, [rP1]
    dec e
    ld de, $f8f0
    inc e
    ld de, $00e8
    dec c
    db $10
    add sp, -$08
    inc c
    db $10
    add b
    rst $30
    nop
    cpl
    db $10
    rst $30
    ld hl, sp+$2e
    db $10
    rst $28
    nop
    rra
    ld de, $f8ef
    ld e, $11
    rst $20
    nop
    rrca
    db $10
    rst $20
    ld hl, sp+$0e
    db $10
    add b
    rst $20
    nop
    rrca
    db $10
    rst $20
    ld hl, sp+$0e
    db $10
    rst $30
    nop
    ld sp, $f710
    ld hl, sp+$30
    db $10
    rst $28
    nop
    ld hl, $ef11
    ld hl, sp+$20
    ld de, $f880
    nop
    ld b, e
    db $10
    ld hl, sp-$08
    ld b, d
    db $10
    ldh a, [rP1]
    inc sp
    ld de, $f8f0
    ld [hl-], a
    ld de, $00e8
    inc hl
    db $10
    add sp, -$08
    ld [hl+], a
    db $10
    add b
    ld hl, sp+$00
    ld b, l
    ld [de], a
    ld hl, sp-$08
    ld b, h
    ld [de], a
    ldh a, [rP1]
    dec [hl]
    ld de, $f8f0
    inc [hl]
    ld de, $00e8
    dec h
    ld de, $f8e8
    inc h
    ld de, $e880
    nop
    daa
    ld de, $f8e8
    ld h, $11
    ld hl, sp+$00
    add hl, sp
    ld [de], a
    ld hl, sp-$08
    jr c, @+$14

    ldh a, [rP1]
    add hl, hl
    ld de, $f8f0
    jr z, jr_01d_56b1

    add b
    ld hl, sp+$00
    ld b, a
    ld [de], a
    ld hl, sp-$08
    ld b, [hl]
    ld [de], a
    ldh a, [rP1]
    scf
    ld de, $f8f0
    ld [hl], $11

jr_01d_56b1:
    add sp, $00
    daa
    ld de, $f8e8
    ld h, $11
    add b
    ld hl, sp-$08
    ld a, [hl-]
    ld [de], a
    ldh a, [$fff8]
    ld a, [hl+]
    ld de, $00f8
    ld b, l
    ld [de], a
    ldh a, [rP1]
    dec [hl]
    ld de, $00e8
    dec h
    ld de, $f8e8
    inc h
    ld de, $f880
    ld hl, sp+$3a
    ld [de], a
    ldh a, [rP1]
    dec hl
    ld de, $f8f0
    ld a, [hl+]
    ld de, $00f8
    ld b, l
    ld [de], a
    add sp, $00
    dec h
    ld de, $f8e8
    inc h
    ld de, $e580
    push af
    ld l, $48
    ld h, $6d
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $7a58
    ld c, $12
    ld de, $9000
    call Call_000_31a0
    ld hl, $7ed9
    ld c, $12
    ld de, $9800
    call Call_000_31a0
    ld hl, $7ed9
    ld c, $12
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
    jr z, jr_01d_5754

    xor a
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld hl, $57be
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$c0a3], a
    ld [$c0a4], a
    ld [$c0a5], a
    jr jr_01d_576e

jr_01d_5754:
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld hl, $57b2
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$c0a3], a
    ld [$c0a4], a
    ld [$c0a5], a

jr_01d_576e:
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [wTextID], a
    ld a, $01
    ld [wFreezePlayerInTextWindowOrInTown], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld hl, wShadowOAM
    ld bc, $00a0
    call ZeroOutHL
    ld a, $4d
    call Call_000_25c5
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_01d_4113
    ret


    ld b, e
    ld e, b
    or h
    ld l, h
    ld l, h
    ld l, h
    jr c, jr_01d_5812

    add hl, sp
    ld b, e
    cp d
    ld d, a
    adc h
    ld e, b
    ld a, e
    ld e, b
    sub d
    ld e, b
    adc h
    ld e, b
    ld b, e
    ld e, b
    ld bc, $6c6c
    ld l, h
    ld a, e
    ld e, b
    and d
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    or d
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    jp nz, $8c58

    ld e, b
    ld a, e
    ld e, b
    jp nc, $8c58

    ld e, b
    ld a, e
    ld e, b
    ldh [c], a
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    ldh a, [c]
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    ld [bc], a
    ld e, c
    adc h
    ld e, b
    ld a, e
    ld e, b
    ld [de], a
    ld e, c
    adc h
    ld e, b
    ld b, e
    ld e, b
    or h
    ld l, h
    ld l, h
    ld l, h
    ld a, e
    ld e, b
    ld [bc], a
    ld e, c
    adc h
    ld e, b
    ld a, e
    ld e, b
    ldh a, [c]
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    ldh [c], a
    ld e, b

jr_01d_5812:
    adc h
    ld e, b
    ld a, e
    ld e, b
    jp nc, $8c58

    ld e, b
    ld a, e
    ld e, b
    jp nz, $8c58

    ld e, b
    ld a, e
    ld e, b
    or d
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    and d
    ld e, b
    adc h
    ld e, b
    ld a, e
    ld e, b
    sub d
    ld e, b
    adc h
    ld e, b
    jr c, jr_01d_588c

    add hl, sp
    ld b, e
    inc [hl]
    ld e, b
    ld a, $10
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
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
    call Call_01d_434b
    pop hl
    ld a, [$cd64]
    jr nz, jr_01d_5867

    inc a
    ld [$cd64], a

jr_01d_5867:
    ld a, [$cd65]
    inc a
    cp e
    jr nz, jr_01d_5874

    xor a
    ld [$cd65], a
    pop bc
    ret


jr_01d_5874:
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


jr_01d_588c:
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
    ld [bc], a
    rst $10
    ld bc, $7f01
    stop
    ld a, e
    stop
    ld h, e
    ld h, e
    ld [hl], a
    ld a, a
    ld a, a
    rst $38
    stop
    ld [bc], a
    ld [bc], a
    cp $10
    nop
    db $fd
    or $10
    nop
    add $c6
    cp $fe
    db $fd
    db $fd
    ld e, a
    rst $38
    rst $38
    inc b
    inc b
    db $fd
    stop
    db $ed
    stop
    rst $38
    adc l
    adc l
    dec de
    dec de
    ei
    ei
    rst $38
    rst $38
    rst $10
    ld [$fb08], sp
    stop
    db $db
    stop
    or a
    or a
    rst $38
    ld [hl], $36
    rst $30
    rst $30
    rst $38
    rst $38
    db $10
    db $10
    db $dd
    rst $30
    stop
    or a
    or a
    ld l, a
    stop
    ld l, h
    ld l, h
    ld a, a
    rst $28
    rst $28
    rst $38
    rst $38
    jr nz, jr_01d_599e

    rst $28
    stop
    rst $30
    rst $18
    rst $18
    sbc $10
    nop
    ret c

    ret c

    rst $18
    rst $18
    ld a, a
    rst $38
    rst $38
    ld b, b
    ld b, b
    rst $18
    rst $18
    cp a
    stop
    db $fd

jr_01d_5996:
    cp l
    stop
    or c
    or c
    cp a
    cp a
    rst $38

jr_01d_599e:
    rst $38
    ei
    add b
    add b
    dec c
    ld [$0000], sp
    cp $00
    ld a, h
    ld [$0020], a
    jr c, jr_01d_59ce

    nop
    db $10
    jr nz, jr_01d_59b2

jr_01d_59b2:
    nop
    nop
    add b
    xor a
    nop
    ldh [rP1], a
    ld hl, sp+$60
    ld bc, $80f8
    nop
    add b
    cp $43
    dec bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld e, l
    rra
    ld h, [hl]
    inc c

jr_01d_59ce:
    add b
    nop
    ret nz

    ld h, b
    ld [bc], a
    ldh a, [rLY]
    dec c
    ld d, l
    rra
    ret nz

    ld bc, $4007
    ld [bc], a
    ld bc, $0e44
    ldh a, [rNR41]
    inc b
    ld sp, hl
    ret nz

    call nz, $0d03
    db $10
    ccf
    nop
    ld b, b
    nop
    add b
    ccf
    ccf
    add b
    ccf
    adc a
    jr nc, @-$76

    ld [hl+], a
    nop
    db $10
    ld [$00cf], sp
    nop
    rst $38
    nop
    sub c
    ld [$1202], sp
    db $fc
    nop
    rst $38
    ld [bc], a
    nop
    ld bc, $01fe
    cp $f1
    ld b, $f9
    ld de, $0022
    ld h, e
    ld [bc], a
    adc a
    jr nc, jr_01d_5996

    jr nc, @-$7e

    adc a
    ccf
    ld b, b
    ccf
    ccf
    ld h, h
    inc d
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    pop af
    rst $38
    ld b, $01
    ld c, $01
    cp $02
    db $fc
    db $fc
    pop hl
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop
    ccf
    ret nz

    ld b, b
    dec a
    add b
    add hl, bc
    ld [$03fc], sp
    ld [bc], a
    ld bc, $070f
    inc b
    rlca
    rst $30
    cp a
    ccf
    ret nz

    ld a, [bc]
    ld b, $fd
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    adc b
    add a
    cp a
    add b
    sub b
    adc a
    and b
    rst $38
    sbc a
    adc d
    add c
    ldh a, [$ff89]
    and d
    ret c

    cp $ff
    rst $38
    ld bc, $f9fe
    ld b, $05
    cp $05
    rst $30
    cp $45
    ld a, $21
    nop
    and e
    ret c

    and d
    reti


    rst $38
    and h
    db $db
    and b
    rst $18
    and b
    rst $18
    sbc a
    rst $38
    rst $28
    add b
    rst $38
    ld a, a
    add b
    ld h, b
    ld bc, $9302
    ld c, b
    rst $38
    inc de
    ret z

    inc de
    ret z

    push bc
    jp nz, $c639

    inc bc
    rst $38
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
    rst $28
    ldh [rIE], a
    nop
    ld sp, hl
    and e
    ld bc, rWave_f
    rrca
    ld a, a
    rst $38
    rlca
    sbc a
    ld bc, $0097
    res 5, e
    ld [bc], a
    push hl
    ld a, a
    sbc b
    inc bc
    db $fc
    ld bc, $8203
    nop
    ldh a, [rIE]
    ret nz

    rst $38
    cp $00
    ld sp, hl
    nop
    rst $00
    nop
    cp $00
    rst $38
    push af
    rlca
    rst $38
    nop
    cp a
    nop
    dec l
    nop
    rst $38
    ld d, [hl]
    nop
    ld l, $00
    ld d, a
    nop
    xor e
    nop
    ld sp, hl
    ld d, l
    pop bc
    inc b
    ld d, b
    ld [$007f], sp
    xor d
    nop
    ld d, l
    ldh a, [c]
    ld b, b
    nop
    ldh [$ffe2], a
    ld [bc], a
    ld d, e
    add hl, bc
    ld a, $00
    add a
    nop
    ei
    rst $38
    ld a, b
    ld de, $fd0a
    nop
    ld [$d500], a
    xor d
    add b
    inc bc
    rst $28
    ret nz

    inc bc
    rst $10
    ld h, b
    inc bc
    ld e, a
    ld b, b
    inc b
    db $eb
    xor [hl]
    jr nz, jr_01d_5b0f

    and d

jr_01d_5b0f:
    nop
    ld d, b
    and b
    ld bc, $c0bd
    ld bc, $fefc
    and d
    ld bc, $0062
    ld de, $ff1f
    inc bc
    ld e, a
    cp e
    nop
    and e
    nop
    dec b
    rst $38
    nop
    ld hl, sp+$60
    ld bc, $fe5f
    ld h, e
    add hl, bc
    rrca
    rst $38
    ld bc, $005f
    xor c
    nop
    cp l
    ld h, [hl]
    ld sp, hl
    dec c
    ccf
    rst $38
    rlca
    ccf
    ldh a, [$ff0e]
    nop
    ei
    ld d, b
    xor a
    ld d, c
    db $10
    push de
    ld a, [hl+]
    rst $38
    nop
    ld d, h
    rst $38
    ld d, e
    sub [hl]
    sub c
    rst $38
    nop
    ld d, d
    xor l
    ld bc, $feff
    nop
    rst $38
    or c
    ld c, [hl]
    rst $38
    nop
    ld d, c
    ccf
    sub c
    ld l, d
    xor d
    push hl
    rst $38
    ld a, [$0ca0]
    rlca
    ld de, $57ff
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    jr z, @+$01

    dec d
    sub h
    ldh [rNR10], a
    ldh a, [rLCDC]
    ld c, $fe
    and b
    ld de, $0b26
    ret nc

    inc d
    ld e, l
    rlca
    and b
    ld de, $ff0f
    rra
    nop
    ld [de], a
    ld b, $f4
    inc d
    xor $a1
    inc de
    push hl
    rst $38
    add d
    jp nz, $3f01

    rst $38
    adc d
    cp [hl]
    ldh [$ff03], a
    xor d
    rst $38
    ld d, c
    rst $38
    adc a
    jp z, $fe12

    cp $16
    rla
    ret nc

    rst $38
    ld [$d5ff], a
    rst $38
    and b
    ld l, $68
    inc d
    nop
    rst $38
    ld d, b
    ld d, b
    ld a, [de]
    db $fc
    add e
    inc d
    cp $1a
    add hl, bc
    ld bc, $0026
    or c
    inc e
    ld b, $98
    dec de
    and b
    db $10
    add b
    ld a, [bc]
    xor e
    inc e
    cp l
    cp a
    ld l, [hl]
    dec e
    rst $38
    nop
    db $e4
    dec de
    ld d, c
    jr nz, @-$54

    rst $38
    ld d, l
    rst $38
    nop
    rst $28
    add sp, -$44
    cp e

jr_01d_5bda:
    rst $38
    rst $30
    nop
    or e
    ld c, h
    ld h, b
    dec b
    cp $9e
    ld h, c
    rst $38
    rst $18
    nop
    ei
    dec sp
    ld l, [hl]
    xor [hl]
    rst $20
    inc e
    ldh a, [c]
    rst $38
    ld d, a
    push bc
    rst $38
    ld a, [hl+]
    add d
    jr nz, jr_01d_5bda

    ld h, b
    inc c
    ld d, h
    add b
    db $10
    ld d, a
    ld b, a
    rst $38
    sbc a
    nop
    ld [$e007], sp
    ld c, $3f
    ld b, h
    ld [hl+], a
    ld [hl], a
    cp $ff
    add b
    ldh [rNR31], a
    add b
    rst $38
    add e
    add b
    db $10
    call c, $0023
    pop hl
    db $10
    rrca
    rst $38
    add a
    jr nz, jr_01d_5c1d

    add e

jr_01d_5c1d:
    rst $38
    ld a, l
    pop bc
    jr nz, jr_01d_5c22

jr_01d_5c22:
    sub l
    rst $38
    ldh [c], a
    rst $38
    ld sp, hl
    ld [$a50f], sp
    ld a, a
    ld b, b
    add hl, bc
    ld a, a
    ld h, d
    nop
    ld b, e
    daa
    ld sp, hl
    nop
    ld [bc], a
    or l
    ld [$26e0], a
    db $fd
    ld b, d
    nop
    rst $30
    ret nz

    ld d, $a8
    rst $38
    ld d, e
    ld b, e
    rst $38
    xor a
    jr nz, jr_01d_5c5c

    jp $2925


    ld h, $63
    ld h, $fc
    and b
    add hl, hl
    sub a
    ld a, [$f5ff]
    nop
    ld a, [bc]
    push hl
    ret nz

    inc de
    inc bc
    rlca
    adc a

jr_01d_5c5c:
    inc de
    rst $38
    ld e, a
    ret nz

    add hl, bc
    ld b, c
    nop
    call nz, $1500
    add c
    ld bc, $0201
    xor c
    push af
    ret nz

    inc e
    ld h, e
    ld a, [hl+]
    ld a, a
    jr nz, @+$2e

    cp a
    ld b, d
    ld [bc], a
    db $fc
    db $fd
    ei
    ld hl, $fe00
    jp hl


    cp $f9
    db $fc
    ld e, e
    rst $38
    cp $a9
    ei
    inc b
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    cp [hl]
    ld a, a
    xor a
    rst $38
    dec sp
    xor a
    rst $38
    inc d
    cp a
    ld b, b
    ld c, e

jr_01d_5c99:
    jr nc, jr_01d_5c99

    ret nz

    add hl, de
    jp z, Jump_01d_402a

    inc c
    xor d

jr_01d_5ca2:
    ld b, b
    jr nz, jr_01d_5ccf

    add b
    jr nz, jr_01d_5ca2

    add d
    inc b
    pop bc
    inc b
    inc d
    ld b, c
    inc c
    add c
    inc c
    ld sp, hl
    nop
    inc hl
    db $fd
    ldh a, [rWave_3]
    ld b, c
    nop
    ld h, c
    inc [hl]
    dec b
    ld c, a
    ret nz

    dec bc
    rst $30
    ld a, [$a534]
    ld bc, $00e5
    pop bc
    rra
    rlca
    jr nz, @+$01

    rst $38
    add c
    add c
    ld a, [hl]

jr_01d_5ccf:
    rst $38
    nop
    add a
    ld a, b
    rst $38
    add c
    ld a, [hl]
    pop bc
    ld a, $81
    ld a, [hl]
    xor l
    ld d, d
    cp $03
    ld bc, $7e81
    jp $813c


    ld a, [hl]
    db $d3
    rst $38
    inc l
    db $d3
    inc l
    push hl
    ld a, [de]
    add c
    ld a, [hl]
    push bc
    rst $38
    ld a, [hl-]
    sub l
    ld l, d
    pop de
    ld l, $81
    ld a, [hl]
    set 7, a
    inc [hl]
    swap h
    cp a
    ld b, b
    ldh [$ff1f], a
    push de
    db $dd
    ld a, [hl+]
    inc hl
    nop
    jp z, $c035

    ret nc

    inc [hl]
    nop
    rst $38
    rst $38
    ld [hl], h
    adc e
    ld b, h
    cp e
    ld h, h
    sbc e
    ld b, h
    cp e
    ei
    ld [hl], a
    adc b
    ld bc, $012e
    cp $01
    cp $af
    db $fd
    ld d, b
    ld h, c
    nop
    rla
    add sp, $01
    cp $8b
    ld [hl], h
    cp a
    and e
    ld e, h
    xor c
    ld d, [hl]
    xor e
    ld d, h
    pop hl
    dec b
    sub e
    rst $18
    ld l, h
    push de
    ld a, [hl+]
    ei
    ei
    inc b
    ld a, $fe
    ld e, l
    rst $28
    ld e, l
    xor d
    xor d
    ld b, b
    nop
    rrca
    ld a, a
    ld a, a
    rst $30
    rst $38
    rst $30
    xor l
    xor l
    rst $10
    rst $10
    ld d, [hl]
    ld d, [hl]
    adc b
    rst $30
    adc b
    dec b
    dec b
    and c
    ld b, b
    db $ec
    db $ec
    sub $d6
    rst $08
    add hl, bc
    add hl, bc
    ld d, h
    ld d, h
    ld [bc], a
    ld b, e
    or d
    ld b, c
    sbc e
    sbc e
    rst $38
    dec hl
    dec hl
    ld d, $16
    nop
    nop
    dec b
    dec b
    rst $38
    ld b, b
    ld b, b
    ldh [$ffe0], a
    ei
    ld e, e
    rst $28
    rst $28
    ei
    rst $38
    db $db
    ld [hl], d
    rrca
    ei
    ld bc, $0300
    nop
    rst $38
    add e
    add b
    ld b, d
    ld b, c
    di
    or b
    cp $ed
    cp $90
    inc e
    ld d, h
    call c, $3200
    call z, $00ff
    rst $38
    inc hl
    call c, $cd32
    ld [hl+], a
    db $dd
    or e
    ld c, h
    ei
    ei
    sub a
    ld b, c
    ld b, a
    or $00
    ld e, c
    and [hl]
    xor b
    ccf
    ld d, a
    ld [$b6f7], sp
    ld c, c
    add hl, bc
    ldh a, [$ff0a]
    ld h, c
    inc b
    rst $30
    rla
    rla
    ccf
    ld sp, $7d24
    rst $38
    ld [hl], $1d
    ld a, a
    dec e
    xor a
    xor [hl]
    ld a, a
    ld d, a
    rst $28
    db $eb
    jr nz, @+$4a

    db $fd
    sub $60
    ld c, b
    ld e, d
    ret nz

    ccf
    call z, $d133
    db $fd
    ld l, $21
    nop
    call z, $c033
    ccf
    cp a
    ld b, b
    cp a
    nop
    rst $38
    adc d
    ld [hl], l
    ld d, l
    xor d
    ld hl, $9500
    db $fd
    ld l, d
    db $e3
    dec c
    ld [hl], l
    adc d
    ld b, l
    cp d
    ld h, l
    sbc d
    rst $38
    ld b, c
    cp [hl]
    ld [hl], l
    adc d
    ld bc, $fffe
    ld bc, $c3ff
    inc a
    push de
    ld a, [hl+]
    push bc
    ld a, [hl-]
    pop bc
    ld a, $ff
    push de
    ld a, [hl+]

jr_01d_5e03:
    rst $10
    jr z, jr_01d_5e03

    ld [bc], a
    cp h
    ld b, a
    rst $38
    ld c, b
    or a
    dec [hl]
    jp z, Jump_01d_48b7

    xor a
    ld d, c
    rst $38
    ld d, [hl]
    xor d
    cp h
    ld b, h
    ld hl, sp+$08
    ret nc

    db $10
    rst $18
    jp c, $bd3a

    ld a, l
    ld [hl], a
    nop
    ld c, $72
    ld [hl], d
    rst $38
    dec l
    dec l
    ret nz

    ret nz

    ld [hl-], a
    ld [hl-], a
    and b
    and b
    rst $38
    ld h, l
    ld h, l
    db $d3
    db $d3
    ld l, a
    ld l, a
    push hl
    push hl
    cp $43
    ld c, a
    and b
    and b
    ld b, c
    ld b, c
    ld a, [hl+]
    ld a, [hl+]
    rst $10
    rst $28
    rst $10
    ld l, l
    ld l, l
    rst $30
    ld [hl], d
    dec de
    nop
    nop
    dec h
    rst $38
    dec h
    ld c, d
    ld c, d
    or h
    or h
    ld l, a
    ld l, a
    cp e
    db $fd
    cp e
    ld h, c
    ld d, c
    ld [bc], a
    ld [bc], a
    ld d, l
    ld d, l
    ld hl, $ef21
    sub $d6
    dec hl
    dec hl
    inc h
    dec [hl]
    cp a
    ld l, l
    ld l, l
    rst $38
    cp b
    cp b
    jp nc, $bdd2

    cp l
    ld c, e
    ld c, e
    rst $38
    call nz, $90c4
    sub b
    cp l
    cp l
    ld d, [hl]
    ld d, [hl]
    rst $38
    db $eb
    db $eb
    sbc l
    sbc l
    ld [$55ea], a
    ld d, l
    rst $38
    adc [hl]
    adc [hl]
    jr nz, @+$22

    ld b, b
    ld a, a
    jp hl


    or $ff
    cp a
    cp h
    rst $18
    sbc $bf
    cp a
    ld e, a
    ld e, a
    rst $28
    or a
    or a
    dec c
    dec c
    ldh [rWave_c], a
    xor a
    dec h
    jp c, $d4ff

    dec hl
    ld [$ff15], a
    add b
    db $fd
    ld [$ffff], a
    ld hl, sp-$3d
    inc a
    add l
    ld a, d
    pop bc
    ld a, $db
    sub e
    ld l, h
    pop hl
    ld a, [bc]
    rst $38
    inc c
    dec d
    ld a, [hl-]
    db $ed
    db $ed
    rst $28
    ei
    ei
    ld d, h
    ld d, h
    dec b
    jr jr_01d_5f43

    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, [hl-]
    ld a, [hl-]
    ld d, l
    ld d, l
    ld [bc], a
    ld [bc], a
    ret nz

    inc de
    rst $38
    or $fd
    db $fd
    ld [$aeea], a
    xor [hl]
    and l
    rst $38
    and l
    ld d, d
    ld d, d
    add b
    add b
    nop
    nop
    ld c, d
    rst $38
    ld c, d
    inc e
    inc e
    ret nz

    ret nz

    ld de, $8411
    rst $30
    add h
    cpl
    cpl
    ld bc, $0501
    dec b
    sbc d
    sbc d
    rst $38
    ld h, b
    ld h, b
    ld b, $06
    ld h, b
    ld h, b
    db $10
    db $10
    cp $01
    ld e, [hl]
    ld h, d
    ld h, d
    rla
    rla
    ret nz

    ret nz

    add hl, de
    rst $30
    add hl, de
    pop bc
    pop bc
    inc bc
    ld bc, $bdbd
    ld l, e
    ld l, e
    rst $38
    sbc $de
    push af
    push af
    xor d
    xor d
    add l
    add l
    rst $38
    jr nz, jr_01d_5f3e

    nop
    nop
    ld [hl], a
    ld [hl], a
    db $dd
    db $dd
    rst $38
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld b, h
    ld b, h
    rst $38
    ld de, $0011
    nop
    cp d
    cp d
    db $ed
    db $ed
    cp a
    cp a
    cp a
    ld a, a
    ld a, a
    xor a
    xor a
    inc bc

jr_01d_5f3e:
    ld e, $aa
    rst $20
    xor d
    rst $10

jr_01d_5f43:
    rst $10
    inc bc
    ld [hl+], a
    ld b, c
    ld [bc], a
    ld b, b
    ld b, b
    add b
    sbc a
    add b
    jr nz, jr_01d_5f6f

    jp c, Jump_01d_61da

    inc bc
    ld b, e
    ld h, d
    nop
    scf
    nop
    ld [$c108], sp
    ld [$dbdb], sp
    ld b, b
    jr nz, jr_01d_5f63

    inc de
    ld a, a

jr_01d_5f63:
    ld c, b
    ld c, b
    ld [bc], a
    ld [bc], a
    xor c
    xor c
    sub $e1
    dec de
    cp $70
    ld h, h

jr_01d_5f6f:
    ret nz

    ret nz

    dec b
    dec b
    xor e
    xor e
    inc a
    db $fd
    inc a
    db $e3
    ld bc, $ffff
    add b
    add b
    dec h
    dec h
    cp a
    jp c, $adda

    xor l
    or a
    or a
    ld c, a
    ld h, [hl]
    cp $3c
    stop
    ld h, c
    ld bc, $f0f0
    ret nz

    ret nz

    pop bc
    dec c
    dec b
    daa
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    db $fd
    inc bc
    stop
    add b
    add b
    ret nz

    ret nz

    ldh a, [$fff0]
    ld a, $c7
    inc bc
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, b
    ld h, a
    cpl
    ld l, [hl]
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
    ld [hl+], a
    dec bc
    ld a, b
    db $fc
    ld d, $00
    db $e3
    rrca
    dec c
    ld a, d
    ld bc, $0016
    pop hl
    rrca
    inc bc
    rlca
    rlca
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

Jump_01d_6001:
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

Call_01d_6048:
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
    jr nz, jr_01d_60da

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

jr_01d_60da:
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

jr_01d_60f5:
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

jr_01d_6113:
    scf
    cp $fe
    db $fc
    stop
    cp $fe
    rlca
    dec b
    ld b, e
    jr nz, jr_01d_6113

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
    jr nz, jr_01d_6185

    ld d, a
    add e
    inc e
    add l
    jr jr_01d_60f5

    pop bc
    pop hl
    rrca
    inc bc
    jp z, Jump_01d_67ca

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

jr_01d_6185:
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
    jr c, jr_01d_61cb

    inc a
    ld bc, $550f
    ld d, l

jr_01d_61cb:
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

Jump_01d_61da:
    xor a
    ld d, a
    ld d, a
    ld h, a
    dec [hl]
    add e
    dec l
    jp $0b32


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
    jr nz, jr_01d_6259

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
    jr z, jr_01d_625c

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

jr_01d_6259:
    dec b
    dec h
    add hl, sp

jr_01d_625c:
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
    call z, Call_01d_4a41
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
    stop
    jr c, jr_01d_62c5

jr_01d_62c5:
    ld a, h
    nop
    cp $fe
    jr nz, jr_01d_62cb

jr_01d_62cb:
    nop
    nop
    ld [$1c00], sp
    nop
    ld a, $4f
    nop
    ld a, a
    nop
    rst $38
    ld [hl+], a
    nop
    ld b, a
    ld [bc], a
    add b
    ld [hl+], a
    nop
    rst $38
    nop
    inc b
    nop
    ld c, $00
    rra
    nop
    ccf
    ld a, $1c
    ld [bc], a
    add b
    nop
    ret nz

    nop
    ldh [rNR43], a
    nop
    rrca
    ld [bc], a
    cp $0a
    ld [bc], a
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rst $38
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    cp $10
    ld b, $80
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [rWave_f]
    ldh a, [$fff8]
    ld hl, sp-$04
    db $fc
    cp $11
    ld [$001f], sp
    ld b, b
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
    ld b, d
    rrca
    ld a, h
    ldh [rIF], a
    add hl, hl
    db $10
    and h
    db $10
    ld h, c
    rrca
    ld a, a
    nop
    db $10
    inc e
    add b
    db $10
    ld h, l
    rrca
    ld d, h
    cp d
    ld [de], a
    ld [hl], e
    ld de, $207f
    ld c, $1f
    and b
    ld c, $04
    ld h, h
    rrca
    ld b, c
    ret nz

    halt
    ld [bc], a
    ld [hl], e
    inc de
    ld b, a
    ld [bc], a
    ld h, e
    ld de, $0246
    rst $38
    inc e
    nop
    ld bc, $1cfe
    nop
    cpl
    ld a, [bc]
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
    cp d
    inc h
    ld b, c
    ld de, $001f
    rst $30
    inc de
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf

jr_01d_637c:
    ccf
    rra
    rra
    rrca
    rst $38
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $fe01
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [rIF], a
    ldh [$ffc0], a
    ret nz

    add b
    cp h
    ld d, $1f
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
    rla
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
    jr jr_01d_63d2

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
    jr z, jr_01d_637c

    ld bc, $0603
    add hl, hl
    ld a, [hl+]

jr_01d_63d2:
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

jr_01d_6407:
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


    jp c, $05a1

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
    jr nz, jr_01d_6407

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
    jp nc, Jump_01d_7100

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
    jr nz, jr_01d_6507

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
    jr nc, jr_01d_6527

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

jr_01d_6507:
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

jr_01d_6527:
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
    jp nc, Jump_01d_7100

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
    jr nz, jr_01d_6662

    cpl
    nop
    jr nz, jr_01d_6666

    ld c, l
    rst $38
    ld c, [hl]
    ld c, a

jr_01d_6649:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    jr nc, jr_01d_6649

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

jr_01d_6662:
    ld b, e
    nop
    cp $aa

jr_01d_6666:
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
    jr nc, jr_01d_667b

jr_01d_667b:
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
    jr nz, jr_01d_6717

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

jr_01d_6717:
    ld hl, $3fb1
    cp a

jr_01d_671b:
    ld b, b
    rst $38
    add b
    add b
    cp [hl]
    dec c
    ld [$0000], sp
    cp $00
    ld a, h
    jr nz, jr_01d_6729

jr_01d_6729:
    jr c, @-$04

    jr nz, jr_01d_672d

jr_01d_672d:
    db $10
    jr nz, jr_01d_6730

jr_01d_6730:
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

jr_01d_6743:
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

jr_01d_6754:
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
    jr nc, jr_01d_671b

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
    jr nc, jr_01d_6743

    jr nc, jr_01d_6754

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

Jump_01d_67ca:
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

Jump_01d_6800:
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
    jp Jump_01d_6001


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
    ld l, d
    inc b
    ld e, l
    rst $38
    ld h, $41
    ld a, $6d
    ld [de], a
    ld l, b
    rla
    nop
    rst $38
    nop
    jr jr_01d_686e

jr_01d_686e:
    jr z, jr_01d_6880

    ld d, b
    jr nz, @+$52

    ld a, a
    jr nz, jr_01d_689e

    db $10
    inc d
    ld [$04fa], sp
    ret


    ld bc, $78ff
    cpl

jr_01d_6880:
    ld a, $1d
    nop
    nop
    inc c
    nop
    rst $38
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    dec b
    ld [bc], a
    add l
    ld [bc], a
    rst $28
    ld h, l
    add d
    dec e
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    call nc, $08ff
    cp d
    ld c, h
    add d

jr_01d_689e:
    ld a, h
    jp c, $0024

    ld a, a
    nop
    inc bc
    nop

jr_01d_68a6:
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, c
    ld [bc], a
    rst $28
    ld a, [bc]
    inc b
    ld [hl], h
    ld [$0101], sp
    inc c
    inc bc
    db $10
    rst $38
    rrca
    db $10
    rrca
    inc de
    inc c
    ld [hl], h
    dec bc
    rst $38
    cp $00
    dec c
    ldh [rP1], a
    jr jr_01d_68a6

    inc b
    ld hl, sp+$04
    ld a, a
    ld hl, sp-$7e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    rrca
    ld [bc], a
    cp $0b
    ld [bc], a
    ld hl, sp+$3f
    cp h
    ld a, a
    ld e, d
    dec a
    ld a, $6f
    ld bc, $040b
    dec b
    jp nz, $0210

    db $fc
    inc hl
    nop
    rst $18
    inc h
    ret c

    call c, $d888
    ldh [rNR11], a
    ld e, e
    inc a
    rst $18
    ld a, $01
    ld d, $0b
    dec bc
    and [hl]
    ld [de], a
    inc c
    ldh a, [$ffdf]
    inc b
    ld hl, sp-$0a
    inc c
    inc c
    and [hl]
    inc de
    or b
    ld a, a
    cp $25
    inc b
    ld c, $05
    rlca
    ld bc, $0001
    ld c, $ff
    ldh a, [rTMA]
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ff60], a
    rst $08
    add b
    ld b, b
    add b
    add b
    ld h, b
    inc d
    ld b, c
    dec c
    ld e, $03
    sbc l
    ld b, $e0
    ld bc, $030f
    inc bc
    ld [bc], a
    ld b, $c1
    add hl, bc
    ld b, h
    cp a
    cp b
    db $ec
    db $10
    ld hl, sp+$30
    ld [hl], b
    ldh [rNR22], a
    ld e, $ef
    inc bc
    rra
    ld a, [bc]
    ld c, $a8
    jr jr_01d_6944

    db $fc
    ld b, h

jr_01d_6944:
    rst $38
    cp b
    call nz, $e238
    ld e, h
    ld [hl], d
    inc l
    inc a
    db $fd
    ld [$0dd0], sp
    nop
    pop de
    ld l, $f0
    ld e, a
    ld a, h
    rst $38
    dec sp
    jr c, @+$09

    dec bc
    inc b
    ld c, $04
    inc e
    rst $38
    ld [$0018], sp
    adc d

jr_01d_6965:
    ld [hl], b
    dec b
    ld a, [$ef03]
    cp $27
    jp c, $a4db

    dec de
    rst $38
    inc bc
    rst $38
    rst $38
    ld b, $ff
    ld d, $5f
    ld b, $0f
    inc bc
    dec de
    rst $38
    inc b
    inc a
    inc de
    ccf
    db $10
    cp $f0
    cp $ff
    or b
    cp $b4
    cp $b0
    ld sp, hl
    and $e6
    rst $18
    jr jr_01d_69af

    db $e4
    cp $04
    rlca
    ld [bc], a
    dec sp
    inc b
    adc a
    ld a, h
    inc sp
    ld a, a
    jr nc, jr_01d_69ad

    ld [bc], a
    rrca
    inc b
    dec b
    ld [bc], a
    rra
    rst $30
    and $ff
    ld b, $e1
    inc de
    ld de, $1a0e

jr_01d_69ad:
    dec b
    rst $38

jr_01d_69af:
    ccf
    nop
    ld a, a
    jr z, jr_01d_6a33

    ld [hl-], a
    ld a, a
    ld [hl-], a
    cp $e1
    dec d
    call nz, $2638
    ret c

    push hl
    ld a, [de]
    push af
    rst $18
    xor d
    db $fd
    and d
    rst $38
    or b
    inc bc
    ld d, $14
    rrca
    ld a, a
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    nop
    inc e
    cp $03
    jr jr_01d_6965

    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, $edf2
    inc l
    db $eb
    ld bc, $1a27
    db $eb
    ld bc, $f4fa
    ccf
    rst $38
    inc b
    ccf
    ld d, $1f
    inc b
    rra
    inc bc
    dec bc
    rst $38
    inc b
    inc c
    inc bc
    rra
    inc b
    ccf

jr_01d_69fa:
    jr jr_01d_69fa

    rst $38
    sub b
    cp $b4
    db $fc
    sub b
    db $fc
    ldh [$ffe4], a
    rst $38

jr_01d_6a06:
    jr @+$1a

    ldh [$fffc], a
    ld [$c4fe], sp
    daa
    db $fd
    ld a, [de]
    dec h
    ld [bc], a
    rra
    inc c
    ld e, $0d
    ccf
    db $10
    ei
    ld a, [$20f4]
    inc c
    sub h
    db $fc
    ldh a, [$fffc]
    ldh [$fff7], a
    ld [$1c14], a
    jr nz, jr_01d_6a2a

    ld a, a
    ld [hl+], a

jr_01d_6a2a:
    ld a, d
    dec [hl]
    rst $38
    jr c, jr_01d_6a36

    dec c
    ld [bc], a
    rra
    nop

jr_01d_6a33:
    ccf
    nop
    rst $38

jr_01d_6a36:
    ld h, $18
    inc e
    nop
    ld a, a
    and d

jr_01d_6a3c:
    cpl
    sub $ff
    ld c, $f0
    ret c

    jr nz, jr_01d_6ac0

    nop
    ld e, [hl]
    jr nz, jr_01d_6a06

    ld bc, $3f01
    ld [bc], a
    ld a, [bc]
    dec b
    ld [$0202], sp
    rra
    ld a, l
    nop
    add c
    ld d, $7c
    and b
    jr z, jr_01d_6a2a

    jr jr_01d_6a3c

jr_01d_6a5c:
    dec b
    ld e, a
    ld e, [hl]
    jr nz, @+$80

    nop
    inc a

jr_01d_6a63:
    ret nz

    jr z, @+$21

    nop
    ld [bc], a
    rst $38
    inc c
    inc bc
    inc de
    inc c
    dec a
    ld [bc], a
    ccf
    nop
    push af
    ld e, $c0
    daa
    ld a, [hl]
    nop
    ld [bc], a
    ld [$c8f0], sp
    jr nc, jr_01d_6a5c

    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_01d_6a63

    ld sp, $073f
    rst $28
    ccf
    rla
    ccf
    dec de
    jr nz, jr_01d_6a8d

jr_01d_6a8d:
    inc e
    ld e, $0d
    rst $28
    rra
    ld [$010f], sp
    nop
    inc d
    ld a, h
    db $fc
    ld [hl], b
    cp a
    cp $60
    pop af
    ld c, $0e
    ldh a, [rP1]
    ld d, $14
    add h
    rlca
    ld a, [bc]
    ld [hl+], a
    inc c
    ld [$0a00], sp
    inc h
    inc c
    inc bc
    ld a, [bc]
    db $eb
    ld bc, $fd3f
    ld de, $0e03
    db $f4
    add sp, -$04
    nop
    ld e, $ec
    rst $38
    cp $0c

jr_01d_6ac0:
    db $fc
    add b
    ccf
    jr @+$20

    ld bc, $077d
    and b
    ld hl, $0007
    rrca
    nop
    ld b, $e0
    jr c, @+$01

    inc a
    ret nz

    jr c, @-$0e

    ret nc

    ld h, b
    ld hl, sp+$00
    ei
    db $e4
    jr jr_01d_6ae2

    ld [$1f18], sp
    nop

jr_01d_6ae2:
    ld b, $01
    rst $38
    rrca
    rlca
    rlca
    nop
    dec bc
    inc b
    rla
    ld [$1ef5], sp
    nop
    dec sp
    ld bc, $0100
    ld [$1107], sp
    ld c, $ff
    dec d
    ld a, [bc]
    add hl, de
    rlca
    dec bc
    rlca
    nop
    nop
    rst $38
    ret nz

    nop
    jr nc, @-$3e

    ld [$44f0], sp
    cp b
    sbc a
    ld d, h
    xor b
    ret z

    ldh a, [$ffe8]
    ld sp, $0625
    scf
    ld h, a
    daa
    jr jr_01d_6b84

    inc de
    ld de, $273e
    scf
    call nc, $2531
    ld b, $39
    rst $08
    ld h, c
    ld e, $6f
    db $10
    cpl
    ld b, c
    xor e
    ld b, c
    dec bc

jr_01d_6b2c:
    dec b
    rst $18
    add hl, bc
    ld b, $08
    rlca
    dec e
    ld b, $16
    cp a
    ld d, d
    sbc a
    sbc a
    ld h, [hl]

jr_01d_6b3a:
    ld c, $f0
    call c, $1606
    ld b, b
    dec c
    jr jr_01d_6b3a

    ld a, $11
    rra
    ld b, $0a
    db $fc
    adc b
    ld a, [hl]
    adc h
    rst $38
    ld a, $c4
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    nop
    rst $38
    ld c, h
    jr nc, jr_01d_6b95

    nop
    ld e, $01
    ld c, $07
    cp a
    dec b
    inc bc
    rrca
    nop
    inc de
    inc c
    inc bc
    jr jr_01d_6bd8

    rst $38
    add b
    jr nc, jr_01d_6b2c

    ldh a, [$ff60]
    ldh [rP1], a
    ldh a, [$fff2]
    nop
    ld [bc], a
    jr nc, @+$01

    ld b, $ae
    ld c, c
    ld l, b
    ldh a, [$ffd2]
    ldh [rIE], a
    db $ed
    ld [de], a
    ld a, [bc]
    db $f4
    ld d, h
    xor b

jr_01d_6b84:
    sub h
    ld l, b
    rst $18
    add sp, $50
    ld [hl], b
    nop
    dec bc
    ldh [rDIV], a
    dec bc
    inc b
    rst $38
    jr jr_01d_6b9a

    dec d
    ld a, [bc]

jr_01d_6b95:
    inc d
    dec bc
    dec bc
    dec b
    db $fd

jr_01d_6b9a:
    rlca
    nop
    ld [bc], a
    ret nc

    ldh [$ffee], a
    db $10

jr_01d_6ba1:
    add hl, bc
    or $7d
    ld d, [hl]
    inc b
    ld [bc], a
    ld a, d
    dec l
    ld a, $1d
    rra
    jr nz, jr_01d_6bf0

    ei
    ld c, $04
    ld b, e
    ld a, [hl-]
    ld a, [hl-]
    call nz, $f40a
    inc b
    ld a, a
    ld hl, sp-$3c
    jr c, jr_01d_6ba1

    ld e, b
    ld hl, sp+$20
    ld bc, $0b37
    ld a, h
    dec hl
    nop
    add hl, sp
    ld bc, $0207
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

jr_01d_6bd8:
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

jr_01d_6bf0:
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
    add hl, de
    nop
    ld l, b
    ld bc, $e059
    rra
    nop
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
    jr nz, jr_01d_6c9a

    ld [hl+], a
    inc hl
    rst $20
    inc h
    dec h
    ld h, $8f
    ld [bc], a
    add $08
    daa
    jr z, jr_01d_6caf

    rst $38
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01d_6cc0

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

jr_01d_6c9a:
    rst $38
    jr c, jr_01d_6cd6

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

jr_01d_6caf:
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

jr_01d_6cc0:
    add hl, de
    nop
    ei
    nop
    rst $18
    inc d
    jp nc, Jump_01d_6800

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

jr_01d_6cd6:
    ld sp, hl
    rst $38
    ldh [$ffe0], a
    or $18
    jr z, jr_01d_6d0c

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

jr_01d_6d0c:
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
    jp nc, Jump_01d_6800

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

jr_01d_6d2b:
    nop
    ld hl, sp-$0f

jr_01d_6d2e:
    cp $1c
    nop
    ld sp, hl
    ldh [$ffe0], a
    or $16
    ld hl, $bf22
    inc e
    ld hl, $1def
    jr z, jr_01d_6d2e

    inc d
    nop
    rst $30
    db $fc
    ld b, b
    ld bc, $00c4
    ld [hl-], a
    jr z, jr_01d_6d78

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

    jr nz, jr_01d_6d2b

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

jr_01d_6d78:
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
    jr nc, jr_01d_6dd0

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

jr_01d_6dd0:
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
    jp nc, $ff00

    rst $38
    ld [bc], a
    ld [bc], a
    cp $fe
    cp $fe
    or $f6
    or $f6
    add $c6
    cp $fe
    db $fd
    db $fd
    rst $38
    rst $38
    inc b
    inc b
    db $fd
    db $fd
    db $fd
    db $fd
    db $ed
    db $ed
    db $ed
    db $ed
    adc l
    adc l
    dec de
    dec de
    ei
    ei
    rst $38
    rst $38
    ld [$fb08], sp
    ei
    ei
    ei
    db $db
    db $db
    db $db
    db $db
    or a
    or a
    ld [hl], $36
    rst $30
    rst $30
    rst $38
    rst $38
    db $10
    db $10
    rst $30
    rst $30
    rst $30
    rst $30
    or a
    or a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, h
    ld l, h
    rst $28
    rst $28
    rst $38
    rst $38
    jr nz, jr_01d_6e6c

    rst $28
    rst $28
    rst $28
    rst $28
    rst $18
    rst $18
    sbc $de
    sbc $de
    ret c

    ret c

    rst $18
    rst $18
    rst $38
    rst $38
    ld b, b
    ld b, b
    rst $18
    rst $18
    cp a
    cp a
    cp a
    cp a
    cp l
    cp l
    cp l
    cp l
    or c
    or c
    cp a
    cp a

jr_01d_6e6c:
    rst $38
    rst $38
    add b
    add b
    ld bc, $7f01
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    rst $38
    rst $38
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $2c
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $742c
    ld c, $0f
    ld de, $8800
    call Call_000_31a0
    ld hl, $7860
    ld c, $03
    ld de, $9000
    call Call_000_31a0
    ld hl, $5a33
    ld c, $0d
    ld de, $8000
    call Call_000_31a0
    ld hl, $58cd
    ld c, $0d
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
    ld [wFreezePlayerWhenEnteringNewMap], a
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
    call Call_01d_726e
    call Call_01d_72a6
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $08
    call Call_000_25c8
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    ld a, $e9
    call InitializeTextIDAndDisplay
    ret


    call Call_000_2d67
    call Call_000_36f4
    call Call_01d_6f51
    call Call_000_0e54
    call Call_01d_7145
    ret


Call_01d_6f51:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_01d_6f68

    ldh a, [$ff8b]
    or a
    jp nz, Jump_01d_7126

    jr jr_01d_6f6f

jr_01d_6f68:
    ldh a, [$ff8b]
    cp $02
    jp z, Jump_01d_7126

jr_01d_6f6f:
    ld a, [$cc17]
    ld b, a
    ld a, [$cc16]
    or b
    ret nz

    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$ccbf]
    rst $00
    and l
    ld l, a
    xor c
    ld l, a
    or a
    ld l, a
    jp z, $e26f

    ld l, a
    rst $38
    ld l, a
    ld [de], a
    ld [hl], b
    ld sp, $5870
    ld [hl], b
    ld [hl], e
    ld [hl], b
    and a
    ld [hl], b
    pop de
    ld [hl], b
    ld hl, sp+$70
    ld b, $71
    dec e
    ld [hl], c
    call Call_01d_713d
    ret


    ld a, $0b
    call RST_TableJumpBankSwitch
    ld a, $64
    ld [wInputFreezeTimer], a
    call Call_01d_713d
    ret


    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $0d
    call Call_000_1887
    ld a, $1e
    ld [wInputFreezeTimer], a
    call Call_01d_713d
    ret


    ld a, $ea
    call InitializeTextIDAndDisplay
    ld a, $14
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ld a, $32
    ld [wInputFreezeTimer], a
    call Call_01d_713d
    ret


    ld a, $23
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $23
    ld [$cb4a], a
    ld a, $03
    call RST_TableJumpBankSwitch
    call Call_01d_713d
    ret


    ld a, $30
    ld [wInputFreezeTimer], a
    ld a, $0d
    call Call_000_1887
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_01d_713d
    ret


    ld a, [$c60b]
    cp $56
    jr z, jr_01d_702d

    inc a
    ld [$c60b], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, $0c
    call Call_000_1887
    ret


jr_01d_702d:
    call Call_01d_713d
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $23
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    call Call_01d_713d
    ret


    ld a, [$c60b]
    cp $24
    jr z, jr_01d_706f

    dec a
    dec a
    ld [$c60b], a
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_01d_706f:
    call Call_01d_713d
    ret


    ld a, [$c60a]
    cp $b0
    jr z, jr_01d_708a

    inc a
    inc a
    ld [$c60a], a
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_01d_708a:
    ld a, $19
    call $16d1
    ld a, $20
    ld [$cb4a], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $eb
    call InitializeTextIDAndDisplay
    call Call_01d_713d
    ret


    ld a, [$c60a]
    cp $58
    jr z, jr_01d_70be

    dec a
    dec a
    ld [$c60a], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $02
    call RST_TableJumpBankSwitch
    ret


jr_01d_70be:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [wInputFreezeTimer], a
    call Call_01d_713d
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    call Call_01d_713d
    ret


    call Call_01d_713d
    ld a, $3c
    ld [$cc27], a

Jump_01d_7100:
    ld a, $4e
    call InitializeTextIDAndDisplay
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $60
    ld [$cc27], a
    call Call_01d_713d
    ld a, $4f
    call InitializeTextIDAndDisplay
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

Jump_01d_7126:
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, [$ccc1]
    or a
    jr z, jr_01d_7137

    ld a, $29
    ld [$cb50], a
    ret


jr_01d_7137:
    ld a, $11
    ld [$cb50], a
    ret


Call_01d_713d:
    ld a, [$ccbf]
    inc a
    ld [$ccbf], a
    ret


Call_01d_7145:
    ld a, [$cc16]
    rst $00
    ld d, e
    ld [hl], c
    ld d, h
    ld [hl], c
    sub c
    ld [hl], c
    xor d
    ld [hl], c
    push hl
    ld [hl], c
    ret


    ld hl, $722e
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

jr_01d_716c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01d_716c

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_01d_7189

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    ret


jr_01d_7189:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $08
    jr nz, jr_01d_71a2

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    ret


jr_01d_71a2:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $724e
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

jr_01d_71c2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01d_71c2

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_01d_71dd

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_01d_71dd:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $7222
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

jr_01d_71fd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01d_71fd

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_01d_721a

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    ret


jr_01d_721a:
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
    nop
    sbc d
    ld b, c
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_01d_7266

jr_01d_7266:
    sbc d
    ld hl, $4d04
    ld c, [hl]
    ld c, a
    jr z, jr_01d_726e

Call_01d_726e:
jr_01d_726e:
    ld hl, $7285
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $7295
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
    jr nz, jr_01d_72c9

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
    jr c, jr_01d_72d1

    nop
    ld [bc], a
    nop
    nop
    ret


Call_01d_72a6:
    ld hl, vBGMap1
    ld de, $72b4
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

jr_01d_72c9:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_01d_72d1:
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
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $da
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $76c1
    ld c, $04
    ld de, $8800
    call Call_000_31a0
    ld hl, $70b1
    ld c, $04
    ld de, $9000
    call Call_000_31a0
    ld hl, $7b0c
    ld c, $04
    ld de, $8000
    call Call_000_31a0
    ld hl, $6f75
    ld c, $04
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
    ld [wFreezePlayerWhenEnteringNewMap], a
    xor a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ld [$c800], a
    ld [$cb5a], a
    ld [$cb5b], a
    ld [$cc1f], a
    ld [$ccc0], a
    ld [$cc27], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    call Call_01d_756a
    call Call_01d_75a2
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $02
    call Call_000_18d0
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $08
    call Call_000_25c8
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    ld a, $ec
    call InitializeTextIDAndDisplay
    ret


    call Call_000_2d67
    call Call_000_36f4
    call Call_01d_73ef
    call Call_000_0e54
    call Call_01d_7518
    ret


Call_01d_73ef:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_01d_7406

    ldh a, [$ff8b]
    or a
    jp nz, Jump_01d_74f4

    jr jr_01d_740d

jr_01d_7406:
    ldh a, [$ff8b]
    cp $02
    jp z, Jump_01d_74f4

jr_01d_740d:
    ld a, [$cc17]
    ld b, a
    ld a, [$cc16]
    or b
    ret nz

    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$ccc0]
    rst $00
    dec [hl]
    ld [hl], h
    ld a, $74
    ld h, h
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    xor d
    ld [hl], h
    cp l
    ld [hl], h
    call nc, $eb74
    ld [hl], h
    ld a, $b4
    ld [$cc27], a
    call Call_01d_7510
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
    ld [wInputFreezeTimer], a
    ld a, $35
    call Call_000_25ce
    call Call_01d_7510
    ret


    ld a, [$c60a]
    cp $60
    jr z, jr_01d_747a

    dec a
    ld [$c60a], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ret


jr_01d_747a:
    call Call_01d_7510
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ld a, $03
    call Call_000_18d0
    call Call_01d_7510
    ret


    ld a, $ed
    call InitializeTextIDAndDisplay
    ld a, $64
    ld [$cc27], a
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_01d_7510
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $64
    ld [$cc27], a
    ld a, $50
    call InitializeTextIDAndDisplay
    call Call_01d_7510
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    and a
    ret nz

    ld a, $64
    ld [$cc27], a
    ld a, $51
    call InitializeTextIDAndDisplay
    call Call_01d_7510
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

Jump_01d_74f4:
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, [$ccc1]
    or a
    jr z, jr_01d_750a

    ld a, $26
    ld [$cb50], a
    ld a, $02
    ld [$c90b], a
    ret


jr_01d_750a:
    ld a, $11
    ld [$cb50], a
    ret


Call_01d_7510:
    ld a, [$ccc0]
    inc a
    ld [$ccc0], a
    ret


Call_01d_7518:
    ld a, [$cc16]
    rst $00
    jr nz, jr_01d_7593

    ld hl, $c975
    ld hl, $755e
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

jr_01d_7539:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01d_7539

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_01d_7556

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    ret


jr_01d_7556:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    sbc b
    xor b
    ld [bc], a
    daa
    jr z, jr_01d_7564

jr_01d_7564:
    sbc b
    ret z

    ld [bc], a
    scf
    jr c, jr_01d_756a

Call_01d_756a:
jr_01d_756a:
    ld hl, $7581
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $7591
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

jr_01d_7593:
    rst $38
    nop
    nop
    ld [$0028], sp
    ld d, b
    nop
    jr z, jr_01d_75ed

    nop
    nop
    nop
    nop
    ret


Call_01d_75a2:
    ld hl, vBGMap1
    ld de, $75b0
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

jr_01d_75ed:
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
    jr jr_01d_7622

jr_01d_7622:
    inc e
    ld [$081c], sp
    inc a
    jr @+$01

    ld [$f500], sp
    nop
    adc a
    or b
    inc b
    dec de
    rst $38
    ld [$3107], sp
    ld e, $2d
    ld c, $22
    inc bc

jr_01d_763a:
    rst $38
    nop
    nop
    rst $38
    nop
    add h
    rlca
    add d
    inc bc
    rst $38
    add b
    nop
    nop
    add b
    add l
    add l
    ld a, [bc]
    rrca
    cp $41
    inc bc
    ldh [rP1], a
    inc e
    ldh [$ff8e], a
    db $f4
    inc e
    rst $38
    db $10
    jr z, jr_01d_763a

    inc c
    add sp, $2c
    ld [$ff2c], sp
    inc b
    ld h, b
    jr nz, @-$3e

    ld b, b
    add b
    nop
    ldh a, [rIE]
    ld [hl], b
    add e
    ld a, a
    ld b, b
    ccf
    ld h, b
    ld b, b
    ld h, c
    rst $38
    ld hl, $0101
    inc bc
    inc bc
    rlca
    rlca
    ld c, $ff
    ld c, $fa
    cp $37
    ei
    db $10
    rra
    jr nz, @-$0f

    ccf
    ld b, b
    ld a, a
    nop
    jr nz, jr_01d_768a

jr_01d_768a:
    ld b, e
    ld a, a
    inc h
    cp a
    inc a
    nop
    nop
    inc d
    ldh a, [rDIV]
    ld [hl+], a
    nop
    inc d
    rst $38
    ldh a, [rNR50]
    ldh [$ffcc], a
    ret z

    inc b
    ld [$f930], sp
    rrca
    ld [hl-], a
    dec b
    ld b, $09
    rrca
    rst $30
    rst $38
    rrca
    ld a, a
    rst $38
    rra
    ld a, a
    cpl
    ld a, a
    inc sp
    dec sp
    ld de, rWave_3
    ld bc, $0001
    add b
    add b
    ldh [$ffe0], a
    rst $38
    cp $10
    nop
    db $dd
    cp [hl]
    cp $80
    ret nz

    add b
    add b
    rst $38
    nop
    jr jr_01d_76db

    ld hl, sp-$10
    add sp, -$10
    ldh a, [$ffbf]
    ld h, b
    ldh a, [$ff60]
    ret nc

    ld h, b
    ld h, b
    inc b
    inc bc
    ccf
    rst $38

jr_01d_76db:
    rra
    ccf

jr_01d_76dd:
    rrca
    ccf
    rla
    rra
    rlca
    rra
    dec sp
    ld c, $0e
    ld b, $03
    ld e, l
    cp [hl]
    cp $02
    ld c, $03
    inc bc
    ld a, a
    add sp, $70
    cp b
    ld [hl], b
    ld e, b
    jr nc, jr_01d_7727

    ld [$9f06], sp
    rst $38
    ld h, e
    db $e3
    ld b, c
    pop bc
    nop
    db $10
    rlca
    ld b, $ff
    ld l, a
    ret nz

    ldh [$ffc0], a
    ret nz

    ld b, $06
    ret nc

    ldh [$ffe1], a
    nop
    ld a, [hl]
    add hl, bc
    ld [de], a
    jr @+$0a

    rra
    add hl, bc
    ccf
    ld d, $07
    ld [de], a
    rst $38
    ld bc, $7d0e
    ld c, [hl]
    ld a, d
    inc sp
    add hl, hl
    nop
    ld a, e
    add hl, hl
    nop
    add hl, bc

jr_01d_7727:
    db $10
    ld c, b
    nop
    ld c, c
    ld bc, $1009
    rst $38
    ld a, b
    nop
    stop
    jr nz, jr_01d_7735

jr_01d_7735:
    ld a, c
    nop
    rst $38
    ld [bc], a
    ld bc, $0106
    ld c, $05
    ld a, [de]
    add hl, bc
    cp $41
    rla
    ldh a, [rP1]
    inc c
    ldh a, [rSC]
    db $fc
    ld a, h
    rst $18
    add b
    sbc h
    jr jr_01d_76dd

    inc c
    ld b, c
    jr @+$13

    nop
    rst $38
    jr nc, jr_01d_7767

    jr nz, jr_01d_7759

jr_01d_7759:
    inc a
    nop
    inc hl
    nop
    db $fd
    ld b, h
    nop
    rla
    nop
    nop
    ld b, $04
    inc bc
    ld [bc], a

jr_01d_7767:
    rst $30
    inc bc
    ld [bc], a
    ld a, b
    ldh [rNR24], a
    add c
    ld bc, $0000
    rst $38
    ld b, b
    nop
    ld hl, sp+$40
    call nz, $9c80
    db $10
    rst $38
    ld a, [hl-]
    jr z, jr_01d_77f4

    ld [hl], h
    db $fc
    ret nz

    ld c, b
    rlca
    db $fd
    ld c, a
    nop
    rlca
    jr nc, jr_01d_7799

    inc a
    inc e
    rra
    rrca
    cp a
    rrca
    inc bc
    inc bc
    nop
    ld b, b
    add b
    ld h, c
    ld a, [bc]
    nop
    rst $38
    nop

jr_01d_7799:
    add hl, de
    add hl, de
    db $fc
    db $f4
    rst $38
    ei
    ei
    rst $38
    nop
    ld c, $0c
    add $c4
    ld a, h
    jr @+$3e

    adc a
    jr nz, @-$66

    sub b
    ldh a, [rP1]
    ld [de], a
    ld h, b

jr_01d_77b1:
    dec de
    and [hl]
    ld e, $30
    ld [hl+], a
    add b
    ld b, $22
    nop
    dec b
    and l
    rra
    ld h, e
    ld [$6236], sp
    add hl, bc
    daa
    ld [$63e0], sp
    add hl, bc
    dec h
    ld [$1810], sp
    ld b, b
    ld [hl+], a
    ld hl, $cc08
    adc b
    sbc h
    ld a, a
    db $10
    ld a, d
    ld c, b
    or $f4
    ld b, h
    inc bc
    inc hl
    ld [$387f], sp
    jr jr_01d_781f

    rra
    rra
    rlca
    rlca
    jr nz, jr_01d_77ec

    sbc $21
    ld [$1010], sp
    dec de

jr_01d_77ec:
    ld a, [bc]
    inc bc
    ld [$407c], sp
    rst $38
    ld c, $0c

jr_01d_77f4:
    and $a4
    inc a
    jr jr_01d_77b1

    and b
    and d
    add hl, bc
    ld [$0f01], sp
    db $10
    ld [$e710], sp
    jr z, jr_01d_7845

    ret nz

    db $10
    jr c, jr_01d_7848

    db $10
    jr z, jr_01d_780c

jr_01d_780c:
    jr z, jr_01d_780e

jr_01d_780e:
    dec hl
    ret nz

    db $10
    pop bc
    ld c, $7f
    ld b, $04
    inc hl
    ld [bc], a
    inc hl
    ld [bc], a
    jr nz, jr_01d_785c

    inc d
    db $fc
    and e

jr_01d_781f:
    ld b, $a0
    ld [$9280], sp
    nop
    and $c4
    sbc h
    db $ed
    sbc b
    and c
    ld b, $86
    add h
    ret


    db $10
    inc b
    inc bc
    rlca
    xor $e1
    inc d
    ld de, $0819
    jp nz, $0410

jr_01d_783c:
    ld d, c
    adc [hl]
    rst $38
    adc a
    nop
    ld a, h
    jr jr_01d_7860

    nop

jr_01d_7845:
    cp b
    or b
    cp h

jr_01d_7848:
    rl b
    push hl
    ld [$097a], sp
    or c
    jr nz, jr_01d_783c

    ld [$fd06], sp
    inc b
    db $eb
    ld [$40fc], sp
    cp b
    db $10
    xor b

jr_01d_785c:
    nop
    rst $38
    xor b
    nop

jr_01d_7860:
    db $eb
    ld b, b
    call nz, $cb03
    inc b
    rst $28
    ld b, l
    ld [bc], a
    ld h, d
    ld hl, $08e1
    inc hl
    ld bc, $f526
    ld b, $81
    rrca
    ld b, b
    nop
    add hl, hl
    or $b4
    add [hl]
    inc b
    rst $38
    ld c, $08
    ld a, $24
    and $84
    inc c
    ld [$1cdf], sp
    jr jr_01d_7900

    ld b, b
    ld sp, $19a6
    dec b
    ld [bc], a
    cp l
    ld b, $00
    inc l
    ld b, $06
    rrca
    ld c, $00
    inc l
    ld hl, sp-$01
    db $fd
    ld [bc], a
    ld d, l
    adc d
    ld c, c
    add [hl]
    add [hl]
    nop
    adc a
    jr nc, @+$22

    ldh [rP1], a
    add c
    inc l
    rra
    nop
    ret nz

    cpl
    nop
    db $fd
    scf
    jp c, $8030

    nop
    ld h, b
    add b
    ld e, a
    ccf
    rst $28
    cp a
    ld a, a
    rst $38
    ld e, l
    ld hl, $6300
    ld bc, $ffd0
    ld b, b
    ldh a, [rLCDC]
    ret nc

    ldh [$ffef], a
    ldh a, [$fff7]
    rst $18
    ei
    cp a
    ei
    rst $38
    cp e
    jr nz, jr_01d_78d3

jr_01d_78d3:
    rst $00
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    ret nz

    nop
    or [hl]
    ret nz

    rst $28
    rst $38
    or $f7
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$04
    rst $38
    ld hl, sp-$40
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ccf
    ccf
    di
    nop
    inc bc
    ret nz

    inc sp
    pop de
    ld e, $7f
    ld a, a
    cp a
    rst $38
    rst $38
    cp a
    ld a, a
    ld a, e

jr_01d_78ff:
    rst $38

jr_01d_7900:
    rst $38
    jr c, jr_01d_78ff

    sbc b
    rst $28
    and h
    nop
    jr jr_01d_7909

jr_01d_7909:
    ld b, c
    ld [bc], a
    db $f4
    ld hl, sp+$78
    ld a, a
    ldh a, [$fff8]
    ld [hl], b
    add sp, $70
    sub b
    nop
    ld hl, $f834
    and l
    rlca
    and e
    ld b, $a7
    rlca
    ret nc

    ldh [$ffee], a
    ldh a, [$fff5]
    db $ed
    ld a, [$42eb]
    add b
    nop
    and a
    ld [$40c0], sp
    jp Jump_01d_40e7


    ld a, l
    add hl, sp
    and a
    ld [$06a0], sp
    ld a, a
    rst $38
    rst $38
    ld e, a
    ld h, b
    add b
    sub $e0
    rst $38
    ldh [$ff08], a
    cp $c0
    ld [$01e6], sp
    add hl, bc

jr_01d_7948:
    dec a
    ld bc, $2d32
    ld b, $47
    rst $38
    rst $38
    rst $30
    cp $2a
    ccf
    db $f4
    ld hl, sp+$7a
    db $fc
    jp c, $3238

    pop af

jr_01d_795c:
    nop
    sbc h
    jr nz, jr_01d_79a6

    add hl, bc
    and a
    ld c, d
    add e
    nop
    ld l, l
    add e
    ei
    rst $10
    rst $28
    ld h, e
    ld c, e
    jr jr_01d_796e

jr_01d_796e:
    inc a
    jr @-$22

    rst $18
    jr c, jr_01d_795c

    ldh a, [$fffe]
    ldh a, [$ffeb]
    ld de, $40c0
    ei
    rst $28
    rst $30
    jp hl


    ld de, $7f7f
    push de
    db $ec
    db $fd
    cpl
    db $fc
    cp $fc
    db $fc
    ld b, c
    ld b, e
    ldh [rSCY], a
    dec a
    ldh [c], a
    ld de, $0aef
    rlca
    dec c
    ld b, $c1
    ld [hl+], a
    nop
    nop
    cp a
    rst $38
    rst $38
    cp l
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld b, e
    ld h, b

jr_01d_79a6:
    jr nz, jr_01d_7948

    inc d
    ldh [rWave_6], a
    rst $08
    add hl, de
    add sp, $52
    rra
    jp z, $e753

    stop
    ld [$1386], sp
    dec h
    ld a, [de]
    ld h, b
    add b
    pop de
    rst $28
    ldh [$ffee], a
    pop af
    push af
    ld h, $1a
    nop
    nop
    or $ad
    nop
    rst $20
    add hl, de
    db $fc
    ld hl, sp+$11
    ld h, $38
    add b
    ld d, a
    inc b

jr_01d_79d3:
    ld a, [$03c0]
    db $10
    pop bc
    jr nc, jr_01d_7a1a

    ret c

    ld b, b
    db $fc
    ld b, b
    ld a, a
    ld a, e
    daa
    ccf
    nop
    rlca
    ld [bc], a
    rlca
    ldh [$ff58], a
    ld a, h
    add d
    inc d
    jr nz, jr_01d_7a08

    cp a
    ld a, h
    ld a, l
    ldh [rNR42], a
    ret nz

    dec e
    adc $e1
    ld a, [de]
    ld hl, sp-$10
    ld l, b
    ldh [c], a
    dec bc
    inc hl
    ld a, [bc]
    nop
    nop
    rst $38
    inc sp
    nop
    ld a, [hl+]
    ld de, $1937
    ld [hl+], a

jr_01d_7a08:
    inc c
    rst $30
    jr nz, jr_01d_7a2b

    ld b, b
    inc b
    ld [de], a
    ret nz

    nop
    jr nz, jr_01d_79d3

    sbc a
    sbc [hl]
    ldh [rNR11], a
    xor $10
    inc b

jr_01d_7a1a:
    ld [de], a
    ld h, l
    ld bc, $fd30
    ret nz

    jr nz, @+$5b

    rra
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    adc l
    rst $38
    ld b, l
    ld h, b

jr_01d_7a2b:
    jr nz, @+$3b

    add hl, bc
    ld l, a
    jr nz, @+$0a

    rst $38
    rst $30
    ret z

    scf
    ld [$09f7], sp
    or $0a
    rst $38
    push af
    sub h
    db $eb
    ld h, h
    sbc e
    add h
    dec de
    ld [$f0ff], sp
    inc b
    ld hl, sp-$3e
    inc a
    ld [bc], a
    db $fc
    ld bc, $fe9d
    ld hl, $0900
    or $48
    add b
    ld b, d
    add c
    ld h, c
    rlca
    rst $28
    nop
    ld [$0807], sp
    nop
    ld a, $9c
    inc de
    ld [hl], h
    rst $38
    inc bc
    ld [bc], a
    ld bc, $000f
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    rrca
    ldh a, [$fff0]
    nop
    add hl, bc
    or $09
    rst $38
    or $72
    adc h
    add h
    ld a, b
    jr @-$1e

    ldh [rWave_c], a
    ld [bc], a
    ld h, h
    rrca
    inc b
    ld sp, $0600
    ld bc, $03c3
    ld bc, $ff66
    adc a
    nop
    db $fc
    inc bc
    nop
    rst $38
    inc bc
    db $fc
    ld a, l
    db $fc
    inc b
    ld h, a
    pop af
    ld c, $02
    db $fc
    inc c
    add b
    inc b
    db $fc
    ld h, $3f
    dec b
    ld a, [bc]
    ld b, h
    ld h, [hl]
    ld hl, $0738
    ld l, b
    db $fd
    daa
    dec b
    ld a, [bc]
    ld a, [$0705]
    ld hl, sp+$00
    rst $38
    ei
    ldh a, [rIF]
    add hl, bc
    ld b, $c1
    ld a, $39
    add $4f
    ld a, h
    inc b
    ld a, [bc]
    dec b
    ld l, h
    sbc a
    db $10
    halt
    inc bc
    ld [bc], a
    and d
    ld l, $7e
    inc bc
    ld l, l
    inc bc
    db $fc
    and $18
    ld e, h
    ld h, b
    dec c
    ld b, $ff
    sub d
    ld l, l
    adc l
    ld b, l
    ld h, c
    jr nz, jr_01d_7b15

    ld [$01f8], sp
    db $10
    ld hl, $0110
    ld b, $24
    dec sp
    inc b
    dec de
    db $e4
    rst $20
    dec de
    inc e
    inc bc
    ret nc

    ld d, [hl]
    ld [$400e], sp
    ccf
    ld h, c
    rst $20
    ld e, $92
    ld l, l
    ld bc, $0d03
    inc de
    or h
    bit 0, h
    ccf
    cp e
    add h
    dec de
    sbc h
    inc bc
    ld h, h
    ld a, [bc]
    ld de, $7201
    rst $38
    sub d
    ld [hl], e
    adc b
    ld a, b
    add h
    ld a, h
    ld b, h
    ld a, h
    rst $28
    add hl, hl

jr_01d_7b15:
    add hl, sp
    ld [de], a
    inc de
    inc bc
    ld [hl], d
    ld e, h
    ld h, b
    ld c, [hl]
    rst $38
    ld [hl], h
    ld c, h
    ld [hl], b
    jr z, jr_01d_7b53

    sub h
    sbc b
    inc b
    rst $38
    rlca
    nop
    rlca
    jr nc, jr_01d_7b63

    ld b, h
    ld [hl], a
    dec bc
    rst $30
    ld a, e
    adc b
    ld hl, sp+$31
    ld e, c
    ld c, h
    ret z

    ld b, h
    ret nz

    rst $38
    ld [hl], h
    ldh a, [$ff8c]
    cp b
    inc b
    jr c, @+$06

    jr c, jr_01d_7b52

    inc h
    jr c, jr_01d_7b5a

    jr jr_01d_7b49

    halt

jr_01d_7b49:
    pop hl
    ld [hl], l
    xor c
    ld e, d
    ld bc, rDIV
    ld l, $34

jr_01d_7b52:
    inc e

jr_01d_7b53:
    db $10
    ld [$0400], sp
    ld [$0d0e], sp

jr_01d_7b5a:
    ld a, e
    inc c
    ld [$c004], sp
    inc hl
    ld b, e
    nop
    ret nz

jr_01d_7b63:
    nop
    nop
    ld [bc], a
    ld a, $03
    inc b
    sbc [hl]
    ld e, $21
    ccf
    nop
    and c
    halt
    ld [bc], a
    ld a, d
    ld a, a
    db $fc
    ldh [$ff4e], a
    ld [hl], h
    adc h
    ldh a, [$ff88]
    ret nz

    dec e
    ei
    ld b, b
    ld a, a
    ldh [rPCM34], a
    ccf
    jr nz, @+$41

    ld [$fd0f], sp
    ld [bc], a
    ld sp, $0041
    inc b
    ld hl, sp+$04
    ld hl, sp+$0c
    db $fd
    ld hl, sp+$01
    ld a, b
    inc b
    ldh [$ff2c], a
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
    jr z, jr_01d_7be3

jr_01d_7be3:
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
    jr jr_01d_7ca3

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
    jr z, jr_01d_7cb6

    add hl, hl

jr_01d_7ca3:
    inc d
    ld a, [hl+]
    inc d
    dec hl
    ld a, a
    inc d
    add hl, de
    ld d, h
    jr jr_01d_7d01

    inc l
    inc d
    ld hl, $1f00
    dec l
    inc d
    ld l, $14

jr_01d_7cb6:
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
    jr nc, jr_01d_7cd8

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

jr_01d_7cd8:
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
    jr c, jr_01d_7cfd

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

jr_01d_7cfd:
    db $10
    sbc l
    db $10
    sbc [hl]

jr_01d_7d01:
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
    jp nz, $6010

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
    jp nz, $3903

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
    jr jr_01d_7f22

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
    jr jr_01d_7f13

jr_01d_7f13:
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

jr_01d_7f22:
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
