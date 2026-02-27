; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld b, $cd
    adc d
    ld [hl+], a
    call ClearBGMap1
    call ClearShadowOAMBuffer
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
    ld hl, $79d4
    ld c, $05
    ld de, $9800
    call DrawMaskedClippedTile
    ld hl, $9980
    ld de, vBGMap1
    ld b, $c0
    call CopyHLtoDE
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call CopyHLtoDE
    ld hl, $45a4
    call Call_006_445e
    call Call_006_4376
    ld a, $af
    ld [$cb5c], a
    ld hl, $419b
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $01
    ld [$cd63], a
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld [$cd6e], a
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
    ld a, $07
    ldh [$ff96], a
    ld a, $88
    ldh [$ff95], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld a, $22
    call Call_000_25c5
    ld a, $e3
    ld [wLCDCTempStorage], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld a, $90
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    and h
    ld b, l
    inc d
    ld [bc], a
    call Call_000_0d90
    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_000_33c4
    call Call_006_41a5
    call Call_006_40d5
    call Call_006_4136
    call Call_006_410c
    ret


Call_006_40d5:
    ld hl, $cd6d
    inc [hl]
    ld a, [$cd6e]
    bit 0, a
    jr z, jr_006_40e3

    bit 4, [hl]
    ret nz

jr_006_40e3:
    ld hl, $44b7
    ld a, [$cd63]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cd6c]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4107
    call Call_000_20de
    ret


    nop
    nop
    ld [$8000], a

Call_006_410c:
    ld a, [$cd6e]
    bit 1, a
    ret z

    ld de, $9c91
    ld b, $ae
    ld a, [$cd6d]
    bit 4, a
    jr nz, jr_006_4121

    ld a, $ae
    ld b, a

jr_006_4121:
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    ret


Call_006_4136:
    ld a, [$cd63]
    add a
    ld hl, $4167
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $04
    ret c

    push hl
    ld a, [$cd65]
    or a
    jr z, jr_006_4157

    ld bc, $0047
    ld hl, $4175
    call Call_000_20de

jr_006_4157:
    pop hl
    ld a, [$cd65]
    cp [hl]
    ret z

    ld bc, $8848
    ld hl, $417e
    call Call_000_20de
    ret


    dec b
    nop
    ld [$0840], sp
    jr @+$05

    nop
    ld [$0918], sp
    jr nz, @+$0a

    jr jr_006_4176

jr_006_4176:
    nop
    db $eb
    nop
    nop
    ld [$00ec], sp
    add b
    nop
    nop
    db $ed
    nop
    nop
    ld [$00ee], sp
    add b
    pop bc
    ld b, c
    rst $28
    ld b, h
    ld [$7505], sp
    ld b, e
    dec [hl]
    ld b, d
    sub e
    ld b, c
    pop bc
    ld b, c
    and h
    ld b, l
    inc d
    ld [bc], a
    halt
    ld b, e
    rst $28
    ld b, e
    ld b, $44
    inc c
    ld b, a
    jp $0842


    nop

Call_006_41a5:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $41b8
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


    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, d
    push hl
    call SafeTurnOffLCDDuringVBlank
    pop hl
    ld de, $9821
    call Call_006_4463
    pop hl
    ld a, [hl+]
    ld b, a
    push hl
    or a
    jr z, jr_006_41e2

    ld l, e
    ld h, d
    call Call_006_4200

jr_006_41e2:
    ld hl, $9c42
    ld b, $03
    call Call_006_4200
    ld a, $74
    ldh [rLYC], a
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld bc, $41fb
    push bc
    ld h, d
    ld l, e
    jp hl


    call Call_000_2273
    pop hl
    ret


Call_006_4200:
jr_006_4200:
    ld c, $10
    ld a, [$cb5c]

jr_006_4205:
    ld [hl+], a
    dec c
    jr nz, jr_006_4205

    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_006_4200

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
    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ld a, [$cd6c]
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


    ldh a, [$ff8b]
    bit 1, a
    jr nz, jr_006_42a6

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_006_4278

    bit 7, a
    jr nz, jr_006_425e

    ret


jr_006_425e:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    inc a
    cp $06
    jr c, jr_006_4270

    dec a
    ld [hl], a
    pop hl
    ret


jr_006_4270:
    ld [hl], a
    ld a, $48
    call Call_000_25ce
    pop hl
    ret


jr_006_4278:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    sub $01
    jr nc, jr_006_4289

    inc a
    ld [hl], a
    pop hl
    ret


jr_006_4289:
    ld [hl], a
    ld a, $48
    call Call_000_25ce
    pop hl
    ret


    push hl
    ld a, $42
    call Call_000_25cb
    pop hl
    ld a, [$cd6c]
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


jr_006_42a6:
    push hl
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ld a, $05
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $01
    ld [$c910], a
    ret


    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    ld c, [hl]
    bit 1, a
    jr nz, jr_006_4336

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_006_430b

    bit 7, a
    jr nz, jr_006_42df

    ret


jr_006_42df:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    cp c
    jr nc, jr_006_430a

    inc a
    push af
    ld a, [$cd6c]
    cp $04
    jr c, jr_006_42fc

    ld a, [$cd65]
    add $10
    ld [$cd65], a
    jr jr_006_4300

jr_006_42fc:
    inc a
    ld [$cd6c], a

jr_006_4300:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_25ce
    ret


jr_006_430a:
    ret


jr_006_430b:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    or a
    jr z, jr_006_4335

    dec a
    push af
    ld a, [$cd6c]
    or a
    jr nz, jr_006_4327

    ld a, [$cd65]
    sub $10
    ld [$cd65], a
    jr jr_006_432b

jr_006_4327:
    dec a
    ld [$cd6c], a

jr_006_432b:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_25ce
    ret


jr_006_4335:
    ret


jr_006_4336:
    push hl
    ld a, $51
    call Call_000_25cb
    pop hl
    dec hl
    dec hl
    ld a, $05
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld a, $01
    ld [$c910], a
    ret


    push hl
    ld a, [$cd6b]
    ld hl, $cd6f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr nz, jr_006_436d

    inc hl
    inc hl
    ld a, $42
    call Call_000_25cb
    ret


jr_006_436d:
    ld a, $51
    call Call_000_25cb
    dec hl
    dec hl
    ret


    ret


Call_006_4376:
    call Call_006_43e5
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $01
    ld [$cd63], a
    ld a, [sNumTurnipSeeds]
    ld hl, $986c
    call Call_006_43d7
    ld a, [sNumPotatoSeeds]
    ld hl, $98ac
    call Call_006_43d7
    ld a, [sNumTomatoSeeds]
    ld hl, $98ec
    call Call_006_43d7
    ld a, [sNumCornSeeds]
    ld hl, $992c
    call Call_006_43d7
    ld a, [sNumEggplantSeeds]
    ld hl, $996c
    call Call_006_43d7
    ld a, [sNumPeanutSeeds]
    ld hl, $99ac
    call Call_006_43d7
    ld a, [sNumCarrotSeeds]
    ld hl, $99ec
    call Call_006_43d7
    ld a, [sNumBrocolliSeeds]
    ld hl, $9a2c
    call Call_006_43d7
    ld a, [sNumGrassSeeds]
    ld hl, $9a6c
    call Call_006_43d7
    ret


Call_006_43d7:
    push hl
    call Call_000_3304
    pop hl
    ld a, [wDecimalDigitTileID+3]
    ld [hl+], a
    ld a, [wDecimalDigitTileID+4]
    ld [hl+], a
    ret


Call_006_43e5:
    ld hl, $cd6f
    ld bc, $000a
    call ZeroOutHL
    ret


    xor a
    ld [$cd6e], a
    push bc
    ld a, $ff
    ld [$cd66], a
    ld hl, $9c42
    ld a, l
    ld [$cd67], a
    ld a, h
    ld [$cd68], a
    pop hl
    ret


    push bc

jr_006_4407:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    ld a, [$cd66]
    inc a
    ld [$cd66], a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $af
    jr z, jr_006_444c

    cp $ff
    jr z, jr_006_445a

    ld c, a
    call Call_000_0924
    ld a, [$cd67]
    ld e, a
    ld a, [$cd68]
    ld d, a
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    inc de
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    ld a, $01
    ld [hl+], a
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    dec hl
    dec hl
    ret


jr_006_444c:
    ld de, $9c81
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    dec bc
    jr jr_006_4407

jr_006_445a:
    pop hl
    inc hl
    inc hl
    ret


Call_006_445e:
    ld de, $9821
    ld b, $14

Call_006_4463:
jr_006_4463:
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
    jr nz, jr_006_4463

    ret


    ld de, $99c1
    ld b, $03
    jr jr_006_4463

    ld hl, sInventory
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    push bc
    ld b, h
    pop de
    ld b, h
    db $db
    ld b, h
    rst $20
    ld b, h
    pop de
    ld b, h
    db $db
    ld b, h
    db $db
    ld b, h
    ld [$0818], sp
    inc h
    ld [$0830], sp
    inc a
    ld [$0848], sp
    ld d, h
    ld [$0810], sp
    jr z, jr_006_44de

    ld b, b
    ld [$0858], sp
    ld [hl], b
    db $10
    jr jr_006_44ee

