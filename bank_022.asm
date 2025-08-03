; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    db $22 ; bank number

    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0de8
    call ReadRealTimeClock
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $4001
    ld a, $31
    ld de, $9010
    ld bc, $07f0
    call BankedCopyHLtoDEBig
    ld hl, $47f1
    ld a, $31
    ld de, $8800
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $c0a3
    ld a, $6c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$cbe2], a
    ld [$cbe3], a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$ccc4], a
    ld [$cbe6], a
    ld [$cbe7], a
    ld hl, $4965
    ld de, $9821
    call Call_022_41ce
    ld hl, $4977
    ld de, $9881
    call Call_022_41ce
    ld hl, $4989
    ld de, $98a1
    call Call_022_41ce
    ld hl, $499b
    ld de, $98e1
    call Call_022_41ce
    ld hl, $49ad
    ld de, $9921
    call Call_022_41ce
    ld hl, $49bf
    ld de, $9961
    call Call_022_41ce
    ld hl, $49d1
    ld de, $9981
    call Call_022_41ce
    ld hl, $49e3
    ld de, $99c1
    call Call_022_41ce
    ld hl, $49f5
    ld de, $99e1
    call Call_022_41ce
    call Call_022_491c
    ld hl, $9880
    ld a, $f4
    ld [hl], a
    ld hl, $9881
    ld a, $f5
    ld [hl], a
    ld hl, $9892
    ld a, $f5
    ld [hl], a
    ld hl, $9893
    ld a, $f6
    ld [hl], a
    ld hl, $98a0
    ld a, $f1
    ld [hl], a
    ld hl, $98a1
    ld a, $f2
    ld [hl], a
    ld hl, $98b2
    ld a, $f2
    ld [hl], a
    ld hl, $98b3
    ld a, $f3
    ld [hl], a
    ld a, [sCurrentSeason]
    ld [$cbde], a
    ld a, [sCurrentDayCounter]
    ld [$cbdf], a
    ld a, [sCurrentHour]
    ld [$cbe0], a
    ld a, [sCurrentMinute]
    ld [$cbe1], a
    ld a, [sCurrentYear]
    ld [$cbdd], a
    call Call_022_43f1
    call InitRealTimeClock
    call Call_022_4456
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    push hl
    ld b, h
    ld c, l
    ld hl, $ba10
    call AddBCtoWordAtHL
    pop hl
    push hl
    pop hl
    call Call_022_490b
    call Call_022_44e9
    call Call_022_4542
    call Call_022_4525
    call Call_022_467b
    call Call_022_42fc
    call Call_022_4364
    ld hl, $9863
    ld a, [sCurrentDayCounter]
    inc a
    call Call_022_4216
    ld a, [sCurrentSeason]
    ld hl, $9865
    call Call_022_41d8
    ld a, [sCurrentHour]
    ld hl, $986f
    call Call_022_4229
    ld de, $986b
    call Call_022_42aa
    call Call_022_4a07
    call Call_022_4afc
    call Call_022_4ed3
    call Call_022_4e21
    call Call_022_4e44
    call Call_022_4e62
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    call Call_000_0d90
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [wMapChangeFreezeTimer], a
    call UpdateHourTileData
    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    ld a, [$ccc2]
    ld b, a
    ld a, [sPlayerMoney]
    add b
    ld [sPlayerMoney], a
    ld a, [$ccc3]
    ld b, a
    ld a, [sPlayerMoney+1]
    adc b
    ld [sPlayerMoney+1], a
    ld a, [$ccc4]
    ld b, a
    ld a, [$b8f1]
    adc b
    ld [$b8f1], a
    call UpdatePlayerMoneyTileData
    ld a, [$b88d]
    cp $13
    ret nz

    xor a
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    ret


Call_022_41ce:
    ld b, $12

jr_022_41d0:
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    dec b
    jr nz, jr_022_41d0

    ret


Call_022_41d8:
    ld de, $41fe
    add a
    ld b, a
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ret


    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    rst $28
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    rst $28
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d

Call_022_4216:
    push hl
    ld l, a
    ld h, $00
    call Call_000_325c
    pop hl
    ld a, [wDecimalPlayerMoneyTileID+3]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    inc a
    ld [hl+], a
    ret


Call_022_4229:
    ld de, $424a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    inc hl
    inc hl
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl], a
    ret


    nop
    inc c
    inc [hl]
    inc [hl]
    nop
    inc c
    inc [hl]
    dec [hl]
    nop
    inc c
    inc [hl]
    ld [hl], $00
    inc c
    inc [hl]
    scf
    nop
    inc c
    inc [hl]
    jr c, jr_022_425f

jr_022_425f:
    inc c
    inc [hl]
    add hl, sp
    nop
    inc c
    inc [hl]
    ld a, [hl-]
    nop
    inc c
    inc [hl]
    dec sp
    nop
    inc c
    inc [hl]
    inc a
    nop
    inc c
    inc [hl]
    dec a
    nop
    inc c
    dec [hl]
    inc [hl]
    nop
    inc c
    dec [hl]
    dec [hl]
    rrca
    inc c
    inc [hl]
    inc [hl]
    rrca
    inc c
    inc [hl]
    dec [hl]
    rrca
    inc c
    inc [hl]
    ld [hl], $0f
    inc c
    inc [hl]
    scf
    rrca
    inc c
    inc [hl]
    jr c, jr_022_429e

    inc c
    inc [hl]
    add hl, sp
    rrca
    inc c
    inc [hl]
    ld a, [hl-]
    rrca
    inc c
    inc [hl]
    dec sp
    rrca
    inc c
    inc [hl]
    inc a

jr_022_429e:
    rrca
    inc c
    inc [hl]
    dec a
    rrca
    inc c
    dec [hl]
    inc [hl]
    rrca
    inc c
    dec [hl]
    dec [hl]

Call_022_42aa:
    push de
    ld a, [sCurrentSeason]
    ld c, $1e
    call Multiply8Bit
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    call DivideHLByA_16bit
    add a
    add a
    ld hl, $42e0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    ret


    ld e, b
    ld e, c
    ld e, d
    ld d, a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld e, e
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, h
    ld l, d
    ld l, e
    ld l, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

Call_022_42fc:
    ld a, [sSpriteEventFlags]
    bit 7, a
    call nz, Call_022_439b
    ld a, [sSpriteEventFlags]
    bit 6, a
    call nz, Call_022_43c6
    ld a, [sSpriteEventFlags+1]
    bit 0, a
    ret z

    bit 2, a
    ret nz

    bit 1, a
    ret nz

    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld a, h
    or l
    jr z, jr_022_4343

jr_022_4329:
    ld a, [sSpriteEventFlags+1]
    set 2, a
    ld [sSpriteEventFlags+1], a
    ld a, [sSpriteTotalHappiness]
    cp $0a
    jr c, jr_022_433e

    sub $0a
    ld [sSpriteTotalHappiness], a
    ret


jr_022_433e:
    xor a
    ld [sSpriteTotalHappiness], a
    ret


jr_022_4343:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld b, a
    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_022_435e

    add b
    cp $20
    jr nc, jr_022_4329

    ret


jr_022_435e:
    add b
    cp $06
    jr nc, jr_022_4329

    ret


Call_022_4364:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld a, h
    or l
    jr z, jr_022_437a

jr_022_4375:
    xor a
    ld [$ba4e], a
    ret


jr_022_437a:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld b, a
    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_022_4395

    add b
    cp $20
    jr nc, jr_022_4375

    ret


jr_022_4395:
    add b
    cp $06
    jr nc, jr_022_4375

    ret


Call_022_439b:
    ld a, [$ba38]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_022_43bb

    ld a, [$cbe5]
    ld l, a
    cp $0c
    jr nc, jr_022_43bb

    ld a, [$ba38]
    add l
    cp $0c
    jr nc, jr_022_43bb

    ld [$ba38], a
    ret


jr_022_43bb:
    ld a, 1
    ld [sShedSuperSickleFlag], a
    ld a, $ff
    ld [$ba38], a
    ret


Call_022_43c6:
    ld a, [$ba39]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_022_43e6

    ld a, [$cbe5]
    ld l, a
    cp $18
    jr nc, jr_022_43e6

    ld a, [$ba39]
    add l
    cp $18
    jr nc, jr_022_43e6

    ld [$ba39], a
    ret


jr_022_43e6:
    ld a, $01
    ld [$b8a8], a
    ld a, $ff
    ld [$ba39], a
    ret


Call_022_43f1:
    call Call_022_483a
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld b, a
    ld a, [sCurrentDayCounter]
    add l
    ld [sCurrentDayCounter], a
    ld a, [sCurrentHour]
    add b
    ld [sCurrentHour], a
    cp TIME_12_AM
    jr c, jr_022_4420

    sub $18
    ld [sCurrentHour], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a

jr_022_4420:
    ld a, [sCurrentDayCounter]
    ld l, a
    ld h, $00
    ld a, $1e
    call DivideHLByA_16bit
    ld [sCurrentDayCounter], a
    ld a, [sCurrentSeason]
    add l
    ld [sCurrentSeason], a
    ld l, a
    ld h, $00
    ld a, $04
    call DivideHLByA_16bit
    ld [sCurrentSeason], a
    ld a, [sCurrentYear]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [sCurrentYear], a
    cp $63
    ret c

    ld a, $63
    ld [sCurrentYear], a
    ret


Call_022_4456:
    ld a, [$cbdd]
    ld b, a
    ld a, [sCurrentYear]
    cp b
    jr nz, jr_022_4474

    ld a, [sCurrentSeason]
    cp $03
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    jr jr_022_44c7

jr_022_4474:
    ld a, [sCurrentSeason]
    ld hl, $02d0
    call MultiplyHLByA_ReturnHigh
    push hl
    ld a, [sCurrentDayCounter]
    ld c, $18
    call Multiply8Bit
    pop de
    add hl, de
    ld a, [sCurrentHour]
    sub $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $18
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cbe5]
    sub l
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc h
    ld [$cbe4], a
    ld a, [sCurrentYear]
    dec a
    ld [sCurrentYear], a
    ld a, $03
    ld [sCurrentSeason], a
    ld a, $1d
    ld [sCurrentDayCounter], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ret


jr_022_44c7:
    ld a, [sCurrentHour]
    sub $06
    ld b, a
    ld a, [$cbe5]
    sub b
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc $00
    ld [$cbe4], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ret


Call_022_44e9:
    ld a, [$b89c]
    cp $01
    jr z, jr_022_44f8

    ld a, [$b8ea]
    cp $00
    jr z, jr_022_44f8

    ret


jr_022_44f8:
    ld a, [sCurrentYear]
    cp $00
    ret nz

    ld a, [$b8ea]
    cp $00
    ret z

    cp $01
    ret nz

    ld a, [sCurrentSeason]
    cp $00
    ret z

    cp $02
    jr nc, jr_022_451a

    ld a, [$b8eb]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret c

jr_022_451a:
    ld a, $02
    ld [$b8ea], a
    ld a, $80
    ld [$b8eb], a
    ret


Call_022_4525:
    ld a, [sCurrentSeason]
    cp $03
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [sHourOfPreviousSleep], a
    ret


Call_022_4542:
    ld a, [$b8fe]
    cp $02
    ret c

    ld a, [$cbe4]
    or a
    jp nz, Jump_022_464f

    ld a, [$b8fe]
    cp $02
    jr z, jr_022_456e

    ld a, [$b8fe]
    cp $03
    jr z, jr_022_45c0

    ld a, [$b8fe]
    cp $04
    jp z, Jump_022_4601

    ld a, [$b8fe]
    cp $05
    jp z, Jump_022_4632

    ret


jr_022_456e:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_022_4581

    ld a, $18
    add b
    ld b, a

jr_022_4581:
    call Call_022_4670
    ld a, $48
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jp nc, Jump_022_464f

    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_45ae

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_45b4

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_45ba

    ret


jr_022_45ae:
    ld a, $05
    ld [$b8fe], a
    ret


jr_022_45b4:
    ld a, $04
    ld [$b8fe], a
    ret


jr_022_45ba:
    ld a, $03
    ld [$b8fe], a
    ret


jr_022_45c0:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_022_45d3

    ld a, $18
    add b
    ld b, a

jr_022_45d3:
    call Call_022_4670
    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_464f

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_45f5

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_45fb

    ret


jr_022_45f5:
    ld a, $05
    ld [$b8fe], a
    ret


jr_022_45fb:
    ld a, $04
    ld [$b8fe], a
    ret


Jump_022_4601:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_022_4614

    ld a, $18
    add b
    ld b, a

jr_022_4614:
    call Call_022_4670
    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_464f

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_022_462c

    ret


jr_022_462c:
    ld a, $05
    ld [$b8fe], a
    ret


Jump_022_4632:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_022_4645

    ld a, $18
    add b
    ld b, a

jr_022_4645:
    call Call_022_4670
    ld a, [$cbe5]
    cp b
    jr nc, jr_022_464f

    ret


Jump_022_464f:
jr_022_464f:
    xor a
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_022_4665

    ld a, $0a
    call Call_000_0f47
    ld a, $02
    ld [sHouseExpansionFlag], a
    ret


jr_022_4665:
    ld a, $0a
    call Call_000_0f47
    ld a, $01
    ld [sHouseExpansionFlag], a
    ret


Call_022_4670:
    ld a, b
    and $80
    jr nz, jr_022_4676

    ret


jr_022_4676:
    ld a, b
    add $18
    ld b, a
    ret


Call_022_467b:
    xor a
    ld [$b88e], a
    ld [$b890], a
    ld [$b891], a
    ld [$b893], a
    ld [$b896], a
    ld [$b899], a
    ld [$b89a], a
    ld a, $80
    ld [$b894], a
    ld [$b895], a
    ld [$b89b], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    call Call_022_46ad
    call Call_022_4734
    ret


Call_022_46ad:
    ld a, [sCurrentYear]
    or a
    jr nz, jr_022_471b

    ld a, [sCurrentSeason]
    cp $02
    jr z, jr_022_471b

    ld a, [sCurrentSeason]
    cp $03
    jr z, jr_022_471b

    ld a, [$b8a2]
    cp $80
    ret z

    ld a, [$b8a2]
    cp $ff
    jr z, jr_022_46d6

    ld a, [sCurrentSeason]
    cp $00
    ret z

    jr jr_022_46e2

jr_022_46d6:
    ld a, [sCurrentSeason]
    cp $00
    jr z, jr_022_46ef

    ld a, $09
    ld [$b8a2], a

jr_022_46e2:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_022_46fb

    jr nc, jr_022_471b

    ret


jr_022_46ef:
    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, $09
    ld [$b8a2], a
    ret


jr_022_46fb:
    ld a, SUNNY_DAY
    ld [sCurrentWeather], a
    ld [sNextDayWeather], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_022_471b:
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [sSpriteEventFlags+1]
    set 0, a
    ld [sSpriteEventFlags+1], a
    ld a, $80
    ld [$b8a2], a
    ret


Call_022_4734:
    ld a, [sCurrentSeason]
    cp $02
    jr z, jr_022_47b5

    ld a, [sCurrentSeason]
    cp $03
    jr z, jr_022_47b5

    ld a, [$b8a1]
    cp $80
    jr z, jr_022_47bb

    ld a, [$b8a1]
    cp $ff
    jr z, jr_022_4758

    ld a, [sCurrentSeason]
    cp $00
    ret z

    jr jr_022_476e

jr_022_4758:
    ld a, [sCurrentSeason]
    cp $00
    jr z, jr_022_477b

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a

jr_022_476e:
    ld a, [$b8a1]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_022_4791

    jr nc, jr_022_47b5

    ret


jr_022_477b:
    ld a, [sCurrentDayCounter]
    cp $1d
    ret nz

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a
    ret


jr_022_4791:
    ld a, WINDY_DAY
    ld [sCurrentWeather], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_022_47b5:
    ld a, $80
    ld [$b8a1], a
    ret


jr_022_47bb:
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jr z, jr_022_47ca

    ld a, [sNextDayWeather]
    cp WINDY_DAY
    jr z, jr_022_4801
    ret


