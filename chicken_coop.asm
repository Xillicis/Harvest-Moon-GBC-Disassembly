; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    db $04 ; bank number

InitializeChickenCoopScene: ; 04x4001
    push hl
    push af
    ld l, $da
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ld [wPetIsPresentOnMap], a
    ld [$c780], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, ChickenCoopBackgroundTiles1
    ld c, BANK(ChickenCoopBackgroundTiles1)
    ld de, $8800
    call DecompressGraphicsToVRAM
    ld hl, ChickenCoopBackgroundTiles2
    ld c, BANK(ChickenCoopBackgroundTiles2)
    ld de, $9000
    call DecompressGraphicsToVRAM
    ld hl, ChickenCoopSpriteGraphics
    ld c, BANK(ChickenCoopSpriteGraphics)
    ld de, $8000
    call DecompressGraphicsToVRAM
    ld a, $08
    ld [$cb5c], a
    ld a, $07
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, ChickenCoopBackgroundMap
    ld c, BANK(ChickenCoopBackgroundMap)
    ld de, $9800
    call DecompressGraphicsToVRAM
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [wFreezePlayerWhenEnteringNewMap], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $00
    ld [$cc22], a
    call InitializeChickenCoopPlayerState
    call Call_000_1221
    call LoadChickenCoopTextBoxTilemap
    ld a, $00
    call RST_TableJumpBankSwitch
    call InitializeChickenCoopChickens
    ld a, [sChickenFeedingFlags]
    bit 0, a
    call nz, DrawChickenFeedTrough0
    ld a, [sChickenFeedingFlags]
    bit 1, a
    call nz, DrawChickenFeedTrough1
    ld a, [sChickenFeedingFlags]
    bit 2, a
    call nz, DrawChickenFeedTrough2
    ld a, [sChickenFeedingFlags]
    bit 3, a
    call nz, DrawChickenFeedTrough3
    ld a, [sChickenEggFlags]
    bit 0, a
    call nz, DrawChickenEgg0
    ld a, [sChickenEggFlags]
    bit 1, a
    call nz, DrawChickenEgg1
    ld a, [sChickenEggFlags]
    bit 2, a
    call nz, DrawChickenEgg2
    ld a, [sChickenEggFlags]
    bit 3, a
    call nz, DrawChickenEgg3
    ld a, [sChickenEggFlags]
    bit 4, a
    call nz, Call_004_5c5a
    ld a, [sChickenIncubationState]
    cp $00
    call nz, DrawIncubatorContents
    ld a, [sChickenFeedFlag]
    or a
    call nz, DrawChickenFeedPickup
    xor a
    ld [$cc20], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    ld [$cc19], a
    ld [$cc1a], a
    ld a, $ff
    ld [$cc4a], a
    ld [$cc4b], a
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
    call PlaySeasonalOrWeatherAudio
    call Call_000_3dfd
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3cf8
    call HandleChickenCoopPlayerInput
    call Call_000_2d67
    call LoadCharacterTileIntoVRAM
    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    call UpdateChicken0ScreenPosition
    call UpdateChicken1ScreenPosition
    call UpdateChicken2ScreenPosition
    call UpdateChicken3ScreenPosition
    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld hl, $4157
    ld a, [wCurrentChickenIndex]
    rst $00
    ld e, a
    ld b, c
    sbc d
    ld b, c
    sub $41
    ld de, $3e42
    nop
    ld [wCurrentChickenIndex], a
    ld hl, $b9a7
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c880
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_004_647f
    ld hl, $ba28
    ld de, $b9a7
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $cc4c
    ld de, $c880
    ld b, $20
    call CopyHLtoDE
    ld a, $01
    ld [wCurrentChickenIndex], a
    ld a, $01
    ld [wCurrentChickenIndex], a
    ld hl, $b9b3
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8a0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_004_647f
    ld hl, $ba28
    ld de, $b9b3
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $cc4c
    ld de, $c8a0
    ld b, $20
    call CopyHLtoDE
    ld a, $02
    ld [wCurrentChickenIndex], a
    ret


    ld a, $02
    ld [wCurrentChickenIndex], a
    ld hl, $b9bf
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8c0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_004_647f
    ld hl, $ba28
    ld de, $b9bf
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $cc4c
    ld de, $c8c0
    ld b, $20
    call CopyHLtoDE
    ld a, $03
    ld [wCurrentChickenIndex], a
    ld a, $03
    ld [wCurrentChickenIndex], a
    ld hl, $b9cb
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8e0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_004_647f
    ld hl, $ba28
    ld de, $b9cb
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $cc4c
    ld de, $c8e0
    ld b, $20
    call CopyHLtoDE
    ld a, $00
    ld [wCurrentChickenIndex], a
    ret

; screenX = worldX - scrollX
; screenY = worldY - scrollY
UpdateChicken0ScreenPosition: ; 04x424d
    ld hl, $c88a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c886]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c888]
    sub b
    ld [hl+], a
    ret

UpdateChicken1ScreenPosition: ; 04x4261
    ld hl, $c8aa
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8a6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8a8]
    sub b
    ld [hl+], a
    ret

UpdateChicken2ScreenPosition: ; 04x4275
    ld hl, $c8ca
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8c6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8c8]
    sub b
    ld [hl+], a
    ret

UpdateChicken3ScreenPosition: ; 04x4289
    ld hl, $c8ea
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8e6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8e8]
    sub b
    ld [hl+], a
    ret

HandleChickenCoopPlayerInput: ; 04x429d
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    call UpdateChickenCoopExitTransition
    call Call_004_5562
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ldh a, [$ff8b]
    and A_BUTTON
    jr z, .checkRunButton

    call HandleChickenCoopInteraction
    ret

.checkRunButton
    ldh a, [$ff8a]
    and B_BUTTON
    jr z, .checkInventoryButton

    call HandleChickenCoopRunning
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, .doneRunning

    ld a, [$c605]
    cp $08
    jr nz, .doneRunning

    ld a, $34
    call StartAudioTrack

.doneRunning
    ret

.checkInventoryButton
    ldh a, [$ff8b]
    and START
    jr z, .checkDirectionalInput

    call CycleSelectedInventorySlot
    ret

.checkDirectionalInput
    ldh a, [$ff8a]
    and $80
    jp nz, HandleChickenCoopMoveDown

    ldh a, [$ff8a]
    and $40
    jp nz, HandleChickenCoopMoveUp

    ldh a, [$ff8a]
    and $20
    jp nz, HandleChickenCoopMoveLeft

    ldh a, [$ff8a]
    and $10
    jp nz, HandleChickenCoopMoveRight

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


HandleChickenCoopMoveDown: ; 04x4313:
    ld a, FACING_DOWN
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionDown
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionDown
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_4347

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, TryChickenCoopWallSlideLeft

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideRight

    ret


jr_004_4347:
    call Call_004_454d
    ret


HandleChickenCoopMoveUp: ; 04x434b
    ld a, FACING_UP
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionUp
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionUp
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_437f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, TryChickenCoopWallSlideLeft

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideRight

    ret


jr_004_437f:
    call Call_004_4580
    ret

HandleChickenCoopMoveLeft: ; 04x4383
    ld a, FACING_LEFT
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call CheckPlayerCollisionLeft
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionLeft
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_43b7

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, TryChickenCoopWallSlideUp

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideDown

    ret


jr_004_43b7:
    call Call_004_45ae
    ret

HandleChickenCoopMoveRight: ; 04x43bb
    ld a, FACING_RIGHT
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionRight
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionRight
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_43ef

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, TryChickenCoopWallSlideUp

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideDown

    ret

jr_004_43ef:
    call Call_004_461e
    ret

HandleChickenCoopRunning: ; 04x43f3
    ldh a, [$ff8a]
    and $80
    jr nz, jr_004_440d

    ldh a, [$ff8a]
    and $20
    jr nz, jr_004_4411

    ldh a, [$ff8a]
    and $10
    jr nz, jr_004_4415

    ldh a, [$ff8a]
    and $40
    jr nz, jr_004_4419

    jr jr_004_441e

jr_004_440d:
    ld a, FACING_DOWN
    jr jr_004_441b

jr_004_4411:
    ld a, FACING_LEFT
    jr jr_004_441b

jr_004_4415:
    ld a, FACING_RIGHT
    jr jr_004_441b

jr_004_4419:
    ld a, FACING_UP

jr_004_441b:
    ld [wPlayerFacingDirection], a

jr_004_441e:
    ld a, [wPlayerFacingDirection]
    cp FACING_DOWN
    jr z, jr_004_4464

    cp FACING_LEFT
    jr z, jr_004_4499

    cp FACING_RIGHT
    jp z, Jump_004_44cd

    ld a, $02
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionUp
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionUp
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_445d

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, TryChickenCoopWallSlideLeft

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideRight

    ret