jr_006_44de:
    inc h
    db $10
    jr nc, jr_006_44f2

    inc a
    db $10
    ld c, b
    db $10
    ld d, h
    db $10
    jr jr_006_44fa

    inc h
    db $10
    jr nc, jr_006_44fe

jr_006_44ee:
    inc a
    ld b, $2b
    ld a, [de]

jr_006_44f2:
    daa
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28
    inc de
    jr z, jr_006_4522

jr_006_44fa:
    dec h
    rst $28
    ld b, $2e

jr_006_44fe:
    ld [hl+], a
    dec e
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
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
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

jr_006_4522:
    rst $28
    rst $28
    rst $28
    rst $28
    inc bc
    ld e, $2f
    ld e, $25
    jr z, jr_006_4556

    ld h, $1e
    daa
    dec l
    rst $28
    inc de
    jr z, jr_006_455d

    dec h
    inc l
    rst $28
    ld [bc], a
    dec hl
    jr z, jr_006_4565

    rst $28
    inc de
    jr z, jr_006_4568

    dec h
    inc l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    nop
    daa
    ld [hl+], a
    ld h, $1a
    dec h
    rst $28
    ld b, $28
    jr z, @+$1f

    inc l

jr_006_4556:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec b

jr_006_455d:
    jr z, jr_006_4587

    dec e
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_006_4565:
    inc bc
    dec hl
    ld [hl+], a

jr_006_4568:
    daa
    inc h
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, $2d
    ld hl, $2b1e
    rst $28
    inc de
    jr z, jr_006_459f

    dec h
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
    rst $28

jr_006_4587:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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

jr_006_459f:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
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
    inc de
    ld l, $2b
    daa
    ld [hl+], a
    add hl, hl
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
    ld [de], a
    ld e, $1e
    dec e
    inc l

jr_006_45d1:
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_4606

    rst $28
    rrca
    jr z, jr_006_460b

    ld a, [de]
    dec l
    jr z, jr_006_45d1

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
    ld [de], a
    ld e, $1e
    dec e
    inc l

jr_006_45f5:
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_462a

    rst $28
    inc de
    jr z, jr_006_4628

    ld a, [de]
    dec l
    jr z, jr_006_45f5

jr_006_4606:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_460b:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_464e

    rst $28
    ld [bc], a
    jr z, jr_006_4651

    daa
    rst $28

jr_006_4628:
    rst $28
    rst $28

jr_006_462a:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_4672

    rst $28
    inc b
    jr nz, jr_006_466a

    add hl, hl
    dec h
    ld a, [de]
    daa

jr_006_464e:
    dec l
    rst $28
    rst $28

jr_006_4651:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_4696

jr_006_466a:
    rst $28
    rrca
    ld e, $1a
    daa
    ld l, $2d
    rst $28

jr_006_4672:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_46ba

    rst $28
    ld [bc], a
    ld a, [de]
    dec hl
    dec hl
    jr z, jr_006_46c2

    rst $28

jr_006_4696:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_46de

    rst $28
    ld bc, $282b
    inc e
    inc e
    jr z, jr_006_46df

jr_006_46ba:
    ld [hl+], a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_46c2:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_4702

    rst $28
    ld b, $2b
    ld a, [de]
    inc l
    inc l
    rst $28
    rst $28

jr_006_46de:
    rst $28

jr_006_46df:
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
    ld [de], a
    ld e, $1e
    dec e
    inc l
    ld b, e
    ld b, e
    rst $28
    rst $28
    rst $28
    dec de
    ld a, [de]
    jr nz, jr_006_4726

    ld b, $2b
    ld a, [de]
    daa
    add hl, hl
    ld a, [de]
    ld d, e
    rst $28

jr_006_4702:
    inc de
    jr z, jr_006_472d

    dec h
    rst $28
    ld b, $2e
    ld [hl+], a
    dec e
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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

jr_006_4726:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_472d:
    rst $28
    rst $28
    rst $38
    ldh a, [rLY]
    cp $90
    jr nc, jr_006_4767

    ld hl, $4774
    ld a, [$cd64]
    cp $0b
    jr nc, jr_006_4767

    add a
    add a
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld b, [hl]
    inc hl

jr_006_4749:
    ldh a, [rLY]
    cp b
    jr nz, jr_006_4749

    ld a, [hl+]
    ldh [rSCY], a
    ld b, [hl]
    inc hl

jr_006_4753:
    ldh a, [rLY]
    cp b

jr_006_4756:
    jr nz, jr_006_4753

    ld a, [$cd65]
    add [hl]
    ldh [rSCY], a

jr_006_475e:
    inc hl
    ld a, [hl]
    ldh [rLYC], a
    ld hl, $cd64
    inc [hl]
    ret


jr_006_4767:
    xor a
    ld [$cd64], a
    ldh a, [$ff91]
    ldh [rSCY], a
    ld a, $0a
    ldh [rLYC], a
    ret


    inc c
    ldh a, [rNR10]
    nop
    ld d, $00
    nop
    nop
    jr jr_006_475e

    inc e
    db $fc

jr_006_4780:
    ld [hl+], a
    nop
    nop
    nop
    inc h
    ret c

    jr z, jr_006_4780

    ld l, $00
    nop
    nop
    jr nc, jr_006_4756

    inc [hl]
    db $f4
    ld a, [hl-]
    nop
    nop
    nop
    inc a
    ret nz

    ld b, b
    ldh a, [rDMA]
    nop
    nop
    nop
    ld c, b
    or b
    ld c, h
    db $ec
    ld d, d
    nop
    nop
    nop
    ld d, h
    xor b
    ld e, b
    add sp, $5e
    nop
    nop
    nop
    ld h, b
    sbc b
    ld h, h
    db $e4
    ld l, d
    nop
    nop
    nop
    ld l, h
    sub b
    ld [hl], b
    ldh [rPCM12], a
    nop
    nop
    nop
    ld a, b
    add b
    ld a, h
    call c, $0082
    nop
    nop
    add h
    ld a, b
    adc b
    nop
    sub b
    nop
    nop
    nop
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $f7
    ld h, $5b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld e, $40
    ld hl, $99c0

jr_006_47ec:
    ld a, $06
    ld [hl+], a
    dec e
    jr nz, jr_006_47ec

    ld e, $20
    ld hl, $9a00

jr_006_47f7:
    ld a, $07
    ld [hl+], a
    dec e
    jr nz, jr_006_47f7

    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $6e1f
    ld c, $09
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $7db9
    ld c, $02
    ld de, $9000
    call DrawMaskedClippedTile
    ld hl, $72d0
    ld c, $09
    ld de, $8000
    call DrawMaskedClippedTile
    ld hl, $7c5e
    ld c, $05
    ld de, $9800
    call DrawMaskedClippedTile
    call Call_006_489f
    ld de, $48f6
    call ExecuteVRAMBlitCommands
    ld hl, $99c0
    ld bc, $0060
    call ZeroOutHL
    ld hl, $4a15
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $4fde
    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
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
    ld a, $4d
    call Call_000_25c5
    ld hl, $4897
    call Call_000_0401
    ld a, $87
    ld [wLCDCTempStorage], a
    ld a, $06
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $ff
    ld [$cda5], a
    ld a, $ff
    ld [$cda6], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    ccf
    dec hl
    ccf
    dec hl
    ccf
    dec hl
    ccf
    dec hl

Call_006_489f:
    ld de, $9400
    ld b, $18
    xor a

jr_006_48a5:
    push af
    push bc
    ld hl, $48c6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_006_48bd
    pop bc
    pop af
    inc a
    inc a
    dec b
    jr nz, jr_006_48a5

Call_006_48bd:
    ld a, $11
    ld bc, $0010
    call BankedCopyHLtoDEBig
    ret


    ld d, c
    ld b, e
    pop de
    ld b, e
    or c
    ld b, e
    pop bc
    ld b, e
    ld d, c
    ld b, c
    add c
    ld b, b
    ld hl, $3140
    ld b, c
    pop hl
    ld b, b
    ld de, $f141
    ld c, [hl]
    pop de
    ld b, b
    ld b, c
    ld b, b
    ld bc, $5140
    ld b, b
    ld hl, $6141
    ld b, c
    ld b, c
    ld b, c
    pop bc
    ld b, b
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    ld b, c
    ld b, h
    sbc h
    ld l, b
    inc b
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    sbc h
    and a
    ld b, $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    sbc h
    db $e4
    dec bc
    ld b, l
    ld c, e
    ld b, a
    ld c, h
    ld c, c
    ld c, l
    ld b, [hl]
    ld b, a
    ld b, l
    ld b, h
    ld c, h
    sbc l
    inc h
    inc c
    ld c, a
    ld c, b
    ld c, [hl]
    ld b, a
    ld d, b
    ld c, l
    ld c, c
    ld c, h
    ld c, d
    ld b, l
    ld c, e
    ld b, [hl]
    nop
    call Call_000_0d90
    ld a, [wFreezePlayerWhenEnteringNewMap]
    ld b, a
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or b
    ret nz

    call Call_006_4944
    ld hl, $cda7
    inc [hl]
    call Call_006_4f4e
    call Call_006_4f2e
    call Call_006_4e6e
    call Call_006_49c0
    ret