jr_022_47ca:
    ld a, [$ba4c]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret z

    ld a, [$ba4c]
    inc a
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_022_47e0

    jr jr_022_47e6

jr_022_47e0:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

jr_022_47e6:
    ld a, SUNNY_DAY
    ld [sCurrentWeather], a
    ld [sNextDayWeather], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ret


jr_022_4801:
    ld a, [$ba4d]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret z

    ld a, [$ba4c]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_022_4815

    ret


jr_022_4815:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    ld a, $03
    ld [sCurrentWeather], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, $00
    ld [sNextDayWeather], a
    ret


Call_022_483a:
    ld a, [$b886]
    ld hl, $05a0
    call MultiplyHLByA_ReturnHigh
    ld a, l
    ldh [$ffae], a
    ld a, h
    ldh [$ffaf], a
    ld a, c
    ldh [$ffb0], a
    ld a, [$b887]
    ld c, $3c
    call Multiply8Bit
    ld a, [$b888]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffae
    call AddSignedBCToHL
    ld a, [$c902]
    ld hl, $05a0
    call MultiplyHLByA_ReturnHigh
    ld a, l
    ldh [$ffb2], a
    ld a, h
    ldh [$ffb3], a
    ld a, c
    ldh [$ffb4], a
    ld a, [$c903]
    ld c, $3c
    call Multiply8Bit
    ld a, [$c904]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffb2
    call AddSignedBCToHL
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffb2]
    sub b
    ld l, a
    ldh a, [$ffaf]
    ld b, a
    ldh a, [$ffb3]
    sbc b
    ld h, a
    ldh a, [$ffb0]
    ld b, a
    ldh a, [$ffb4]
    sbc b
    cp $00
    jr z, jr_022_48ab

    ld hl, $ffff

jr_022_48ab:
    ld a, [$ba41]
    cp $00
    jr z, jr_022_48d2

    ld a, h
    cp $55
    jr nc, jr_022_48c0

    cp $54
    jr c, jr_022_48c3

    ld a, l
    cp $61
    jr c, jr_022_48c3

jr_022_48c0:
    ld hl, $5460

jr_022_48c3:
    add hl, hl
    ld a, $0f
    call DivideHLByA_16bit
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


jr_022_48d2:
    ld a, h
    cp $a9
    jr nc, jr_022_48e0

    cp $a8
    jr c, jr_022_48e3

    ld a, l
    cp $c1
    jr c, jr_022_48e3

jr_022_48e0:
    ld hl, $a8c0

jr_022_48e3:
    ld a, $0f
    call DivideHLByA_16bit
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


    ld a, h
    cp $0c
    jr nc, jr_022_48ff

    cp $0b
    jr c, jr_022_4902

    ld a, l
    cp $41
    jr c, jr_022_4902

jr_022_48ff:
    ld hl, $0b40

jr_022_4902:
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


Call_022_490b:
    ld a, h
    or a
    jr nz, jr_022_4915

    ld a, l
    cp $18
    jr nc, jr_022_4915

    ret


jr_022_4915:
    ld a, [sPlayerMaxEnergy]
    ld [sPlayerEnergy], a
    ret


Call_022_491c:
    ld a, $f1
    ld [$9800], a
    ld b, $12
    ld a, $f2
    ld hl, $9801

jr_022_4928:
    ld [hl+], a
    dec b
    jr nz, jr_022_4928

    ld a, $f3
    ld [$9813], a
    ld a, $f4
    ld [$9a20], a
    ld b, $12
    ld a, $f5
    ld hl, $9a21

jr_022_493d:
    ld [hl+], a
    dec b
    jr nz, jr_022_493d

    ld a, $f6
    ld [$9a33], a
    ld b, $10
    ld de, $0020
    ld hl, $9820
    ld a, $f7

jr_022_4950:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_022_4950

    ld b, $10
    ld de, $0020
    ld hl, $9833
    ld a, $f8

jr_022_495f:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_022_495f

    ret


    inc de
    jr z, jr_022_4985

    ld a, [de]
    ld [hl-], a
    xor a
    ld [hl+], a
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

jr_022_4977:
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4

jr_022_4985:
    db $f4
    db $f4
    db $f4
    db $f4
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    inc de
    jr z, jr_022_49cb

    ld a, [de]
    dec h
    xor a
    ld [de], a
    ld hl, $2922
    ld h, $1e
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
    rrca
    ld [hl+], a
    ld e, $1c
    ld e, $2c
    ld d, $1a
    dec l
    ld e, $2b
    ld [hl+], a
    daa
    jr nz, jr_022_4977

    xor a
    xor a
    xor a

jr_022_49cb:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
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
    inc l
    xor a
    xor a
    dec b
    ld e, $1e
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    ld a, [de]
    ld [hl-], a
    inc l
    xor a
    xor a

Call_022_4a07:
    call Call_022_4e9a
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld a, l
    ld [$cbdc], a
    or a
    ret z

    call Call_022_4ff4
    ld a, [$cbde]
    ldh [$ffa6], a
    ld a, [$cbdf]
    ldh [$ffa7], a
    ld a, [$cbdc]
    or a
    ret z

    ld e, a
    jr jr_022_4a53

Jump_022_4a32:
    ldh a, [$ffa7]
    inc a
    ldh [$ffa7], a
    cp $1e
    jr nz, jr_022_4a45

    xor a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    and $03
    ldh [$ffa6], a

jr_022_4a45:
    ld a, [$ccc6]
    dec a
    ld [$ccc6], a
    cp $ff
    jr nz, jr_022_4a53

    call Call_022_4ff4

jr_022_4a53:
    xor a
    ldh [$ffa8], a
    push de
    ld hl, $a000
    ld bc, $0c40

Jump_022_4a5d:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_022_4adc

    ld a, e
    and $f0
    cp $40
    jr nz, jr_022_4a71

    call Call_022_4b0d
    jr jr_022_4adc

jr_022_4a71:
    ld a, [$ccc6]
    or a
    jr z, jr_022_4adc

    ld a, e
    and $f0
    cp $50
    jr z, jr_022_4a84

    cp $60
    jr z, jr_022_4a84

    jr jr_022_4a89

jr_022_4a84:
    call Call_022_4bf8
    jr jr_022_4adc

jr_022_4a89:
    cp $70
    jr z, jr_022_4a93

    cp $80
    jr z, jr_022_4a93

    jr jr_022_4a98

jr_022_4a93:
    call Call_022_4c56
    jr jr_022_4adc

jr_022_4a98:
    cp $90
    jr z, jr_022_4a9e

    jr jr_022_4aa3

jr_022_4a9e:
    call Call_022_4b4b
    jr jr_022_4adc

jr_022_4aa3:
    cp $a0
    jr z, jr_022_4aa9

    jr jr_022_4aae

jr_022_4aa9:
    call Call_022_4b9f
    jr jr_022_4adc

jr_022_4aae:
    cp $b0
    jr z, jr_022_4ab4

    jr jr_022_4ab9

jr_022_4ab4:
    call Call_022_4cbc
    jr jr_022_4adc

jr_022_4ab9:
    cp $c0
    jr z, jr_022_4abf

    jr jr_022_4ac4

jr_022_4abf:
    call Call_022_4d11
    jr jr_022_4adc

jr_022_4ac4:
    cp $d0
    jr z, jr_022_4aca

    jr jr_022_4acf

jr_022_4aca:
    call Call_022_4d6a
    jr jr_022_4adc

jr_022_4acf:
    cp $e0
    jr z, jr_022_4ad9

    cp $f0
    jr z, jr_022_4ad9

    jr jr_022_4adc

jr_022_4ad9:
    call Call_022_4dc3

jr_022_4adc:
    dec bc
    ld a, b
    or c
    cp $00
    jp nz, Jump_022_4a5d

    ldh a, [$ffa8]
    ld b, a
    ld a, [$cbe6]
    add b
    ld [$cbe6], a
    ld a, [$cbe7]
    adc $00
    ld [$cbe7], a
    pop de
    dec e
    jp nz, Jump_022_4a32

    ret


Call_022_4afc:
    ld hl, $6caa
    ld a, $32
    call BankSwitchCallHL
    ld hl, $6c85
    ld a, $32
    call BankSwitchCallHL
    ret


Call_022_4b0d:
    push hl
    push bc
    dec hl
    dec hl
    push de
    ldh a, [$ffa6]
    cp $03
    jp z, Jump_022_4b37

    ld a, [hl]
    cp $49
    jr z, jr_022_4b24

    inc a
    ld [hl], a

jr_022_4b20:
    pop de
    pop bc
    pop hl
    ret


jr_022_4b24:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    ld hl, $b93a
    ld bc, $0001
    call AddBCtoWordAtHL
    pop hl
    jr jr_022_4b20

Jump_022_4b37:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop hl
    jr jr_022_4b20

    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4b4b:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $98
    jr z, jr_022_4b88

    inc a
    ld [hl], a
    sub $90
    push hl
    ld hl, $4b42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4b74

    ld a, [hl]
    jr jr_022_4b81

jr_022_4b74:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $90
    push hl
    inc bc
    ld a, [bc]

jr_022_4b81:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_022_4b88:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


Jump_022_4b97:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    pop hl
    ret


Call_022_4b9f:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $ac
    jr z, jr_022_4bdc

    inc a
    ld [hl], a
    sub $a0
    push hl
    ld hl, $4beb
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4bc8

    ld a, [hl]
    jr jr_022_4bd5

jr_022_4bc8:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $a0
    push hl
    inc bc
    ld a, [bc]

jr_022_4bd5:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_022_4bdc:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0050
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4bf8:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $60
    jr z, jr_022_4c35

    inc a
    ld [hl], a
    sub $50
    push hl
    ld hl, $4c45
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4c21

    ld a, [hl]
    jr jr_022_4c2e

jr_022_4c21:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $50
    push hl
    inc bc
    ld a, [bc]

jr_022_4c2e:
    pop hl
    inc hl
    ld [hl-], a

jr_022_4c31:
    pop de
    pop bc
    pop hl
    ret


jr_022_4c35:
    push hl
    ld a, $5c
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0064
    call Call_000_1162
    pop hl
    jr jr_022_4c31

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4c56:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $88
    jr z, jr_022_4c93

    inc a
    ld [hl], a
    sub $70
    push hl
    ld hl, $4ca3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4c7f

    ld a, [hl]
    jr jr_022_4c8c

jr_022_4c7f:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $70
    push hl
    inc bc
    ld a, [bc]

jr_022_4c8c:
    pop hl
    inc hl
    ld [hl-], a

jr_022_4c8f:
    pop de
    pop bc
    pop hl
    ret


jr_022_4c93:
    push hl
    ld a, $82
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_022_4c8f

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4cbc:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $b8
    jr z, jr_022_4cf9

    inc a
    ld [hl], a
    sub $b0
    push hl
    ld hl, $4d08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4ce5

    ld a, [hl]
    jr jr_022_4cf2

jr_022_4ce5:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $b0
    push hl
    inc bc
    ld a, [bc]

jr_022_4cf2:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_022_4cf9:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4d11:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $cc
    jr z, jr_022_4d4e

    inc a
    ld [hl], a
    sub $c0
    push hl
    ld hl, $4d5d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4d3a

    ld a, [hl]
    jr jr_022_4d47

jr_022_4d3a:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $c0
    push hl
    inc bc
    ld a, [bc]

jr_022_4d47:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_022_4d4e:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4d6a:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $dc
    jr z, jr_022_4da7

    inc a
    ld [hl], a
    sub $d0
    push hl
    ld hl, $4db6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4d93

    ld a, [hl]
    jr jr_022_4da0

jr_022_4d93:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $d0
    push hl
    inc bc
    ld a, [bc]

jr_022_4da0:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_022_4da7:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4dc3:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_022_4b97

    push de
    ld a, [hl]
    cp $f0
    jr z, jr_022_4e00

    inc a
    ld [hl], a
    sub $e0
    push hl
    ld hl, $4e10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_022_4dec

    ld a, [hl]
    jr jr_022_4df9

jr_022_4dec:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $e0
    push hl
    inc bc
    ld a, [bc]

jr_022_4df9:
    pop hl
    inc hl
    ld [hl-], a

jr_022_4dfc:
    pop de
    pop bc
    pop hl
    ret


jr_022_4e00:
    push hl
    ld a, $ec
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_022_4dfc

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_022_4e21:
    ld a, [$cbe2]
    ld l, a
    ld a, [$cbe3]
    ld h, a
    call Call_000_325c
    ld hl, $9928
    ld a, [wDecimalPlayerMoneyTileID+1]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+2]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    inc a
    ld [hl], a
    ret


Call_022_4e44:
    ld a, [$cbe6]
    ld l, a
    ld a, [$cbe7]
    ld h, a
    call Call_000_325c
    ld hl, $9989
    ld a, [wDecimalPlayerMoneyTileID+2]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    inc a
    ld [hl], a
    ret


Call_022_4e62:
    ld a, [$ccc7]
    ld l, a
    ld h, $00
    call Call_000_325c
    ld hl, $99e9
    ld a, [wDecimalPlayerMoneyTileID+2]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+3]
    inc a
    ld [hl+], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    inc a
    ld [hl], a
    ret


    push hl
    inc hl
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    cp $28
    jr nc, jr_022_4e93

    cp $27
    jr c, jr_022_4e99

    ld a, [hl]
    cp $10
    jr nc, jr_022_4e93

    jr jr_022_4e99

jr_022_4e93:
    ld a, $0f
    ld [hl], a
    ld a, $27
    ld [bc], a

jr_022_4e99:
    ret


Call_022_4e9a:
    ld a, [$cbe4]
    or a
    jr nz, jr_022_4ebd

    ld a, [$cbe5]
    ld b, a
    or a
    ret z

    cp $18
    jr nc, jr_022_4ebd

    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_022_4eb7

    add b
    cp $1e
    jr nc, jr_022_4ebd

    ret


jr_022_4eb7:
    add b
    cp $06
    jr nc, jr_022_4ebd

    ret


jr_022_4ebd:
    ld a, [sShipmentPayment]
    ld c, a
    ld a, [sShipmentPayment+1]
    ld b, a
    ld hl, sPlayerMoney
    call AddSignedBCToHL
    xor a
    ld [sShipmentPayment], a
    ld [sShipmentPayment+1], a
    ret


Call_022_4ed3:
    ld hl, $a000
    ld bc, $0c40

jr_022_4ed9:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_022_4f4f

    ld a, e
    and $f0
    cp $40
    jr nz, jr_022_4eed

    call Call_022_4f8d
    jr jr_022_4f4f

jr_022_4eed:
    cp $50
    jr z, jr_022_4ef7

    cp $60
    jr z, jr_022_4ef7

    jr jr_022_4efc

jr_022_4ef7:
    call Call_022_4fa2
    jr jr_022_4f4f

jr_022_4efc:
    cp $70
    jr z, jr_022_4f06

    cp $80
    jr z, jr_022_4f06

    jr jr_022_4f0b

jr_022_4f06:
    call Call_022_4faa
    jr jr_022_4f4f

jr_022_4f0b:
    cp $90
    jr z, jr_022_4f11

    jr jr_022_4f16

jr_022_4f11:
    call Call_022_4fb3
    jr jr_022_4f4f

jr_022_4f16:
    cp $a0
    jr z, jr_022_4f1c

    jr jr_022_4f21

jr_022_4f1c:
    call Call_022_4fbc
    jr jr_022_4f4f

jr_022_4f21:
    cp $b0
    jr z, jr_022_4f27

    jr jr_022_4f2c

jr_022_4f27:
    call Call_022_4fc5
    jr jr_022_4f4f

jr_022_4f2c:
    cp $c0
    jr z, jr_022_4f32

    jr jr_022_4f37

jr_022_4f32:
    call Call_022_4fce
    jr jr_022_4f4f

jr_022_4f37:
    cp $d0
    jr z, jr_022_4f3d

    jr jr_022_4f42

jr_022_4f3d:
    call Call_022_4fd7
    jr jr_022_4f4f