jr_004_445d:
    call Call_004_4580
    call Call_004_4580
    ret


jr_004_4464:
    ld a, $02
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionDown
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionDown
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_4492

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, TryChickenCoopWallSlideLeft

    ld a, [wCollisionSample2Property]
    and $01
    jp z, TryChickenCoopWallSlideRight

    ret


jr_004_4492:
    call Call_004_454d
    call Call_004_454d
    ret


jr_004_4499:
    ld a, $02
    call RST_TableJumpBankSwitch
    call CheckPlayerCollisionLeft
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionLeft
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_44c6

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, TryChickenCoopWallSlideUp

    ld a, [wCollisionSample2Property]
    and $01
    jr z, TryChickenCoopWallSlideDown

    ret


jr_004_44c6:
    call Call_004_45ae
    call Call_004_45ae
    ret


Jump_004_44cd:
    ld a, $02
    call RST_TableJumpBankSwitch
    call CheckPlayerChickenCollisionRight
    ldh a, [$ffa4]
    or a
    ret nz

    call ProbePlayerCollisionRight
    ld a, [wCollisionSample1Property]
    ld b, a
    ld a, [wCollisionSample2Property]
    or b
    and $01
    jr z, jr_004_44fa

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, TryChickenCoopWallSlideUp

    ld a, [wCollisionSample2Property]
    and $01
    jr z, TryChickenCoopWallSlideDown

    ret


jr_004_44fa:
    call Call_004_461e
    call Call_004_461e
    ret

TryChickenCoopWallSlideLeft: ; 04x4501
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call ProbePlayerCollisionLeft
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_004_45ae
    ret

TryChickenCoopWallSlideRight: ; 04x4514
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call ProbePlayerCollisionRight
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_004_461e
    ret

TryChickenCoopWallSlideUp: ; 04x4527
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call ProbePlayerCollisionUp
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_004_4580
    ret

TryChickenCoopWallSlideDown: ; 04x453a
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call ProbePlayerCollisionDown
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_004_454d
    ret


Call_004_454d:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $83
    jr nc, jr_004_4575

    ld a, [wPlayerYPosition]
    cp $5c
    jr nc, jr_004_4561

    jr jr_004_456e

jr_004_4561:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_004_4569:
    ld hl, wPlayerYPosition
    inc [hl]
    ret


jr_004_456e:
    ld hl, $c60b
    inc [hl]
    jr jr_004_4569

    ret


jr_004_4575:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ret


Call_004_4580:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $0e
    ret c

    ld a, [wPlayerYPosition]
    cp $5d
    jr nc, jr_004_459a

    ld a, [wPlayerYPosition]
    cp $08
    jr c, jr_004_45a7

    jr jr_004_45a7

jr_004_459a:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_004_45a2:
    ld hl, wPlayerYPosition
    dec [hl]
    ret


jr_004_45a7:
    ld hl, $c60b
    dec [hl]
    jr jr_004_45a2

    ret


Call_004_45ae:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_004_45ec

    cp $01
    jr z, jr_004_45f5

    ld a, [wPlayerXPosition]
    cp $b9
    jr nc, jr_004_45e5

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_004_45d8

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_004_45e5

jr_004_45d8:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_45e0:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_004_45e5:
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    jr jr_004_45e0

    ret


jr_004_45ec:
    ld hl, wPlayerXPosition
    dec [hl]
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    ret


jr_004_45f5:
    ld a, [wPlayerXPosition]
    cp $99
    jr nc, jr_004_4617

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_004_460a

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_004_4617

jr_004_460a:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_4612:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_004_4617:
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    jr jr_004_4612

    ret


Call_004_461e:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_004_4655

    cp $01
    jr z, jr_004_465e

    ld a, [wPlayerXPosition]
    cp $b8
    jr nc, jr_004_464e

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_004_464e

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_4649:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_004_464e:
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    jr jr_004_4649

    ret


jr_004_4655:
    ld hl, wPlayerXPosition
    inc [hl]
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    ret


jr_004_465e:
    ld a, [wPlayerXPosition]
    cp $98
    jr nc, jr_004_4679

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_004_4679

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_4674:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_004_4679:
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    jr jr_004_4674

    ret


UpdateChickenCoopExitTransition: ; 04x4680
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wMapChangeFreezeTimer]
    or a
    ret z

    dec a
    ld [wMapChangeFreezeTimer], a
    cp 0
    jr z, jr_004_4694

; discard the return address and exit to HL
    pop hl
    ret


jr_004_4694:
    ld a, [$cc4a]
    cp $ff
    jr z, jr_004_46b1

    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [hl]
    cp $ff
    jr nz, jr_004_46b1

    ld a, [$cc4b]
    ld [hl], a
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a

jr_004_46b1:
    call Call_004_6f3f
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $02
    ld [$c910], a
    ret

LoadChickenCoopTextBoxTilemap: ; 04x46c4
    ld hl, vBGMap1
    ld de, ChickenCoopTextBoxTilemap
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret

ChickenCoopTextBoxTilemap: ; 04x46d2
; DATA
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

InitializeChickenCoopPlayerState: ; 04x4736
    ld hl, ChickenCoopPlayerInitialState
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ret

ChickenCoopPlayerInitialState: ; 04x4742
    db $01, $00, $ff, $00, $00, $08, $58, $00
    db $80, $00, $50, $64, $00, $03, $01, $00

CheckPlayerChickenCollisionDown: ; $4752
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr z, .checkChicken1

    cp $ff
    jr z, .checkChicken1

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, .checkChicken1

    ldh a, [$ffa7]
    cp e
    jr c, .checkChicken1

    ldh a, [$ffa4]
    cp c
    jr nc, .checkChicken1

    ldh a, [$ffa5]
    cp b
    jp nc, .found

.checkChicken1
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, .checkChicken2

    cp $ff
    jr z, .checkChicken2

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, .checkChicken2

    ldh a, [$ffa7]
    cp e
    jr c, .checkChicken2

    ldh a, [$ffa4]
    cp c
    jr nc, .checkChicken2

    ldh a, [$ffa5]
    cp b
    jp nc, .found

.checkChicken2
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, .checkChicken3

    cp $ff
    jr z, .checkChicken3

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, .checkChicken3

    ldh a, [$ffa7]
    cp e
    jr c, .checkChicken3

    ldh a, [$ffa4]
    cp c
    jr nc, .checkChicken3

    ldh a, [$ffa5]
    cp b
    jr nc, .found

.checkChicken3
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, .notFound

    cp $ff
    jr z, .notFound

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, .notFound

    ldh a, [$ffa7]
    cp e
    jr c, .notFound

    ldh a, [$ffa4]
    cp c
    jr nc, .notFound

    ldh a, [$ffa5]
    cp b
    jr nc, .found

.notFound
    ld a, $00
    ldh [$ffa4], a
    ret

.found ; 04x4889
    ld a, $01
    ldh [$ffa4], a
    ret


;; Labeling follows the above subroutine. Need to modify...
CheckPlayerChickenCollisionUp: ; 04x488e
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_48f3

    cp $ff
    jr z, jr_004_48f3

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_48f3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_48f3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_48f3

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_49c5

jr_004_48f3:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_4938

    cp $ff
    jr z, jr_004_4938

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_4938

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_4938

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4938

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_49c5

jr_004_4938:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_497c

    cp $ff
    jr z, jr_004_497c

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_497c

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_497c

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_497c

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_49c5

jr_004_497c:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_49c0

    cp $ff
    jr z, jr_004_49c0

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_49c0

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_49c0

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_49c0

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_49c5

jr_004_49c0:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_49c5:
jr_004_49c5:
    ld a, $01
    ldh [$ffa4], a
    ret

CheckPlayerCollisionLeft: ; 04x49ca
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc d
    inc d
    inc d
    inc d
    dec e
    dec e
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_4a2f

    cp $ff
    jr z, jr_004_4a2f

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4a2f

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4a2f

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4a2f

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4b01

jr_004_4a2f:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_4a74

    cp $ff
    jr z, jr_004_4a74

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4a74

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4a74

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4a74

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4b01

jr_004_4a74:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4ab8

    cp $ff
    jr z, jr_004_4ab8

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4ab8

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4ab8

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4ab8

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4b01

jr_004_4ab8:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4afc

    cp $ff
    jr z, jr_004_4afc

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4afc

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4afc

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4afc

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4b01

jr_004_4afc:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_4b01:
jr_004_4b01:
    ld a, $01
    ldh [$ffa4], a
    ret