Call_006_4944:
    push hl
    push de
    push bc
    push af
    ld a, [$cda6]
    cp $ff
    ld hl, $49a0
    jr z, jr_006_4967

    cp $fb
    ld hl, $49a8
    jr z, jr_006_4967

    cp $f7
    ld hl, $49b0
    jr z, jr_006_4967

    cp $f3
    ld hl, $49b8
    jr nz, jr_006_496a

jr_006_4967:
    call Call_000_0401

jr_006_496a:
    ld a, [$cda5]
    cp $ff
    ld hl, $49a0
    jr z, jr_006_4989

    cp $fb
    ld hl, $49a8
    jr z, jr_006_4989

    cp $f7
    ld hl, $49b0
    jr z, jr_006_4989

    cp $f3
    ld hl, $49b8
    jr nz, jr_006_499b

jr_006_4989:
    ld b, $b0
    ld c, $68
    ld a, b
    ldh [c], a
    ld c, $69
    ld d, $08

jr_006_4993:
    call SyncToBlankPeriod
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, jr_006_4993

jr_006_499b:
    pop af
    pop bc
    pop de
    pop hl
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    rla
    ld [de], a
    rla
    ld [de], a
    rst $38
    ld a, a
    or l
    ld d, [hl]
    rla
    ld [de], a
    rla
    ld [de], a
    rst $38
    ld a, a
    ld c, d
    add hl, hl
    rla
    ld [de], a
    rla
    ld [de], a
    rst $38
    ld a, a
    nop
    nop
    rla
    ld [de], a
    rla
    ld [de], a

Call_006_49c0:
    ld a, [$cdaa]
    inc a
    ret z

    ld hl, $49fd
    ld a, [sPlayerGender]
    or a
    jr z, jr_006_49d1

    ld hl, $4a05

jr_006_49d1:
    ld a, [$cdab]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_006_49db:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    ld b, $68
    call Call_000_20de
    ld hl, $4a0d
    ld a, [$cdad]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $50
    ld b, $68
    call Call_000_20de
    ret


    ld b, e
    ld d, h
    ld [hl], b
    ld d, h
    ld b, e
    ld d, h
    and c
    ld d, h
    ld [hl], l
    ld d, l
    sbc d
    ld d, l
    ld [hl], l
    ld d, l
    cp a
    ld d, l
    jp nc, $0b54 ;Jump_000_0b54

    ld d, l
    jp nc, $4054

    ld d, l
    ccf
    ld c, [hl]
    nop
    nop
    nop
    nop
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    inc b
    inc b
    inc b
    ld d, l
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    jr jr_006_4a47

    jr jr_006_49db

    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    ld l, h
    inc l
    inc l
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4df1], sp
    ld hl, sp+$4d
    ret z

    ld l, d

jr_006_4a47:
    ld c, a
    ld a, c
    ld d, b
    rst $00
    ld c, a
    dec b
    ld c, [hl]
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    add e
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    pop af
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    dec c
    ld c, [hl]
    ld a, [hl-]
    ld c, l
    ld l, d
    ld c, a
    adc l
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    ei
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    dec c
    ld c, [hl]
    ld a, [hl-]
    ld c, l
    ld l, d
    ld c, a
    sub a
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    dec b
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    dec c
    ld c, [hl]
    ld a, [hl-]
    ld c, l
    ld l, d
    ld c, a
    and c
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    rrca
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    add hl, de
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    xor e
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    inc hl
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    dec l
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    scf
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    ld b, c
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    ld c, e
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    or l
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    ld d, l
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    ld e, a
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    cp a
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    ld l, c
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    ld [hl], e
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    sbc e
    ld c, h
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    ret


    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    ld a, l
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    db $d3
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    add a
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    sub c
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l
    ld l, d
    ld c, a
    sbc e
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]

jr_006_4bba:
    rrca
    ld c, l
    ld l, d
    ld c, a
    db $dd
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    and l
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    ld h, c
    ld c, l

jr_006_4bd4:
    ld l, d
    ld c, a
    xor a
    ld d, c
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    ld l, d
    ld c, a
    rst $20
    ld d, b
    rst $00
    ld c, a
    dec c
    ld c, [hl]
    pop bc
    ld c, h
    ld l, d
    ld c, a
    cp c
    ld d, c
    rst $00
    ld c, a
    dec c

jr_006_4bf3:
    ld c, [hl]
    add sp, $4c
    dec c
    ld c, [hl]
    rrca
    ld c, l
    pop af
    ld c, l
    ld hl, sp+$4d
    sub [hl]
    ccf
    ld c, [hl]
    ld l, h
    inc e
    inc e
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    jr nz, jr_006_4c4a

    ld c, [hl]
    jr jr_006_4c26

    jr jr_006_4bba

    pop af
    ld c, l
    ld hl, sp+$4d
    jr nz, jr_006_4c55

    ld c, [hl]
    inc b
    inc b
    inc b
    ld d, l
    pop af
    ld c, l
    ld hl, sp+$4d

jr_006_4c1f:
    jr nz, jr_006_4c60

    ld c, [hl]
    nop
    nop
    nop
    nop

jr_006_4c26:
    pop af
    ld c, l
    ld hl, sp+$4d
    jr nz, jr_006_4bd4

    ld c, l
    ccf
    ld c, [hl]
    nop
    nop
    nop
    nop
    pop af
    ld c, l
    ld hl, sp+$4d
    jr nz, @+$41

    ld c, [hl]
    inc b
    inc b
    inc b
    ld d, l
    pop af
    ld c, l
    ld hl, sp+$4d
    jr nz, @+$41

    ld c, [hl]
    jr jr_006_4c5f

    jr jr_006_4bf3

    pop af

jr_006_4c4a:
    ld c, l

jr_006_4c4b:
    ld hl, sp+$4d
    jr nz, @+$41

    ld c, [hl]
    ld l, h
    inc e
    inc e
    rst $38
    pop af

jr_006_4c55:
    ld c, l
    ld hl, sp+$4d
    jr nz, jr_006_4c4b

    ld c, l
    ld hl, sp+$4d
    ld h, h
    adc b

jr_006_4c5f:
    ld c, l

jr_006_4c60:
    dec c
    ld c, [hl]
    inc d
    ld c, l
    ccf
    ld c, [hl]
    ld l, h
    inc e
    inc e
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    jr jr_006_4c8b

    jr jr_006_4c1f

    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    inc b
    inc b
    inc b
    ld d, l
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4e3f], sp
    nop
    nop
    nop
    nop

jr_006_4c8b:
    pop af
    ld c, l
    ld hl, sp+$4d
    ld [$4d92], sp
    pop de
    ld c, a
    sub d
    ld c, h
    pop af
    ld c, l
    ld hl, sp+$4d
    ret z

    ld d, l
    ld c, [hl]
    rst $38
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    ei
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    rst $30
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    di
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    pop af
    ld c, l
    ld hl, sp+$4d
    ld h, h
    ld h, b
    ld c, [hl]
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    pop af
    ld c, l
    ld hl, sp+$4d
    ld h, h
    ld h, a
    ld c, [hl]
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    pop af
    ld c, l
    ld hl, sp+$4d
    ret z

    ld d, l
    ld c, [hl]
    di
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    rst $30
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    ei
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld d, l
    ld c, [hl]
    rst $38
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    pop af
    ld c, l
    ld hl, sp+$4d
    ret z

    ld h, b
    ld c, [hl]
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, b
    ld c, [hl]
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    pop af
    ld c, l
    ld hl, sp+$4d
    ret z

    ld h, a
    ld c, [hl]
    di
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    rst $30
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    ei
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld h, a
    ld c, [hl]
    rst $38
    pop af
    ld c, l
    ld hl, sp+$4d
    ld a, [bc]
    ld e, $4e
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    ret nz

    dec hl
    dec hl
    ret


    push bc
    ld a, $00
    ldh [rSTAT], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    inc a
    ld [$c910], a
    ld [$c0a6], a
    inc a
    ld [wSTAT_HandlerIndex], a
    pop hl
    ret


    push bc
    xor a
    ldh [rSTAT], a
    ld a, [wLCDCTempStorage]
    xor $08
    and $fd
    ld [wLCDCTempStorage], a
    ld b, a
    ld hl, $ff40

