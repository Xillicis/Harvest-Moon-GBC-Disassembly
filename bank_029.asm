; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    add hl, hl
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    push hl
    push af
    ld l, $6e
    ld h, $45
    ld a, $28
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $4651
    ld c, $3c
    ld de, $8800
    call Call_000_31a0
    ld hl, $4001
    ld c, $3c
    ld de, $9000
    call Call_000_31a0
    ld hl, $4cd7
    ld c, $3c
    ld de, $8000
    call Call_000_31a0
    ld hl, $50db
    ld c, $3c
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
    ld a, [$cd2a]
    cp $08
    jr c, jr_029_4066

    xor a
    ld [$cd2a], a

jr_029_4066:
    add a
    ld hl, $40a9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd69], a
    ld [$cd6a], a
    ld [$cd2b], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $c000
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
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


    rst $08
    ld b, b
    rst $18
    ld b, b
    rst $28
    ld b, b
    rst $38
    ld b, b
    rrca
    ld b, c
    rra
    ld b, c
    cpl
    ld b, c
    ccf
    ld b, c
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_029_46e0
    call Call_029_415d
    ret


    ldh a, [rSTAT]
    nop
    rst $30
    ld b, c
    ccf
    ld b, c
    rst $18
    ld b, b
    ccf
    ld b, c
    rst $18
    ld b, b
    nop
    jr @-$7c

    ldh a, [rSTAT]
    ld bc, $41f7
    rst $08
    ld b, b
    rst $28
    ld b, b
    rst $08
    ld b, b
    rst $28
    ld b, b
    ld [$1412], sp
    ldh a, [rSTAT]
    ld [bc], a
    rst $30
    ld b, c
    rst $18
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld b, b
    rst $38
    ld b, b
    ld [de], a
    jr jr_029_4114

    ldh a, [rSTAT]
    inc bc
    rst $30
    ld b, c
    rst $28
    ld b, b
    rrca
    ld b, c
    rst $28
    ld b, b
    rrca
    ld b, c
    ld [$1612], sp
    ldh a, [rSTAT]
    inc b
    rst $30
    ld b, c

jr_029_4114:
    rst $38
    ld b, b
    rra
    ld b, c
    rst $38
    ld b, b
    rra
    ld b, c
    ld [$1a12], sp
    ldh a, [rSTAT]
    dec b
    rst $30
    ld b, c
    rrca
    ld b, c
    cpl
    ld b, c
    rrca
    ld b, c
    cpl
    ld b, c
    ld [$1712], sp
    ldh a, [rSTAT]
    ld b, $f7
    ld b, c
    rra
    ld b, c
    ccf
    ld b, c
    rra
    ld b, c
    ccf
    ld b, c
    ld [$1812], sp
    ldh a, [rSTAT]
    rlca
    rst $30
    ld b, c
    cpl
    ld b, c
    rst $08
    ld b, b
    cpl
    ld b, c
    rst $08
    ld b, b
    ld [$1912], sp
    xor b
    ld b, d
    ld d, a
    ld b, c
    ld a, c
    ld c, h
    ld d, e
    ld b, c
    ld a, [hl-]
    ld b, e
    ld a, c
    ld c, h
    ld d, e
    ld b, c

Call_029_415d:
    ld hl, $cd69
    ld b, $10
    call Call_029_43a7
    ld b, $04
    inc hl
    call z, Call_029_43a7
    ld a, [$cd2a]
    ld hl, $41b0
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $41c0
    ld a, [sPlayerGender]
    or a
    jr z, jr_029_4187

    ld hl, $41c8

jr_029_4187:
    ld a, [$cd6a]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld a, [$cd2a]
    ld hl, $41d0
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ret


    sbc b
    ld d, b
    adc b
    ld b, b
    ld d, b
    jr nc, jr_029_41d7

    ld c, b
    ld [$2850], sp
    add b
    ld e, b
    adc b
    adc b
    add b
    rst $00
    ld b, e
    xor [hl]
    ld b, e
    ldh [rSCX], a
    xor [hl]
    ld b, e
    sub l
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    sub l
    ld b, [hl]
    rst $00
    ld b, [hl]
    ld d, b
    ld c, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld c, b
    ld sp, hl

jr_029_41d7:
    ld b, e
    ld d, b
    ld c, b
    ld e, d
    ld b, h
    ld d, b
    ld c, b
    ld e, c
    ld b, l
    ld d, b
    ld c, b
    xor a
    ld b, h
    ld d, b
    ld c, b
    xor [hl]
    ld b, l
    ld d, b
    ld c, b
    ld hl, sp+$44
    ld d, b
    ld c, b
    inc bc
    ld b, [hl]
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd2a], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_029_4242

    bit 1, a
    jp nz, Jump_029_42a5

    bit 4, a
    jr nz, jr_029_4218

    bit 5, a
    jr nz, jr_029_4221

    bit 6, a
    jr nz, jr_029_4225

    bit 7, a
    jr nz, jr_029_422f

    dec hl
    dec hl
    ret


jr_029_4218:
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4221:
    inc hl
    inc hl
    jr jr_029_4218

jr_029_4225:
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_029_4218

jr_029_422f:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_029_4218

jr_029_4239:
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ret


jr_029_4242:
    push hl
    ld a, [$cd2a]
    or a
    jr z, jr_029_4267

    cp $04
    jr nz, jr_029_4254

    ld a, [$b89a]
    cp $01
    jr z, jr_029_4239

jr_029_4254:
    ld a, [$b890]
    or a
    jr nz, jr_029_4239

    ld a, [$b891]
    or a
    jr nz, jr_029_4239

    ld a, [$b899]
    cp $01
    jr z, jr_029_4239

jr_029_4267:
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b882]
    cp [hl]
    jr c, jr_029_4239

    inc hl
    cp [hl]
    jr nc, jr_029_4239

    inc hl
    pop de
    push hl

Jump_029_427c:
    call Call_000_1056
    pop hl
    ld a, $42
    call Call_000_25cb
    ld a, [hl+]
    bit 7, a
    jr nz, jr_029_4293

jr_029_428a:
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


jr_029_4293:
    and $7f
    cp $02
    jr nz, jr_029_428a

    ld hl, $414f
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Jump_029_42a5:
    dec hl
    dec hl
    ret


    push bc
    call Call_000_0f73
    ld a, [$b882]
    cp $05
    jr z, jr_029_430b

    cp $10
    call z, Call_029_4310
    call Call_029_435d
    ld a, [$b882]
    cp $05
    jr nz, jr_029_42cf

    ld a, [$b881]
    cp $0e
    jr nz, jr_029_42f6

    dec a
    ld [$b881], a
    jr jr_029_42f6

jr_029_42cf:
    ld a, [$b882]
    cp $12
    jr nz, jr_029_42f6

    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, [$b899]
    and $01
    jr z, jr_029_42f6

    ld a, $03
    ld [$b899], a

jr_029_42f6:
    xor a
    ld [$cb56], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    pop hl
    ret


jr_029_430b:
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_029_4310:
    xor a
    ld [$cb90], a
    ld a, [$b93d]
    ld b, a
    ld a, [$b93e]
    or b
    jr z, jr_029_4332

    ld a, [$b93d]
    ld [$b8fc], a
    ld a, [$b93e]
    ld [$b8fd], a
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ret


jr_029_4332:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ret


    push bc
    ld a, $05
    ld [$b882], a
    ld a, $0d
    ld [$b881], a
    call Call_000_070b
    pop hl
    xor a
    ld [$cb56], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_029_435d:
    ld a, [$b882]
    inc a
    ld [$b882], a
    cp $18
    jr nc, jr_029_436c

    call Call_000_070b
    ret


jr_029_436c:
    xor a
    ld [$b882], a
    call Call_000_070b
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp $1e
    jr nc, jr_029_4382

    call Call_000_07ab
    ret


jr_029_4382:
    xor a
    ld [sCurrentDayCounter], a
    call Call_000_07ab
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    cp $04
    jr nc, jr_029_4398

    call Call_000_08b7
    ret


jr_029_4398:
    xor a
    ld [sCurrentSeason], a
    call Call_000_08b7
    ld a, [$b885]
    inc a
    ld [$b885], a
    ret


Call_029_43a7:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$f000], sp
    nop
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    inc b
    ld de, $0015
    inc b
    add hl, bc
    dec d
    nop
    inc b
    jp hl


    dec d
    nop
    db $f4
    ld de, $000f
    db $f4
    add hl, bc
    rrca
    nop
    db $f4
    jp hl


    rrca
    nop
    db $fc
    add hl, de
    inc de
    nop
    db $fc
    pop hl
    ld de, $0400
    add hl, de
    ld d, $00
    db $f4
    add hl, de
    stop
    inc b
    pop hl
    inc d
    nop
    db $f4
    pop hl
    ld c, $00
    db $fc
    ld de, $001c
    db $fc
    add hl, bc
    dec de
    nop
    db $fc
    ld bc, $001a
    db $fc
    ld sp, hl
    add hl, de
    nop
    db $fc
    pop af
    jr jr_029_443d

jr_029_443d:
    db $fc
    jp hl


    rla
    nop
    inc b
    ld bc, $0015
    inc b
    ld sp, hl
    dec d
    nop
    inc b
    pop af
    dec d
    nop
    db $f4
    ld bc, $000f
    db $f4
    ld sp, hl
    rrca
    nop
    db $f4
    pop af
    rrca
    nop
    add b
    inc b
    rla
    ld d, l
    nop
    inc b
    rrca
    ld d, h
    nop
    db $f4
    rla
    ld d, e
    nop
    db $f4
    rrca
    ld d, d
    nop
    db $fc
    rst $20
    ld de, $fc00
    rla
    ld [hl+], a
    nop
    db $fc
    rrca
    ld hl, $fc00
    rlca
    jr nz, jr_029_447a

jr_029_447a:
    inc b
    rst $30
    dec d
    nop
    inc b
    rst $28
    dec d
    nop
    inc b
    rst $20
    inc d
    nop
    db $f4
    rst $28
    rrca
    nop
    db $f4
    rst $30
    rrca
    nop
    db $f4
    rst $20
    ld c, $00
    db $fc
    rst $38
    rra
    nop
    db $fc
    rst $30
    ld e, $00
    db $fc
    rst $28
    dec e
    nop
    inc b
    rlca
    dec d
    nop
    inc b
    rst $38
    dec d
    nop
    db $f4
    rlca
    rrca
    nop
    db $f4
    rst $38
    rrca
    nop
    add b
    db $f4
    di
    rrca
    nop
    db $f4
    db $eb
    ld c, $00
    inc b
    di
    dec d
    nop
    inc b
    db $eb
    inc d
    nop
    inc b
    inc de
    ld d, l
    nop
    inc b
    dec bc
    ld d, h
    nop
    db $f4
    inc de
    ld d, e
    nop
    db $f4
    dec bc
    ld d, d
    nop
    db $fc
    inc de
    ld [hl+], a
    nop
    db $fc
    db $eb
    ld de, $fc00
    dec bc
    ld h, $00
    db $fc
    inc bc
    dec h
    nop
    db $fc
    ei
    inc h
    nop
    db $fc
    di
    inc hl
    nop
    inc b
    inc bc
    dec d
    nop
    inc b
    ei
    dec d
    nop
    db $f4
    inc bc
    rrca
    nop
    db $f4
    ei
    rrca
    nop
    add b
    db $f4
    ld [$000f], a
    db $f4
    ldh [c], a
    ld c, $00
    inc b
    ld [$0015], a
    inc b
    ldh [c], a
    inc d
    nop
    inc b
    ld a, [de]
    ld e, c
    nop
    inc b
    ld [de], a
    ld e, b
    nop
    db $f4
    ld a, [de]
    ld d, a
    nop
    db $f4
    ld [de], a
    ld d, [hl]
    nop
    db $fc
    ldh [c], a
    ld de, $fc00
    ld a, [de]
    dec l
    nop
    db $fc
    ld [de], a
    inc l
    nop
    db $fc
    ld a, [bc]
    dec hl
    nop
    db $fc
    ld [bc], a
    ld a, [hl+]
    nop
    db $fc
    ld a, [$0029]
    db $fc
    ldh a, [c]
    jr z, jr_029_4534

