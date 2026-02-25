; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    db $02 ; bank number

    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0de8
    call ReadRealTimeClock
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, TextFontTileset
    ld a, BANK(TextFontTileset)
    ld de, $9010
    ld bc, $07f0
    call BankedCopyHLtoDEBig
    ld hl, TextFontTileset + $7f0
    ld a, BANK(TextFontTileset)
    ld de, $8800
    ld bc, $0800
    call BankedCopyHLtoDEBig
    ld hl, $c0a3
    ld a, $6c
    ld [hli], a
    ld a, $1c
    ld [hli], a
    ld [hli], a
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
    ld hl, Data_002_4973
    ld de, $9821
    call Call_002_41dc
    ld hl, Data_002_4985
    ld de, $9881
    call Call_002_41dc
    ld hl, Data_002_4997
    ld de, $98a1
    call Call_002_41dc
    ld hl, Data_002_49a9
    ld de, $98e1
    call Call_002_41dc
    ld hl, Data_002_49bb
    ld de, $9921
    call Call_002_41dc
    ld hl, Data_002_49cd
    ld de, $9961
    call Call_002_41dc
    ld hl, Data_002_49df
    ld de, $9981
    call Call_002_41dc
    ld hl, Data_002_49f1
    ld de, $99c1
    call Call_002_41dc
    ld hl, Data_002_4a03
    ld de, $99e1
    call Call_002_41dc
    call Call_002_492a
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
    call Call_002_43ff
    call InitRealTimeClock
    call Call_002_4464
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
    call Call_002_4919
    call Call_002_44f7
    call Call_002_4550
    call Call_002_4533
    call Call_002_4689
    call Call_002_430a
    call Call_002_4372
    ld hl, $9863
    ld a, [sCurrentDayCounter]
    inc a
    call Call_002_4224
    ld a, [sCurrentSeason]
    ld hl, $9865
    call Call_002_41e6
    ld a, [sCurrentHour]
    ld hl, $986f
    call Call_002_4237
    ld de, $986b
    call Call_002_42b8
    call Call_002_4a15
    call Call_002_4b0a
    call Call_002_4ee1
    call Call_002_4e2f
    call Call_002_4e52
    call Call_002_4e70
    ld a, $83
    ld [wLCDCTempStorage], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld hl, $9000
    ld de, $8f00

jr_002_4170:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, e
    cp $10
    jr nz, jr_002_4170

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
    ld a, [sPlayerMoney+2]
    adc b
    ld [sPlayerMoney+2], a
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

Call_002_41dc:
    ld b, $12
.loop
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    dec b
    jr nz, .loop
    ret

Call_002_41e6:
    ld de, $420c
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

Call_002_4224:
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


Call_002_4237:
    ld de, $4258
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
    jr c, jr_002_426d

jr_002_426d:
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
    jr c, jr_002_42ac

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

jr_002_42ac:
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

; This has something to do with loading stuff into VRAM
Call_002_42b8:
    push de
; compute total number of days passed in the year
    ld a, [sCurrentSeason]
    ld c, 30
    call Multiply8Bit
;
    ld a, [sCurrentDayCounter]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
; hl is the number of days passed in the current year [0, 116] (I think).
    ld a, $07
    call DivideHLByA_16bit
    add a
    add a
; 4/7*(Number of days passed in year)
    ld hl, Data_002_42ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
;
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

Data_002_42ee:
    db $58, $59, $5A, $57, $5B, $5C, $5D, $5E, $5F, $60, $61, $62, $5B, $63, $64, $65
    db $66, $67, $68, $69, $54, $6A, $6B, $6C, $54, $55, $56, $57, 

Call_002_430a:
    ld a, [sSpriteEventFlags]
    bit 7, a
    call nz, Call_002_43a9
    ld a, [sSpriteEventFlags]
    bit 6, a
    call nz, Call_002_43d4
    ld a, [sSpriteEventFlags+1]
    bit EVENT_BOULDER_ON_SPRITE, a
    ret z

    bit EVENT_DAY_AFTER_SAVING_SPRITE, a
    ret nz

    bit EVENT_BROKE_BOULDER_ON_SPRITE, a
    ret nz

    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld a, h
    or l
    jr z, jr_002_4351

jr_002_4337:
    ld a, [sSpriteEventFlags+1]
    set EVENT_DAY_AFTER_SAVING_SPRITE, a
    ld [sSpriteEventFlags+1], a
    ld a, [sSpriteTotalHappiness]
    cp 10
    jr c, .zeroOutHappiness
    sub 10
    ld [sSpriteTotalHappiness], a
    ret

.zeroOutHappiness
    xor a
    ld [sSpriteTotalHappiness], a
    ret


jr_002_4351:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld b, a
    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_002_436c

    add b
    cp $20
    jr nc, jr_002_4337
    ret

jr_002_436c:
    add b
    cp TIME_6_AM
    jr nc, jr_002_4337
    ret

Call_002_4372:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld a, h
    or l
    jr z, jr_002_4388

jr_002_4383:
    xor a
    ld [$ba4e], a
    ret

jr_002_4388:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call DivideHLByA_16bit
    ld b, a
    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_002_43a3

    add b
    cp $20
    jr nc, jr_002_4383
    ret

jr_002_43a3:
    add b
    cp TIME_6_AM
    jr nc, jr_002_4383
    ret

Call_002_43a9:
    ld a, [$ba38]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, .setSuperSickle

    ld a, [$cbe5]
    ld l, a
    cp 12
    jr nc, .setSuperSickle

    ld a, [$ba38]
    add l
    cp $0c
    jr nc, .setSuperSickle

    ld [$ba38], a
    ret

.setSuperSickle
    ld a, 1
    ld [sShedSuperSickleFlag], a
    ld a, $ff
    ld [$ba38], a
    ret


Call_002_43d4:
    ld a, [$ba39]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_002_43f4

    ld a, [$cbe5]
    ld l, a
    cp $18
    jr nc, jr_002_43f4

    ld a, [$ba39]
    add l
    cp $18
    jr nc, jr_002_43f4

    ld [$ba39], a
    ret


jr_002_43f4:
    ld a, $01
    ld [$b8a8], a
    ld a, $ff
    ld [$ba39], a
    ret


Call_002_43ff:
    call Call_002_4848
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
    jr c, jr_002_442e

    sub $18
    ld [sCurrentHour], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a

jr_002_442e:
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


Call_002_4464:
    ld a, [$cbdd]
    ld b, a
    ld a, [sCurrentYear]
    cp b
    jr nz, jr_002_4482

    ld a, [sCurrentSeason]
    cp WINTER
    ret nz

    ld a, [sCurrentDayCounter]
    cp 29
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    jr jr_002_44d5

jr_002_4482:
    ld a, [sCurrentSeason]
    ld hl, $02d0 ; 720
    call MultiplyHLByA_ReturnHigh
    push hl
    ld a, [sCurrentDayCounter]
    ld c, 24
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
    ld a, WINTER
    ld [sCurrentSeason], a
    ld a, 29
    ld [sCurrentDayCounter], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ret

jr_002_44d5:
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

Call_002_44f7:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_4506

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_4506
    ret

jr_002_4506:
    ld a, [sCurrentYear]
    cp 0
    ret nz

    ld a, [$b8ea]
    cp $00
    ret z

    cp $01
    ret nz

    ld a, [sCurrentSeason]
    cp SPRING
    ret z

    cp AUTUMN
    jr nc, jr_002_4528

    ld a, [$b8eb]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret c

jr_002_4528:
    ld a, $02
    ld [$b8ea], a
    ld a, $80
    ld [$b8eb], a
    ret

Call_002_4533:
    ld a, [sCurrentSeason]
    cp WINTER
    ret nz

    ld a, [sCurrentDayCounter]
    cp 29
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [sHourOfPreviousSleep], a
    ret


Call_002_4550:
    ld a, [$b8fe]
    cp $02
    ret c

    ld a, [$cbe4]
    or a
    jp nz, Jump_002_465d

    ld a, [$b8fe]
    cp $02
    jr z, jr_002_457c

    ld a, [$b8fe]
    cp $03
    jr z, jr_002_45ce

    ld a, [$b8fe]
    cp $04
    jp z, Jump_002_460f

    ld a, [$b8fe]
    cp $05
    jp z, Jump_002_4640

    ret


jr_002_457c:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_458f

    ld a, $18
    add b
    ld b, a

jr_002_458f:
    call Call_002_467e
    ld a, $48
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jp nc, Jump_002_465d

    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45bc

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c2

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c8

    ret


jr_002_45bc:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_45c2:
    ld a, $04
    ld [$b8fe], a
    ret


jr_002_45c8:
    ld a, $03
    ld [$b8fe], a
    ret


jr_002_45ce:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_45e1

    ld a, $18
    add b
    ld b, a

jr_002_45e1:
    call Call_002_467e
    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_465d

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4603

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4609

    ret


jr_002_4603:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_4609:
    ld a, $04
    ld [$b8fe], a
    ret


Jump_002_460f:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_4622

    ld a, $18
    add b
    ld b, a

jr_002_4622:
    call Call_002_467e
    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_465d

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_463a

    ret


jr_002_463a:
    ld a, $05
    ld [$b8fe], a
    ret


Jump_002_4640:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_4653

    ld a, $18
    add b
    ld b, a

jr_002_4653:
    call Call_002_467e
    ld a, [$cbe5]
    cp b
    jr nc, jr_002_465d

    ret


Jump_002_465d:
jr_002_465d:
    xor a
    ld [$b8fe], a
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_002_4673

    ld a, $0a
    call Call_000_0f47
    ld a, $02
    ld [sHouseExpansionFlag], a
    ret


jr_002_4673:
    ld a, $0a
    call Call_000_0f47
    ld a, $01
    ld [sHouseExpansionFlag], a
    ret


Call_002_467e:
    ld a, b
    and $80
    jr nz, jr_002_4684

    ret


jr_002_4684:
    ld a, b
    add $18
    ld b, a
    ret


Call_002_4689:
    xor a
    ld [$b88e], a
    ld [$b890], a
    ld [sFindWeatherVaneFlag], a
    ld [sGoOnPicnicFlag], a
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
    call Call_002_46bb
    call Call_002_4742
    ret

Call_002_46bb:
    ld a, [sCurrentYear]
    or a
    jr nz, jr_002_4729
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, jr_002_4729
    ld a, [sCurrentSeason]
    cp WINTER
    jr z, jr_002_4729
    ld a, [$b8a2]
    cp $80
    ret z

    ld a, [$b8a2]
    cp $ff
    jr z, jr_002_46e4
    ld a, [sCurrentSeason]
    cp SPRING
    ret z
    jr jr_002_46f0

jr_002_46e4:
    ld a, [sCurrentSeason]
    cp SPRING
    jr z, jr_002_46fd

    ld a, $09
    ld [$b8a2], a

jr_002_46f0:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_4709
    jr nc, jr_002_4729
    ret

jr_002_46fd:
    ld a, [sCurrentDayCounter]
    cp 29
    ret nz

    ld a, EVENT_POST_EARTHQUAKE_CONVERSATION
    ld [$b8a2], a
    ret

jr_002_4709:
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

jr_002_4729:
    ld a, 1
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [sSpriteEventFlags+1]
    set EVENT_BOULDER_ON_SPRITE, a
    ld [sSpriteEventFlags+1], a
    ld a, $80
    ld [$b8a2], a
    ret


Call_002_4742:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jr z, jr_002_47c3
    ld a, [sCurrentSeason]
    cp WINTER
    jr z, jr_002_47c3
    ld a, [$b8a1]
    cp $80
    jr z, jr_002_47c9
    ld a, [$b8a1]
    cp $ff
    jr z, jr_002_4766
    ld a, [sCurrentSeason]
    cp SPRING
    ret z
    jr jr_002_477c

jr_002_4766:
    ld a, [sCurrentSeason]
    cp SPRING
    jr z, jr_002_4789

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a

jr_002_477c:
    ld a, [$b8a1]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_479f
    jr nc, jr_002_47c3
    ret

jr_002_4789:
    ld a, [sCurrentDayCounter]
    cp 29
    ret nz

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a
    ret

jr_002_479f:
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

jr_002_47c3:
    ld a, $80
    ld [$b8a1], a
    ret

jr_002_47c9:
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jr z, jr_002_47d8

    ld a, [sNextDayWeather]
    cp WINDY_DAY
    jr z, jr_002_480f
    ret

jr_002_47d8:
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
    jr z, jr_002_47ee

    jr jr_002_47f4

jr_002_47ee:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

jr_002_47f4:
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

jr_002_480f:
    ld a, [$ba4d]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret z

    ld a, [$ba4c]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr z, jr_002_4823
    ret


jr_002_4823:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

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
    ret