jr_006_4dba:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4dba

    ld [hl], b
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld [$cda2], a
    ld [$cda4], a
    dec a
    ld [$cdaa], a
    ld a, [$dd00]
    or a
    jr z, jr_006_4ddf

    ld hl, $4de1
    call Call_000_23e9
    call Call_000_2424

jr_006_4ddf:
    pop hl
    ret


    ld sp, $0140
    nop
    nop
    nop
    nop
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
    xor a
    ld [$cda7], a
    ret


    ld h, b
    ld l, c
    ld a, [$cda7]
    cp [hl]
    jr c, jr_006_4e02

    inc hl
    ret


jr_006_4e02:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $1e
    call Call_000_25c5
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$cda8], a
    ld a, h
    ld [$cda9], a
    ld l, e
    ld h, d
    ret


    ld hl, $cda8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, b
    ld a, [hl+]
    ld b, a
    push bc
    call Call_000_0930
    call CopyHLtoDE
    pop bc
    ldh a, [$ff97]
    add b
    dec a
    ldh [$ff97], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$c0a3], a
    ld a, [hl+]
    ld [$c0a4], a
    ld a, [hl+]
    ld [$c0a5], a
    ld a, [hl+]
    ld [$cda5], a
    ld [$cda6], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda5], a
    ld a, [hl+]
    ld [$cda6], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda5], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda6], a
    ret


Call_006_4e6e:
    ld a, [$cdaa]
    inc a
    ret z

    ld hl, $cda1
    ld b, $18
    call Call_006_4fd7
    jr nz, jr_006_4e7f

    inc hl
    dec [hl]

jr_006_4e7f:
    ld hl, $cda3
    ld b, $08
    call Call_006_4fd7
    jr nz, jr_006_4e8b

    inc hl
    dec [hl]

jr_006_4e8b:
    ld hl, $cdaa
    ld b, $10
    call Call_006_4fd7
    ld b, $04
    inc hl
    call z, Call_006_4fd7
    inc hl
    ld b, $10
    call Call_006_4fd7
    ld b, $04
    inc hl
    call z, Call_006_4fd7
    ret


    ldh a, [rLY]
    cp $86
    jr nc, jr_006_4f18

    cp $76
    jr nc, jr_006_4efe

    cp $6e
    jr nc, jr_006_4ee4

    cp $15
    jr nc, jr_006_4ece

jr_006_4eb8:
    ldh a, [rLY]
    cp $07
    jr nz, jr_006_4eb8

jr_006_4ebe:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4ebe

    ld a, [$cda2]
    ldh [rSCX], a
    ld a, $15
    ldh [rLYC], a
    ret


jr_006_4ece:
    ldh a, [rLY]
    cp $16
    jr nz, jr_006_4ece

jr_006_4ed4:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4ed4

    ld a, [$cda4]
    ldh [rSCX], a
    ld a, $6e
    ldh [rLYC], a
    ret


jr_006_4ee4:
    ldh a, [rLY]
    cp $6f
    jr nz, jr_006_4ee4

jr_006_4eea:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4eea

    ldh a, [$ff93]
    ldh [rSCX], a
    ld a, [$cda5]
    ldh [rBGP], a
    ld a, $76
    ldh [rLYC], a
    ret


jr_006_4efe:
    ldh a, [rLY]
    cp $77
    jr nz, jr_006_4efe

jr_006_4f04:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4f04

    ldh a, [$ff93]
    ldh [rSCX], a
    ld a, [$cda6]
    ldh [rBGP], a
    ld a, $86
    ldh [rLYC], a
    ret


jr_006_4f18:
    ldh a, [rLY]
    cp $87
    jr nz, jr_006_4f18

jr_006_4f1e:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_006_4f1e

    ld a, [$c0a3]
    ldh [rBGP], a
    ld a, $06
    ldh [rLYC], a
    ret


Call_006_4f2e:
    ld hl, $cd6c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4f41
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd6c], a
    ld a, h
    ld [$cd6d], a
    ld hl, $cd98
    inc [hl]
    ret


Call_006_4f4e:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4f61
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
    ld a, [hl+]
    ld [$cd70], a
    ld a, [hl+]
    ld [$cd71], a
    ld a, [hl+]
    ld [$cd6e], a
    ld a, [hl+]
    ld [$cd6f], a
    ret


    push bc
    ld hl, $99c2
    ld b, $04

jr_006_4f92:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_006_4f92

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_006_4f92

    ld hl, $9a02
    ld b, $04

jr_006_4fa7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_006_4fa7

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_006_4fa7

    pop hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6b], a
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
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
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_006_4fd7:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    pop bc
    ld c, a
    sbc $4f
    ld h, b
    ld l, c
    push hl
    ld a, [$cd70]
    ld e, a
    ld a, [$cd71]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_006_5049

jr_006_4ff2:
    push af
    inc de
    ld a, e
    ld [$cd70], a
    ld a, d
    ld [$cd71], a
    pop af
    ld c, a
    ld a, [$cd6f]
    ld e, a
    push af
    inc a
    ld [$cd6f], a
    ld hl, $4001
    ld d, $11
    call Call_000_096c
    pop af
    ld b, a
    ld de, $99c2
    cp $70
    jr c, jr_006_501b

    ld de, $99f2

jr_006_501b:
    sub $60
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0924
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_006_5044

    dec hl
    dec hl
    ret


jr_006_5044:
    xor a
    ld [$cd98], a
    ret


jr_006_5049:
    inc de
    ld a, [$cd6f]
    inc a
    ld [$cd6f], a
    ld a, [$cd6e]
    dec a
    ld [$cd6e], a
    jr z, jr_006_5061

    ld a, [de]
    cp $af
    jr nz, jr_006_4ff2

    jr jr_006_5049

jr_006_5061:
    pop hl
    xor a
    ld [$cd98], a
    ret


    adc h
    ld c, a
    ldh [c], a
    ld c, a
    cp c
    ld c, a
    pop bc
    ld c, a
    ld l, l
    ld d, b
    ldh [c], a
    ld c, a
    cp c
    ld c, a
    pop bc
    ld c, a
    ld [hl], l
    ld d, b
    ld a, c
    ld c, a
    jp $2051


    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    db $e3
    ld d, c
    jr nz, jr_006_50e9

    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    inc de
    ld d, d
    jr nz, jr_006_50f3

    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    ld b, e
    ld d, d
    jr nz, jr_006_50fd

    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    ld [hl], e
    ld d, d
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    and e
    ld d, d
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    inc bc
    ld d, e
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    inc sp
    ld d, e
    jr nz, jr_006_5125

    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    sub e
    ld d, e
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    or e
    ld d, e
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a
    di
    ld d, e
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a

jr_006_50e9:
    inc hl
    ld d, h
    db $10
    ld h, b
    pop bc
    ld c, a
    ld h, a
    ld d, b
    ld a, c
    ld c, a

jr_006_50f3:
    inc bc
    ld d, d
    db $10
    ld h, b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a

jr_006_50fd:
    inc sp
    ld d, d
    db $10
    ld h, b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    ld h, e
    ld d, d
    db $10
    ld h, b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    add e
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    sub e
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a

jr_006_5125:
    or e
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    jp Jump_000_1052


    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    db $d3
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    db $e3
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    di
    ld d, d
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    inc de
    ld d, e
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    inc hl
    ld d, e
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    ld d, e
    ld d, e
    jr nz, jr_006_51cf

    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    ld [hl], e
    ld d, e
    jr nz, jr_006_51d9

    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    and e
    ld d, e
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    jp $1053


    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    db $d3
    ld d, e
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    db $e3
    ld d, e
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    inc bc
    ld d, h
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    inc de
    ld d, h
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    ld a, c
    ld c, a
    inc sp
    ld d, h
    db $10
    ld [hl], b
    pop bc
    ld c, a
    ld [hl], c
    ld d, b
    rlca
    ld a, [de]
    dec hl
    cpl
    ld e, $2c
    dec l
    rst $28
    inc c
    jr z, jr_006_51f6

    daa

jr_006_51cf:
    rst $28
    ld b, $01
    rst $28
    rst $28
    ld [de], a
    dec l
    ld a, [de]
    rra
    rra

jr_006_51d9:
    rst $28
    ld [bc], a
    dec hl
    ld e, $1d
    ld [hl+], a
    dec l
    inc l
    rst $28
    rst $28
    inc b
    ld sp, $1c1e
    ld l, $2d
    ld [hl+], a
    cpl
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

jr_006_51f6:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rrca
    dec hl
    jr z, jr_006_521c

    ld l, $1c
    ld e, $2b
    ld [de], a
    ld e, $22
    ld [hl+], a
    inc e
    ld hl, $ef22
    ld a, [bc]
    ld [hl+], a
    dec e
    ld l, $ef
    rst $28
    rst $28
    rst $28
    ld c, $2b
    ld [hl+], a
    jr nz, jr_006_523a

    daa
    ld a, [de]
    dec h
    rst $28

jr_006_521c:
    add hl, hl
    dec h
    ld a, [de]
    daa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [de]
    daa
    dec e
    rst $28