CheckPlayerChickenCollisionRight: ; 04x4b06
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc d
    inc d
    inc d
    inc d
    dec e
    dec e
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_4b6b

    cp $ff
    jr z, jr_004_4b6b

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4b6b

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4b6b

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4b6b

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4c3d

jr_004_4b6b:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_4bb0

    cp $ff
    jr z, jr_004_4bb0

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4bb0

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4bb0

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4bb0

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4c3d

jr_004_4bb0:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4bf4

    cp $ff
    jr z, jr_004_4bf4

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4bf4

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4bf4

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4bf4

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4c3d

jr_004_4bf4:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4c38

    cp $ff
    jr z, jr_004_4c38

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4c38

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4c38

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4c38

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4c3d

jr_004_4c38:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_4c3d:
jr_004_4c3d:
    ld a, $01
    ldh [$ffa4], a
    ret


    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c

HandleChickenCoopInteraction: ; 04x4c4a
    ld a, [wHeldObject]
    or a
    jp nz, Jump_004_4f75

    ld hl, Label_004_4c58
    ld a, [wPlayerFacingDirection]
    rst $00

Label_004_4c58:
    ld h, b
    ld c, h
    ld h, l
    ld c, h
    ld l, d
    ld c, h
    ld l, a
    ld c, h
    call CheckPlayerChickenCollisionDown
    jr .checkChickenFound

    call CheckPlayerCollisionLeft
    jr .checkChickenFound

    call CheckPlayerChickenCollisionRight
    jr .checkChickenFound

    call CheckPlayerChickenCollisionUp

.checkChickenFound
    ldh a, [$ffa4]
    or a
    jr z, CheckForChick

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [hTemp]
    ld [$cc4a], a
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, $ff
    ld [hl], a
    ldh a, [hTemp]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    cp 3
    jr z, .pickUpChickenType3

    ld a, $27
    ld [wHeldObject], a
    ld a, $74
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret

.pickUpChickenType3
    ld a, $28
    ld [wHeldObject], a
    ld a, $75
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret

ChickenObjectPointers: ; 04x4cd0
    dw $c880
    dw $c8a0
    dw $c8c0
    dw $c8e0

CheckForChick: ; 04x4cd8
    ld hl, $4cdf
    ld a, [wPlayerFacingDirection]
    rst $00
    rst $20
    ld c, h
    db $ec
    ld c, h
    pop af
    ld c, h
    or $4c
    call CheckPlayerChickCollisionDown
    jr .checkChickFound

    call CheckPlayerChickCollisionLeft
    jr .checkChickFound

    call CheckPlayerChickCollisionRight
    jr .checkChickFound

    call CheckPlayerChickCollisionUp

; [$ffa4] = 1
; [hTemp] = chicken slot index
; [$ffa9] = chicken type
.checkChickFound
    ldh a, [$ffa4]
    or a
    jr z, .checkTextInteractionLock

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [hTemp]
    ld [$cc4a], a
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, $ff
    ld [hl], a
    ldh a, [hTemp]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    ld a, $26
    ld [wHeldObject], a
    ld a, $73
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret

.checkTextInteractionLock
    ld a, [wPlayerInteractingInTextFlag]
    cp $00
    jr z, .checkMapObjectInteraction
    ret

.checkMapObjectInteraction
    ld a, [wCollisionNoMovement]
    or a
    jp z, NoObjectInteraction

    ld a, [wDominantFacingTileID]
    cp BIG_STONE_TOP_RIGHT_TILE
    jr z, .topSignChickenCoup
    cp BIG_STONE_BOTTOM_LEFT_TILE
    jr z, .bottomLeftSignChickenCoup
    cp BIG_STONE_BOTTOM_RIGHT_TILE
    jr z, .middleSignChickenCoup
    cp BIG_LOG_TOP_LEFT_TILE
    jr z, .rightSignChickenCoup
    cp $1e
    jr z, PickUpChickenFeed

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4e5a

    callfar PlayerInteraction_A_Pressed
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $11
    ret nz

    call Call_004_5889
    ld a, [de]
    cp $03
    jp z, FillChickenFeedTrough

    ld a, $04
    ld [$cc20], a
    ret

.topSignChickenCoup
    ld a, $a2
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.bottomLeftSignChickenCoup
    ld a, $a4
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.middleSignChickenCoup
    ld a, $a3
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.rightSignChickenCoup
    ld a, $a5
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

PickUpChickenFeed:
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, .chooseAvailableInventorySlot

    cp $01
    jr z, .useInventorySlot1

    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, .useInventorySlot1

    ld a, [sInventory]
    ld [$cc21], a
    call ReturnDisplacedItemToShed
    ld a, CHICKEN_FEED
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr .finishFeedPickup

.useInventorySlot1
    ld a, [sInventory+1]
    ld [$cc21], a
    call ReturnDisplacedItemToShed
    ld a, CHICKEN_FEED
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr .finishFeedPickup

.chooseAvailableInventorySlot
    ld a, [sInventory]
    cp $ff
    jr nz, .useInventorySlot1

    ld a, [sInventory]
    ld [$cc21], a
    call ReturnDisplacedItemToShed
    ld a, $11
    ld [sInventory], a
    xor a
    ld [sItemSlot], a

.finishFeedPickup
    xor a
    ld [sChickenFeedFlag], a
    ld [wDominantFacingTileProperty], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $11
    call SetHeldItemAndDispatchHandler
    ld hl, $c62a
    ld a, [wPlayerXPositionNearBoundary]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl], a
    xor a
    ld [$c623], a
    ld a, $10
    ld [wInputFreezeTimer], a
    ld a, $07
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wCollisionNoMovement], a
    ld hl, $d800
    ld de, $00bc
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


Jump_004_4e5a:
    ld a, [wDominantFacingTileID]
    cp $10
    jr z, jr_004_4ea6

    cp $11
    jr z, jr_004_4ebb

    cp $12
    jr z, jr_004_4ed0

    cp $13
    jp z, Jump_004_4ee5

    cp $14
    jp z, Jump_004_4f1d

    cp $04
    ret nz

    ld a, [$b93a]
    ld l, a
    ld a, [$b93b]
    ld h, a
    or l
    ret z

    dec hl
    ld a, h
    ld [$b93b], a
    ld a, l
    ld [$b93a], a
    call Call_000_1002
    ld a, $20
    ld [wHeldObject], a
    ld a, $19
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_004_4ea6:
    ld a, [sChickenEggFlags]
    res 0, a
    ld [sChickenEggFlags], a
    ld a, $00
    ld [$cc18], a
    ld hl, $d91e
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

jr_004_4ebb:
    ld a, [sChickenEggFlags]
    res 1, a
    ld [sChickenEggFlags], a
    ld a, $01
    ld [$cc18], a
    ld hl, $d8ce
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

jr_004_4ed0:
    ld a, [sChickenEggFlags]
    res 2, a
    ld [sChickenEggFlags], a
    ld a, $02
    ld [$cc18], a
    ld hl, $d8ba
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

Jump_004_4ee5:
    ld a, [sChickenEggFlags]
    res 3, a
    res 4, a
    ld [sChickenEggFlags], a
    ld a, $03
    ld [$cc18], a
    ld hl, $d920
    xor a
    ld [hl+], a
    ld [hl], a

jr_004_4efa:
    ld a, $24
    ld [wHeldObject], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $29
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


Jump_004_4f1d:
    ld a, [sChickenEggFlags]
    res 3, a
    res 4, a
    ld [sChickenEggFlags], a
    ld a, $03
    ld [$cc18], a
    ld hl, $d920
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $25
    ld [wHeldObject], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $71
    call SetHeldItemAndDispatchHandler
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret

NoObjectInteraction:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4e5a

; use current item
    callfar PlayerInteraction_A_Pressed
    ld a, $04
    ld [$cc20], a
    ret

Jump_004_4f75:
    call HandleChickenCoopHeldObjectAction
    ret

HandleChickenCoopHeldObjectAction: ; 04x4f79
    ld a, [wHeldObject]
    ld hl, $4f80
    rst $00
    db $e4
    ld c, a
    push hl
    ld c, a
    cp $4f
    cp $4f
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    rst $38
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $fd
    ld d, b
    ld c, [hl]
    ld d, c
    sbc a
    ld d, c
    sbc a
    ld d, d
    add e
    ld d, e
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    db $e4
    ld c, a
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld a, $33
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_004_5889
    ld a, [de]
    cp $03
    jr z, jr_004_5020

    xor a
    ld [wHeldObject], a
    ld a, $1c
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_004_5020:
    ld a, $19
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_004_5889
    ld a, [de]
    cp $03
    jr z, FillChickenFeedTrough

    ret

