; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[MBC3SRamBank], BANK[$1]

    db $01 ; bank number

; OBJ Color Palette data (not sure what colors these are associated to)
; 0x4001
    RGB 28,19,19, 4,4,0, 18,13,14, 31,27,17
; 0x4009
    RGB 28,19,19, 4,4,0, 22,11,3, 31,27,17
; 0x4011
    RGB 28,19,19, 4,4,0, 31,11,1, 31,27,17

Label_001_4019:
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    callfar2 UploadPetPalette
    pop af
    pop hl
    ld hl, $4001
    call SyncLoadSpritePalette5
    ld hl, $4009
    call SyncLoadSpritePalette7
    ld hl, $4011
    call SyncLoadSpritePalette3
    ld a, [sCurrentSeason]
    ld [wSeasonPaletteID], a
    ld a, [sCurrentDayCounter]
    or a
    jr nz, jr_001_4062

    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr nc, jr_001_4062
; Seems like some kind of special case when when we are at the
; first day of the year... I think when the new year wraps around
; we don't want to change the season "stuff" until we start the next day.
    ld a, [wSeasonPaletteID]
    or a
    jr z, .spring
    dec a
    jr .previousSeason
.spring
    ld a, WINTER
.previousSeason
    ld [wSeasonPaletteID], a

jr_001_4062:
    ld a, [wSeasonPaletteID]
    cp SUMMER
    jr z, .summer
    cp AUTUMN
    jr z, .autumn
    cp WINTER
    jr z, jr_001_40b9
; Spring
    ld hl, $4758
    ld c, $0b
    ld de, $8800
    call DrawMaskedClippedTile
; loads the dirt tile into the BGMap1 I think...
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call DrawMaskedClippedTile
    jr jr_001_40cf

.summer
    ld hl, $5457
    ld c, $0b
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $4c1a
    ld c, $0b
    ld de, $9000
    call DrawMaskedClippedTile
    jr jr_001_40cf

.autumn
    ld hl, $6150
    ld c, $0b
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $59fa
    ld c, $0b
    ld de, $9000
    call DrawMaskedClippedTile
    jr jr_001_40cf

jr_001_40b9:
    ld hl, $6dc8
    ld c, $0b
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $6612
    ld c, $0b
    ld de, $9000
    call DrawMaskedClippedTile

jr_001_40cf:
    ld hl, $7195
    ld c, $14
    ld de, $8000
    call DrawMaskedClippedTile
    ld a, [$b8ea]
    cp $00
    jr z, jr_001_4103

    cp $02
    jr z, jr_001_40eb

    cp $03
    jr z, jr_001_40f8

    jr jr_001_4103

jr_001_40eb:
    ld hl, $7443
    ld c, $13
    ld de, $81d0
    call DrawMaskedClippedTile
    jr jr_001_4103

jr_001_40f8:
    ld hl, $76c1
    ld c, $13
    ld de, $81d0
    call DrawMaskedClippedTile

jr_001_4103:
    ld a, [sCatOrDog]
    cp DOG
    jr z, jr_001_4122

    ld hl, $79a1
    ld c, $13
    ld de, $85a0
    call DrawMaskedClippedTile
    push hl
    push af
    ld l, $9d
    ld h, $6b
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl

jr_001_4122:
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$cb79], a
    ld [wPlayerIsInsideOrAtTown], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $80
    ld [$b90c], a
    xor a
    ld [MBC3SRamBank], a
    ld a, $a0
    ld [$b90d], a
    xor a
    ld [$b90e], a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    ld [wPlayerInFrontOfPet], a
    call Call_001_6ce4
    call Call_001_7336
    call LoadHouseExpansionTileDataIntoSRAM
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_001_737f
    call LoadTextBoxTilesIntoBGMap1
    call Call_000_0ece
    ld a, [$b89c]
    cp $01
    jr z, jr_001_418d

    ld a, [$b8ea]
    cp $00
    jr z, jr_001_418d

    ld a, $01
    ld [$b88d], a

jr_001_418d:
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [$cb79], a
    ld [$cb7d], a
    push hl
    push af
    ld l, $9e
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_001_72b0
    call Call_001_6e30
    call Call_000_3dfd
    ld a, [sCurrentWeather]
    cp RAINY_DAY
    jr z, jr_001_41da

    cp WINDY_DAY
    jr z, jr_001_41da

    cp SNOWY_DAY
    jr z, jr_001_41de
    ret

jr_001_41da:
    call Call_001_6b05
    ret


jr_001_41de:
    call Call_001_6b3a
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_001_6c80
    call Call_001_6a00
    call Call_001_557f
    call Call_000_3cf8
    call Call_001_43f3
    call Call_000_2d67
    call LoadCharacterTileIntoVRAM
    call Call_001_6ba5
    call Call_001_6b67
    call Call_001_6cd1
    call Call_001_78e7
    call Call_001_7610
    call Call_001_7d3f
    call Call_001_79ed
    push hl
    push af
    ld l, $9e
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ret

Call_001_4224:
    ld a, [wDestinationWarpID]
    or a
    ret z

    ld a, 1
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [wMapChangeFreezeTimer]
    dec a
    ld [wMapChangeFreezeTimer], a
    jr z, jr_001_42ae

    cp $13
    jr nc, jr_001_423d

    pop hl
    ret

jr_001_423d:
    call Call_001_67d1
    ld a, [wDestinationWarpID]
    cp TOWN
    jp z, Jump_001_42cb

    cp $06
    jp z, Jump_001_42e8

    cp $07
    jp z, Jump_001_4335

    cp $08
    jp z, Jump_001_4354

    cp $09
    jp z, Jump_001_439a

    cp $0a
    jp z, Jump_001_43d1

    ld a, [wMapChangeFreezeTimer]
    cp $1e
    jr nz, jr_001_42c9

    ld b, $fa
    ld c, $e0
    call Call_000_195e
    call SyncToBlankPeriod
    ld a, $a9
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $a9
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $a9
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl], a
    pop hl
    ret


jr_001_42ae:
    ld a, [wDestinationWarpID]
    ld b, a
    ld a, [wSTAT_HandlerIndex]
    add b
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [$c7c0], a
    ld a, [$cb50]
    cp $02
    jr z, jr_001_42c9

jr_001_42c9:
    pop hl
    ret


Jump_001_42cb:
    ld a, $13
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    pop hl
    ret


Jump_001_42e8:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld a, $01
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    pop hl
    ld a, [sPetIsOutside]
    or a
    ret z

    ld a, [wPlayerHoldingPet]
    or a
    jr z, .savePetPosition

    xor a
    ld [sPetIsOutside], a
    ld [wPlayerHoldingPet], a
    ret

.savePetPosition
    ld a, [wPetXPosition]
    ld [sPetXPosition], a
    ld a, [wPetXPosition+1]
    ld [sPetXPosition+1], a
    ld a, [wPetYPosition]
    ld [sPetYPosition], a
    ld a, [wPetYPosition+1]
    ld [sPetYPosition+1], a
    ret

Jump_001_4335:
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $1c
    ld [$cb50], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld a, $05
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    pop hl
    ret

Jump_001_4354:
    ld a, $01
    ld [$ccb8], a
    ld a, $0f
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    ld [$c800], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    ld [$c800], a
    ld [wPlayerIsCarryingItem], a
    ld [wHeldObject], a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    ld [wPlayerHoldingPet], a
    ld [wPlayerInFrontOfPet], a
    ld a, $00
    call RST_TableJumpBankSwitch
    pop hl
    ret

Jump_001_439a:
    ld a, $02
    ld [$ccb8], a
    ld a, $0f
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    ld [$c800], a
    ld [wPlayerIsCarryingItem], a
    ld [wHeldObject], a
    ld [wPlayerIsRidingHorse], a
    ld [$cb82], a
    ld [wPlayerHoldingPet], a
    ld [wPlayerInFrontOfPet], a
    pop hl
    ret

Jump_001_43d1:
    ld a, $00
    ld [$ccb8], a
    ld a, $0f
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    xor a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [wPetIsPresentOnMap], a
    pop hl
    ret

Call_001_43f3:
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

    call Call_001_4224
    call Call_001_49eb
    call Call_001_4459
    call Call_000_0e54
    ldh a, [$ff8b]
    and $01
    jr z, jr_001_441e

    call PlayerInteraction_A_Pressed
    ret

jr_001_441e:
    ldh a, [$ff8a]
    and $02
    jr z, jr_001_4428

    call Call_001_46a1
    ret

jr_001_4428:
    ldh a, [$ff8b]
    and $08
    jr z, jr_001_4432

    call Call_000_1923
    ret

jr_001_4432:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_001_453f

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_001_4596

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_001_45f0

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_001_464a

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Call_001_4459:
    ld a, [$cb85]
    or a
    jr nz, jr_001_4466
    ld a, [$cb86]
    or a
    jr nz, jr_001_4489
    ret

jr_001_4466:
    dec a
    ld [$cb85], a
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_4485
    cp FACING_LEFT
    jr z, jr_001_447d
    cp FACING_RIGHT
    jr z, jr_001_4481
    call Call_001_45c6
    ret

jr_001_447d:
    call Call_001_4620
    ret

jr_001_4481:
    call Call_001_467a
    ret

jr_001_4485:
    call Call_001_456f
    ret

jr_001_4489:
    dec a
    ld [$cb86], a
    cp $00
    jr nz, jr_001_4495

    xor a
    ld [$c780], a

jr_001_4495:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_44b0
    cp FACING_LEFT
    jr z, jr_001_44a8
    cp FACING_RIGHT
    jr z, jr_001_44ac
    call Call_001_67d1
    ret

jr_001_44a8:
    call Call_001_682d
    ret