jr_006_522b:
    rrca
    dec hl
    jr z, jr_006_524c

    ld l, $1c
    ld e, $2b
    jr jr_006_524f

    inc l
    ld l, $21
    ld [hl+], a
    dec hl

jr_006_523a:
    jr z, jr_006_522b

    ld d, $1a
    dec e
    ld a, [de]
    rst $28
    rst $28
    rst $28
    ld [bc], a
    ld hl, $2b1a
    ld a, [de]
    inc e
    dec l
    ld e, $2b

jr_006_524c:
    rst $28
    rst $28
    rst $28

jr_006_524f:
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
    ld [$1a26], sp
    jr nz, jr_006_5283

    daa
    ld e, $0c
    ld a, [de]
    dec l
    ld l, $32
    ld a, [de]
    ld h, $1a
    ld [hl+], a
    jr nz, jr_006_529c

    inc l
    ld a, [de]
    rst $28
    rst $28
    rst $28
    ld [de], a
    add hl, hl
    ld e, $1c
    ld [hl+], a
    ld a, [de]
    dec h
    rst $28
    inc de
    ld hl, $271a
    inc h
    inc l
    rst $28
    rst $28

jr_006_5283:
    inc de
    jr z, jr_006_52ac

    jr z, jr_006_52ae

    ld [hl+], a

jr_006_5289:
    rst $28
    jr @+$1c

    ld h, $1a
    dec e
    ld a, [de]
    dec l
    ld e, $ef
    ld [de], a
    ld e, $2d
    ld l, $24
    jr z, jr_006_5289

    inc c
    ld [hl+], a

jr_006_529c:
    ld [hl-], a
    ld a, [de]
    inc h
    jr z, jr_006_52cd

    ld hl, $0f22
    dec hl
    jr z, jr_006_52cd

    jr z, jr_006_52d6

    ld [hl+], a
    jr z, jr_006_52d3

jr_006_52ac:
    rst $28

jr_006_52ad:
    rst $28

jr_006_52ae:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    jr jr_006_52cf

    inc l
    ld l, $28
    rst $28

jr_006_52b9:
    ld c, $21
    daa
    jr z, jr_006_52ad

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld a, [de]
    dec hl
    ld [hl+], a
    inc h
    jr z, jr_006_52b9

    ld [$212c], sp

jr_006_52cd:
    ld [hl+], a
    inc h

jr_006_52cf:
    ld a, [de]
    jr nc, jr_006_52ec

    rst $28

jr_006_52d3:
    nop
    inc h
    ld [hl+], a

jr_006_52d6:
    daa
    jr z, jr_006_5304

    ld [hl+], a
    rst $28
    ld [de], a
    ld e, $24
    ld [hl+], a
    daa
    ld e, $ef
    rst $28
    add hl, bc
    ld l, $27
    ld [hl+], a
    inc e

jr_006_52e8:
    ld hl, $ef22
    ld a, [bc]

jr_006_52ec:
    ld l, $2d
    ld l, $33
    ld a, [de]
    jr nc, jr_006_530d

    inc de
    jr z, jr_006_531c

    ld [hl+], a
    jr z, jr_006_52e8

    ld a, [bc]
    ld a, [de]
    daa
    ld a, [de]
    inc sp
    ld a, [de]
    jr nc, jr_006_531b

    rst $28
    rst $28
    rrca

jr_006_5304:
    ld l, $1b
    dec h
    ld [hl+], a
    inc e
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_530d:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [bc]
    jr z, jr_006_5344

    inc hl
    ld [hl+], a
    rst $28
    ld [de], a
    ld a, [de]

jr_006_531b:
    ld [hl+], a

jr_006_531c:
    dec l
    jr z, jr_006_534d

    rst $28
    rst $28
    rst $28
    rst $28
    inc c
    ld [hl+], a
    inc h
    ld [hl+], a
    rst $28
    inc c
    ld [hl+], a
    ld [hl-], a
    ld a, [de]
    jr nz, jr_006_5350

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    inc d
    ld [de], a
    nop
    rst $28
    nop
    dec e
    cpl
    ld [hl+], a
    inc l
    jr z, jr_006_5369

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_5344:
    rst $28
    rst $28
    rst $28

jr_006_5347:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_534d:
    rst $28
    rst $28
    rst $28

jr_006_5350:
    rst $28
    rst $28
    rst $28
    rlca
    ld [hl+], a
    dec hl
    jr z, jr_006_5347

    inc c
    ld a, [de]
    ld e, $24
    ld a, [de]
    jr nc, jr_006_5379

    adc [hl]
    rst $28
    rst $28
    rst $28
    dec c
    nop
    inc de
    ld [de], a
    inc d
    inc c

jr_006_5369:
    inc b
    rst $28
    ld [$020d], sp
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld b, $2b
    ld a, [de]
    ld hl, $261a

jr_006_5379:
    rst $28
    ld de, $271e
    daa
    adc [hl]
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    nop
    inc de
    ld [de], a
    inc d
    inc c
    inc b
    rst $28
    ld [$020d], sp
    ld c, h
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, jr_006_53be

    dec hl
    dec e
    ld [hl+], a
    daa
    ld a, [de]
    dec l
    jr z, jr_006_53c9

    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld de, $221e
    ld [hl-], a
    ld a, [de]
    rst $28
    dec c
    ld e, $1d
    ld a, [de]
    inc e
    ld hl, $ef22
    rst $28
    rst $28
    rrca
    dec hl
    jr z, @+$22

    dec hl
    ld a, [de]
    ld h, $1e
    dec hl
    rst $28
    rst $28

jr_006_53be:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [de], a
    ld hl, $2722
    rst $28
    ld [de], a

jr_006_53c9:
    ld hl, $2722
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    dec c
    jr z, @+$1d

    ld l, $32
    ld a, [de]
    inc l
    ld l, $ef
    ld c, $27
    ld [hl+], a
    jr nz, jr_006_53fb

    jr nc, jr_006_53fd

    ld [bc], a
    ld [hl-], a
    ld l, $2e
    inc l
    jr z, jr_006_5411

    inc hl
    ld [hl+], a
    rst $28
    ld a, [bc]
    ld [hl+], a
    ld [hl-], a
    jr z, jr_006_541f

    jr z, jr_006_53f7

    ld e, $2c
    ld [hl+], a

jr_006_53f7:
    jr nz, jr_006_5420

    ld e, $2b

jr_006_53fb:
    rst $28
    rst $28

jr_006_53fd:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rlca
    ld [hl+], a
    dec hl
    jr z, jr_006_53f7

    jr jr_006_5438

    ld l, $24
    ld [hl+], a
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_5411:
    rst $28
    rst $28
    jr @+$2a

    inc l
    ld [hl+], a
    ld [hl+], a
    ld e, $26
    ld a, [de]
    dec hl
    ld l, $ef
    rst $28

jr_006_541f:
    rst $28

jr_006_5420:
    rst $28
    rst $28
    rst $28
    ld [bc], a
    jr z, @+$28

    add hl, hl
    jr z, jr_006_5455

    ld e, $2b
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_006_5431:
    rst $28
    rst $28
    jr jr_006_545d

    ld l, $23
    ld [hl+], a

jr_006_5438:
    dec hl
    jr z, jr_006_5469

    rst $28
    ld c, $24
    ld [hl+], a
    daa
    jr z, jr_006_5431

    rst $28
    ldh a, [rIF]
    sub h
    db $10
    ldh a, [rTAC]
    sub d
    db $10
    ldh a, [rIE]
    sub b
    db $10
    ldh [rNR22], a
    adc [hl]
    db $10
    ldh [rIF], a

jr_006_5455:
    adc h
    ld de, $07e0
    adc d
    ld de, $ffe0

jr_006_545d:
    adc b
    db $10
    ret nc

    rla
    add [hl]
    db $10
    ret nc

    rrca
    add h
    db $10
    ret nc

    rlca

jr_006_5469:
    add d
    db $10
    ret nc

    rst $38
    add b
    ld [de], a
    add b
    pop af
    rla
    xor d
    db $10
    pop af
    rrca
    xor b
    db $10
    pop af
    rlca
    and [hl]
    db $10
    pop af
    rst $38
    and h
    db $10
    pop hl
    rla
    and d
    db $10
    pop hl
    rrca
    and b
    ld de, $07e1
    sbc [hl]
    ld de, $ffe1
    sbc h
    db $10
    pop de
    rla
    sbc d
    db $10
    pop de
    rrca
    add h
    db $10
    pop de
    rlca
    sbc b
    db $10
    pop de
    rst $38
    sub [hl]
    ld [de], a
    add b
    pop af
    rla
    cp d
    db $10
    pop af
    rrca
    cp b
    db $10
    pop af
    rlca
    or [hl]
    db $10
    pop af
    rst $38
    or h
    db $10

jr_006_54b1:
    pop hl
    rla
    or d
    db $10
    pop hl
    rrca
    or b
    ld de, $07e1
    xor [hl]
    ld de, $ffe1