jr_022_4f42:
    cp $e0
    jr z, jr_022_4f4c

    cp $f0
    jr z, jr_022_4f4c

    jr jr_022_4f4f

jr_022_4f4c:
    call Call_022_4fe0

jr_022_4f4f:
    call Call_022_4f5a
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_022_4ed9

    ret


Call_022_4f5a:
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_022_4f7b

    cp $03
    jr z, jr_022_4f7b

    cp $02
    jr z, jr_022_4f7b

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_022_4f8a

    ld a, [hl]
    cp $12
    jr nz, jr_022_4f8a

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_022_4f7b:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_022_4f8a

    ld a, [hl]
    cp $11
    jr nz, jr_022_4f8a

    inc a
    ld [hl], a

jr_022_4f8a:
    pop bc
    pop hl
    ret


Call_022_4f8d:
    ld a, [sCurrentSeason]
    cp $03
    jr z, jr_022_4f95

    ret


jr_022_4f95:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_022_4fa2:
    ld a, [sCurrentSeason]
    cp $01
    jr nz, jr_022_4fe9

    ret


Call_022_4faa:
    ld a, [sCurrentSeason]
    cp $01
    jp nz, Jump_022_4fe9

    ret


Call_022_4fb3:
    ld a, [sCurrentSeason]
    cp $00
    jp nz, Jump_022_4fe9

    ret


Call_022_4fbc:
    ld a, [sCurrentSeason]
    cp $00
    jp nz, Jump_022_4fe9

    ret


Call_022_4fc5:
    ld a, [sCurrentSeason]
    cp $02
    jp nz, Jump_022_4fe9

    ret


Call_022_4fce:
    ld a, [sCurrentSeason]
    cp $02
    jp nz, Jump_022_4fe9

    ret


Call_022_4fd7:
    ld a, [sCurrentSeason]
    cp $03
    jp nz, Jump_022_4fe9

    ret


Call_022_4fe0:
    ld a, [sCurrentSeason]
    cp $03
    jp nz, Jump_022_4fe9

    ret


Jump_022_4fe9:
jr_022_4fe9:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


Call_022_4ff4:
    ld a, [sSpriteTotalHappiness]
    cp $5a
    jr nc, jr_022_5008

    cp $3c
    jr nc, jr_022_500f

    cp $1e
    jr nc, jr_022_5015

    xor a
    ld [$ccc6], a
    ret


jr_022_5008:
    ld a, [$cbdc]
    ld [$ccc6], a
    ret


jr_022_500f:
    ld a, $1d
    ld [$ccc6], a
    ret


jr_022_5015:
    ld a, $06
    ld [$ccc6], a
    ret


    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0de8
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c880], a
    ld [$c860], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c8c0], a
    ld [$c820], a
    ld a, [sInventory]
    cp $16
    jr z, jr_022_50a8

    ld a, [sInventory+1]
    cp $16
    jr z, jr_022_50a8

    ld a, [$b8fa]
    cp $16
    jr z, jr_022_50a8

    ld a, [sHouseExpansionFlag]
    cp $01
    jr nz, jr_022_50a8

    xor a
    ld [$b897], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_022_5096

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_022_509c

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_022_50a3

    jr jr_022_50a8

jr_022_5096:
    xor a
    ld [$b8a5], a
    jr jr_022_50a8

jr_022_509c:
    ld a, NO_ITEM
    ld [sInventory], a
    jr jr_022_50a8

jr_022_50a3:
    ld a, NO_ITEM
    ld [sInventory+1], a

jr_022_50a8:
    ld hl, $7003
    ld c, $22
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $785b
    ld c, $31
    ld de, $9000
    call DrawMaskedClippedTile
    ld hl, $66d8
    ld c, $37
    ld de, $8000
    call DrawMaskedClippedTile
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextID], a
    ld [wTVAnimationTimer], a
    ld [wTVIsTurnedOn], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    ld [wPlayerInFrontOfPet], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ld [$c90d], a
    ld [$cb91], a
    ld [$cb85], a
    ld [$cb8e], a
    di
    call Call_022_5ff1
    xor a
    ld [$c780], a
    ld a, [sHouseExpansionFlag]
    ld [$cbe8], a
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [$b8d1]
    and a
    jp z, Jump_022_514d

    ld de, $8a40
    ld hl, $8dc0
    ld b, $10
    call CopyHLtoDE
    ld de, $8a50
    ld hl, $8dd0
    ld b, $10
    call CopyHLtoDE
    ld de, $8b40
    ld hl, $8ec0
    ld b, $10
    call CopyHLtoDE
    ld de, $8b50
    ld hl, $8ed0
    ld b, $10
    call CopyHLtoDE

Jump_022_514d:
    ld a, [$cbe8]
    cp $00
    jr z, jr_022_5179

    cp $01
    jr z, jr_022_5186

    ld hl, $7824
    ld c, $37
    ld de, $9800
    call DrawMaskedClippedTile
    ld a, $34
    ld [$9835], a
    ld a, $35
    ld [$9836], a
    ld a, $34
    ld [$9855], a
    ld a, $35
    ld [$9856], a
    jr jr_022_5191

jr_022_5179:
    ld hl, $7b7c
    ld c, $27
    ld de, $9800
    call DrawMaskedClippedTile
    jr jr_022_5191

jr_022_5186:
    ld hl, $7cc8
    ld c, $27
    ld de, $9800
    call DrawMaskedClippedTile

jr_022_5191:
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld a, $ff
    ld [wTVBlinkingIndicator], a
    call Call_000_11c2
    call Call_022_669c
    call Call_022_6523
    call $63ff
    call UpdateHourTileData
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb5f], a
    call Call_000_3efc
    call Call_000_3dfd
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_000_0ece
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_022_5222
    call Call_022_52a2
    call Call_022_5880
    call Call_000_3cf8
    call Call_022_5dbe
    call Call_022_537d
    call Call_000_2d67
    call LoadCharacterTileIntoVRAM
    call Call_022_6601
    call Call_000_0ec5
    ret


Call_022_5222:
    ld a, [$b89c]
    cp $01
    jr z, jr_022_5235

    ld a, [$b8ea]
    cp $00
    jr z, jr_022_5235

    ld a, $01
    ld [$b88d], a

jr_022_5235:
    ld a, [$ba43]
    cp $02
    jr z, jr_022_5241

    ld a, $11
    ld [$b88d], a

jr_022_5241:
    ld a, [$b88d]
    or a
    ret z

    ld a, [$b88d]
    cp $11
    jr z, jr_022_5261

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $18
    ld [wMapChangeFreezeTimer], a
    xor a
    ld [wDestinationWarpID], a
    ld a, $01
    ld [wInputFreezeTimer], a
    ret


jr_022_5261:
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    xor a
    ld [$b88d], a
    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ld a, CHICKEN_COUP
    ld [wDestinationWarpID], a
    ld a, $01
    ld [wInputFreezeTimer], a
    ret


    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Call_022_52a2:
    ld a, [$cb73]
    or a
    ret z

    dec a
    ld [$cb73], a
    ld a, [$cb73]
    cp $4f
    jr z, jr_022_52c4

    cp $3c
    jr nc, jr_022_52ca

    cp $3b
    jr z, jr_022_5309

    cp $2e
    jr nc, jr_022_5331

    cp $00
    jp z, Jump_022_5356

    ret


jr_022_52c4:
    ld a, $01
    call Call_000_151d
    ret


jr_022_52ca:
    ld a, [$c60b]
    cp $45
    jr z, jr_022_52e4

    cp $44
    jr z, jr_022_52e4

    cp $43
    jr z, jr_022_52e4

    dec a
    ld [$c60b], a
    ld a, [wPlayerYPosition]
    dec a
    ld [wPlayerYPosition], a

jr_022_52e4:
    ld a, [$cb73]
    sub $3c
    ld hl, $527a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, wPlayerXPosition
    call AddBCtoWordAtHL
    ret


jr_022_5309:
    ld a, $53
    call Call_000_151d
    ld a, [$c60a]
    add $ff
    ld [$c60a], a
    ld a, [$c60b]
    add $f3
    ld [$c60b], a
    ld hl, wPlayerXPosition
    ld bc, $ffff
    call AddBCtoWordAtHL
    ld hl, wPlayerYPosition
    ld bc, $fff3
    call AddBCtoWordAtHL
    ret


jr_022_5331:
    ld a, [$cb73]
    sub $2e
    ld hl, $5292
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, wPlayerXPosition
    call AddBCtoWordAtHL
    ret


Jump_022_5356:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $01
    ld [$c910], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, [sCurrentDayCounter]
    ld [sDayOfPreviousSleep], a
    ld a, [sCurrentHour]
    ld [sHourOfPreviousSleep], a
    ld a, [sCurrentMinute]
    ld [sMinuteOfPreviousSleep], a
    ret


Call_022_537d:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [wTextID]
    cp $ff
    ret nz

    call Call_022_57ef
    call Call_000_0e54
    ld a, [$cb73]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr z, jr_022_53ac

    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
    ret


jr_022_53ac:
    ldh a, [$ff8a]
    and $02
    jr z, jr_022_53b6

    call Call_022_54ff
    ret


jr_022_53b6:
    ldh a, [$ff8b]
    and $08
    jr z, jr_022_53c0

    call Call_000_1923
    ret


jr_022_53c0:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_022_53e7

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_022_542d

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_022_5473

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_022_54b9

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_53e7:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_5429

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_565d

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5670

    ret


jr_022_5429:
    call Call_022_56a9
    ret


Jump_022_542d:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_546f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_565d

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5670

    ret


jr_022_546f:
    call Call_022_56f7
    ret


Jump_022_5473:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_54b5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_5683

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5696

    ret


jr_022_54b5:
    call Call_022_5725
    ret


Jump_022_54b9:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_54fb

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_5683

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5696

    ret


jr_022_54fb:
    call Call_022_5791
    ret


Call_022_54ff:
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_022_5512

    ld a, [$c605]
    cp $08
    jr nz, jr_022_5512

    ld a, $34
    call Call_000_25ce

jr_022_5512:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_022_552c

    ldh a, [$ff8a]
    and $20
    jr nz, jr_022_5530

    ldh a, [$ff8a]
    and $10
    jr nz, jr_022_5534

    ldh a, [$ff8a]
    and $40
    jr nz, jr_022_5538

    jr jr_022_5547

jr_022_552c:
    ld a, $00
    jr jr_022_553a

jr_022_5530:
    ld a, $01
    jr jr_022_553a

jr_022_5534:
    ld a, $02
    jr jr_022_553a

jr_022_5538:
    ld a, $03

jr_022_553a:
    ld [wPlayerFacingDirection], a
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a

jr_022_5547:
    ld a, [wPlayerFacingDirection]
    cp $00
    jp z, Jump_022_559a

    cp $01
    jp z, Jump_022_55db

    cp $02
    jp z, Jump_022_561c

    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_022_542d

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_5593

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_565d

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5670

    ret


jr_022_5593:
    call Call_022_56f7
    call Call_022_56f7
    ret


Jump_022_559a:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_022_53e7

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_55d4

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_565d

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5670

    ret


jr_022_55d4:
    call Call_022_56a9
    call Call_022_56a9
    ret


Jump_022_55db:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_022_5473

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_5615

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_5683

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5696

    ret


jr_022_5615:
    call Call_022_5725
    call Call_022_5725
    ret


Jump_022_561c:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_022_54b9

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_022_5656

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_022_5683

    ld a, [wcb32]
    and $01
    jp z, Jump_022_5696

    ret


jr_022_5656:
    call Call_022_5791
    call Call_022_5791
    ret


Jump_022_565d:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_150b
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_022_5725
    ret


Jump_022_5670:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1514
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_022_5791
    ret


Jump_022_5683:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1502
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_022_56f7
    ret


Jump_022_5696:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_022_56a9
    ret


Call_022_56a9:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $83
    jr nc, jr_022_56d1

    ld a, [wPlayerYPosition]
    cp $5c
    jr nc, jr_022_56bd

    jr jr_022_56ca

jr_022_56bd:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_022_56c5:
    ld hl, wPlayerYPosition
    inc [hl]
    ret


jr_022_56ca:
    ld hl, $c60b
    inc [hl]
    jr jr_022_56c5

    ret


jr_022_56d1:
    ld a, [sCurrentWeather]
    cp $03
    jr z, jr_022_56ec

    ld a, $18
    ld [wMapChangeFreezeTimer], a
    xor a
    ld [wDestinationWarpID], a
    ld a, [wPlayerHoldingPet]
    or a
    ret z

    ld a, $01
    ld [sPetIsOutside], a
    ret


jr_022_56ec:
    ld a, $44
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_022_56f7:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $0e
    ret c

    ld a, [wPlayerYPosition]
    cp $5d
    jr nc, jr_022_5711

    ld a, [wPlayerYPosition]
    cp $08
    jr c, jr_022_571e

    jr jr_022_571e

jr_022_5711:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_022_5719:
    ld hl, wPlayerYPosition
    dec [hl]
    ret


jr_022_571e:
    ld hl, $c60b
    dec [hl]
    jr jr_022_5719

    ret


Call_022_5725:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $18
    ret c

    ld a, [$cbe8]
    cp $00
    jr z, jr_022_5763

    cp $01
    jr z, jr_022_576c

    ld a, [wPlayerXPosition]
    cp $b9
    jr nc, jr_022_575c

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_022_574f

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_022_575c

jr_022_574f:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_022_5757:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_022_575c:
    ld hl, $c60a
    dec [hl]
    jr jr_022_5757

    ret


jr_022_5763:
    ld hl, wPlayerXPosition
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_022_576c:
    ld a, [wPlayerXPosition]
    cp $99
    jr nc, jr_022_578a

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_022_5781

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_022_578a

jr_022_5781:
    ld hl, $ff93
    dec [hl]

jr_022_5785:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_022_578a:
    ld hl, $c60a
    dec [hl]
    jr jr_022_5785

    ret


Call_022_5791:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $f8
    ret nc

    ld a, [$cbe8]
    cp $00
    jr z, jr_022_57c8

    cp $01
    jr z, jr_022_57d1

    ld a, [wPlayerXPosition]
    cp $b8
    jr nc, jr_022_57c1

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_022_57c1

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_022_57bc:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_022_57c1:
    ld hl, $c60a
    inc [hl]
    jr jr_022_57bc

    ret


jr_022_57c8:
    ld hl, wPlayerXPosition
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_022_57d1:
    ld a, [wPlayerXPosition]
    cp $98
    jr nc, jr_022_57e8

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_022_57e8

    ld hl, $ff93
    inc [hl]

jr_022_57e3:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_022_57e8:
    ld hl, $c60a
    inc [hl]
    jr jr_022_57e3

    ret


Call_022_57ef:
    ld a, [wMapChangeFreezeTimer]
    or a
    ret z

    dec a
    ld [wMapChangeFreezeTimer], a
    cp $00
    jr z, jr_022_57fe

    pop hl
    ret


jr_022_57fe:
    ld a, [wDestinationWarpID]
    cp COW_BARN
    jr z, jr_022_5838

    ld a, [wDestinationWarpID]
    cp CHICKEN_COUP
    jr z, jr_022_5857

    ld a, [wDestinationWarpID]
    or a
    jr z, jr_022_5823

    ld a, $1b
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $02
    ld [$c910], a
    pop hl
    ret


jr_022_5823:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $00
    ld [$c910], a
    xor a
    ld [wMapChangeFreezeTimer], a
    pop hl
    ret


jr_022_5838:
    pop hl
    ld a, $22
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $02
    ld [$c910], a
    xor a
    ld [wMapChangeFreezeTimer], a
    ld a, [wPlayerHoldingPet]
    or a
    ret z

    ld a, $01
    ld [sPetIsOutside], a
    ret


jr_022_5857:
    ld a, $0d
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [wMapChangeFreezeTimer], a
    pop hl
    ret


    ld a, $00
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [wMapChangeFreezeTimer], a
    ret