jr_001_44ac:
    call Call_001_689f
    ret

jr_001_44b0:
    call Call_001_6775
    ret

Call_001_44b4:
    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    xor a
    ld [$cb82], a
    ld a, [$c780]
    or a
    ret z

    ld a, [$c78d]
    cp $01
    jr z, jr_001_4506

    cp $02
    jr z, jr_001_4506

    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_44dc

    cpl
    inc a

jr_001_44dc:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_44f6

    sub b
    bit 7, a
    jr z, jr_001_44f1

    cpl
    inc a

jr_001_44f1:
    cp $1c
    ret nc

    jr jr_001_4500

jr_001_44f6:
    sub b
    bit 7, a
    jr z, jr_001_44fd

    cpl
    inc a

jr_001_44fd:
    cp $08
    ret nc

jr_001_4500:
    ld a, 1
    ld [$cb82], a
    ret

jr_001_4506:
    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_4515

    cpl
    inc a

jr_001_4515:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_452f

    sub b
    bit 7, a
    jr z, jr_001_452a

    cpl
    inc a

jr_001_452a:
    cp $1c
    ret nc

    jr jr_001_4500

jr_001_452f:
    sub b
    bit 7, a
    jr z, jr_001_4536

    cpl
    inc a

jr_001_4536:
    cp $05
    ret nc

    ld a, 1
    ld [$cb82], a
    ret

Jump_001_453f:
    ld a, [wPlayerIsRidingHorse]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, FACING_DOWN
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_001_456f

    ld de, $0004
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0004
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

Call_001_456f:
jr_001_456f:
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_4592

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_4983

    ld a, [wcb32]
    and $01
    jp z, Jump_001_499d
    ret

jr_001_4592:
    call Call_001_6775
    ret

Jump_001_4596:
    ld a, [wPlayerIsRidingHorse]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, FACING_UP
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_001_45c6

    ld de, $00fc
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld de, $00fc
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

Call_001_45c6:
jr_001_45c6:
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_45e9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_4983

    ld a, [wcb32]
    and $01
    jp z, Jump_001_499d
    ret

jr_001_45e9:
    call Call_001_6a09
    call Call_001_67d1
    ret

Jump_001_45f0:
    ld a, [wPlayerIsRidingHorse]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_001_4620

    ld de, $fc00
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld de, $fc00
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

Call_001_4620:
jr_001_4620:
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_4643

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_49b7

    ld a, [wcb32]
    and $01
    jp z, Jump_001_49d1

    ret


jr_001_4643:
    call Call_001_6ad5
    call Call_001_682d
    ret


Jump_001_464a:
    ld a, [wPlayerIsRidingHorse]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, FACING_RIGHT
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_001_467a

    ld de, $0400
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0400
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

Call_001_467a:
jr_001_467a:
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_469d

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_49b7

    ld a, [wcb32]
    and $01
    jp z, Jump_001_49d1
    ret

jr_001_469d:
    call Call_001_689f
    ret


Call_001_46a1:
Jump_001_46a1:
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_001_46b4

    ld a, [$c605]
    cp $08
    jr nz, jr_001_46b4

    ld a, $34
    call Call_000_25ce

jr_001_46b4:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_001_46ce

    ldh a, [$ff8a]
    and $20
    jr nz, jr_001_46d2

    ldh a, [$ff8a]
    and $10
    jr nz, jr_001_46d6

    ldh a, [$ff8a]
    and $40
    jr nz, jr_001_46da

    jr jr_001_46e3

jr_001_46ce:
    ld a, FACING_DOWN
    jr jr_001_46dc

jr_001_46d2:
    ld a, FACING_LEFT
    jr jr_001_46dc

jr_001_46d6:
    ld a, FACING_RIGHT
    jr jr_001_46dc

jr_001_46da:
    ld a, FACING_UP

jr_001_46dc:
    ld hl, wPlayerFacingDirection
    ld [hl], a
    call Call_001_7374