Call_002_4848:
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
    jr z, jr_002_48b9

    ld hl, $ffff

jr_002_48b9:
    ld a, [$ba41]
    cp $00
    jr z, jr_002_48e0

    ld a, h
    cp $55
    jr nc, jr_002_48ce

    cp $54
    jr c, jr_002_48d1

    ld a, l
    cp $61
    jr c, jr_002_48d1

jr_002_48ce:
    ld hl, $5460

jr_002_48d1:
    add hl, hl
    ld a, $0f
    call DivideHLByA_16bit
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


jr_002_48e0:
    ld a, h
    cp $a9
    jr nc, jr_002_48ee

    cp $a8
    jr c, jr_002_48f1

    ld a, l
    cp $c1
    jr c, jr_002_48f1

jr_002_48ee:
    ld hl, $a8c0

jr_002_48f1:
    ld a, $0f
    call DivideHLByA_16bit
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


    ld a, h
    cp $0c
    jr nc, jr_002_490d

    cp $0b
    jr c, jr_002_4910

    ld a, l
    cp $41
    jr c, jr_002_4910

jr_002_490d:
    ld hl, $0b40

jr_002_4910:
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


Call_002_4919:
    ld a, h
    or a
    jr nz, jr_002_4923

    ld a, l
    cp $18
    jr nc, jr_002_4923
    ret

jr_002_4923:
    ld a, [sPlayerMaxEnergy]
    ld [sPlayerEnergy], a
    ret

Call_002_492a:
    ld a, $f1
    ld [$9800], a
    ld b, $12
    ld a, $f2
    ld hl, $9801

jr_002_4936:
    ld [hl+], a
    dec b
    jr nz, jr_002_4936

    ld a, $f3
    ld [$9813], a
    ld a, $f4
    ld [$9a20], a
    ld b, $12
    ld a, $f5
    ld hl, $9a21

jr_002_494b:
    ld [hl+], a
    dec b
    jr nz, jr_002_494b

    ld a, $f6
    ld [$9a33], a
    ld b, $10
    ld de, $0020
    ld hl, $9820
    ld a, $f7

jr_002_495e:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_495e

    ld b, $10
    ld de, $0020
    ld hl, $9833
    ld a, $f8

jr_002_496d:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_496d
    ret

Data_002_4973:
    db $13, $28, $1D, $1A, $32, $AF, $22, $2C, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF
    db $AF, $AF
Data_002_4985:
    db $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4, $F4
    db $F4, $F4
Data_002_4997:
    db $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1
    db $F1, $F1
Data_002_49a9:
    db $13, $28, $2D, $1A, $25, $AF, $12, $21, $22, $29, $26, $1E, $27, $2D, $AF, $AF
    db $AF, $AF
Data_002_49bb:
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $0F, $22, $1E, $1C
    db $1E, $2C
Data_002_49cd:
    db $16, $1A, $2D, $1E, $2B, $22, $27, $20, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF
    db $AF, $AF
Data_002_49df:
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $03, $1A, $32, $2C
    db $AF, $AF
Data_002_49f1:
    db $05, $1E, $1E, $1D, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF
    db $AF, $AF
Data_002_4a03:
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $03, $1A, $32, $2C
    db $AF, $AF 

Call_002_4a15:
    call Call_002_4ea8
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

    call Call_002_5002
    ld a, [$cbde]
    ldh [$ffa6], a
    ld a, [$cbdf]
    ldh [$ffa7], a
    ld a, [$cbdc]
    or a
    ret z

    ld e, a
    jr jr_002_4a61

Jump_002_4a40:
    ldh a, [$ffa7]
    inc a
    ldh [$ffa7], a
    cp $1e
    jr nz, jr_002_4a53

    xor a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    and $03
    ldh [$ffa6], a

jr_002_4a53:
    ld a, [$ccc6]
    dec a
    ld [$ccc6], a
    cp $ff
    jr nz, jr_002_4a61

    call Call_002_5002

jr_002_4a61:
    xor a
    ldh [$ffa8], a
    push de
    ld hl, sMapObjectLocation
    ld bc, $0c40

Jump_002_4a6b:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_4aea

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_4a7f

    call Call_002_4b1b
    jr jr_002_4aea

jr_002_4a7f:
    ld a, [$ccc6]
    or a
    jr z, jr_002_4aea

    ld a, e
    and $f0
    cp $50
    jr z, jr_002_4a92

    cp $60
    jr z, jr_002_4a92

    jr jr_002_4a97

jr_002_4a92:
    call Call_002_4c06
    jr jr_002_4aea

jr_002_4a97:
    cp $70
    jr z, jr_002_4aa1

    cp $80
    jr z, jr_002_4aa1

    jr jr_002_4aa6

jr_002_4aa1:
    call Call_002_4c64
    jr jr_002_4aea

jr_002_4aa6:
    cp $90
    jr z, jr_002_4aac

    jr jr_002_4ab1

jr_002_4aac:
    call Call_002_4b59
    jr jr_002_4aea

jr_002_4ab1:
    cp $a0
    jr z, jr_002_4ab7

    jr jr_002_4abc

jr_002_4ab7:
    call Call_002_4bad
    jr jr_002_4aea

jr_002_4abc:
    cp $b0
    jr z, jr_002_4ac2

    jr jr_002_4ac7

jr_002_4ac2:
    call Call_002_4cca
    jr jr_002_4aea

jr_002_4ac7:
    cp $c0
    jr z, jr_002_4acd

    jr jr_002_4ad2

jr_002_4acd:
    call Call_002_4d1f
    jr jr_002_4aea

jr_002_4ad2:
    cp $d0
    jr z, jr_002_4ad8

    jr jr_002_4add

jr_002_4ad8:
    call Call_002_4d78
    jr jr_002_4aea

jr_002_4add:
    cp $e0
    jr z, jr_002_4ae7

    cp $f0
    jr z, jr_002_4ae7

    jr jr_002_4aea

jr_002_4ae7:
    call Call_002_4dd1

jr_002_4aea:
    dec bc
    ld a, b
    or c
    cp $00
    jp nz, Jump_002_4a6b

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
    jp nz, Jump_002_4a40

    ret


Call_002_4b0a:
    ld hl, $6c9a
    ld a, $12
    call BankSwitchCallHL
    ld hl, $6c75
    ld a, $12
    call BankSwitchCallHL
    ret


Call_002_4b1b:
    push hl
    push bc
    dec hl
    dec hl
    push de
    ldh a, [$ffa6]
    cp $03
    jp z, Jump_002_4b45

    ld a, [hl]
    cp $49
    jr z, jr_002_4b32

    inc a
    ld [hl], a

jr_002_4b2e:
    pop de
    pop bc
    pop hl
    ret


jr_002_4b32:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    ld hl, $b93a
    ld bc, $0001
    call AddBCtoWordAtHL
    pop hl
    jr jr_002_4b2e

Jump_002_4b45:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop hl
    jr jr_002_4b2e
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

Call_002_4b59:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $98
    jr z, jr_002_4b96

    inc a
    ld [hl], a
    sub $90
    push hl
    ld hl, $4b50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4b82

    ld a, [hl]
    jr jr_002_4b8f

jr_002_4b82:
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

jr_002_4b8f:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4b96:
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


Jump_002_4ba5:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4bad:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $ac
    jr z, jr_002_4bea

    inc a
    ld [hl], a
    sub $a0
    push hl
    ld hl, $4bf9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4bd6

    ld a, [hl]
    jr jr_002_4be3

jr_002_4bd6:
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

jr_002_4be3:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4bea:
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

Call_002_4c06:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $60
    jr z, jr_002_4c43

    inc a
    ld [hl], a
    sub $50
    push hl
    ld hl, $4c53
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4c2f

    ld a, [hl]
    jr jr_002_4c3c

jr_002_4c2f:
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

jr_002_4c3c:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4c3f:
    pop de
    pop bc
    pop hl
    ret


jr_002_4c43:
    push hl
    ld a, $5c
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0064
    call Call_000_1162
    pop hl
    jr jr_002_4c3f

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

Call_002_4c64:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $88
    jr z, jr_002_4ca1

    inc a
    ld [hl], a
    sub $70
    push hl
    ld hl, $4cb1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4c8d

    ld a, [hl]
    jr jr_002_4c9a

jr_002_4c8d:
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

jr_002_4c9a:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4c9d:
    pop de
    pop bc
    pop hl
    ret


jr_002_4ca1:
    push hl
    ld a, $82
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_002_4c9d

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

Call_002_4cca:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $b8
    jr z, jr_002_4d07

    inc a
    ld [hl], a
    sub $b0
    push hl
    ld hl, $4d16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4cf3

    ld a, [hl]
    jr jr_002_4d00

jr_002_4cf3:
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

jr_002_4d00:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4d07:
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

Call_002_4d1f:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $cc
    jr z, jr_002_4d5c

    inc a
    ld [hl], a
    sub $c0
    push hl
    ld hl, $4d6b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4d48

    ld a, [hl]
    jr jr_002_4d55

jr_002_4d48:
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

jr_002_4d55:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4d5c:
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

Call_002_4d78:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $dc
    jr z, jr_002_4db5

    inc a
    ld [hl], a
    sub $d0
    push hl
    ld hl, $4dc4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4da1

    ld a, [hl]
    jr jr_002_4dae

jr_002_4da1:
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

jr_002_4dae:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4db5:
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

Call_002_4dd1:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4ba5

    push de
    ld a, [hl]
    cp $f0
    jr z, jr_002_4e0e

    inc a
    ld [hl], a
    sub $e0
    push hl
    ld hl, $4e1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4dfa

    ld a, [hl]
    jr jr_002_4e07

jr_002_4dfa:
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

jr_002_4e07:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4e0a:
    pop de
    pop bc
    pop hl
    ret


jr_002_4e0e:
    push hl
    ld a, $ec
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_1162
    pop hl
    jr jr_002_4e0a

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

Call_002_4e2f:
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


Call_002_4e52:
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


Call_002_4e70:
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
    jr nc, jr_002_4ea1

    cp $27
    jr c, jr_002_4ea7

    ld a, [hl]
    cp $10
    jr nc, jr_002_4ea1

    jr jr_002_4ea7

jr_002_4ea1:
    ld a, $0f
    ld [hl], a
    ld a, $27
    ld [bc], a

jr_002_4ea7:
    ret


Call_002_4ea8:
    ld a, [$cbe4]
    or a
    jr nz, jr_002_4ecb

    ld a, [$cbe5]
    ld b, a
    or a
    ret z

    cp $18
    jr nc, jr_002_4ecb

    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_002_4ec5

    add b
    cp $1e
    jr nc, jr_002_4ecb

    ret


jr_002_4ec5:
    add b
    cp $06
    jr nc, jr_002_4ecb

    ret


jr_002_4ecb:
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

; I think this might modify the different tiles to be modified by the weather.
; So, the planted seeds become automatically watered when it's raining.
Call_002_4ee1:
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_4ee7:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_4f5d

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_4efb

    call Call_002_4f9b
    jr jr_002_4f5d

jr_002_4efb:
    cp $50
    jr z, jr_002_4f05

    cp $60
    jr z, jr_002_4f05

    jr jr_002_4f0a

jr_002_4f05:
    call Call_002_4fb0
    jr jr_002_4f5d

jr_002_4f0a:
    cp $70
    jr z, jr_002_4f14

    cp $80
    jr z, jr_002_4f14

    jr jr_002_4f19

jr_002_4f14:
    call Call_002_4fb8
    jr jr_002_4f5d

jr_002_4f19:
    cp PLANTED_SEEDS_TILE
    jr z, jr_002_4f1f
    jr jr_002_4f24

jr_002_4f1f:
    call Call_002_4fc1
    jr jr_002_4f5d

jr_002_4f24:
    cp $a0
    jr z, jr_002_4f2a
    jr jr_002_4f2f

jr_002_4f2a:
    call Call_002_4fca
    jr jr_002_4f5d

jr_002_4f2f:
    cp $b0
    jr z, jr_002_4f35

    jr jr_002_4f3a

jr_002_4f35:
    call Call_002_4fd3
    jr jr_002_4f5d

jr_002_4f3a:
    cp $c0
    jr z, jr_002_4f40

    jr jr_002_4f45

jr_002_4f40:
    call Call_002_4fdc
    jr jr_002_4f5d

jr_002_4f45:
    cp $d0
    jr z, jr_002_4f4b

    jr jr_002_4f50

jr_002_4f4b:
    call Call_002_4fe5
    jr jr_002_4f5d

jr_002_4f50:
    cp $e0
    jr z, jr_002_4f5a

    cp $f0
    jr z, jr_002_4f5a
    jr jr_002_4f5d

jr_002_4f5a:
    call Call_002_4fee