Call_022_5880:
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wDominantFacingTileProperty]
    and $02
    ret z

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [wDominantFacingTileID]
    cp $0a
    jr z, jr_022_58e5

    cp $02
    jr z, jr_022_58fe

    cp $03
    jr z, jr_022_5909

    cp $04
    jp z, Jump_022_595b

    ret z

    cp $05
    jr z, jr_022_58f0

    cp $06
    jr z, jr_022_592a

    cp $07
    jr z, jr_022_592a

    cp $08
    jp z, Jump_022_592a

    cp $09
    jp z, Jump_022_5935

    cp $0b
    jp z, Jump_022_5975

    cp $0c
    jp z, Jump_022_598a

    cp $99
    jp z, Jump_022_599a

    ret


    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ld a, $ff
    ld [wDestinationWarpID], a
    ret


jr_022_58e5:
    ld a, $05
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_58f0:
    ld a, $01
    ld [wMapChangeFreezeTimer], a
    ld a, $01
    ld [wDestinationWarpID], a
    call Call_000_0f0f
    ret


jr_022_58fe:
    ld a, $07
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_5909:
    ld a, [sCurrentYear]
    inc a
    ld l, a
    ld h, $00
    call Call_000_325c
    ld a, [wDecimalPlayerMoneyTileID+3]
    ld [$cbec], a
    ld a, [wDecimalPlayerMoneyTileID+4]
    ld [$cbed], a
    ld a, $1d
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_592a:
jr_022_592a:
    ld a, $08
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_5935:
    ld a, [sFoundMoneyInDresser]
    or a
    jr nz, jr_022_5950

    ld a, $01
    ld [sFoundMoneyInDresser], a
    ld hl, sPlayerMoney
    ld bc, 1000
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    ld a, $09
    jr jr_022_5952

jr_022_5950:
    ld a, $0a

jr_022_5952:
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_595b:
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [wTVIsTurnedOn]
    or a
    ret nz

    ld a, $80
    ld [wTVAnimationTimer], a
    ld a, $01
    ld [wTVIsTurnedOn], a
    ld a, $10
    ld [wInputFreezeTimer], a
    ret


Jump_022_5975:
    ld a, [sNumPowerBerriesEaten]
    or a
    jr nz, jr_022_597f

    ld a, $45
    jr jr_022_5981

jr_022_597f:
    ld a, $46

jr_022_5981:
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_598a:
    ld a, [$b8d1]
    and a
    ret z

    ld a, $52
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_022_599a:
    ld a, [wPlayerFacingDirection]
    cp $02
    jr z, jr_022_59ae

    cp $00
    jr z, jr_022_59be

    cp $03
    jr z, jr_022_59ce

    cp $01
    jr z, jr_022_59de

    ret


jr_022_59ae:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret


jr_022_59be:
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret


jr_022_59ce:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret


jr_022_59de:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret


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
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

Call_022_5a6e:
    call Call_022_5b94
    ld a, [sCurrentDayCounter]
    ld [sNextDayCounter], a
    ld a, [sCurrentSeason]
    ld [sSeasonOfNextDay], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [sNextDayCounter], a
    cp $1e
    jr nz, jr_022_5a95

    xor a
    ld [sNextDayCounter], a
    ld a, [sSeasonOfNextDay]
    inc a
    and $03
    ld [sSeasonOfNextDay], a

jr_022_5a95:
    call Call_022_5b4d
    ld a, [sCurrentWeather]
    cp $03
    jr nz, jr_022_5aa5

    ld a, $00
    ld [sNextDayWeather], a
    ret


jr_022_5aa5:
    ld a, [sSeasonOfNextDay]
    cp $01
    jr nz, jr_022_5abc

    ld a, [$b8a2]
    ld b, a
    ld a, [sNextDayCounter]
    cp b
    jr nz, jr_022_5abc

    ld a, $00
    ld [sNextDayWeather], a
    ret


jr_022_5abc:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr nz, jr_022_5acc

    ld a, $00
    ld [sNextDayWeather], a
    ret


jr_022_5acc:
    ld a, [sSeasonOfNextDay]
    cp $00
    jp z, Jump_022_5af3

    cp $01
    jp z, Jump_022_5b08

    cp $02
    jp z, Jump_022_5b38

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $1f
    ld hl, $5a4e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret


Jump_022_5af3:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $1f
    ld hl, $59ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret


Jump_022_5b08:
    ld a, [$b8a1]
    ld b, a
    ld a, [sNextDayCounter]
    cp b
    jr nz, jr_022_5b23

    ld a, $03
    ld [sNextDayWeather], a
    ld a, [sCurrentDayCounter]
    ld [$ba4d], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_022_5b23:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $1f
    ld hl, $5a0e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret


Jump_022_5b38:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $1f
    ld hl, $5a2e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret


Call_022_5b4d:
    ld a, [$b893]
    or a
    jr nz, jr_022_5b8d

    ld a, [sSeasonOfNextDay]
    cp $01
    jr z, jr_022_5b69

    ld a, [sSeasonOfNextDay]
    cp $02
    jr z, jr_022_5b71

    ld a, [sSeasonOfNextDay]
    cp $03
    jr z, jr_022_5b79

    ret


jr_022_5b69:
    ld a, [sNextDayCounter]
    cp $13
    jr z, jr_022_5b86

    ret


jr_022_5b71:
    ld a, [sNextDayCounter]
    cp $09
    jr z, jr_022_5b86

    ret


jr_022_5b79:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sNextDayCounter]
    cp $13
    jr z, jr_022_5b86

    ret


jr_022_5b86:
    ld a, $00
    ld [sNextDayWeather], a
    pop hl
    ret


jr_022_5b8d:
    ld a, $00
    ld [sCurrentWeather], a
    pop hl
    ret


Call_022_5b94:
    ld a, [sCurrentSeason]
    or a
    ret nz

    ld a, [sCurrentDayCounter]
    cp $1b
    call z, Call_022_5bab
    ld a, [sCurrentDayCounter]
    cp $1c
    call z, Call_022_5bc1
    ret


    ret


Call_022_5bab:
    ld a, [sCurrentYear]
    or a
    ret nz

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $0a
    call DivideHLByA_16bit
    ld [$b8a2], a
    ret


Call_022_5bc1:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $1e
    call DivideHLByA_16bit
    ld b, a
    ld a, [$b8a2]
    cp b
    jr nz, jr_022_5bd6

    inc b

jr_022_5bd6:
    ld a, b
    ld [$b8a1], a
    ld [$ba4c], a
    ret


    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    jr nz, jr_022_5c50

    ld hl, $2441
    ld b, d
    dec h
    ld b, e
    jr nc, jr_022_5c68

    ld sp, $3451
    ld d, d
    dec [hl]
    ld d, e
    ld [hl+], a
    ld b, b
    inc hl
    ld b, c
    inc h
    ld b, d
    dec h
    ld b, e
    ld [hl-], a
    ld d, b
    inc sp
    ld d, c
    inc [hl]
    ld d, d
    dec [hl]
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b

jr_022_5c50:
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b

jr_022_5c68:
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, d
    ld d, b
    ld d, e
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, d
    ld b, b
    ld h, e
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], d
    ld d, b
    ld [hl], e
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld h, h
    ld b, b
    ld h, l
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], h
    ld d, b
    ld [hl], l
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_022_5db8

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_022_5db0

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_022_5dd8

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_022_5dd0

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr @+$52

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    ld e, b
    ld b, b

jr_022_5db0:
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b

jr_022_5db8:
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e

Call_022_5dbe:
    ld a, [wTVAnimationTimer]
    or a
    ret z

    ld a, [wTVIsTurnedOn]
    or a
    jr nz, jr_022_5dd6

    ld a, $ff
    ld [wTVBlinkingIndicator], a
    ld a, $00

jr_022_5dd0:
    ld [wTVAnimationTimer], a
    jp Jump_022_5e5e


jr_022_5dd6:
    ld a, $10

jr_022_5dd8:
    ld [wInputFreezeTimer], a
    ld a, [sCurrentWeather]
    cp $03
    jr nz, jr_022_5de7

    ld hl, $5d5e
    jr jr_022_5e11

jr_022_5de7:
    ld a, [sNextDayWeather]
    cp $00
    jr nz, jr_022_5df3

    ld hl, $5bde
    jr jr_022_5e11

jr_022_5df3:
    cp $01
    jr nz, jr_022_5dfc

    ld hl, $5c3e
    jr jr_022_5e11

jr_022_5dfc:
    cp $02
    jr nz, jr_022_5e05

    ld hl, $5c9e
    jr jr_022_5e11

jr_022_5e05:
    cp $04
    jr nz, jr_022_5e0e

    ld hl, $5cfe
    jr jr_022_5e11

jr_022_5e0e:
    ld hl, $5d5e

jr_022_5e11:
    ld a, [wTVBlinkingIndicator]
    ld b, a
    ld a, [wTVAnimationTimer]
    add b
    ld [wTVAnimationTimer], a
    cp $7f
    jr z, jr_022_5e31

    cp $60
    jr z, jr_022_5e33

    cp $50
    jr z, jr_022_5e39

    cp $40
    jr z, jr_022_5e48

    cp $38
    jr z, jr_022_5e53

    ret


jr_022_5e31:
    jr jr_022_5e67

jr_022_5e33:
    ld bc, $0010
    add hl, bc
    jr jr_022_5e67

jr_022_5e39:
    xor a
    ld [wInputFreezeTimer], a
    push hl
    call Call_022_5e9e
    pop hl
    ld bc, $0020
    add hl, bc
    jr jr_022_5e67

jr_022_5e48:
    ld a, $ff
    ld [wTVBlinkingIndicator], a
    ld bc, $0030
    add hl, bc
    jr jr_022_5e67

jr_022_5e53:
    ld a, $01
    ld [wTVBlinkingIndicator], a
    ld bc, $0040
    add hl, bc
    jr jr_022_5e67

Jump_022_5e5e:
    xor a
    ld [wTVIsTurnedOn], a
    ld hl, $5c2e
    jr jr_022_5e67

jr_022_5e67:
    ld d, h
    ld e, l
    ld c, $08

jr_022_5e6b:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9000
    add hl, bc
    ld b, h
    ld c, l
    dec de
    ld a, [de]
    push de
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7552
    add hl, de
    ld e, c
    ld d, b
    ld b, $10

jr_022_5e8d:
    call SyncToBlankPeriod
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_022_5e8d

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_022_5e6b

    ret


Call_022_5e9e:
    ld a, [sCurrentWeather]
    cp $03
    jp z, Jump_022_5f15

    ld a, [sSeasonOfNextDay]
    cp $00
    jr z, jr_022_5ec8

    cp $01
    jr z, jr_022_5edb

    cp $02
    jr z, jr_022_5f02

    ld a, [sNextDayWeather]
    cp $00
    jr z, jr_022_5ec2

    ld a, $13
    call InitializeTextIDAndDisplay
    ret


jr_022_5ec2:
    ld a, $12
    call InitializeTextIDAndDisplay
    ret


jr_022_5ec8:
    ld a, [sNextDayWeather]
    cp $00
    jr z, jr_022_5ed5

    ld a, $0d
    call InitializeTextIDAndDisplay
    ret


jr_022_5ed5:
    ld a, $0c
    call InitializeTextIDAndDisplay
    ret


jr_022_5edb:
    ld a, [sNextDayWeather]
    cp $00
    jr z, jr_022_5ef0

    cp $03
    jr z, jr_022_5ef6

    cp $04
    jr z, jr_022_5efc

    ld a, $0f
    call InitializeTextIDAndDisplay
    ret


jr_022_5ef0:
    ld a, $0e
    call InitializeTextIDAndDisplay
    ret


jr_022_5ef6:
    ld a, $15
    call InitializeTextIDAndDisplay
    ret


jr_022_5efc:
    ld a, $14
    call InitializeTextIDAndDisplay
    ret


jr_022_5f02:
    ld a, [sNextDayWeather]
    cp $00
    jr z, jr_022_5f0f

    ld a, $11
    call InitializeTextIDAndDisplay
    ret


jr_022_5f0f:
    ld a, $10
    call InitializeTextIDAndDisplay
    ret


Jump_022_5f15:
    ld a, $47
    call InitializeTextIDAndDisplay
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    nop

UnusedUseConsumable:
    ldh a, [$ff9c]
    and $0f
    ld hl, $5f1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, .eatCroissant
    cp $01
    jr z, .drinkGrapeJuice
    cp $02
    jr z, .eatRiceBall
    cp $03
    jr z, .drinkGreenTea
    cp $04
    jr z, .eatMeatDumpling
    cp $05
    jr z, .jr_022_5fa5
    ret

.eatCroissant:
    ld a, [sNumCroissant]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [sNumCroissant], a
    ld a, $00
    ld [$cb8d], a
    ret

.drinkGrapeJuice:
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [sNumWildGrapeJuice], a
    ld a, $01
    ld [$cb8d], a
    ret

.eatRiceBall:
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [sNumRiceBall], a
    ld a, $02
    ld [$cb8d], a
    ret

.drinkGreenTea:
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [sNumGreenTea], a
    ld a, $03
    ld [$cb8d], a
    ret

.eatMeatDumpling:
    ld a, [sNumMeatDumpling]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [sNumMeatDumpling], a
    ld a, $04
    ld [$cb8d], a
    ret

.Jump_022_5fa5
.jr_022_5fa5
    ld a, [$b8cc]
    or a
    jr z, .checkForOtherConsumables

    dec a
    ld [$b8cc], a
    ld a, $05
    ld [$cb8d], a
    ret

.checkForOtherConsumables
    ld a, [sNumCroissant]
    or a
    jr z, .checkForWildGrapeJuice
    jp .eatCroissant

.checkForWildGrapeJuice
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForRiceBall
    jp .drinkGrapeJuice

.checkForRiceBall
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForGreenTea
    jp .eatRiceBall

.checkForGreenTea:
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForMeatDumpling
    jp .drinkGreenTea

.checkForMeatDumpling
    ld a, [sNumMeatDumpling]
    or a
    jr z, .jr_022_5fe2
    jp .eatMeatDumpling

.jr_022_5fe2
    ld a, [$b8cc]
    or a
    jr z, .noConsumables
    jp .Jump_022_5fa5

.noConsumables
    ld a, $ff
    ld [$cb8d], a
    ret


Call_022_5ff1:
    call Call_022_638e
    ld a, [$cb92]
    or a
    jr nz, jr_022_600b

    ld a, $01
    ld [$cb92], a
    ld a, [$b900]
    cp $01
    jr nz, jr_022_6018

    ld a, $01
    ld [$c910], a

jr_022_600b:
    ld a, [$c910]
    cp $01
    jr nz, jr_022_6018

    call UnusedUseConsumable
    call $670e

jr_022_6018:
    ld a, [sHouseExpansionFlag]
    cp $00
    jp z, Jump_022_60e4

    cp $01
    jp z, Jump_022_61a0

    ld a, [$c910]
    or a
    jp z, Jump_022_60cb

    cp $01
    jr z, jr_022_6055

    cp $03
    jr z, jr_022_608d

    cp $04
    jr z, jr_022_60a3

    ld hl, $627e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $60
    ldh [$ff93], a
    ld a, $1e
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6055:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_022_608d

    ld hl, $626e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, [$cb8d]
    and $01
    jr z, jr_022_60c5

    ld a, [$cb8d]
    cp $01
    jr nz, jr_022_60bc

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_022_608d:
    ld hl, $626e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_60a3:
    ld hl, $629e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    ld a, $50
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_60bc:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    ret


jr_022_60c5:
    ld a, $20
    call Call_000_151d
    ret


Jump_022_60cb:
    ld hl, $625e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ret


Jump_022_60e4:
    ld a, [$c910]
    or a
    jp z, Jump_022_6187

    cp $01
    jr z, jr_022_6114

    cp $03
    jr z, jr_022_614c

    cp $04
    jr z, jr_022_6162

    ld hl, $631e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $1e
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6114:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_022_614c

    ld hl, $630e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, [$cb8d]
    and $01
    jr z, jr_022_6181

    ld a, [$cb8d]
    cp $01
    jr nz, jr_022_6178

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_022_614c:
    ld hl, $630e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6162:
    ld hl, $633e
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6178:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    ret