jr_001_46e3:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jp z, Jump_001_479a

    cp FACING_LEFT
    jp z, Jump_001_483c

    cp FACING_RIGHT
    jp z, Jump_001_48e1

    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_001_4596

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

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
    jr z, jr_001_4780

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_4983

    ld a, [wcb32]
    and $01
    jp z, Jump_001_499d

    ld a, [wDominantFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_4745

    cp SOLID_FENCE_TILE
    jr z, jr_001_4745
    ret


jr_001_4745:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_69ca
    ld a, [$cb38]
    and $01
    ret nz

    ld d, $00
    ld e, $d8
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld d, $00
    ld e, $e0
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld a, $04
    call RST_TableJumpBankSwitch
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_25ce
    ret

jr_001_4780:
    call Call_001_6a09
    call Call_001_67d1
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_4796
    ret

jr_001_4796:
    call Call_001_67d1
    ret

Jump_001_479a:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_001_453f

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

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
    jr z, jr_001_4825

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_4983

    ld a, [wcb32]
    and $01
    jp z, Jump_001_499d

    ld a, [wDominantFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_47ea

    cp SOLID_FENCE_TILE
    jr z, jr_001_47ea
    ret

jr_001_47ea:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_69d3
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $00
    ld e, $28
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld d, $00
    ld e, $20
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld a, $04
    call RST_TableJumpBankSwitch
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_25ce
    ret

jr_001_4825:
    call Call_001_6775
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_4838
    ret

jr_001_4838:
    call Call_001_6775
    ret

Jump_001_483c:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_001_45f0

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

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
    jr z, jr_001_48c7

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_49b7

    ld a, [wcb32]
    and $01
    jp z, Jump_001_49d1

    ld a, [wDominantFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_488c

    cp SOLID_FENCE_TILE
    jr z, jr_001_488c
    ret

jr_001_488c:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_69dc
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $d8
    ld e, $00
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld d, $e0
    ld e, $00
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld a, $04
    call RST_TableJumpBankSwitch
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_25ce
    ret

jr_001_48c7:
    call Call_001_6ad5
    call Call_001_682d
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_48dd
    ret

jr_001_48dd:
    call Call_001_682d
    ret

Jump_001_48e1:
    ld a, [wPlayerHoldingPet]
    or a
    jp nz, Jump_001_464a

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

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
    jr z, jr_001_496c

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_001_49b7

    ld a, [wcb32]
    and $01
    jp z, Jump_001_49d1

    ld a, [wDominantFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_4931

    cp SOLID_FENCE_TILE
    jr z, jr_001_4931
    ret

jr_001_4931:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_69e5
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $28
    ld e, $00
    call Call_001_44b4
    ld a, [$cb82]
    or a
    ret nz

    ld d, $20
    ld e, $00
    call Call_000_19aa
    ld a, [wPlayerInFrontOfPet]
    or a
    ret nz

    ld a, $04
    call RST_TableJumpBankSwitch
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_25ce
    ret

jr_001_496c:
    call Call_001_689f
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_001_497f
    ret

jr_001_497f:
    call Call_001_689f
    ret

Jump_001_4983:
    ld a, [wDominantFacingTileID]
    cp SOLID_FENCE_TILE
    jr z, jr_001_4990

    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

jr_001_4990:
    call Call_000_150b
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_001_682d
    ret

Jump_001_499d:
    ld a, [wDominantFacingTileID]
    cp SOLID_FENCE_TILE
    jr z, jr_001_49aa

    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

jr_001_49aa:
    call Call_000_1514
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_001_689f
    ret

Jump_001_49b7:
    ld a, [wDominantFacingTileID]
    cp SOLID_FENCE_TILE
    jr z, jr_001_49c4

    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

jr_001_49c4:
    call Call_000_1502
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_001_67d1
    ret


Jump_001_49d1:
    ld a, [wDominantFacingTileID]
    cp SOLID_FENCE_TILE
    jr z, jr_001_49de

    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

jr_001_49de:
    call Call_000_14f9
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_001_6775
    ret


Call_001_49eb:
    ld a, [$c90d]
    or a
    ret z

    ld a, [$c90d]
    dec a
    ld [$c90d], a
    ld a, [$c90d]
    ld b, a
    ld a, $23
    sub b
    ld hl, $4a46
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_001_4a44

    ld b, a
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jp z, Jump_001_4a28

    cp FACING_LEFT
    jp z, Jump_001_4a32

    cp FACING_RIGHT
    jp z, Jump_001_4a3c

jr_001_4a1e:
    push bc
    call Call_001_67d1
    pop bc
    dec b
    jr nz, jr_001_4a1e

    jr jr_001_4a44

Jump_001_4a28:
jr_001_4a28:
    push bc
    call Call_001_6775
    pop bc
    dec b
    jr nz, jr_001_4a28

    jr jr_001_4a44

Jump_001_4a32:
jr_001_4a32:
    push bc
    call Call_001_682d
    pop bc
    dec b
    jr nz, jr_001_4a32

    jr jr_001_4a44

Jump_001_4a3c:
jr_001_4a3c:
    push bc
    call Call_001_689f
    pop bc
    dec b
    jr nz, jr_001_4a3c

jr_001_4a44:
    pop hl
    ret

Data_001_4a46:
    db $00, $00, $00, $00, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $01, $00,
    db $01, $01, $01, $01, $01, $01, $01, $02, $01, $01, $02, $01, $02, $01, $02, $01,
    db $02, $01, $02, $01, 

INCLUDE "engine/player_interaction.asm"

; DATA::::
    jp c, $db56

    ld d, [hl]
    rst $30
    ld d, [hl]
    xor a
    ld d, a
    cp $5b
    jp c, $da56

    ld d, [hl]
    jp c, $da56

    ld d, [hl]
    jp c, $da56

    ld d, [hl]
    jp c, $da56

    ld d, [hl]
    jp c, $da56

    ld d, [hl]
    jp c, $1a56

; Not data?
    ld e, h
    ld d, [hl]
    ld e, h
    sub d
    ld e, h
    adc $5c
    ld a, [bc]
    ld e, l
    ld b, [hl]
    ld e, l
    add d
    ld e, l
    cp [hl]
    ld e, l
    ret

Label_001_56db:
    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld a, $33
    call $16d1
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    call Call_001_69ee
    call Call_001_5899
    call Call_001_595b
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_001_571d

    ld a, [de]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_571d:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    and $01
    ret nz

    ld a, [de]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    inc hl
    ld a, [hl-]
    cp $48
    jr nz, jr_001_5748

    ld a, [hl]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_5748:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    and $01
    ret nz

    ld a, [hl]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    dec hl
    push hl
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    pop hl
    xor a
    ld [wHeldObject], a
    ld a, $03
    call Call_000_1fb5
    ld [hl+], a
    ld a, $01
    call Call_000_1fb5
    ld [hl], a
    call Call_001_691e
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $03
    call Call_000_1fb5
    ld [hl+], a
    ld a, $04
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $13
    call Call_000_1fb5
    ld [hl+], a
    ld a, $14
    call Call_000_1fb5
    ld [hl], a
    xor a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    call Call_001_69ee
    call Call_001_5899
    call Call_001_595b
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_001_57d5

    ld a, [de]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_57d5:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    jr nz, jr_001_57e9

    ld a, b
    cp $6a
    jr c, jr_001_57e9

    cp $70
    jr nc, jr_001_57e9

    jp Jump_001_5878


jr_001_57e9:
    ld a, [de]
    and $01
    ret nz

    ld a, [de]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    inc hl
    ld a, [hl-]
    cp $48
    jr nz, jr_001_5811

    ld a, [hl]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_5811:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    and $01
    ret nz

    ld a, [hl]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    dec hl
    push hl
    ld a, $06
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    pop hl
    xor a
    ld [wHeldObject], a
    ld a, $01
    call Call_000_1fb5
    ld [hl+], a
    ld a, $01
    call Call_000_1fb5
    ld [hl], a
    call Call_001_691e
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $20
    call Call_000_1fb5
    ld [hl+], a
    ld a, $40
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $30
    call Call_000_1fb5
    ld [hl+], a
    ld a, $50
    call Call_000_1fb5
    ld [hl], a
    xor a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call Call_000_25ce
    ret


Jump_001_5878:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld hl, sNumberOfFencePosts
    ld bc, $0002
    call AddBCtoWordAtHL
    call Call_000_0f73
    ld a, $36
    call Call_000_25ce
    ret


Call_001_5899:
    ld a, [$c780]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    push hl
    push de
    ld bc, $0012
    ld de, $0000
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_001_5a20
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5959

    ret


Jump_001_5959:
    pop hl
    ret


Call_001_595b:
    ld a, [wPetIsPresentOnMap]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_001_5a3c
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_001_5a3c
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_001_5a3c
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_001_5a3c
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_001_5a3c
    pop de
    pop hl
    call Call_001_59fe
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    call Call_001_5a0f
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_59fc

    ret


Jump_001_59fc:
    pop hl
    ret


Call_001_59fe:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp l
    jr nz, jr_001_5a0b

    ld a, b
    cp h
    jr nz, jr_001_5a0b

    ret


jr_001_5a0b:
    xor a
    ldh [$ffae], a
    ret


Call_001_5a0f:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp e
    jr nz, jr_001_5a1c

    ld a, b
    cp d
    jr nz, jr_001_5a1c

    ret


jr_001_5a1c:
    xor a
    ldh [$ffae], a
    ret


Call_001_5a20:
    ld a, [$c786]
    ld l, a
    ld a, [$c787]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c788]
    ld l, a
    ld a, [$c789]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_001_5a58
    ld b, h
    ld c, l
    ret

Call_001_5a3c:
    ld a, [wPetXPosition]
    ld l, a
    ld a, [wPetXPosition+1]
    ld h, a
    add hl, bc
    push hl
    ld a, [wPetYPosition]
    ld l, a
    ld a, [wPetYPosition+1]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_001_5a58
    ld b, h
    ld c, l
    ret

Call_001_5a58:
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, c
    add $09
    ld l, a
    ld a, b
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Multiply8Bit
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    ld a, [$c788]
    add $00
    ld l, a
    ld a, [$c789]
    adc $08
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [$c786]
    add $00
    ld l, a
    ld a, [$c787]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld b, h
    ld c, l
    ret


    ld a, [wPetYPosition]
    add $00
    ld l, a
    ld a, [wPetYPosition+1]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [wPetXPosition]
    add $00
    ld l, a
    ld a, [wPetXPosition+1]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld b, h
    ld c, l
    ret


Call_001_5b54:
    call Call_001_69ee
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    ret nz

    ld a, b
    cp $20
    jr c, jr_001_5b69

    cp $24
    jr nc, jr_001_5b69

    jr jr_001_5b8d

jr_001_5b69:
    cp $24
    jr c, jr_001_5b73

    cp $2d
    jr nc, jr_001_5b73

    jr jr_001_5b8d

jr_001_5b73:
    cp $2d
    jr c, jr_001_5b7d

    cp $31
    jr nc, jr_001_5b7d

    jr jr_001_5b8d

jr_001_5b7d:
    cp $31
    jr c, jr_001_5b87

    cp $35
    jr nc, jr_001_5b87

    jr jr_001_5b8d

jr_001_5b87:
    cp $35
    ret c

    cp $39
    ret nc

jr_001_5b8d:
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_5bb3
    cp FACING_UP
    jr z, jr_001_5bb3
    pop hl
    ret

jr_001_5bb3:
    ld hl, wPlayerXPosition
    ld bc, $000a
    call AddBCtoWordAtHL
    call Call_001_69ee
    ld hl, wPlayerXPosition
    ld bc, $fff6
    call AddBCtoWordAtHL
    ld a, [de]
    cp $0e
    jr z, jr_001_5bea

    ld hl, wPlayerXPosition
    ld bc, $fff6
    call AddBCtoWordAtHL
    call Call_001_69ee
    ld hl, wPlayerXPosition
    ld bc, $000a
    call AddBCtoWordAtHL
    ld a, [de]
    cp $0e
    jr z, jr_001_5bf4
    pop hl
    ret


    ret


jr_001_5bea:
    ld a, [$c64a]
    sub $0a
    ld [$c64a], a
    pop hl
    ret


jr_001_5bf4:
    ld a, [$c64a]
    add $0a
    ld [$c64a], a
    pop hl
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld a, $1c
    call $16d1
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $1e
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $5c
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $1d
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $82
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $20
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $22
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $6e
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $6f
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $70
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_001_69f7
    ld a, [hl]
    cp $39
    jp z, Jump_001_5ef6

    cp $3a
    jp z, Jump_001_5ef6

    cp $3b
    jp z, Jump_001_5ef6

    cp $3c
    jp z, Jump_001_5ef6

    call Call_001_5e78
    ld a, $6d
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $ec
    ld [wDominantFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret

Call_001_5dfa:
    xor a
    ldh [$ffae], a
    ld a, [$c78d]
    cp $01
    jr z, jr_001_5e40

    cp $02
    jr z, jr_001_5e40

    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_5e17

    cpl
    inc a

jr_001_5e17:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_5e31

    sub b
    bit 7, a
    jr z, jr_001_5e2c

    cpl
    inc a

jr_001_5e2c:
    cp $1c
    ret nc

    jr jr_001_5e3b

jr_001_5e31:
    sub b
    bit 7, a
    jr z, jr_001_5e38

    cpl
    inc a

jr_001_5e38:
    cp $08
    ret nc

jr_001_5e3b:
    ld a, $01
    ldh [$ffae], a
    ret


jr_001_5e40:
    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_5e4f

    cpl
    inc a

jr_001_5e4f:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_5e69

    sub b
    bit 7, a
    jr z, jr_001_5e64

    cpl
    inc a

jr_001_5e64:
    cp $1c
    ret nc

    jr jr_001_5e3b

jr_001_5e69:
    sub b
    bit 7, a
    jr z, jr_001_5e70

    cpl
    inc a

jr_001_5e70:
    cp $05
    ret nc

    ld a, $01
    ldh [$ffae], a
    ret


Call_001_5e78:
    ld a, [$b8ea]
    cp $03
    ret nz

    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_5ea2
    cp FACING_LEFT
    jr z, jr_001_5eb5
    cp FACING_RIGHT
    jp z, Jump_001_5ec8

    ld a, [$cb82]
    or a
    jp nz, Jump_001_5ed8

    ld de, $00f0
    call Call_001_5dfa
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5ed8


jr_001_5ea2:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5ed8

    ld de, $0010
    call Call_001_5dfa
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5ed8


jr_001_5eb5:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5ed8

    ld de, $f000
    call Call_001_5dfa
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5ed8


Jump_001_5ec8:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5ed8

    ld de, $1000
    call Call_001_5dfa
    ldh a, [$ffae]
    or a
    ret z

Jump_001_5ed8:
jr_001_5ed8:
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cb80], a
    ld a, [sCurrentHour]
    cp TIME_5_PM
    jr nc, jr_001_5ef4

    ld a, [wHeldObject]
    call Call_000_1cff
    ld a, $36
    call Call_000_25ce

jr_001_5ef4:
    pop hl
    ret


Jump_001_5ef6:
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cb80], a
    ld hl, vBGMap0
    ld bc, $0400

jr_001_5f06:
    ld a, [hl+]
    cp $21
    jr z, jr_001_5f10

    dec bc
    ld a, c
    or b
    jr nz, jr_001_5f06

jr_001_5f10:
    ld a, $20
    ld [$cb7d], a
    ld a, l
    ld [$cb7e], a
    ld a, h
    ld [$cb7f], a
    ld a, [sCurrentHour]
    cp TIME_5_PM
    ret nc

    ld a, [wHeldObject]
    call Call_000_1cff
    ret

INCLUDE "engine/items.asm"

Call_001_6524:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_6539
    cp FACING_LEFT
    jp z, Jump_001_653d
    cp FACING_RIGHT
    jp z, Jump_001_6541
    call Call_000_18f6
    ret

jr_001_6539:
    call Call_000_18ff
    ret

Jump_001_653d:
    call Call_000_1908
    ret

Jump_001_6541:
    call Call_000_1911
    ret


    ld a, [$cb43]
    ld h, a
    ld a, [$cb44]
    ld l, a
    ld a, [$cb45]
    cp $01
    jr nz, jr_001_6560

    ld a, $00
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    jr jr_001_65bd

jr_001_6560:
    cp $02
    jr nz, jr_001_6595

jr_001_6564:
    push hl
    ld a, $00
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    pop hl
    ld a, [$b90c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    jr jr_001_65bd

jr_001_6595:
    cp $03
    jr nz, jr_001_659d

    dec hl
    dec hl
    jr jr_001_6564

jr_001_659d:
    cp $04
    jr nz, jr_001_65ae

    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_001_6564

jr_001_65ae:
    dec hl
    dec hl
    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_001_6564

jr_001_65bd:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_6605
    cp FACING_LEFT
    jp z, Jump_001_6626
    cp FACING_RIGHT
    jp z, Jump_001_664a

    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    and $0f
    cp $0c
    jr z, jr_001_65f7

    or $10
    sub $0d
    cp $10
    jr z, jr_001_65f7

    cp $11
    jr z, jr_001_65f7

    cp $12
    jr z, jr_001_65f7

    cp $09
    jr c, jr_001_65f9

    sub $08
    jr jr_001_65f9

jr_001_65f7:
    ld a, $00

jr_001_65f9:
    ld c, a
    ld a, $e8
    sub c
    ld c, a
    call Call_000_195e
    jp Jump_001_6668


    ret


jr_001_6605:
    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    and $0f
    jr z, jr_001_661c

    cp $01
    jr z, jr_001_661c

    ld c, a
    ld a, $10
    sub c

jr_001_661c:
    add $04
    ld c, a
    call Call_000_195e
    jp Jump_001_6668


    ret


Jump_001_6626:
    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [wPlayerXPosition]
    and $0f
    sub $08
    bit 7, a
    jr z, jr_001_663f

    cpl
    inc a

jr_001_663f:
    ld b, a
    ld a, $ec
    sub b
    ld b, a
    call Call_000_195e
    jr jr_001_6668

    ret


Jump_001_664a:
    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [wPlayerXPosition]
    and $0f
    ld b, a
    ld a, $08
    sub b
    add $0c
    ld b, a
    call Call_000_195e
    jr jr_001_6668

    ret


Jump_001_6668:
jr_001_6668:
    ld a, [$cb45]
    cp $01
    jr nz, jr_001_6696

    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl], a
    ret


jr_001_6696:
    ld a, [$cb45]
    cp $02
    jp nz, Jump_001_6741

Jump_001_669e:
    push hl
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_001_6767
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    pop hl
    push hl
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_001_6767
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    pop hl
    ld a, $40
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_001_6767
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    pop hl
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    call Call_001_6767
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    call Call_000_1fb5
    ld [hl+], a
    call Call_000_1fb5
    ld [hl+], a
    ret


Jump_001_6741:
    cp $03
    jr nz, jr_001_674a

    dec hl
    dec hl
    jp Jump_001_669e


jr_001_674a:
    cp $04
    jr nz, jr_001_6759

    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_001_669e


jr_001_6759:
    dec hl
    dec hl
    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_001_669e


    ret


Call_001_6767:
    push de
    ld a, l
    and $3f
    cp $20
    jr nz, jr_001_6773

    ld de, $0020
    add hl, de

jr_001_6773:
    pop de
    ret


Call_001_6775:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition+1]
    cp $02
    jr nz, jr_001_678b

    ld a, [wPlayerYPosition]
    cp $e8
    ret nc

jr_001_678b:
    ld a, [wPlayerYPosition+1]
    cp $02
    jr nz, jr_001_6799

    ld a, [wPlayerYPosition]
    cp $c0
    jr nc, jr_001_67ca

jr_001_6799:
    ld a, [wPlayerYPosition+1]
    cp $00
    jr nz, jr_001_67a7

    ld a, [wPlayerYPosition]
    cp $48
    jr c, jr_001_67ca

jr_001_67a7:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]
    ldh a, [$ff91]
    and $0f
    cp $00
    call z, Call_001_7494