jr_002_4f5d:
    call Call_002_4f68
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_4ee7
    ret

Call_002_4f68:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_002_4f89

    cp WINDY_DAY
    jr z, jr_002_4f89

    cp SNOWY_DAY
    jr z, jr_002_4f89

    push hl
    push bc
    dec hl
    ld a, [hld]
    cp 0
    jr nz, jr_002_4f98

    ld a, [hl]
    cp $12
    jr nz, jr_002_4f98

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret

jr_002_4f89:
    push hl
    push bc
    dec hl
    ld a, [hld]
    cp $00
    jr nz, jr_002_4f98

    ld a, [hl]
    cp $11
    jr nz, jr_002_4f98

    inc a
    ld [hl], a

jr_002_4f98:
    pop bc
    pop hl
    ret

Call_002_4f9b:
    ld a, [sCurrentSeason]
    cp WINTER
    jr z, jr_002_4fa3
    ret

jr_002_4fa3:
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

Call_002_4fb0:
    ld a, [sCurrentSeason]
    cp SUMMER
    jr nz, jr_002_4ff7
    ret

Call_002_4fb8:
    ld a, [sCurrentSeason]
    cp SUMMER
    jp nz, Jump_002_4ff7
    ret

Call_002_4fc1:
    ld a, [sCurrentSeason]
    cp SPRING
    jp nz, Jump_002_4ff7
    ret

Call_002_4fca:
    ld a, [sCurrentSeason]
    cp SPRING
    jp nz, Jump_002_4ff7
    ret

Call_002_4fd3:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jp nz, Jump_002_4ff7
    ret

Call_002_4fdc:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jp nz, Jump_002_4ff7
    ret

Call_002_4fe5:
    ld a, [sCurrentSeason]
    cp WINTER
    jp nz, Jump_002_4ff7
    ret

Call_002_4fee:
    ld a, [sCurrentSeason]
    cp WINTER
    jp nz, Jump_002_4ff7
    ret

Jump_002_4ff7:
jr_002_4ff7:
    push hl
    push bc
    dec hl
    xor a
    ld [hld], a
    ld a, PLOWED_LAND_TILE
    ld [hl], a
    pop bc
    pop hl
    ret

Call_002_5002:
    ld a, [sSpriteTotalHappiness]
    cp 90
    jr nc, jr_002_5016

    cp 60
    jr nc, jr_002_501d

    cp 30
    jr nc, jr_002_5023

    xor a
    ld [$ccc6], a
    ret


jr_002_5016:
    ld a, [$cbdc]
    ld [$ccc6], a
    ret


jr_002_501d:
    ld a, $1d
    ld [$ccc6], a
    ret


jr_002_5023:
    ld a, $06
    ld [$ccc6], a
    ret


    ld a, h
    ld c, [hl]
    add h
    nop
    or d
    add hl, sp
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    ld [hl], a
    dec b
    ld a, a
    ld b, a
    push hl
    push af
    ld l, $8d
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    push hl
    push af
    ld l, $eb
    ld h, $6b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $5029
    call SyncLoadSpritePalette5
    ld hl, $5031
    call SyncLoadSpritePalette6
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
    jr z, jr_002_50ec

    ld a, [sInventory+1]
    cp SUPER_HAMMER
    jr z, jr_002_50ec

    ld a, [$b8fa]
    cp SUPER_HAMMER
    jr z, jr_002_50ec

    ld a, [sHouseExpansionFlag]
    cp $01
    jr nz, jr_002_50ec

    xor a
    ld [$b897], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_002_50da

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_002_50e0

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_002_50e7

    jr jr_002_50ec

jr_002_50da:
    xor a
    ld [$b8a5], a
    jr jr_002_50ec

jr_002_50e0:
    ld a, NO_ITEM
    ld [sInventory], a
    jr jr_002_50ec

jr_002_50e7:
    ld a, NO_ITEM
    ld [sInventory+1], a

jr_002_50ec:
    ld hl, $70ae
    ld c, $02
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $785b
    ld c, $11
    ld de, $9000
    call DrawMaskedClippedTile
    ld hl, $66d8
    ld c, $17
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
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld [$c90d], a
    ld [$cb91], a
    ld [$cb85], a
    ld [$cb8e], a
    di
    call Call_002_6084
    xor a
    ld [$c780], a
    ld a, [sHouseExpansionFlag]
    ld [$cbe8], a
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [$b8d1]
    and a
    jp z, Jump_002_5191

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

Jump_002_5191:
    ld a, [$cbe8]
    cp $00
    jr z, jr_002_51d1

    cp $01
    jr z, jr_002_51f2

    ld hl, $780c
    ld c, $17
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $6994
    ld c, $20
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    xor a
    ldh [c], a
    ld a, $34
    ld [$9835], a
    ld a, $35
    ld [$9836], a
    ld a, $34
    ld [$9855], a
    ld a, $35
    ld [$9856], a
    jr jr_002_5211

jr_002_51d1:
    ld hl, $7bff
    ld c, $07
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $6840
    ld c, $20
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    xor a
    ldh [c], a
    jr jr_002_5211

jr_002_51f2:
    ld hl, $7d4b
    ld c, $07
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $68e8
    ld c, $20
    ld de, $9800
    call DrawMaskedClippedTile
    ld c, $4f
    xor a
    ldh [c], a

jr_002_5211:
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
    call Call_002_672f
    call Call_002_65b6
    call $6492
    call UpdateHourTileData
    ld a, $83
    ld [wLCDCTempStorage], a
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld d, $99
    ld a, [sNumPowerBerriesEaten]
    cp $00
    jr z, jr_002_5264

    ld b, a
    ld hl, $526a

jr_002_525c:
    ld a, [hl+]
    ld e, a
    ld a, $05
    ld [de], a
    dec b
    jr nz, jr_002_525c

jr_002_5264:
    ld c, $4f
    xor a
    ldh [c], a
    jr jr_002_5271

    ld h, c
    ld h, d
    add c
    add d
    and c
    and d
    pop bc

jr_002_5271:
    ld a, $ff
    ld [wTextID], a
    xor a
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld [wTextCharacterCounter], a
    xor a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [wTextBoxIsDisplayed], a
    call EnableDisplay_GameplayMode
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


    push hl
    push af
    ld l, $18
    ld h, $5c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_002_52d6
    call Call_002_5356
    call Call_002_5913
    call Call_000_3cf8
    call AnimateTV
    call Call_002_5433
    call Call_000_2d67
    call LoadCharacterTileIntoVRAM
    call Call_002_6694
    call Call_000_0ec5
    ret


Call_002_52d6:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_52e9

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_52e9

    ld a, $01
    ld [$b88d], a

jr_002_52e9:
    ld a, [$ba43]
    cp $02
    jr z, jr_002_52f5

    ld a, $11
    ld [$b88d], a

jr_002_52f5:
    ld a, [$b88d]
    or a
    ret z

    ld a, [$b88d]
    cp $11
    jr z, jr_002_5315

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


jr_002_5315:
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

Call_002_5356:
    ld a, [$cb73]
    or a
    ret z

    dec a
    ld [$cb73], a
    ld a, [$cb73]
    cp $4f
    jr z, jr_002_5378

    cp $3c
    jr nc, jr_002_537e

    cp $3b
    jr z, jr_002_53bd

    cp $2e
    jr nc, jr_002_53e5

    cp $00
    jp z, Jump_002_540a

    ret


jr_002_5378:
    ld a, $01
    call LoadPlayerSpriteID
    ret


jr_002_537e:
    ld a, [$c60b]
    cp $45
    jr z, jr_002_5398

    cp $44
    jr z, jr_002_5398

    cp $43
    jr z, jr_002_5398

    dec a
    ld [$c60b], a
    ld a, [wPlayerYPosition]
    dec a
    ld [wPlayerYPosition], a

jr_002_5398:
    ld a, [$cb73]
    sub $3c
    ld hl, $532e
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


jr_002_53bd:
    ld a, $53
    call LoadPlayerSpriteID
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


jr_002_53e5:
    ld a, [$cb73]
    sub $2e
    ld hl, $5346
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

Jump_002_540a:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld a, $01
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $01
    ld [$c910], a
    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld a, [sCurrentDayCounter]
    ld [sDayOfPreviousSleep], a
    ld a, [sCurrentHour]
    ld [sHourOfPreviousSleep], a
    ld a, [sCurrentMinute]
    ld [sMinuteOfPreviousSleep], a
    ret

Call_002_5433:
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

    call Call_002_5882
    call Call_000_0e54
    ld a, [$cb73]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr z, jr_002_5462

    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    ret

jr_002_5462:
    ldh a, [$ff8a]
    and $02
    jr z, jr_002_546c

    call Call_002_5599
    ret


jr_002_546c:
    ldh a, [$ff8b]
    and $08
    jr z, jr_002_5476

    call Call_000_1923
    ret


jr_002_5476:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_002_549d

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_002_54dc

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_002_551b

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_002_555a

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_002_549d:
    call Call_002_70a3
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
    jr z, jr_002_54d8

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_54d8:
    call Call_002_573c
    ret


Jump_002_54dc:
    call Call_002_70a3
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
    jr z, jr_002_5517

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5517:
    call Call_002_578a
    ret


Jump_002_551b:
    call Call_002_70a3
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
    jr z, jr_002_5556

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_5556:
    call Call_002_57b8
    ret


Jump_002_555a:
    call Call_002_70a3
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
    jr z, jr_002_5595

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_5595:
    call Call_002_5824
    ret


Call_002_5599:
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_002_55ac

    ld a, [$c605]
    cp $08
    jr nz, jr_002_55ac

    ld a, $34
    call Call_000_25ce

jr_002_55ac:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_002_55c6

    ldh a, [$ff8a]
    and $20
    jr nz, jr_002_55ca

    ldh a, [$ff8a]
    and $10
    jr nz, jr_002_55ce

    ldh a, [$ff8a]
    and $40
    jr nz, jr_002_55d2

    jr jr_002_55da

jr_002_55c6:
    ld a, $00
    jr jr_002_55d4

jr_002_55ca:
    ld a, $01
    jr jr_002_55d4

jr_002_55ce:
    ld a, $02
    jr jr_002_55d4

jr_002_55d2:
    ld a, $03

jr_002_55d4:
    ld [wPlayerFacingDirection], a
    call Call_002_70a3

jr_002_55da:
    ld a, [wPlayerFacingDirection]
    cp $00
    jp z, Jump_002_562d

    cp $01
    jp z, Jump_002_566e

    cp $02
    jp z, Jump_002_56af

    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_002_54dc

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
    jr z, jr_002_5626

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5626:
    call Call_002_578a
    call Call_002_578a
    ret


Jump_002_562d:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_002_549d

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
    jr z, jr_002_5667

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_56f0

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5703

    ret


jr_002_5667:
    call Call_002_573c
    call Call_002_573c
    ret


Jump_002_566e:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_002_551b

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
    jr z, jr_002_56a8

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_56a8:
    call Call_002_57b8
    call Call_002_57b8
    ret


Jump_002_56af:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_002_555a

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
    jr z, jr_002_56e9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_002_5716

    ld a, [wcb32]
    and $01
    jp z, Jump_002_5729

    ret


jr_002_56e9:
    call Call_002_5824
    call Call_002_5824
    ret


Jump_002_56f0:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_150b
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_002_57b8
    ret


Jump_002_5703:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1514
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_002_5824
    ret


Jump_002_5716:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1502
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_002_578a
    ret


Jump_002_5729:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_002_573c
    ret


Call_002_573c:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $83
    jr nc, jr_002_5764

    ld a, [wPlayerYPosition]
    cp $5c
    jr nc, jr_002_5750

    jr jr_002_575d

jr_002_5750:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_002_5758:
    ld hl, wPlayerYPosition
    inc [hl]
    ret


jr_002_575d:
    ld hl, $c60b
    inc [hl]
    jr jr_002_5758

    ret


jr_002_5764:
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jr z, jr_002_577f

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


jr_002_577f:
    ld a, $44
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_002_578a:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $0e
    ret c

    ld a, [wPlayerYPosition]
    cp $5d
    jr nc, jr_002_57a4

    ld a, [wPlayerYPosition]
    cp $08
    jr c, jr_002_57b1

    jr jr_002_57b1

jr_002_57a4:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_002_57ac:
    ld hl, wPlayerYPosition
    dec [hl]
    ret


jr_002_57b1:
    ld hl, $c60b
    dec [hl]
    jr jr_002_57ac

    ret


Call_002_57b8:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $18
    ret c

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_57f6

    cp $01
    jr z, jr_002_57ff

    ld a, [wPlayerXPosition]
    cp $b9
    jr nc, jr_002_57ef

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_002_57e2

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_002_57ef