jr_029_4534:
    db $fc
    ld [$0027], a
    inc b
    ld a, [bc]
    dec d
    nop
    inc b
    ld [bc], a
    dec d
    nop
    inc b
    ld a, [$0015]
    inc b
    ldh a, [c]
    dec d
    nop
    db $f4
    ld a, [bc]
    rrca
    nop
    db $f4
    ld [bc], a
    rrca
    nop
    db $f4
    ld a, [$000f]
    db $f4
    ldh a, [c]
    rrca
    nop
    add b
    db $f4
    db $ec
    rrca
    nop
    db $f4
    db $e4
    ld c, $00
    inc b
    db $ec
    dec d
    nop
    inc b
    db $e4
    inc d
    nop
    inc b
    inc d
    ld e, e
    nop
    db $f4
    inc d
    ld e, d
    nop
    db $fc
    db $e4
    ld de, $fc00
    inc d
    ld b, h
    nop
    db $fc
    inc c
    ld b, e
    nop
    db $fc
    inc b
    ld b, d
    nop
    db $fc
    db $fc
    ld b, c
    nop
    db $fc
    db $f4
    ld b, b
    nop
    db $fc
    db $ec
    ld l, $00
    inc b
    inc c
    dec d
    nop
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    db $f4
    inc c
    rrca
    nop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    add b
    inc b
    ld d, $59
    nop
    inc b
    ld c, $58
    nop
    db $f4
    ld d, $57
    nop
    db $f4
    ld c, $56
    nop
    db $fc
    ld d, $2d
    nop
    db $fc
    ld c, $49
    nop
    db $fc
    ld b, $48
    nop
    db $fc
    cp $47
    nop
    db $fc
    or $46
    nop
    db $fc
    xor $45
    nop
    inc b
    ld b, $15
    nop
    inc b
    cp $15
    nop
    inc b
    or $15
    nop
    inc b
    xor $15
    nop
    inc b
    and $14
    nop
    db $fc
    and $11
    nop
    db $f4
    ld b, $0f
    nop
    db $f4
    cp $0f
    nop
    db $f4
    or $0f
    nop
    db $f4
    xor $0f
    nop
    db $f4
    and $0e
    nop
    add b
    inc b
    ld a, [de]
    ld e, c
    nop
    inc b
    ld [de], a
    ld e, b
    nop
    db $f4
    ld a, [de]
    ld d, a
    nop
    db $f4
    ld [de], a
    ld d, [hl]
    nop
    db $fc
    ld a, [de]
    dec l
    nop
    db $fc
    ld [de], a
    ld c, a
    nop
    db $fc
    ld a, [bc]
    ld c, [hl]
    nop
    db $fc
    ld [bc], a
    ld c, l
    nop
    db $fc
    ld a, [$004c]
    db $fc
    ldh a, [c]
    ld c, e
    nop
    db $fc
    ld [$004a], a
    inc b
    ld a, [bc]
    dec d
    nop
    db $f4
    ld a, [bc]
    rrca
    nop
    inc b
    ld [$0015], a
    db $f4
    ld [$000f], a
    inc b
    ldh a, [c]
    dec d
    nop
    db $f4
    ldh a, [c]
    rrca
    nop
    inc b
    ldh [c], a
    inc d
    nop
    db $fc
    ldh [c], a
    ld de, $f400
    ldh [c], a
    ld c, $00
    inc b
    ld [bc], a
    dec d
    nop
    inc b
    ld a, [$0015]
    db $f4
    ld [bc], a
    rrca
    nop
    db $f4
    ld a, [$000f]
    add b
    inc b
    add hl, bc
    ld d, $00
    db $fc
    add hl, bc
    inc de
    nop
    db $f4
    add hl, bc
    stop
    db $fc
    ld bc, $0051
    db $fc
    ld sp, hl
    ld d, b
    nop
    inc b
    ld bc, $0015
    inc b
    ld sp, hl
    dec d
    nop
    inc b
    pop af
    inc d
    nop
    db $fc
    pop af
    ld de, $f400
    ld bc, $000f
    db $f4
    ld sp, hl
    rrca
    nop
    db $f4
    pop af
    ld c, $00
    add b
    rst $30
    nop
    dec [hl]
    nop
    rst $30
    ld hl, sp+$34
    nop
    rst $28
    nop
    inc sp
    nop
    rst $28
    ld hl, sp+$32
    nop
    rst $20
    nop
    ld sp, $e700
    ld hl, sp+$30
    nop
    add b
    rst $30
    nop
    dec sp
    nop
    rst $30
    ld hl, sp+$3a
    nop
    rst $28
    nop
    add hl, sp
    nop
    rst $28
    ld hl, sp+$38
    nop
    rst $20
    nop
    scf
    nop
    rst $20
    ld hl, sp+$36
    nop
    add b
    rst $30
    nop
    ccf
    nop
    rst $30
    ld hl, sp+$3e
    nop
    rst $28
    nop
    dec a
    nop
    rst $28
    ld hl, sp+$3c
    nop
    rst $20
    nop
    scf
    nop
    rst $20
    ld hl, sp+$36
    nop
    add b

Call_029_46e0:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $46f3
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


    ld hl, $4703
    call Call_029_5404
    ret


    ld [hl], $59
    inc a
    ld [hl], e
    ld h, l
    inc a
    ld sp, $3c68
    add h
    ld c, b
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4831
    call Call_029_4806
    ret


Call_029_4737:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_029_47d9

    ld a, [$c0a2]
    bit 5, a
    ret z

    ld hl, sPlayerMoney
    ld de, $ccca
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_3268
    ld a, [$cccd]
    ld bc, $8060
    call Call_029_4784
    ld a, [$ccce]
    ld bc, $8068
    call Call_029_4784
    ld a, [$cccf]
    ld bc, $8070
    call Call_029_4784
    ld a, [$ccd0]
    ld bc, $8078
    call Call_029_4784
    ld a, [$ccd1]
    ld bc, $8080
    call Call_029_4784
    pop hl
    ret


Call_029_4784:
    cp $af
    jr nz, jr_029_478f

    ld hl, $47d4
    call Call_000_20de
    ret


jr_029_478f:
    sub $34
    ld l, a
    add a
    add a
    add l
    ld hl, $47a2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_20de
    ret


    nop
    nop
    ldh [c], a
    nop
    add b
    nop
    nop
    db $e3
    nop
    add b
    nop
    nop
    db $e4
    nop
    add b
    nop
    nop
    push hl
    nop
    add b
    nop
    nop
    and $00
    add b
    nop
    nop
    rst $20
    nop
    add b
    nop
    nop
    add sp, $00
    add b
    nop
    nop
    jp hl


    nop
    add b
    nop
    nop
    ld [$8000], a
    nop
    nop
    db $eb
    nop
    add b
    nop
    nop
    xor $00
    add b

Jump_029_47d9:
    ld a, [$c0a2]
    bit 5, a
    jr z, jr_029_47f3

    ld a, [$c0a2]
    ld b, a

jr_029_47e4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_029_47e4

    ld a, b
    and $df
    ldh [rLCDC], a
    ld [$c0a2], a
    ret


jr_029_47f3:
    ld a, [$c0a2]
    ld b, a

jr_029_47f7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_029_47f7

    ld a, b
    or $20
    ldh [rLCDC], a
    ld [$c0a2], a
    ret


Call_029_4806:
    ld a, [$cd33]
    or a
    ret z

    ld hl, $4827
    ld a, [$cd32]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4822
    call Call_000_20de
    ret


    nop
    nop
    rst $18
    nop
    add b
    inc e
    ld c, b
    inc [hl]
    ld c, b
    ld c, h
    ld c, b
    ld h, h
    ld c, b
    ld a, h
    ld c, b

Call_029_4831:
    ld a, [$cd33]
    cp $04
    ret c

    ld a, [$cd31]
    or a
    jr z, jr_029_4846

    ld bc, $500c
    ld hl, $4867
    call Call_000_20de

jr_029_4846:
    ld a, [$cd31]
    add $04
    ld b, a
    ld a, [$cd33]
    dec a
    cp b
    ret z

    ld a, [$cd31]
    ld b, a
    ld a, [$cd33]
    sub b
    cp $05
    ret c

    ld bc, $508c
    ld hl, $4870
    call Call_000_20de
    ret


    nop
    nop
    ldh [rP1], a
    ld [$f000], sp
    nop
    add b
    nop
    nop
    pop hl
    nop
    ld [$f100], sp
    nop
    add b

Call_029_4879:
    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    nop
    ld c, c
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a
    ld c, h
    ld [$8e6e], sp
    ld c, h
    sbc b
    ld c, e
    call c, $f448
    ld c, b
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    cp c
    ld c, b
    call c, $f448
    ld c, b
    add sp, $48
    adc [hl]
    ld c, h
    nop
    ld c, c
    ld l, l
    ld c, e
    sbc b
    ld c, e
    cp c
    ld c, b
    db $f4
    ld c, b
    ld a, a
    ld c, h
    ld c, h
    ld [hl], c
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    db $fc
    ld c, b
    push bc
    call Call_029_4aec
    xor a
    ld [$cd33], a
    ld hl, $4940
    call Call_029_4991
    ld hl, $4949
    call Call_029_4991
    ld hl, $4952
    call Call_029_4991
    ld hl, $495b
    call Call_029_4991
    ld hl, $4964
    call Call_029_4991
    ld hl, $496d
    call Call_029_4991
    ld hl, $4976
    call Call_029_4991
    ld hl, $497f
    call Call_029_4991
    ld hl, $4988
    call Call_029_4991
    pop hl
    ret


    jp nc, $01b8

    rra
    add hl, de
    ld [hl], a
    ld h, $6e
    ld d, h
    db $d3
    cp b
    ld bc, $231f
    ld [hl], a
    ld a, e
    ld l, [hl]
    ld e, b
    call nc, $02b8
    rra
    dec l
    ld [hl], a
    ret nc

    ld l, [hl]
    ld e, h
    push de
    cp b
    ld [bc], a
    rra
    scf
    ld [hl], a
    dec h
    ld l, a
    ld h, b
    sub $b8
    inc b
    dec bc
    ld b, c
    ld [hl], a
    ld a, d
    ld l, a
    ld h, h
    rst $10
    cp b
    inc b
    dec d
    ld c, e
    ld [hl], a
    rst $08
    ld l, a
    ld l, b
    ret c

    cp b
    ld [$5513], sp
    ld [hl], a
    inc h
    ld [hl], b
    ld l, h
    reti


    cp b
    ld [$5f0d], sp
    ld [hl], a
    ld a, c
    ld [hl], b
    ld [hl], b
    jp c, $07b8

    rra
    ld l, c
    ld [hl], a
    jp c, Jump_029_5070

Call_029_4991:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    cp $63
    ret nc

    call Call_029_49c6
    ret z

    inc hl
    call $49db
    ret z

    inc hl
    ld de, $cd33
    ld a, [de]
    inc a
    ld [de], a
    dec a
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
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
    ret


Call_029_49c6:
    push hl
    ld a, [sCurrentSeason]
    ld hl, $49d7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld bc, $0402
    ld [$fae5], sp
    db $f4
    cp b
    ld hl, $49ec
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0101], sp
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

Call_029_4aec:
    ld a, $7c
    ld [$cd38], a
    ld [$cd3d], a
    ld [$cd42], a
    ld [$cd47], a
    ld [$cd4c], a
    ld [$cd51], a
    ld [$cd56], a
    ld [$cd5b], a
    ld [$cd60], a
    ret


    push bc
    call Call_000_0924
    pop bc
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [$cd31]
    ld e, a
    ld a, [bc]
    inc bc
    add e
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    push af
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    pop af
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $0a
    ldh [$ff97], a
    ld h, b
    ld l, c
    ret


    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    ld hl, $cd34
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr z, jr_029_4b90

    ld b, a
    ld a, [$cd30]
    cp b
    ret c

    ld a, b
    dec a
    ld [$cd30], a
    cp $05
    jr c, jr_029_4b90

    ld a, b
    sub $04
    ld [$cd31], a
    ld a, $04
    ld [$cd32], a
    ret


jr_029_4b90:
    ld [$cd32], a
    xor a
    ld [$cd31], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr nz, jr_029_4ba2

    inc hl
    inc hl

jr_029_4ba2:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    dec a
    ld c, a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_029_4bc5

    bit 1, a
    jr nz, jr_029_4bf7

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_029_4c08

    bit 5, a
    jr nz, jr_029_4c41

    dec hl
    dec hl
    ret


jr_029_4bc5:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld hl, $cd34
    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld a, $42
    call Call_000_25cb
    pop hl
    ret


jr_029_4bf7:
    ld a, $51
    call Call_000_25cb
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4c08:
    ld a, [$cd30]
    cp c
    jr nc, jr_029_4c3e

    inc a
    push af
    ld a, [$cd32]
    cp $04
    jr c, jr_029_4c2b

    ld a, [$cd31]
    inc a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4c2b:
    inc a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4c3e:
    dec hl
    dec hl
    ret


jr_029_4c41:
    ld a, [$cd30]
    or a
    jr z, jr_029_4c76

    dec a
    push af
    ld a, [$cd32]
    or a
    jr nz, jr_029_4c63

    ld a, [$cd31]
    dec a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4c63:
    dec a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_4c76:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6b]
    or a
    ret nz

    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $13
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    ld hl, $4cac
    call Call_029_5404
    ret


    adc l
    ld e, d
    inc a
    sub $60
    inc a
    rst $00
    ld h, e
    inc a
    ldh [$ff4c], a
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4806
    call Call_029_4806
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    ld e, h
    ld c, l
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a
    ld c, h
    call c, $8e50
    ld c, h
    sbc b
    ld c, e
    jr c, jr_029_4d60

    ld d, b
    ld c, l
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    dec d
    ld c, l
    jr c, @+$4f

    ld d, b
    ld c, l
    ld b, h
    ld c, l
    adc [hl]
    ld c, h
    ld e, h
    ld c, l
    ld l, l
    ld c, e
    sbc b
    ld c, e
    dec d
    ld c, l
    ld d, b
    ld c, l
    ld a, a
    ld c, h
    ld b, b
    ld d, d
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    ld e, b
    ld c, l
    push bc
    call Call_029_4aec

jr_029_4d60:
    ld a, $01
    ld [$cd33], a
    ld hl, $4d9a
    ld de, $cd34
    ld b, $05
    call CopyHLtoDE
    call Call_029_4dbf
    jr c, jr_029_4d80

    ld hl, $4d9f
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_4d80:
    ld hl, $4da4
    call Call_029_4991
    ld hl, $4dad
    call Call_029_4991
    ld hl, $4db6
    ld a, [$b942]
    or a
    jr z, jr_029_4d98

    call Call_029_4991

jr_029_4d98:
    pop hl
    ret


    rst $08
    ld a, d
    xor $50
    ld d, h
    reti


    ld a, d
    dec h
    ld d, c
    ld d, b
    jp z, $0fb8

    rra
    db $e3
    ld a, d
    ld l, b
    ld d, c
    ld e, b
    res 7, b
    rrca
    rra
    db $ed
    ld a, d
    xor l
    ld d, c
    ld e, h
    call z, $0fb8
    rra
    rst $30
    ld a, d
    ldh a, [c]
    ld d, c
    ld h, b

Call_029_4dbf:
    push hl
    push de
    push bc
    call Call_029_50a7
    ld de, $0086
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop bc
    pop de
    pop hl
    ret


    ld hl, $4dd9
    call Call_029_5404
    ret


    sub [hl]
    ld e, e
    inc a
    db $ed
    ld [hl], d
    inc a
    rst $18
    ld [hl], l
    inc a
    dec c
    ld c, [hl]
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4831
    call Call_029_4806
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    adc e
    ld c, [hl]
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a
    ld c, h
    inc c
    ld c, [hl]
    adc [hl]
    ld c, h
    ld a, c
    ld c, h
    ld h, e
    ld c, [hl]
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc b
    ld c, e
    ld l, c
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    ld b, b
    ld c, [hl]
    ld l, c
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    adc [hl]
    ld c, h
    adc e
    ld c, [hl]
    ld l, l
    ld c, e
    ld a, c
    ld c, h
    ld b, b
    ld c, [hl]
    ld a, a
    ld c, h
    rst $20
    ld c, [hl]
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    add a
    ld c, [hl]
    push bc
    call Call_029_4aec
    xor a
    ld [$cd33], a
    ld hl, $b938
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld de, $cd34
    jr nc, jr_029_4eb3

    ld a, $01
    ld [$cd33], a
    ld hl, $4ed1
    ld b, $05
    call CopyHLtoDE