jr_001_67b8:
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    inc hl
    ld a, l
    ld [wPlayerYPosition], a
    ld a, h
    ld [wPlayerYPosition+1], a
    ret


jr_001_67ca:
    ld hl, $c60b
    inc [hl]
    jr jr_001_67b8

    ret


Call_001_67d1:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition+1]
    cp $00
    jr nz, jr_001_67e7

    ld a, [wPlayerYPosition]
    cp $0e
    ret c

jr_001_67e7:
    ld a, [wPlayerYPosition+1]
    cp $02
    jr nz, jr_001_67f5

    ld a, [wPlayerYPosition]
    cp $c1
    jr nc, jr_001_6826

jr_001_67f5:
    ld a, [wPlayerYPosition+1]
    cp $00
    jr nz, jr_001_6803

    ld a, [wPlayerYPosition]
    cp $49
    jr c, jr_001_6826

jr_001_6803:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]
    ldh a, [$ff91]
    and $0f
    cp $0f
    call z, Call_001_7445

jr_001_6814:
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    dec hl
    ld a, l
    ld [wPlayerYPosition], a
    ld a, h
    ld [wPlayerYPosition+1], a
    ret


jr_001_6826:
    ld hl, $c60b
    dec [hl]
    jr jr_001_6814

    ret


Call_001_682d:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_001_6843

    ld a, [wPlayerXPosition]
    cp $18
    ret c

jr_001_6843:
    ld a, [$b90b]
    or a
    jr z, jr_001_6859

    ld a, [wPlayerXPosition+1]
    cp $03
    jr nz, jr_001_6867

    ld a, [wPlayerXPosition]
    cp $b1
    jr nc, jr_001_6898

    jr jr_001_6867

jr_001_6859:
    ld a, [wPlayerXPosition+1]
    cp $02
    jr nz, jr_001_6867

    ld a, [wPlayerXPosition]
    cp $c1
    jr nc, jr_001_6898

jr_001_6867:
    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_001_6875

    ld a, [wPlayerXPosition]
    cp $51
    jr c, jr_001_6898

jr_001_6875:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]
    ldh a, [$ff93]
    and $0f
    cp $0f
    call z, Call_001_74e3

jr_001_6886:
    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
    ld h, a
    dec hl
    ld a, l
    ld [wPlayerXPosition], a
    ld a, h
    ld [wPlayerXPosition+1], a
    ret


jr_001_6898:
    ld hl, $c60a
    dec [hl]
    jr jr_001_6886

    ret


Call_001_689f:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$b90b]
    or a
    jr z, jr_001_68cb

    ld a, [wPlayerXPosition+1]
    cp $03
    jr nz, jr_001_68bb

    ld a, [wPlayerXPosition]
    cp $e8
    ret nc

jr_001_68bb:
    ld a, [wPlayerXPosition+1]
    cp $03
    jr nz, jr_001_68e6

    ld a, [wPlayerXPosition]
    cp $b0
    jr nc, jr_001_6917

    jr jr_001_68e6

jr_001_68cb:
    ld a, [wPlayerXPosition+1]
    cp $02
    jr nz, jr_001_68d8

    ld a, [wPlayerXPosition]
    cp $f8
    ret nc

jr_001_68d8:
    ld a, [wPlayerXPosition+1]
    cp $02
    jr nz, jr_001_68e6

    ld a, [wPlayerXPosition]
    cp $c0
    jr nc, jr_001_6917

jr_001_68e6:
    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_001_68f4

    ld a, [wPlayerXPosition]
    cp $50
    jr c, jr_001_6917

jr_001_68f4:
    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]
    ldh a, [$ff93]
    and $0f
    cp $00
    call z, Call_001_7538

jr_001_6905:
    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
    ld h, a
    inc hl
    ld a, l
    ld [wPlayerXPosition], a
    ld a, h
    ld [wPlayerXPosition+1], a
    ret


jr_001_6917:
    ld hl, $c60a
    inc [hl]
    jr jr_001_6905

    ret


Call_001_691e:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr nz, jr_001_693b

    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    dec a
    and $08
    cpl
    add $10
    ld c, a
    call Call_000_195e
    ret


jr_001_693b:
    cp $01
    jr nz, jr_001_696c

    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [wPlayerXPosition]
    sub $08
    and $0f
    cp $00
    jr z, jr_001_695e

    cp $0c
    jr nc, jr_001_6962

    cp $04
    jr nc, jr_001_6966

jr_001_695e:
    ld b, $ec
    jr jr_001_6968

jr_001_6962:
    ld b, $dc
    jr jr_001_6968

jr_001_6966:
    ld b, $e4

jr_001_6968:
    call Call_000_195e
    ret