FillChickenFeedTrough: ; 04x5038
    ld a, [wPlayerFacingDirection]
    ld a, [wPlayerXPosition]
    cp $29
    jr c, .jr_004_504c

    cp $39
    jr c, .jr_004_5071

    cp $49
    jr c, .jr_004_5096

    jr .jr_004_50bb

.jr_004_504c:
    ld a, [wHeldObject]
    cp $20
    jr z, .jr_004_5062

    ld a, $00
    ld [$cc20], a
    ld a, [sChickenFeedingFlags]
    set 0, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_5062:
    ld a, $00
    ld [$cc18], a
    ld a, [sChickenFeedingFlags]
    set 0, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_5071:
    ld a, [wHeldObject]
    cp $20
    jr z, .jr_004_5087

    ld a, $01
    ld [$cc20], a
    ld a, [sChickenFeedingFlags]
    set 1, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_5087:
    ld a, $01
    ld [$cc18], a
    ld a, [sChickenFeedingFlags]
    set 1, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_5096:
    ld a, [wHeldObject]
    cp $20
    jr z, .jr_004_50ac

    ld a, $02
    ld [$cc20], a
    ld a, [sChickenFeedingFlags]
    set 2, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_50ac:
    ld a, $02
    ld [$cc18], a
    ld a, [sChickenFeedingFlags]
    set 2, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_50bb:
    ld a, [wHeldObject]
    cp $20
    jr z, .jr_004_50d1

    ld a, $03
    ld [$cc20], a
    ld a, [sChickenFeedingFlags]
    set 3, a
    ld [sChickenFeedingFlags], a
    jr .jr_004_50de

.jr_004_50d1:
    ld a, $03
    ld [$cc18], a
    ld a, [sChickenFeedingFlags]
    set 3, a
    ld [sChickenFeedingFlags], a

.jr_004_50de:
    ld a, [wHeldObject]
    cp $20
    jr z, .jr_004_50ed

    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


.jr_004_50ed:
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wDominantFacingTileID], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jr z, .jr_004_5125

    cp $09
    jr z, .jr_004_5125

    ld a, $2a
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


.jr_004_5125:
    ld a, $29
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jp z, Jump_004_5467

    ld a, $04
    ld [sChickenIncubationState], a
    ld a, $00
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_004_547a

    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wDominantFacingTileID], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jr z, .jr_004_5176

    cp $09
    jr z, .jr_004_5176

    ld a, $72
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


.jr_004_5176:
    ld a, $71
    call SetHeldItemAndDispatchHandler
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jp z, Jump_004_5467

    ld a, $84
    ld [sChickenIncubationState], a
    ld a, $01
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_004_547a

    ret


    call Call_004_61da
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $73
    call SetHeldItemAndDispatchHandler
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [wPlayerFacingDirection]
    ld [hl], a
    ld hl, $520c
    rst $00
    inc d
    ld d, d
    ld sp, $4852
    ld d, d
    ld e, a
    ld d, d
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jr .jr_004_527a

    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jr .jr_004_527a

    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jr .jr_004_527a

    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a

.Jump_004_527a:
.jr_004_527a:
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $01
    ld [hl], a
    ld a, [$cc4a]
    ld b, a
    ld a, $ff
    ld [$cc4a], a
    ld [$cc4b], a
    ld a, b
    ld hl, $5297
    rst $00
    ld c, l
    ld b, d
    ld h, c
    ld b, d
    ld [hl], l
    ld b, d
    adc c
    ld b, d
    call Call_004_61da
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $74
    call SetHeldItemAndDispatchHandler
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [wPlayerFacingDirection]
    ld [hl], a
    ld hl, $530f
    rst $00
    rla
    ld d, e
    dec [hl]
    ld d, e
    ld c, l
    ld d, e
    ld h, l
    ld d, e
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp .Jump_004_527a


    call Call_004_61da
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $75
    call SetHeldItemAndDispatchHandler
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call StartAudioTrack
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wPlayerXPosition]
    ld [hl+], a
    ld a, [wPlayerXPosition+1]
    ld [hl+], a
    ld a, [wPlayerYPosition]
    ld [hl+], a
    ld a, [wPlayerYPosition+1]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [wPlayerFacingDirection]
    ld [hl], a
    ld hl, $53f3
    rst $00
    ei
    ld d, e
    add hl, de
    ld d, h
    ld sp, $4954
    ld d, h
    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp .Jump_004_527a


    ld a, [$cc4a]
    ld hl, ChickenObjectPointers
    call LoadWordFromTableHL
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp .Jump_004_527a


Jump_004_5467:
    call Call_000_1cff
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


Jump_004_547a:
    ld a, $06
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


    sbc c
    and c
    inc b
    xor h
    xor l
    xor [hl]
    xor a
    nop
    sbc c
    pop bc
    inc b
    cp h
    cp l
    cp [hl]
    cp a
    nop
    sbc c
    pop hl
    inc b
    call z, $cecd
    rst $08
    nop
    sbc d
    ld bc, $dc04
    db $dd
    sbc $df
    nop
    sbc d
    ld bc, $6c04
    ld l, l
    ld l, [hl]
    ld a, a
    nop
    sbc c
    pop hl
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl]
    nop
    sbc c
    pop bc
    inc b
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, l
    nop
    sbc c
    and c
    inc b
    dec a
    ld a, $3f
    ld a, h
    nop
    jp nc, $de54

    ld d, h
    ld [$f654], a
    ld d, h
    sbc b
    and d
    ld [bc], a
    daa
    jr z, jr_004_54d8

jr_004_54d8:
    sbc b
    jp nz, $3702

    jr c, jr_004_54de

jr_004_54de:
    sbc b
    and h
    ld [bc], a
    daa
    jr z, jr_004_54e4

jr_004_54e4:
    sbc b
    call nz, $3702
    jr c, jr_004_54ea

jr_004_54ea:
    sbc b
    and [hl]
    ld [bc], a
    daa
    jr z, jr_004_54f0

jr_004_54f0:
    sbc b
    add $02
    scf
    jr c, jr_004_54f6

jr_004_54f6:
    sbc b
    xor b
    ld [bc], a
    daa
    jr z, jr_004_54fc

jr_004_54fc:
    sbc b
    ret z

    ld [bc], a
    scf

Jump_004_5500:
    jr c, jr_004_5502

jr_004_5502:
    ld a, [bc]
    ld d, l
    ld d, $55
    ld [hl+], a
    ld d, l
    ld l, $55
    sbc c
    db $ed
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    dec c
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    ld h, c
    ld [bc], a
    inc a
    inc de
    nop
    sbc c
    add c
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    cpl
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    ld c, a
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    rst $28
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    rrca
    ld [bc], a
    inc de
    inc de
    nop
    ld a, $55
    ld c, d
    ld d, l
    sbc c
    pop de
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    pop af
    ld [bc], a
    xor d
    xor e
    nop
    sbc c
    pop de
    ld [bc], a
    di
    db $f4
    nop
    sbc c
    pop af
    ld [bc], a
    push af
    or $00
    sbc c
    ld sp, $1302
    inc de
    nop
    sbc c
    ld d, c
    ld [bc], a
    inc de
    inc de
    nop

Call_004_5562:
    ld a, [$cc19]
    cp $00
    jp nz, Jump_004_5828

    ld hl, $5571
    ld a, [$cc16]
    rst $00
    adc b
    ld d, a
    add c
    ld d, l
    jp nz, $df55

    ld d, l
    jr nz, @+$58

    sub a
    ld d, [hl]
    and $56
    ld c, e
    ld d, a
    ld hl, $548a
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

jr_004_5599:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5599

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_004_55b8

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_004_5788


jr_004_55b8:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5788


    ld a, [$cc17]
    cp $08
    jr nz, jr_004_55d5

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_004_5788


jr_004_55d5:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5788


    ld hl, $54aa
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

jr_004_55f7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_55f7

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_004_5616

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5788


jr_004_5616:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5788


    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $54ca
    ld a, [$cc18]
    call LoadWordFromTableHL
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, $04
    ld [hl+], a
    ld [hl], a
    call SyncToBlankPeriod
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $54ca
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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

jr_004_566e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_566e

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_568d

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5788


jr_004_568d:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5788


    ld hl, $5502
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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

jr_004_56bd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_56bd

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_56dc

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5788


jr_004_56dc:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5788


    ld c, $4f
    ld a, $01
    ldh [c], a
    call SyncToBlankPeriod
    ld a, $04
    ld hl, $99d1
    ld [hl+], a
    ld [hl], a
    ld hl, $99f1
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $553a
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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