jr_002_57e2:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_002_57ea:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_002_57ef:
    ld hl, $c60a
    dec [hl]
    jr jr_002_57ea

    ret


jr_002_57f6:
    ld hl, wPlayerXPosition
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_002_57ff:
    ld a, [wPlayerXPosition]
    cp $99
    jr nc, jr_002_581d

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_002_5814

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_002_581d

jr_002_5814:
    ld hl, $ff93
    dec [hl]

jr_002_5818:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_002_581d:
    ld hl, $c60a
    dec [hl]
    jr jr_002_5818

    ret


Call_002_5824:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $f8
    ret nc

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_585b

    cp $01
    jr z, jr_002_5864

    ld a, [wPlayerXPosition]
    cp $b8
    jr nc, jr_002_5854

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_002_5854

    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_002_584f:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_002_5854:
    ld hl, $c60a
    inc [hl]
    jr jr_002_584f

    ret


jr_002_585b:
    ld hl, wPlayerXPosition
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_002_5864:
    ld a, [wPlayerXPosition]
    cp $98
    jr nc, jr_002_587b

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_002_587b

    ld hl, $ff93
    inc [hl]

jr_002_5876:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_002_587b:
    ld hl, $c60a
    inc [hl]
    jr jr_002_5876

    ret


Call_002_5882:
    ld a, [wMapChangeFreezeTimer]
    or a
    ret z

    dec a
    ld [wMapChangeFreezeTimer], a
    cp $00
    jr z, jr_002_5891

    pop hl
    ret


jr_002_5891:
    ld a, [wDestinationWarpID]
    cp COW_BARN
    jr z, jr_002_58cb

    ld a, [wDestinationWarpID]
    cp CHICKEN_COUP
    jr z, jr_002_58ea

    ld a, [wDestinationWarpID]
    or a
    jr z, jr_002_58b6

    ld a, $1b
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $02
    ld [$c910], a
    pop hl
    ret


jr_002_58b6:
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


jr_002_58cb:
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


jr_002_58ea:
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


Call_002_5913:
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
    cp BED
    jr z, jr_002_5978
    cp PHONE_EXCHANGE
    jr z, jr_002_5991
    cp CALENDAR_CLOCK
    jr z, jr_002_599c
    cp TELEVISION
    jp z, TelevisionInteract

    ret z

    cp $05
    jr z, jr_002_5983

    cp $06
    jr z, StoveTopInteract

    cp STOVE_TOP
    jr z, StoveTopInteract
    cp $08
    jp z, StoveTopInteract
    cp DRESSER
    jp z, DresserInteract
    cp PLANT_TROUGH
    jp z, PlantTroughInteract
    cp $0c
    jp z, Jump_002_5a1d
    cp $99
    jp z, Jump_002_5a2d
    ret


    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ld a, $ff
    ld [wDestinationWarpID], a
    ret


jr_002_5978:
    ld a, $05
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_5983:
    ld a, $01
    ld [wMapChangeFreezeTimer], a
    ld a, HOME
    ld [wDestinationWarpID], a
    call Call_000_0f0f
    ret


jr_002_5991:
    ld a, $07
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_599c:
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

StoveTopInteract:
    ld a, TEXT_STOVE_TOP
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

DresserInteract:
    ld a, [sFoundMoneyInDresser]
    or a
    jr nz, .alreadyReceivedMoney

    ld a, 1
    ld [sFoundMoneyInDresser], a
    ld hl, sPlayerMoney
    ld bc, 1000
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    ld a, TEXT_FOUND_MONEY_IN_DRESSER
    jr .loadText

.alreadyReceivedMoney
    ld a, TEXT_DRESSER

.loadText
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

TelevisionInteract:
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [wTVIsTurnedOn]
    or a
    ret nz

    ld a, $80
    ld [wTVAnimationTimer], a
    ld a, 1
    ld [wTVIsTurnedOn], a
    ld a, $10
    ld [wInputFreezeTimer], a
    ret

PlantTroughInteract:
    ld a, [sNumPowerBerriesEaten]
    or a
    jr nz, .loadFlowerBloomedText
    ld a, TEXT_NO_FLOWERS
    jr .loadText
.loadFlowerBloomedText
    ld a, TEXT_FLOWERS_BLOOMED
.loadText
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_002_5a1d:
    ld a, [$b8d1]
    and a
    ret z

    ld a, $52
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_002_5a2d:
    ld a, [wPlayerFacingDirection]
    cp FACING_RIGHT
    jr z, jr_002_5a41
    cp FACING_DOWN
    jr z, jr_002_5a51
    cp FACING_UP
    jr z, jr_002_5a61
    cp FACING_LEFT
    jr z, jr_002_5a71
    ret

jr_002_5a41:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret

jr_002_5a51:
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret

jr_002_5a61:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret

jr_002_5a71:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $31
    call InitializeTextIDAndDisplay
    ret

INCLUDE "data/weather_probabilities.asm"

Call_002_5b01:
    call Call_002_5c27
; overwrites sNextDayCounter with sCurrentDayCounter +1.
    ld a, [sCurrentDayCounter]
    ld [sNextDayCounter], a
    ld a, [sCurrentSeason]
    ld [sSeasonOfNextDay], a
    ld a, [sCurrentDayCounter]
    inc a
    ld [sNextDayCounter], a
    cp 30
    jr nz, jr_002_5b28

    xor a
    ld [sNextDayCounter], a
    ld a, [sSeasonOfNextDay]
    inc a
    and $03
    ld [sSeasonOfNextDay], a

jr_002_5b28:
    call SetSpecialDaySunnyWeather
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jr nz, jr_002_5b38

    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    ret

jr_002_5b38:
    ld a, [sSeasonOfNextDay]
    cp SUMMER
    jr nz, jr_002_5b4f

    ld a, [$b8a2]
    ld b, a
    ld a, [sNextDayCounter]
    cp b
    jr nz, jr_002_5b4f

    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    ret


jr_002_5b4f:
    ld a, [$b8a2]
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    jr nz, jr_002_5b5f

    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    ret

jr_002_5b5f:
    ld a, [sSeasonOfNextDay]
    cp SPRING
    jp z, GetSpringWeather
    cp SUMMER
    jp z, GetSummerWeather
    cp AUTUMN
    jp z, GetAutumnWeather

; fallthrough to winter

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and 31 ; $1f
    ld hl, WinterWeatherProbabilityTable
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret

GetSpringWeather:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and 31 ; $1f
    ld hl, SpringWeatherProbabilityTable ; $5a81
    add l
    ld l, a
    ld a, 0
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret

GetSummerWeather:
    ld a, [$b8a1]
    ld b, a
    ld a, [sNextDayCounter]
    cp b
    jr nz, .noWindyDay
    ld a, WINDY_DAY
    ld [sNextDayWeather], a
    ld a, [sCurrentDayCounter]
    ld [$ba4d], a
    ld a, $80
    ld [$b8a1], a
    ret

.noWindyDay
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and 31 ; $1f
    ld hl, SummerWeatherProbabilityTable
    add l
    ld l, a
    ld a, 0
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret

GetAutumnWeather:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and 31 ; $1f
    ld hl, AutumnWeatherProbabilityTable
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [sNextDayWeather], a
    ret

SetSpecialDaySunnyWeather:
    ld a, [sGoOnPicnicFlag]
    or a
    jr nz, .setPicnicWeather
    ld a, [sSeasonOfNextDay]
    cp SUMMER
    jr z, .jr_002_5bfc
    ld a, [sSeasonOfNextDay]
    cp AUTUMN
    jr z, .jr_002_5c04
    ld a, [sSeasonOfNextDay]
    cp WINTER
    jr z, .jr_002_5c0c
    ret

.jr_002_5bfc
    ld a, [sNextDayCounter]
    cp 19
    jr z, .jr_002_5c19
    ret

.jr_002_5c04
    ld a, [sNextDayCounter]
    cp 9
    jr z, .jr_002_5c19
    ret

.jr_002_5c0c
    ld a, [sCurrentYear]
    or a
    ret nz
    ld a, [sNextDayCounter]
    cp 19
    jr z, .jr_002_5c19
    ret

.jr_002_5c19
    ld a, SUNNY_DAY
    ld [sNextDayWeather], a
    pop hl
    ret

.setPicnicWeather
    ld a, SUNNY_DAY
    ld [sCurrentWeather], a
    pop hl
    ret

Call_002_5c27:
    ld a, [sCurrentSeason]
    or a
    ret nz
; If it's spring
    ld a, [sCurrentDayCounter]
    cp 27
    call z, Call_002_5c3e
    ld a, [sCurrentDayCounter]
    cp 28
    call z, Call_002_5c54
    ret


    ret


Call_002_5c3e:
    ld a, [sCurrentYear]
    or a
    ret nz
; If it's the first year
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $0a
    call DivideHLByA_16bit
; register `a` is in the interval [0,25]
    ld [$b8a2], a
    ret


Call_002_5c54:
    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $1e
    call DivideHLByA_16bit
    ld b, a
    ld a, [$b8a2]
    cp b
    jr nz, jr_002_5c69

    inc b

jr_002_5c69:
    ld a, b
    ld [$b8a1], a
    ld [$ba4c], a
    ret

Data_002_5c71:
    db $00, $40, $01, $41, $02, $42, $03, $43, $10, $50, $11, $51, $12, $52, $13, $53
Data_002_5c81:
    db $00, $40, $01, $41, $04, $42, $05, $43, $10, $50, $11, $51, $14, $52, $15, $53
Data_002_5c91:
    db $00, $40, $01, $41, $06, $42, $07, $43, $10, $50, $11, $51, $16, $52, $17, $53
Data_002_5ca1:
    db $20, $40, $21, $41, $24, $42, $25, $43, $30, $50, $31, $51, $34, $52, $35, $53
Data_002_5cb1:
    db $22, $40, $23, $41, $24, $42, $25, $43, $32, $50, $33, $51, $34, $52, $35, $53
Data_002_5cc1:
    db $58, $40, $59, $41, $5A, $42, $5B, $43, $68, $50, $69, $51, $6A, $52, $6B, $53
Data_002_5cd1:
    db $00, $40, $01, $41, $02, $42, $03, $43, $10, $50, $11, $51, $12, $52, $13, $53
Data_002_5ce1:
    db $00, $40, $01, $41, $04, $42, $05, $43, $10, $50, $11, $51, $14, $52, $15, $53
Data_002_5cf1:
    db $00, $40, $01, $41, $06, $42, $07, $43, $10, $50, $11, $51, $16, $52, $17, $53
Data_002_5d01:
    db $40, $40, $41, $41, $26, $42, $27, $43, $50, $50, $51, $51, $36, $52, $37, $53
Data_002_5d11:
    db $42, $40, $43, $41, $26, $42, $27, $43, $52, $50, $53, $51, $36, $52, $37, $53
Data_002_5d21:
    db $58, $40, $59, $41, $5A, $42, $5B, $43, $68, $50, $69, $51, $6A, $52, $6B, $53
Data_002_5d31:
    db $00, $40, $01, $41, $02, $42, $03, $43, $10, $50, $11, $51, $12, $52, $13, $53
Data_002_5d41:
    db $00, $40, $01, $41, $04, $42, $05, $43, $10, $50, $11, $51, $14, $52, $15, $53
Data_002_5d51:
    db $00, $40, $01, $41, $06, $42, $07, $43, $10, $50, $11, $51, $16, $52, $17, $53
Data_002_5d61:
    db $60, $40, $61, $41, $46, $42, $47, $43, $70, $50, $71, $51, $56, $52, $57, $53
Data_002_5d71:
    db $60, $40, $61, $41, $46, $42, $47, $43, $70, $50, $71, $51, $56, $52, $57, $53
Data_002_5d81:
    db $60, $40, $61, $41, $46, $42, $47, $43, $70, $50, $71, $51, $56, $52, $57, $53
Data_002_5d91:
    db $00, $40, $01, $41, $02, $42, $03, $43, $10, $50, $11, $51, $12, $52, $13, $53
Data_002_5da1:
    db $00, $40, $01, $41, $04, $42, $05, $43, $10, $50, $11, $51, $14, $52, $15, $53
Data_002_5db1:
    db $00, $40, $01, $41, $06, $42, $07, $43, $10, $50, $11, $51, $16, $52, $17, $53
Data_002_5dc1:
    db $62, $40, $63, $41, $66, $42, $67, $43, $72, $50, $73, $51, $76, $52, $77, $53
Data_002_5dd1:
    db $64, $40, $65, $41, $66, $42, $67, $43, $74, $50, $75, $51, $76, $52, $77, $53
Data_002_5de1:
    db $58, $40, $59, $41, $5A, $42, $5B, $43, $68, $50, $69, $51, $6A, $52, $6B, $53