jr_029_4eb3:
    ld a, [$b911]
    cp $02
    jr z, jr_029_4ecf

    ld a, [$b8fe]
    or a
    jr nz, jr_029_4ecf

    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ld hl, $4ed6
    ld b, $06
    call CopyHLtoDE

jr_029_4ecf:
    pop hl
    ret


    sub e
    ld a, b
    ld [hl], $4e
    ld d, b
    sbc l
    ld a, b
    sbc e
    ld c, [hl]
    ld d, h
    ld hl, $4ee2
    call Call_029_5404
    ret


    jr jr_029_4f40

    inc a
    ld c, d
    ld l, [hl]
    inc a
    ld b, c
    ld [hl], c
    inc a
    ld d, $4f
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4831
    call Call_029_4806
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    sub l
    ld c, a
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a

jr_029_4f40:
    ld c, h
    adc b
    ld c, b
    adc [hl]
    ld c, h
    ld a, c
    ld c, h
    ld l, h
    ld c, a
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    sbc b
    ld c, e
    ld [hl], d
    ld c, a
    adc b
    ld c, a
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    ld c, c
    ld c, a
    ld [hl], d
    ld c, a
    adc b
    ld c, a
    ld a, [hl]
    ld c, a
    adc [hl]
    ld c, h
    sub l
    ld c, a
    ld l, l
    ld c, e
    ld a, c
    ld c, h
    ld c, c
    ld c, a
    ld a, a
    ld c, h
    ld c, a
    ld c, d
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    sub b
    ld c, a
    ld h, b
    push bc
    call Call_029_4aec
    xor a
    ld [$cd33], a
    ld de, $cd34
    ld a, [$b898]
    or a
    jr z, jr_029_4fcf

    ld a, [$b8af]
    or a
    jr nz, jr_029_4fcf

    ld a, $12
    call Call_029_4879
    jr z, jr_029_4fcf

    call Call_029_506d
    jr c, jr_029_4fcf

    ld a, [$ba3e]
    cp $02
    jr z, jr_029_4fc4

    ld a, $01
    ld [$ba3e], a

jr_029_4fc4:
    ld hl, $5042
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_4fcf:
    ld a, [$b8ad]
    or a
    jr nz, jr_029_4fe7

    ld a, $09
    call Call_029_4879
    jr z, jr_029_4fe7

    ld hl, $504c
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_4fe7:
    ld a, [$b8c2]
    or a
    jr nz, jr_029_4fff

    ld a, [$b8ea]
    cp $02
    jr nz, jr_029_4fff

    ld hl, $5051
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_4fff:
    ld a, [$b8ac]
    or a
    jr nz, jr_029_5017

    ld a, $08
    call Call_029_4879
    jr z, jr_029_5017

    ld hl, $5056
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_5017:
    ld a, [$b942]
    cp $c8
    jr c, jr_029_5040

    ld a, [$b944]
    or a
    jr nz, jr_029_502f

    ld hl, $505b
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_502f:
    ld a, [$b943]
    or a
    jr nz, jr_029_5040

    ld hl, $5060
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_5040:
    pop hl
    ret


    rst $00
    ld a, b
    ld a, [hl+]
    ld c, c
    ld e, h
    rst $00
    ld a, b
    ld a, [hl+]
    ld c, c
    ld h, b
    pop de
    ld a, b
    cp d
    ld c, b
    ld d, b
    db $db
    ld a, b
    nop
    ld c, d
    ld e, b
    push hl
    ld a, b
    ldh a, [c]
    ld c, b
    ld d, h
    rst $28
    ld a, b
    cp h
    ld c, c
    ld h, h
    ld sp, hl
    ld a, b
    ld a, b
    ld c, c
    ld l, b

Call_029_5065:
    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ret


Call_029_506d:
    push hl
    push de
    push bc

Jump_029_5070:
    ld a, [$ba3d]
    ld hl, $0000
    or a
    jr z, jr_029_5081

    ld b, a
    ld de, $0078

jr_029_507d:
    add hl, de
    dec b
    jr nz, jr_029_507d

jr_029_5081:
    ld d, h
    ld e, l
    ld a, [$ba3c]
    ld c, $1e
    call Multiply8Bit
    ld a, [$ba3b]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    push hl
    call Call_029_50a7
    pop de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    cp $07
    pop bc
    pop de
    pop hl
    ret


Call_029_50a7:
    ld a, [$b885]
    ld hl, $0000
    or a
    jr z, jr_029_50b8

    ld b, a
    ld de, $0078

jr_029_50b4:
    add hl, de
    dec b
    jr nz, jr_029_50b4

jr_029_50b8:
    ld d, h
    ld e, l
    ld a, [sCurrentSeason]
    ld c, $1e
    call Multiply8Bit
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    ret


    ld hl, $50d4
    call Call_029_5404
    ret


    push bc
    ld e, l
    inc a
    db $dd
    ld l, c
    inc a
    sbc [hl]
    ld l, h
    inc a
    ld [$cd51], sp
    sub b
    dec c
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4831
    call Call_029_4806
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    add h
    ld d, c
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a
    ld c, h
    xor h
    ld l, b
    adc [hl]
    ld c, h
    sbc b
    ld c, e
    ld h, b
    ld d, c
    ld a, b
    ld d, c
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    dec a
    ld d, c
    ld h, b
    ld d, c
    ld a, b
    ld d, c
    ld l, h
    ld d, c
    adc [hl]
    ld c, h
    add h
    ld d, c
    ld l, l
    ld c, e
    sbc b
    ld c, e
    dec a
    ld d, c
    ld a, b
    ld d, c
    ld a, a
    ld c, h
    ld c, h
    ld l, d
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    add b
    ld d, c
    push bc
    call Call_029_4aec
    ld a, $02
    ld [$cd33], a
    ld hl, $51ac
    ld de, $cd34
    ld b, $0a
    call CopyHLtoDE
    ld hl, $51b6
    call Call_029_4991
    ld hl, $51bf
    call Call_029_4991
    ld hl, $51c8
    call Call_029_4991
    pop hl
    ret


    ld c, l
    ld a, d
    sub $68
    ld d, h
    ld d, a
    ld a, d
    dec h
    ld l, c
    ld d, b
    push bc
    cp b
    rrca
    rra
    ld h, c
    ld a, d
    ld l, b
    ld l, c
    ld e, h
    add $b8
    rrca
    rra
    ld l, e
    ld a, d
    and c
    ld l, c
    ld e, b
    rst $00
    cp b
    rrca
    rra
    ld [hl], l
    ld a, d
    and $69
    ld h, b
    ld hl, $5221
    call Call_029_5404
    ld a, [$cd2b]
    rst $00
    rst $20
    ld d, c
    add sp, $51
    inc bc
    ld d, d
    inc bc
    ld d, d
    rra
    ld d, d
    jr nz, @+$54

    ret


    ld hl, $55f1
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $52d1
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd6b], a
    ret


    ld hl, $4695
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $52d1
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $01
    ld [$cd6b], a
    ret


    ret


    ret


    ret nc

    ld e, [hl]
    inc a
    adc e
    ld [hl], a
    inc a
    sbc [hl]
    ld l, h
    inc a
    ld d, l
    ld d, d
    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_4737
    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_029_4831
    call Call_029_4806
    ret


    ld a, a
    ld c, h
    sub l
    ld b, [hl]
    nop
    ld d, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld a, a
    ld c, h
    sbc h
    ld d, l
    adc [hl]
    ld c, h
    sbc b
    ld c, e
    xor l
    ld d, d
    push bc
    ld d, d
    ld a, [bc]
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld c, [hl]
    ld c, e
    and [hl]
    ld c, e
    adc d
    ld d, d
    xor l
    ld d, d
    push bc
    ld d, d
    cp c
    ld d, d
    adc [hl]
    ld c, h
    nop
    ld d, e
    ld l, l
    ld c, e
    sbc b
    ld c, e
    adc d
    ld d, d
    push bc
    ld d, d
    ld a, a
    ld c, h
    cp b
    ld e, c
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    call $0a52
    ld c, e
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ld a, [bc]
    ld c, e
    sbc c
    ld b, [hl]
    ld bc, $6699
    ld a, [bc]
    ld c, e
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ld a, [bc]
    ld c, e
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ld a, [bc]
    ld c, e
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    adc [hl]
    ld c, h
    nop
    ld d, e
    ld l, l
    ld c, e
    sbc b
    ld c, e
    adc d
    ld d, d
    push bc
    ld d, d
    push bc
    call Call_029_4aec
    ld a, $02
    ld [$cd33], a
    ld hl, $53d7
    ld de, $cd34
    ld b, $0a
    call CopyHLtoDE
    ld a, [sCowFeedFlag]
    or a
    jr nz, jr_029_532c

    ld a, $10
    call Call_029_4879
    jr z, jr_029_532c

    ld hl, $53e1
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_532c:
    ld a, [sChickenFeedFlag]
    or a
    jr nz, jr_029_5344

    ld a, $11
    call Call_029_4879
    jr z, jr_029_5344

    ld hl, $53e6
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_5344:
    ld a, [$b8ab]
    or a
    jr nz, jr_029_535c

    ld a, $00
    call Call_029_4879
    jr z, jr_029_535c

    ld hl, $53eb
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_535c:
    ld a, [$b8b2]
    or a
    jr nz, jr_029_5374

    ld a, $01
    call Call_029_4879
    jr z, jr_029_5374

    ld hl, $53f0
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_5374:
    ld a, [$b945]
    cp $08
    jr c, jr_029_5393

    ld a, [$b8b1]
    or a
    jr nz, jr_029_5393

    ld a, $52
    call Call_029_4879
    jr z, jr_029_5393

    ld hl, $53f5
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_5393:
    ld hl, $b949
    ld b, $04

jr_029_5398:
    ld a, [hl]
    inc a
    jr nz, jr_029_53a9

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_029_5398

    jr jr_029_53b4

jr_029_53a9:
    ld hl, $53fa
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_53b4:
    ld hl, $b9a7
    ld b, $04

jr_029_53b9:
    ld a, [hl]
    inc a
    jr nz, jr_029_53ca

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_029_53b9

    jr jr_029_53d5

jr_029_53ca:
    ld hl, $53ff
    ld b, $05
    call CopyHLtoDE
    call Call_029_5065

jr_029_53d5:
    pop hl
    ret


    ld h, e
    ld a, c
    xor [hl]
    ld d, l
    ld d, b
    ld l, l
    ld a, c
    ld d, d
    ld d, [hl]
    ld d, h
    ld [hl], a
    ld a, c
    sbc c
    ld d, [hl]
    ld e, b
    add c
    ld a, c
    db $ed
    ld d, [hl]
    ld e, h
    adc e
    ld a, c
    ld b, c
    ld d, a
    ld h, h
    sub l
    ld a, c
    add l
    ld d, a
    ld h, b
    sbc a
    ld a, c
    ret


    ld d, a
    ld l, b
    xor c
    ld a, c
    dec c
    ld e, b
    ld l, h
    or e
    ld a, c
    ret c

    ld e, b
    ld [hl], b

Call_029_5404:
    push hl
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $57a0
    ld c, $3c
    ld de, $8800
    call Call_000_31a0
    ld hl, $52e9
    ld c, $3c
    ld de, $9000
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9500
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $8a00
    call Call_000_31a0
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9800
    call Call_000_31a0
    ld hl, $99a0
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9c22
    call Call_029_555b
    ld hl, $9c62
    call Call_029_555b
    ld hl, $9c22
    ld a, $f2
    ld [hl+], a
    ld a, $f3
    ld [hl+], a
    ld a, $f4
    ld [hl+], a
    ld a, $f5
    ld [hl+], a
    ld a, $f6
    ld [hl+], a
    ld a, $f4
    ld [hl+], a
    ld a, $f7
    inc hl
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $fa
    ld [hl+], a
    ld a, $f6
    ld [hl], a
    ld hl, $9c71
    ld a, $fb
    ld [hl], a
    ld hl, $40b1
    ld de, $8f20
    call Call_029_5552
    ld hl, $41a1
    ld de, $8f30
    call Call_029_5552
    ld hl, $42d1
    ld de, $8f40
    call Call_029_5552
    ld hl, $41e1
    ld de, $8f50
    call Call_029_5552
    ld hl, $42c1
    ld de, $8f60
    call Call_029_5552
    ld hl, $4051
    ld de, $8f70
    call Call_029_5552
    ld hl, $42e1
    ld de, $8f80
    call Call_029_5552
    ld hl, $4271
    ld de, $8f90
    call Call_029_5552
    ld hl, $41d1
    ld de, $8fa0
    call Call_029_5552
    ld hl, $4061
    ld de, $8fb0
    call Call_029_5552
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd30], a
    ld [$cd31], a
    ld [$cd32], a
    ld [$cd33], a
    ld [$cb5c], a
    ld a, $4c
    ld [$cd9a], a
    ld a, $9f
    ld [$cd9b], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $c000
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
    call Call_000_25c5
    ld a, $c3
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_029_5552:
    ld a, $31
    ld bc, $0010
    call Call_000_2308
    ret


Call_029_555b:
    xor a
    ld b, $10

jr_029_555e:
    ld [hl+], a
    dec b
    jr nz, jr_029_555e

    ret


    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $76b8
    ld c, $26
    ld de, $8800
    call Call_000_31a0
    ld hl, $6cf2
    ld c, $3e
    ld de, $9000
    call Call_000_31a0
    ld hl, $7c1a
    ld c, $3c
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
    ld a, $6d
    ld [$cd9a], a
    ld a, $9f
    ld [$cd9b], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $5608
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld de, $4695
    ld a, e
    ld [$cd6c], a
    ld a, d
    ld [$cd6d], a
    xor a
    ld [$cd6b], a
    ld [$cb5c], a
    ld hl, $c000
    ld bc, $00a0
    call ZeroOutHL
    ld a, $54
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


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    ret


    ld a, a
    ld c, h
    inc c
    ld h, d
    adc [hl]
    ld c, h
    sbc b
    ld c, h
    ld a, c
    ld c, h
    db $10
    ld d, [hl]