jr_004_5724:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5724

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_5742

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_004_5788

jr_004_5742:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_004_5788

    ld hl, $5556
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

jr_004_5763:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5763

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_5781

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_004_5788

jr_004_5781:
    ld a, [$cc17]
    inc a
    ld [$cc17], a

Jump_004_5788:
jr_004_5788:
    ld a, [wInputFreezeTimer]
    or a
    ret z

    dec a
    ld [wInputFreezeTimer], a
    cp $26
    jr z, jr_004_5799

    or a
    jr z, jr_004_57e4

    ret


jr_004_5799:
    ld a, [wPlayerSpriteID]
    cp $5f
    jr z, jr_004_57ad

    cp $60
    jr z, jr_004_57ad

    cp $61
    jr z, jr_004_57ad

    cp $62
    jr z, jr_004_57ad

    ret


jr_004_57ad:
    ld a, [$cc20]
    cp $04
    jr nz, jr_004_57be

jr_004_57b4:
    ld a, $1c
    call SetHeldItemAndDispatchHandler
    xor a
    ld [$cc20], a
    ret


jr_004_57be:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $11
    jr nz, jr_004_57b4

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a

jr_004_57e2:
    pop hl
    ret


jr_004_57e4:
    ld a, [$cb91]
    or a
    jr z, jr_004_57e2

    ld [wInputFreezeTimer], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [wInputFreezeTimer]
    cp $b4
    jr z, jr_004_580c

    cp $6e
    jr z, jr_004_5813

    cp $50
    jr z, jr_004_581a

    cp $a0
    jr z, jr_004_5821

jr_004_580c:
    ld a, $8a
    call LoadPlayerSpriteID
    pop hl
    ret


jr_004_5813:
    ld a, $8b
    call LoadPlayerSpriteID
    pop hl
    ret


jr_004_581a:
    ld a, $8c
    call LoadPlayerSpriteID
    pop hl
    ret


jr_004_5821:
    ld a, $8d
    call LoadPlayerSpriteID
    pop hl
    ret


Jump_004_5828:
    ld a, [wInputFreezeTimer]
    cp $01
    jp nz, Jump_004_5788

    ld hl, $5837
    ld a, [$cc1e]
    rst $00
    ccf
    ld e, b
    ld d, c
    ld e, b
    ld e, l
    ld e, b
    ld l, c
    ld e, b
    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_004_5788


    ld a, $21
    ld [wHeldObject], a
    ld a, $27
    call SetHeldItemAndDispatchHandler
    jr jr_004_5873

    ld a, $22
    ld [wHeldObject], a
    ld a, $25
    call SetHeldItemAndDispatchHandler
    jr jr_004_5873

    ld a, $23
    ld [wHeldObject], a
    ld a, $23
    call SetHeldItemAndDispatchHandler

jr_004_5873:
    ld a, $35
    call StartAudioTrack
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    xor a
    ld [$cc19], a
    jp Jump_004_5788


Call_004_5889:
    ld a, [wPlayerFacingDirection]
    rst $00
    sub [hl]
    ld e, b
    ld a, [hl+]
    ld e, c
    ret nz

    ld e, c
    ld d, [hl]
    ld e, d
    ret


    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    ld a, $26
    add l
    ld l, a
    ld a, $00
    adc h
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
    push hl
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerYPosition]
    add $08
    ld l, a
    ld a, [wPlayerYPosition+1]
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
    ld a, [wPlayerXPosition]
    sub $1f
    ld l, a
    ld a, [wPlayerXPosition+1]
    sbc $00
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
    push hl
    ld a, [wPlayerXPosition]
    sub $18
    ld l, a
    ld a, [wPlayerXPosition+1]
    sbc $00
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerYPosition]
    add $08
    ld l, a
    ld a, [wPlayerYPosition+1]
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
    ld a, [wPlayerXPosition]
    add $1e
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    push hl
    ld a, [wPlayerXPosition]
    add $17
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld a, [wPlayerYPosition]
    add $0a
    ld l, a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld h, a
    ld a, l
    sub $0f
    ld l, a
    ld a, h
    sbc $00
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
    push hl
    ld a, [wPlayerYPosition]
    add $0a
    ld l, a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
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
    ld d, h
    ld e, l
    pop hl
    ret


Call_004_5af2:
    ld a, [wPlayerXPositionNearBoundary]
    add b
    ld l, a
    ld h, $00
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff94]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    push af
    ld a, [$c60b]
    add c
    ld l, a
    ld h, $00
    ldh a, [$ff91]
    ld e, a
    ldh a, [$ff92]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    ld c, $20
    call Multiply8Bit
    ld de, $9800
    add hl, de
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    ld a, [wPlayerFacingDirection]
    cp $00
    jr nz, jr_004_5b4b

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
    call Call_004_5af2
    ret


jr_004_5b4b:
    cp $01
    jr nz, jr_004_5b7c

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
    jr z, jr_004_5b6e

    cp $0c
    jr nc, jr_004_5b72

    cp $04
    jr nc, jr_004_5b76

jr_004_5b6e:
    ld b, $ec
    jr jr_004_5b78

jr_004_5b72:
    ld b, $dc
    jr jr_004_5b78

jr_004_5b76:
    ld b, $e4

jr_004_5b78:
    call Call_004_5af2
    ret


jr_004_5b7c:
    cp $02
    jr nz, jr_004_5bad

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
    jr z, jr_004_5ba3

    cp $0c
    jr nc, jr_004_5ba3

    cp $04
    jr nc, jr_004_5ba7

    ld b, $1c
    jr jr_004_5ba9

jr_004_5ba3:
    ld b, $0c
    jr jr_004_5ba9

jr_004_5ba7:
    ld b, $14

jr_004_5ba9:
    call Call_004_5af2
    ret


jr_004_5bad:
    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    sub $0d
    and $0f
    cp $00
    jr z, jr_004_5bd4

    cp $0b
    jr nc, jr_004_5bcc

    cp $03
    jr nc, jr_004_5bd0

    ld c, $e8
    jr jr_004_5bd6

jr_004_5bcc:
    ld c, $d8
    jr jr_004_5bd6

jr_004_5bd0:
    ld c, $e0
    jr jr_004_5bd6

jr_004_5bd4:
    ld c, $e8

jr_004_5bd6:
    call Call_004_5af2
    ret

DrawChickenFeedTrough0: ; 04x5bda
    ld hl, $98a2
    jr jr_004_5bec

DrawChickenFeedTrough1: ; 04x5bdf
    ld hl, $98a4
    jr jr_004_5bec

DrawChickenFeedTrough2: ; 04x5be4
    ld hl, $98a6
    jr jr_004_5bec

DrawChickenFeedTrough3: ; 04x5be9
    ld hl, $98a8

jr_004_5bec:
    call Call_004_5c04
    ld a, $27
    ld [hl+], a
    ld a, $28
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $37
    ld [hl+], a
    ld a, $38
    ld [hl], a
    ret


Call_004_5c04:
    push hl
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    pop hl
    ret

DrawChickenEgg0: ; 04x5c20
    ld hl, $99ee
    ld a, $00
    ld b, a
    jr jr_004_5c3e

DrawChickenEgg1: ; 04x5c28
    ld hl, $9962
    ld a, $01
    ld b, a
    jr jr_004_5c3e

DrawChickenEgg2: ; 04x5c30
    ld hl, $9930
    ld a, $02
    ld b, a
    jr jr_004_5c3e

DrawChickenEgg3: ; 04x5c38
    ld hl, $99f0
    ld a, $03
    ld b, a

jr_004_5c3e:
    ld a, $04
    ld [hl], a
    call Call_004_6465
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_004_6465
    ld a, $05
    ld [hl+], a
    call Call_004_6465
    ld a, $06
    ld [hl], a
    jr jr_004_5c7a

Call_004_5c5a:
    ld hl, $99f0
    ld a, $04
    ld b, a
    ld a, $f0
    ld [hl], a
    call Call_004_6472
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f1
    ld [hl+], a
    call Call_004_6472
    ld a, $f2
    ld [hl], a
    call Call_004_6472

jr_004_5c7a:
    ld hl, $5c7f
    ld a, b
    rst $00
    adc c
    ld e, h
    sub c
    ld e, h
    sbc c
    ld e, h
    and c
    ld e, h
    xor c
    ld e, h
    ld de, $011e
    ld bc, $0110
    jr jr_004_5caf

    ld de, $00ce
    ld bc, $0111
    jr jr_004_5caf

    ld de, $00ba
    ld bc, $0112
    jr jr_004_5caf

    ld de, $0120
    ld bc, $0113
    jr jr_004_5caf

    ld de, $0120
    ld bc, $0114