jr_022_6181:
    ld a, $20
    call Call_000_151d
    ret


Jump_022_6187:
    ld hl, $62fe
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $00
    ldh [$ff93], a
    ret


Jump_022_61a0:
    ld a, [$c910]
    or a
    jp z, Jump_022_6245

    cp $01
    jr z, jr_022_61d1

    cp $03
    jr z, jr_022_620b

    cp $04
    jr z, jr_022_6223

    ld hl, $62ce
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $11
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ld a, $1e
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_61d1:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_022_620b

    ld hl, $62be
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, [$cb8d]
    and $01
    jr z, jr_022_623f

    ld a, [$cb8d]
    cp $01
    jr nz, jr_022_6239

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_022_620b:
    ld hl, $62be
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6223:
    ld hl, $62ee
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_022_6239:
    ld a, $b5
    call Call_000_151d
    ret


jr_022_623f:
    ld a, $20
    call Call_000_151d
    ret


Jump_022_6245:
    ld hl, $62ae
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $24
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0088], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$00f6], sp
    ld c, l
    nop
    adc [hl]
    ld d, l
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$00a8], sp
    ld l, l
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    ld b, b
    nop
    ld d, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0088], sp
    ld l, l
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    dec a
    nop
    ld b, b
    ld b, l
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0058], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0080], sp
    ld b, b
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0086], sp
    ld l, l
    nop
    ld a, [hl]
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    dec a
    nop
    ld b, b
    ld b, l
    nop
    inc bc
    ld bc, $0100
    dec b
    ld [bc], a
    nop
    nop
    ld [$002d], sp
    add b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2205
    nop
    nop
    ld [$002d], sp
    add b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_638e:
    ld a, [sPetIsOutside]
    or a
    jr nz, jr_022_63ca

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_022_63ca

    ld a, [sCatOrDog]
    or a
    jr z, jr_022_63b5

    ld hl, $636e
    ld de, wPetIsPresentOnMap
    ld b, $20
    call CopyHLtoDE
    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret


jr_022_63b5:
    ld hl, $634e
    ld de, wPetIsPresentOnMap
    ld b, $20
    call CopyHLtoDE
    ld a, [wPetFacingDirection]
    ld b, a
    add $00
    call Call_000_1622
    ret


jr_022_63ca:
    xor a
    ld [wPetIsPresentOnMap], a
    ret


    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0058], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$c820]
    call nz, $64b4
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_022_643a

    cp $01
    jr z, jr_022_645f

    ld hl, $63ef
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_022_643a:
    ld hl, $63cf
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_022_645f:
    ld hl, $63df
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    ld a, $99
    ld [$d8d6], a
    ld [$d8b4], a
    ld a, $03
    ld [$d8d7], a
    ld [$d8b5], a
    ret


    ld bc, $0209
    nop
    nop
    ld [$0058], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0078], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0088], sp
    and e
    nop
    add b
    xor h
    nop
    inc bc
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret nz

    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_022_64eb

    cp $01
    jr z, jr_022_6507

    ld hl, $64a4
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_022_64eb:
    ld hl, $6484
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $08
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_022_6507:
    ld hl, $6494
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_156b
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


Call_022_6523:
    ld a, [sNumPowerBerriesEaten]
    or a
    ret z

    cp $01
    jp z, Jump_022_65ef

    cp $02
    jp z, Jump_022_65de

    cp $03
    jp z, Jump_022_65cd

    cp $04
    jp z, Jump_022_65bc

    cp $05
    jp z, Jump_022_65ab

    cp $06
    jr z, jr_022_659a

    cp $07
    jr z, jr_022_6589

    cp $08
    jr z, jr_022_6578

    cp $09
    jr z, jr_022_6567

    cp $0a
    jr nc, jr_022_6556

    ret


jr_022_6556:
    ld de, $7722
    ld hl, $8db0
    ld c, $10

jr_022_655e:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_655e

jr_022_6567:
    ld de, $7712
    ld hl, $8da0
    ld c, $10

jr_022_656f:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_656f

jr_022_6578:
    ld de, $7722
    ld hl, $97b0
    ld c, $10

jr_022_6580:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_6580

jr_022_6589:
    ld de, $7712
    ld hl, $97a0
    ld c, $10

jr_022_6591:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_6591

jr_022_659a:
    ld de, $7722
    ld hl, $96b0
    ld c, $10

jr_022_65a2:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65a2

Jump_022_65ab:
    ld de, $7712
    ld hl, $96a0
    ld c, $10

jr_022_65b3:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65b3

Jump_022_65bc:
    ld de, $7722
    ld hl, $95b0
    ld c, $10

jr_022_65c4:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65c4

Jump_022_65cd:
    ld de, $7712
    ld hl, $95a0
    ld c, $10

jr_022_65d5:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65d5

Jump_022_65de:
    ld de, $7622
    ld hl, $94b0
    ld c, $10

jr_022_65e6:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65e6

Jump_022_65ef:
    ld de, $7612
    ld hl, $94a0
    ld c, $10

jr_022_65f7:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_022_65f7

    ret


Call_022_6601:
    ld a, [$cb8e]
    or a
    jr nz, jr_022_6638

    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sCurrentSeason]
    cp $01
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret nz

    ld a, [sCurrentMinute]
    cp $00
    ret nz

    ld a, [sClockFrameCount]
    cp $00
    ret nz

    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8a2]
    cp b
    ret nz

    ld a, $b4
    ld [$cb8e], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_022_6638:
    ld a, [$cb8e]
    and $02
    jr z, jr_022_6677

    ldh a, [$ff93]
    inc a
    inc a
    ldh [$ff93], a
    ld hl, wPlayerXPosition
    ld bc, $0002
    call AddBCtoWordAtHL
    ld a, [$c60a]
    inc a
    inc a
    ld [$c60a], a
    ld hl, wPetXPosition
    ld bc, $0002
    call AddBCtoWordAtHL
    ld hl, $cb8e
    dec [hl]
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [sSpriteEventFlags+1]
    set 0, a
    ld [sSpriteEventFlags+1], a
    ret


jr_022_6677:
    ldh a, [$ff93]
    dec a
    dec a
    ldh [$ff93], a
    ld a, [$c60a]
    dec a
    dec a
    ld [$c60a], a
    ld hl, wPlayerXPosition
    ld bc, $fffe
    call AddBCtoWordAtHL
    ld hl, wPetXPosition
    ld bc, $fffe
    call AddBCtoWordAtHL
    ld hl, $cb8e
    dec [hl]
    ret


Call_022_669c:
    ld hl, vBGMap1
    ld de, $66aa
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    ld sp, hl
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ei
    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $cd
    add c
    ld l, b
    call Call_022_6c59
    xor a
    ld [$b900], a
    ld hl, sPlayerMoney
    ld a, [$b8fc]
    ld c, a
    ld a, [$b8fd]
    ld b, a
    call AddSignedBCToHL
    ld hl, sPlayerMoney
    ld a, [sShipmentPayment]
    ld c, a
    ld a, [sShipmentPayment+1]
    ld b, a
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    xor a
    ld [sShipmentPayment], a
    ld [sShipmentPayment+1], a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, [sCurrentSeason]
    ld b, a
    ld a, [sCurrentDayCounter]
    or b
    jr z, jr_022_6766

    ld hl, $637f
    ld a, $23
    call BankSwitchCallHL
    ld hl, $6cfc
    ld a, $24
    call BankSwitchCallHL
    ld hl, $61d6
    ld a, $2f
    call BankSwitchCallHL

jr_022_6766:
    call Call_022_6cda
    ld a, [sNextDayWeather]
    ld [sCurrentWeather], a
    cp $00
    jr nz, jr_022_6788

    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jr jr_022_67ef

jr_022_6788:
    cp $01
    jp nz, Jump_022_67a3

    ld a, $00
    ld [$b924], a
    ld a, $63
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_022_67ef


Jump_022_67a3:
    cp $02
    jp nz, Jump_022_67be

    ld a, $71
    ld [$b924], a
    ld a, $11
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_022_67ef


Jump_022_67be:
    cp $03
    jp nz, Jump_022_67da

    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    jp Jump_022_67ef


Jump_022_67da:
    ld a, $b1
    ld [$b924], a
    ld a, $21
    ld [$b925], a
    ld a, $94
    ld [$b926], a
    ld a, [$cb5c]
    ld [$b927], a

Jump_022_67ef:
jr_022_67ef:
    ld a, [sCurrentWeather]
    cp $03
    call z, Call_022_6c31
    call Call_022_5a6e
    ld hl, $a000
    ld bc, $0c40

jr_022_6800:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_022_6876

    ld a, e
    and $f0
    cp $40
    jr nz, jr_022_6814

    call Call_022_691b
    jr jr_022_6876

jr_022_6814:
    cp $50
    jr z, jr_022_681e

    cp $60
    jr z, jr_022_681e

    jr jr_022_6823

jr_022_681e:
    call Call_022_693e
    jr jr_022_6876

jr_022_6823:
    cp $70
    jr z, jr_022_682d

    cp $80
    jr z, jr_022_682d

    jr jr_022_6832

jr_022_682d:
    call Call_022_6a34
    jr jr_022_6876

jr_022_6832:
    cp $90
    jr z, jr_022_6838

    jr jr_022_683d

jr_022_6838:
    call Call_022_6a9f
    jr jr_022_6876

jr_022_683d:
    cp $a0
    jr z, jr_022_6843

    jr jr_022_6848

jr_022_6843:
    call Call_022_6ae2
    jr jr_022_6876

jr_022_6848:
    cp $b0
    jr z, jr_022_684e

    jr jr_022_6853

jr_022_684e:
    call Call_022_6b25
    jr jr_022_6876

jr_022_6853:
    cp $c0
    jr z, jr_022_6859

    jr jr_022_685e

jr_022_6859:
    call Call_022_6b68
    jr jr_022_6876

jr_022_685e:
    cp $d0
    jr z, jr_022_6864

    jr jr_022_6869

jr_022_6864:
    call Call_022_6bab
    jr jr_022_6876

jr_022_6869:
    cp $e0
    jr z, jr_022_6873

    cp $f0
    jr z, jr_022_6873

    jr jr_022_6876

jr_022_6873:
    call Call_022_6bee

jr_022_6876:
    call Call_022_68e8
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_022_6800

    ret


    ld a, [$b900]
    or a
    jr nz, jr_022_68d4

    ld a, [sHourOfPreviousSleep]
    cp $06
    jr c, jr_022_68d4

    xor a
    ld [sClockFrameCount], a
    ld [sCurrentMinute], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    call UpdateHourTileData
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp $1e
    jr nc, jr_022_68ac

    call UpdateDayOfTheWeekTileData
    ret


jr_022_68ac:
    xor a
    ld [sCurrentDayCounter], a
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    ld a, [sCurrentSeason]
    cp $04
    jr nc, jr_022_68c5

    ret


jr_022_68c5:
    xor a
    ld [sCurrentSeason], a
    call UpdateSeasonTileData
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    ret


jr_022_68d4:
    xor a
    ld [sClockFrameCount], a
    ld [sCurrentMinute], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    call UpdateHourTileData
    xor a
    ld [s6AMFlag], a
    ret


Call_022_68e8:
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_022_6909

    cp $03
    jr z, jr_022_6909

    cp $02
    jr z, jr_022_6909

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_022_6918

    ld a, [hl]
    cp $12
    jr nz, jr_022_6918

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_022_6909:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_022_6918

    ld a, [hl]
    cp $11
    jr nz, jr_022_6918

    inc a
    ld [hl], a

jr_022_6918:
    pop bc
    pop hl
    ret


Call_022_691b:
    ld a, [sCurrentSeason]
    cp $03
    jp z, Jump_022_6931

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $49
    jr z, jr_022_692e

    inc a
    ld [hl], a

jr_022_692e:
    pop bc
    pop hl
    ret


Jump_022_6931:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_022_693e:
    ld a, [sCurrentSeason]
    cp $01
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6969

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6967

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $60
    jr z, jr_022_6967

    inc a
    ld [hl+], a
    cp $54
    jr c, jr_022_6967

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6967:
    pop bc
    pop hl

jr_022_6969:
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_022_6975

    cp $03
    jr z, jr_022_6975

    ret


jr_022_6975:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $60
    jr z, jr_022_6984

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6984:
    pop bc
    pop hl
    ld a, [sCurrentWeather]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $69b4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Jump_022_69a9:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


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
    nop
    nop
    nop
    nop
    nop

Call_022_6a34:
    ld a, [sCurrentSeason]
    cp $01
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6a5f

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6a5d

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $88
    jr z, jr_022_6a5d

    inc a
    ld [hl+], a
    cp $76
    jr c, jr_022_6a5d

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6a5d:
    pop bc
    pop hl

jr_022_6a5f:
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_022_6a6b

    cp $03
    jr z, jr_022_6a6b

    ret


jr_022_6a6b:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $88
    jr z, jr_022_6a7a

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6a7a:
    pop bc
    pop hl
    ld a, [sCurrentWeather]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $69b4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Call_022_6a9f:
    ld a, [sCurrentSeason]
    cp $00
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6aca

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6ac8

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $98
    jr z, jr_022_6ac8

    inc a
    ld [hl+], a
    cp $94
    jr c, jr_022_6ac8

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6ac8:
    pop bc
    pop hl

jr_022_6aca:
    ld a, [sCurrentWeather]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $98
    jr z, jr_022_6adf

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6adf:
    pop bc
    pop hl
    ret


Call_022_6ae2:
    ld a, [sCurrentSeason]
    cp $00
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6b0d

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6b0b

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $ac
    jr z, jr_022_6b0b

    inc a
    ld [hl+], a
    cp $a6
    jr c, jr_022_6b0b

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6b0b:
    pop bc
    pop hl

jr_022_6b0d:
    ld a, [sCurrentWeather]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $ac
    jr z, jr_022_6b22

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6b22:
    pop bc
    pop hl
    ret


Call_022_6b25:
    ld a, [sCurrentSeason]
    cp $02
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6b50

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6b4e

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $b8
    jr z, jr_022_6b4e

    inc a
    ld [hl+], a
    cp $b4
    jr c, jr_022_6b4e

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6b4e:
    pop bc
    pop hl

jr_022_6b50:
    ld a, [sCurrentWeather]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $b8
    jr z, jr_022_6b65

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6b65:
    pop bc
    pop hl
    ret


Call_022_6b68:
    ld a, [sCurrentSeason]
    cp $02
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6b93

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6b91

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $cc
    jr z, jr_022_6b91

    inc a
    ld [hl+], a
    cp $c6
    jr c, jr_022_6b91

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6b91:
    pop bc
    pop hl

jr_022_6b93:
    ld a, [sCurrentWeather]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $cc
    jr z, jr_022_6ba8

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6ba8:
    pop bc
    pop hl
    ret


Call_022_6bab:
    ld a, [sCurrentSeason]
    cp $03
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6bd6

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6bd4

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $dc
    jr z, jr_022_6bd4

    inc a
    ld [hl+], a
    cp $d6
    jr c, jr_022_6bd4

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6bd4:
    pop bc
    pop hl

jr_022_6bd6:
    ld a, [sCurrentWeather]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $dc
    jr z, jr_022_6beb

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6beb:
    pop bc
    pop hl
    ret


Call_022_6bee:
    ld a, [sCurrentSeason]
    cp $03
    jp nz, Jump_022_69a9

    ld a, d
    and $08
    jr z, jr_022_6c19

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_022_6c17

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $f0
    jr z, jr_022_6c17

    inc a
    ld [hl+], a
    cp $e4
    jr c, jr_022_6c17

    ld a, [hl]
    or $01
    ld [hl], a

jr_022_6c17:
    pop bc
    pop hl

jr_022_6c19:
    ld a, [sCurrentWeather]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $f0
    jr z, jr_022_6c2e

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_022_6c2e:
    pop bc
    pop hl
    ret


Call_022_6c31:
    ld hl, $a000
    ld bc, $0c40

jr_022_6c37:
    inc hl
    ld a, [hl-]
    cp $00
    jr nz, jr_022_6c4f

    ld a, [hl]
    cp $12
    jr nz, jr_022_6c4f

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $3f
    cp $3f
    jr nz, jr_022_6c4f

    xor a
    ld [hl], a