Data_002_5df1:
    db $08, $40, $09, $41, $0A, $42, $0B, $43, $18, $50, $19, $51, $1A, $52, $1B, $53
Data_002_5e01:
    db $28, $40, $29, $41, $2A, $42, $2B, $43, $38, $50, $39, $51, $3A, $52, $3B, $53
Data_002_5e11:
    db $08, $40, $09, $41, $0A, $42, $0B, $43, $18, $50, $19, $51, $1A, $52, $1B, $53
Data_002_5e21:
    db $28, $40, $29, $41, $2A, $42, $2B, $43, $38, $50, $39, $51, $3A, $52, $3B, $53
Data_002_5e31:
    db $08, $40, $09, $41, $0A, $42, $0B, $43, $18, $50, $19, $51, $1A, $52, $1B, $53
Data_002_5e41:
    db $58, $40, $59, $41, $5A, $42, $5B, $43, $68, $50, $69, $51, $6A, $52, $6B, $53 

AnimateTV:
    ld a, [wTVAnimationTimer]
    or a
    ret z

    ld a, [wTVIsTurnedOn]
    or a
    jr nz, jr_002_5e69
; TV is off now, so finish up.
    ld a, $ff
    ld [wTVBlinkingIndicator], a
    ld a, 0
    ld [wTVAnimationTimer], a
    jp Jump_002_5ef1

jr_002_5e69:
    ld a, $10
    ld [wInputFreezeTimer], a
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jr nz, jr_002_5e7a

    ld hl, Data_002_5df1
    jr jr_002_5ea4

jr_002_5e7a:
    ld a, [sNextDayWeather]
    cp SUNNY_DAY
    jr nz, .notSunnyDay
    ld hl, Data_002_5c71
    jr jr_002_5ea4

.notSunnyDay
    cp RAINY_DAY
    jr nz, .notRainyDay
    ld hl, Data_002_5cd1
    jr jr_002_5ea4

.notRainyDay
    cp SNOWY_DAY
    jr nz, .notSnowyDay
    ld hl, $5d31
    jr jr_002_5ea4

.notSnowyDay
    cp $04
    jr nz, jr_002_5ea1

    ld hl, $5d91
    jr jr_002_5ea4

jr_002_5ea1:
    ld hl, $5df1

jr_002_5ea4:
    ld a, [wTVBlinkingIndicator]
    ld b, a
    ld a, [wTVAnimationTimer]
    add b
    ld [wTVAnimationTimer], a
    cp $7f
    jr z, jr_002_5ec4
    cp $60
    jr z, jr_002_5ec6
    cp $50
    jr z, jr_002_5ecc
    cp $40
    jr z, jr_002_5edb
    cp $38
    jr z, jr_002_5ee6
    ret

jr_002_5ec4:
    jr jr_002_5efa

jr_002_5ec6:
    ld bc, $0010
    add hl, bc
    jr jr_002_5efa

jr_002_5ecc:
    xor a
    ld [wInputFreezeTimer], a
    push hl
    call LoadTVText
    pop hl
    ld bc, $0020
    add hl, bc
    jr jr_002_5efa

jr_002_5edb:
    ld a, $ff
    ld [wTVBlinkingIndicator], a
    ld bc, $0030
    add hl, bc
    jr jr_002_5efa

jr_002_5ee6:
    ld a, $01
    ld [wTVBlinkingIndicator], a
    ld bc, $0040
    add hl, bc
    jr jr_002_5efa

Jump_002_5ef1:
    xor a
    ld [wTVIsTurnedOn], a
    ld hl, Data_002_5cc1
    jr jr_002_5efa

; Loads TV screen and maybe unloads it too?
jr_002_5efa:
    ld d, h
    ld e, l
    ld c, $08

.outerLoop
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
    ld de, TVWeatherGraphics
    add hl, de
    ld e, c
    ld d, b
    ld b, $10

.innerLoop
    call SyncToBlankPeriod
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, .innerLoop

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, .outerLoop
    ret

LoadTVText: ; 02x5f31
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    jp z, .stayInside
    ld a, [sSeasonOfNextDay]
    cp SPRING
    jr z, .spring
    cp SUMMER
    jr z, .summer
    cp AUTUMN
    jr z, .autumn

; Winter
    ld a, [sNextDayWeather]
    cp SUNNY_DAY
    jr z, .winterSunnyDay
    ld a, TEXT_TV_WINTER_SNOWY_DAY
    call InitializeTextIDAndDisplay
    ret
.winterSunnyDay
    ld a, TEXT_TV_WINTER_SUNNY_DAY
    call InitializeTextIDAndDisplay
    ret

.spring
    ld a, [sNextDayWeather]
    cp SUNNY_DAY
    jr z, .springSunnyDay
    ld a, TEXT_TV_SPRING_RAINY_DAY
    call InitializeTextIDAndDisplay
    ret
.springSunnyDay
    ld a, TEXT_TV_SPRING_SUNNY_DAY
    call InitializeTextIDAndDisplay
    ret

.summer
    ld a, [sNextDayWeather]
    cp SUNNY_DAY
    jr z, .summerSunnyDay
    cp WINDY_DAY
    jr z, .summerWindyDay
    cp $04
    jr z, .jr_002_5f8f
    ld a, TEXT_TV_SUMMER_RAINY_DAY
    call InitializeTextIDAndDisplay
    ret
.summerSunnyDay
    ld a, TEXT_TV_SUMMER_SUNNY_DAY
    call InitializeTextIDAndDisplay
    ret
.summerWindyDay
    ld a, TEXT_TV_SUMMER_WINDY_DAY
    call InitializeTextIDAndDisplay
    ret
.jr_002_5f8f
    ld a, TEXT_14
    call InitializeTextIDAndDisplay
    ret

.autumn
    ld a, [sNextDayWeather]
    cp SUNNY_DAY
    jr z, .autumnSunnyDay
    ld a, TEXT_TV_AUTUMN_RAINY_DAY
    call InitializeTextIDAndDisplay
    ret
.autumnSunnyDay
    ld a, TEXT_TV_AUTUMN_SUNNY_DAY
    call InitializeTextIDAndDisplay
    ret

.stayInside
    ld a, TEXT_TV_STAY_INSIDE_WINDY_DAY
    call InitializeTextIDAndDisplay
    ret

; a random number is selected from this list which decides what food/drink will be consumed.
ConsumableIndex: ; $002_5fae
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00
    db $01
    db $02
    db $03
    db $04
    db $05
    db $00

UseConsumable:
    ldh a, [hRandomNumber] ; get random number
    and %00001111 ; reduce to number between 0 and 15
    ld hl, ConsumableIndex
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, .eatCroissant
    cp $01
    jr z, .drinkWildGrapeJuice
    cp $02
    jr z, .eatRiceBall
    cp $03
    jr z, .drinkGreenTea
    cp $04
    jr z, .eatMeatDumpling
    cp $05
    jr z, .jr_002_6038
    ret

.eatCroissant
    ld a, [sNumCroissant]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumCroissant], a
    ld a, $00
    ld [$cb8d], a
    ret

.drinkWildGrapeJuice
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumWildGrapeJuice], a
    ld a, $01
    ld [$cb8d], a
    ret

.eatRiceBall
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumRiceBall], a
    ld a, $02
    ld [$cb8d], a
    ret

.drinkGreenTea
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumGreenTea], a
    ld a, $03
    ld [$cb8d], a
    ret

.eatMeatDumpling
    ld a, [sNumMeatDumpling]
    or a
    jr z, .checkForCroissant

    dec a
    ld [sNumMeatDumpling], a
    ld a, $04
    ld [$cb8d], a
    ret

.jr_002_6038
    ld a, [$b8cc]
    or a
    jr z, .checkForCroissant

    dec a
    ld [$b8cc], a
    ld a, $05
    ld [$cb8d], a
    ret

.checkForCroissant
    ld a, [sNumCroissant]
    or a
    jr z, .checkForWildGrapeJuice
    jp .eatCroissant

.checkForWildGrapeJuice
    ld a, [sNumWildGrapeJuice]
    or a
    jr z, .checkForRiceBall
    jp .drinkWildGrapeJuice

.checkForRiceBall
    ld a, [sNumRiceBall]
    or a
    jr z, .checkForGreenTea
    jp .eatRiceBall

.checkForGreenTea
    ld a, [sNumGreenTea]
    or a
    jr z, .checkForMeatDumpling
    jp .drinkGreenTea

.checkForMeatDumpling
    ld a, [sNumMeatDumpling]
    or a
    jr z, .jr_002_6075
    jp .eatMeatDumpling

.jr_002_6075
    ld a, [$b8cc]
    or a
    jr z, .noConsumables
    jp .jr_002_6038

.noConsumables
    ld a, $ff
    ld [$cb8d], a
    ret


Call_002_6084:
    call Call_002_6421
    ld a, [$cb92]
    or a
    jr nz, jr_002_609e

    ld a, $01
    ld [$cb92], a
    ld a, [$b900]
    cp $01
    jr nz, jr_002_60ab

    ld a, $01
    ld [$c910], a

jr_002_609e:
    ld a, [$c910]
    cp $01
    jr nz, jr_002_60ab

    call UseConsumable
    call Call_002_67a1

jr_002_60ab:
    ld a, [sHouseExpansionFlag]
    cp $00
    jp z, Jump_002_6177

    cp $01
    jp z, Jump_002_6233

    ld a, [$c910]
    or a
    jp z, Jump_002_615e

    cp $01
    jr z, jr_002_60e8

    cp $03
    jr z, jr_002_6120

    cp $04
    jr z, jr_002_6136

    ld hl, $6311
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


jr_002_60e8:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_6120

    ld hl, $6301
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
    jr z, jr_002_6158

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_614f

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call LoadPlayerSpriteID
    call Call_000_1afe
    ret


jr_002_6120:
    ld hl, $6301
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_6136:
    ld hl, $6331
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


jr_002_614f:
    ld a, $b5
    call LoadPlayerSpriteID
    call Call_000_1afe
    ret


jr_002_6158:
    ld a, $20
    call LoadPlayerSpriteID
    ret


Jump_002_615e:
    ld hl, $62f1
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


Jump_002_6177:
    ld a, [$c910]
    or a
    jp z, Jump_002_621a

    cp $01
    jr z, jr_002_61a7

    cp $03
    jr z, jr_002_61df

    cp $04
    jr z, jr_002_61f5

    ld hl, $63b1
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


jr_002_61a7:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_61df

    ld hl, $63a1
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
    jr z, jr_002_6214

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_620b

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call LoadPlayerSpriteID
    call Call_000_1afe
    ret


jr_002_61df:
    ld hl, $63a1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_61f5:
    ld hl, $63d1
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_620b:
    ld a, $b5
    call LoadPlayerSpriteID
    call Call_000_1afe
    ret


jr_002_6214:
    ld a, $20
    call LoadPlayerSpriteID
    ret


Jump_002_621a:
    ld hl, $6391
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


Jump_002_6233:
    ld a, [$c910]
    or a
    jp z, Jump_002_62d8

    cp $01
    jr z, jr_002_6264

    cp $03
    jr z, jr_002_629e

    cp $04
    jr z, jr_002_62b6

    ld hl, $6361
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


jr_002_6264:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_629e

    ld hl, $6351
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
    jr z, jr_002_62d2

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_62cc

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call LoadPlayerSpriteID
    call Call_000_1afe
    ret


jr_002_629e:
    ld hl, $6351
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


jr_002_62b6:
    ld hl, $6381
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_002_62cc:
    ld a, $b5
    call LoadPlayerSpriteID
    ret


jr_002_62d2:
    ld a, $20
    call LoadPlayerSpriteID
    ret


Jump_002_62d8:
    ld hl, $6341
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

Data_002_62f1:
    db $01, $00, $FF, $00, $00, $08, $88, $00, $80, $00, $50, $64, $00, $03, $01, $00,
Data_002_6301:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $40, $00, $40, $48, $00, $00, $01, $00,
Data_002_6311:
    db $01, $00, $FF, $00, $00, $08, $F6, $00, $4D, $00, $8E, $55, $00, $03, $01, $00,
Data_002_6321:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $40, $00, $40, $48, $00, $00, $01, $00,
Data_002_6331:
    db $01, $00, $FF, $00, $00, $08, $A8, $00, $6D, $00, $50, $64, $00, $03, $01, $00,
Data_002_6341:
    db $01, $00, $FF, $00, $00, $08, $78, $00, $80, $00, $50, $64, $00, $03, $01, $00,
Data_002_6351:
    db $01, $00, $FF, $00, $00, $08, $78, $00, $40, $00, $50, $48, $00, $00, $01, $00,
Data_002_6361:
    db $01, $00, $FF, $00, $00, $08, $88, $00, $6D, $00, $50, $64, $00, $03, $01, $00,