jr_001_696c:
    cp $02
    jr nz, jr_001_699d

    ld a, [wPlayerYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [wPlayerXPosition]
    sub $08
    and $0f
    cp $00
    jr z, jr_001_6993

    cp $0c
    jr nc, jr_001_6993

    cp $04
    jr nc, jr_001_6997

    ld b, $1c
    jr jr_001_6999

jr_001_6993:
    ld b, $0c
    jr jr_001_6999

jr_001_6997:
    ld b, $14

jr_001_6999:
    call Call_000_195e
    ret


jr_001_699d:
    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    sub $0d
    and $0f
    cp $00
    jr z, jr_001_69c4

    cp $0b
    jr nc, jr_001_69bc

    cp $03
    jr nc, jr_001_69c0

    ld c, $e8
    jr jr_001_69c6

jr_001_69bc:
    ld c, $d8
    jr jr_001_69c6

jr_001_69c0:
    ld c, $e0
    jr jr_001_69c6

jr_001_69c4:
    ld c, $e8

jr_001_69c6:
    call Call_000_195e
    ret


Call_001_69ca:
    ld hl, $58c3
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_69d3:
    ld hl, $5965
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_69dc:
    ld hl, $5a0b
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_69e5:
    ld hl, $5ab5
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_69ee:
    ld hl, $5b5f
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_69f7:
    ld hl, $5dc8
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_6a00:
    ld hl, $5061
    ld a, $05
    call BankSwitchCallHL
    ret


Call_001_6a09:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    call Call_000_14f9
    ld a, [$cb2f]
    cp $3d
    jr nz, jr_001_6a29

    ld a, [wSubordinateFacingTileID]
    cp $3d
    jr nz, jr_001_6a29

    call Call_001_6a78
    pop hl
    ret

jr_001_6a29:
    cp $3e
    jr nz, jr_001_6a3e

    ld a, [wSubordinateFacingTileID]
    cp $3e
    jr nz, jr_001_6a3e

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    call Call_001_6ab0
    pop hl
    ret


jr_001_6a3e:
    cp $3f
    jr nz, jr_001_6a53

    ld a, [wSubordinateFacingTileID]
    cp $3f
    jr nz, jr_001_6a53

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    call Call_001_6abb
    pop hl
    ret


jr_001_6a53:
    ld a, [wcb30]
    and $40
    ret nz

    ld a, [wcb32]
    and $40
    ret nz

    ld a, [$cb2f]
    cp $40
    jr nz, jr_001_6a77

    ld a, [wSubordinateFacingTileID]
    cp $40
    jr nz, jr_001_6a77

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    call Call_001_6ac6
    pop hl
    ret


jr_001_6a77:
    ret


Call_001_6a78:
    ld a, HOME
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    xor a
    ld [$c910], a
    ld a, [sPetIsOutside]
    or a
    ret z

    ld a, [wPlayerHoldingPet]
    or a
    jr z, .savePetPosition

    ld a, $00
    ld [sPetIsOutside], a
    ret

.savePetPosition
    ld a, [wPetXPosition]
    ld [sPetXPosition], a
    ld a, [wPetXPosition+1]
    ld [sPetXPosition+1], a
    ld a, [wPetYPosition]
    ld [sPetYPosition], a
    ld a, [wPetYPosition+1]
    ld [sPetYPosition+1], a
    ret

Call_001_6ab0:
    ld a, COW_BARN
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    ret

Call_001_6abb:
    ld a, CHICKEN_COUP
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    ret

Call_001_6ac6:
    ld a, SHED
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    xor a
    ld [$c910], a
    ret

Call_001_6ad5:
    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, [wHeldObject]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb2f]
    cp $13
    ret nz

    ld a, [wcb30]
    cp $00
    ret nz

    ld a, TOWN
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    xor a
    ld [$c910], a
    ld [$cd2a], a
    ret


Call_001_6b05:
    ld a, $01
    ld [$c7c0], a
    ld a, $0f
    ld [$c7c1], a
    ld a, $00
    ld [$c7c2], a
    xor a
    ld [$c7c3], a
    ld a, $50
    ld [$c7d1], a
    xor a
    ld [$c7ce], a
    ld [$c7c5], a
    ld [$c7c4], a
    ld a, $50
    ld [$c7ca], a
    ld a, $10
    ld [$c7cb], a
    call Call_000_2527
    ld a, $40
    call Call_000_25ce
    ret


Call_001_6b3a:
    ld a, $01
    ld [$c7c0], a
    ld a, $0f
    ld [$c7c1], a
    ld a, $01
    ld [$c7c2], a
    xor a
    ld [$c7c3], a
    ld a, $50
    ld [$c7d1], a
    xor a
    ld [$c7ce], a
    ld [$c7c5], a
    ld [$c7c4], a
    ld a, $50
    ld [$c7ca], a
    ld a, $48
    ld [$c7cb], a
    ret


Call_001_6b67:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [$cb79]
    or a
    ret nz

    ld a, [s6AMFlag]
    or a
    ret z

    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $01
    ld [$b900], a
    ld a, [sPlayerGender]
    ld b, a
    ld a, $16
    add b
    call InitializeTextIDAndDisplay
    ld a, $f0
    ld [$cb79], a
    ret

Call_001_6ba5:
    ld a, [wPlayerIsRidingHorse]
    or a
    ret nz

    ld a, [wPlayerHoldingPet]
    or a
    ret nz

    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld a, [wPlayerSpriteID]
    cp $20
    ret z

    cp $b5
    ret z

    cp $8e
    ret z

    cp $99
    jr c, jr_001_6bce

    cp $a1
    jr nc, jr_001_6bce

    ret


jr_001_6bce:
    ldh a, [$ff8a]
    or a
    jr z, jr_001_6bde

    xor a
    ld [$cb7c], a
    ld [$cb7a], a
    ld [$cb7b], a
    ret


jr_001_6bde:
    ld a, [$cb7a]
    add $01
    ld [$cb7a], a
    ld a, [$cb7b]
    adc $00
    ld [$cb7b], a
    cp $01
    ret nz

    ld a, [$cb7a]
    cp $ff
    ret nz

    call Call_001_712d
    xor a
    ld [$cb7a], a
    ld [$cb7b], a
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_001_6c2c
    cp FACING_LEFT
    jr z, jr_001_6c48
    cp FACING_RIGHT
    jr z, jr_001_6c64

    ldh a, [hRandomNumber]
    and $01
    jr z, jr_001_6c21

    ld a, $9f
    call Call_000_151d
    ld a, $e4
    ld [$cb7c], a
    ret


jr_001_6c21:
    ld a, $a0
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


jr_001_6c2c:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_001_6c3d

    ld a, $99
    call Call_000_151d
    ld a, $9f
    ld [$cb7c], a
    ret


jr_001_6c3d:
    ld a, $9a
    call Call_000_151d
    ld a, $f8
    ld [$cb7c], a
    ret


jr_001_6c48:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_001_6c59

    ld a, $9b
    call Call_000_151d
    ld a, $3e
    ld [$cb7c], a
    ret


jr_001_6c59:
    ld a, $9c
    call Call_000_151d
    ld a, $e1
    ld [$cb7c], a
    ret


jr_001_6c64:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_001_6c75

    ld a, $9d
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


jr_001_6c75:
    ld a, $9e
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


Call_001_6c80:
    ld a, [wTextID]
    cp $ff
    ret nz
    ld a, [$cb79]
    or a
    ret z
    dec a
    ld [$cb79], a
    or a
    jr z, jr_001_6ca4
    ld a, [wTextID]
    cp $ff
    ret nz
    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz
    ldh a, [$ff8b]
    and $01
    jr nz, jr_001_6ca4
    ret

jr_001_6ca4:
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
    ld a, $06
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    ld a, $01
    ld [$c910], a
    call Call_001_4224
    pop hl
    ret

Call_001_6cd1:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    jr c, jr_001_6cde

    ld a, [sCurrentHour]
    cp TIME_6_PM
    ret c

jr_001_6cde:
    ld a, $bd
    ld [$c0a3], a
    ret

Call_001_6ce4:
    ld a, [wPlayerHoldingPet]
    or a
    jr nz, jr_001_6d14

    ld a, [sPetIsOutside]
    or a
    jr z, jr_001_6d14

    ld a, [sPetXPosition]
    ld [wPetXPosition], a
    ld a, [sPetXPosition+1]
    ld [wPetXPosition+1], a
    ld a, [sPetYPosition]
    ld [wPetYPosition], a
    ld a, [sPetYPosition+1]
    ld [wPetYPosition+1], a
    ld a, 1
    ld [wPetIsPresentOnMap], a
    ld a, $05
    ld [$c7a1], a
    jr jr_001_6d18

jr_001_6d14:
    xor a
    ld [wPetIsPresentOnMap], a

jr_001_6d18:
    ld hl, $6db0
    ld a, [$c910]
    sla a
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld a, [$b891]
    or a
    jr z, jr_001_6d77

    ld a, $22
    call Call_000_15e4
    ld a, $88
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $bc
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $04
    ld [$c770], a
    xor a
    ld [$c76c], a
    jr jr_001_6d9f

jr_001_6d77:
    ld a, [$b890]
    or a
    jr z, jr_001_6d9f

    ld a, $1d
    call Call_000_15e4
    ld a, $89
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $25
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $03
    ld [$c770], a
    xor a
    ld [$c76c], a

jr_001_6d9f:
    ld a, [$c910]
    cp $05
    jr z, jr_001_6da7
    ret

jr_001_6da7:
    ld a, $28
    ldh [$ff93], a
    ld a, $88
    ldh [$ff93], a
    ret

Data_001_6db0:
    db $01, $00, $FF, $00, $00, $08, $78, $00, $30, $01, $50, $58, $00, $00, $01, $00