jr_022_6c4f:
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_022_6c37

    ret


Call_022_6c59:
    ld a, [$b900]
    or a
    jp nz, Jump_022_6ccd

    ld a, [sPlayerMaxEnergy]
    ld l, a
    ld h, $00
    ld a, $05
    call DivideHLByA_16bit
    ld b, l
    call $1ae6
    ld a, [sPlayerMaxEnergy]
    ld l, a
    ld h, $00
    ld a, $0a
    call DivideHLByA_16bit
    ld a, l
    ldh [$ffa4], a
    ld a, [sHourOfPreviousSleep]
    cp $16
    jr z, jr_022_6ca5

    cp $17
    jr z, jr_022_6ca9

    cp $00
    jr z, jr_022_6cad

    cp $01
    jr z, jr_022_6cb1

    cp $02
    jr z, jr_022_6cb5

    cp $03
    jr z, jr_022_6cb9

    cp $04
    jr z, jr_022_6cbd

    cp $05
    jr z, jr_022_6cc1

    cp $16
    jr c, jr_022_6ca5

    ret


jr_022_6ca5:
    ld c, $08
    jr jr_022_6cc3

jr_022_6ca9:
    ld c, $07
    jr jr_022_6cc3

jr_022_6cad:
    ld c, $06
    jr jr_022_6cc3

jr_022_6cb1:
    ld c, $05
    jr jr_022_6cc3

jr_022_6cb5:
    ld c, $04
    jr jr_022_6cc3

jr_022_6cb9:
    ld c, $03
    jr jr_022_6cc3

jr_022_6cbd:
    ld c, $02
    jr jr_022_6cc3

jr_022_6cc1:
    ld c, $01

jr_022_6cc3:
    ldh a, [$ffa4]
    call Multiply8Bit
    ld b, l
    call $1ae6
    ret


Jump_022_6ccd:
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ret


Call_022_6cda:
    ld a, [sNextDayWeather]
    cp $03
    jr nz, jr_022_6ced

    ld a, [sCurrentYear]
    cp $02
    ret nz

    ld a, $01
    ld [$b89e], a
    ret


jr_022_6ced:
    ld a, [$b88d]
    cp $01
    jr nz, jr_022_6cfb

    ld a, [sCurrentDayCounter]
    cp $13
    jr c, jr_022_6cff

jr_022_6cfb:
    xor a
    ld [$b88d], a

jr_022_6cff:
    xor a
    ld [$b88c], a
    call Call_022_6f1a
    ld a, [$b893]
    or a
    call nz, Call_022_6e41
    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8a2]
    cp b
    call z, Call_022_6e69
    ld a, [sCurrentSeason]
    cp $00
    call z, Call_022_6d48
    ld a, [sCurrentSeason]
    cp $01
    call z, Call_022_6d6c
    ld a, [sCurrentSeason]
    cp $02
    call z, Call_022_6d78
    ld a, [sCurrentSeason]
    cp $03
    call z, Call_022_6d89
    call Call_022_6d9a
    call Call_022_6dd0
    call Call_022_6f74
    call Call_022_6f38
    call Call_022_6f4e
    ret


Call_022_6d48:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_022_6fb5
    call Call_022_6ded
    ld a, [sDayOfTheWeekTileIndex2]
    cp $6a
    call z, Call_022_6e32
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_022_6e94
    ld a, [sCurrentDayCounter]
    cp $0e
    call z, Call_022_6ef6
    ret


Call_022_6d6c:
    call Call_022_6e0a
    ld a, [$b89e]
    cp $01
    call z, Call_022_6e7c
    ret


Call_022_6d78:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_022_6f03
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_022_6e62
    ret


Call_022_6d89:
    ld a, [sCurrentDayCounter]
    cp $13
    call z, Call_022_6e70
    ld a, [sCurrentDayCounter]
    cp $1d
    call z, Call_022_6f63
    ret


Call_022_6d9a:
    ld a, [$b898]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    call Call_022_6fd3
    ld a, [$cc9c]
    or a
    jr nz, jr_022_6db3

    ld a, [$cc9b]
    cp $80
    ret c

jr_022_6db3:
    ld a, [sShedSprinklerFlag]
    cp $01
    ret z

    ld a, [sInventory]
    cp $12
    ret z

    ld a, [sInventory+1]
    cp $12
    ret z

    ld a, $01
    ld [$b898], a
    ld a, $0a
    ld [$b88d], a
    ret


Call_022_6dd0:
    ld a, [sNextDayWeather]
    cp $03
    ret z

    ld a, [$b88d]
    or a
    ret nz

    ld a, [sHouseExpansionFlag]
    cp $02
    ret z

    ld a, [$b8fe]
    cp $01
    ret nz

    ld a, $0b
    ld [$b88d], a
    ret


Call_022_6ded:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sCurrentDayCounter]
    cp $09
    ret c

    ld a, [sCurrentDayCounter]
    cp $13
    ret nc

    ld a, [$b8ea]
    cp $00
    ret nz

    ld a, $01
    ld [$b88d], a
    ret


Call_022_6e0a:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sCurrentSeason]
    cp $01
    ret nz

    ld a, [$b8ea]
    or a
    ret z

    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8eb]
    cp b
    ret nz

    ld a, $80
    ld [$b8eb], a
    ld a, [$b8c2]
    ld b, a
    add $02
    ld [$b8ea], a
    ret


Call_022_6e32:
    ld a, [sCurrentDayCounter]
    add $07
    cp $1e
    ret c

    ld a, $03
    ld [$b88d], a
    pop hl
    ret


Call_022_6e41:
    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b894]
    cp b
    ret nz

    ld a, [sCurrentSeason]
    ld b, a
    ld a, [$b895]
    cp b
    ret nz

    ld a, $ff
    ld [$b894], a
    ld [$b895], a
    ld a, $04
    ld [$b88d], a
    pop hl
    ret


Call_022_6e62:
    ld a, $05
    ld [$b88d], a
    pop hl
    ret


Call_022_6e69:
    ld a, $02
    ld [$b88d], a
    pop hl
    ret


Call_022_6e70:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, $06
    ld [$b88d], a
    pop hl
    ret


Call_022_6e7c:
    ld a, [sCurrentYear]
    cp $02
    ret nz

    ld a, [$b89e]
    cp $02
    ret z

    ld a, $02
    ld [$b89e], a
    ld a, $07
    ld [$b88d], a
    pop hl
    ret


Call_022_6e94:
    ld a, [$b896]
    cp $01
    ret nz

    ld a, $08
    ld [$b88d], a
    ld a, $02
    ld [$b896], a
    pop hl
    ret


    ld a, [sHouseExpansionFlag]
    cp $00
    ret z

    ld a, [$ba42]
    cp $01
    ret z

    xor a
    ld [$b897], a
    ld a, $01
    ld [$ba42], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_022_6ed5

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_022_6eda

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_022_6ee8

    ret


jr_022_6ed5:
    xor a
    ld [$b8a5], a
    ret


jr_022_6eda:
    ld a, NO_ITEM
    ld [sInventory], a
    ld a, $10
    ld [wThrowingSeedsAnimationTimer], a
    call $4341
    ret


jr_022_6ee8:
    ld a, NO_ITEM
    ld [sInventory+1], a
    ld a, $10
    ld [wThrowingSeedsAnimationTimer], a
    call $4341
    ret


Call_022_6ef6:
    ld a, [sCurrentYear]
    cp $01
    ret nz

    ld a, $0c
    ld [$b88d], a
    pop hl
    ret


Call_022_6f03:
    ld a, [sCurrentYear]
    cp $02
    ret nz

    ld a, [$b899]
    or a
    ret z

    ld a, [sPlayerGender]
    or a
    ret z

    ld a, $0d
    ld [$b88d], a
    pop hl
    ret


Call_022_6f1a:
    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret nz

    ld a, $0e
    ld [$b88d], a
    call $64b4
    ld a, $80
    ld [$b89b], a
    xor a
    ld [$b88d], a
    pop hl
    ret


Call_022_6f38:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b89d]
    or a
    ret nz

    ld a, [$b88f]
    or a
    ret z

    ld a, $0f
    ld [$b88d], a
    pop hl
    ret


Call_022_6f4e:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b88e]
    or a
    ret z

    xor a
    ld [$b88e], a
    ld a, $10
    ld [$b88d], a
    pop hl
    ret


Call_022_6f63:
    ld a, $01
    ld [$ba43], a
    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [sHourOfPreviousSleep], a
    pop hl
    ret


Call_022_6f74:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b8fe]
    cp $00
    ret z

    cp $01
    ret z

    cp $05
    jr nz, jr_022_6fad

    xor a
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp $02
    ret z

    inc a
    ld [sHouseExpansionFlag], a
    ld a, $12
    ld [$b88d], a
    ld a, [sHouseExpansionFlag]
    cp $01
    jr z, jr_022_6fa7

    ret


    ld a, $0a
    call Call_000_0f47
    ret


jr_022_6fa7:
    ld a, $0a
    call Call_000_0f47
    ret


jr_022_6fad:
    ld a, [$b8fe]
    inc a
    ld [$b8fe], a
    ret


Call_022_6fb5:
    ld a, [sCurrentYear]
    cp $00
    ret z

    ld a, [sCurrentSeason]
    cp $00
    ret nz

    ld a, $13
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    pop hl
    ret


Call_022_6fd3:
    xor a
    ld b, a
    ld c, a
    ld hl, $a000

jr_022_6fd9:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_022_6fee

    or a
    jr nz, jr_022_6fef

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_022_6fee

    cp $12
    jr z, jr_022_6fee

    jr jr_022_6fef

jr_022_6fee:
    inc bc

jr_022_6fef:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_022_6fd9

    ld a, l
    cp $80
    jr c, jr_022_6fd9

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
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
    and l
    nop
    ld e, c
    cp c
    ld d, b
    rst $38
    or b
    ld d, a
    or a
    ld e, d
    cp [hl]
    ld b, h
    cp h
    ld c, c
    rst $18
    cp c
    ld a, l
    add [hl]
    ld c, [hl]
    adc c
    inc hl
    ld [bc], a
    rrca
    rrca
    rst $38
    ld h, b
    ld a, a
    ld a, a
    add b
    and b
    ld h, b
    add b
    add b
    cp $23
    inc bc
    ldh a, [$fff0]
    ld b, $fe

jr_022_7069:
    cp $01
    dec b
    rst $38
    ld b, $01
    ld bc, $0d0e
    ld b, $04
    rlca
    rst $38
    dec b
    halt
    ld [hl], h
    rla
    dec e
    adc d
    adc h
    cp [hl]
    rst $38
    ld h, c
    ld h, [hl]
    add h
    adc d
    ld a, a
    add l
    ld a, a
    ret nz

    rst $38
    cpl
    xor d
    ld d, l
    rst $38
    nop
    add d
    ld l, a
    add l
    rst $38
    ld a, a
    add d
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    and a
    rst $38
    nop
    rst $38
    ld sp, $a100
    nop
    cp a
    nop
    ld bc, $ffbf
    ret nz

    jr nz, jr_022_7069

    add sp, $0f
    ldh [$ffc0], a
    ld l, b
    rst $38
    rst $08
    and b
    ret nz

    ld e, l
    ld e, h
    ld a, c
    ld hl, sp-$01
    rst $38
    ld c, $53
    ld h, [hl]
    sbc a
    and b
    ld d, l
    ld h, h
    sbc l
    rst $38
    xor h
    ld e, l
    ld l, h
    rst $38
    ld a, a
    ldh [$ff7f], a
    ret z

    rst $38
    ld a, b
    rst $28
    ld e, a
    rst $28
    ld e, a
    ldh [$ff5f], a
    rst $18
    rst $38
    ld h, b
    ld a, a
    add b
    and c
    and b
    ld bc, $05f8
    rst $38
    nop
    add a
    add d
    or l
    ret nz

    rlca
    ld a, [$fffb]
    ld b, $fe
    ld bc, $40ff
    ld [$e055], a
    rst $28
    ld e, a
    ld [$ff5f], a
    jr nz, jr_022_70f4

jr_022_70f4:
    push hl
    ld e, a
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    xor d
    ld d, l
    nop
    rst $38
    xor c
    cp a
    cp $55
    cp $fa
    rst $38
    ld e, l
    ld h, b
    ld b, $c3
    rst $38
    inc a
    cp l
    ld a, [hl]
    and l
    ld h, [hl]
    jp $993c


    rst $38
    ld a, [hl]
    rst $38
    nop
    ld a, [hl+]
    push de
    rst $38
    nop
    ld [hl], l
    rst $38
    ld hl, sp-$71
    ld [hl], d
    xor l
    ld [hl], b
    adc l
    ld d, b
    xor a
    rst $38
    ld [hl], d
    adc a
    ld [hl], d
    db $fd
    nop
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $f2
    ld b, b
    nop
    ldh [$ffc0], a
    nop
    dec l
    db $10
    ld c, l
    adc e
    ld h, [hl]
    ld a, [hl-]
    rst $38
    ld a, h
    ld bc, $9bde
    ld d, h
    dec de
    call c, $9d9b
    ld d, h
    ld h, b
    nop
    jr nc, jr_022_7191

    add b
    ldh [$ff0b], a
    ld hl, $0f00

jr_022_7158:
    rst $38
    ldh a, [$ff1f]
    add sp, $1c
    db $e4
    inc c
    db $fc
    ld bc, $04fe
    ld bc, $0ff0
    ld hl, sp+$17
    jr c, jr_022_7191

    and [hl]
    rst $38
    push bc
    ld [hl], d
    ld e, h
    cp a
    add c
    ld l, [hl]
    call z, $ff2b
    call $cc2e
    ld a, [hl+]
    call $cc2a
    pop bc
    cp a
    ccf
    xor d
    ld b, l

jr_022_7181:
    rst $38
    nop
    add e
    jp nz, $c00f

    rst $20
    cpl
    ld a, [$9005]
    db $10
    add $0f
    nop
    rst $38

jr_022_7191:
    xor d
    rst $38
    ld d, l
    jr z, @-$2f

    jr nz, jr_022_7158

    ldh [rP1], a
    rst $38
    cp a
    rst $18
    ld h, b
    rst $18
    cp a
    ret nz

    dec b
    add b
    ld de, $ff9f
    xor [hl]
    ld d, a
    ld h, [hl]
    rra
    jr nz, jr_022_7181

    db $e4
    dec e
    rst $38
    db $ec
    ld sp, hl
    ld [$fe5f], sp
    inc hl
    or $7f
    rst $38
    add b
    xor b
    ld d, a
    jp nc, $a02f

    ld e, l
    ret nz

    rst $38
    dec a
    call nz, $8c3d
    ld a, l
    and b
    ld h, c
    cp $ff
    ld bc, $ae51
    and e
    ld e, [hl]
    ld b, c
    cp h
    add c
    ld a, a
    ld a, h
    add l
    ld a, h
    dec c
    db $fc
    ld b, c
    ret nz

    ld b, b
    add hl, bc
    rst $38
    sbc e
    ld l, a
    or b
    ld [hl], d
    adc a
    ld a, c
    adc c
    ld d, c
    rst $38
    or c
    ld h, e
    and e
    ld a, l
    cp [hl]
    ld d, b
    or b
    and b
    ei
    ld h, b
    ldh [rNR43], a
    nop
    or c
    ld [hl], c
    ld a, a
    add b
    sbc h
    ld a, a
    ld a, h
    ld a, [de]
    dec e
    dec c
    ld c, $05
    ld b, $21
    nop
    cp a
    jp z, $ffcd

    nop
    inc e
    rra
    ld b, c
    add hl, bc
    di
    rst $38
    dec c
    ld l, d
    db $f4
    sub a
    sbc c
    adc [hl]
    adc b
    xor [hl]
    rst $38
    ld l, c
    cp $18
    rst $38
    nop
    add l
    ld l, a
    xor d
    ld a, a
    ld a, a
    sub c
    ld a, a
    jp z, $a03f

    ld c, a
    pop bc
    nop
    ldh a, [c]
    nop
    inc d
    xor d
    push hl
    add hl, bc
    ld [hl], c
    ld a, [de]
    ld d, h
    sbc e
    ld b, h
    sbc e
    rst $38
    ld d, a
    sbc b
    ld h, a
    cp e
    ld b, h
    cp e
    ld h, a
    cp b
    ccf
    ld b, l
    cp e
    ld a, l
    push bc
    rrca
    ldh a, [$ffc1]
    dec de
    add b
    ld [hl+], a
    ld a, [hl]
    jr nz, jr_022_7267

    ld b, [hl]
    rst $00
    inc a
    inc a
    ldh a, [rIF]
    dec bc
    ld bc, $2aff
    call $cc22
    db $eb
    dec c
    ldh a, [c]
    call c, $23ff
    db $dd
    ldh a, [c]
    inc e
    ld h, d
    db $dd
    ld a, $22
    rst $38
    push de