jr_004_5caf:
    ld hl, $d800
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret

DrawIncubatorContents: ; 04x5cb8
    ld hl, $99d1
    ld a, [sChickenIncubationState]
    cp $80
    jr nc, jr_004_5cec

    ld a, $a8
    ld [hl+], a
    ld a, $a9
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $aa
    ld [hl+], a
    ld a, $ab
    ld [hl], a
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld a, $04
    ld hl, $99d1
    ld [hl+], a
    ld [hl], a
    ld hl, $99f1
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ret


jr_004_5cec:
    ld a, $f3
    ld [hl+], a
    ld a, $f4
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f5
    ld [hl+], a
    ld a, $f6
    ld [hl], a
    ret

DrawChickenFeedPickup: ; 04x5d01
    ld hl, sInventory
    ld a, [hli]
    cp CHICKEN_FEED
    ret z

    ld a, [hl]
    cp CHICKEN_FEED
    ret z

    ld hl, $9931
    ld a, $66
    ld [hli], a
    ld a, $67
    ld [hli], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $76
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld de, $00bc
    ld hl, $d800
    add hl, de
    ld bc, $011e
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret

CheckPlayerChickCollisionDown: ; 04x5d32
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc e
    inc e
    inc b
    inc b
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5d91

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5d91

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5d91

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5d91

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5e57

jr_004_5d91:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_5dd2

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5dd2

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5dd2

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5dd2

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5e57

jr_004_5dd2:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_5e12

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5e12

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5e12

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5e12

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5e57

jr_004_5e12:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_5e52

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5e52

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5e52

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5e52

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5e57

jr_004_5e52:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_5e57:
jr_004_5e57:
    ld a, $01
    ldh [$ffa4], a
    ret

CheckPlayerChickCollisionUp: ; 04x5e5c
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    dec d
    dec d
    inc b
    inc b
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5ebb

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5ebb

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5ebb

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5ebb

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5f81

jr_004_5ebb:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_5efc

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5efc

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5efc

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5efc

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5f81

jr_004_5efc:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_5f3c

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5f3c

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5f3c

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5f3c

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5f81

jr_004_5f3c:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_5f7c

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5f7c

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5f7c

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5f7c

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5f81

jr_004_5f7c:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_5f81:
jr_004_5f81:
    ld a, $01
    ldh [$ffa4], a
    ret

CheckPlayerChickCollisionLeft: ; 04x5f86
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    dec b
    dec b
    inc d
    inc d
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5fe5

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_5fe5

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_5fe5

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5fe5

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_60ab

jr_004_5fe5:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_6026

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_6026

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_6026

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6026

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_60ab

jr_004_6026:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_6066

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_6066

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_6066

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6066

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_60ab

jr_004_6066:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_60a6

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_60a6

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_60a6

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_60a6

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_60ab

jr_004_60a6:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_60ab:
jr_004_60ab:
    ld a, $01
    ldh [$ffa4], a
    ret

CheckPlayerChickCollisionRight: ; 04x60b0
    ld a, [wPlayerXPosition]
    sub $08
    ld b, a
    ld a, [wPlayerXPosition]
    add $08
    ld c, a
    ld a, [wPlayerYPosition]
    sub $0a
    ld d, a
    ld a, [wPlayerYPosition]
    add $08
    ld e, a
    inc c
    inc c
    inc d
    inc d
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [hTemp], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_610f

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_610f

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_610f

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_610f

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_61d5

jr_004_610f:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_6150

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6150

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6150

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6150

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_61d5

jr_004_6150:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_6190

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6190

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6190

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6190

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_61d5

jr_004_6190:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_61d0

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_61d0

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_61d0

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_61d0

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_61d5

jr_004_61d0:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_61d5:
jr_004_61d5:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_61da:
    ld a, [wPlayerFacingDirection]
    rst $00
    rst $20
    ld h, c
    ld a, e
    ld h, d
    ld de, $a763
    ld h, e
    ret


    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
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
    push hl
    ld a, [wPlayerYPosition]
    ld l, a
    ld a, [wPlayerYPosition+1]
    ld h, a
    ld a, $18
    add l
    ld l, a
    ld a, $00
    adc h
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerYPosition]
    add $08
    ld l, a
    ld a, [wPlayerYPosition+1]
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
    ld a, [wPlayerXPosition]
    sub $18
    ld l, a
    ld a, [wPlayerXPosition+1]
    sbc $00
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
    push hl
    ld a, [wPlayerXPosition]
    sub $11
    ld l, a
    ld a, [wPlayerXPosition+1]
    sbc $00
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerYPosition]
    add $08
    ld l, a
    ld a, [wPlayerYPosition+1]
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
    ld a, [wPlayerXPosition]
    add $17
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    push hl
    ld a, [wPlayerXPosition]
    add $10
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [wPlayerXPosition]
    ld l, a
    ld a, [wPlayerXPosition+1]
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
    ld a, [wPlayerYPosition]
    add $02
    ld l, a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld h, a
    ld a, l
    sub $0f
    ld l, a
    ld a, h
    sbc $00
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
    push hl
    ld a, [wPlayerYPosition]
    add $02
    ld l, a
    ld a, [wPlayerYPosition+1]
    adc $00
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
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
    ld d, h
    ld e, l
    pop hl
    ret

ReturnDisplacedItemToShed: ; 04x6443
    ld a, [$cc21]
    cp $ff
    ret z

    ld c, a
    ld hl, Data_000_1b20
    ld b, $00

jr_004_644f:
    ld a, [hli]
    cp c
    jr z, jr_004_6456

    inc b
    jr jr_004_644f

jr_004_6456:
    ld a, b
    ld hl, sShedItemFlagList
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $01
    ld [hl], a
    ret


    ret


Call_004_6465:
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld a, $05
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ret


Call_004_6472:
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld a, $07
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ret


Call_004_647f:
    ld a, [$ba28]
    cp $ff
    ret z

    ld a, [$ba28]
    cp $00
    ret z

    ld a, [$ba2c]
    ld b, a
    ld a, [$ba2d]
    inc a
    inc a
    ld [$ba2d], a
    cp b
    jp c, Jump_004_6564

    xor a
    ld [$ba2d], a
    ld a, [$ba2b]
    cp $02
    jr nz, jr_004_6513

    ld a, [$cc59]
    ld hl, $64ad
    rst $00
    or l
    ld h, h
    call $e564
    ld h, h
    db $fd
    ld h, h
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $03
    jr nz, jr_004_64c8

    ld a, $00

jr_004_64c8:
    ld [$cc59], a
    jr jr_004_6513

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $02
    jr nz, jr_004_64e0

    ld a, $01

jr_004_64e0:
    ld [$cc59], a
    jr jr_004_6513

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $01
    jr nz, jr_004_64f8

    ld a, $02

jr_004_64f8:
    ld [$cc59], a
    jr jr_004_6513

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $00
    jr nz, jr_004_6510

    ld a, $03

jr_004_6510:
    ld [$cc59], a

jr_004_6513:
    call GetNextRandomByte
    ldh a, [$ff9c]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_004_6522

    add $60

jr_004_6522:
    sub $30
    ld [$ba2c], a
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $28
    jr c, jr_004_6553

    cp $3c
    jr c, jr_004_6545

    jr jr_004_653e

jr_004_653e:
    ld a, $00
    ld [$ba2b], a
    jr jr_004_6564

jr_004_6545:
    ld a, [$ba2b]
    cp $02
    jr z, jr_004_653e

    ld a, $01
    ld [$ba2b], a
    jr jr_004_6564

jr_004_6553:
    ld a, [$ba2b]
    cp $01
    jr z, jr_004_653e

    ld a, $02
    ld [$ba2b], a
    ld a, $20
    ld [$ba2c], a

Jump_004_6564:
jr_004_6564:
    ld a, [$ba2b]
    cp $02
    jr nz, jr_004_6571

    call Call_004_6601
    call Call_004_6956

jr_004_6571:
    ld hl, $6578
    ld a, [$ba2b]
    rst $00
    ld a, [hl]
    ld h, l
    sbc [hl]
    ld h, l
    or a
    ld h, l
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6590

    cp $02
    jr z, jr_004_6597

    ld a, $04
    call Call_000_18d0
    jr jr_004_65ce

jr_004_6590:
    ld a, $00
    call Call_000_18d0
    jr jr_004_65ce

jr_004_6597:
    ld a, $01
    call Call_000_18d0
    jr jr_004_65ce

    ld a, [$ba28]
    cp $01
    jr z, jr_004_6590

    cp $02
    jr z, jr_004_65b0

    ld a, $05
    call Call_000_18d0
    jr jr_004_65ce