Data_002_6371:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $40, $00, $40, $48, $00, $00, $01, $00,
Data_002_6381:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $3D, $00, $40, $45, $00, $03, $01, $00,
Data_002_6391:
    db $01, $00, $FF, $00, $00, $08, $58, $00, $80, $00, $50, $64, $00, $03, $01, $00,
Data_002_63a1:
    db $01, $00, $FF, $00, $00, $08, $80, $00, $40, $00, $78, $48, $00, $00, $01, $00,
Data_002_63b1:
    db $01, $00, $FF, $00, $00, $08, $86, $00, $6D, $00, $7E, $64, $00, $03, $01, $00,
Data_002_63c1:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $40, $00, $40, $48, $00, $00, $01, $00,
Data_002_63d1:
    db $01, $00, $FF, $00, $00, $08, $48, $00, $3D, $00, $40, $45, $00, $03, $01, $00,
Data_002_63e1:
    db $01, $05, $02, $00, $00, $08, $2D, $00, $80, $00, $00, $00, $00, $02, $00, $00,
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
Data_002_6401:
    db $01, $05, $22, $00, $00, $08, $2D, $00, $80, $00, $00, $00, $00, $02, $00, $00,
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,

Call_002_6421:
    ld a, [sPetIsOutside]
    or a
    jr nz, .jr_002_645d

    ld a, [wPlayerHoldingPet]
    or a
    jr nz, .jr_002_645d

    ld a, [sCatOrDog]
    or a
    jr z, .cat
    ld hl, Data_002_6401
    ld de, wPetIsPresentOnMap
    ld b, $20
    call CopyHLtoDE
    ld a, [wPetFacingDirection]
    ld b, a
    add $20
    call Call_000_163d
    ret
.cat
    ld hl, Data_002_63e1
    ld de, wPetIsPresentOnMap
    ld b, $20
    call CopyHLtoDE
    ld a, [wPetFacingDirection]
    ld b, a
    add $00
    call Call_000_1622
    ret

.jr_002_645d
    xor a
    ld [wPetIsPresentOnMap], a
    ret

Data_002_6462:
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
    call nz, $6547
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_002_64cd

    cp $01
    jr z, jr_002_64f2

    ld hl, $6482
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


jr_002_64cd:
    ld hl, $6462
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


jr_002_64f2:
    ld hl, $6472
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
    jr z, jr_002_657e

    cp $01
    jr z, jr_002_659a

    ld hl, $6537
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


jr_002_657e:
    ld hl, $6517
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


jr_002_659a:
    ld hl, $6527
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


Call_002_65b6:
    ld a, [sNumPowerBerriesEaten]
    or a
    ret z

    cp $01
    jp z, Jump_002_6682

    cp $02
    jp z, Jump_002_6671

    cp $03
    jp z, Jump_002_6660

    cp $04
    jp z, Jump_002_664f

    cp $05
    jp z, Jump_002_663e

    cp $06
    jr z, jr_002_662d

    cp $07
    jr z, jr_002_661c

    cp $08
    jr z, jr_002_660b

    cp $09
    jr z, jr_002_65fa

    cp $0a
    jr nc, jr_002_65e9

    ret


jr_002_65e9:
    ld de, $7789
    ld hl, $8db0
    ld c, $10

jr_002_65f1:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_65f1

jr_002_65fa:
    ld de, $7779
    ld hl, $8da0
    ld c, $10

jr_002_6602:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6602

jr_002_660b:
    ld de, $7789
    ld hl, $97b0
    ld c, $10

jr_002_6613:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6613

jr_002_661c:
    ld de, $7779
    ld hl, $97a0
    ld c, $10

jr_002_6624:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6624

jr_002_662d:
    ld de, $7789
    ld hl, $96b0
    ld c, $10

jr_002_6635:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6635

Jump_002_663e:
    ld de, $7779
    ld hl, $96a0
    ld c, $10

jr_002_6646:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6646

Jump_002_664f:
    ld de, $7789
    ld hl, $95b0
    ld c, $10

jr_002_6657:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6657

Jump_002_6660:
    ld de, $7779
    ld hl, $95a0
    ld c, $10

jr_002_6668:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6668

Jump_002_6671:
    ld de, $7689
    ld hl, $94b0
    ld c, $10

jr_002_6679:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6679

Jump_002_6682:
    ld de, $7679
    ld hl, $94a0
    ld c, $10

jr_002_668a:
    call SyncToBlankPeriod
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_668a

    ret


Call_002_6694:
    ld a, [$cb8e]
    or a
    jr nz, jr_002_66cb

    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sCurrentSeason]
    cp SUMMER
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


jr_002_66cb:
    ld a, [$cb8e]
    and $02
    jr z, jr_002_670a

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
    set EVENT_BOULDER_ON_SPRITE, a
    ld [sSpriteEventFlags+1], a
    ret


jr_002_670a:
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

Call_002_672f:
    ld hl, vBGMap1
    ld de, $673d
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret

Data_002_673d:
    db $F9, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA
    db $FA, $FA, $FA, $FB, $FF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $E9, $FF, $AF, $AF, $AF, $AF, $AF, $AF, $AF
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $E9, $FF, $AF, $AF, $AF
    db $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF, $E9
    db $FC, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD
    db $FD, $FD, $FD, $FE 

; New day initialization?
Call_002_67a1:
    call UpdateCalendarDate
    call Call_002_6cf9
    xor a
    ld [$b900], a
; I think this adds money from the shipment
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
    jr z, jr_002_67f9 ; first day of spring

    callfar Label_003_63c5
    callfar Label_004_6da9
    callfar UpdateSpriteTotalHappiness

jr_002_67f9:
    call Call_002_6d7a
    ld a, [sNextDayWeather]
    ld [sCurrentWeather], a
    cp SUNNY_DAY
    jr nz, jr_002_681b

    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jr jr_002_6882

jr_002_681b:
    cp RAINY_DAY
    jp nz, Jump_002_6836

    ld a, $00
    ld [$b924], a
    ld a, $63
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_6882


Jump_002_6836:
    cp SNOWY_DAY
    jp nz, Jump_002_6851

    ld a, $71
    ld [$b924], a
    ld a, $11
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_6882


Jump_002_6851:
    cp WINDY_DAY
    jp nz, Jump_002_686d

    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    jp Jump_002_6882


Jump_002_686d:
    ld a, $b1
    ld [$b924], a
    ld a, $21
    ld [$b925], a
    ld a, $94
    ld [$b926], a
    ld a, [$cb5c]
    ld [$b927], a

Jump_002_6882:
jr_002_6882:
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    call z, Call_002_6cd1
    call Call_002_5b01
    push hl
    push af
    ld l, $eb
    ld h, $6b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_68a0:
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    and $40
    jr z, jr_002_6916

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_68b4

    call Call_002_69bb
    jr jr_002_6916

jr_002_68b4:
    cp $50
    jr z, jr_002_68be

    cp $60
    jr z, jr_002_68be

    jr jr_002_68c3

jr_002_68be:
    call Call_002_69de
    jr jr_002_6916

jr_002_68c3:
    cp $70
    jr z, jr_002_68cd

    cp $80
    jr z, jr_002_68cd

    jr jr_002_68d2

jr_002_68cd:
    call Call_002_6ad4
    jr jr_002_6916

jr_002_68d2:
    cp $90
    jr z, jr_002_68d8

    jr jr_002_68dd

jr_002_68d8:
    call Call_002_6b3f
    jr jr_002_6916

jr_002_68dd:
    cp $a0
    jr z, jr_002_68e3

    jr jr_002_68e8

jr_002_68e3:
    call Call_002_6b82
    jr jr_002_6916

jr_002_68e8:
    cp $b0
    jr z, jr_002_68ee

    jr jr_002_68f3

jr_002_68ee:
    call Call_002_6bc5
    jr jr_002_6916

jr_002_68f3:
    cp $c0
    jr z, jr_002_68f9

    jr jr_002_68fe

jr_002_68f9:
    call Call_002_6c08
    jr jr_002_6916

jr_002_68fe:
    cp $d0
    jr z, jr_002_6904

    jr jr_002_6909

jr_002_6904:
    call Call_002_6c4b
    jr jr_002_6916

jr_002_6909:
    cp $e0
    jr z, jr_002_6913

    cp $f0
    jr z, jr_002_6913

    jr jr_002_6916

jr_002_6913:
    call Call_002_6c8e

jr_002_6916:
    call Call_002_6988
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_68a0
    ret

UpdateCalendarDate:
    ld a, [$b900]
    or a
    jr nz, .skipCalendarUpdate

    ld a, [sHourOfPreviousSleep]
    cp TIME_6_AM
    jr c, .skipCalendarUpdate

    xor a
    ld [sClockFrameCount], a
    ld [sCurrentMinute], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    call UpdateHourTileData
    ld a, [sCurrentDayCounter]
    inc a
    ld [sCurrentDayCounter], a
    cp 30
    jr nc, .updateSeason
    call UpdateDayOfTheWeekTileData
    ret

.updateSeason
    xor a
    ld [sCurrentDayCounter], a
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    call UpdateDayOfTheWeekTileData
    call UpdateSeasonTileData
    ld a, [sCurrentSeason]
    cp $04
    jr nc, .updateYear
    ret

.updateYear
    xor a
    ld [sCurrentSeason], a
    call UpdateSeasonTileData
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    ret

.skipCalendarUpdate
    xor a
    ld [sClockFrameCount], a
    ld [sCurrentMinute], a
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    call UpdateHourTileData
    xor a
    ld [s6AMFlag], a
    ret

Call_002_6988:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_002_69a9

    cp WINDY_DAY
    jr z, jr_002_69a9

    cp SNOWY_DAY
    jr z, jr_002_69a9

    push hl
    push bc
    dec hl
    ld a, [hld]
    cp 0
    jr nz, jr_002_69b8

    ld a, [hl]
    cp $12
    jr nz, jr_002_69b8

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret

jr_002_69a9:
    push hl
    push bc
    dec hl
    ld a, [hld]
    cp $00
    jr nz, jr_002_69b8

    ld a, [hl]
    cp $11
    jr nz, jr_002_69b8

    inc a
    ld [hl], a

jr_002_69b8:
    pop bc
    pop hl
    ret


Call_002_69bb:
    ld a, [sCurrentSeason]
    cp WINTER
    jp z, Jump_002_69d1

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $49
    jr z, jr_002_69ce

    inc a
    ld [hl], a

jr_002_69ce:
    pop bc
    pop hl
    ret


Jump_002_69d1:
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


Call_002_69de:
    ld a, [sCurrentSeason]
    cp SUMMER
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6a09

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6a07

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $60
    jr z, jr_002_6a07

    inc a
    ld [hl+], a
    cp $54
    jr c, jr_002_6a07

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6a07:
    pop bc
    pop hl

jr_002_6a09:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_002_6a15

    cp WINDY_DAY
    jr z, jr_002_6a15

    ret


jr_002_6a15:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $60
    jr z, jr_002_6a24

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6a24:
    pop bc
    pop hl
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6a54
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


Jump_002_6a49:
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

Call_002_6ad4:
    ld a, [sCurrentSeason]
    cp SUMMER
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6aff

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6afd

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $88
    jr z, jr_002_6afd

    inc a
    ld [hl+], a
    cp $76
    jr c, jr_002_6afd

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6afd:
    pop bc
    pop hl

jr_002_6aff:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_002_6b0b

    cp WINDY_DAY
    jr z, jr_002_6b0b

    ret


jr_002_6b0b:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $88
    jr z, jr_002_6b1a

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6b1a:
    pop bc
    pop hl
    ld a, [sCurrentWeather]
    cp WINDY_DAY
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6a54
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


Call_002_6b3f:
    ld a, [sCurrentSeason]
    cp SPRING
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6b6a

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6b68

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $98
    jr z, jr_002_6b68

    inc a
    ld [hl+], a
    cp $94
    jr c, jr_002_6b68

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6b68:
    pop bc
    pop hl

jr_002_6b6a:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $98
    jr z, jr_002_6b7f

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6b7f:
    pop bc
    pop hl
    ret


Call_002_6b82:
    ld a, [sCurrentSeason]
    cp SPRING
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6bad

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6bab

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $ac
    jr z, jr_002_6bab

    inc a
    ld [hl+], a
    cp $a6
    jr c, jr_002_6bab

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6bab:
    pop bc
    pop hl

jr_002_6bad:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $ac
    jr z, jr_002_6bc2

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6bc2:
    pop bc
    pop hl
    ret


Call_002_6bc5:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6bf0

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6bee

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $b8
    jr z, jr_002_6bee

    inc a
    ld [hl+], a
    cp $b4
    jr c, jr_002_6bee

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6bee:
    pop bc
    pop hl