jr_022_7267:
    ld a, a
    rst $38
    nop
    xor c
    ld l, [hl]
    rst $38
    nop
    rst $38
    ld d, d
    cp l
    jp nc, $3dbd

    jp $dfdc


    ld sp, hl
    ld d, l
    pop hl
    inc bc
    nop
    jr nz, jr_022_72be

    rst $38
    inc e
    rst $38
    ld b, c
    rst $18
    ld a, a
    ld [hl-], a
    di
    ld d, l
    cp $03
    ld [bc], a
    ld e, d
    cp l
    rst $38
    ld e, e
    cp l
    cp l
    jp $f939


    rst $38
    nop
    rst $38
    add $42
    or l

jr_022_7299:
    ld [hl], e
    add h
    ld a, e
    rst $38
    nop
    rst $18
    ret nz

    ld b, b
    cp [hl]
    ld a, [hl]
    add b
    ldh [$ff03], a
    inc c
    inc b
    rst $38
    db $eb
    rst $20
    ld [$fff7], sp
    nop
    add c
    ld bc, $befb
    ccf
    ld bc, $1901
    ld [$ccd5], sp
    ld de, $eeff
    rst $38

jr_022_72be:
    nop
    pop bc
    ld b, b
    cp l
    ld a, h
    add c
    rst $38
    ld a, [hl]
    ld d, h
    cp e
    ld a, d
    ld b, $74
    inc c
    rst $28
    rst $38
    sbc a
    ld h, d
    ld e, $c4
    cp h
    ld c, h
    cp h
    ld e, b
    rst $30
    jr c, jr_022_7299

    ret nz

    ld b, a
    inc l
    jr c, jr_022_7316

    ldh a, [$fff0]
    or $c1
    add hl, hl
    ld a, $3e
    add a

jr_022_72e6:
    dec l
    sbc $e1
    ld e, $10
    rst $38
    rrca
    add hl, bc
    ld [bc], a
    inc b
    rst $20
    push hl
    ld a, [hl]
    ld a, h
    rst $38
    ld [de], a
    dec e
    ld a, [bc]
    inc c
    rst $38
    nop

jr_022_72fb:
    and b
    and b
    rst $30
    ld a, a
    ld a, a
    ld e, l
    ld b, h
    add hl, hl

jr_022_7303:
    db $fd
    db $fd
    rst $38
    nop
    rst $38
    dec b
    inc d
    cp l
    cp h
    db $ed

jr_022_730d:
    db $fc
    rst $38
    cp $ff
    rlca
    or $ff
    nop
    ld b, l

jr_022_7316:
    ld d, h
    nop
    rst $38
    rst $38
    ld d, a
    rst $38
    jr z, jr_022_730d

    ld b, [hl]

jr_022_731f:
    add $28
    rst $28
    rst $38
    ld d, l
    rst $38
    ld d, d
    rst $38
    ld b, l
    rst $28
    nop
    rst $38
    ld a, a
    rst $20
    rst $38
    jr @+$01

jr_022_7330:
    ld h, [hl]
    ld h, [hl]
    jr @-$7c

    inc l
    cp $e1
    inc e
    ld [$14ff], a
    rst $30
    ld h, d
    ld h, e
    inc d
    db $eb
    rst $30
    ld c, d
    add b
    dec l
    ld b, d
    add b
    ld a, [bc]
    jr jr_022_7330

    rst $20
    rst $38
    jr jr_022_72e6

    rst $38
    rst $20
    jr jr_022_72fb

    ld d, l
    ld d, l

jr_022_7353:
    db $fd
    xor d
    add c
    cpl
    dec d
    ld [$1ceb], a
    sbc l
    cp $ff
    db $eb
    inc e
    or l
    ld c, d
    ld d, l
    xor d
    cp l
    ld c, d
    rst $38
    rst $38
    nop
    adc b
    ld a, b
    ld hl, sp+$38
    sub h
    ld [hl], h
    rst $38
    ret c

    jr c, jr_022_731f

    ld a, h
    ret c

    jr c, jr_022_7303

    ld a, h
    cp $00

jr_022_737a:
    dec c
    ld e, $17
    inc e
    add hl, hl
    ld l, $1b
    inc e
    rst $38
    dec [hl]
    ld a, $1b
    inc e
    ld sp, $ff3e
    nop
    rst $18
    ret c

    ld c, b
    or a
    ld l, a
    sub b
    add b
    jr jr_022_7353

    ld a, a
    ld a, h
    pop hl
    rrca
    nop
    dec b
    ld [$cfd7], sp
    db $10
    rst $28
    rlca
    ld bc, $05ee
    db $10
    cp a
    ld a, [hl]
    add c
    ld b, b
    dec l
    ret z

    cp a
    db $e4
    cp a
    cp a
    ret nz

    cp a
    jp z, $d0bf

    ld h, h
    nop
    rlca
    cp a
    ld a, [$fa4f]
    rlca
    ld a, [$4017]
    nop
    adc a
    cp $80
    nop
    daa
    ld a, [$7d8a]
    add a
    ld a, d
    push bc
    rst $38
    jr z, jr_022_737a

    ld d, b
    db $fd
    nop
    add h
    ld l, c
    add [hl]
    rst $38
    ld a, h
    add e
    ld a, [hl]
    xor d
    ld e, a
    ld [hl], l
    cpl
    ld e, d
    rst $38
    rrca
    ld d, b
    rrca

jr_022_73e0:
    ld e, a
    nop
    rra
    ld c, a
    dec [hl]
    rst $38
    rra
    ld l, d
    ccf
    rst $38
    nop
    rst $20
    ld h, b
    sbc a
    rst $38
    ld a, b
    add a
    ld a, b
    rst $38
    nop
    or a
    ld [hl], b
    add a
    ld a, [hl]
    add d
    nop
    ld sp, hl
    jr jr_022_73e0

    ld e, $e1
    ld e, $85
    nop
    dec e
    ld b, d
    add d
    rrca
    dec l
    rst $28
    ld a, [hl+]
    inc b
    db $10
    inc bc
    inc a
    ld b, a
    nop
    dec e
    and d
    add d
    rrca
    ld d, h
    rst $30
    or h
    inc b
    db $10
    ld b, c
    rrca
    ld c, c
    nop
    ld a, e
    ld e, l
    xor d
    add c
    rrca
    xor e
    ld e, h
    ld c, e
    cp h
    inc bc
    db $10
    db $db
    call c, $0b3c
    db $10
    dec sp
    inc a
    dec c
    db $10
    ld d, h
    adc d
    rst $38
    and d
    ld d, h
    dec c
    xor c
    nop
    rst $38
    ld a, e
    ld a, e
    rst $38
    ld l, c
    ld a, e
    ld b, c
    ld d, e
    rst $38
    nop
    ld d, l
    xor d
    rst $38
    dec hl
    ld b, h
    dec d
    jr nc, jr_022_744d

    db $fc
    ld e, e
    ld e, e

jr_022_744d:
    cp a
    add e
    res 2, d
    jp c, $0615

    dec hl
    nop
    rst $38
    ld h, e
    add b
    rst $38
    inc h
    dec h
    ld h, c
    add hl, sp
    sub b
    ld b, l
    ld [bc], a
    rst $38
    jr nz, jr_022_7489

    ei
    ld bc, $23fe
    nop
    rst $38
    nop
    jp nz, $ad3d

    rst $38
    ld b, d
    ei
    dec b
    cp c
    ld b, [hl]
    cp c
    ld b, a

jr_022_7476:
    cp l
    rst $38
    ld b, e
    rst $18
    jr nz, jr_022_7476

    dec b
    ld [hl], l
    ld e, a
    ret nc

    rst $38
    xor a
    cpl
    db $10
    rst $28
    scf
    dec l
    scf
    ld a, [hl-]

jr_022_7489:
    rst $20
    cpl
    ldh [$ff1f], a
    add c
    ld c, c
    dec b

jr_022_7490:
    db $10
    cp a
    ld a, [hl]
    add e
    call z, $1522
    dec b
    db $10
    pop af
    ld [hl], b
    ld bc, $0301
    db $10
    jr z, jr_022_7490

    sbc a
    ld b, a
    rst $00
    jr z, @-$0f

    ld d, a
    ld hl, $023b

jr_022_74aa:
    ld c, h
    jr @-$15

    rst $38
    ld d, b
    ld e, $a0
    jr nz, jr_022_74b3

jr_022_74b3:
    inc b
    db $10
    inc d
    rst $30
    ldh [c], a
    rst $08
    db $e3
    inc d
    rst $30
    ld [$4d80], a
    inc bc
    db $10
    rst $20
    jr jr_022_74aa

    jr nz, jr_022_74c8

    jr jr_022_74e0

jr_022_74c8:
    db $10
    ld [bc], a
    inc bc
    db $10
    db $eb
    inc e
    dec e
    ldh [c], a
    jr nz, jr_022_74f2

    dec d
    db $10
    ld [bc], a
    ld h, c
    rra
    and c
    rra
    sbc b
    ld a, b
    db $f4
    db $e3
    inc [hl]
    sbc b
    ld h, b

jr_022_74e0:
    rla
    ld h, c
    rra
    and c
    rra

jr_022_74e5:
    add hl, de
    ld e, $2f
    ei
    inc l
    add hl, de
    ld h, b
    rla
    rst $38
    nop
    adc [hl]
    ld [hl], c
    xor [hl]

jr_022_74f2:
    rst $38
    ld [hl], c
    xor d
    ld [hl], l

jr_022_74f6:
    adc d
    ld d, l
    adc [hl]
    ld d, l
    ei
    db $fd
    adc [hl]
    pop hl
    ld [hl-], a
    ld [hl], c
    adc [hl]
    pop af
    adc [hl]
    ld d, l
    ld l, $ff
    ld [hl], c
    ld a, [hl+]
    ld d, c
    ld a, [hl+]
    xor [hl]
    ld [hl], c
    ld d, l
    rst $38
    rst $38
    ccf
    nop
    ld b, b
    nop
    cp a
    ccf
    or b
    ccf
    add a
    xor a
    jr nc, @-$56

    ld [hl+], a
    nop
    pop bc
    jr c, jr_022_74f2

    ld d, h
    or h
    ld e, e
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    db $fc
    add h
    ld [de], a
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_022_74e5

    jr nc, jr_022_74f6

    ccf
    rst $00
    ld b, b
    ccf
    ccf
    inc d
    ld e, [hl]
    ld h, a
    inc bc
    inc bc
    dec d
    push af
    ld b, $ff
    dec c
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    nop
    ld h, e
    dec b
    ld h, a
    nop
    sub b
    ld l, a
    xor d
    ld e, e
    xor c
    ld e, c
    xor b
    ld e, d
    xor b
    ld e, e
    and b
    ld e, a
    and h
    ld e, h
    xor b
    ld e, e
    nop
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld [bc], a
    ei
    inc b
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp [hl]
    ld [hl], c
    ei
    ld l, d
    pop af
    ld d, b
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $eadf

    rst $38
    ld [$eaff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp a
    ld a, a
    ei
    or $ff
    ld a, [$faff]
    rst $38
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp e
    ld h, a
    rst $30
    ld d, e
    and $01
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$eaff], a
    sub b
    ld l, a
    and b
    ld e, a
    and c
    ld e, c
    and b
    ld b, a
    and b
    ld e, [hl]
    and b
    ld e, a
    and b
    ld e, a
    and [hl]
    ld b, [hl]
    nop
    rst $38
    nop
    ld hl, sp-$68
    sbc a
    nop
    rst $38
    nop
    rra
    ld b, $fe
    nop
    rst $38
    ld h, b
    ld a, a
    nop
    rst $38
    ld b, $67
    nop
    rst $38
    nop

jr_022_75f9:
    pop hl
    nop
    rst $38
    nop
    ld a, a
    jr jr_022_75f9

    nop
    rst $38
    dec bc
    or $07
    ld a, [$fa7f]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$8207]
    rlca
    ld a, [$80ff]
    sbc a
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    rst $38
    nop
    sub a
    nop
    sbc e
    ld [de], a
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    nop
    add hl, sp
    nop
    add hl, hl
    add d
    add e
    ld b, h
    rst $10
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    db $fd
    add l
    ldh a, [$ff90]
    ret c

    xor b
    rst $18
    and b
    ret nc

    xor a
    ldh [$ffdf], a
    ldh [c], a
    db $dd
    rst $38
    ld l, d
    rst $38
    ld a, [hl+]
    ld e, a
    ld l, d
    rst $18
    xor d
    rst $18
    ld a, [hl+]
    ld a, a
    sbc d
    ccf
    jp c, $d63b

    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $08
    or b
    ret c

    xor b
    rst $18
    and b
    ret nc

    xor a
    ldh [c], a
    db $dd
    rst $18
    ld [$eaff], a
    rst $18
    ld [$eadf], a
    sbc a
    ld l, d
    sbc a
    ld l, d
    ld e, a
    xor d
    dec sp
    sub $e5
    add b
    db $e4
    add b
    ldh [$ffa8], a
    pop af
    reti


    rst $38
    ldh [$fff0], a
    rst $28
    ldh [$ffdf], a
    ldh [c], a
    db $dd
    rst $38
    ld l, d
    ld a, a
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and [hl]
    ld b, [hl]
    and b
    ld e, a
    ld hl, sp+$19

jr_022_76de:
    and b
    ld e, a
    ret nc

    jr z, jr_022_76e3

jr_022_76e3:
    rst $38
    jr jr_022_76de

    nop
    rst $38
    nop
    ld h, a
    nop
    rst $38
    nop
    pop hl
    nop
    rst $38
    ld a, b
    ld a, a
    ld b, $fe
    nop
    ld a, a
    ld h, [hl]
    rst $20
    nop
    rst $38
    ld bc, $00ff
    sbc c
    nop
    rst $38
    nop
    cp $07
    ld h, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$9a87]
    rlca
    ld a, [$fa07]
    dec bc
    ld d, $e1
    sbc a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    and b
    ld b, b
    and c
    ld b, e
    and d
    ld b, e
    and b
    ld b, b
    and [hl]
    ld b, [hl]
    and b
    ld b, [hl]
    and [hl]
    ld b, [hl]
    nop
    nop
    ld d, b
    ld [hl], b
    ld d, h
    halt
    ld [bc], a
    ld b, $70
    ld [hl], b
    adc e
    ei
    adc b
    ei
    adc e
    ei
    sub b
    ld h, b
    and [hl]
    ld b, [hl]
    and h
    ld b, [hl]
    and b
    ld b, b
    and c
    ld b, c
    xor h
    ld c, l
    xor b
    ld c, l
    xor h
    ld c, l
    ld [hl], b
    ld [hl], b
    ld d, [hl]
    halt
    ld [hl+], a
    ld h, $88
    ld hl, sp+$04
    db $fc
    ld bc, $00fd
    db $fd
    ld bc, $fffd
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    ld a, [$f369]
    ld d, d
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$ea7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp a
    ld [hl], c
    ei
    ld l, c
    di
    ld d, b
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$eaff], a
    sub b
    ld l, a
    and b
    ld c, h
    and b
    ld e, a
    and b
    ld e, h
    and b
    ld e, a
    and b
    ld c, a
    and e
    ld e, a
    and b
    ld e, a
    nop
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_022_77f1