Data_001_6dc0:
    db $01, $00, $FF, $00, $00, $08, $38, $01, $30, $01, $50, $58, $00, $00, $01, $00
Data_001_6dd0:
    db $01, $00, $FF, $00, $00, $08, $C8, $01, $30, $01, $50, $58, $00, $00, $01, $00
Data_001_6de0:
    db $01, $00, $FF, $00, $00, $08, $88, $01, $B0, $01, $50, $58, $00, $00, $01, $00
Data_001_6df0:
    db $01, $00, $FF, $00, $00, $08, $78, $00, $30, $01, $50, $58, $00, $00, $01, $00
Data_001_6e00:
    db $01, $00, $FF, $00, $00, $08, $78, $00, $90, $01, $50, $58, $00, $02, $01, $00
Data_001_6e10:
    db $01, $04, $02, $00, $00, $08, $60, $00, $90, $01, $00, $00, $00, $02, $00, $00
Data_001_6e20:
    db $01, $04, $00, $00, $00, $08, $00, $01, $30, $01, $00, $00, $00, $00, $00, $00 

Call_001_6e30:
    ld a, [$b8ea]
    or a
    ret z

    ld a, [$b88c]
    cp $01
    jr z, jr_001_6e56

    ld hl, Data_001_6e20
    ld de, $c780
    ld b, $10
    call CopyHLtoDE
    ld a, [$c78d]
    ld b, a
    add $00
    call Call_000_15fd
    ld a, $01
    ld [$c793], a
    ret

jr_001_6e56:
    ld hl, Data_001_6e10
    ld de, $c780
    ld b, $10
    call CopyHLtoDE
    ld a, [$c78d]
    ld b, a
    add $00
    call Call_000_15fd
    xor a
    ld [$c793], a
    ret

; not sure when the data ends...
Data_001_6e6f:
    ld bc, $020b
    nop
    nop
    ld [$0060], sp
    sub b
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $2100
    ld l, a
    ld l, [hl]
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ret


    ld a, [$cb14]
    or a
    jr nz, jr_001_6eb0

    ld a, [$cb15]
    or a
    jr nz, jr_001_6ebf

    ld a, [$cb16]
    or a
    jr nz, jr_001_6ed3

    ld a, [$cb17]
    or a
    jr nz, jr_001_6eec

    ld a, [$cb18]
    or a
    jr nz, jr_001_6efa

    ld a, [$cb19]
    or a
    jr nz, jr_001_6f08

    ret


jr_001_6eb0:
    ld de, $c913
    ld hl, $8000
    xor a
    ld [$cb14], a
    ld c, $0a
    jp Jump_001_6f4c


jr_001_6ebf:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb15], a
    ld a, [$c820]
    or a
    jr nz, jr_001_6ee8

    ld c, $04
    jr jr_001_6f18

jr_001_6ed3:
    ld de, $c9f3
    ld hl, $80e0
    xor a
    ld [$cb16], a
    ld a, [wSTAT_HandlerIndex]
    cp $03
    jr nz, jr_001_6f04

    cp $04
    jr nz, jr_001_6f04

jr_001_6ee8:
    ld c, $06
    jr jr_001_6f18

jr_001_6eec:
    ld de, $ca33
    ld hl, $8120
    xor a
    ld [$cb17], a
    ld c, $08
    jr jr_001_6f18

jr_001_6efa:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb18], a

jr_001_6f04:
    ld c, $0a
    jr jr_001_6f18

jr_001_6f08:
    ld de, $cab3
    ld hl, $81a0
    xor a
    ld [$cb19], a
    ld c, $02
    jr jr_001_6f18

    ld c, $08

jr_001_6f18:
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
    dec c
    jr nz, jr_001_6f18

    ret


Jump_001_6f4c:
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ret


Call_001_712d:
    ld a, [wSTAT_HandlerIndex]
    cp $01
    ret nz

    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret z

    ld a, [sCurrentWeather]
    cp SNOWY_DAY
    ret z

    ld a, [$b890]
    or a
    ret nz

    ld a, [$b891]
    or a
    ret nz

    push hl
    push af
    ld l, $07
    ld h, $50
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ldh a, [hRandomNumber]
    and $0f
    cp $0f
    jr z, jr_001_716e

    cp $0e
    jr z, jr_001_71b1

    cp $0d
    jp z, Jump_001_71f1

    ret


jr_001_716e:
    ld a, $01
    call Call_000_0f47
    ld [wInputFreezeTimer], a
    ld a, $0d
    call Call_000_15cb
    ld a, [wPlayerXPosition]
    sub $58
    ld [$c766], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [$c767], a
    ld a, [wPlayerYPosition]
    sub $20
    ld [$c768], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [wInputFreezeTimer], a
    call Call_001_7231
    ret


jr_001_71b1:
    ld a, $01
    call Call_000_0f47
    ld a, $07
    call Call_000_15cb
    ld a, [wPlayerXPosition]
    sub $58
    ld [$c766], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [$c767], a
    ld a, [wPlayerYPosition]
    sub $20
    ld [$c768], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [wInputFreezeTimer], a
    call Call_001_7231
    ret


Jump_001_71f1:
    ld a, $01
    call Call_000_0f47
    ld a, $11
    call Call_000_15cb
    ld a, [wPlayerXPosition]
    sub $58
    ld [$c766], a
    ld a, [wPlayerXPosition+1]
    sbc $00
    ld [$c767], a
    ld a, [wPlayerYPosition]
    sub $20
    ld [$c768], a
    ld a, [wPlayerYPosition+1]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [wInputFreezeTimer], a
    call Call_001_7231
    ret


Call_001_7231:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c768]
    ld c, a
    ld a, [$c769]
    ld b, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, c
    add $09
    ld l, a
    ld a, b
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Multiply8Bit
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    cp $0e
    jp z, Jump_001_72ab

    ld a, [hl-]
    cp $81
    ret nz

    ld a, [hl]
    cp $39
    jp z, Jump_001_72ab

    cp $3a
    jp z, Jump_001_72ab

    cp $3b
    jp z, Jump_001_72ab

    cp $3c
    jp z, Jump_001_72ab

    cp $46
    jp nc, Jump_001_72ab

    ret


Jump_001_72ab:
    xor a
    ld [$c760], a
    ret


Call_001_72b0:
    ld a, [$b88c]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    ld a, [sCurrentWeather]
    cp RAINY_DAY
    ret z

    ld a, [sCurrentWeather]
    cp SNOWY_DAY
    ret z

    call GetOnDemandRandomNumber
    ldh a, [$ff9d]
    and $0f
    cp $0f
    jr z, jr_001_72d6

    cp $07
    jr z, jr_001_72d6

    ret


jr_001_72d6:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret nz

    ld a, [sCurrentMinute]
    cp 0
    ret nz

    ld a, [sClockFrameCount]
    cp 0
    ret nz

    ld a, $01
    call Call_000_0f47
    ld a, $16
    call Call_000_15e4
    ld a, [wPlayerXPosition]
    add $08
    ld [$c766], a
    ld a, [wPlayerXPosition+1]
    adc $00
    ld [$c767], a
    ld a, [wPlayerYPosition]
    add $10
    ld [$c768], a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld [$c769], a
    ld a, $02
    ld [$c770], a
    ld a, $ff
    ld [$c76c], a
    ld a, $ff
    ld [$c771], a
    ld [wInputFreezeTimer], a
    xor a
    ld [$cb88], a
    push hl
    push af
    ld l, $3b
    ld h, $50
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ret


Call_001_7336:
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld [$cb1c], a
    ld [$c90d], a
    ld [wInputFreezeTimer], a
    ld [wCollisionNoMovement], a
    ld [$c910], a
    ld [wDestinationWarpID], a
    ld [wMapChangeFreezeTimer], a
    ld [wFreezePlayerInTextWindowOrInTown], a
    ld [$cb57], a
    ld [$b88c], a
    ld a, $ff
    ld [wTextID], a
    ld a, $00
    ld [wTextNavigator], a
    ld [wTextNavigator+1], a
    ld a, $00
    ld [wTextCharacterCounter], a
    ld [wTextBoxIsDisplayed], a
    ret


Call_001_7374:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [wDominantFacingTileProperty], a
    ret

Call_001_737f:
    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
    ld h, a
    ld a, l
    sub $60
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call DivideHLByA_16bit
    add $20
    ldh [$ff93], a
    ld a, l
    ldh [$ffa4], a
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    ld a, l
    sub $58
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call DivideHLByA_16bit
    add $20
    ldh [$ff91], a
    ld c, l
    ld a, $80
    call Multiply8Bit
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $a000
    add hl, de
    push hl
    ld de, $9842
    ld b, $0b

jr_001_73ce:
    push hl
    push de
    ld c, $0d

jr_001_73d2:
    call Call_000_1391
    inc hl
    inc hl
    inc de
    inc de
    dec c
    jr nz, jr_001_73d2

    pop de
    ld hl, $0040
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_73ce

    pop hl
    ld b, h
    ld c, l
    ld a, $42
    ld [$cb23], a
    ld a, $98
    ld [$cb24], a
    ld a, $c2
    ld [$cb25], a
    ld a, $9a
    ld [$cb26], a
    ld a, $42
    ld [$cb1f], a
    ld a, $98
    ld [$cb20], a
    ld a, $58
    ld [$cb21], a
    ld a, $98
    ld [$cb22], a
    ld a, l
    ld [$cb2b], a
    ld a, h
    ld [$cb2c], a
    ld de, $0500
    add hl, de
    ld a, l
    ld [$cb2d], a
    ld a, h
    ld [$cb2e], a
    ld h, b
    ld l, c
    ld a, l
    ld [$cb27], a
    ld a, h
    ld [$cb28], a
    ld de, $0016
    add hl, de
    ld a, l
    ld [$cb29], a
    ld a, h
    ld [$cb2a], a
    ret