jr_002_6bf0:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $b8
    jr z, jr_002_6c05

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c05:
    pop bc
    pop hl
    ret


Call_002_6c08:
    ld a, [sCurrentSeason]
    cp AUTUMN
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6c33

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6c31

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $cc
    jr z, jr_002_6c31

    inc a
    ld [hl+], a
    cp $c6
    jr c, jr_002_6c31

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6c31:
    pop bc
    pop hl

jr_002_6c33:
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $cc
    jr z, jr_002_6c48

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c48:
    pop bc
    pop hl
    ret


Call_002_6c4b:
    ld a, [sCurrentSeason]
    cp WINTER
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6c76

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6c74

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $dc
    jr z, jr_002_6c74

    inc a
    ld [hl+], a
    cp $d6
    jr c, jr_002_6c74

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6c74:
    pop bc
    pop hl

jr_002_6c76:
    ld a, [sCurrentWeather]
    cp SNOWY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $dc
    jr z, jr_002_6c8b

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6c8b:
    pop bc
    pop hl
    ret


Call_002_6c8e:
    ld a, [sCurrentSeason]
    cp WINTER
    jp nz, Jump_002_6a49

    ld a, d
    and $08
    jr z, jr_002_6cb9

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6cb7

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $f0
    jr z, jr_002_6cb7

    inc a
    ld [hl+], a
    cp $e4
    jr c, jr_002_6cb7

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6cb7:
    pop bc
    pop hl

jr_002_6cb9:
    ld a, [sCurrentWeather]
    cp SNOWY_DAY
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $f0
    jr z, jr_002_6cce

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6cce:
    pop bc
    pop hl
    ret


Call_002_6cd1:
    ld hl, sMapObjectLocation
    ld bc, $0c40

jr_002_6cd7:
    inc hl
    ld a, [hld]
    cp $00
    jr nz, jr_002_6cef

    ld a, [hl]
    cp $12
    jr nz, jr_002_6cef

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $3f
    cp $3f
    jr nz, jr_002_6cef

    xor a
    ld [hl], a

jr_002_6cef:
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_6cd7

    ret

Call_002_6cf9:
    ld a, [$b900]
    or a
    jp nz, Jump_002_6d6d

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
    jr z, jr_002_6d45
    cp $17
    jr z, jr_002_6d49
    cp $00
    jr z, jr_002_6d4d
    cp $01
    jr z, jr_002_6d51
    cp $02
    jr z, jr_002_6d55
    cp $03
    jr z, jr_002_6d59
    cp $04
    jr z, jr_002_6d5d
    cp $05
    jr z, jr_002_6d61
    cp $16
    jr c, jr_002_6d45
    ret


jr_002_6d45:
    ld c, $08
    jr jr_002_6d63

jr_002_6d49:
    ld c, $07
    jr jr_002_6d63

jr_002_6d4d:
    ld c, $06
    jr jr_002_6d63

jr_002_6d51:
    ld c, $05
    jr jr_002_6d63

jr_002_6d55:
    ld c, $04
    jr jr_002_6d63

jr_002_6d59:
    ld c, $03
    jr jr_002_6d63

jr_002_6d5d:
    ld c, $02
    jr jr_002_6d63

jr_002_6d61:
    ld c, $01

jr_002_6d63:
    ldh a, [$ffa4]
    call Multiply8Bit
    ld b, l
    call $1ae6
    ret

Jump_002_6d6d:
    ld a, TIME_6_AM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ret


Call_002_6d7a:
    ld a, [sNextDayWeather]
    cp WINDY_DAY
    jr nz, jr_002_6d8d

    ld a, [sCurrentYear]
    cp 2
    ret nz

; Some special event for windy day on year 2???
    ld a, 1
    ld [$b89e], a
    ret


jr_002_6d8d:
    ld a, [$b88d]
    cp $01
    jr nz, jr_002_6d9b

    ld a, [sCurrentDayCounter]
    cp $13
    jr c, jr_002_6d9f

jr_002_6d9b:
    xor a
    ld [$b88d], a

jr_002_6d9f:
    xor a
    ld [$b88c], a
    call Call_002_6fba
    ld a, [sGoOnPicnicFlag]
    or a
    call nz, Call_002_6ee1
    ld a, [sCurrentDayCounter]
    ld b, a
    ld a, [$b8a2]
    cp b
    call z, Call_002_6f09
    ld a, [sCurrentSeason]
    cp SPRING
    call z, Call_002_6de8
    ld a, [sCurrentSeason]
    cp SUMMER
    call z, Call_002_6e0c
    ld a, [sCurrentSeason]
    cp AUTUMN
    call z, Call_002_6e18
    ld a, [sCurrentSeason]
    cp WINTER
    call z, Call_002_6e29
    call Call_002_6e3a
    call Call_002_6e70
    call Call_002_7014
    call Call_002_6fd8
    call Call_002_6fee
    ret


Call_002_6de8:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_002_7055
    call Call_002_6e8d
    ld a, [sDayOfTheWeekTileIndex2]
    cp $6a
    call z, Call_002_6ed2
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_002_6f34
    ld a, [sCurrentDayCounter]
    cp $0e
    call z, Call_002_6f96
    ret


Call_002_6e0c:
    call Call_002_6eaa
    ld a, [$b89e]
    cp $01
    call z, Call_002_6f1c
    ret


Call_002_6e18:
    ld a, [sCurrentDayCounter]
    cp $00
    call z, Call_002_6fa3
    ld a, [sCurrentDayCounter]
    cp $09
    call z, Call_002_6f02
    ret


Call_002_6e29:
    ld a, [sCurrentDayCounter]
    cp $13
    call z, Call_002_6f10
    ld a, [sCurrentDayCounter]
    cp $1d
    call z, Call_002_7003
    ret


Call_002_6e3a:
    ld a, [$b898]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    call Call_002_7073
    ld a, [$cc9c]
    or a
    jr nz, jr_002_6e53

    ld a, [$cc9b]
    cp $80
    ret c

jr_002_6e53:
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


Call_002_6e70:
    ld a, [sNextDayWeather]
    cp WINDY_DAY
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


Call_002_6e8d:
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


Call_002_6eaa:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, [sCurrentSeason]
    cp SUMMER
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


Call_002_6ed2:
    ld a, [sCurrentDayCounter]
    add $07
    cp $1e
    ret c

    ld a, $03
    ld [$b88d], a
    pop hl
    ret


Call_002_6ee1:
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


Call_002_6f02:
    ld a, $05
    ld [$b88d], a
    pop hl
    ret


Call_002_6f09:
    ld a, $02
    ld [$b88d], a
    pop hl
    ret


Call_002_6f10:
    ld a, [sCurrentYear]
    or a
    ret nz

    ld a, $06
    ld [$b88d], a
    pop hl
    ret


Call_002_6f1c:
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


Call_002_6f34:
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
    jr nz, jr_002_6f75

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_002_6f7a

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_002_6f88

    ret


jr_002_6f75:
    xor a
    ld [$b8a5], a
    ret


jr_002_6f7a:
    ld a, NO_ITEM
    ld [sInventory], a
    ld a, $10
    ld [wThrowingSeedsAnimationTimer], a
    call $4341
    ret


jr_002_6f88:
    ld a, NO_ITEM
    ld [sInventory+1], a
    ld a, $10
    ld [wThrowingSeedsAnimationTimer], a
    call $4341
    ret


Call_002_6f96:
    ld a, [sCurrentYear]
    cp $01
    ret nz

    ld a, $0c
    ld [$b88d], a
    pop hl
    ret


Call_002_6fa3:
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


Call_002_6fba:
    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [sCurrentDayCounter]
    cp b
    ret nz

    ld a, $0e
    ld [$b88d], a
    call $6547
    ld a, $80
    ld [$b89b], a
    xor a
    ld [$b88d], a
    pop hl
    ret


Call_002_6fd8:
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


Call_002_6fee:
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


Call_002_7003:
    ld a, $01
    ld [$ba43], a
    ld a, $11
    ld [$b88d], a
    ld a, $16
    ld [sHourOfPreviousSleep], a
    pop hl
    ret


Call_002_7014:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b8fe]
    cp $00
    ret z

    cp $01
    ret z

    cp $05
    jr nz, jr_002_704d

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
    jr z, jr_002_7047

    ret


    ld a, $0a
    call Call_000_0f47
    ret


jr_002_7047:
    ld a, $0a
    call Call_000_0f47
    ret


jr_002_704d:
    ld a, [$b8fe]
    inc a
    ld [$b8fe], a
    ret


Call_002_7055:
    ld a, [sCurrentYear]
    cp $00
    ret z

    ld a, [sCurrentSeason]
    cp SPRING
    ret nz

    ld a, $13
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    pop hl
    ret


Call_002_7073:
    xor a
    ld b, a
    ld c, a
    ld hl, $a000

jr_002_7079:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_002_708e

    or a
    jr nz, jr_002_708f

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_002_708e

    cp $12
    jr z, jr_002_708e

    jr jr_002_708f

jr_002_708e:
    inc bc

jr_002_708f:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_002_7079

    ld a, l
    cp $80
    jr c, jr_002_7079

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
    ret


Call_002_70a3:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ret

Data_002_70ae:
    db $00, $08, $00, $2F, $01, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00,
    db $1F, $00, $1F, $00, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $1F,
    db $00, $1F, $00, $1F, $00, $E0, $1F, $00, $1F, $00, $1F, $00, $1F, $00, $A5, $00,
    db $79, $B9, $70, $FF, $B0, $77, $B7, $7E, $BE, $7C, $BC, $78, $DF, $B8, $7D, $85,
    db $47, $BA, $23, $02, $0F, $0F, $FF, $7F, $7F, $FF, $FF, $FF, $80, $C0, $3F, $DE,
    db $23, $03, $F0, $F0, $FE, $FE, $00, $01, $01, $03, $FF, $FC, $0E, $0D, $06, $05,
    db $06, $05, $76, $FF, $75, $1E, $1D, $8E, $8D, $BE, $A1, $E2, $FF, $5D, $8A, $7F,
    db $85, $7F, $D0, $3F, $AA, $EF, $55, $FF, $00, $92, $A0, $00, $82, $7F, $AA, $7F,
    db $FF, $55, $FF, $AA, $FF, $00, $FF, $31, $00, $FA, $A1, $00, $BF, $00, $01, $BF,
    db $C0, $20, $C0, $E8, $FF, $0F, $E0, $C0, $68, $CF, $A0, $C0, $FF, $FF, $FE, $7F,
    db $FE, $FF, $0E, $5B, $6E, $9F, $FF, $A0, $5F, $6E, $9F, $AE, $5F, $6E, $FF, $FF,
    db $7F, $E0, $7F, $CF, $7F, $EF, $5F, $EF, $FF, $5F, $E0, $5F, $DF, $60, $7F, $80,
    db $FF, $FF, $FE, $07, $FE, $FF, $FA, $FF, $FA, $BF, $FF, $CA, $07, $FA, $FB, $06,
    db $FE, $01, $FF, $FF, $40, $EA, $55, $E0, $5F, $EA, $5F, $FF, $FE, $20, $00, $E5,
    db $5F, $FF, $40, $FF, $00, $AA, $FF, $55, $00, $FF, $A9, $FE, $55, $FE, $FA, $FB,
Data_002_71ae:
    db $FF, $5D, $61, $06, $3C, $C3, $42, $C3, $42, $FD, $DB, $60, $00, $FF, $00, $2A,
    db $D5, $FF, $00, $BF, $47, $CA, $8F, $72, $C7, $4A, $23, $00, $FF, $FF, $02, $FF,
    db $02, $00, $00, $80, $00, $E0, $2F, $00, $F8, $00, $FE, $40, $00, $E0, $C0, $00,
    db $2D, $10, $FF, $57, $B8, $55, $BB, $7F, $83, $7E, $BB, $F7, $74, $BB, $7C, $40,
    db $00, $74, $BB, $3F, $FF, $F7, $F0, $FF, $80, $00, $0C, $00, $FF, $0F, $F0, $FF,
    db $1F, $E8, $1F, $E7, $FC, $FF, $0F, $FF, $FD, $03, $02, $01, $F0, $0F, $F8, $17,
    db $F8, $E7, $FF, $EA, $1D, $AA, $DD, $FE, $C1, $FE, $DD, $F7, $3A, $DD, $3E, $40,
    db $00, $3A, $DD, $C1, $3F, $F5, $BA, $C0, $0F, $93, $C2, $0F, $D0, $3F, $FA, $05,
    db $FC, $90, $10, $C6, $0F, $00, $FF, $AA, $55, $28, $CF, $FF, $20, $C0, $E0, $00,
    db $FF, $DF, $60, $DF, $E7, $BF, $C0, $05, $80, $11, $41, $0F, $1F, $20, $DF, $FF,
    db $EE, $1F, $EE, $FF, $0E, $5F, $FE, $2B, $FF, $FE, $7F, $80, $A8, $57, $D2, $2F,
    db $A2, $FF, $5F, $C2, $3F, $C6, $3F, $8E, $7F, $BE, $FF, $7F, $FE, $01, $51, $AE,
    db $A3, $5E, $43, $BF, $BE, $83, $7E, $87, $7E, $0F, $C0, $12, $44, $FF, $BB, $44,
    db $BB, $4F, $B0, $7F, $8F, $79, $FF, $89, $71, $B1, $63, $A3, $7F, $BC, $70, $F7,
    db $B0, $E0, $60, $23, $00, $F1, $71, $FF, $80, $FF, $FC, $7C, $1E, $1D, $0F, $0E,
    db $07, $06, $FE, $21, $00, $CF, $CD, $FF, $00, $1F, $1F, $22, $FF, $DD, $22, $DD,