jr_006_54bf:
    xor h
    db $10
    pop de
    rla
    sbc d
    db $10
    pop de
    rrca
    add h
    db $10
    pop de
    rlca
    sbc b
    db $10
    pop de
    rst $38
    sub [hl]
    ld [de], a
    add b
    ldh a, [$ff28]
    jp c, $f014

    jr nz, jr_006_54b1

    inc d
    ldh a, [rNR23]
    sub $14
    ldh a, [rNR10]
    call nc, $f614
    ld [$14d2], sp
    or $00
    ret nc

    inc d
    ldh [$ff28], a
    adc $14
    ldh [rNR41], a
    call z, $e014
    jr jr_006_54bf

    inc d
    ldh [rNR10], a

jr_006_54f8:
    ret z

    inc d
    sub $08
    jp nz, $d614

    nop
    ret nz

    dec d
    and $08
    add $15
    and $00
    call nz, $8015
    ldh a, [$ff28]
    ldh a, [rNR14]
    ldh a, [rNR41]
    xor $14
    ldh a, [rNR23]
    db $ec
    inc d
    ldh a, [rNR10]
    ld [$f614], a
    ld [$14e8], sp
    ldh a, [rP1]
    and $15
    ldh [$ff28], a
    db $e4
    inc d
    ldh [rNR41], a
    call z, $e014
    jr jr_006_54f8

    inc d
    ldh [rNR10], a
    ldh [c], a
    inc d
    and $08
    ldh [$ff15], a
    ldh [rP1], a
    sbc $15
    sub $08
    call c, $8014
    ldh a, [$ff28]
    cp $14
    ldh a, [rNR41]
    db $fc
    inc d
    ldh a, [rNR23]
    ld a, [$f014]
    db $10
    ld hl, sp+$14
    or $08
    or $14
    ldh a, [rP1]
    db $f4
    dec d
    ldh [$ff28], a
    ldh a, [c]
    inc d
    ldh [rNR41], a
    call z, $e014
    jr @-$34

    inc d
    ldh [rNR10], a
    ldh [c], a
    inc d
    and $08
    ldh [$ff15], a
    ldh [rP1], a
    sbc $15
    sub $08
    call c, $8014
    ldh a, [rIF]
    db $10
    db $10
    ldh a, [rTAC]
    ld c, $10
    ldh a, [rIE]
    inc c
    db $10
    ldh [rIF], a
    ld a, [bc]
    ld de, $07e0
    ld [$e011], sp
    rst $38
    ld b, $11
    ret nc

    rrca
    inc b
    ld de, $07d0
    ld [bc], a
    ld de, $ffd0
    nop
    ld de, $f180
    rrca
    inc e
    db $10
    pop af
    rlca
    ld a, [de]
    db $10
    pop af
    rst $38
    jr @+$12

    pop hl
    rrca
    ld d, $11
    pop hl
    rlca
    inc d
    ld de, $ffe1
    ld [de], a
    ld de, $0fd1
    inc b
    ld de, $07d1
    ld [bc], a
    ld de, $ffd1
    nop
    ld de, $f180
    rrca
    jr z, jr_006_55d3

    pop af
    rlca
    ld h, $10
    pop af
    rst $38
    inc h
    db $10
    pop hl
    rrca
    ld [hl+], a
    ld de, $07e1
    jr nz, @+$13

jr_006_55d3:
    pop hl
    rst $38
    ld e, $11
    pop de
    rrca
    inc b
    ld de, $07d1
    ld [bc], a
    ld de, $ffd1
    nop
    db $11, $80

Label_006_55e4:
    ld a, [wHeldObject]
    or a
    jr nz, jr_006_5627

    ld a, [$cb7c]
    or a
    ret nz

    ld a, [wPlayerIsRidingHorse]
    or a
    jr nz, jr_006_55fd

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_006_560f

    jr jr_006_5606

jr_006_55fd:
    ld a, [wPlayerFacingDirection]
    add $a9
    call LoadPlayerSpriteID
    ret


jr_006_5606:
    ld a, [wPlayerFacingDirection]
    add $47
    call LoadPlayerSpriteID
    ret


jr_006_560f:
    ld a, [sCatOrDog]
    or a
    jr nz, jr_006_561e

    ld a, [wPlayerFacingDirection]
    add $78
    call LoadPlayerSpriteID
    ret


jr_006_561e:
    ld a, [wPlayerFacingDirection]
    add $70
    call LoadPlayerSpriteID
    ret


jr_006_5627:
    ld a, [wPlayerFacingDirection]
    add $4b
    call LoadPlayerSpriteID
    ret


    ld a, [wHeldObject]
    or a
    jr nz, jr_006_566e

    ld a, [wPlayerIsRidingHorse]
    or a
    jr nz, jr_006_5644

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_006_5656

    jr jr_006_564d

jr_006_5644:
    ld a, [wPlayerFacingDirection]
    add $a1
    call LoadPlayerSpriteID
    ret


jr_006_564d:
    ld a, [wPlayerFacingDirection]
    add $00
    call LoadPlayerSpriteID
    ret


jr_006_5656:
    ld a, [sCatOrDog]
    or a
    jr nz, jr_006_5665

    ld a, [wPlayerFacingDirection]
    add $74
    call LoadPlayerSpriteID
    ret


jr_006_5665:
    ld a, [wPlayerFacingDirection]
    add $6c
    call LoadPlayerSpriteID
    ret


jr_006_566e:
    ld a, [wPlayerFacingDirection]
    add $14
    call LoadPlayerSpriteID
    ret


    ld a, [wHeldObject]
    or a
    jr nz, jr_006_5695

    ld a, [wPlayerIsRidingHorse]
    or a
    jr z, jr_006_568c

    ld a, [wPlayerFacingDirection]
    add $a1
    call LoadPlayerSpriteID
    ret


jr_006_568c:
    ld a, [wPlayerFacingDirection]
    add $04
    call LoadPlayerSpriteID
    ret


jr_006_5695:
    ld a, [wPlayerFacingDirection]
    add $18
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $08
    call LoadPlayerSpriteID
    ret


    ld a, [wHeldObject]
    or a
    jr nz, jr_006_56c5

    ld a, [wPlayerIsRidingHorse]
    or a
    jr z, jr_006_56bc

    ld a, [wPlayerFacingDirection]
    add $a5
    call LoadPlayerSpriteID
    ret


jr_006_56bc:
    ld a, [wPlayerFacingDirection]
    add $0c
    call LoadPlayerSpriteID
    ret


jr_006_56c5:
    ld a, [wPlayerFacingDirection]
    add $10
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $1c
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $22
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $26
    call LoadPlayerSpriteID
    ret

; Exhausted Animation goes here
    ld a, [wPlayerFacingDirection]
    add $2a
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $2e
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $32
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $36
    call LoadPlayerSpriteID
    ret

Call_006_570d: ; watering can goes here...
    ld a, [wPlayerFacingDirection]
    add $3a
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $3f
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $43
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $80
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $a1
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $a5
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $a9
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $ad
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $b1
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $4f
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $57
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $5b
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $5f
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $64
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $8f
    call LoadPlayerSpriteID
    ret


    ld a, [wPlayerFacingDirection]
    add $93
    call LoadPlayerSpriteID
    ret


    ld a, $97
    call LoadPlayerSpriteID
    ret


    ld a, $98
    call LoadPlayerSpriteID
    ret


    ld a, $86
    call LoadPlayerSpriteID
    ret


    ld a, $87
    call LoadPlayerSpriteID
    ret


    ld a, $88
    call LoadPlayerSpriteID
    ret


    ld a, $89
    call LoadPlayerSpriteID
    ret

Label_006_57c1:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $00
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_57ed:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $01
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5819:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $02
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5845:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $03
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5871:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $04
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_589d:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $05
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_58c9:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $06
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_58f5:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $07
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5921:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $08
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_594d:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $09
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5979:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $08
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_59a5:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_59d1:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_59fd:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0d
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5a29:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Label_006_5a55:
    ld de, wPlayerIsCarryingItem
    ld hl, Data_006_5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hli], a
    ld a, [wPlayerXPosition+1]
    ld [hli], a
    ld a, [wPlayerYPosition]
    ld [hli], a
    ld a, [wPlayerYPosition+1]
    ld [hli], a
    ld a, [$c60a]
    sub $01
    ld [hli], a
    ld a, [$c60b]
    sub $1a
    ld [hli], a
    ld a, $0f
    ld hl, $c622
    ld [hli], a
    ld a, $ff
    ld [hli], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $10
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $11
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $12
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $13
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $14
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $15
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $16
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret

Jump_006_569e:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hli], a
    ld a, [wPlayerXPosition+1]
    ld [hli], a
    ld a, [wPlayerYPosition]
    ld [hli], a
    ld a, [wPlayerYPosition+1]
    ld [hli], a
    ld a, [$c60a]
    sub $01
    ld [hli], a
    ld a, [$c60b]
    sub $1a
    ld [hli], a
    ld a, $17
    ld hl, $c622
    ld [hli], a
    ld a, $ff
    ld [hli], a
    inc hl
    xor a
    ld [hl], a
    ret