Call_001_7445:
    ld de, $cb23
    call Call_001_75e1
    ld de, $cb25
    call Call_001_75e1
    ld de, $cb1f
    call Call_001_75e1
    ld de, $cb21
    call Call_001_75e1
    ld de, $cb2b
    call Call_001_75a9
    ld de, $cb2d
    call Call_001_75a9
    ld de, $cb27
    call Call_001_75a9
    ld de, $cb29
    call Call_001_75a9
    ld a, [$cb2b]
    ld l, a
    ld a, [$cb2c]
    ld h, a
    ld a, [$cb23]
    ld [$cb1d], a
    ld a, [$cb24]
    ld [$cb1e], a
    ld b, $0c

jr_001_748b:
    call Call_000_1471
    inc hl
    inc hl
    dec b
    jr nz, jr_001_748b

    ret


Call_001_7494:
    ld de, $cb23
    call Call_001_75f8
    ld de, $cb25
    call Call_001_75f8
    ld de, $cb1f
    call Call_001_75f8
    ld de, $cb21
    call Call_001_75f8
    ld de, $cb2b
    call Call_001_75b8
    ld de, $cb2d
    call Call_001_75b8
    ld de, $cb27
    call Call_001_75b8
    ld de, $cb29
    call Call_001_75b8
    ld a, [$cb2d]
    ld l, a
    ld a, [$cb2e]
    ld h, a
    ld a, [$cb25]
    ld [$cb1d], a
    ld a, [$cb26]
    ld [$cb1e], a
    ld b, $0c

jr_001_74da:
    call Call_000_1471
    inc hl
    inc hl
    dec b
    jr nz, jr_001_74da

    ret


Call_001_74e3:
    ld de, $cb23
    call Call_001_75d4
    ld de, $cb25
    call Call_001_75d4
    ld de, $cb1f
    call Call_001_75d4
    ld de, $cb21
    call Call_001_75d4
    ld de, $cb2b
    call Call_001_759b
    ld de, $cb2d
    call Call_001_759b
    ld de, $cb27
    call Call_001_759b
    ld de, $cb29
    call Call_001_759b
    ld a, [$cb27]
    ld l, a
    ld a, [$cb28]
    ld h, a
    ld a, [$cb1f]
    ld [$cb1d], a
    ld a, [$cb20]
    ld [$cb1e], a
    ld b, $0c

jr_001_7529:
    call Call_000_13e7
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_7529

    ret


Call_001_7538:
    ld de, $cb23
    call Call_001_75c7
    ld de, $cb25
    call Call_001_75c7
    ld de, $cb1f
    call Call_001_75c7
    ld de, $cb21
    call Call_001_75c7
    ld de, $cb2b
    call Call_001_758d
    ld de, $cb2d
    call Call_001_758d
    ld de, $cb27
    call Call_001_758d
    ld de, $cb29
    call Call_001_758d
    ld a, [$cb29]
    ld l, a
    ld a, [$cb2a]
    ld h, a
    ld a, [$cb21]
    ld [$cb1d], a
    ld a, [$cb22]
    ld [$cb1e], a
    ld b, $0c

jr_001_757e:
    call Call_000_13e7
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_757e

    ret


Call_001_758d:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_001_759b:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld h, a
    dec hl
    dec hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_001_75a9:
    ld a, [de]
    sub $80
    ld l, a
    inc de
    ld a, [de]
    sbc $00
    ld h, a
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_75b8:
    ld a, [de]
    add $80
    ld l, a
    inc de
    ld a, [de]
    adc $00
    ld h, a
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_75c7:
    ld a, [de]
    ld b, a
    inc a
    inc a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [de], a
    ret


Call_001_75d4:
    ld a, [de]
    ld b, a
    dec a
    dec a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [de], a
    ret


Call_001_75e1:
    ld a, [de]
    sub $40
    ld l, a
    inc de
    ld a, [de]
    sbc $00
    ld h, a
    cp $97
    jr nz, jr_001_75f2

    ld bc, $0400
    add hl, bc

jr_001_75f2:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_75f8:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld bc, $0040
    add hl, bc
    ld a, h
    cp $9c
    jr nz, jr_001_760a

    ld a, h
    sub $04
    ld h, a

jr_001_760a:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_7610:
    ld a, [$b88d]
    or a
    jr nz, jr_001_762b

    ld a, [$b88c]
    or a
    ret nz

    call Call_001_7821
    call Call_001_783c
    call Call_001_7878
    call Call_001_7895
    call Call_001_78be
    ret


jr_001_762b:
    ld a, [$b88d]
    ld [$b88c], a
    xor a
    ld [$b88d], a
    ld [$cbf6], a
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    xor a
    ld [sCurrentMinute], a
    ld a, 1
    ld [sClockFrameCount], a
    ld a, [$b88c]
    cp $01
    jp z, Jump_001_76a4

    cp $02
    jp z, Jump_001_76b6

    cp $03
    jp z, Jump_001_76c6

    cp $04
    jp z, Jump_001_76e2

    cp $05
    jp z, Jump_001_76f2

    cp $06
    jp z, Jump_001_7721

    cp $07
    jp z, Jump_001_7735

    cp $08
    jp z, Jump_001_7749

    cp $09
    jp z, Jump_001_7759

    cp $0a
    jp z, Jump_001_7769

    cp $0b
    jp z, Jump_001_778b

    cp $0c
    jp z, Jump_001_779b

    cp $0d
    jp z, Jump_001_77ab

    cp $0f
    jp z, Jump_001_77ca

    cp $10
    jp z, Jump_001_77cf

    cp $10
    jp z, Jump_001_77cf

    cp $12
    jp z, Jump_001_77df

    cp $13
    jp z, Jump_001_77ef

    ret


Jump_001_76a4:
    ld a, $01
    ld [$b8ea], a
    call Call_001_6e30
    call Call_001_77ff
    ld a, [sCurrentDayCounter]
    ld [$b8eb], a
    ret


Jump_001_76b6:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_76c6:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $24
    call Call_000_152a
    call Call_001_77ff
    ld a, [sNextDayCounter]
    ld [$b894], a
    ld a, [sSeasonOfNextDay]
    ld [$b895], a
    ret


Jump_001_76e2:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_76f2:
    call $6e7f
    ld a, [sPlayerGender]
    cp $00
    jr z, jr_001_7709

    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_152a
    call Call_001_77ff
    ret


jr_001_7709:
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_152a
    call Call_001_77ff
    ld a, [$b896]
    cp $02
    ret z

    ld a, $01
    ld [$b896], a
    ret


Jump_001_7721:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_152a
    call Call_001_77ff
    xor a
    ld [$c80c], a
    ret


Jump_001_7735:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_152a
    call Call_001_77ff
    xor a
    ld [$c80c], a
    ret


Jump_001_7749:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_7759:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_7769:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_152a
    call Call_001_77ff
    ld a, [sCurrentDayCounter]
    ld [$ba3b], a
    ld a, [sCurrentSeason]
    ld [$ba3c], a
    ld a, [sCurrentYear]
    ld [$ba3d], a
    ret


Jump_001_778b:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_779b:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_77ab:
    call $6e7f
    ld hl, $c806
    ld bc, $0004
    call AddBCtoWordAtHL
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_001_77ff
    ld a, [sCurrentDayCounter]
    ld [$b89b], a
    ret


Jump_001_77ca:
    ld a, $01
    ld [$b89d], a

Jump_001_77cf:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $34
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_77df:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_001_77ff
    ret


Jump_001_77ef:
    call $6e7f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_001_77ff
    ret


Call_001_77ff:
    ld a, $00
    ld [$cbf4], a
    ld a, $01
    ld [$cbf5], a
    ld a, $01
    ld [$cbf1], a
    ld hl, $7ec1
    ld a, l
    ld [$cbf2], a
    ld a, h
    ld [$cbf3], a
    xor a
    ld [$cbee], a
    ld [$cbef], a
    ret


Call_001_7821:
    ld a, [sCurrentHour]
    cp TIME_12_PM
    ret nz

    ld a, [sCurrentMinute]
    cp $00
    ret nz

    ld a, [sClockFrameCount]
    cp $00
    ret nz

    ld a, $01
    ld [sClockFrameCount], a
    ld [$cb90], a
    ret


Call_001_783c:
    ld a, [sCurrentHour]
    cp TIME_6_PM
    ret nz

    ld a, [sCurrentMinute]
    cp $00
    ret nz

    ld a, [sClockFrameCount]
    cp $00
    ret nz

    ld a, $01
    ld [sClockFrameCount], a
    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, $02
    ld [$cb90], a
    ld a, [$b899]
    and $01
    ret z

    ld a, $03
    ld [$b899], a
    ret


Call_001_7878:
    ld a, [sCurrentHour]
    cp TIME_5_PM
    ret nz

    ld a, [sCurrentMinute]
    cp $00
    ret nz

    ld a, [sClockFrameCount]
    cp $00
    ret nz

    ld a, $01
    ld [sClockFrameCount], a
    ld a, $03
    ld [$cb90], a
    ret


Call_001_7895:
    ld a, [sCurrentSeason]
    cp SUMMER
    ret nz

    ld a, [sCurrentDayCounter]
    cp 19
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_PM
    ret nz

    ld a, [sCurrentMinute]
    cp 1
    ret nz

    ld a, [sClockFrameCount]
    cp 0
    ret nz

    ld a, 1
    ld [sClockFrameCount], a
    ld a, $04
    ld [$cb90], a
    ret