Call_029_5614:
    call Call_029_5627
    ld a, $e3
    ld [$c0a2], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_029_5627:
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $4001
    ld a, $31
    ld de, $9000
    ld bc, $0800
    call Call_000_2308
    ld hl, $4801
    ld a, $31
    ld de, $8800
    ld bc, $0800
    call Call_000_2308
    ld hl, $6a55
    ld c, $29
    ld de, $8000
    call Call_000_31a0
    ld hl, $7b00
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld hl, $9980
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call CopyHLtoDE
    ld hl, $5e7e
    ld de, $9821
    ld b, $0b
    call Call_029_5e35
    ld hl, $6322
    ld de, $9c41
    ld b, $03
    call Call_029_5e35
    call Call_029_580e
    ld hl, $57b8
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd63], a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
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
    call Call_029_580e
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $60
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $22
    call Call_000_25c5
    ret


    call Call_000_0d90
    call Call_029_573a
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_029_56f0
    call Call_029_570c
    ret


Call_029_56f0:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $5703
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


Call_029_570c:
    ld hl, $cd67
    inc [hl]
    ld a, [$cd67]
    bit 4, a
    ret nz

    ld hl, $5732
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $572d
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a
    ld [$0870], sp
    add b
    ld l, b
    ld [hl], b
    ld l, b
    add b

Call_029_573a:
    ld a, [$cd63]
    or a
    ret nz

    ld hl, $cd65
    ld b, $0c
    call Call_029_5e77
    ld b, $03
    inc hl
    call z, Call_029_5e77
    ld bc, $3868
    ld hl, $579a
    ld a, [sCatOrDog]
    or a
    jr z, jr_029_575c

    ld hl, $5794

jr_029_575c:
    ld a, [$cd66]
    add a
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_20de
    ld a, [$b8ea]
    or a
    jr z, jr_029_5792

    ld hl, $57a0
    dec a
    add a
    ld b, a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $6468
    call Call_000_20de
    ret


jr_029_5792:
    pop af
    ret


    add hl, hl
    ld h, h
    ld a, [hl-]
    ld h, h
    ld c, e
    ld h, h
    ld e, h
    ld h, h
    ld l, l
    ld h, h
    ld a, [hl]
    ld h, h
    push bc
    ld h, h
    adc a
    ld h, h
    xor b
    ld h, h
    db $10
    ld h, l
    sbc $64
    rst $30
    ld h, h
    ld e, e
    ld h, l
    add hl, hl
    ld h, l
    ld b, d
    ld h, l
    rra
    ld e, l
    ld a, [hl]
    ld e, [hl]
    ld c, $58
    add b
    ld e, l
    call nz, $d657
    ld d, a
    add sp, $57
    db $fc
    ld d, a
    ld a, [$1f57]
    ld e, l
    ld a, [bc]
    ld h, b
    rst $30
    ld e, b
    add b
    ld e, l
    call nz, $c457
    ld d, a
    call nz, $c457
    ld d, a
    or d
    ld d, a
    rra
    ld e, l
    sub [hl]
    ld h, c
    adc $5a
    add b
    ld e, l
    sub $57
    sub $57
    sub $57
    sub $57
    or d
    ld d, a
    rra
    ld e, l
    ld b, h
    ld e, a
    ld a, a
    ld e, h
    add b
    ld e, l
    call nz, $d657
    ld d, a
    xor $57
    db $fc
    ld d, a
    or d
    ld d, a
    inc h
    ld e, [hl]
    rra
    ld e, l
    ld e, h
    ld h, d
    pop bc
    ld e, h
    add b
    ld e, l
    call nz, $d657
    ld d, a
    add sp, $57
    ld [bc], a
    ld e, b
    or d
    ld d, a

Call_029_580e:
    ld hl, sPlayerName
    ld de, $9821
    ld b, $04
    call CopyHLtoDE
    ld hl, sPlayerMoney
    ld de, $ccca
    ld b, $03
    call CopyHLtoDE
    call Call_000_3268
    ld hl, $cccd
    ld de, $986d
    ld b, $05
    call CopyHLtoDE
    ld hl, $1a02
    ld a, [sCatOrDog]
    or a
    jr z, jr_029_583e

    ld hl, $2803

jr_029_583e:
    ld a, l
    ld [$98a6], a
    ld a, h
    ld [$98a7], a
    ld hl, $af2d
    ld a, [sCatOrDog]
    or a
    jr z, jr_029_5852

    ld hl, $af20

jr_029_5852:
    ld a, l
    ld [$98a8], a
    ld a, h
    ld [$98a9], a
    ld hl, sPetName
    ld de, $98e6
    ld b, $04
    call CopyHLtoDE
    ld hl, $0eaf
    ld a, [$b8ea]
    or a
    jp z, Jump_029_58d5

    cp $03
    jr z, jr_029_5876

    ld hl, $0eaf

jr_029_5876:
    ld de, $588c
    ld hl, $9927
    ld b, $09

jr_029_587e:
    call SyncToBlankPeriod
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_029_587e

    ld hl, $0d0e
    jr @+$0b

    ld [de], a
    ld a, [de]
    dec e
    dec e

jr_029_5890:
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_029_5890

    ld [$feb8], a
    inc bc
    jr z, jr_029_58b2

    ld hl, $9927
    ld b, $09

jr_029_58a1:
    call SyncToBlankPeriod
    ld a, $af
    ld [hl+], a
    dec b
    jr nz, jr_029_58a1

    ld a, $af
    ld [$9930], a
    ld hl, $afaf

jr_029_58b2:
    ld a, l
    ld [$9931], a
    ld a, h
    ld [$9932], a
    ld hl, $b8e6
    ld de, $9966
    ld b, $04
    call CopyHLtoDE
    xor a
    ld [$cd63], a
    ld hl, $6322
    ld de, $9c41
    ld b, $03
    call Call_029_5e35
    ret


Jump_029_58d5:
    ld hl, $9900
    ld de, $9920
    ld b, $14
    call CopyHLtoDE
    xor a
    ld [$cd63], a
    ld hl, $6322
    ld de, $9c41
    ld b, $03
    call Call_029_5e35
    ret


    ret


    call Call_029_63f8
    jp Jump_029_58fa


    call Call_029_63ef

Jump_029_58fa:
    ld hl, $0000
    call Call_029_63d4
    ld c, $16
    call Multiply8Bit
    ld a, h
    ld b, a
    ld a, l
    ld c, a
    ld e, $00
    ld hl, $b949
    ld a, c
    add l
    ld l, a
    ld a, b
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_029_59e4

    push hl
    inc hl
    ld de, $9822
    ld b, $04
    call CopyHLtoDE
    pop hl
    push hl
    ld a, [hl]
    add a
    ld c, a
    add a
    add a
    add c
    ld b, a
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, b
    ld hl, $5a6d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9827
    ld b, $0a
    call CopyHLtoDE
    pop af
    add a
    add a
    add a
    ld hl, $5a9f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9867
    ld b, $08
    call CopyHLtoDE
    pop hl
    push hl
    ld a, [hl]
    cp $02
    jp z, Jump_029_5974

    ld hl, $5a51
    ld de, $98a7
    ld b, $0b
    call CopyHLtoDE
    jp Jump_029_59be


Jump_029_5974:
    pop hl
    push hl
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jp z, Jump_029_59a9

    pop hl
    push hl
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $a0
    jr nc, jr_029_599d

    cp $50
    jr nc, jr_029_59a5

    cp $0a
    jr nc, jr_029_59a1

    jr jr_029_59a9

jr_029_599d:
    ld a, $03
    jr jr_029_59ab

jr_029_59a1:
    ld a, $01
    jr jr_029_59ab

jr_029_59a5:
    ld a, $02
    jr jr_029_59ab

Jump_029_59a9:
jr_029_59a9:
    ld a, $00

jr_029_59ab:
    pop hl
    push hl
    ld hl, $5ab7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $98b1
    ld b, $01
    call CopyHLtoDE

Jump_029_59be:
    pop hl
    ld a, [hl]
    cp $03
    jp nz, Jump_029_5a05

    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $16
    sub [hl]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996a], a
    ld a, h
    ld [$996b], a
    jp Jump_029_5a1b


Jump_029_59e4:
    ld hl, $5a43
    ld de, $9822
    ld b, $08
    call CopyHLtoDE
    ld hl, $5a4b
    ld de, $9867
    ld b, $06
    call CopyHLtoDE
    ld hl, $5a51
    ld de, $98a7
    ld b, $0a
    call CopyHLtoDE

Jump_029_5a05:
    ld hl, $5a5b
    ld de, $9942
    ld b, $0e
    call CopyHLtoDE
    ld hl, $5a67
    ld de, $996d
    ld b, $06
    call CopyHLtoDE

Jump_029_5a1b:
    ld hl, $b93a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld hl, $cccf
    ld de, $9928
    ld b, $03
    call CopyHLtoDE
    ld a, $01
    ld [$cd63], a
    ld hl, $6358
    ld de, $9c41
    ld b, $03
    call Call_029_5e35
    call Call_029_6417
    ret


    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld [bc], a
    ld a, [de]
    dec h
    rra
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld e, $1d
    rst $28
    ld [bc], a
    jr z, jr_029_5aae

    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_029_5ab4

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld a, [de]
    dec l
    ld e, $1d
    rst $28
    ld [bc], a
    jr z, @+$32

    rst $28
    ld [de], a
    ld [hl+], a
    inc e
    inc h
    rst $28
    ld [bc], a
    jr z, @+$32

    rst $28
    rst $28
    rlca
    ld e, $1a
    dec h
    dec l
    ld hl, $ef32
    inc d
    daa
    ld hl, $291a
    add hl, hl
    ld [hl-], a

jr_029_5aae:
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_029_5ab4:
    ld b, h
    ld b, h
    ld b, h
    rst $28
    ld [de], a
    inc c
    dec bc
    ld a, [$cd63]
    and a
    jr nz, jr_029_5ac5

    xor a
    ld [$cd64], a

jr_029_5ac5:
    ld hl, $0000
    call Call_029_63f8
    jp Jump_029_5ade


    ld a, [$cd63]
    and a
    jr nz, jr_029_5ad8

    xor a
    ld [$cd64], a

jr_029_5ad8:
    ld hl, $0000
    call Call_029_63ef

Jump_029_5ade:
    call Call_029_63d4
    ld c, $0c
    call Multiply8Bit
    ld a, l
    ld c, a
    ld a, h
    ld b, a
    ld hl, $b9a7
    ld e, $00
    ld a, c
    add l
    ld l, a
    ld a, b
    adc h
    ld h, a
    push hl
    call Call_029_63d4
    add a
    add a
    ld hl, $5c00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9822
    ld b, $04
    call CopyHLtoDE
    pop hl
    push hl
    ld hl, $5c10
    ld de, $9826
    ld b, $07
    call CopyHLtoDE
    pop hl
    ld a, [hl]
    cp $ff
    jp z, Jump_029_5b55

    push hl
    ld a, [hl]
    add a
    add a
    ld b, a
    add a
    add b
    ld hl, $5c17
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    pop hl
    push hl
    inc hl
    inc hl
    ld a, [hl]
    add a
    add a
    add a
    ld hl, $5c47
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE
    pop hl
    jp Jump_029_5bc2


Jump_029_5b55:
    ld a, [$b9a5]
    and a
    jp z, Jump_029_5bac

    ld hl, $b9a7
    ld c, $00

jr_029_5b61:
    ld a, [hl]
    cp $ff
    jr z, jr_029_5b77

    inc c
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    cp $04
    jr nz, jr_029_5b61

    jp Jump_029_5bac


jr_029_5b77:
    call Call_029_63d4
    cp c
    jp nz, Jump_029_5bac

    ld hl, $5c17
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    ld hl, $5c47
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE
    ld a, [$b9a5]
    and $7f
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996a], a
    ld a, h
    ld [$996b], a
    jr jr_029_5bd8

Jump_029_5bac:
    ld hl, $5c57
    ld de, $9866
    ld b, $0c
    call CopyHLtoDE
    ld hl, $5c63
    ld de, $98a6
    ld b, $08
    call CopyHLtoDE

Jump_029_5bc2:
    ld hl, $5c6b
    ld de, $9942
    ld b, $10
    call CopyHLtoDE
    ld hl, $5c79
    ld de, $996d
    ld b, $06
    call CopyHLtoDE

jr_029_5bd8:
    ld hl, $b93a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_325c
    ld hl, $cccf
    ld de, $9908
    ld b, $03
    call CopyHLtoDE
    ld a, $02
    ld [$cd63], a
    ld hl, $638e
    ld de, $9c41
    ld b, $03
    call Call_029_5e35
    call Call_029_6417
    ret


    dec [hl]
    inc l
    dec l
    rst $28
    ld [hl], $27
    dec e
    rst $28
    scf
    dec hl
    dec e
    rst $28
    jr c, jr_029_5c3b

    ld hl, $02ef
    ld hl, $1c22
    inc h
    ld e, $27
    inc b
    jr nz, jr_029_5c3a

    rst $28
    rst $28
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
    rst $28
    rst $28
    rst $28
    rst $28

jr_029_5c3a:
    rst $28

jr_029_5c3b:
    ld b, $28
    dec h
    dec e
    rst $28
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    rlca
    ld e, $1a
    dec h
    dec l
    ld hl, $ef32
    inc d
    daa
    ld hl, $291a
    add hl, hl
    ld [hl-], a
    rst $28
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, [sNumCroissant]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$9869], a
    ld a, h
    ld [$986a], a
    ld a, [sNumRiceBall]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98e9], a
    ld a, h
    ld [$98ea], a
    ld a, [sNumMeatDumpling]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$9969], a
    ld a, h
    ld [$996a], a
    ld a, $03
    ld [$cd63], a
    ret


    ld a, [sNumWildGrapeJuice]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$986b], a
    ld a, h
    ld [$986c], a
    ld a, [sNumGreenTea]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98eb], a
    ld a, h
    ld [$98ec], a
    ld a, [$b8cc]
    call Call_000_3304
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996b], a
    ld a, h
    ld [$996c], a
    ld a, [$b942]
    or a
    jr nz, jr_029_5d19

    ld a, $af
    ld b, $10
    ld hl, $9962

jr_029_5d0a:
    ld [hl+], a
    dec b
    jr nz, jr_029_5d0a

    ld a, $ef
    ld b, $10
    ld hl, $9922

jr_029_5d15:
    ld [hl+], a
    dec b
    jr nz, jr_029_5d15