jr_004_65b0:
    ld a, $02
    call Call_000_18d0
    jr jr_004_65ce

    ld a, [$ba28]
    cp $01
    jr z, jr_004_6590

    cp $02
    jr z, jr_004_65c9

    ld a, $06
    call Call_000_18d0
    jr jr_004_65ce

jr_004_65c9:
    ld a, $03
    call Call_000_18d0

jr_004_65ce:
    ld hl, $c880
    ld a, [wCurrentChickenIndex]
    add a
    add a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cc4e], a
    ld a, [hl+]
    ld [$cc4f], a
    ld a, [hl+]
    ld [$cc50], a
    ld a, [hl+]
    ld [$cc51], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$cc5d], a
    ret


Call_004_6601:
    ld hl, $6608
    ld a, [$cc59]
    rst $00
    db $10
    ld h, [hl]
    db $dd
    ld h, [hl]
    or a
    ld h, a
    adc l
    ld l, b
    ld a, [$cc52]
    add $07
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc52]
    add $07
    sub $07
    ld l, a
    ld a, [$cc53]
    sbc $00
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
    ldh [$ffa5], a
    ld a, [$cc52]
    add $07
    add $07
    ld l, a
    ld a, [$cc53]
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
    ldh [$ffa6], a
    ld a, [$cc54]
    ld l, a
    ld a, [$cc55]
    ld h, a
    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
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
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hli]
    ld [sNumShipments], a
    ld a, [hli]
    ld [$ba31], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc54]
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc54]
    add $07
    add $07
    ld l, a
    ld a, [$cc55]
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
    ldh [$ffa5], a
    ld a, [$cc54]
    add $07
    sub $07
    ld l, a
    ld a, [$cc55]
    sbc $00
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
    ldh [$ffa6], a
    ld a, [$cc52]
    add $07
    add $07
    sub $10
    ld l, a
    ld a, [$cc53]
    sbc $00
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
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [sNumShipments], a
    ld a, [hl+]
    ld [$ba31], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc54]
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc54]
    add $07
    sub $07
    ld l, a
    ld a, [$cc55]
    sbc $00
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
    ldh [$ffa5], a
    ld a, [$cc54]
    add $07
    add $07
    ld l, a
    ld a, [$cc55]
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
    ldh [$ffa6], a
    ld a, [$cc52]
    add $10
    ld l, a
    ld a, [$cc53]
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
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [sNumShipments], a
    ld a, [hl+]
    ld [$ba31], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc52]
    add $07
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc52]
    add $07
    add $07
    ld l, a
    ld a, [$cc53]
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
    ldh [$ffa5], a
    ld a, [$cc52]
    add $07
    sub $07
    ld l, a
    ld a, [$cc53]
    sbc $00
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
    ldh [$ffa6], a
    ld a, [$cc54]
    sub $02
    ld l, a
    ld a, [$cc55]
    sbc $00
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
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [sNumShipments], a
    ld a, [hl+]
    ld [$ba31], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


Call_004_6956:
    ld hl, $695d
    ld a, [$cc59]
    rst $00
    ld h, l
    ld l, c
    add a
    ld l, c
    xor c
    ld l, c
    jp z, $fa69

    inc sp
    cp d
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, .tryMoveDown

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, .tryMoveRight

    ld a, [$ba33]
    and $02
    jr z, .tryMoveLeft

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, .tryMoveLeft

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, .tryMoveUp

    ld a, [$ba33]
    and $02
    jr z, .tryMoveDown

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, .tryMoveRight

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, .tryMoveDown

    ld a, [$ba33]
    and $02
    jr z, .tryMoveUp

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, .tryMoveUp

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, .tryMoveLeft

    ld a, [$ba33]
    and $02
    jr z, .tryMoveRight

    ret

.tryMoveDown
    call Call_004_6a4b
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc54]
    add $01
    ld [$cc54], a
    ld a, [$cc55]
    adc $00
    ld [$cc55], a
    ret

.tryMoveLeft
    call Call_004_6afd
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc52]
    sub $01
    ld [$cc52], a
    ld a, [$cc53]
    sbc $00
    ld [$cc53], a
    ret

.tryMoveRight
    call Call_004_6b56
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc52]
    add $01
    ld [$cc52], a
    ld a, [$cc53]
    adc $00
    ld [$cc53], a
    ret

.tryMoveUp
    call Call_004_6aa4
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc54]
    sub $01
    ld [$cc54], a
    ld a, [$cc55]
    sbc $00
    ld [$cc55], a
    ret