Data_006_5bf7:
    db $01, $01, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Label_006_5c17:
    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $18
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $19
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, 1
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_5d47

    cp $01
    jr z, jr_006_5d57

    cp $02
    jr z, jr_006_5d68

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_5d47:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_5d57:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_5d68:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, 1
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $67
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_5dc5

    cp $01
    jr z, jr_006_5dd5

    cp $02
    jr z, jr_006_5de6

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_5dc5:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_5dd5:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_5de6:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, 1
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_5e43

    cp $01
    jr z, jr_006_5e53

    cp $02
    jr z, jr_006_5e64

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_5e43:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_5e53:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_5e64:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_5ec1

    cp $01
    jr z, jr_006_5ed1

    cp $02
    jr z, jr_006_5ee2

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_5ec1:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_5ed1:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_5ee2:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $20
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_5f76

    cp $01
    jr z, jr_006_5f86

    cp $02
    jr z, jr_006_5f97

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_5f76:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_5f86:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_5f97:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $21
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $22
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_602b

    cp $01
    jr z, jr_006_603b

    cp $02
    jr z, jr_006_604c

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_602b:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_603b:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_604c:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $23
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $24
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_60e0

    cp $01
    jr z, jr_006_60f0

    cp $02
    jr z, jr_006_6101

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_60e0:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_60f0:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6101:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $25
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $26
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6195

    cp $01
    jr z, jr_006_61a5

    cp $02
    jr z, jr_006_61b6

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6195:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_61a5:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_61b6:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $27
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $28
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_624a

    cp $01
    jr z, jr_006_625a

    cp $02
    jr z, jr_006_626b

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_624a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_625a:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_626b:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $29
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6303

    cp $01
    jr z, jr_006_6313

    cp $02
    jr z, jr_006_6324

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6303:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6313:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6324:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6387

    cp $01
    jr z, jr_006_6397

    cp $02
    jr z, jr_006_63a8

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6387:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6397:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_63a8:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_640b

    cp $01
    jr z, jr_006_6420

    cp $02
    jr z, jr_006_6436

    ld a, $2f
    ld [$c642], a
    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_640b:
    ld a, $2c
    ld [$c642], a
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $08
    ld [$c64b], a
    ret


jr_006_6420:
    ld a, $2d
    ld [$c642], a
    ld a, [$c60a]
    sub $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6436:
    ld a, $2e
    ld [$c642], a
    ld a, [$c60a]
    add $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $30
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1a
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_649b

    cp $01
    jr z, jr_006_64ab

    cp $02
    jr z, jr_006_64bc

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_649b:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_64ab:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_64bc:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $31
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $19
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6519

    cp $01
    jr z, jr_006_6529

    cp $02
    jr z, jr_006_653a

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $1c
    ld [$c64b], a
    ret


jr_006_6519:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0a
    ld [$c64b], a
    ret


jr_006_6529:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_653a:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $32
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6592

    cp $01
    jr z, jr_006_65a2

    cp $02
    jr z, jr_006_65b3

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6592:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_65a2:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_65b3:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $33
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6610

    cp $01
    jr z, jr_006_6620

    cp $02
    jr z, jr_006_6631

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6610:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6620:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6631:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $34
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $35
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_668e

    cp $01
    jr z, jr_006_669e

    cp $02
    jr z, jr_006_66af

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_668e:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_669e:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_66af:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $35
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6712

    cp $01
    jr z, jr_006_6722

    cp $02
    jr z, jr_006_6733

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $18
    ld [$c64b], a
    ret


jr_006_6712:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0c
    ld [$c64b], a
    ret


jr_006_6722:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6733:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $36
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c650], a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $37
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_67d0

    cp $01
    jr z, jr_006_67e0

    cp $02
    jr z, jr_006_67f1

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_67d0:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $06
    ld [$c64b], a
    ret


jr_006_67e0:
    ld a, [$c60a]
    sub $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_67f1:
    ld a, [$c60a]
    add $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $3d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6889

    cp $01
    jr z, jr_006_6899

    cp $02
    jr z, jr_006_68aa

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6889:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6899:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_68aa:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $40
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $41
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_69a9

    cp $01
    jr z, jr_006_69b9

    cp $02
    jr z, jr_006_69ca

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_69a9:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_69b9:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_69ca:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $42
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $43
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $44
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $45
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $48
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $49
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6b0a

    cp $01
    jr z, jr_006_6b1a

    cp $02
    jr z, jr_006_6b2b

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6b0a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6b1a:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6b2b:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6b87

    cp $01
    jr z, jr_006_6b97

    cp $02
    jr z, jr_006_6ba8

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6b87:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6b97:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6ba8:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6c02

    cp $01
    jr z, jr_006_6c12

    cp $02
    jr z, jr_006_6c23

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6c02:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6c12:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6c23:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4e
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4f
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $50
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $51
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $52
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $53
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $54
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $55
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $56
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $28
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6de3

    cp $01
    jr z, jr_006_6df3

    cp $02
    jr z, jr_006_6e04

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6de3:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6df3:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6e04:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $57
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6e5e

    cp $01
    jr z, jr_006_6e6e

    cp $02
    jr z, jr_006_6e7f

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6e5e:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6e6e:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6e7f:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $59
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $37
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60a]
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $40
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6f15

    cp $01
    jr z, jr_006_6f25

    cp $02
    jr z, jr_006_6f36

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


jr_006_6f15:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6f25:
    ld a, [$c60a]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6f36:
    ld a, [$c60a]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_6f93

    cp $01
    jr z, jr_006_6fa3

    cp $02
    jr z, jr_006_6fb4

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6f93:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6fa3:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6fb4:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_7011

    cp $01
    jr z, jr_006_7021

    cp $02
    jr z, jr_006_7032

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7011:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7021:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7032:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_708f

    cp $01
    jr z, jr_006_709f

    cp $02
    jr z, jr_006_70b0

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_708f:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_709f:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_70b0:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_710d

    cp $01
    jr z, jr_006_711d

    cp $02
    jr z, jr_006_712e

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_710d:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_711d:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_712e:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_718b

    cp $01
    jr z, jr_006_719b

    cp $02
    jr z, jr_006_71ac

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_718b:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_719b:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_71ac:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $60
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_7209

    cp $01
    jr z, jr_006_7219

    cp $02
    jr z, jr_006_722a

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7209:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7219:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_722a:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $61
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $62
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $63
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $64
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $65
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c62a
    ld a, [$c60a]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $66
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $69
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6a
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6b
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6c
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_746b

    cp $01
    jr z, jr_006_747b

    cp $02
    jr z, jr_006_748c

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_746b:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_747b:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_748c:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_74e9

    cp $01
    jr z, jr_006_74f9

    cp $02
    jr z, jr_006_750a

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_74e9:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_74f9:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_750a:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_7567

    cp $01
    jr z, jr_006_7577

    cp $02
    jr z, jr_006_7588

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7567:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7577:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7588:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $70
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_75e5

    cp $01
    jr z, jr_006_75f5

    cp $02
    jr z, jr_006_7606

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_75e5:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_75f5:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7606:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $71
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [wPlayerIsCarryingItem], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $72
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_006_769a

    cp $01
    jr z, jr_006_76aa

    cp $02
    jr z, jr_006_76bb

    ld a, [$c60a]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_769a:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_76aa:
    ld a, [$c60a]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_76bb:
    ld a, [$c60a]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $73
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $74
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, wPlayerIsCarryingItem
    ld hl, $5bf7
    ld b, $20
    call CopyHLtoDE
    ld hl, $c626
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl+], a
    ld a, [$c60a]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $75
    ld hl, $c622
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


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
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld l, c
    nop
    ld a, a
    nop
    add b
    sbc a
    nop
    sbc a
    rra
    cp a
    ccf
    ld hl, $e100
    ld bc, $fcff
    ld b, c
    nop
    inc d
    nop
    cpl
    rrca
    cpl
    rrca
    rst $28
    rrca
    ei
    rrca
    rrca
    dec b
    ld bc, $f8fa
    ld a, [$fbf8]
    rst $00
    ld hl, sp-$08
    ld hl, sp+$05
    ld [bc], a
    dec c
    inc bc
    pop hl
    dec b
    cp $00
    ccf
    ld bc, $f900
    ld hl, sp-$03
    db $fc
    ld hl, $6300
    dec b
    rst $20
    cp a
    ccf
    ld a, a
    ld [hl], h
    rlca
    add h
    dec b
    cp $fe
    ld bc, $08bf
    rlca
    db $10
    rrca
    jr nz, jr_006_781c

    add d
    ld b, $c0
    db $e3
    ret nz

    ccf
    ld d, b
    rlca
    ld [hl+], a
    nop
    add d
    rlca
    rlca
    rlca
    ld hl, sp-$04
    ld a, [bc]
    ld bc, $0692
    jr nz, @-$3e

    db $10
    ldh [$ff08], a
    ldh a, [$ffae]
    ld h, e
    dec b
    db $fd
    db $fc