jr_029_5d19:
    ld a, $04
    ld [$cd63], a
    ret


Call_029_5d1f:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    push hl
    ld a, [$dd00]
    or a
    jr z, jr_029_5d34

    ld hl, $5d60
    call Call_000_23e9

jr_029_5d34:
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld de, $9821
    ld b, $0b
    call Call_029_5e35
    pop hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld bc, $5d4c
    push bc
    jp hl


    call Call_000_2273
    ld a, [$dd00]
    or a
    jr z, jr_029_5d5e

    call Call_000_2424
    ld hl, $5d70
    call Call_000_23e9

jr_029_5d5e:
    pop hl
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
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_029_5df3

    bit 1, a
    jp nz, Jump_029_5e13

    ld bc, $cd64
    bit 4, a
    jr nz, jr_029_5ddf

    bit 5, a
    jr nz, jr_029_5dcb

    bit 6, a
    jr nz, jr_029_5da3

    bit 7, a
    jr nz, jr_029_5db7

    dec hl
    dec hl
    ret


jr_029_5da3:
    ld a, [bc]
    bit 0, a
    jr z, jr_029_5db4

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_029_5db4:
    dec hl
    dec hl
    ret


jr_029_5db7:
    ld a, [bc]
    bit 0, a
    jr nz, jr_029_5dc8

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_029_5dc8:
    dec hl
    dec hl
    ret


jr_029_5dcb:
    ld a, [bc]
    bit 1, a
    jr z, jr_029_5ddc

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_029_5ddc:
    dec hl
    dec hl
    ret


jr_029_5ddf:
    ld a, [bc]
    bit 1, a
    jr nz, jr_029_5df0

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_25ce
    xor a
    ld [$cd67], a

jr_029_5df0:
    dec hl
    dec hl
    ret


jr_029_5df3:
    ld a, $42
    call Call_000_25cb
    ld a, [$cd63]
    ld b, a
    ld a, [$cd64]
    inc a
    cp b
    jr z, jr_029_5e05

    ld e, a
    ld a, e

jr_029_5e05:
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


Jump_029_5e13:
    ld a, $51
    call Call_000_25cb
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


    ld h, b
    ld l, c
    xor a
    ld [$cb56], a
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_029_5e35:
jr_029_5e35:
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
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_029_5e35

    ret


Call_029_5e77:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    xor a
    xor a
    xor a
    xor a
    ld d, e
    xor a
    xor a
    rrca
    jr z, @+$2e

    inc l
    ld e, $2c
    inc l
    ld [hl+], a
    jr z, jr_029_5eb6

    inc l
    rst $28
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    ld a, [de]
    dec l
    ld e, $2c
    dec l
    xor a
    dec b
    ld l, $27
    dec e
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, $af
    xor a

jr_029_5eb6:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld e, $2d
    xor a
    xor a
    xor a
    xor a

jr_029_5ecd:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rlca
    jr z, jr_029_5f3c

    inc l
    ld e, $af
    inc l
    ld a, [de]
    dec e
    dec e
    dec h
    ld e, $1b
    ld a, [de]
    jr nz, jr_029_5ecd

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_029_5f3c:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    dec hl
    jr z, jr_029_5f6b

    inc l
    inc l
    ld a, [de]
    daa
    dec l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_029_5f6b:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld de, $1c22
    ld e, $af

jr_029_5f92:
    ld bc, $251a
    dec h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld e, $1a
    dec l
    xor a
    inc bc
    ld l, $26
    add hl, hl
    dec h
    ld [hl+], a
    daa
    jr nz, jr_029_5f92

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld [hl+], a
    dec h
    inc h
    xor a
    ld [de], a
    ld [hl+], a
    inc sp
    ld e, $43
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    xor a
    dec b
    jr z, jr_029_609f

    dec e
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_029_609f:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    inc d
    daa
    dec l
    ld [hl+], a
    dec h
    xor a
    inc bc
    ld e, $25
    ld [hl+], a
    cpl
    ld e, $2b
    ld [hl-], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    ld d, b
    inc l
    ld d, c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $2b
    dec hl
    ld e, $27
    dec l
    xor a
    dec b
    jr z, jr_029_622b

    dec e
    ld e, $2b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_029_622b:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc d
    daa
    dec l
    ld [hl+], a
    dec h
    xor a
    inc bc
    ld e, $25
    ld [hl+], a
    cpl
    ld e, $2b
    ld [hl-], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    ld d, b
    inc l
    ld d, c
    xor a
    ld d, $22
    dec h
    dec e
    xor a
    ld b, $2b
    ld a, [de]
    add hl, hl
    ld e, $af
    add hl, bc
    ld l, $22
    inc e
    ld e, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, $2b
    ld e, $1e
    daa
    xor a
    inc de
    ld e, $1a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    ld [hl+], a
    dec h
    inc h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld l, $29
    inc l
    xor a
    xor a
    ld [bc], a
    jr z, jr_029_6356

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec b
    jr z, jr_029_635a

    dec e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $1c22
    inc h
    ld e, $27
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    dec hl
    ld [hl+], a

jr_029_6356:
    daa
    inc h
    xor a
    dec [hl]

jr_029_635a:
    inc l
    dec l
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], $27
    dec e
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    scf
    dec hl
    dec e
    rst $28
    rst $28
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    jr c, jr_029_63b8

    ld hl, $efef
    xor a
    dec [hl]
    inc l
    dec l
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], $27
    dec e
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    scf
    dec hl
    dec e
    rst $28
    rst $28

jr_029_63b8:
    rst $28
    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    jr c, jr_029_63ee

    ld hl, $efef
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

Call_029_63d4:
    ld a, [$cd64]
    bit 7, a
    jr z, jr_029_63de

    and $0f
    ret


jr_029_63de:
    and $0f
    cp $01
    jr z, jr_029_63e9

    cp $02
    jr z, jr_029_63ec

    ret


jr_029_63e9:
    ld a, $02
    ret


jr_029_63ec:
    ld a, $01

jr_029_63ee:
    ret


Call_029_63ef:
    ld a, [$cd64]
    res 7, a
    ld [$cd64], a
    ret


Call_029_63f8:
    ld a, [$cd64]
    and $0f
    swap a
    ld b, a
    ld a, [$cd64]
    ld hl, $cd9c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cd64], a
    or b
    set 7, a
    ld [$cd64], a
    ret


Call_029_6417:
    ld a, [$cd64]
    bit 7, a
    jr nz, jr_029_641f

    ret


jr_029_641f:
    res 7, a
    swap a
    and $0f
    ld [$cd64], a
    ret


    ld hl, sp+$00
    ld de, $f800
    ld hl, sp+$10
    nop
    ldh a, [rP1]
    ld bc, $f000
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
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
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    ldh a, [rP1]
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    add b
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_029_6475

jr_029_6475:
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
    ld hl, sp+$06
    dec e
    nop
    ld hl, sp-$02
    inc e
    nop
    ld hl, sp-$0a
    rrca
    nop
    ldh a, [rTMA]
    ld c, $00
    ldh a, [$fffe]
    dec c
    nop
    ldh a, [$fff6]
    inc c
    nop
    add b
    ld hl, sp+$06
    inc h
    nop
    ld hl, sp-$02
    inc hl
    nop
    ld hl, sp-$0a
    ld [hl+], a
    nop
    ldh a, [rTMA]
    ld hl, $f000
    cp $20
    nop
    ldh a, [$fff6]
    rra
    nop
    add sp, -$09
    ld e, $00
    add b
    ld hl, sp+$06
    ld a, [hl+]
    nop
    ld hl, sp-$02
    add hl, hl
    nop
    ld hl, sp-$0a
    jr z, jr_029_64d1

jr_029_64d1:
    ldh a, [rTMA]
    daa
    nop
    ldh a, [$fffe]
    ld h, $00
    ldh a, [$fff6]
    dec h
    nop
    add b
    ld sp, hl
    rlca
    jr nc, jr_029_64e2

jr_029_64e2:
    ld sp, hl
    rst $38
    cpl
    nop
    pop af
    rlca
    ld l, $00
    pop af
    rst $38
    dec l
    nop
    pop af
    rst $30
    inc l
    nop
    jp hl


    ld a, [$002b]
    add b
    jp hl


    ld sp, hl
    ld sp, $f900
    inc bc
    ld [hl], $00
    ld sp, hl
    ei
    dec [hl]
    nop
    pop af
    rlca
    inc [hl]
    nop
    pop af
    rst $38
    inc sp
    nop
    pop af
    rst $30
    ld [hl-], a
    nop
    add b
    add sp, -$07
    dec hl
    nop
    ld hl, sp+$06
    dec sp
    nop
    ld hl, sp-$02
    ld a, [hl-]
    nop
    ldh a, [$ff08]
    add hl, sp
    nop
    ldh a, [rP1]
    jr c, jr_029_6524

jr_029_6524:
    ldh a, [$fff8]
    scf
    nop
    add b
    jp hl


    ld a, [$002b]
    ld sp, hl
    rlca
    ccf
    nop
    ld sp, hl
    rst $38
    ld a, $00
    pop af
    rlca
    dec a
    nop
    pop af
    rst $38
    inc a
    nop
    pop af
    rst $30
    inc l
    nop
    add b
    ld sp, hl
    inc bc
    ld b, e
    nop
    ld sp, hl
    ei
    ld b, d
    nop
    pop af
    rlca
    ld b, c
    nop
    pop af
    rst $38
    ld b, b
    nop
    jp hl


    ld sp, hl
    ld sp, $f100
    rst $30
    ld [hl-], a
    nop
    add b
    ld hl, sp+$06
    ld b, a
    nop
    ld hl, sp-$02
    ld b, [hl]
    nop
    add sp, -$07
    dec hl
    nop
    ldh a, [$fff8]
    scf
    nop
    ldh a, [$ff08]
    ld b, l
    nop
    ldh a, [rP1]
    ld b, h
    nop
    add b
    call Call_029_5627
    ld hl, $7b00
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld hl, $b949
    ld c, $16
    call Call_029_65d6
    ld a, $af
    ld [$cb5c], a
    ld a, $e9
    ld [$cd9b], a
    ld a, $ea
    ld [$cd9a], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $65d2
    call Call_029_5d1f
    call SafeTurnOffLCDDuringVBlank
    ld a, $af
    ld hl, $9922
    ld b, $10

jr_029_65b3:
    ld [hl+], a
    dec b
    jr nz, jr_029_65b3

    ld hl, $665e
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    ret nc

    ld h, b
    ldh a, [$ff58]

Call_029_65d6:
    push hl
    ld hl, $cd9f
    ld a, $ff
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    xor a
    ld [$cda0], a
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_029_65e9:
    ld a, [hl]
    cp $ff
    jr z, jr_029_65fa

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cda0]
    inc a
    ld [$cda0], a

jr_029_65fa:
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_029_65e9

    ret


    call Call_000_0d90
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_33c4
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $6656
    call Call_029_662b
    ret


Call_029_662b:
    push hl
    ld hl, $cd67
    inc [hl]
    pop hl
    ld a, [$cd65]
    or a
    jr z, jr_029_663d

    ld a, [$cd67]
    bit 4, a
    ret nz

jr_029_663d:
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $6651
    call Call_000_20de
    ret


    nop
    nop
    xor l
    nop
    add b
    ld [$0808], sp
    jr jr_029_6663

    jr z, jr_029_6665

    jr c, jr_029_66de

    ld c, h
    ld sp, $ad58

jr_029_6663:
    ld h, [hl]
    adc [hl]

jr_029_6665:
    ld c, h
    sbc [hl]
    ld h, [hl]
    sbc b
    ld h, [hl]
    rra
    ld e, l
    ld a, [bc]
    ld h, b
    pop af
    ld e, b
    sbc e
    ld h, [hl]
    ld a, a
    ld c, h
    ld c, a
    ld e, b
    or h
    ld h, [hl]
    ld [hl], $67
    ld l, b
    ld h, [hl]
    add b
    ld h, [hl]
    adc h
    ld h, [hl]
    and [hl]
    ld h, [hl]
    ld a, a
    ld c, h
    ld l, l
    ld e, b
    adc [hl]
    ld c, h
    ld a, c
    ld c, h
    sub h
    ld h, [hl]
    ld a, a
    ld c, h
    jp nc, Jump_029_7958

    ld c, h
    sub h
    ld h, [hl]
    ld a, c
    ld c, h
    sub h
    ld h, [hl]
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ret


    ld a, $01
    ld [$cd65], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd65], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd64], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_029_66cc

    bit 1, a
    jr nz, jr_029_66ed

    bit 6, a
    jr nz, jr_029_66fc

    bit 7, a
    jr nz, jr_029_6715

    dec hl
    dec hl
    ret


jr_029_66cc:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $66d5
    push bc
    jp hl


    pop hl
    jr nz, jr_029_66e5

    ld a, $42
    call Call_000_25cb
    inc hl

jr_029_66de:
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_66e5:
    ld a, $51
    call Call_000_25cb
    dec hl
    dec hl
    ret


jr_029_66ed:
    ld a, $51
    call Call_000_25cb
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_66fc:
    ld a, [$cd64]
    or a
    jr z, jr_029_6733

    dec a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_6715:
    ld a, [$cda0]
    dec a
    ld b, a
    ld a, [$cd64]
    cp b
    jr nc, jr_029_6733

    inc a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_25ce
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_029_6733:
    dec hl
    dec hl
    ret


    ld hl, $676b
    call Call_029_674d
    ld a, [hl]
    cp $02
    ret


    ld hl, $6773
    call Call_029_674d
    ld a, [hl]
    cp $03
    ret z

    cp $02
    ret