Call_004_6a4b:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6a9a

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [wPlayerXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [wPlayerXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [wPlayerYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [wPlayerYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6a9a

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_6a9a

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6a9a

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_6a9f

jr_004_6a9a:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6a9f:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6aa4:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6af3

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [wPlayerXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [wPlayerXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [wPlayerYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [wPlayerYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_6af3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_6af3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6af3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_6af8

jr_004_6af3:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6af8:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6afd:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6b4c

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [wPlayerXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [wPlayerXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [wPlayerYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [wPlayerYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_6b4c

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_6b4c

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6b4c

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6b51

jr_004_6b4c:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6b51:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6b56:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6ba5

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [wPlayerXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [wPlayerXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [wPlayerYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [wPlayerYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6ba5

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6ba5

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6ba5

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6baa

jr_004_6ba5:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6baa:
    ld a, $01
    ldh [$ffa4], a
    ret

InitializeChickenCoopChickens:
    ld a, $00
    ld [wCurrentChickenIndex], a
    ld a, $00
    ld [$c88d], a
    ld a, [$b9a7]
    cp $ff
    jr nz, jr_004_6bc7

    ld a, $00
    ld [$c880], a
    jr jr_004_6bf5

jr_004_6bc7:
    ld hl, $c886
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $54
    ld [hl], a
    ld hl, $6be3
    ld a, [$b9a7]
    rst $00
    pop hl
    ld l, h
    db $ec
    ld l, h
    rst $30
    ld l, h
    ld [bc], a
    ld l, l

Jump_004_6beb:
    ld a, $01
    ld [$c880], a
    ld a, $14
    ld [$c881], a

jr_004_6bf5:
    ld a, $01
    ld [wCurrentChickenIndex], a
    ld a, $00
    ld [$c8ad], a
    ld a, [$b9b3]
    cp $ff
    jr nz, jr_004_6c0d

    ld a, $00
    ld [$c8a0], a
    jr jr_004_6c3b

jr_004_6c0d:
    ld hl, $c8a6
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $58
    ld [hl+], a
    ld a, $44
    ld [hl], a
    ld hl, $6c29
    ld a, [$b9b3]
    rst $00
    dec c
    ld l, l
    jr @+$6f

    inc hl
    ld l, l
    ld l, $6d

Jump_004_6c31:
    ld a, $01
    ld [$c8a0], a
    ld a, $15
    ld [$c8a1], a

jr_004_6c3b:
    ld a, $02
    ld [wCurrentChickenIndex], a
    ld a, $00
    ld [$c8cd], a
    ld a, [$b9bf]
    cp $ff
    jr nz, jr_004_6c53

    ld a, $00
    ld [$c8c0], a
    jr jr_004_6c81

jr_004_6c53:
    ld hl, $c8c6
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $54
    ld [hl], a
    ld hl, $6c6f
    ld a, [$b9bf]
    rst $00
    add hl, sp
    ld l, l
    ld b, h
    ld l, l
    ld c, a
    ld l, l
    ld e, d
    ld l, l

Jump_004_6c77:
    ld a, $01
    ld [$c8c0], a
    ld a, $16
    ld [$c8c1], a

jr_004_6c81:
    ld a, $03
    ld [wCurrentChickenIndex], a
    ld a, $00
    ld [$c8ed], a
    ld a, [$b9cb]
    cp $ff
    jr nz, jr_004_6c99

    ld a, $00
    ld [$c8e0], a
    jr jr_004_6cc7

jr_004_6c99:
    ld hl, $c8e6
    ld a, $28
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $34
    ld [hl], a
    ld hl, $6cb5
    ld a, [$b9cb]
    rst $00
    ld h, l
    ld l, l
    ld [hl], b
    ld l, l
    ld a, e
    ld l, l
    add [hl]
    ld l, l

Jump_004_6cbd:
    ld a, $01
    ld [$c8e0], a
    ld a, $17
    ld [$c8e1], a

jr_004_6cc7:
    call UpdateChicken0ScreenPosition
    call UpdateChicken1ScreenPosition
    call UpdateChicken2ScreenPosition
    call UpdateChicken3ScreenPosition
    xor a
    ld [$c88e], a
    ld [$c8ae], a
    ld [$c8ce], a
    ld [$c8ee], a
    ret


    ld a, $00
    ld [$b9a7], a
    call Call_004_6d91
    jp Jump_004_6beb


    ld a, $01
    ld [$b9a7], a
    call Call_004_6d97
    jp Jump_004_6beb


    ld a, $02
    ld [$b9a7], a
    call Call_004_6d9d
    jp Jump_004_6beb


    ld a, $03
    ld [$b9a7], a
    call Call_004_6da3
    jp Jump_004_6beb


    ld a, $00
    ld [$b9b3], a
    call Call_004_6d91
    jp Jump_004_6c31


    ld a, $01
    ld [$b9b3], a
    call Call_004_6d97
    jp Jump_004_6c31


    ld a, $02
    ld [$b9b3], a
    call Call_004_6d9d
    jp Jump_004_6c31


    ld a, $03
    ld [$b9b3], a
    call Call_004_6da3
    jp Jump_004_6c31


    ld a, $00
    ld [$b9bf], a
    call Call_004_6d91
    jp Jump_004_6c77


    ld a, $01
    ld [$b9bf], a
    call Call_004_6d97
    jp Jump_004_6c77


    ld a, $02
    ld [$b9bf], a
    call Call_004_6d9d
    jp Jump_004_6c77


    ld a, $03
    ld [$b9bf], a
    call Call_004_6da3
    jp Jump_004_6c77


    ld a, $00
    ld [$b9cb], a
    call Call_004_6d91
    jp Jump_004_6cbd


    ld a, $01
    ld [$b9cb], a
    call Call_004_6d97
    jp Jump_004_6cbd


    ld a, $02
    ld [$b9cb], a
    call Call_004_6d9d
    jp Jump_004_6cbd


    ld a, $03
    ld [$b9cb], a
    call Call_004_6da3
    jp Jump_004_6cbd


Call_004_6d91:
    ld a, $00
    call Call_000_18d0
    ret


Call_004_6d97:
    ld a, $00
    call Call_000_18d0
    ret


Call_004_6d9d:
    ld a, $01
    call Call_000_18d0
    ret


Call_004_6da3:
    ld a, $04
    call Call_000_18d0
    ret

; $ff - Empty slot
; $01 - chick
; $02 - adult chicken
; $03 - alternate adult chicken type
; $00 - special/inactive state; not identified yet
UpdateChickenDailyState: ; 04x6da9
    ld hl, $b9a7
    ld b, $00
    ld a, [sChickenFeedingFlags]
    bit 4, a
    call nz, Call_004_6e37
    ld a, [sChickenFeedingFlags]
    bit 5, a
    call nz, Call_004_6e37
    ld a, [sChickenFeedingFlags]
    bit 6, a
    call nz, Call_004_6e37
    ld a, [sChickenFeedingFlags]
    bit 7, a
    call nz, Call_004_6e37
    ld a, b
    cp $04
    call c, Call_004_6e7a
    xor a
    ld [sChickenEggFlags], a
    ld a, $00
    ldh [$ffa5], a
    ld a, $00
    ldh [$ffa4], a
    call UpdateChickenGrowthAndEggProduction
    ld a, $01
    ldh [$ffa4], a
    call UpdateChickenGrowthAndEggProduction
    ld a, $02
    ldh [$ffa4], a
    call UpdateChickenGrowthAndEggProduction
    ld a, $03
    ldh [$ffa4], a
    call UpdateChickenGrowthAndEggProduction
    xor a
    ld [sChickenFeedingFlags], a
    ld hl, sChickenIncubationState
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    ld a, [hl]
    jr z, jr_004_6e0a

    xor $80
    ret nz

jr_004_6e0a:
    ldh a, [$ffa5]
    cp $04
    jr c, jr_004_6e12

    inc [hl]
    ret


jr_004_6e12:
    ld hl, $b9a7
    ld a, [hl]
    cp $ff
    jr z, jr_004_6e2d

    ld hl, $b9b3
    ld a, [hl]
    cp $ff
    jr z, jr_004_6e2d

    ld hl, $b9bf
    ld a, [hl]
    cp $ff
    jr z, jr_004_6e2d

    ld hl, $b9cb

jr_004_6e2d:
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [sChickenIncubationState], a
    ret

Call_004_6e37:
    ld a, b
    cp $04
    ret z
    ld d, h
    ld e, l
    ld c, b
jr_004_6e3e:
    ld a, [hl]
    cp $02
    jr z, jr_004_6e5a
    cp $03
    jr z, jr_004_6e5a
    inc c
    ld a, c
    cp $04
    jr z, jr_004_6e57
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_004_6e3e
jr_004_6e57:
    ld h, d
    ld l, e
    ret
jr_004_6e5a:
    inc hl
    inc hl
    ld a, [hl]
    cp $00
    jr z, jr_004_6e6e
    dec hl
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_004_6e6d
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_6e6e
jr_004_6e6d:
    inc hl
jr_004_6e6e:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc b
    ret


Call_004_6e7a:
jr_004_6e7a:
    ld a, b
    cp $04
    ret z

    ld a, [hl]
    cp $02
    jr z, jr_004_6e92

    cp $03
    jr z, jr_004_6e92

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc b
    jr jr_004_6e7a

jr_004_6e92:
    inc hl
    xor a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc b
    jr jr_004_6e7a

UpdateChickenGrowthAndEggProduction: ; 04x63a4
    ldh a, [$ffa4]
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [hl]
    cp $ff
    jr z, jr_004_6f2b

    ldh a, [$ffa5]
    inc a
    ldh [$ffa5], a
    ld a, [hl]
    cp $00
    ret z

    cp $01
    jr z, jr_004_6f1c

    ld a, $02
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    ret z

    ldh a, [$ffa4]
    ld hl, $6ed0
    rst $00
    ret c

    ld l, [hl]
    pop hl
    ld l, [hl]
    ld [$ff6e], a
    ld l, [hl]
    ld a, [sChickenEggFlags]
    set 0, a
    ld [sChickenEggFlags], a
    ret


    ld a, [sChickenEggFlags]
    set 1, a
    ld [sChickenEggFlags], a
    ret


    ld a, [sChickenEggFlags]
    set 2, a
    ld [sChickenEggFlags], a
    ld a, [$b9a3]
    or a
    ld a, $01
    ld [$b9a3], a
    ld [$b88f], a
    ret


    ld a, [sChickenEggFlags]
    set 3, a
    ld [sChickenEggFlags], a
    ldh a, [$ffa4]
    ld hl, Label_004_6f37
    call LoadWordFromTableHL
    ld a, [hl]
    cp $03
    ret nz

    ld a, [sChickenEggFlags]
    set 4, a
    ld [sChickenEggFlags], a
    ret


jr_004_6f1c:
    inc hl
    ld a, [hl]
    cp $07
    jr c, jr_004_6f29

    xor a
    ld [hl], a
    dec hl
    ld a, $02
    ld [hl], a
    ret


jr_004_6f29:
    inc [hl]
    ret


jr_004_6f2b:
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret

Label_004_6f37:
    db $A7, $B9, $B3, $B9, $BF, $B9, $CB, $B9

Call_004_6f3f:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    ld a, [sChickenFeedingFlags]
    bit 0, a
    jr z, jr_004_6f51

    set 4, a
    ld [sChickenFeedingFlags], a

jr_004_6f51:
    ld a, [sChickenFeedingFlags]
    bit 1, a
    jr z, jr_004_6f5d

    set 5, a
    ld [sChickenFeedingFlags], a

jr_004_6f5d:
    ld a, [sChickenFeedingFlags]
    bit 2, a
    jr z, jr_004_6f69

    set 6, a
    ld [sChickenFeedingFlags], a

jr_004_6f69:
    ld a, [sChickenFeedingFlags]
    bit 3, a
    ret z

    set 7, a
    ld [sChickenFeedingFlags], a
    ret

ChickenCoopBackgroundMap: ; 04x6f75
    INCBIN "gfx/chicken_coop/coop_bg_map.compressed.bin"
ChickenCoopBackgroundMapEnd:

ChickenCoopBackgroundTiles2: ; 04x70b1
    INCBIN "gfx/chicken_coop/coop_tiles_9000.compressed.bin"
ChickenCoopBackgroundTiles2End:

ChickenCoopBackgroundTiles1: ; 04x76c1
    INCBIN "gfx/chicken_coop/coop_tiles_8800.compressed.bin"
ChickenCoopBackgroundTiles1End:

ChickenCoopSpriteGraphics: ; 04x7b0c
    INCBIN "gfx/chicken_coop/coop_sprite_tiles_8000.compressed.bin"
ChickenCoopSpriteGraphicsEnd:

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7fcc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