jr_006_781c:
    cp $7a
    inc c
    ld bc, $0720
    ld [bc], a
    db $fd
    ld bc, $0021
    ret nz

    cp a
    add b
    ld a, a
    add c
    ld a, [hl]
    rst $38
    ld b, $f8
    ld [$10f0], sp
    ldh [rNR44], a
    ret nz

    ld a, a
    ld c, h
    add e
    nop
    rst $38
    rra
    ldh [$ffe0], a
    ld [hl-], a
    rrca
    cp e
    ccf
    nop
    ld h, e
    ld b, $f0
    rrca
    rrca
    ld [hl-], a
    db $10
    ld hl, sp-$03
    nop
    ld h, c
    ld b, $07
    ei
    inc bc
    db $fd
    inc bc
    db $fd
    rst $38
    pop bc
    ld a, $21
    ld e, $10
    rrca
    adc b
    rlca
    db $eb
    ld h, h
    add e
    rst $20
    ld de, $2280
    nop
    inc b
    inc bc
    inc b
    or a
    inc bc
    dec b
    ld [bc], a
    ld hl, $0900
    ld b, $21
    nop
    sub b

jr_006_7874:
    rst $38
    rrca
    and b
    rra
    inc hl
    inc e
    ld c, a
    inc sp
    ld e, a
    ld a, a
    cpl
    cp a
    ld e, a
    cp a
    ld e, a
    ld a, a
    cp a
    add c
    dec bc
    ccf
    add b
    ld a, a
    ldh a, [$ff8f]
    rst $38
    ldh a, [rDIV]
    ld de, $0c80
    rst $18
    inc bc
    db $fc
    rra
    db $e3
    rst $38
    and e
    dec c
    rst $38
    ld [de], a
    rst $38
    pop hl
    ld a, [bc]
    pop af
    adc c
    ld [hl], b
    push hl
    sbc b
    push af
    rst $38
    add sp, -$05
    db $f4
    ei
    db $f4
    db $fd
    ld a, [$ed40]
    add b
    inc hl
    nop
    jr nz, jr_006_7874

    inc hl
    nop
    add hl, bc
    ld b, $08
    db $fd
    rlca
    dec h
    nop
    ld de, $130e
    dec c
    ld a, a
    cp [hl]
    rst $38
    ld a, a
    cp l
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    rst $18
    ccf
    rst $38
    ld e, $ff
    ret c

    rst $38
    sub b
    add l
    inc b
    nop
    add hl, de
    rst $00
    rrca
    rst $38
    rlca
    ld b, b
    nop
    add h
    ld b, $00
    ld a, [de]
    ldh [rIE], a
    rst $38
    ret nz

    rst $38
    ldh [$fffd], a
    ld a, [$7bfc]
    db $fc
    rst $38
    ei
    db $fc
    ei
    ld hl, sp-$09
    cp $f1
    rst $38
    rst $20
    ld [hl], $ff
    inc de
    add l
    dec b
    pop hl
    ld [de], a
    db $10
    ldh [$ff90], a
    rst $30
    ld h, b
    inc de
    dec c
    ld hl, $1100
    ld c, $10
    rrca
    cp $23
    nop
    db $fc
    and b
    db $fc
    db $ec
    cp $ee
    rst $38
    rst $38
    rst $08
    rst $38
    ld l, a
    ld a, a
    or a
    ccf
    rst $00
    rla
    rst $18
    db $eb
    rst $38
    rrca
    ld a, a
    rrca
    ld b, b
    nop
    rra
    rst $38
    rst $30
    cp $ff
    db $fc
    ld b, b
    rra
    ei
    cp $e0
    xor $5f
    ldh [$fffe], a
    ldh [$ffec], a
    ldh [rP1], a
    jr nz, jr_006_79b9

    ld b, b
    jr nz, @+$01

    cp a
    ld a, a
    dec bc
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    rst $38
    rst $38
    and $fe
    db $ed
    db $fc
    db $db
    db $fc
    jp $07f4


    adc e
    sub b
    ld h, b
    ld hl, $c100
    dec b
    ld b, h
    nop
    add h
    dec b
    dec b
    ld b, $ff
    rla
    jp hl


    rla
    add sp, $03
    db $fc
    ld [bc], a
    db $fd
    rst $38
    ld [de], a
    db $ed
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    ld [hl], a
    adc b
    cp $62
    dec b
    ccf
    rst $38
    rlca

jr_006_7974:
    ld a, a
    add b
    ld a, a
    add a
    rst $28
    rst $08
    rlca
    rra
    rrca
    ld h, b
    dec b
    cp $ff
    ld hl, sp-$02
    and b
    dec bc
    nop
    rst $38
    ret nz

    rst $20
    ret nz

    pop af
    ldh [rIE], a
    ldh a, [rIF]
    ldh [$ff1f], a

jr_006_7991:
    and b
    ld e, a
    jr nz, jr_006_7974

    rst $38
    inc [hl]
    res 6, h
    ld c, e
    or [hl]
    ld c, c
    cp $01
    db $fc
    and a
    dec b
    and e
    ld b, $12
    dec c
    ld [de], a
    dec c
    ld a, [de]
    dec b
    cp $21
    nop
    dec de
    inc b
    dec de
    inc b
    rlc h
    db $fc
    rst $38
    nop
    ldh [rP1], a
    ret nc

    nop

jr_006_79b9:
    add sp, $10
    call nz, $38ff
    ldh a, [c]
    inc c
    adc c
    halt
    and b
    ld a, a
    rra
    rst $38
    rrca
    rra
    rlca
    rrca
    inc bc
    rrca
    nop
    rrca
    rst $38
    nop
    ld b, $00
    inc b
    nop
    add [hl]
    nop
    ldh a, [$ffbf]
    ldh [$fff0], a
    ret nz

    ldh [$ff80], a
    ldh [$ff60], a
    ld [bc], a
    ret nz

    rst $28
    nop
    ld b, c
    nop
    jp $2dc0


    rrca
    nop
    rla
    rst $38
    nop
    cpl
    db $10
    ld b, a
    jr c, jr_006_7991

    ld h, b
    inc hl
    or a
    call c, Call_006_7c8b
    inc bc
    inc c
    or b
    ld b, b
    inc hl
    nop
    or c
    ccf
    ld b, b
    ld c, a
    nop
    ld c, a
    nop
    rst $08
    ldh [$ff03], a
    dec h
    nop
    rst $38
    or c
    ld a, [hl]
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], c
    rst $38
    db $fd
    ld a, h
    db $10
    inc e
    inc e
    rst $38
    adc h
    ld a, a
    ld b, d
    add b
    rst $38
    and e
    ld b, b
    ld d, e
    and b
    ld c, c
    or b
    push hl
    jr @+$01

    ld h, e
    sbc h
    add hl, hl
    sbc $1c
    rst $28
    add a
    nop
    rst $38
    adc d
    dec b
    sub h
    dec bc
    dec h
    dec de
    ld b, [hl]
    add hl, sp
    rst $38
    add l
    ld a, e
    ld [$28f7], sp
    rst $30
    dec c
    cp $ff
    dec e
    cp $fd
    cp $3d
    cp $7d
    cp $f7
    ei
    db $fc
    db $e3
    jr nz, jr_006_7a50

jr_006_7a50:
    pop hl
    nop
    and c
    ld b, b
    ld d, c
    pop hl
    ld b, b
    ld a, [bc]
    dec h
    nop
    and e
    dec b
    rlca
    ld [hl+], a
    nop
    inc bc
    and b
    dec [hl]
    rst $38
    adc [hl]
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $38
    rst $20
    rra
    db $e3
    rra
    pop af
    rrca
    rst $38
    nop
    rst $38
    ld d, $ef
    sub a
    rst $28
    adc b
    rst $30
    adc e
    db $f4
    rst $38
    rlca
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    rst $38
    nop
    rst $38
    ldh a, [$ffef]
    di
    rst $28
    inc de
    rst $28
    and e
    ld e, a
    rst $38
    rst $20
    rra
    rst $00
    ccf
    adc a
    ld a, a
    rst $38
    nop
    rst $30
    jp $c7fc


    and b
    ld bc, $f8c7
    rst $08
    ldh a, [$ff5f]
    adc a
    ldh a, [$ff1f]
    ldh [rIE], a
    and d
    dec b
    ret nz

    inc h
    nop
    db $fd
    add b
    and b
    ld a, [hl-]
    cp $00
    cp $7c
    ld a, h
    jr c, @+$01

    ld a, h
    jr c, jr_006_7af3

    db $10
    jr c, jr_006_7ace

    stop
    ld bc, $df10
    dec a
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

jr_006_7ace:
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

jr_006_7af3:
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
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7c8b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