jr_022_77f1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    call z, $3f00
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    inc sp
    inc sp
    dec bc
    or $07
    jp nz, $fac7

    rlca
    ld a, [$fa07]
    scf
    ldh a, [c]
    rlca
    ld a, [$fa07]
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, b
    and d
    ld b, e
    and c
    ld b, e
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    cp a
    ld e, a
    rst $18
    cpl
    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld b, $54
    halt
    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and c
    ld b, c
    and b
    ld b, b
    and h
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and b
    ld b, b
    ldh [rP1], a
    cp a
    ld e, a
    rst $18
    cpl
    inc b
    db $fc
    adc b
    ld hl, sp+$22
    ld h, $56
    halt
    ld [hl], b
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    ld c, b
    ldh [$ffa0], a
    ldh [$ffae], a
    pop af
    push de
    rst $38
    ldh [$fff0], a
    rrca
    and b
    ccf
    ld h, d
    dec e
    cp a
    ld l, d
    ld a, a
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    ei
    ld d, c
    pop af
    add b
    ldh [$ffa0], a
    or c
    pop de
    rst $18
    ldh [$fff0], a
    rst $28
    db $e3
    call c, $d3f2
    rst $38
    ld l, d
    rst $38
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    and b
    ld e, a
    and b
    ld c, a
    xor h
    ld e, h
    and b
    ld e, a
    and b
    ld e, a
    ldh [rNR13], a
    and b

jr_022_78df:
    ld e, a
    ret nc

    cpl
    ret nz

    call z, $ff00
    ret nz

    rst $38
    nop
    rst $38
    jr nc, jr_022_78df

    nop
    ccf
    nop
    rst $38
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    jr nc, jr_022_792d

    nop
    rst $38
    ret nz

    rst $08
    nop
    rst $38
    inc bc
    jp $fa07


    rst $00
    jp nz, $fa07

    rlca
    ld a, [hl-]
    rlca
    ld a, [$0a07]
    rlca
    ld a, [$f6cb]
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd

jr_022_792d:
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    ld l, a
    and d
    ld e, a
    and b
    ld e, e
    and e
    ld d, h
    and a
    ld c, b
    xor a
    ld d, b
    and c
    ld e, [hl]
    and b
    ld e, a
    ld bc, $02ff
    rst $38
    ldh [rNR31], a
    ldh a, [rTAC]
    db $ec
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $817c
    sub b
    ld l, l
    and b
    ld e, e
    and b
    ld e, a
    and e
    ld e, h
    and a
    ld e, b
    xor a
    ld d, b
    and c
    ld e, [hl]
    and d
    ld e, a
    nop
    db $fd
    nop
    ei
    ldh a, [$ff1f]
    ld hl, sp+$27
    cp h
    inc bc
    ld a, h
    inc bc
    cp $01
    ld a, [hl]
    add c
    sbc a
    ld h, b
    cp h
    ld b, e
    and b
    ld e, a
    and e
    ld e, a
    cp b
    ld e, b
    cp a
    ld e, a
    or e
    ld d, e
    and h
    ld b, a
    rst $38
    nop
    nop
    rst $38
    ld a, h
    rst $38
    pop de
    rst $38
    ccf
    ccf
    ret nz

    ret nz

    add hl, de
    ld sp, hl
    ld b, $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    cp $6d
    ld [$fb6a], a
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    ld e, a
    ld [$aaff], a
    rst $38
    nop
    ret nz

    cp a
    jr z, jr_022_79f0

    rra
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $fe01
    dec b
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_022_79f0:
    nop
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ret nz

    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_022_7a01:
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    inc d
    jr jr_022_7a01

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld e, a
    and l
    ld e, d
    and e
    ld e, h
    and b
    ld e, a
    and b
    ld e, [hl]
    rst $38
    rra
    cp a
    ld e, a
    push de
    cpl
    jp c, $a621

    ld [hl], c
    ld b, d
    db $fd
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    and b
    ld e, e
    and l
    ld d, d
    and e
    ld e, h
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    sbc $21
    add [hl]
    ld a, c
    inc bc
    db $fd
    nop
    db $fd
    nop
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    ld e, a
    cp b
    ld e, a
    or e
    ld e, h
    and a
    ld e, b
    cp a
    ld b, b
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    pop hl
    rra
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    ld b, b
    ld [$d1aa], a
    cp a
    pop af
    adc [hl]
    sbc a
    nop
    or c
    ld l, $e0
    sbc a
    ldh a, [$ffef]
    ld a, a
    ld a, [hl+]
    rst $28
    or d
    ld a, a
    or d
    rst $28
    ld [hl-], a
    ccf
    ld a, [bc]
    cp a
    sbc d
    rst $38
    ld a, [hl-]
    ld a, e
    or [hl]
    sbc a
    ld h, b
    cp c
    ld b, [hl]
    or a
    ld c, h
    cp a
    ld c, b
    cp a
    ld c, b
    cp a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_022_7b00:
    rst $38
    nop
    ei
    ld b, $df
    ld [hl+], a
    rst $28
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $18
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, c
    or c
    ld e, b
    xor d
    ld e, h
    and [hl]
    ld c, b
    xor h
    ld c, c
    or h
    ld e, c
    xor [hl]
    ld e, b
    cp a
    ld d, a
    cp [hl]
    db $e3
    db $e3
    dec e
    ld [hl-], a
    dec c
    inc l
    nop
    jr jr_022_7b00

    dec e
    sub a
    ld a, b
    ld [hl], l
    db $ed
    db $eb
    sub h
    ld h, h
    xor d
    ld c, d
    or c
    ld b, l
    xor b
    ld b, d
    or h
    ld d, c
    xor l
    ld e, c
    cp a
    ld b, e
    xor d
    ld d, d
    db $10
    inc d
    inc hl
    jr z, jr_022_7bce

    ld d, e
    dec c
    daa
    dec de
    ld c, a
    scf
    sbc a
    ld l, a
    ccf
    rst $18
    ld a, a
    sbc b
    ld l, b
    or h
    ld d, h
    xor d
    ld c, d
    or c
    ld b, l
    xor b
    ld b, d
    or h
    ld d, c
    xor l
    ld e, c
    cp a
    ld b, e
    ld [$100a], sp
    inc d
    inc hl
    jr z, jr_022_7bf0

    ld d, e
    dec c
    daa
    dec de
    ld c, a
    scf
    sbc a
    ld l, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    cp $6d
    ld [$fb6a], a
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    rst $38
    jp c, $daff

jr_022_7bce:
    ld a, a
    ld [$eabf], a
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or e
    ld c, h
    cp e
    ld c, h
    push af
    ld c, $ba
    ld b, a
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ei

jr_022_7bf0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    ld c, a
    cp a
    rst $38
    nop
    rst $18
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    sbc a
    ld d, d
    ld e, a
    jp nc, $b2bf

    rst $28
    ldh a, [c]
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, h
    or b
    ld c, h
    xor [hl]
    ld b, [hl]
    and a
    ld b, e
    and e
    ld b, b
    rst $38
    rra
    cp a
    ld e, a
    rst $18

jr_022_7c61:
    cpl
    ld c, h
    ld a, b
    ld c, h
    ld a, b
    inc e
    jr jr_022_7c61

    ldh a, [$fff0]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld d, b
    cp c
    ld d, [hl]
    cp e
    ld d, [hl]
    cp l
    ld d, [hl]
    cp e
    ld d, [hl]
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    rst $38
    nop
    sbc a
    adc a
    jr nc, jr_022_7ca8

    sub b
    add b
    jr nc, jr_022_7cac

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld d, d
    cp [hl]
    ld d, b
    cp c
    ld d, [hl]
    cp l
    ld d, [hl]
    cp e
    ld d, [hl]
    rst $38

jr_022_7c9d:
    rra
    cp a
    ld e, a
    rst $18
    cpl
    rst $18
    ld a, a
    rst $38
    nop
    sbc a
    adc a

jr_022_7ca8:
    jr nc, jr_022_7cca

    sub b
    add b

jr_022_7cac:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    ld b, b
    ld [$f1aa], a
    sub c
    sbc a
    ld c, $bf
    jr nz, jr_022_7c9d

    sbc a
    ldh [$ffdf], a
    ldh a, [$ffef]
    ld l, a
    ld [hl-], a
    rst $38
    or d
    rst $38
    ld [hl-], a
    ccf
    ld [de], a

jr_022_7cca:
    cp a
    adc d
    rst $38
    ld a, [de]
    ld a, a
    cp d
    ld a, e
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ldh a, [c]
    dec e
    nop
    rst $38
    rra
    nop
    sub [hl]
    nop
    ld d, l
    ld d, l
    xor d
    xor d
    ld a, [$016b]
    cp $58
    ld [bc], a
    pop af
    rst $38
    ret nz

    ld sp, hl
    db $10
    push de
    ldh a, [rOCPD]
    inc bc
    ccf
    ld d, [hl]
    inc b
    db $fd
    ld a, [bc]
    inc b
    add sp, -$01
    dec e
    ld d, l
    ld [$e005], sp
    rst $38
    nop
    ld b, $01
    pop bc
    nop
    ld hl, $fe00
    dec b
    ld [bc], a
    ld a, [bc]
    ei
    dec d
    rst $38
    ld a, [bc]
    rst $38
    jr nz, jr_022_7e0d

    ld b, $03
    add hl, bc
    ld a, a
    ld b, d
    ei
    ld de, $07fd
    inc bc
    sbc a
    rst $38
    rst $38
    ld a, a
    rst $38
    dec b
    ld [$6104], sp
    dec bc
    ld a, a
    db $d3
    rst $38
    xor a
    ld a, [bc]
    ld b, $e7
    ld a, [bc]
    ldh [$ffec], a
    ld a, [bc]
    ld a, [bc]
    ei
    ld b, $eb
    ld a, [bc]
    add hl, bc
    ld a, a
    rst $20

jr_022_7db6:
    ld a, [bc]
    rlca
    inc b
    db $e3
    ld a, [bc]
    dec b
    dec b
    push hl
    ld a, [bc]
    nop
    inc bc
    ld b, $e7
    ld a, [bc]
    inc bc
    rlca
    rst $20
    ld a, [bc]
    inc bc
    ld [$0ae7], sp
    inc bc
    add hl, bc
    rst $20
    ld a, [bc]
    ldh a, [rTAC]
    inc c
    db $e3
    ld a, [bc]
    inc b
    dec b
    jr nz, jr_022_7df2

    ld a, [hl]
    nop
    jp $ff3c


    cp l
    ld b, d
    add a
    jr z, jr_022_7db6

    inc c
    add e
    ld d, h
    cp $13
    ld a, [de]
    xor d
    xor d
    ld d, l
    ld d, l
    xor $ee
    rst $38
    db $fd
    rst $38

jr_022_7df2:
    ldh a, [rNR22]
    nop
    call $1832
    and l
    add b
    rst $38
    ld l, a
    inc b
    dec sp
    db $10
    jp hl


    rst $38
    nop
    xor e
    rst $38
    ld d, h
    add a
    jr c, @+$01

    nop
    and $19
    inc c
    ld a, a

jr_022_7e0d:
    jp nc, $37c0

    ld [bc], a
    dec e
    ld [$d1f4], sp
    inc de
    rst $38
    jr nz, jr_022_7e65

    call $0032
    or a
    ld [hl], d
    adc l
    cp a
    add c
    halt
    rst $38
    nop
    db $d3
    ld a, a
    dec bc
    inc bc
    ld d, [hl]
    rst $38
    rst $38
    xor l
    rst $30
    rst $38
    nop
    sub b
    ld h, $66
    rst $38
    sbc c
    nop
    db $db
    add hl, sp
    add $40
    or e
    rst $38
    ei
    nop
    xor c
    jr nz, jr_022_7e45

    ld h, [hl]
    add hl, de
    adc h
    ld d, d
    ld b, b

jr_022_7e45:
    rst $38
    or a
    ld [bc], a
    sbc l
    adc b
    ld [hl], h
    rst $38
    nop
    cp d
    rst $38
    rst $28
    ld d, l
    cp $a6
    di
    or a
    add hl, de
    ld e, a
    rst $38
    ldh [c], a
    xor a
    db $dd
    db $db
    ld h, [hl]
    ld a, h
    adc e
    xor c
    rst $38
    ld d, [hl]
    add e

jr_022_7e63:
    inc a
    sub e

jr_022_7e65:
    ld l, h
    sub l
    ld l, d
    xor l
    ld a, a
    ld [de], a
    adc a
    ld [hl], b
    rst $18
    xor c
    ld a, [hl-]
    push bc
    inc bc
    ld [bc], a
    rst $38
    push de
    cp a
    di
    dec l
    rst $38
    add d
    xor $59
    ei
    ld a, l
    add d
    inc bc
    inc bc
    or l
    rra
    ld d, e
    db $ed
    xor a
    rst $38
    jp c, $09f6

    ld e, c
    and [hl]
    db $db
    inc h
    ld [hl], $ff
    ret


    xor b
    rst $30
    ld e, d
    db $fd
    ld a, [$a5ff]
    rst $38
    rst $38
    ld a, a
    ld a, a
    xor l
    db $ed
    ld h, l
    cp d
    and d
    rst $38
    ld e, a
    ld d, h
    db $eb
    sbc c
    cp $65
    ei
    cp a
    rst $38
    rst $38
    sbc $df
    ei
    ei
    sbc e
    ld a, h
    xor [hl]
    rst $38
    db $d3
    sub [hl]
    ld a, e
    ld sp, $9ccf
    ei
    ld l, a
    rst $38
    rst $38
    cp e
    rst $38
    rst $28
    rst $28
    and [hl]
    ld e, c
    ld [$f7bf], sp
    dec h
    rst $38
    sbc d
    rst $38
    ld l, a
    jr nz, jr_022_7ef0

    ld a, a
    rst $38
    ld a, a
    db $db
    db $db
    dec [hl]
    dec [hl]
    add b
    add b
    ld b, $ff
    ld b, $d0
    ret nc

    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_022_7e63

    jr nz, jr_022_7f09

    add hl, hl
    ld b, e
    ld hl, $21b4
    ld l, $00
    db $e4
    ld bc, $0281
    nop

jr_022_7ef0:
    rst $38
    ld [de], a
    nop
    cpl
    nop
    ld [hl+], a
    nop
    daa
    nop
    rst $30
    dec hl
    nop
    ld a, [hl+]
    add b
    nop
    ld [de], a
    nop
    and h
    nop
    rst $18
    ldh a, [c]
    nop
    and d
    nop
    ld [hl], d

jr_022_7f09:
    ld b, b
    ld bc, $0072
    rrca
    xor d
    nop
    inc h
    nop
    nop
    inc b
    rst $20
    jr nc, jr_022_7f1a

    ld [bc], a
    cpl
    nop

jr_022_7f1a:
    and l
    nop
    ld sp, $0000
    rst $08
    inc d
    dec d
    ld [de], a
    inc de
    cpl
    nop
    jp Jump_000_3400


    dec [hl]
    ccf
    nop
    nop
    inc b
    dec b
    ld [hl+], a
    inc hl
    cpl
    nop
    jp $1b00


    inc h
    dec h
    ld bc, $3204
    inc sp
    cpl
    nop
    jp $0300


    inc b
    ld h, e
    db $10
    ld de, $002f
    jp $0300


    inc b
    jr nz, jr_022_7f6e

    cpl
    nop
    nop
    jp $0f00


    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl

jr_022_7f6e:
    nop
    rrca
    inc b
    nop
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    ldh a, [$ff2f]
    nop
    rrca
    inc b
    rrca
    inc b
    ld a, [bc]
    inc b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    xor $0c
    inc b
    ld b, b
    rlca
    ld b, $27
    nop
    ld d, d
    ld d, e
    ld d, h
    dec [hl]
    ld d, l
    add hl, bc
    ld bc, $ed41
    ld [hl], $50
    ld d, c
    cpl
    jr c, jr_022_7fd6

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_7fd6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