Data_002_72ae:
    db $F2, $0D, $FA, $F5, $9E, $FF, $99, $86, $81, $EE, $69, $FE, $19, $FF, $FF, $00,
    db $95, $7F, $AA, $7F, $91, $7F, $CA, $87, $3F, $B0, $5F, $C1, $00, $B1, $19, $E5,
    db $09, $71, $1A, $74, $BF, $BB, $64, $BB, $77, $B8, $67, $60, $06, $67, $7F, $B8,
    db $45, $BB, $7F, $C7, $0F, $F0, $C3, $1B, $CE, $21, $1C, $1E, $FF, $E7, $60, $0F,
    db $07, $01, $42, $FF, $FF, $F9, $FF, $3A, $DD, $32, $DD, $FA, $1D, $FD, $F2, $61,
    db $06, $1D, $62, $DD, $FE, $E3, $D5, $FE, $20, $05, $B9, $7E, $FF, $00, $52, $BD,
    db $D2, $3F, $BD, $3D, $C3, $DC, $DF, $55, $A0, $1F, $E1, $13, $FF, $40, $FF, $1C,
    db $FF, $41, $7F, $32, $F3, $FB, $55, $FE, $03, $02, $5A, $BD, $5B, $BD, $BD, $F7,
    db $C3, $39, $F9, $B0, $21, $7B, $BD, $7B, $84, $BD, $7B, $30, $22, $7F, $BF, $7F,
    db $80, $01, $09, $F7, $8F, $FB, $F7, $08, $F7, $01, $01, $D0, $10, $01, $0A, $EE,
    db $EF, $F7, $EE, $11, $EE, $30, $24, $7E, $BF, $7E, $FF, $81, $7E, $7F, $BB, $7E,
    db $86, $7C, $8C, $BF, $7F, $9F, $7E, $9E, $7C, $BC, $41, $2A, $C0, $BD, $C0, $47,
    db $2C, $38, $38, $F0, $F0, $C1, $29, $3E, $FD, $3E, $87, $2D, $FE, $E1, $1E, $11,
    db $0E, $09, $FF, $06, $05, $E6, $E5, $7E, $7D, $1E, $1D, $EB, $0E, $0D, $03, $0F,
    db $5D, $46, $29, $FF, $00, $EF, $D7, $FE, $FF, $FE, $41, $00, $0F, $A0, $09, $EF,
    db $FE, $FF, $00, $FF, $57, $FF, $28, $EF, $46, $C6, $FF, $28, $EF, $55, $FF, $52,
Data_002_73ae:
    db $FF, $45, $EF, $7D, $00, $40, $0F, $18, $FF, $66, $66, $18, $82, $2C, $FE, $E1,
    db $1C, $EA, $FF, $14, $F7, $62, $63, $14, $5B, $F7, $4A, $80, $2D, $42, $F7, $A1,
    db $21, $18, $B0, $31, $A9, $18, $42, $22, $81, $22, $08, $A0, $0E, $FE, $E0, $0E,
    db $08, $FE, $22, $00, $FF, $00, $8B, $7F, $E7, $3F, $87, $AF, $7F, $DF, $3F, $A7,
    db $40, $00, $87, $00, $17, $E9, $FF, $FE, $F7, $FC, $E9, $FE, $E3, $FC, $E5, $EF,
    db $FE, $EB, $FC, $F1, $E0, $10, $FF, $6F, $B7, $DF, $6F, $90, $6F, $FF, $00, $E4,
    db $0F, $00, $FF, $1F, $EF, $F7, $EF, $10, $EF, $08, $01, $04, $10, $E1, $0F, $FF,
    db $FF, $00, $C8, $BF, $E4, $BF, $C0, $BF, $F7, $CA, $BF, $D0, $64, $00, $07, $FA,
    db $4F, $FA, $D7, $07, $FA, $17, $40, $00, $8F, $80, $00, $27, $FA, $FF, $8A, $7D,
    db $85, $78, $C5, $38, $AD, $50, $FF, $FD, $00, $85, $78, $86, $7C, $83, $7E, $FF,
    db $AA, $5F, $55, $0F, $5A, $0F, $50, $0F, $FF, $5F, $00, $5F, $0F, $35, $1F, $6A,
    db $3F, $3E, $B0, $38, $78, $9F, $78, $87, $78, $00, $07, $60, $00, $7E, $81, $00,
    db $FF, $1E, $E3, $1E, $E1, $1E, $85, $00, $1D, $42, $82, $0F, $2D, $EF, $2A, $04,
    db $10, $03, $3C, $47, $00, $1D, $A2, $82, $0F, $54, $F7, $B4, $08, $10, $49, $00,
    db $63, $0F, $7D, $1C, $06, $10, $CF, $3F, $97, $7F, $EF, $40, $00, $FF, $CF, $3F,
    db $AF, $7F, $D7, $3F, $8F, $7F, $E9, $EB, $C0, $0F, $01, $10, $EB, $06, $10, $D4,
Data_002_74ae:
    db $0A, $A2, $B7, $54, $8D, $29, $A0, $1F, $7F, $ED, $20, $00, $FF, $FF, $00, $55,
    db $AA, $2B, $44, $15, $30, $03, $6F, $FC, $FF, $FF, $B7, $20, $00, $15, $06, $2B,
    db $00, $D0, $D0, $38, $24, $25, $41, $39, $90, $45, $02, $D0, $16, $00, $01, $FD,
    db $FE, $23, $00, $FF, $00, $C3, $3D, $AF, $52, $FF, $FE, $04, $BF, $46, $BE, $46,
    db $BE, $42, $FF, $DF, $20, $FA, $05, $75, $5F, $D0, $AF, $FF, $2F, $10, $EF, $37,
    db $2D, $37, $3A, $2F, $33, $E0, $1F, $81, $49, $06, $10, $7E, $83, $22, $15, $06,
    db $10, $FC, $02, $01, $03, $10, $28, $EF, $47, $C7, $28, $EF, $79, $57, $21, $3B,
    db $02, $4C, $18, $FF, $E7, $E7, $40, $00, $FC, $80, $4C, $03, $10, $14, $F7, $E2,
    db $E3, $14, $F7, $61, $EA, $46, $1F, $27, $20, $05, $10, $23, $20, $00, $FF, $61,
    db $1F, $B5, $A7, $A0, $0F, $87, $62, $10, $FF, $00, $61, $1F, $F5, $EE, $A2, $1F,
    db $E7, $FC, $E1, $E1, $1F, $00, $8E, $71, $FF, $AE, $71, $AA, $75, $AA, $75, $AE,
    db $75, $F7, $FB, $8E, $00, $B0, $52, $71, $8E, $F1, $8E, $FF, $D5, $AE, $F5, $AE,
    db $D5, $AE, $AE, $71, $FF, $01, $AB, $3F, $00, $40, $00, $BF, $3F, $1F, $B0, $3F,
    db $AF, $30, $A8, $22, $00, $E0, $34, $14, $39, $FE, $C3, $5B, $FC, $00, $02, $00,
    db $FD, $FE, $0D, $F3, $FE, $F5, $84, $12, $63, $02, $AF, $30, $B0, $30, $0F, $BF,
    db $3F, $40, $3F, $F4, $5A, $F0, $4B, $65, $03, $03, $15, $FF, $F5, $06, $0D, $0E,
Data_002_75ae:
    db $FD, $FE
Data_002_75b0:
    db $02, $FC, $03, $FC, $00, $63, $05, $67, $00
TVWeatherGraphics:
    INCBIN "gfx/tv_weather.2bpp"
Data_002_7db9:
    db $F0, $02, $F2, $1D, $00, $FF, $1F, $00, $96, $00, $55, $55, $AA, $AA, $FA, $6C,
    db $01, $FE, $68, $02, $F1, $F9, $C0, $E0, $14, $EA, $6C, $03, $3F, $66, $04, $FD,
    db $0A, $04, $E8, $FF, $55, $0E, $08, $05, $E0, $FF, $00, $06, $01, $C1, $00, $21,
    db $00, $04, $02, $FF, $F0, $0B, $EA, $15, $F5, $0A, $FF, $20, $7E, $05, $03, $77,
    db $09, $B9, $46, $EC, $13, $08, $03, $9F, $FF, $FF, $7F, $FF, $05, $0A, $01, $21,
    db $01, $AF, $B4, $0A, $06, $E7, $0A, $E0, $EB, $0A, $F1, $0A, $EB, $0A, $7F, $01,
    db $09, $E7, $0A, $08, $04, $E2, $0A, $06, $05, $E4, $0A, $04, $06, $E6, $0A, $00,
    db $03, $07, $E7, $0A, $03, $08, $E7, $0A, $04, $09, $E6, $0A, $08, $0C, $E2, $0A,
    db $FC, $03, $0B, $11, $19, $7E, $00, $C3, $3C, $AD, $52, $BF, $87, $78, $CB, $34,
    db $8B, $74, $13, $1A, $A5, $77, $A5, $5F, $5F, $04, $19, $00, $CD, $32, $11, $12,
    db $FF, $C0, $3F, $14, $EB, $FF, $00, $8B, $74, $BF, $85, $7A, $FF, $00, $E6, $19,
    db $31, $13, $32, $B7, $CD, $48, $B7, $C1, $13, $29, $D6, $11, $14, $20, $FF, $DF,
    db $9D, $62, $FF, $00, $D3, $D3, $FF, $DF, $00, $5C, $A3, $02, $FD, $01, $01, $54,
    db $AB, $FF, $FF, $00, $56, $56, $AD, $AD, $FF, $00, $FF, $90, $6F, $01, $FE, $00,
    db $FF, $10, $EF, $BF, $4E, $B1, $FF, $00, $A9, $A9, $60, $01, $A9, $FE, $31, $17,
    db $02, $FD, $AB, $54, $FF, $00, $BA, $FF, $EF, $05, $FE, $86, $FB, $E6, $59, $1D,
    db $FF, $E2, $22, $DD, $9B, $64, $74, $03, $8B, $FF, $74, $CB, $34, $83, $7C, $85,
    db $7A, $83, $FF, $7C, $97, $68, $D7, $A9, $FF, $C6, $B2, $FF, $EF, $01, $FE, $2C,
    db $FB, $41, $BF, $D2, $FF, $2D, $7D, $82, $A6, $59, $7D, $00, $98, $FF, $EF, $51,
    db $FE, $06, $FB, $E0, $5F, $12, $FF, $ED, $25, $DA, $F6, $09, $59, $00, $DB, $FF,
    db $24, $36, $C9, $A8, $F7, $5A, $FD, $FA, $FF, $FF, $A5, $FF, $7F, $7F, $AD, $ED,
    db $55, $FF, $AA, $A2, $5F, $54, $EB, $98, $FF, $61, $FF, $FF, $BF, $FF, $DE, $DF,
    db $FB, $FB, $82, $FF, $7D, $A6, $DB, $92, $7F, $01, $FF, $98, $FF, $FF, $6F, $FF,
    db $BB, $FF, $EF, $EF, $A2, $BF, $5D, $08, $F7, $25, $FF, $9A, $E0, $00, $FD, $FE,
    db $00, $03, $DB, $DB, $35, $35, $80, $80, $06, $FF, $06, $D0, $D0, $00, $00, $02,
    db $02, $20, $81, $20, $25, $29, $33, $21, $A4, $21, $2E, $00, $E4, $01, $D1, $11,
    db $00, $FF, $12, $00, $2F, $00, $22, $00, $27, $00, $F7, $2B, $00, $2A, $80, $00,
    db $12, $00, $A4, $00, $DF, $F2, $00, $A2, $00, $72, 

jr_002_7f73:
    ld b, b
    ld bc, $0072
    rrca
    xor d
    nop
    inc h
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