Call_029_674d:
    push hl
    ld hl, $cd9c
    ld a, [$cd64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    call Call_029_6760
    ret


Call_029_6760:
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


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c
    call Call_029_5614
    ld hl, $7b00
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld hl, $b9a7
    ld c, $0c
    call Call_029_65d6
    ld a, $83
    ld [$c0a2], a
    ld a, $af
    ld [$cb5c], a
    ld a, $e9
    ld [$cd9b], a
    ld a, $ea
    ld [$cd9a], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $65d2
    call Call_029_5d1f
    ld hl, $67ef
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
    call Call_029_46e0
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $3b
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $67e7
    call Call_029_662b
    ret


    ld [$0808], sp
    jr jr_029_67f4

    jr z, jr_029_67f6

    jr c, jr_029_686f

    ld c, h
    db $fc
    ld e, b
    xor l

jr_029_67f4:
    ld h, [hl]
    adc [hl]

jr_029_67f6:
    ld c, h
    sbc [hl]
    ld h, [hl]
    sbc b
    ld h, [hl]
    rra
    ld e, l
    sub [hl]
    ld h, c
    cp e
    ld e, d
    sbc e
    ld h, [hl]
    ld a, a
    ld c, h
    ld a, [de]
    ld e, c
    or h
    ld h, [hl]
    ld b, b
    ld h, a
    ld sp, hl
    ld h, a
    ld de, $1d68
    ld l, b
    and [hl]
    ld h, [hl]
    ld a, a
    ld c, h
    jr c, @+$5b

    adc [hl]
    ld c, h
    ld a, c
    ld c, h
    dec h
    ld l, b
    ld a, a
    ld c, h
    sbc l
    ld e, c
    ld a, c
    ld c, h
    dec h
    ld l, b
    ld a, c
    ld c, h
    dec h
    ld l, b
    ld hl, $684d
    ld de, $cd72
    ld b, $20
    call CopyHLtoDE
    ld a, [$cb68]
    add a
    ld hl, $686d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld de, $cd74
    call CopyHLtoDE
    ret


    rst $28
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rst $28
    xor a
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
    cp l
    ld l, b

jr_029_686f:
    jp z, $d268

    ld l, b
    rst $18
    ld l, b
    and $68
    db $ed
    ld l, b
    ldh a, [c]
    ld l, b
    ld sp, hl
    ld l, b
    dec b
    ld l, c
    rrca
    ld l, c
    dec e
    ld l, c
    ld h, $69
    dec [hl]
    ld l, c
    ld b, h
    ld l, c
    ld c, c
    ld l, c
    ld c, [hl]
    ld l, c
    ld d, e
    ld l, c
    ld e, b
    ld l, c
    ld e, l
    ld l, c
    ld h, d
    ld l, c
    ld h, a
    ld l, c
    ld l, h
    ld l, c
    ld [hl], c
    ld l, c
    halt
    ld l, c
    ld a, e
    ld l, c
    add b
    ld l, c
    add l
    ld l, c
    adc d
    ld l, c
    adc a
    ld l, c
    sub h
    ld l, c
    sbc c
    ld l, c
    sbc [hl]
    ld l, c
    and e
    ld l, c
    xor b
    ld l, c
    xor l
    ld l, c
    or d
    ld l, c
    or a
    ld l, c
    cp h
    ld l, c
    pop bc
    ld l, c
    add $69
    inc c
    ld [de], a
    dec l
    jr z, @+$2b

    rst $28
    rrca
    dec h
    ld a, [de]
    ld [hl-], a
    ld [hl+], a
    daa
    jr nz, @+$09

    ld c, $29
    ld e, $27
    ld [hl+], a
    daa
    jr nz, jr_029_68df

    inc b
    daa
    dec l
    ld e, $2b
    rst $28
    nop
    rst $28
    dec c
    ld a, [de]
    ld h, $1e

jr_029_68df:
    ld b, $12
    add hl, hl
    dec hl
    ld [hl+], a
    daa
    jr nz, jr_029_68ed

    ld [de], a
    ld l, $26
    ld h, $1e
    dec hl

jr_029_68ed:
    inc b
    dec b
    ld a, [de]
    dec h
    dec h
    ld b, $16
    ld [hl+], a
    daa
    dec l
    ld e, $2b
    dec bc
    rlca
    ld a, [de]
    add hl, hl
    add hl, hl
    ld [hl-], a
    rst $28
    inc b
    cpl
    ld e, $27
    dec l
    add hl, bc
    ld [de], a
    ld a, [de]
    dec e
    rst $28
    inc b
    cpl
    ld e, $27
    dec l
    dec c
    ld [de], a
    dec l
    ld a, [de]
    rra
    rra
    rst $28
    ld [bc], a
    dec hl
    ld e, $1d
    ld [hl+], a
    dec l
    inc l
    ld [$3104], sp
    inc e
    ld hl, $271a
    jr nz, jr_029_6944

    ld c, $07
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    ld [de], a
    add hl, hl
    dec hl
    ld [hl+], a
    dec l
    ld e, $2c
    ld c, $06
    dec hl
    ld a, [de]
    daa
    dec e
    add hl, hl
    ld a, [de]
    nop
    add hl, hl
    add hl, hl
    ld e, $1a
    dec hl
    inc l

jr_029_6944:
    inc b
    inc de
    jr z, jr_029_6978

    daa
    inc b
    ld [de], a
    inc b
    inc [hl]
    inc [hl]
    inc b
    ld [de], a
    inc b
    inc [hl]
    dec [hl]
    inc b
    ld [de], a
    inc b
    inc [hl]
    ld [hl], $04
    ld [de], a
    inc b
    inc [hl]
    scf
    inc b
    ld [de], a
    inc b
    inc [hl]
    jr c, jr_029_6967

    ld [de], a
    inc b
    inc [hl]
    add hl, sp

jr_029_6967:
    inc b
    ld [de], a
    inc b
    inc [hl]
    ld a, [hl-]
    inc b
    ld [de], a
    inc b
    inc [hl]
    dec sp
    inc b
    ld [de], a
    inc b
    inc [hl]
    inc a
    inc b
    ld [de], a

jr_029_6978:
    inc b
    inc [hl]
    dec a
    inc b
    ld [de], a
    inc b
    dec [hl]
    inc [hl]
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec [hl]
    inc b
    ld [de], a
    inc b
    dec [hl]
    ld [hl], $04
    ld [de], a
    inc b
    dec [hl]
    scf
    inc b
    ld [de], a
    inc b
    dec [hl]
    jr c, jr_029_6999

    ld [de], a
    inc b
    dec [hl]
    add hl, sp

jr_029_6999:
    inc b
    ld [de], a
    inc b
    dec [hl]
    ld a, [hl-]
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec sp
    inc b
    ld [de], a
    inc b
    dec [hl]
    inc a
    inc b
    ld [de], a
    inc b
    dec [hl]
    dec a
    inc b
    ld [de], a
    inc b
    ld [hl], $34
    inc b
    ld [de], a
    inc b
    ld [hl], $35
    inc b
    ld [de], a
    inc b
    ld [hl], $36
    inc b
    ld [de], a
    inc b
    ld [hl], $37
    inc b
    ld [de], a
    inc b
    ld [hl], $38
    inc b
    ld [de], a
    inc b
    ld [hl], $39
    ld a, [$cb68]
    add a
    ld hl, $6a05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $03
    jr z, jr_029_69f1

    cp $02
    jr z, jr_029_69fb

    cp $01
    jr z, jr_029_6a00

    push bc
    call Call_000_2527
    pop bc
    ld a, b
    call Call_000_25c5
    ret


jr_029_69f1:
    push bc
    call Call_000_2527
    pop bc
    ld a, b
    call Call_000_25c8
    ret


jr_029_69fb:
    ld a, b
    call Call_000_25cb
    ret


jr_029_6a00:
    ld a, b
    call Call_000_25ce
    ret


    ld c, l
    inc b
    nop
    inc b
    inc b
    inc b
    ld [$0b03], sp
    inc b
    rrca
    inc b
    inc de
    inc b
    rla
    inc b
    dec de
    inc bc
    ld e, $04
    ld [hl+], a
    inc b
    ld h, $04
    ld a, [hl+]
    inc b
    ld d, h
    inc b
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0133
    inc [hl]
    ld bc, $0135
    ld [hl], $01
    scf
    ld bc, $0238
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $013d
    ld a, $01
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0242
    ld b, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld c, b
    ld bc, $0251
    ld d, e
    ld bc, $0158
    add b
    inc b
    cp $15
    nop
    ld a, $00
    ld b, c
    ld a, $a4
    ld e, e
    ld h, h
    db $fd
    dec de
    daa
    ld bc, $0080
    ld [hl], b
    add b
    ld c, [hl]
    or b
    sbc $c9
    ld bc, $7fb0
    ld sp, hl
    ld a, $c5
    ld bc, $8060
    cp a
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
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
    push bc
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
    inc de
    ld b, $4c
    nop
    ld l, [hl]
    inc b
    ld e, e
    rst $18
    ld h, $6d
    ld a, $7f
    ld [de], a
    ld de, $1807
    nop
    rst $38
    jr c, @+$12

    ld [hl], b
    jr nz, jr_029_6b1d

    jr nz, @+$3a

    db $10
    ei
    inc e
    ld [$01a7], sp
    ld a, [hl]
    rla
    ld a, c
    cpl
    ld [hl], $ff
    dec e
    nop
    nop
    inc c
    nop
    ld c, $04
    ld c, $ff
    inc b
    rlca
    ld [bc], a
    add a
    ld [bc], a
    ld h, a
    add d
    ld e, a
    db $fd
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    call c, $b608
    ld c, h
    rst $38
    jp c, $fe7c

    inc h
    nop
    nop
    inc bc
    nop
    rst $28
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, c
    ld [bc], a
    ld c, $04
    ld a, h
    rst $38
    ld [$0006], sp
    rrca
    inc b
    dec bc
    rlca
    rrca
    rst $38
    rlca
    rrca
    dec b
    rrca
    dec b
    rla
    dec c
    rra
    rst $38
    rrca
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    ret nc

    rst $38
    and b
    xor h
    ret nc

    rst $18
    ldh [$ffe3], a
    rst $38
    ld a, a
    db $fd
    rst $38
    daa
    ld c, $c0
    nop
    or b
    ret nz

    add sp, -$30
    rst $30
    ld d, $0f
    rrca
    adc d
    rrca

jr_029_6b1d:
    or c
    ld a, [hl]
    ld hl, sp+$3f
    rst $38
    cp h
    ld a, a
    ld e, d
    dec a
    ld a, $01
    dec bc
    inc b
    cp l
    dec b
    ldh [rNR10], a
    add l
    ld a, d
    ld [bc], a
    db $fc
    inc hl
    nop
    inc h
    rst $38
    ret c

    call c, $d888
    nop
    cp h
    ld a, a
    ld e, e
    cp a
    inc a
    ld a, $01
    ld d, $0b
    dec bc
    and h
    ld [de], a
    ld b, $ff
    ld hl, sp+$0c
    ldh a, [rDIV]
    ld hl, sp-$0a
    inc c
    inc c
    or $a4
    inc de
    or b
    ld a, a
    dec b
    inc b
    ld c, $05
    rlca
    ld bc, $01ff
    nop

jr_029_6b5f:
    ld c, $f0
    ld b, $fc
    inc b
    ld hl, sp+$7f
    jr @-$1e

    ld h, b
    add b
    ld b, b
    add b
    add b
    ld b, b
    inc d
    cp $61
    dec c
    scf
    dec e
    dec e
    inc bc
    rlca
    ld bc, $ff0b
    dec b
    ld c, $03
    inc bc
    nop
    cp $04
    ld d, [hl]
    rst $38
    db $fc
    ld d, h
    ld hl, sp-$44
    ld hl, sp+$74
    cp b
    db $fc
    rst $38
    db $10
    add sp, $30
    ld [hl], b
    nop
    rra
    inc bc
    rra
    ei
    ld a, [bc]
    ld c, $88
    jr @-$28

    db $fc
    db $f4
    cp b
    db $fc
    rst $38
    jr c, jr_029_6b5f

    ld e, h
    ld d, [hl]
    inc l
    inc a
    ld [$fe08], sp
    ldh [rNR24], a
    db $fd
    ld l, $f2
    ld e, a
    ld l, [hl]
    dec sp
    ccf
    ei
    rlca
    rrca
    ld b, b
    ld de, $081c
    jr jr_029_6bba

jr_029_6bba:
    xor d
    rst $38
    ld [hl], b
    and a
    ld a, [$fedf]
    xor a
    jp c, $fcdb

    and h
    dec de
    jr nc, jr_029_6bd7

    ld a, a
    sbc c
    ld a, a
    rst $18
    jr c, @-$47

    rst $38
    ld e, b
    cp d
    ld d, c
    db $eb
    db $10
    jr c, jr_029_6bd7

jr_029_6bd7:
    db $e4
    rst $38
    ret c

    or h
    ret z

    call nc, $ac88
    ret nz

    ld h, h
    cp a
    ret nz

    ldh [rLCDC], a
    and b
    ld b, b
    ret nz

    ld c, d
    ld e, $1b
    rst $38
    nop
    ccf
    ld [de], a
    rla
    ld c, $1f
    rrca
    rra
    rst $38
    dec bc
    rra
    dec bc
    cpl
    dec de
    ld a, $1f
    dec l
    ei
    ld e, $1f
    ld h, b
    ld de, $40a0
    ld d, b
    and b
    or b
    ccf
    ret nz

    ret c

    ldh [$ffe7], a
    ld hl, sp-$01
    stop
    dec bc
    jr nz, @+$01

    ret z

    or b
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    ld bc, $07f7
    ld bc, $a403
    ld [hl+], a
    ld a, a
    rst $38
    and a
    ld a, a
    cp a
    ld sp, hl
    rst $00
    ld h, a
    add c
    add [hl]
    ld bc, $0180
    nop
    rst $18
    ld bc, $e400
    sbc b
    ld e, [hl]
    add b
    ld c, $40
    add b
    ld a, c
    ret nz

    jr nz, jr_029_6c3d

jr_029_6c3d:
    ld hl, $0d0f
    nop
    rra
    add hl, bc
    ld c, c
    ld b, $fe
    ld b, c
    db $10
    ret nz

    nop
    and c
    ld b, b

jr_029_6c4c:
    ld e, a
    and c
    or e
    db $fd
    rst $08
    rlca
    ld b, $dc
    nop
    and [hl]
    ret c

    ei
    ret nz

    ld a, a
    ldh [$ffc0], a
    or b
    ret nz

    dec l
    ld e, $1e
    adc d
    jr z, @+$01

    ld a, a
    rst $38
    cp h
    ld a, a
    ld a, e
    inc e
    ld e, h
    jr z, jr_029_6c4c

    ld e, h
    jr z, @-$52

    ld e, b
    ld hl, sp+$00
    dec c
    db $ec
    ldh a, [$fff7]
    call nc, Call_000_3c38
    ld a, a
    dec hl
    nop
    ld a, [hl]
    nop
    xor $5f
    ld d, h
    cp d
    ld c, h
    cp l
    ld a, d
    ldh [$ff0c], a
    dec c
    ld hl, $eb00
    cpl
    rra
    ld bc, $1e0d
    ldh [$ff0c], a
    ld e, b
    and b
    cp a
    or e
    ret nz

    ldh a, [$ff71]
    ld de, $1fe0

jr_029_6c9d:
    rst $38
    ld a, a
    ld de, $e02e
    rst $38
    nop
    ret c

    ldh [$ffec], a
    ldh a, [$fffa]
    db $f4
    ld sp, hl
    rst $28
    or $ed
    ldh a, [c]
    sbc e
    ret nz

    ld [de], a
    or h
    ld e, b
    cp b
    rst $28
    ld d, b
    cp b
    ld d, b
    add sp, -$20
    ld [de], a
    nop
    nop
    ld [hl], l
    ld e, a
    ldh [c], a
    db $eb
    jr nc, jr_029_6c9d

    jr nc, jr_029_6cc9

    ld bc, $cc30

jr_029_6cc9:
    dec b
    rst $38
    db $fd
    ld a, d
    rst $38
    ld l, h
    ccf
    dec de
    ccf
    dec de
    rst $38
    ld e, a
    ccf
    ld a, h
    ccf
    ld e, d
    dec a
    dec a
    nop
    rst $38
    rlca
    nop
    dec c
    ld b, $e0
    add b
    db $fc
    ret nz

    daa
    db $e3
    db $fc
    ld sp, hl
    or c
    ld [de], a
    ldh [rNR51], a
    cp a
    ld [bc], a
    ld b, $40
    inc d
    cp $00
    inc d
    db $f4
    add sp, -$06
    db $e4
    rst $30
    ret nz

    xor l
    rst $18
    ld e, [hl]
    cp $18
    inc h
    jr jr_029_6d2a

    dec bc
    ld l, [hl]
    db $fc
    rst $38
    push af
    ld c, $2b
    ld d, $17
    ld a, [bc]
    rla
    ld a, [bc]
    rst $30
    dec e
    ld [bc], a
    ld b, $81
    dec bc
    dec a
    ld a, l
    ld [hl], $7e
    rst $38
    scf
    ld a, a
    scf
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    rst $38
    ld a, e
    ld a, e
    ld bc, $0083
    ld c, l
    add e

jr_029_6d2a:
    di
    ei
    rrca
    rst $00
    ld [bc], a
    dec b
    rst $38
    rst $38
    cp $ff
    cp h
    cp a
    nop
    and $98
    db $db
    ldh [$ffe0], a
    jp nz, $cc11

    rst $38
    ldh a, [$fff4]
    jr c, jr_029_6dc2

    ccf
    ld e, a
    inc a
    ld l, [hl]
    rst $38
    inc e
    ld e, d
    inc l
    jp c, $ac6c

    ld e, b
    db $e4
    adc $80
    dec b
    ret


    ld b, $07
    adc d
    dec sp
    inc b
    rrca
    rst $28
    ld a, a
    ld a, a
    ldh a, [$ff7c]
    di
    ld a, e
    db $f4
    rst $30
    ld l, a
    inc b
    rrca
    rst $38
    ld h, b
    db $ec
    jr nc, jr_029_6da6

    call nc, $16f9
    dec l
    cp a
    jp nc, Jump_029_6f96

    ret c

    scf
    or a
    ld [$350f], sp
    rst $20
    jp nz, $b06b

    add hl, bc
    rrca

jr_029_6d80:
    ld [bc], a
    dec c
    call c, $e6f9
    ld a, a
    cp $f1
    pop af
    xor $7e
    pop hl
    or a
    ld [bc], a
    inc b
    ld a, [hl]
    ld [bc], a
    dec c
    ld h, b
    ld [hl], h
    xor b
    ld a, d
    and h
    scf
    nop
    dec c
    db $fd
    rst $38
    ld a, [bc]
    dec c
    ld h, d
    db $fc
    add l
    ld a, d
    ld a, e
    ld b, $fe
    rlca

jr_029_6da6:
    dec c
    add e
    nop
    ld c, a
    add c
    di
    inc c
    push bc
    rst $38
    cp d
    ld sp, hl
    add [hl]
    di
    db $ed
    rst $38
    db $e3
    ei
    db $fd
    rst $30
    inc b
    inc c
    ld b, b
    ld h, b
    add b
    jr nc, jr_029_6d80

    inc l
    rst $38

jr_029_6dc2:
    ret nc

    inc [hl]
    ret c

    ld a, a
    ld a, $5e
    dec a
    ld l, a
    ld c, $08
    inc c
    add hl, de
    and $e7
    and b
    jr c, jr_029_6dea

    nop
    nop
    ld [$19fe], sp
    nop
    ld bc, $0700
    nop
    inc e
    rlca
    dec hl
    rst $38
    inc e
    scf
    jr jr_029_6e2d

    jr nc, jr_029_6e37

    jr nz, jr_029_6e49

    ei

jr_029_6dea:
    nop
    ld b, b
    jr nz, jr_029_6def

    nop

jr_029_6def:
    nop
    rrca
    nop
    inc a
    rst $38
    rrca
    ld a, [hl]
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    sbc [hl]
    rst $38
    rst $28
    db $fc
    rrca
    db $ec
    ld [hl], a
    db $fc
    inc bc
    rst $38
    ld a, a
    ld e, h
    rst $38
    ld h, l
    rst $38
    ld h, a
    rst $38
    ld l, a
    ld b, b
    nop
    rst $38
    rst $20
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    rst $38
    ldh a, [$ff82]
    db $fc

jr_029_6e1c:
    ld sp, hl
    cp $01
    cp $00
    db $fd
    rst $38
    ld hl, $e000
    rra
    db $fc
    add e
    rst $38
    ret nz

    cp a
    rst $38

jr_029_6e2d:
    ret nz

    rst $30
    ret z

    rst $28
    ret c

    dec hl
    ld b, $80
    cp $26

jr_029_6e37:
    nop
    ldh [rP1], a
    jr jr_029_6e1c

    db $e4
    jr @-$02

    rst $00
    nop
    inc bc
    ld bc, $0641
    rra
    nop
    sub l
    add hl, bc

jr_029_6e49:
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld c, a
    ld a, a
    ccf
    ccf
    rrca
    rst $38
    rrca
    ld b, $1f
    ld bc, $1e27
    ld a, $19
    rst $38
    dec sp
    ld b, $3d
    ld d, $3f
    db $10
    ld e, [hl]
    dec l
    rst $38
    ld a, a
    inc l
    ld l, a
    jr nc, jr_029_6ee3

    add hl, sp
    rst $08
    ld hl, sp-$01
    or $f8
    cp $e0
    rst $18
    xor $f2
    sbc h
    rst $38
    db $fc
    ld h, b
    sub $68
    db $fd
    ld e, $9e
    ld h, b
    rst $38
    ld l, h
    ldh a, [$ffec]
    ldh a, [$fffc]
    ldh a, [$fffc]
    nop
    ld a, a
    call nc, $d4e8
    jr z, @-$4a

    ret z

    jr c, jr_029_6ed2

    dec b
    ldh a, [$ff1f]
    nop
    rra
    nop
    and d
    rrca
    pop de
    ld de, $1b3f
    rra
    ld [$1eff], sp
    dec bc
    rrca

jr_029_6ea5:
    inc b
    ld c, $07
    rrca
    nop
    db $fd
    rrca
    ld b, b
    nop

jr_029_6eae:
    inc e
    rlca
    inc a
    dec de
    ld a, h
    ccf
    rst $18
    ld hl, sp+$3f
    ret nz

    ccf
    rst $38
    jp nz, $d813

    ldh [rIE], a
    ret c

    ldh [$ffb0], a
    ld b, b
    ret nc

    jr nz, jr_029_6ee6

    ret nz

    rst $38
    ldh [rP1], a
    ret nc

    and b
    ldh a, [rP1]
    ld d, b
    and b
    rst $38
    ld c, b

jr_029_6ed2:
    or b
    jr z, jr_029_6ea5

jr_029_6ed5:
    inc l
    ret nc

    ccf
    ret nz

    add hl, hl
    cp $4f
    dec b
    ld l, $16
    ld b, c
    rrca
    ld d, $f7

jr_029_6ee3:
    dec c
    ld d, $0f

jr_029_6ee6:
    inc d
    cp $61
    inc d
    ret nz

    nop
    jr nc, jr_029_6eae

    ret z

    jr nc, @-$0a

    ld a, c
    ld [$140f], sp
    rst $20
    inc e
    inc bc
    ld bc, $0103
    rrca
    inc d
    rst $38
    ld a, [hl-]
    rlca
    ld a, l

jr_029_6f01:
    ld d, $7f
    ld de, $2cdf
    cp a
    sbc $ad
    db $ec
    inc sp
    db $fc
    cp a
    inc bc
    inc d
    reti


    rst $38
    and $f7
    adc a
    rst $38
    jr nc, jr_029_6f01

    or h
    push af
    rst $38
    ld c, $4f
    or e
    rst $30
    ld a, b
    ld a, [$fe7c]
    rst $38
    or b
    db $db
    inc l
    ccf
    rrc a
    rst $30
    rrca
    adc a
    rst $30
    ld a, h
    nop
    jr jr_029_6ed5

    dec de
    dec h
    inc e
    and l
    inc e
    ld b, b
    ld e, a
    add b
    and b
    ret nz

    and b
    ret nz

    jp hl


    rlca
    rlca
    jr nz, jr_029_6f54

    ld a, a
    rla
    rrca
    rla
    rrca
    inc c
    inc bc
    rra
    and b
    inc h
    cp $b3
    dec h
    or $cf
    db $fc

jr_029_6f52:
    rra
    ld [hl], b

jr_029_6f54:
    ccf
    ld [hl], c
    rst $38
    ld a, $f2
    inc c
    xor $70
    ld a, [$dc1c]
    rst $38
    ld h, b
    adc b
    ldh a, [$ff08]
    ldh a, [$ff1f]
    ldh [$ff1f], a
    ld sp, hl
    ldh [$ffe3], a
    inc de
    ldh [rNR51], a
    db $f4
    ld e, $e3
    ld l, e
    sub h
    rst $38
    adc d
    ld [hl], l
    ld e, h
    dec hl
    ld a, b
    rla
    ld a, [hl-]
    dec b
    ccf
    inc c
    inc bc
    ld [$0807], sp
    rlca
    jr nz, jr_029_6fab

    sub b
    inc h
    or $b3
    add hl, hl
    ld b, b
    add b
    and c
    rlca
    ret nz

    nop
    jr nz, jr_029_6f52

    adc [hl]
    daa
    nop
    ld b, b

Jump_029_6f96:
    add b
    ldh [rTMA], a
    add hl, bc
    rrca
    db $10
    rst $00
    rrca
    inc bc
    db $eb
    ld bc, $0b02
    stop
    ld bc, $3f24
    inc bc
    rst $38
    rst $38

jr_029_6fab:
    rla
    cp a
    db $d3
    rst $38
    dec l
    ei
    db $ec
    db $fc
    rst $30
    db $e3
    ret c

    rst $28
    ld bc, $dc24
    ldh [$ffe4], a
    ret c

    rst $38
    sbc $3c
    db $fc
    ret nz

    or [hl]
    ret c

    db $fd
    ld c, $ff
    ld c, [hl]
    or b
    xor h
    ret nc

    and h
    ret c

    ld d, [hl]
    xor b
    rst $38
    sbc l

jr_029_6fd1:
    ld h, d
    db $fd
    ld a, [bc]
    dec e
    ld [$f00e], a
    ldh a, [rTIMA]
    db $10
    rra
    nop
    adc e
    ld [hl+], a
    and b
    ld [$0700], sp
    inc bc
    dec bc
    jp z, $0be0

    ld b, $20
    add hl, bc
    rlca
    ldh [rP1], a
    or e
    dec [hl]
    jr c, jr_029_6fd1

    rst $38
    db $fc
    rrca
    inc l
    rla
    ld a, [hl]
    rlca
    ld a, l
    inc sp
    rst $38
    cp $0d
    ld l, l
    or b
    inc b
    ld hl, sp+$04
    ld hl, sp-$11
    ld [$8ff0], sp
    ld [hl], b
    rlca
    ld c, $0c
    ldh a, [rNR23]
    rst $38
    ldh [rWave_e], a
    ret nz

    dec d
    ld [$eb9c], a
    inc e
    rst $38
    db $eb
    cp b
    ld d, a
    ld a, h
    inc bc
    ld d, $0f
    rra
    rra
    rrca
    rst $38
    rrca
    cp $07
    dec b
    ld [de], a
    inc de
    ld a, [hl-]
    dec b
    db $10
    dec hl
    ld b, b
    add b
    ld hl, $c000
    ldh [rWave_3], a
    ret nz

    cp a
    ld [$001f], sp
    ret nz

    rra
    nop
    rra
    nop
    rra
    nop
    rst $28
    dec c
    rra
    nop
    add d
    ld b, e
    adc h
    nop
    rst $38
    jp c, Jump_000_1f8c

    nop
    dec a
    ld e, $16
    add hl, bc
    db $fd
    dec bc
    add b
    rra
    rra
    rrca
    dec hl
    dec e
    ccf
    add hl, de
    cp $20
    nop
    dec e
    ld e, a
    add hl, sp
    ld a, [hl]
    add hl, sp
    or b
    ld a, a
    cp $20
    ld b, e
    ld a, a
    ldh a, [$ff7f]
    db $db
    adc h
    rst $38
    ld bc, $f2ff
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $08

jr_029_7079:
    rst $30
    rst $08
    rst $38
    rst $00
    jr nz, jr_029_707f

jr_029_707f:
    ld h, b
    nop
    ccf
    rst $00
    sbc $91
    add hl, hl
    rst $38
    rst $38
    rra
    rst $38
    ld h, b
    inc sp
    ldh [rNR41], a
    rst $38
    ret nz

    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    rst $28
    cp a
    ldh a, [$ffbf]
    rst $38
    ld [hl+], a
    nop
    cp [hl]
    rst $18
    db $fc
    ld a, h
    inc h
    nop
    inc de
    ld c, d
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    ldh [rSC], a
    add a
    ld a, a
    rst $38
    db $fc
    and b

jr_029_70b2:
    inc b
    ldh a, [rSC]
    daa
    nop
    ld h, $4c
    ldh [$fffe], a
    ret nz

    jr c, jr_029_70b2

    ld hl, sp+$3a
    db $fc
    rra
    db $fc
    ld e, $07
    db $fd
    dec c
    cp $30
    inc d
    ld [hl+], a
    nop
    ld l, a
    dec bc
    jp $e02b


    dec hl
    rst $38
    ld b, b
    and b
    ld b, b
    ld d, b
    jr nz, jr_029_7079

    ld a, a
    ld b, b
    ld a, a
    ccf
    ld b, b
    ccf
    jr nz, jr_029_7100

    jr jr_029_70ea

    ld b, c
    dec de
    ld a, [hl]
    jp hl


    inc h
    rrca
    nop

jr_029_70ea:
    ccf
    nop
    rra
    nop
    or d
    jr z, @+$01

    rst $38
    ld bc, $0ffe
    pop af
    rst $30
    dec bc
    rst $30
    rst $38
    ei
    rra
    db $e3
    push hl
    ei
    adc e

jr_029_7100:
    ld [hl], l
    ld [hl], e
    rst $18
    dec c
    ld a, [hl+]
    dec e
    inc de
    inc c
    ld d, e
    ld [$dffe], sp
    rst $08
    cp a
    rst $18
    ld a, a
    cp a
    ldh [rHDMA1], a
    ld [bc], a
    dec c
    ei
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $f9
    db $fd
    ld hl, sp-$0c
    ld hl, sp-$41
    ld hl, sp-$10
    rrca
    ldh a, [$ff9f]
    ld h, b
    ld b, b
    ld b, d
    rst $38
    jp hl


    inc c
    or e
    ld bc, $3890
    db $fd
    ldh [rSB], a
    di
    db $fd
    rrca
    ld a, a
    pop af
    di
    dec c
    ld [de], a
    dec c
    add hl, bc
    ld b, $53
    inc c
    cp l
    rlca
    and b
    ld a, [bc]
    dec e
    cp $fe
    db $fc
    ld hl, $fa00
    adc a
    db $fc
    db $fc
    ld hl, sp-$04
    jp nz, $2103

    nop
    inc bc
    inc b
    ld d, b
    rst $38
    jr nz, jr_029_71a2

    jr nc, jr_029_71c0

    jr c, @+$3e

    jr jr_029_719c

    cp a
    jr jr_029_719b

    db $10
    jr nc, jr_029_7166

jr_029_7166:
    jr nz, jr_029_71b2

    ld hl, $88f0
    ld h, b
    ld d, h
    rra
    nop
    dec hl
    ld a, [de]
    ld bc, $0c40
    cpl
    ld a, [de]
    daa
    ld a, [de]
    jp c, $8cf1

    cpl
    ld a, [de]
    add hl, hl
    ld a, [de]
    add c
    dec d
    ret nc

    ldh [rWave_f], a
    ret nz

    ld [hl], e
    ret nz

    ccf
    ld hl, $051a
    ld a, [de]
    cp $bf
    cp h
    ld a, [bc]
    ld a, [de]
    adc h
    rrca
    ld d, $25
    nop
    ldh a, [$ff7f]
    add hl, hl
    ld d, $21

jr_029_719b:
    ld d, b

jr_029_719c:
    dec [hl]
    ld h, a
    rra
    db $eb
    nop
    ld a, a

jr_029_71a2:
    ld hl, $ff16
    jr z, jr_029_71bd

    add hl, bc
    ld l, d
    push af
    rst $38
    db $db
    inc a
    push af
    ld a, d
    ld a, c
    ld b, $72

jr_029_71b2:
    inc a
    xor e
    inc h
    jr jr_029_71bc

    ld d, $ff
    jr z, jr_029_71d1

    db $fd

jr_029_71bc:
    nop

jr_029_71bd:
    jr nz, jr_029_723d

    rst $38

jr_029_71c0:
    db $fd
    db $fd
    ld a, [hl]
    cp a
    ld a, [hl]
    ld e, l
    ld a, $e9
    di
    ld e, $f3
    ld b, b
    jr jr_029_71d7

    ld d, $fb
    rst $38

jr_029_71d1:
    di
    rst $38
    rst $18
    rst $20
    ei
    rrca

jr_029_71d7:
    rst $30
    rst $30
    ld b, b
    inc [hl]
    rla
    rrca
    rst $30
    di
    rrca
    ld sp, hl
    ld b, b
    ld d, $07
    cp $0d
    cp $dd
    rra
    jp nz, $fe15

    ld hl, sp-$02
    ret nz

    ld h, d
    ld a, [$fff4]
    jp hl


    or $f5
    xor $d7
    xor $b2
    call z, Call_029_7feb
    add b
    pop de
    ld l, d
    and b
    ret nz

jr_029_7202:
    ld e, e
    ld e, b
    jr nc, jr_029_7282

    cp [hl]
    jr nz, jr_029_721f

    inc e
    ld [$000c], sp
    ld [$7108], sp
    ldh [$ffc3], a
    nop
    ld hl, sp-$80
    daa
    rra
    nop
    call nz, $c04f
    inc hl
    ld d, b
    jr nz, jr_029_7202

jr_029_721f:
    jr z, jr_029_7231

    dec bc
    ld c, $e9
    ld c, b
    rrca
    ld c, $ff
    inc bc
    dec hl
    cp a
    rst $30
    rst $38
    rst $00
    adc a
    ld [hl], a
    ld [hl], a

jr_029_7231:
    ld b, b
    ld d, d
    inc de
    di
    rrca
    ld hl, sp+$40
    ld a, $0d
    ld c, $f7
    rst $38

jr_029_723d:
    pop af
    rst $38
    rst $38
    xor $f1
    pop de
    xor $a9
    sbc $51
    adc [hl]
    db $f4
    db $f4
    dec l
    ld [$ff24], sp
    jr nz, jr_029_726a

    ld sp, hl
    cp $06
    ld sp, hl
    cp a
    ld hl, sp+$07
    add hl, hl
    ld e, $22
    inc e
    rlca
    inc h
    rra
    db $ed
    cp $b0
    dec de
    cp $fe
    ld de, rWave_7
    cp a
    ld a, a
    rst $38

jr_029_726a:
    rst $38
    ccf
    rst $18
    ccf
    cpl
    rra
    ld d, $0f
    cp $63
    ld d, h
    jr z, jr_029_7287

    ld b, h
    jr c, @+$6e

    jr c, jr_029_72f8

    rst $38
    jr c, @+$3a

    db $10
    cp b
    db $10

jr_029_7282:
    sub b
    nop
    sub b
    ld [bc], a
    add d

jr_029_7287:
    ld e, e
    ret nz

    ld h, d
    ld b, h
    inc bc
    ld c, $00
    ld [$00ff], sp
    nop
    inc bc
    nop
    ld b, $03
    inc c
    rlca
    rst $38
    dec e
    rrca
    ld a, $1f
    ccf
    rra
    ld e, [hl]
    ccf
    rst $38
    halt
    ccf
    ld h, l
    ld a, $46
    dec a
    ld b, e
    dec a
    rst $38
    ld b, e
    inc a
    ld b, l
    dec sp
    cpl
    inc de
    cpl
    rla
    cp a
    cp $00
    ld bc, $00fe
    rst $38
    inc hl
    nop
    ld b, b
    rst $38
    cp a
    ld h, b
    cp a
    ei
    ld e, a
    db $fd
    cpl
    rst $38
    rst $38
    sub $ff
    add hl, sp
    rst $38
    inc a
    cp $7d
    rst $38
    rst $38
    inc a
    rst $38
    dec a
    nop
    nop
    add b
    nop
    ld b, b
    rst $38
    add b
    jr nc, @-$3e

    ld [$14f0], sp
    ld hl, sp+$2c
    rst $38
    ld hl, sp+$76
    db $fc
    cp $fc
    ld a, [$d2fc]
    rst $38
    db $fc
    jp z, Jump_029_427c

    cp h
    ldh [c], a
    inc e
    call nz, $b8ff
    call nz, $17b8

jr_029_72f8:
    dec bc
    rrca
    inc bc
    inc bc
    db $eb
    nop
    ld bc, $06a2
    ld bc, $0022
    inc bc
    ld bc, $bf07
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld bc, $a003
    nop
    ld bc, $00ff
    sbc a
    rst $38
    rst $38
    ld a, [hl]
    db $fd
    cp $fb
    rst $38
    ld a, h
    ld a, [hl]
    ld sp, $06fd
    dec sp
    push af
    rst $18
    rst $38
    ldh [$ffed], a
    ld e, $78
    sbc a
    cp $5f
    rst $18
    rst $38
    ld h, b
    db $ed
    halt
    db $ed
    halt
    adc $31
    ccf
    rst $38
    rst $00
    ret z

    or b
    xor b
    ld d, b
    ret nc

    jr nz, jr_029_735e

    rst $38
    ret nz

    ret nc

    ldh [$ffe0], a
    nop
    and b
    ret nz

    ld [hl], b
    adc e
    ret nz

    ret nz

    nop
    rlca
    add b
    and h
    dec bc
    and c
    nop

jr_029_7351:
    ld b, c
    dec b
    ld [bc], a
    ld hl, sp-$80
    inc b
    push hl
    inc c
    inc bc
    ld b, $0f
    inc bc
    inc e

jr_029_735e:
    inc bc
    rrca
    cp $e2
    dec c
    rrca
    rst $30
    rst $38
    dec b
    cp $f5
    rst $38
    rst $38
    nop
    halt
    jr c, @+$01

    nop
    ld a, [$7f7d]
    rst $38
    nop
    ldh [c], a
    dec a
    ldh [c], a
    cp l
    pop bc
    cp $81
    rst $28
    cp $01
    cp $ff
    ldh [c], a
    rrca
    ld b, b
    add b
    ret nz

    ld hl, sp+$20
    nop
    inc hl
    dec b
    and c
    dec b
    ld b, b
    add b
    jr nz, jr_029_7351

    jr nz, jr_029_73d2

    ret nz

    ld h, b
    add b
    ldh a, [rP1]
    ldh [$ffe2], a
    ld de, $0c0f
    ld a, [hl]
    dec b
    inc c
    rlca
    nop
    rrca
    dec b
    rra
    ld a, [bc]
    dec b
    inc c
    rst $38
    ld a, a

jr_029_73aa:
    jr nc, jr_029_73aa

    inc bc
    dec [hl]
    ld a, [$e0df]
    rst $38
    or $0f
    ld a, $cf
    db $fd
    xor a
    rst $28
    or [hl]
    rst $38
    ld [hl], a
    cp c
    ld sp, hl
    ld a, $a3
    ld e, h
    sbc a
    ld h, b
    cp $01
    inc c
    ld d, b
    and b
    ldh [rP1], a
    ld d, b
    ldh [$fff8], a
    cp a
    jr nz, @+$62

    ret nz

    or b

jr_029_73d2:
    ld h, b
    ld hl, sp+$21
    rlca
    nop
    rst $38
    ld h, b
    add b
    or b
    ret nz

    call z, $fab0
    ld a, h
    ld e, a
    db $fd
    ld h, [hl]
    rra
    dec b
    rlca
    ld b, c
    ld de, $4000
    ld de, $00ff
    ld e, $03
    ld a, $1b
    ld a, h
    ccf
    ld a, b
    cp a
    ccf
    jr nc, jr_029_7407

    db $fc
    inc bc
    ld a, a
    db $e4
    add hl, de
    db $e3
    rst $38
    sbc h
    ld a, [hl]
    pop hl
    push af
    ld a, [de]
    rst $18
    ldh [$fff9], a

jr_029_7407:
    rst $38
    ld b, $d6
    pop hl
    rst $30
    ld [bc], a
    inc hl
    ret nz

    ld hl, $c0cf
    ld b, c
    add b
    ld a, a
    jr nz, jr_029_7417

jr_029_7417:
    db $e3
    dec bc
    nop
    nop
    rst $28
    cp $30

jr_029_741e:
    or b
    nop
    ld bc, $5805
    and b
    add h
    rst $38
    ld a, b
    inc b
    ld hl, sp-$7c
    ld a, b
    ret z

    ldh a, [$ffc8]
    ccf
    ldh a, [$ff88]
    ld [hl], b
    db $fc
    nop
    ld hl, sp-$1c
    dec e
    rrca
    inc c
    cp h
    inc bc
    jr jr_029_741e

    rla
    rlca
    ld [bc], a
    rlca
    ld bc, $1806
    inc sp
    rst $38
    ei
    inc c
    scf
    db $eb
    sbc $e1
    db $fd
    ld e, $ff
    ld a, c
    cp [hl]
    or c
    ld e, [hl]
    ld a, [$ec2d]
    ld [hl], e
    cp a
    ret nc

    xor a
    pop hl
    sbc $be
    pop bc
    dec b
    inc c
    ld h, b
    ldh [c], a
    ld h, b
    dec bc
    and b
    add b
    ld de, $1803
    ret nz

    nop
    ld b, b
    sub b
    ld h, b

jr_029_746e:
    rst $38
    ret z

    jr nc, @-$4e

    ld b, b
    rlca
    inc bc
    dec b
    ld [bc], a
    ld sp, hl
    ld [bc], a
    and d
    dec e
    nop
    ld de, $1606
    rrca
    db $10
    rrca
    ld a, a
    inc c
    inc bc
    ccf
    nop
    ld a, a
    nop
    ccf
    db $e4
    dec h
    rst $38
    ld h, e
    sbc h
    rst $38
    inc bc
    cp l
    ld c, [hl]
    rst $08
    ld sp, $bbdf
    ret nz

    swap c
    add hl, sp
    ld h, b
    ld [hl+], a
    ld [$8ff0], sp
    ld de, $1fe0
    ldh [rNR11], a
    dec h
    db $e3
    daa
    ldh [rNR22], a
    nop
    rst $38
    jr nc, jr_029_746e

    add sp, -$70
    ld hl, sp+$60
    db $e4
    sbc b
    rst $38
    and d
    ld a, h
    pop de
    ld a, $f1
    ld a, [hl]
    ldh a, [c]
    db $fc
    rra
    and $f8
    adc a
    ld [hl], b
    cp $bf
    ld a, [hl+]
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
    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7958:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_029_7feb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