Call_001_78be:
    ld a, [sCurrentSeason]
    cp WINTER
    ret nz

    ld a, [sCurrentDayCounter]
    cp 23
    ret nz

    ld a, [sCurrentHour]
    cp TIME_6_PM
    ret nz

    ld a, [sCurrentMinute]
    cp 1
    ret nz

    ld a, [sClockFrameCount]
    cp 0
    ret nz

    ld a, 1
    ld [sClockFrameCount], a
    ld a, $05
    ld [$cb90], a
    ret


Call_001_78e7:
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$c90d]
    or a
    ret nz

    ld a, [$cb90]
    or a
    ret z

    cp $01
    jr z, jr_001_790d

    cp $02
    jr z, jr_001_790d

    cp $03
    jr z, jr_001_7951

    cp $04
    jp z, Jump_001_798f

    cp $05
    jp z, Jump_001_79be

    ret


jr_001_790d:
    xor a
    ld [$cb90], a
    ld hl, $5fc1
    ld a, $02
    call BankSwitchCallHL
    ld a, [$cb8d]
    cp $ff
    ret z

    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, [$cb8d]
    and $01
    jr z, jr_001_794a

    ld a, [$cb8d]
    cp $01
    jr nz, jr_001_7940

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_001_7940:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    pop hl
    ret


jr_001_794a:
    ld a, $20
    call Call_000_151d
    pop hl
    ret

jr_001_7951:
    ld a, $ff
    ld [$cbeb], a
    ld a, $00
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb90], a
    ld a, [sShipmentPayment]
    ld b, a
    ld a, [sShipmentPayment+1]
    or b
    jr z, jr_001_7982

    ld a, [sShipmentPayment]
    ld [$b8fc], a
    ld a, [sShipmentPayment+1]
    ld [$b8fd], a
    xor a
    ld [sShipmentPayment], a
    ld [sShipmentPayment+1], a
    ld a, $1f
    call InitializeTextIDAndDisplay
    ret


jr_001_7982:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, $20
    call InitializeTextIDAndDisplay
    ret


Jump_001_798f:
    xor a
    ld [$cb90], a
    call $6e7f
    ld a, $02
    ld [$c80d], a
    ld a, $1a
    call Call_000_152a
    ld a, $05
    ld [$c810], a
    xor a
    ld [$c811], a
    ld [$c813], a
    xor a
    ld [$c806], a
    ld [$c807], a
    ld a, $40
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_001_79be:
    xor a
    ld [$cb90], a
    call $6e7f
    ld a, $02
    ld [$c80d], a
    ld a, $12
    call Call_000_152a
    ld a, $06
    ld [$c810], a
    xor a
    ld [$c811], a
    ld [$c813], a
    xor a
    ld [$c806], a
    ld [$c807], a
    ld a, $40
    ld [wInputFreezeTimer], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Call_001_79ed:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbf6]
    or a
    ret z

    ld a, $01
    ld [sClockFrameCount], a
    ld a, [$b88c]
    cp $01
    jr z, jr_001_7a53

    cp $02
    jr z, jr_001_7a72

    cp $03
    jp z, Jump_001_7a9d

    cp $04
    jp z, Jump_001_7ac8

    cp $05
    jp z, Jump_001_7af3

    cp $06
    jp z, Jump_001_7b3a

    cp $07
    jp z, Jump_001_7b65

    cp $08
    jp z, Jump_001_7b8e

    cp $09
    jp z, Jump_001_7bd8

    cp $0a
    jp z, Jump_001_7c01

    cp $0b
    jp z, Jump_001_7c2a

    cp $0c
    jp z, Jump_001_7c53

    cp $0d
    jp z, Jump_001_7c7c

    cp $0f
    jp z, Jump_001_7cb7

    cp $10
    jp z, Jump_001_7cc4

    cp $12
    jp z, Jump_001_7ced

    cp $13
    jp z, Jump_001_7d16

    ret


jr_001_7a53:
    ld a, [$cbf6]
    dec a
    ld [$cbf6], a
    or a
    ret nz

    xor a
    ld [$b88c], a
    ld a, $07
    ld [wDestinationWarpID], a
    ld a, $20
    ld [wMapChangeFreezeTimer], a
    call Call_001_4224
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    ret


jr_001_7a72:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $41
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7a9d:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $28
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7ac8:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $10
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7af3:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $01
    ld a, [sPlayerGender]
    or a
    jr z, jr_001_7b21

    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $30
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


jr_001_7b21:
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $20
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7b3a:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $30
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7b65:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7b8e:
    ld a, [$c604]
    cp $04
    jr nz, jr_001_7baf

    ld a, [wInputFreezeTimer]
    cp $ff
    jr z, jr_001_7baf

    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $48
    call Call_000_151d
    xor a
    ld [$cbf6], a
    ld a, $53
    call InitializeTextIDAndDisplay

jr_001_7baf:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $21
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7bd8:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7c01:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7c2a:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7c53:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7c7c:
    ld a, [$cbf6]
    cp $01
    ret nz

    ld a, [$b89a]
    or a
    jr z, jr_001_7c94

    ld a, $03
    ld [$c80d], a
    ld a, $13
    call Call_000_152a
    jr jr_001_7c9e

jr_001_7c94:
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a

jr_001_7c9e:
    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7cb7:
    ld a, $02
    ld [$b89d], a
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a

Jump_001_7cc4:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7ced:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Jump_001_7d16:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_3f26
    ret


Call_001_7d3f:
    ld a, [$b88c]
    or a
    ret z

    push hl
    push af
    ld l, $77
    ld h, $58
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, [$cbee]
    cp $f5
    ret nz

    inc a
    ld [$cbee], a
    xor a
    ld [$cbf1], a
    ld a, $02
    ld [wInputFreezeTimer], a
    ld a, [$b88c]
    cp $01
    jp z, Jump_001_7dbd

    cp $02
    jp z, Jump_001_7dc3

    cp $03
    jp z, Jump_001_7dc9

    cp $04
    jp z, Jump_001_7dcf

    cp $05
    jp z, Jump_001_7dd5

    cp $06
    jp z, Jump_001_7de0

    cp $07
    jp z, Jump_001_7de6

    cp $08
    jp z, Jump_001_7dec

    cp $09
    jp z, Jump_001_7df2

    cp $0a
    jp z, Jump_001_7df8

    cp $0b
    jp z, Jump_001_7dfe

    cp $0c
    jp z, Jump_001_7e4d

    cp $0d
    jp z, Jump_001_7e53

    cp $0f
    jp z, Jump_001_7e59

    cp $10
    jp z, Jump_001_7e5f

    cp $12
    jp z, Jump_001_7e65

    cp $13
    jp z, Jump_001_7ebb

    ret


Jump_001_7dbd:
    ld a, $1e
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dc3:
    ld a, $21
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dc9:
    ld a, $22
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dcf:
    ld a, $23
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dd5:
    ld a, [sPlayerGender]
    ld b, a
    ld a, $24
    add b
    call InitializeTextIDAndDisplay
    ret


Jump_001_7de0:
    ld a, $26
    call InitializeTextIDAndDisplay
    ret


Jump_001_7de6:
    ld a, $29
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dec:
    ld a, $2b
    call InitializeTextIDAndDisplay
    ret


Jump_001_7df2:
    ld a, $2c
    call InitializeTextIDAndDisplay
    ret


Jump_001_7df8:
    ld a, $2d
    call InitializeTextIDAndDisplay
    ret


Jump_001_7dfe:
    ld a, [sHouseExpansionFlag]
    cp 0
    jr z, .noHouseExpansion

    ld a, $37
    ld [$cbf7], a
    ld a, $34
    ld [$cbf8], a
    ld [$cbf9], a
    ld a, $39
    ld [$cbfa], a
    ld a, $34
    ld [$cbfb], a
    ld [$cbfc], a
    ld [$cbfd], a
    ld a, $2e
    call InitializeTextIDAndDisplay
    ret

.noHouseExpansion
    ld a, $35
    ld [$cbf7], a
    ld a, $34
    ld [$cbf8], a
    ld [$cbf9], a
    ld a, $36
    ld [$cbfa], a
    ld a, $39
    ld [$cbfb], a
    ld a, $34
    ld [$cbfc], a
    ld [$cbfd], a
    ld a, $2e
    call InitializeTextIDAndDisplay
    ret

Jump_001_7e4d:
    ld a, $2f
    call InitializeTextIDAndDisplay
    ret

Jump_001_7e53:
    ld a, $30
    call InitializeTextIDAndDisplay
    ret


Jump_001_7e59:
    ld a, $34
    call InitializeTextIDAndDisplay
    ret


Jump_001_7e5f:
    ld a, $36
    call InitializeTextIDAndDisplay
    ret


Jump_001_7e65:
    ld a, [sHouseExpansionFlag]
    cp $01
    jr z, jr_001_7e72

    ld a, $3a
    call InitializeTextIDAndDisplay
    ret

jr_001_7e72:
    ld a, $39
    call InitializeTextIDAndDisplay
    xor a
    ld [$b897], a
    ld a, $01
    ld [$ba42], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_001_7e9a

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_001_7e9f

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_001_7ead
    ret

jr_001_7e9a:
    xor a
    ld [$b8a5], a
    ret

jr_001_7e9f:
    ld a, NO_ITEM
    ld [sInventory], a
    ld hl, $45c5
    ld a, $08
    call BankSwitchCallHL
    ret

jr_001_7ead:
    ld a, NO_ITEM
    ld [sInventory+1], a
    ld hl, $45c5
    ld a, $08
    call BankSwitchCallHL
    ret

Jump_001_7ebb:
    ld a, $3b
    call InitializeTextIDAndDisplay
    ret

Data_001_7ec1:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $80, $80, $80, $80
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
