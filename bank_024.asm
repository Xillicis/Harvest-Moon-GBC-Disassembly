; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    inc h
    xor a
    ld [wPetIsPresentOnMap], a
    ld [$c780], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    ld hl, $769e
    ld c, $24
    ld de, $8800
    call DrawMaskedClippedTile
    ld hl, $7004
    ld c, $24
    ld de, $9000
    call DrawMaskedClippedTile
    ld hl, $7b5f
    ld c, $24
    ld de, $8000
    call DrawMaskedClippedTile
    ld a, $08
    ld [$cb5c], a
    ld a, $07
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6ec8
    ld c, $24
    ld de, $9800
    call DrawMaskedClippedTile
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
    call Call_024_4729
    call Call_000_1221
    call Call_024_46b7
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_024_6b02
    ld a, [$b9a6]
    bit 0, a
    call nz, Call_024_5b8d
    ld a, [$b9a6]
    bit 1, a
    call nz, Call_024_5b92
    ld a, [$b9a6]
    bit 2, a
    call nz, Call_024_5b97
    ld a, [$b9a6]
    bit 3, a
    call nz, Call_024_5b9c
    ld a, [$b9a4]
    bit 0, a
    call nz, Call_024_5bb4
    ld a, [$b9a4]
    bit 1, a
    call nz, Call_024_5bbc
    ld a, [$b9a4]
    bit 2, a
    call nz, Call_024_5bc4
    ld a, [$b9a4]
    bit 3, a
    call nz, Call_024_5bcc
    ld a, [$b9a4]
    bit 4, a
    call nz, Call_024_5be5
    ld a, [$b9a5]
    cp $00
    call nz, Call_024_5c3a
    ld a, [sChickenFeedFlag]
    or a
    call nz, Call_024_5c6e
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
    call Call_000_0ece
    call Call_000_3dfd
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3cf8
    call Call_024_4290
    call Call_000_2d67
    call LoadCharacterTileIntoVRAM
    ld hl, $6a38
    ld a, $21
    call BankSwitchCallHL
    call Call_024_4240
    call Call_024_4254
    call Call_024_4268
    call Call_024_427c
    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    ld hl, $414a
    ld a, [$cc1f]
    rst $00
    ld d, d
    ld b, c
    adc l
    ld b, c
    ret


    ld b, c
    inc b
    ld b, d
    ld a, $00
    ld [$cc1f], a
    ld hl, $b9a7
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c880
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_024_63d2
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
    ld [$cc1f], a
    ld a, $01
    ld [$cc1f], a
    ld hl, $b9b3
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8a0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_024_63d2
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
    ld [$cc1f], a
    ret


    ld a, $02
    ld [$cc1f], a
    ld hl, $b9bf
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8c0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_024_63d2
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
    ld [$cc1f], a
    ld a, $03
    ld [$cc1f], a
    ld hl, $b9cb
    ld de, $ba28
    ld a, $0c
    ld b, a
    call CopyHLtoDE
    ld hl, $c8e0
    ld de, $cc4c
    ld b, $20
    call CopyHLtoDE
    call Call_024_63d2
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
    ld [$cc1f], a
    ret


Call_024_4240:
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


Call_024_4254:
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


Call_024_4268:
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


Call_024_427c:
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


Call_024_4290:
    ld a, [wFreezePlayerWhenEnteringNewMap]
    or a
    ret nz

    ld a, [wPlayerIdleWhenExitingCurrentMap]
    or a
    ret nz

    ld a, [wFreezePlayerInTextWindowOrInTown]
    or a
    ret nz

    call Call_024_4673
    call Call_024_5555
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ldh a, [$ff8b]
    and $01
    jr z, jr_024_42b8

    call Call_024_4c3d
    ret


jr_024_42b8:
    ldh a, [$ff8a]
    and $02
    jr z, jr_024_42d5

    call Call_024_43e6
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_024_42d4

    ld a, [$c605]
    cp $08
    jr nz, jr_024_42d4

    ld a, $34
    call Call_000_25ce

jr_024_42d4:
    ret


jr_024_42d5:
    ldh a, [$ff8b]
    and $08
    jr z, jr_024_42df

    call Call_000_1923
    ret


jr_024_42df:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_024_4306

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_024_433e

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_024_4376

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_024_43ae

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_024_4306:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call $4745
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_433a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_024_44f4

    ld a, [wcb32]
    and $01
    jp z, Jump_024_4507

    ret


jr_024_433a:
    call Call_024_4540
    ret


Jump_024_433e:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_024_4881
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_4372

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_024_44f4

    ld a, [wcb32]
    and $01
    jp z, Jump_024_4507

    ret


jr_024_4372:
    call Call_024_4573
    ret


Jump_024_4376:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_024_49bd
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_43aa

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_024_451a

    ld a, [wcb32]
    and $01
    jp z, Jump_024_452d

    ret


jr_024_43aa:
    call Call_024_45a1
    ret


Jump_024_43ae:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_024_4af9
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_43e2

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_024_451a

    ld a, [wcb32]
    and $01
    jp z, Jump_024_452d

    ret


jr_024_43e2:
    call Call_024_4611
    ret


Call_024_43e6:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_024_4400

    ldh a, [$ff8a]
    and $20
    jr nz, jr_024_4404

    ldh a, [$ff8a]
    and $10
    jr nz, jr_024_4408

    ldh a, [$ff8a]
    and $40
    jr nz, jr_024_440c

    jr jr_024_4411

jr_024_4400:
    ld a, $00
    jr jr_024_440e

jr_024_4404:
    ld a, $01
    jr jr_024_440e

jr_024_4408:
    ld a, $02
    jr jr_024_440e

jr_024_440c:
    ld a, $03

jr_024_440e:
    ld [wPlayerFacingDirection], a

jr_024_4411:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_024_4457

    cp $01
    jr z, jr_024_448c

    cp $02
    jp z, Jump_024_44c0

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_024_4881
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_4450

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_024_44f4

    ld a, [wcb32]
    and $01
    jp z, Jump_024_4507

    ret


jr_024_4450:
    call Call_024_4573
    call Call_024_4573
    ret


jr_024_4457:
    ld a, $02
    call RST_TableJumpBankSwitch
    call $4745
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_4485

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_024_44f4

    ld a, [wcb32]
    and $01
    jp z, Jump_024_4507

    ret


jr_024_4485:
    call Call_024_4540
    call Call_024_4540
    ret


jr_024_448c:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_024_49bd
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_44b9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_024_451a

    ld a, [wcb32]
    and $01
    jr z, jr_024_452d

    ret


jr_024_44b9:
    call Call_024_45a1
    call Call_024_45a1
    ret


Jump_024_44c0:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_024_4af9
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_024_44ed

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_024_451a

    ld a, [wcb32]
    and $01
    jr z, jr_024_452d

    ret


jr_024_44ed:
    call Call_024_4611
    call Call_024_4611
    ret


Jump_024_44f4:
jr_024_44f4:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_150b
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_024_45a1
    ret


Jump_024_4507:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1514
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_024_4611
    ret


Jump_024_451a:
jr_024_451a:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_1502
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_024_4573
    ret


Jump_024_452d:
jr_024_452d:
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [wDominantFacingTileProperty]
    and $01
    ret nz

    call Call_024_4540
    ret


Call_024_4540:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $83
    jr nc, jr_024_4568

    ld a, [wPlayerYPosition]
    cp $5c
    jr nc, jr_024_4554

    jr jr_024_4561

jr_024_4554:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_024_455c:
    ld hl, wPlayerYPosition
    inc [hl]
    ret


jr_024_4561:
    ld hl, $c60b
    inc [hl]
    jr jr_024_455c

    ret


jr_024_4568:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, $18
    ld [wMapChangeFreezeTimer], a
    ret


Call_024_4573:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerYPosition]
    cp $0e
    ret c

    ld a, [wPlayerYPosition]
    cp $5d
    jr nc, jr_024_458d

    ld a, [wPlayerYPosition]
    cp $08
    jr c, jr_024_459a

    jr jr_024_459a

jr_024_458d:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_024_4595:
    ld hl, wPlayerYPosition
    dec [hl]
    ret


jr_024_459a:
    ld hl, $c60b
    dec [hl]
    jr jr_024_4595

    ret


Call_024_45a1:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_024_45df

    cp $01
    jr z, jr_024_45e8

    ld a, [wPlayerXPosition]
    cp $b9
    jr nc, jr_024_45d8

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_024_45cb

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_024_45d8

jr_024_45cb:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_024_45d3:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_024_45d8:
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    jr jr_024_45d3

    ret


jr_024_45df:
    ld hl, wPlayerXPosition
    dec [hl]
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    ret


jr_024_45e8:
    ld a, [wPlayerXPosition]
    cp $99
    jr nc, jr_024_460a

    ld a, [wPlayerXPosition+1]
    cp $00
    jr nz, jr_024_45fd

    ld a, [wPlayerXPosition]
    cp $59
    jr c, jr_024_460a

jr_024_45fd:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_024_4605:
    ld hl, wPlayerXPosition
    dec [hl]
    ret


jr_024_460a:
    ld hl, wPlayerXPositionNearBoundary
    dec [hl]
    jr jr_024_4605

    ret


Call_024_4611:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [wPlayerXPosition]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_024_4648

    cp $01
    jr z, jr_024_4651

    ld a, [wPlayerXPosition]
    cp $b8
    jr nc, jr_024_4641

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_024_4641

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_024_463c:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_024_4641:
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    jr jr_024_463c

    ret


jr_024_4648:
    ld hl, wPlayerXPosition
    inc [hl]
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    ret


jr_024_4651:
    ld a, [wPlayerXPosition]
    cp $98
    jr nc, jr_024_466c

    ld a, [wPlayerXPosition]
    cp $58
    jr c, jr_024_466c

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_024_4667:
    ld hl, wPlayerXPosition
    inc [hl]
    ret


jr_024_466c:
    ld hl, wPlayerXPositionNearBoundary
    inc [hl]
    jr jr_024_4667

    ret


Call_024_4673:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [wMapChangeFreezeTimer]
    or a
    ret z

    dec a
    ld [wMapChangeFreezeTimer], a
    cp $00
    jr z, jr_024_4687

    pop hl
    ret


jr_024_4687:
    ld a, [$cc4a]
    cp $ff
    jr z, jr_024_46a4

    ld hl, $6e8a
    call LoadWordFromTableHL
    ld a, [hl]
    cp $ff
    jr nz, jr_024_46a4

    ld a, [$cc4b]
    ld [hl], a
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a

jr_024_46a4:
    call Call_024_6e92
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [wPlayerIdleWhenExitingCurrentMap], a
    ld a, $02
    ld [$c910], a
    ret


Call_024_46b7:
    ld hl, vBGMap1
    ld de, $46c5
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

Call_024_4729:
    ld hl, $4735
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0058], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $fa00
    ld b, $c6
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
    jr z, jr_024_47aa

    cp $ff
    jr z, jr_024_47aa

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
    jr nc, jr_024_47aa

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_47aa

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_47aa

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_487c

jr_024_47aa:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_024_47ef

    cp $ff
    jr z, jr_024_47ef

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
    jr nc, jr_024_47ef

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_47ef

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_47ef

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_487c

jr_024_47ef:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_024_4833

    cp $ff
    jr z, jr_024_4833

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
    jr nc, jr_024_4833

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_4833

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_4833

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_487c

jr_024_4833:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_024_4877

    cp $ff
    jr z, jr_024_4877

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
    jr nc, jr_024_4877

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_4877

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_4877

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_487c

jr_024_4877:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_487c:
jr_024_487c:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_4881:
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
    jr z, jr_024_48e6

    cp $ff
    jr z, jr_024_48e6

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
    jr c, jr_024_48e6

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_48e6

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_48e6

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_49b8

jr_024_48e6:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_024_492b

    cp $ff
    jr z, jr_024_492b

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
    jr c, jr_024_492b

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_492b

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_492b

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_49b8

jr_024_492b:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_024_496f

    cp $ff
    jr z, jr_024_496f

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
    jr c, jr_024_496f

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_496f

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_496f

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_49b8

jr_024_496f:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_024_49b3

    cp $ff
    jr z, jr_024_49b3

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
    jr c, jr_024_49b3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_49b3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_49b3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_49b8

jr_024_49b3:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_49b8:
jr_024_49b8:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_49bd:
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
    jr z, jr_024_4a22

    cp $ff
    jr z, jr_024_4a22

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
    jr c, jr_024_4a22

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_4a22

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4a22

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_4af4

jr_024_4a22:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_024_4a67

    cp $ff
    jr z, jr_024_4a67

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
    jr c, jr_024_4a67

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_4a67

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4a67

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_4af4

jr_024_4a67:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_024_4aab

    cp $ff
    jr z, jr_024_4aab

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
    jr c, jr_024_4aab

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_4aab

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4aab

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_4af4

jr_024_4aab:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_024_4aef

    cp $ff
    jr z, jr_024_4aef

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
    jr c, jr_024_4aef

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_4aef

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4aef

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_4af4

jr_024_4aef:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_4af4:
jr_024_4af4:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_4af9:
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
    jr z, jr_024_4b5e

    cp $ff
    jr z, jr_024_4b5e

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
    jr nc, jr_024_4b5e

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_4b5e

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4b5e

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_4c30

jr_024_4b5e:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_024_4ba3

    cp $ff
    jr z, jr_024_4ba3

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
    jr nc, jr_024_4ba3

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_4ba3

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4ba3

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_4c30

jr_024_4ba3:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_024_4be7

    cp $ff
    jr z, jr_024_4be7

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
    jr nc, jr_024_4be7

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_4be7

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4be7

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_4c30

jr_024_4be7:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_024_4c2b

    cp $ff
    jr z, jr_024_4c2b

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
    jr nc, jr_024_4c2b

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_4c2b

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_4c2b

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_4c30

jr_024_4c2b:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_4c30:
jr_024_4c30:
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

Call_024_4c3d:
    ld a, [wHeldObject]
    or a
    jp nz, Jump_024_4f68

    ld hl, $4c4b
    ld a, [wPlayerFacingDirection]
    rst $00
    ld d, e
    ld c, h
    ld e, b
    ld c, h
    ld e, l
    ld c, h
    ld h, d
    ld c, h
    call $4745
    jr jr_024_4c65

    call Call_024_49bd
    jr jr_024_4c65

    call Call_024_4af9
    jr jr_024_4c65

    call Call_024_4881

jr_024_4c65:
    ldh a, [$ffa4]
    or a
    jr z, jr_024_4ccb

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [hTemp]
    ld [$cc4a], a
    ld hl, $6e8a
    call LoadWordFromTableHL
    ld a, $ff
    ld [hl], a
    ldh a, [hTemp]
    ld hl, $4cc3
    call LoadWordFromTableHL
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    cp $03
    jr z, jr_024_4ca9

    ld a, $27
    ld [wHeldObject], a
    ld a, $74
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_024_4ca9:
    ld a, $28
    ld [wHeldObject], a
    ld a, $75
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


    add b
    ret z

    and b
    ret z

    ret nz

    ret z

    ldh [$ffc8], a

jr_024_4ccb:
    ld hl, $4cd2
    ld a, [wPlayerFacingDirection]
    rst $00
    jp c, $df4c

    ld c, h
    db $e4
    ld c, h
    jp hl


    ld c, h
    call Call_024_5c9f
    jr jr_024_4cec

    call Call_024_5ef3
    jr jr_024_4cec

    call Call_024_601d
    jr jr_024_4cec

    call Call_024_5dc9

jr_024_4cec:
    ldh a, [$ffa4]
    or a
    jr z, jr_024_4d2c

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [hTemp]
    ld [$cc4a], a
    ld hl, $6e8a
    call LoadWordFromTableHL
    ld a, $ff
    ld [hl], a
    ldh a, [hTemp]
    ld hl, $4cc3
    call LoadWordFromTableHL
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    ld a, $26
    ld [wHeldObject], a
    ld a, $73
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_024_4d2c:
    ld a, [wPlayerInteractingInTextFlag]
    cp $00
    jr z, jr_024_4d34

    ret


jr_024_4d34:
    ld a, [wCollisionNoMovement]
    or a
    jp z, Jump_024_4f48

    ld a, [wDominantFacingTileID]
    cp $05
    jr z, jr_024_4d8b

    cp $06
    jr z, jr_024_4d96

    cp $07
    jr z, jr_024_4da1

    cp $08
    jr z, jr_024_4dac

    cp $1e
    jr z, jr_024_4db7

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_024_4e4d

    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
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

    call Call_024_583c
    ld a, [de]
    cp $03
    jp z, Jump_024_502b

    ld a, $04
    ld [$cc20], a
    ret


jr_024_4d8b:
    ld a, $a2
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_024_4d96:
    ld a, $a4
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_024_4da1:
    ld a, $a3
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_024_4dac:
    ld a, $a5
    call InitializeTextIDAndDisplay
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_024_4db7:
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, jr_024_4df5

    cp $01
    jr z, jr_024_4de0

    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_024_4de0

    ld a, [sInventory]
    ld [$cc21], a
    call Call_024_63b0
    ld a, $11
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_024_4e0e

jr_024_4de0:
    ld a, [sInventory+1]
    ld [$cc21], a
    call Call_024_63b0
    ld a, $11
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_024_4e0e

jr_024_4df5:
    ld a, [sInventory]
    cp NO_ITEM
    jr nz, jr_024_4de0

    ld a, [sInventory]
    ld [$cc21], a
    call Call_024_63b0
    ld a, $11
    ld [sInventory], a
    xor a
    ld [sItemSlot], a

jr_024_4e0e:
    xor a
    ld [sChickenFeedFlag], a
    ld [wDominantFacingTileProperty], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $11
    call $16d1
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


Jump_024_4e4d:
    ld a, [wDominantFacingTileID]
    cp $10
    jr z, jr_024_4e99

    cp $11
    jr z, jr_024_4eae

    cp $12
    jr z, jr_024_4ec3

    cp $13
    jp z, Jump_024_4ed8

    cp $14
    jp z, Jump_024_4f10

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
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_024_4e99:
    ld a, [$b9a4]
    res 0, a
    ld [$b9a4], a
    ld a, $00
    ld [$cc18], a
    ld hl, $d91e
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_024_4eed

jr_024_4eae:
    ld a, [$b9a4]
    res 1, a
    ld [$b9a4], a
    ld a, $01
    ld [$cc18], a
    ld hl, $d8ce
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_024_4eed

jr_024_4ec3:
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a
    ld a, $02
    ld [$cc18], a
    ld hl, $d8ba
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_024_4eed

Jump_024_4ed8:
    ld a, [$b9a4]
    res 3, a
    res 4, a
    ld [$b9a4], a
    ld a, $03
    ld [$cc18], a
    ld hl, $d920
    xor a
    ld [hl+], a
    ld [hl], a

jr_024_4eed:
    ld a, $24
    ld [wHeldObject], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $29
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


Jump_024_4f10:
    ld a, [$b9a4]
    res 3, a
    res 4, a
    ld [$b9a4], a
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
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


Jump_024_4f48:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_024_4e4d

    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
    ld a, $04
    ld [$cc20], a
    ret


Jump_024_4f68:
    call Call_024_4f6c
    ret


Call_024_4f6c:
    ld a, [wHeldObject]
    ld hl, $4f73
    rst $00
    rst $10
    ld c, a
    ret c

    ld c, a
    pop af
    ld c, a
    pop af
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ldh a, [c]
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ldh a, [$ff50]
    ld b, c
    ld d, c
    sub d
    ld d, c
    sub d
    ld d, d
    halt
    ld d, e
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld a, $33
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_024_583c
    ld a, [de]
    cp $03
    jr z, jr_024_5013

    xor a
    ld [wHeldObject], a
    ld a, $1c
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_024_5013:
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_024_583c
    ld a, [de]
    cp $03
    jr z, jr_024_502b

    ret


Jump_024_502b:
jr_024_502b:
    ld a, [wPlayerFacingDirection]
    ld a, [wPlayerXPosition]
    cp $29
    jr c, jr_024_503f

    cp $39
    jr c, jr_024_5064

    cp $49
    jr c, jr_024_5089

    jr jr_024_50ae

jr_024_503f:
    ld a, [wHeldObject]
    cp $20
    jr z, jr_024_5055

    ld a, $00
    ld [$cc20], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_5055:
    ld a, $00
    ld [$cc18], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_5064:
    ld a, [wHeldObject]
    cp $20
    jr z, jr_024_507a

    ld a, $01
    ld [$cc20], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_507a:
    ld a, $01
    ld [$cc18], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_5089:
    ld a, [wHeldObject]
    cp $20
    jr z, jr_024_509f

    ld a, $02
    ld [$cc20], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_509f:
    ld a, $02
    ld [$cc18], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_50ae:
    ld a, [wHeldObject]
    cp $20
    jr z, jr_024_50c4

    ld a, $03
    ld [$cc20], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a
    jr jr_024_50d1

jr_024_50c4:
    ld a, $03
    ld [$cc18], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a

jr_024_50d1:
    ld a, [wHeldObject]
    cp $20
    jr z, jr_024_50e0

    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


jr_024_50e0:
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
    call Call_024_583c
    ld a, [de]
    cp $02
    jr z, jr_024_5118

    cp $09
    jr z, jr_024_5118

    ld a, $2a
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_024_5118:
    ld a, $29
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_024_583c
    ld a, [de]
    cp $02
    jp z, Jump_024_545a

    ld a, $04
    ld [$b9a5], a
    ld a, $00
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_024_546d

    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wDominantFacingTileID], a
    call Call_024_583c
    ld a, [de]
    cp $02
    jr z, jr_024_5169

    cp $09
    jr z, jr_024_5169

    ld a, $72
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_024_5169:
    ld a, $71
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_024_583c
    ld a, [de]
    cp $02
    jp z, Jump_024_545a

    ld a, $84
    ld [$b9a5], a
    ld a, $01
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_024_546d

    ret


    call Call_024_6147
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $73
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, $6e8a
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
    ld hl, $4cc3
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
    ld hl, $51ff
    rst $00
    rlca
    ld d, d
    inc h
    ld d, d
    dec sp
    ld d, d
    ld d, d
    ld d, d
    ld a, [$cc4a]
    ld hl, $4cc3
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
    jr jr_024_526d

    ld a, [$cc4a]
    ld hl, $4cc3
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
    jr jr_024_526d

    ld a, [$cc4a]
    ld hl, $4cc3
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
    jr jr_024_526d

    ld a, [$cc4a]
    ld hl, $4cc3
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

Jump_024_526d:
jr_024_526d:
    ld a, [$cc4a]
    ld hl, $4cc3
    call LoadWordFromTableHL
    ld a, $01
    ld [hl], a
    ld a, [$cc4a]
    ld b, a
    ld a, $ff
    ld [$cc4a], a
    ld [$cc4b], a
    ld a, b
    ld hl, $528a
    rst $00
    ld b, b
    ld b, d
    ld d, h
    ld b, d
    ld l, b
    ld b, d
    ld a, h
    ld b, d
    call Call_024_6147
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $74
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, $6e8a
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
    ld hl, $4cc3
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
    ld hl, $5302
    rst $00
    ld a, [bc]
    ld d, e
    jr z, @+$55

    ld b, b
    ld d, e
    ld e, b
    ld d, e
    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    call Call_024_6147
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $75
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc4a]
    ld hl, $6e8a
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
    ld hl, $4cc3
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
    ld hl, $53e6
    rst $00
    xor $53
    inc c
    ld d, h
    inc h
    ld d, h
    inc a
    ld d, h
    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


    ld a, [$cc4a]
    ld hl, $4cc3
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
    jp Jump_024_526d


Jump_024_545a:
    call Call_000_1cff
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wHeldObject], a
    ld [wPlayerIsCarryingItem], a
    ret


Jump_024_546d:
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
    push bc
    ld d, h
    pop de
    ld d, h
    db $dd
    ld d, h
    jp hl


    ld d, h
    sbc b
    and d
    ld [bc], a
    daa
    jr z, jr_024_54cb

jr_024_54cb:
    sbc b
    jp nz, $3702

    jr c, jr_024_54d1

jr_024_54d1:
    sbc b
    and h
    ld [bc], a
    daa
    jr z, jr_024_54d7

jr_024_54d7:
    sbc b
    call nz, $3702
    jr c, jr_024_54dd

jr_024_54dd:
    sbc b
    and [hl]
    ld [bc], a
    daa
    jr z, jr_024_54e3

jr_024_54e3:
    sbc b
    add $02
    scf
    jr c, jr_024_54e9

jr_024_54e9:
    sbc b
    xor b
    ld [bc], a
    daa
    jr z, jr_024_54ef

jr_024_54ef:
    sbc b
    ret z

    ld [bc], a
    scf
    jr c, jr_024_54f5

jr_024_54f5:
    db $fd
    ld d, h
    add hl, bc
    ld d, l
    dec d
    ld d, l
    ld hl, $9955
    db $ed
    ld [bc], a

Jump_024_5500:
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
    ld sp, $3d55
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

Call_024_5555:
    ld a, [$cc19]
    cp $00
    jp nz, Jump_024_57db

    ld hl, $5564
    ld a, [$cc16]
    rst $00
    dec sp
    ld d, a
    ld [hl], h
    ld d, l
    or l
    ld d, l
    jp nc, $1355

    ld d, [hl]
    ld h, d
    ld d, [hl]
    or c
    ld d, [hl]
    cp $56
    ld hl, $547d
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

jr_024_558c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_558c

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_024_55ab

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_024_573b


jr_024_55ab:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_024_573b


    ld a, [$cc17]
    cp $08
    jr nz, jr_024_55c8

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_024_573b


jr_024_55c8:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_024_573b


    ld hl, $549d
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

jr_024_55ea:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_55ea

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_024_5609

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_024_573b


jr_024_5609:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_024_573b


    ld hl, $54bd
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

jr_024_5639:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_5639

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_024_5658

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_024_573b


jr_024_5658:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_024_573b


    ld hl, $54f5
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

jr_024_5688:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_5688

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_024_56a7

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_024_573b


jr_024_56a7:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_024_573b


    ld hl, $552d
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

jr_024_56d7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_56d7

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_024_56f5

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_024_573b

jr_024_56f5:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_024_573b

    ld hl, $5549
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

jr_024_5716:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_024_5716

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_024_5734

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_024_573b

jr_024_5734:
    ld a, [$cc17]
    inc a
    ld [$cc17], a

Jump_024_573b:
jr_024_573b:
    ld a, [wInputFreezeTimer]
    or a
    ret z

    dec a
    ld [wInputFreezeTimer], a
    cp $26
    jr z, jr_024_574c

    or a
    jr z, jr_024_5797

    ret


jr_024_574c:
    ld a, [wPlayerSpriteID]
    cp $5f
    jr z, jr_024_5760

    cp $60
    jr z, jr_024_5760

    cp $61
    jr z, jr_024_5760

    cp $62
    jr z, jr_024_5760

    ret


jr_024_5760:
    ld a, [$cc20]
    cp $04
    jr nz, jr_024_5771

jr_024_5767:
    ld a, $1c
    call $16d1
    xor a
    ld [$cc20], a
    ret


jr_024_5771:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $11
    jr nz, jr_024_5767

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a

jr_024_5795:
    pop hl
    ret


jr_024_5797:
    ld a, [$cb91]
    or a
    jr z, jr_024_5795

    ld [wInputFreezeTimer], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [wInputFreezeTimer]
    cp $b4
    jr z, jr_024_57bf

    cp $6e
    jr z, jr_024_57c6

    cp $50
    jr z, jr_024_57cd

    cp $a0
    jr z, jr_024_57d4

jr_024_57bf:
    ld a, $8a
    call LoadPlayerSpriteID
    pop hl
    ret


jr_024_57c6:
    ld a, $8b
    call LoadPlayerSpriteID
    pop hl
    ret


jr_024_57cd:
    ld a, $8c
    call LoadPlayerSpriteID
    pop hl
    ret


jr_024_57d4:
    ld a, $8d
    call LoadPlayerSpriteID
    pop hl
    ret


Jump_024_57db:
    ld a, [wInputFreezeTimer]
    cp $01
    jp nz, Jump_024_573b

    ld hl, $57ea
    ld a, [$cc1e]
    rst $00
    ldh a, [c]
    ld d, a
    inc b
    ld e, b
    db $10
    ld e, b
    inc e
    ld e, b
    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_024_573b


    ld a, $21
    ld [wHeldObject], a
    ld a, $27
    call $16d1
    jr jr_024_5826

    ld a, $22
    ld [wHeldObject], a
    ld a, $25
    call $16d1
    jr jr_024_5826

    ld a, $23
    ld [wHeldObject], a
    ld a, $23
    call $16d1

jr_024_5826:
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    xor a
    ld [$cc19], a
    jp Jump_024_573b


Call_024_583c:
    ld a, [wPlayerFacingDirection]
    rst $00
    ld c, c
    ld e, b
    db $dd
    ld e, b
    ld [hl], e
    ld e, c
    add hl, bc
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


Call_024_5aa5:
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
    jr nz, jr_024_5afe

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
    call Call_024_5aa5
    ret


jr_024_5afe:
    cp $01
    jr nz, jr_024_5b2f

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
    jr z, jr_024_5b21

    cp $0c
    jr nc, jr_024_5b25

    cp $04
    jr nc, jr_024_5b29

jr_024_5b21:
    ld b, $ec
    jr jr_024_5b2b

jr_024_5b25:
    ld b, $dc
    jr jr_024_5b2b

jr_024_5b29:
    ld b, $e4

jr_024_5b2b:
    call Call_024_5aa5
    ret


jr_024_5b2f:
    cp $02
    jr nz, jr_024_5b60

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
    jr z, jr_024_5b56

    cp $0c
    jr nc, jr_024_5b56

    cp $04
    jr nc, jr_024_5b5a

    ld b, $1c
    jr jr_024_5b5c

jr_024_5b56:
    ld b, $0c
    jr jr_024_5b5c

jr_024_5b5a:
    ld b, $14

jr_024_5b5c:
    call Call_024_5aa5
    ret


jr_024_5b60:
    ld a, [wPlayerXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [wPlayerYPosition]
    sub $0d
    and $0f
    cp $00
    jr z, jr_024_5b87

    cp $0b
    jr nc, jr_024_5b7f

    cp $03
    jr nc, jr_024_5b83

    ld c, $e8
    jr jr_024_5b89

jr_024_5b7f:
    ld c, $d8
    jr jr_024_5b89

jr_024_5b83:
    ld c, $e0
    jr jr_024_5b89

jr_024_5b87:
    ld c, $e8

jr_024_5b89:
    call Call_024_5aa5
    ret


Call_024_5b8d:
    ld hl, $98a2
    jr jr_024_5b9f

Call_024_5b92:
    ld hl, $98a4
    jr jr_024_5b9f

Call_024_5b97:
    ld hl, $98a6
    jr jr_024_5b9f

Call_024_5b9c:
    ld hl, $98a8

jr_024_5b9f:
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


Call_024_5bb4:
    ld hl, $99ee
    ld a, $00
    ld b, a
    jr jr_024_5bd2

Call_024_5bbc:
    ld hl, $9962
    ld a, $01
    ld b, a
    jr jr_024_5bd2

Call_024_5bc4:
    ld hl, $9930
    ld a, $02
    ld b, a
    jr jr_024_5bd2

Call_024_5bcc:
    ld hl, $99f0
    ld a, $03
    ld b, a

jr_024_5bd2:
    ld a, $04
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $05
    ld [hl+], a
    ld a, $06
    ld [hl], a
    jr jr_024_5bfc

Call_024_5be5:
    ld hl, $99f0
    ld a, $04
    ld b, a
    ld a, $f0
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f1
    ld [hl+], a
    ld a, $f2
    ld [hl], a

jr_024_5bfc:
    ld hl, $5c01
    ld a, b
    rst $00
    dec bc
    ld e, h
    inc de
    ld e, h
    dec de
    ld e, h
    inc hl
    ld e, h
    dec hl
    ld e, h
    ld de, $011e
    ld bc, $0110
    jr jr_024_5c31

    ld de, $00ce
    ld bc, $0111
    jr jr_024_5c31

    ld de, $00ba
    ld bc, $0112
    jr jr_024_5c31

    ld de, $0120
    ld bc, $0113
    jr jr_024_5c31

    ld de, $0120
    ld bc, $0114

jr_024_5c31:
    ld hl, $d800
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_024_5c3a:
    ld hl, $99d1
    ld a, [$b9a5]
    cp $80
    jr nc, jr_024_5c59

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
    ret


jr_024_5c59:
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


Call_024_5c6e:
    ld hl, sInventory
    ld a, [hl+]
    cp $11
    ret z

    ld a, [hl]
    cp $11
    ret z

    ld hl, $9931
    ld a, $66
    ld [hl+], a
    ld a, $67
    ld [hl+], a
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


Call_024_5c9f:
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
    jr nz, jr_024_5cfe

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
    jr nc, jr_024_5cfe

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_5cfe

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5cfe

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_5dc4

jr_024_5cfe:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_024_5d3f

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
    jr nc, jr_024_5d3f

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_5d3f

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5d3f

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_5dc4

jr_024_5d3f:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_024_5d7f

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
    jr nc, jr_024_5d7f

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_5d7f

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5d7f

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_5dc4

jr_024_5d7f:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_024_5dbf

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
    jr nc, jr_024_5dbf

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_5dbf

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5dbf

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_5dc4

jr_024_5dbf:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_5dc4:
jr_024_5dc4:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_5dc9:
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
    jr nz, jr_024_5e28

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
    jr c, jr_024_5e28

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_5e28

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5e28

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_5eee

jr_024_5e28:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_024_5e69

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
    jr c, jr_024_5e69

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_5e69

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5e69

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_024_5eee

jr_024_5e69:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_024_5ea9

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
    jr c, jr_024_5ea9

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_5ea9

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5ea9

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_5eee

jr_024_5ea9:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_024_5ee9

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
    jr c, jr_024_5ee9

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_5ee9

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_5ee9

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_5eee

jr_024_5ee9:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_5eee:
jr_024_5eee:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_5ef3:
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
    jr nz, jr_024_5f52

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
    jr c, jr_024_5f52

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_5f52

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_5f52

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_6018

jr_024_5f52:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_024_5f93

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
    jr c, jr_024_5f93

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_5f93

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_5f93

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_6018

jr_024_5f93:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_024_5fd3

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
    jr c, jr_024_5fd3

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_5fd3

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_5fd3

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6018

jr_024_5fd3:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_024_6013

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
    jr c, jr_024_6013

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_6013

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_6013

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6018

jr_024_6013:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_6018:
jr_024_6018:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_601d:
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
    jr nz, jr_024_607c

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
    jr nc, jr_024_607c

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_607c

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_607c

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_6142

jr_024_607c:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [hTemp], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_024_60bd

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
    jr nc, jr_024_60bd

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_60bd

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_60bd

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_024_6142

jr_024_60bd:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [hTemp], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_024_60fd

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
    jr nc, jr_024_60fd

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_60fd

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_60fd

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6142

jr_024_60fd:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [hTemp], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_024_613d

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
    jr nc, jr_024_613d

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_613d

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_613d

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6142

jr_024_613d:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_024_6142:
jr_024_6142:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_6147:
    ld a, [wPlayerFacingDirection]
    rst $00
    ld d, h
    ld h, c
    add sp, $61
    ld a, [hl]
    ld h, d
    inc d
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


Call_024_63b0:
    ld a, [$cc21]
    cp $ff
    ret z

    ld c, a
    ld hl, $1b20
    ld b, $00

jr_024_63bc:
    ld a, [hl+]
    cp c
    jr z, jr_024_63c3

    inc b
    jr jr_024_63bc

jr_024_63c3:
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


Call_024_63d2:
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
    jp c, Jump_024_64b7

    xor a
    ld [$ba2d], a
    ld a, [$ba2b]
    cp $02
    jr nz, jr_024_6466

    ld a, [$cc59]
    ld hl, $6400
    rst $00
    ld [$2064], sp
    ld h, h
    jr c, @+$66

    ld d, b
    ld h, h
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $03
    jr nz, jr_024_641b

    ld a, $00

jr_024_641b:
    ld [$cc59], a
    jr jr_024_6466

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $02
    jr nz, jr_024_6433

    ld a, $01

jr_024_6433:
    ld [$cc59], a
    jr jr_024_6466

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $01
    jr nz, jr_024_644b

    ld a, $02

jr_024_644b:
    ld [$cc59], a
    jr jr_024_6466

    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $00
    jr nz, jr_024_6463

    ld a, $03

jr_024_6463:
    ld [$cc59], a

jr_024_6466:
    call GetNextRandomByte
    ldh a, [$ff9c]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_024_6475

    add $60

jr_024_6475:
    sub $30
    ld [$ba2c], a
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $28
    jr c, jr_024_64a6

    cp $3c
    jr c, jr_024_6498

    jr jr_024_6491

jr_024_6491:
    ld a, $00
    ld [$ba2b], a
    jr jr_024_64b7

jr_024_6498:
    ld a, [$ba2b]
    cp $02
    jr z, jr_024_6491

    ld a, $01
    ld [$ba2b], a
    jr jr_024_64b7

jr_024_64a6:
    ld a, [$ba2b]
    cp $01
    jr z, jr_024_6491

    ld a, $02
    ld [$ba2b], a
    ld a, $20
    ld [$ba2c], a

Jump_024_64b7:
jr_024_64b7:
    ld a, [$ba2b]
    cp $02
    jr nz, jr_024_64c4

    call Call_024_6554
    call Call_024_68a9

jr_024_64c4:
    ld hl, $64cb
    ld a, [$ba2b]
    rst $00
    pop de
    ld h, h
    pop af
    ld h, h
    ld a, [bc]
    ld h, l
    ld a, [$ba28]
    cp $01
    jr z, jr_024_64e3

    cp $02
    jr z, jr_024_64ea

    ld a, $04
    call Call_000_18d0
    jr jr_024_6521

jr_024_64e3:
    ld a, $00
    call Call_000_18d0
    jr jr_024_6521

jr_024_64ea:
    ld a, $01
    call Call_000_18d0
    jr jr_024_6521

    ld a, [$ba28]
    cp $01
    jr z, jr_024_64e3

    cp $02
    jr z, jr_024_6503

    ld a, $05
    call Call_000_18d0
    jr jr_024_6521

jr_024_6503:
    ld a, $02
    call Call_000_18d0
    jr jr_024_6521

    ld a, [$ba28]
    cp $01
    jr z, jr_024_64e3

    cp $02
    jr z, jr_024_651c

    ld a, $06
    call Call_000_18d0
    jr jr_024_6521

jr_024_651c:
    ld a, $03
    call Call_000_18d0

jr_024_6521:
    ld hl, $c880
    ld a, [$cc1f]
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


Call_024_6554:
    ld hl, $655b
    ld a, [$cc59]
    rst $00
    ld h, e
    ld h, l
    jr nc, jr_024_65c5

    ld a, [bc]
    ld h, a
    ldh [$ff67], a
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

jr_024_65c5:
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


Call_024_68a9:
    ld hl, $68b0
    ld a, [$cc59]
    rst $00
    cp b
    ld l, b
    jp c, $fc68

    ld l, b
    dec e
    ld l, c
    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_024_693e

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_024_696e

    ld a, [$ba33]
    and $02
    jr z, jr_024_6956

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_024_6956

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_024_6986

    ld a, [$ba33]
    and $02
    jr z, jr_024_693e

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_024_696e

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_024_693e

    ld a, [$ba33]
    and $02
    jr z, jr_024_6986

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_024_6986

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_024_6956

    ld a, [$ba33]
    and $02
    jr z, jr_024_696e

    ret


jr_024_693e:
    call Call_024_699e
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


jr_024_6956:
    call Call_024_6a50
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


Jump_024_696e:
jr_024_696e:
    call Call_024_6aa9
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


Jump_024_6986:
jr_024_6986:
    call Call_024_69f7
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


Call_024_699e:
    ld a, [$ba28]
    cp $01
    jr z, jr_024_69ed

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
    jr nc, jr_024_69ed

    ldh a, [$ffa7]
    cp e
    jr c, jr_024_69ed

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_69ed

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_69f2

jr_024_69ed:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_024_69f2:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_69f7:
    ld a, [$ba28]
    cp $01
    jr z, jr_024_6a46

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
    jr c, jr_024_6a46

    ldh a, [$ffa6]
    cp d
    jr nc, jr_024_6a46

    ldh a, [$ffa4]
    cp c
    jr nc, jr_024_6a46

    ldh a, [$ffa5]
    cp b
    jr nc, jr_024_6a4b

jr_024_6a46:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_024_6a4b:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_6a50:
    ld a, [$ba28]
    cp $01
    jr z, jr_024_6a9f

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
    jr c, jr_024_6a9f

    ldh a, [$ffa4]
    cp b
    jr nc, jr_024_6a9f

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_6a9f

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6aa4

jr_024_6a9f:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_024_6aa4:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_6aa9:
    ld a, [$ba28]
    cp $01
    jr z, jr_024_6af8

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
    jr nc, jr_024_6af8

    ldh a, [$ffa5]
    cp c
    jr c, jr_024_6af8

    ldh a, [$ffa6]
    cp e
    jr nc, jr_024_6af8

    ldh a, [$ffa7]
    cp d
    jr nc, jr_024_6afd

jr_024_6af8:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_024_6afd:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_024_6b02:
    ld a, $00
    ld [$cc1f], a
    ld a, $00
    ld [$c88d], a
    ld a, [$b9a7]
    cp $ff
    jr nz, jr_024_6b1a

    ld a, $00
    ld [$c880], a
    jr jr_024_6b48

jr_024_6b1a:
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
    ld hl, $6b36
    ld a, [$b9a7]
    rst $00
    inc [hl]
    ld l, h
    ccf
    ld l, h
    ld c, d
    ld l, h
    ld d, l
    ld l, h

Jump_024_6b3e:
    ld a, $01
    ld [$c880], a
    ld a, $14
    ld [$c881], a

jr_024_6b48:
    ld a, $01
    ld [$cc1f], a
    ld a, $00
    ld [$c8ad], a
    ld a, [$b9b3]
    cp $ff
    jr nz, jr_024_6b60

    ld a, $00
    ld [$c8a0], a
    jr jr_024_6b8e

jr_024_6b60:
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
    ld hl, $6b7c
    ld a, [$b9b3]
    rst $00
    ld h, b
    ld l, h
    ld l, e
    ld l, h
    halt
    ld l, h
    add c
    ld l, h

Jump_024_6b84:
    ld a, $01
    ld [$c8a0], a
    ld a, $15
    ld [$c8a1], a

jr_024_6b8e:
    ld a, $02
    ld [$cc1f], a
    ld a, $00
    ld [$c8cd], a
    ld a, [$b9bf]
    cp $ff
    jr nz, jr_024_6ba6

    ld a, $00
    ld [$c8c0], a
    jr jr_024_6bd4

jr_024_6ba6:
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
    ld hl, $6bc2
    ld a, [$b9bf]
    rst $00
    adc h
    ld l, h
    sub a
    ld l, h
    and d
    ld l, h
    xor l
    ld l, h

Jump_024_6bca:
    ld a, $01
    ld [$c8c0], a
    ld a, $16
    ld [$c8c1], a

jr_024_6bd4:
    ld a, $03
    ld [$cc1f], a
    ld a, $00
    ld [$c8ed], a
    ld a, [$b9cb]
    cp $ff
    jr nz, jr_024_6bec

    ld a, $00
    ld [$c8e0], a
    jr jr_024_6c1a

jr_024_6bec:
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
    ld hl, $6c08
    ld a, [$b9cb]
    rst $00
    cp b
    ld l, h
    jp $ce6c


    ld l, h
    reti


    ld l, h

Jump_024_6c10:
    ld a, $01
    ld [$c8e0], a
    ld a, $17
    ld [$c8e1], a

jr_024_6c1a:
    call Call_024_4240
    call Call_024_4254
    call Call_024_4268
    call Call_024_427c
    xor a
    ld [$c88e], a
    ld [$c8ae], a
    ld [$c8ce], a
    ld [$c8ee], a
    ret


    ld a, $00
    ld [$b9a7], a
    call Call_024_6ce4
    jp Jump_024_6b3e


    ld a, $01
    ld [$b9a7], a
    call Call_024_6cea
    jp Jump_024_6b3e


    ld a, $02
    ld [$b9a7], a
    call Call_024_6cf0
    jp Jump_024_6b3e


    ld a, $03
    ld [$b9a7], a
    call Call_024_6cf6
    jp Jump_024_6b3e


    ld a, $00
    ld [$b9b3], a
    call Call_024_6ce4
    jp Jump_024_6b84


    ld a, $01
    ld [$b9b3], a
    call Call_024_6cea
    jp Jump_024_6b84


    ld a, $02
    ld [$b9b3], a
    call Call_024_6cf0
    jp Jump_024_6b84


    ld a, $03
    ld [$b9b3], a
    call Call_024_6cf6
    jp Jump_024_6b84


    ld a, $00
    ld [$b9bf], a
    call Call_024_6ce4
    jp Jump_024_6bca


    ld a, $01
    ld [$b9bf], a
    call Call_024_6cea
    jp Jump_024_6bca


    ld a, $02
    ld [$b9bf], a
    call Call_024_6cf0
    jp Jump_024_6bca


    ld a, $03
    ld [$b9bf], a
    call Call_024_6cf6
    jp Jump_024_6bca


    ld a, $00
    ld [$b9cb], a
    call Call_024_6ce4
    jp Jump_024_6c10


    ld a, $01
    ld [$b9cb], a
    call Call_024_6cea
    jp Jump_024_6c10


    ld a, $02
    ld [$b9cb], a
    call Call_024_6cf0
    jp Jump_024_6c10


    ld a, $03
    ld [$b9cb], a
    call Call_024_6cf6
    jp Jump_024_6c10


Call_024_6ce4:
    ld a, $00
    call Call_000_18d0
    ret


Call_024_6cea:
    ld a, $00
    call Call_000_18d0
    ret


Call_024_6cf0:
    ld a, $01
    call Call_000_18d0
    ret


Call_024_6cf6:
    ld a, $04
    call Call_000_18d0
    ret


    ld hl, $b9a7
    ld b, $00
    ld a, [$b9a6]
    bit 4, a
    call nz, Call_024_6d8a
    ld a, [$b9a6]
    bit 5, a
    call nz, Call_024_6d8a
    ld a, [$b9a6]
    bit 6, a
    call nz, Call_024_6d8a
    ld a, [$b9a6]
    bit 7, a
    call nz, Call_024_6d8a
    ld a, b
    cp $04
    call c, Call_024_6dcd
    xor a
    ld [$b9a4], a
    ld a, $00
    ldh [$ffa5], a
    ld a, $00
    ldh [$ffa4], a
    call Call_024_6df7
    ld a, $01
    ldh [$ffa4], a
    call Call_024_6df7
    ld a, $02
    ldh [$ffa4], a
    call Call_024_6df7
    ld a, $03
    ldh [$ffa4], a
    call Call_024_6df7
    xor a
    ld [$b9a6], a
    ld hl, $b9a5
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    ld a, [hl]
    jr z, jr_024_6d5d

    xor $80
    ret nz

jr_024_6d5d:
    ldh a, [$ffa5]
    cp $04
    jr c, jr_024_6d65

    inc [hl]
    ret


jr_024_6d65:
    ld hl, $b9a7
    ld a, [hl]
    cp $ff
    jr z, jr_024_6d80

    ld hl, $b9b3
    ld a, [hl]
    cp $ff
    jr z, jr_024_6d80

    ld hl, $b9bf
    ld a, [hl]
    cp $ff
    jr z, jr_024_6d80

    ld hl, $b9cb

jr_024_6d80:
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$b9a5], a
    ret


Call_024_6d8a:
    ld a, b
    cp $04
    ret z

    ld d, h
    ld e, l
    ld c, b

jr_024_6d91:
    ld a, [hl]
    cp $02
    jr z, jr_024_6dad

    cp $03
    jr z, jr_024_6dad

    inc c
    ld a, c
    cp $04
    jr z, jr_024_6daa

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_024_6d91

jr_024_6daa:
    ld h, d
    ld l, e
    ret


jr_024_6dad:
    inc hl
    inc hl
    ld a, [hl]
    cp $00
    jr z, jr_024_6dc1

    dec hl
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_024_6dc0

    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_024_6dc1

jr_024_6dc0:
    inc hl

jr_024_6dc1:
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


Call_024_6dcd:
jr_024_6dcd:
    ld a, b
    cp $04
    ret z

    ld a, [hl]
    cp $02
    jr z, jr_024_6de5

    cp $03
    jr z, jr_024_6de5

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc b
    jr jr_024_6dcd

jr_024_6de5:
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
    jr jr_024_6dcd

Call_024_6df7:
    ldh a, [$ffa4]
    ld hl, $6e8a
    call LoadWordFromTableHL
    ld a, [hl]
    cp $ff
    jr z, jr_024_6e7e

    ldh a, [$ffa5]
    inc a
    ldh [$ffa5], a
    ld a, [hl]
    cp $00
    ret z

    cp $01
    jr z, jr_024_6e6f

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
    ld hl, $6e23
    rst $00
    dec hl
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    dec a
    ld l, [hl]
    ld d, d
    ld l, [hl]
    ld a, [$b9a4]
    set 0, a
    ld [$b9a4], a
    ret


    ld a, [$b9a4]
    set 1, a
    ld [$b9a4], a
    ret


    ld a, [$b9a4]
    set 2, a
    ld [$b9a4], a
    ld a, [$b9a3]
    or a
    ld a, $01
    ld [$b9a3], a
    ld [$b88f], a
    ret


    ld a, [$b9a4]
    set 3, a
    ld [$b9a4], a
    ldh a, [$ffa4]
    ld hl, $6e8a
    call LoadWordFromTableHL
    ld a, [hl]
    cp $03
    ret nz

    ld a, [$b9a4]
    set 4, a
    ld [$b9a4], a
    ret


jr_024_6e6f:
    inc hl
    ld a, [hl]
    cp $07
    jr c, jr_024_6e7c

    xor a
    ld [hl], a
    dec hl
    ld a, $02
    ld [hl], a
    ret


jr_024_6e7c:
    inc [hl]
    ret


jr_024_6e7e:
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


    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c

Call_024_6e92:
    ld a, [sCurrentHour]
    cp $06
    ret c

    ld a, [$b9a6]
    bit 0, a
    jr z, jr_024_6ea4

    set 4, a
    ld [$b9a6], a

jr_024_6ea4:
    ld a, [$b9a6]
    bit 1, a
    jr z, jr_024_6eb0

    set 5, a
    ld [$b9a6], a

jr_024_6eb0:
    ld a, [$b9a6]
    bit 2, a
    jr z, jr_024_6ebc

    set 6, a
    ld [$b9a6], a

jr_024_6ebc:
    ld a, [$b9a6]
    bit 3, a
    ret z

    set 7, a
    ld [$b9a6], a
    ret


    nop
    inc b
    ld l, e
    inc bc
    ld [bc], a
    ld e, $00
    inc bc
    add hl, bc
    ld [bc], a
    ld bc, $1d21
    nop
    dec hl
    ld [hl+], a
    ld de, $020a
    ld sp, $001d
    ld [hl-], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld l, [hl]
    rlca
    ld b, $23
    inc h
    dec h
    inc hl
    nop
    ld h, $41
    inc de
    nop
    db $fd
    ld b, d
    dec bc
    inc b
    inc sp
    inc [hl]
    dec [hl]
    ld b, a
    ld c, b
    ld l, b
    rst $38
    ld l, c
    ld l, d
    ld l, e
    ld [hl], $13
    inc de
    dec bc
    inc c
    rst $28
    ld d, b
    ld d, c
    ld d, d
    db $10
    dec bc
    ld b, $43
    ld b, h
    ld b, l
    rst $38
    ld d, a
    ld e, b
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld b, [hl]
    inc de
    ld a, a
    inc de
    dec de
    inc e
    ld h, b
    ld h, c
    ld h, d
    jr nz, jr_024_6f29

    ld [$53db], sp
    ld d, h
    inc d
    nop
    ld d, [hl]
    inc de
    stop
    ld [hl], b

jr_024_6f29:
    ld [hl], c
    cp e
    ld [hl], d
    jr nc, jr_024_6f39

    ld a, [bc]
    dec d
    ld d, $17
    inc hl
    nop
    jr @-$60

    ld bc, $6302

jr_024_6f39:
    ld h, h
    ld h, l
    ld b, b
    dec bc
    inc c
    ld h, b
    inc bc
    add hl, sp
    or a
    ld a, [hl-]
    dec sp
    inc a
    ret nc

    inc bc
    dec bc
    inc c
    ld hl, $1304
    db $fd
    inc de
    dec bc
    ld c, $2c
    inc de
    inc de
    ld e, c
    ld e, d
    ld e, e
    cp a
    ld e, h
    inc de
    add hl, hl
    ld a, [hl+]
    dec de
    inc e
    rrca
    ld [bc], a
    nop
    ld a, c
    ld bc, $03a1
    and c
    rlca
    ld e, c
    ld e, d
    ld c, e
    ld c, d
    ret nz

    ld [bc], a
    ld [hl], h
    ld b, b
    inc c
    dec bc
    ld [de], a
    ld e, h
    ld [hl], b
    add hl, bc
    add hl, hl

jr_024_6f75:
    ld a, [hl+]
    dec hl
    ld [hl], b
    inc b
    db $db
    ld e, d
    ld e, e
    ld de, $1b02
    dec l
    dec bc
    inc d
    dec a
    ld a, $ef
    ccf
    ld a, h
    ld e, c
    ld e, d
    ld h, b
    ld [bc], a
    add hl, hl
    inc l
    ld e, c
    xor $70
    ld b, $13
    dec c
    dec e
    dec bc
    ld d, $4d
    ld c, [hl]
    ld c, a
    ld a, c
    ld a, l
    inc de
    ld b, $a1
    inc b
    inc de
    inc de
    ld c, $0f
    dec bc
    jr jr_024_6f75

    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl]
    and l
    dec bc
    ld hl, $1e10
    rra
    ld e, $0b
    ld a, [de]
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, a
    and b
    dec bc
    inc sp
    ld [$1230], sp
    db $db
    ld l, $2f
    ld a, [bc]
    inc e
    inc bc
    ld [de], a
    inc de
    nop
    ld [hl], e
    ld [hl], h
    inc bc
    ld [hl], h
    ld [hl], l
    or h
    nop
    ld a, [bc]
    ld [hl+], a
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

jr_024_6ff5:
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
    dec e
    nop
    nop
    ld [$ff2d], sp
    inc l
    nop
    adc l
    ld a, h
    dec hl
    nop
    rst $38
    ld [hl-], a
    ld [bc], a
    inc de
    nop
    sbc $e3
    ld [bc], a
    pop hl
    ld h, b
    pop bc
    ld a, h
    ld hl, $c300
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld c, d
    ld a, a
    ld bc, $ffff
    ld b, h
    rst $30
    add c
    rst $38
    jr c, jr_024_6ff5

    call nz, $ffbb
    add d
    ld b, h
    add d
    ld bc, $7e4b
    ld bc, $fffe
    ld b, l
    or $81
    cp $19
    cp $80
    rst $38
    rst $38
    ld [de], a
    sbc $80
    rst $38
    ld bc, $0182
    nop
    cp $20
    nop
    add d
    ld bc, $8282
    ld b, l
    ld b, [hl]
    cp d
    rst $38
    cp b
    rst $00
    nop
    nop
    add b
    nop
    ldh [rP1], a
    sub a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    dec c
    add hl, bc
    ld a, b
    rst $38
    add a
    rst $08
    ld c, b
    add $42
    db $ec
    ld l, b
    sbc $ff
    ld a, [hl-]
    or [hl]
    ld [hl], c
    or a
    ld [hl], e
    or a
    ld [hl], e
    ld e, $ff
    pop hl
    di
    ld [de], a
    ld [hl], c
    ld d, b
    dec sp
    ld a, [de]
    ld [hl], a
    rst $38
    ld c, [hl]
    db $ed
    call c, $1c2d
    dec l
    inc e

jr_024_708d:
    rst $38
    rst $38
    nop
    ret nz

    ld b, b
    ldh [$ff60], a
    db $f4
    dec bc
    or [hl]
    rst $38
    ld a, a
    cp c
    ld h, l
    ldh [$ff1f], a
    xor [hl]
    ld a, l
    rst $38
    rst $38
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ccf
    ret nz

    rst $30
    ld a, a
    cp $9b
    cp $cf
    jr nc, jr_024_708d

    cp $01
    add hl, bc
    ld sp, hl
    rst $38
    ld b, b
    ld b, $40
    nop
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    ld e, a
    and b
    ld e, h
    rst $38
    ld sp, $69f1
    jp hl


    rst $38
    ld b, $86
    ret z

    ld hl, sp+$45
    rst $00
    ret nc

    ldh a, [rIE]
    db $ed
    ld d, $cd
    or $bd

jr_024_70d6:
    or $8d
    or [hl]
    rst $38
    dec c
    sub [hl]
    dec e
    ld [hl], $8d
    or $0d
    ld d, $ff
    rst $38
    nop
    ld e, l
    cp [hl]
    db $fd
    cp [hl]
    ld [hl], l
    cp [hl]
    rst $38
    ld a, c
    cp [hl]
    pop de
    cp [hl]
    ld l, c
    cp [hl]
    push de
    cp [hl]
    add e
    or c
    ld a, $2b
    nop
    nop
    db $10
    db $f4
    rrca
    add d
    db $10
    ld b, $0f
    jr @-$01

    rst $38
    inc bc
    ld c, $95
    ld [$4fb2], a
    ld e, e
    db $fc
    rst $38
    jr c, jr_024_70d6

    jp z, $253d

    jp c, $77a9

    cp a
    ld [hl], e
    adc h
    sub $4e
    push de
    ld c, l
    ld b, e
    nop
    rst $18
    rst $38
    ld b, b
    sub b
    ld l, a
    rst $38
    nop
    ld d, [hl]
    ld l, [hl]
    sub l
    rst $30
    xor l
    sub $ee
    ld b, c
    nop
    rst $38
    nop
    db $10
    rst $28
    rst $38
    rst $38
    nop
    xor e
    or a
    ld a, [hl+]
    ld [hl], $ab
    or a
    ld a, a
    ld [$ebf6], a
    rst $30
    rst $38
    nop
    ld [$0040], sp
    rst $28
    ld l, e
    ld [hl], d
    xor e
    or d
    ld b, e
    nop
    ei
    ld [bc], a
    add hl, bc
    rst $30
    or $ff
    nop
    ld b, c
    rrca
    or l
    ld [hl], e
    cp l
    ld a, e
    rst $38
    sbc l
    ld a, e
    ld a, l
    add e
    inc sp
    db $fc
    add h
    rst $38
    ei
    xor l
    sbc h
    ld hl, $af00
    sbc [hl]
    and a
    sbc [hl]
    cp $ff
    pop bc
    call nz, $113f
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    rst $18
    rrca
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    pop bc
    dec c
    ld e, b
    or a
    rst $38
    jr nc, @-$2f

    ld l, l
    cp [hl]
    rst $18
    jr nz, jr_024_71c6

    ld a, $ff
    ld [hl], a
    adc $01
    cp $ff
    nop
    ld d, $ed
    ei
    inc c
    di
    ld bc, $ff09
    nop
    dec c
    ld c, $fd
    rst $38
    ld b, $0d
    or $0d
    or $fd
    ld b, $80
    rst $38
    add b
    ld d, d
    db $d3
    ld [$8588], sp
    add a
    dec de
    rst $38
    ei
    xor a
    xor a
    sub h
    ld e, a
    ld c, b
    ld hl, sp+$6d
    rst $38
    halt
    adc l
    or [hl]
    ld l, l
    halt
    dec c
    or $2d
    rst $38
    ld [hl], $8d
    sub [hl]
    ld c, l
    or $4d

jr_024_71c6:
    halt
    ld l, c
    cp $80
    rrca
    ld c, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, l
    rst $38
    cp [hl]
    ld h, e
    sbc h
    ld d, l
    xor d
    rst $38
    nop
    ld bc, $fe7f
    ld bc, $7dfe
    cp $45
    add $23
    nop
    cp [hl]
    ld bc, $8322
    ld a, h
    xor e
    ld a, h
    sub e
    ld b, h
    nop
    rst $38
    ld a, a
    nop
    ret nc

    ld b, b
    rst $18
    ld b, b
    ret nc

    ld c, a
    ld hl, $c000
    add c
    nop
    ld [bc], a
    ld [de], a
    ld [hl], h
    inc h
    inc hl
    ld c, $09
    ld bc, $0e21
    add hl, bc
    nop
    rst $08
    ld sp, hl
    nop
    add hl, bc
    ldh a, [rNR42]
    nop
    add c
    nop
    ld d, d
    rst $28
    rst $38
    sub $ee
    rst $18
    ldh [rWave_3], a
    ld c, a
    ret c

    jr c, @+$01

    jp $c843


    cp a
    add sp, -$28
    ld c, b
    rst $30
    rst $38
    ld l, l
    rst $30
    db $fd
    rlca
    rst $08
    pop af
    ld c, l
    ld c, d
    ld a, a
    add e
    db $fd
    ld c, l
    adc $1f
    ld a, c
    sub c
    db $10
    add hl, hl
    rst $38
    ld e, l
    db $fd
    ld [bc], a
    rst $38
    ld a, [hl-]
    ld a, [$ffd3]
    rst $38
    inc b
    db $fc
    or e
    di
    jr @+$01

    ld [hl], b
    ld hl, sp-$01
    rra
    rra
    add sp, -$18
    ld d, [hl]
    ld d, a
    ld e, $1e
    rst $38
    ret nz

    ret nz

    ld a, [bc]
    ld a, [bc]
    adc d
    rst $38
    db $db
    ei
    rst $38
    and h
    and h
    ld e, l
    ld e, l
    ldh a, [$fff0]
    dec bc
    rrca
    rst $38
    jr nz, jr_024_7289

    rst $18
    rst $18
    jr @+$01

    jp nz, $ffff

    ld b, b
    ld e, a
    xor b
    rst $38
    rlca
    rlca
    ld [$ef0f], sp
    ret


    ret


    db $10
    rra
    add hl, bc
    ld de, $2cd7
    ld a, a
    rst $38
    add b
    sub l
    ld [hl], l
    rst $38
    nop
    add c

jr_024_7289:
    ld bc, $afff
    nop
    ei
    ld a, a
    db $e4
    ld [bc], a
    ld hl, $403d
    ld de, $cefd
    ret nz

    ld [de], a
    add hl, de
    cp $63
    add b
    ld c, $e1
    cpl
    ld bc, $0efe
    ld bc, $0101
    cp $41
    ld [bc], a
    ld bc, $0f85
    dec b
    db $10
    add l
    rrca
    xor [hl]
    dec b
    db $10
    ret nc

    ld c, a
    jp nc, $0024

    pop de
    jr nz, jr_024_72bb

jr_024_72bb:
    db $d3
    ld a, l
    ld c, a
    ld bc, $d30d
    db $eb
    ld d, $6e
    sub e
    ld b, b
    nop
    rst $08
    db $d3
    db $eb
    ld d, l
    ld l, l
    ld bc, $210d
    nop
    call z, $fff6
    xor l
    or a
    ld l, d
    ld [hl], d
    xor e
    or e
    add hl, bc
    ldh a, [rIE]
    add hl, hl
    ldh a, [$ff89]
    ret nc

    add hl, hl
    ld [hl], b
    xor c
    ldh a, [rIE]
    ret


    ret nc

    jp hl


    ldh a, [$ff09]
    ld d, b
    pop hl
    ld hl, $c3ff
    cp a
    xor [hl]
    ld a, [hl]
    ret c

    jr c, @-$48

    adc a
    rst $38
    rst $18
    ldh [$ff9c], a
    xor h
    call c, $9fec
    sbc d
    rst $38
    add e
    db $fd
    dec c
    ld c, $ff
    ld hl, sp-$0a
    ld c, $ff
    ld c, [hl]
    ret nc

    ld l, $36
    dec c
    dec d
    ld c, l
    rst $38
    rst $38
    db $10
    ldh a, [$ff8b]
    adc a
    ld a, [bc]
    ld a, [$fd21]
    rst $18
    ld b, h
    ld a, h
    inc hl
    db $e3
    sub l
    and b
    scf
    jr nc, jr_024_7354

    rst $38
    add h
    add h
    ld [hl], b
    ld [hl], b
    add c
    add c
    ld a, [de]
    ld a, [de]
    rst $38
    ldh a, [$fff0]
    add hl, hl
    add hl, hl
    ld d, l
    ld d, l
    adc d
    adc d
    rst $38
    nop
    nop
    dec b
    dec b
    ld b, b
    ld b, b
    inc b
    inc b
    rst $38
    ld bc, $9e01
    sbc [hl]
    ld hl, $4833
    ld c, a
    rst $38
    and d
    and e
    ld c, b
    rst $38
    jr nz, jr_024_7370

    inc d
    rla
    rst $28
    ldh [$ffe7], a

jr_024_7354:
    ld a, [bc]
    dec sp
    nop
    add hl, sp
    cp $46
    pop af
    rst $38
    sbc l
    jp $d92d


    cp l
    db $db
    cpl
    set 7, a
    xor a
    db $db
    ld e, a
    ld h, b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20

jr_024_7370:
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    ld a, [$ff07]
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $38
    rst $30
    ld bc, $a5fe
    cp $69
    ld a, [hl]
    ld e, a
    dec a
    ld a, $2d
    ld l, [hl]
    sbc c
    ld [bc], a
    ld de, $c07d
    rra
    jr @-$3d

    inc h
    ld h, c
    cpl
    ld bc, $832f
    ld a, h
    ld hl, $b200
    cpl
    ld [hl-], a

jr_024_73aa:
    jr nc, jr_024_73e3

    jp nc, $d34e

    ld h, b
    rrca
    db $d3
    ld c, a
    add c
    nop
    pop bc
    nop
    rst $28
    sbc e
    xor e
    ld e, l
    ld l, l
    ld b, c
    nop
    sbc [hl]
    xor [hl]
    db $dd
    db $fd
    db $ed
    ld bc, $6e0d
    halt
    db $ed
    push af
    ld l, [hl]
    halt
    rst $28
    ld c, h
    ld d, h
    ld l, $36
    ld b, c
    nop
    dec c
    dec d
    ret


    rst $38
    ret nc

    ld c, c
    ld d, b
    xor c
    or b
    ret


    ret nc

    xor c
    ld a, a
    or b
    adc c
    sub b
    xor c

jr_024_73e3:
    or b
    add hl, hl
    jr nc, jr_024_73f6

    inc de
    cp $0b
    inc de
    inc bc
    rst $38
    ld b, [hl]
    add $95
    rst $38
    ld b, e
    rst $38
    ei
    inc a
    db $fc

jr_024_73f6:
    ld b, c
    pop de
    inc bc
    rst $38
    nop
    rst $38
    rst $28
    sub $d6
    jr nc, @+$32

    jp $38c3


    rst $38
    cp b
    rlca
    rlca
    ei
    ei
    inc b
    inc b
    di
    rst $38
    di
    or c
    or c
    ld c, $0e
    xor c
    xor c
    ld a, h
    rst $38
    ld a, h
    rst $00
    rst $00
    jr nc, @+$32

    adc $ce
    jr c, @+$01

    jr c, jr_024_73aa

    adc a
    inc de
    inc de
    adc $cf
    cp b
    rst $38
    rst $38
    inc h
    ccf
    ld c, c
    ld c, a
    ld [bc], a
    inc bc
    jr c, @+$01

    ccf
    ld [hl], l
    ld e, e
    dec [hl]
    reti


    ld l, l
    res 5, l
    rst $38
    db $db
    daa
    db $db
    xor [hl]
    db $db
    ld [hl], $db
    or [hl]
    rst $38
    db $db
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    or $ff
    rst $28
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    db $fd
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    cp a
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    ld bc, $454c
    rst $38
    or $82
    db $fd
    inc e
    ld a, [$f589]
    ld d, $ff
    adc $a5
    db $dd
    ld a, a
    add b
    add b
    ld b, b
    ld bc, $c1df
    ld [de], a
    ld d, d
    ld bc, $4141
    nop
    ld [bc], a
    ld b, d
    rst $38
    rst $38
    nop
    rrca
    adc a
    dec hl
    xor a
    rrca
    sbc a
    rst $38
    dec e
    sbc a
    ld a, [bc]
    adc a
    dec [hl]
    cp a
    ld a, [bc]
    sbc a
    cp a
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $18
    ld e, a
    ld hl, $df30
    and b
    ld [hl+], a
    jr nc, @+$06

    ld b, d
    ld d, e
    nop
    ld sp, $0c52
    ld d, [hl]
    ei
    ldh [rOBP1], a
    ei
    ld a, a
    ld a, [$02fb]
    dec bc
    ldh a, [c]
    ei
    ldh a, [c]
    ld b, b
    nop
    ld sp, hl
    ld [bc], a
    rrca
    inc de
    dec bc
    inc de
    ld [$07d8], sp
    rst $38
    add c
    rst $38
    rst $38
    inc de
    rst $38
    ld b, b
    rst $38
    ld bc, $60fd
    rst $38
    rst $38
    ld b, $ff
    cpl
    cpl
    rra
    rra
    ret c

    rst $38
    ld hl, sp+$05
    add a
    rrca
    rst $38
    add d
    add d
    rlca
    rst $38
    rst $38
    jr nz, @+$01

    adc $cf
    jr nz, jr_024_7508

    rst $30
    rst $38
    rst $38
    jr z, jr_024_7515

    db $dd
    rst $38
    cp h
    cp h
    set 7, a
    rlc b
    rst $38
    jp nc, Jump_000_18f3

    rra
    ld c, a
    rst $28
    rst $38
    ld d, h
    ld d, a
    ldh [$ffa0], a
    ld [bc], a
    inc c
    rst $38
    ld [hl+], a
    rst $28
    rst $38
    ld a, [hl]

jr_024_7508:
    ld e, e
    inc [hl]
    nop
    db $10
    xor [hl]
    db $db
    ld l, $ff
    db $db
    and h
    db $db
    inc [hl]
    db $db

jr_024_7515:
    and h
    reti


    ld [hl], d
    rst $38
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $38
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $38
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $38
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$6ef7], sp
    rst $38
    ld e, [hl]
    dec h
    db $dd
    ld l, [hl]
    sbc $a5
    db $dd
    ld l, $de
    ld b, h
    nop
    dec h
    ld h, l
    ld a, [bc]
    ld c, d
    ld b, c
    nop
    dec d
    ld d, l
    rst $38
    ld c, d
    ld a, [bc]
    ld d, l
    dec d
    ld l, d
    ld a, [hl+]
    dec [hl]
    cp a
    rst $38
    ld a, [de]
    sbc a
    dec h
    xor a
    ld e, d
    rst $18
    or h

jr_024_7561:
    ccf
    db $fd
    jp nc, Jump_024_5500

    add b
    ld a, a
    ld h, l
    ld e, [hl]
    add hl, hl
    jp c, Jump_024_79ff

    jp c, $d2b3

    dec [hl]
    call nc, $dca9
    rst $38
    inc hl
    sbc $9f
    ldh [rSC], a
    db $fd
    cpl
    db $fd
    rst $38
    ld c, e
    reti


    jp z, $7ad8

    ld hl, sp+$77
    db $fd
    ei
    ld [bc], a
    db $fd
    pop hl
    ld b, e
    and e
    cp $11
    ld e, h
    add hl, bc
    rst $28
    ld c, h
    rst $38
    cp $6b
    ld [bc], a
    ld [hl], $7f
    ret nz

    ld h, b
    rst $38
    sub l
    ld b, a
    xor b
    adc b
    ld d, b
    adc d
    ld h, b
    or d
    rst $38
    ld b, b
    ret c

    jr nz, jr_024_7561

    ld b, b
    db $fd
    ld [bc], a
    ld c, $ff
    ld d, e
    rlca
    xor b
    add d
    ld d, l
    ld b, d
    xor l
    dec sp
    rra
    inc b
    rla
    add hl, bc
    dec de
    inc b
    rrca
    ld hl, $340b
    rrca
    ld [bc], a
    cp $0b
    ld [hl], $64
    ld c, e
    dec h
    jp c, $d16e

    or b
    ei
    rst $08
    db $10
    jr nz, jr_024_75df

    db $10
    rst $08
    adc a
    ldh a, [$ff1f]
    cp a
    ldh [$fff0], a
    rrca
    db $10
    rst $28
    jr nc, jr_024_7602

    nop

jr_024_75df:
    rst $38
    ld a, a
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    db $fc
    rrca
    ld a, [de]
    ld bc, $6f10
    sbc $a7
    call c, $db2d
    rst $38
    xor d
    rst $10
    dec [hl]
    rst $08
    cp a
    ret nz

    rst $38
    add b
    ld [hl], a
    add b
    ld a, a
    ld a, a

jr_024_7602:
    or d
    cpl
    xor d
    rst $38
    ld e, l
    ld d, d
    ld e, a
    sub $e2
    ld l, a
    nop
    ret nc

    ld b, b
    ld [hl], b
    ld d, h
    and d
    ld h, l
    ld h, b
    nop
    rrca
    rra
    nop
    ret nz

    ret nz

    dec b
    ld h, c
    ld b, e
    ld [hl], h
    db $e3
    ld [hl-], a
    ld bc, $b762
    ld bc, $0600
    ldh [$ff6d], a
    inc bc
    inc bc
    dec b
    ld h, e
    ret z

    rst $38
    inc h
    add a
    ld d, b
    ret nz

    ld a, [hl+]
    or b
    ld c, l
    adc a
    rst $38
    ld [hl], b
    ldh [$ff9f], a
    ccf
    ret nz

    add b
    rst $38
    daa
    rst $38
    ld c, b
    jp nz, $8715

    jr z, jr_024_7660

    ld h, l
    ldh [c], a
    ld a, a
    dec e
    dec c
    ldh a, [c]
    ld sp, hl
    rlca
    rst $20
    jr jr_024_7660

    ld hl, $0bf8
    inc [hl]
    rrca
    ld [bc], a
    dec bc
    ld [hl], $4a
    ld a, a
    add c
    ld a, a
    db $e4
    rst $38
    sub a

jr_024_7660:
    ld sp, hl
    rst $00
    cp h
    sbc e
    cp h
    db $db
    or $ff
    jp nc, $dbf4

    cp $db
    or l
    sbc e
    or h
    rst $38
    db $d3
    push af
    db $db
    db $fc
    db $db
    xor h
    db $db
    cp [hl]
    rst $38
    jp c, $dbb4

    cp [hl]
    db $db
    dec a
    sbc e
    inc h
    rst $38
    db $d3
    ld h, l
    db $db
    ld l, h
    db $db
    inc a
    db $db
    ld l, $ff
    jp c, $9b24

    ld h, $d3
    and l

jr_024_7692:
    ld e, e
    ld [hl], h
    rst $30
    adc e
    dec c
    di
    ld b, c
    ld de, $f61a
    ldh a, [rIF]
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

jr_024_76ba:
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
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b

jr_024_76e6:
    ccf
    xor a
    jr nc, jr_024_7692

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_024_76f2

    rst $38
    rst $38

jr_024_76f2:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_024_76ba

    jr nc, jr_024_772b

    cp a
    ccf
    ld b, b
    ccf
    ccf
    inc d
    dec b
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    jp $00fc


    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop

jr_024_772b:
    ld e, a
    and b
    rst $38
    ld e, h
    rst $38
    scf
    ldh a, [rBCPS]
    rst $20
    db $10
    adc b
    rst $38
    ret nc

    ldh [$ff60], a
    ret nc

    ldh [$ffc0], a
    db $ed
    ld d, $ff
    call $bdf6
    or $8d
    ld [hl], $4d
    sub [hl]
    rst $38
    ld e, l
    ld [hl], $2d
    ld d, [hl]
    dec l
    ld d, $a0
    add b

jr_024_7751:
    rst $38
    ld h, b
    ret nc

    jr nz, jr_024_76e6

    sub b
    adc b
    jr jr_024_7751

    rst $38
    xor a
    xor b
    sub h
    ld e, a
    ld c, b
    ld hl, sp+$2d
    ld d, $fe
    ld h, b
    ld bc, $4d56
    or [hl]
    xor l
    ld [hl], $8d
    sub [hl]
    rst $38
    ld c, l
    or $4d
    halt
    ld c, d
    ld a, a
    ld bc, $ffff
    ld b, h
    rst $30
    add e
    db $fc
    dec e
    db $e3
    rst $30
    adc a
    rst $28
    or a
    ld h, a
    rst $30
    ld l, a
    ld bc, $7f01
    ret nz

    rst $38
    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $08
    rst $28
    rst $18
    cp a
    db $fd
    rst $18
    ld bc, $fc02
    inc bc
    rst $38
    ld hl, sp-$01
    ei
    cp a
    rst $30
    di
    push de
    ei
    db $fd
    ei
    inc bc
    inc bc
    pop bc
    rst $38
    ccf
    ld hl, sp-$39
    cp $f1
    rst $28
    and $ef
    rst $38
    or $00
    nop
    rrca
    nop
    db $10
    rrca
    scf
    rst $38
    ld [$173e], sp
    ld e, a
    ld a, $7f
    ld b, $7f
    push af
    ld a, [hl-]
    ld hl, $8012
    ld b, d
    nop
    ld e, [hl]
    add b
    xor c
    sbc $fb
    call $e1fe
    ld bc, $0877
    cp $57
    ld a, a
    ld a, a
    ld e, $ff
    ld l, [hl]
    ld e, a
    ld [hl], $f7
    ld l, a
    db $e3
    ld bc, $9eff
    nop
    ld l, l
    sbc [hl]
    cp a
    cp $7f
    cp $ff
    cp $fc
    nop
    nop
    ld bc, $0200
    ld bc, $07ff
    nop
    dec b
    inc bc
    dec bc
    rlca
    dec de
    rrca
    rst $38
    rrca
    rlca
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    rst $38
    ldh [rP1], a
    ret nc

    ldh [$ffea], a
    ldh a, [$ff8d]
    ldh a, [c]
    rst $38
    ld a, a
    cp $03
    nop
    inc b
    inc bc
    rrca
    nop
    rst $38
    dec bc
    rlca
    ld a, a
    rlca
    sbc a
    ld a, c
    cp [hl]
    ld a, a
    rst $38
    cp a
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, Call_024_7f00
    xor [hl]
    call c, $ecde
    db $fd
    ldh [c], a
    rst $00
    jr nz, @+$06

    rst $38
    nop
    nop
    ld c, $00
    ld de, $2f0e
    db $10
    ld a, a
    ld [hl], $0f
    ld e, a
    ccf
    ld a, a
    cpl
    rst $18
    nop
    ld b, $fe
    ld b, e
    ld a, [de]
    add d
    nop
    ld e, l
    add d
    and a
    sbc $8f
    db $fd
    cp $e1
    ld bc, $003f
    dec l
    ld e, $5e
    dec a
    rst $30
    rst $18
    ld l, l
    ld a, l
    nop
    ld [bc], a
    jr nc, jr_024_7861

jr_024_7861:
    ld c, b
    jr nc, @+$01

    xor b
    ld [hl], b
    ld a, d
    ldh a, [$fffd]
    ldh a, [c]
    db $db
    and $ff
    rst $38
    or $f5
    cp $bf
    cpl
    cp [hl]
    ld l, a
    rst $38
    rst $10
    ld l, a
    rst $10
    ld h, a
    or [hl]
    cpl
    or a
    ld l, a
    rst $38
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    rst $38
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $38
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    db $fd
    rst $10
    and b
    rrca
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    rst $38
    sub [hl]
    ei
    db $fd
    db $f4
    db $fd
    or $ff
    or $f7
    db $ed
    and $ad
    add b
    nop
    cp a
    or $eb
    or $df
    cp e
    ld b, a
    rst $38
    ld a, a
    rst $38
    add b
    add hl, bc
    ld e, a
    ccf
    rst $38
    ld hl, $7f1e
    ld hl, $0031
    ld a, [$fffc]
    pop af
    cp $fd
    cp $7d
    cp $3a
    db $fc
    rst $38
    add h
    ld a, b
    ld hl, sp-$80
    add b
    nop
    rst $28
    rra
    cp $e6
    ld bc, $3820
    db $10
    stop
    cp $fc
    rst $38
    ld a, [$74fc]
    ld hl, sp+$08
    ldh a, [$ffb0]
    ld b, b
    rst $38
    ldh [$ff80], a
    ldh [rLCDC], a
    ret nz

    nop
    rra
    rrca
    rst $38
    cpl
    rra
    cpl
    rra
    dec l
    rra
    inc d
    rrca
    rst $38
    inc c
    inc bc
    rrca
    inc b
    ld b, $00
    rst $38
    cp $fd
    rst $38
    nop
    inc b
    ldh a, [c]
    db $fc
    sbc $e0
    inc c
    ldh a, [rIE]
    db $fc
    ld [$0008], sp
    ld e, a
    ccf
    ld e, a
    ccf
    sub a
    dec l
    rra
    db $10
    ldh [rSB], a
    inc bc
    and e
    ld [hl+], a
    ldh [c], a
    ld bc, $ffdc
    ldh [$ff08], a
    ldh a, [$fff0]
    nop
    ldh [rLCDC], a
    ld b, b
    rst $28
    nop
    ld a, a
    cpl
    cp a
    ld h, b
    ld de, $7f97
    ld b, e
    rst $38
    ccf
    jr nc, jr_024_794e

    ccf
    db $10
    jr jr_024_7943

jr_024_7943:
    dec c
    rst $38
    cp $f1
    cp $fa
    db $f4
    db $ec
    ldh a, [$ffd0]
    xor a

jr_024_794e:
    ldh [rNR41], a
    ret nz

    ret nz

    pop bc
    jr z, jr_024_7994

    push hl
    ld bc, $ff0f
    nop
    ld c, $04
    inc b
    nop
    pop hl
    cp $e2
    adc $e0
    inc bc
    or b
    ret nz

    ld h, b
    ret nz

    add hl, bc

jr_024_7969:
    pop hl
    inc l
    reti


jr_024_796c:
    ld l, a
    rst $38
    jp c, $f96f

    ld l, a
    db $d3
    ld h, a
    or l
    cpl
    db $dd
    cp c
    ldh [rIF], a
    sub d
    ld l, a
    db $eb
    ld h, b
    rrca
    push hl
    rst $08
    rst $38
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_024_7969

    rst $38
    jr z, jr_024_796c

    ld d, a
    ei
    ld d, [hl]
    ei
    ld d, l
    di
    rst $38

jr_024_7994:
    inc d
    ei
    inc d
    ei
    dec h
    ei
    and h
    ei
    rst $38
    add [hl]
    ei
    ld l, a
    or $ed
    or $6f
    or $ff
    rst $08
    and $49
    db $f4
    ld e, c
    or $1b
    or $ed
    adc a
    ld b, $20
    ld l, $17
    nop
    jr jr_024_79bf

    rst $38
    ld [hl], a
    ldh [$ff0d], a
    jr nz, jr_024_79de

    inc sp
    add hl, hl

jr_024_79bf:
    ld [bc], a
    inc hl
    inc [hl]
    ld b, e
    jr nz, jr_024_7a2e

    sbc [hl]
    xor l
    db $fd
    sbc $e6
    inc bc
    dec a
    ld a, a
    dec c
    rst $38
    ld [hl], l
    ld [hl], a
    push af
    rrca
    rst $20
    inc hl
    add hl, hl
    ldh [rNR44], a
    ld a, [$0ffc]
    nop
    rst $38
    ld [hl], b

jr_024_79de:
    rrca
    rst $30
    ld c, b
    xor [hl]
    ld d, a
    ld a, a
    dec e
    rst $28
    rst $38
    ld l, l
    ld e, a
    dec [hl]
    inc bc
    inc h
    ld e, $00
    xor l
    cpl
    ld e, $5e
    cp h
    cp l
    ld h, b
    ld d, $fa
    nop
    inc h
    ld c, c
    add hl, sp
    db $fd
    inc a
    jr nz, jr_024_79ff

Jump_024_79ff:
jr_024_79ff:
    ld e, d
    inc a
    cp l
    ld d, [hl]
    cp a
    ld a, a
    ld a, a

jr_024_7a06:
    cp e
    ld l, a
    ld e, e
    inc a
    ld hl, $1e1e
    inc d
    dec sp
    ld sp, hl
    add b
    ld [hl+], a
    nop

jr_024_7a13:
    rra
    nop
    ld a, b
    nop
    ret nc

    ld l, a
    sub d
    rst $38
    ld h, a

jr_024_7a1c:
    sub b
    cpl
    sub a
    ld l, b
    cp b
    ld b, a
    ret nz

    rst $38
    ccf
    jr nz, jr_024_7a06

    sbc a

jr_024_7a28:
    ldh [$ff62], a
    rst $08
    ld h, b
    rst $38
    rst $18

jr_024_7a2e:
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_024_7a13

    ld h, b
    rst $38
    rst $18
    jr nc, jr_024_7a28

    rst $38
    nop
    ld h, $f3
    inc b
    rst $38
    ei
    db $fc
    inc bc

jr_024_7a42:
    rlca
    ld hl, sp+$0c
    ei
    inc c
    rst $38
    ei
    jr jr_024_7a42

    rst $38
    nop
    adc e
    or $09
    rst $38
    and $09
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    rst $38
    db $fc
    ld c, $fa
    ld hl, sp+$07
    ld [hl], a
    rrca
    sbc a
    ld a, h
    ld h, b
    add hl, hl
    ld bc, $2e20
    rra
    jr jr_024_7a72

    rlca
    ld [$ff20], sp
    inc b
    ld hl, sp+$78

jr_024_7a72:
    add b
    ret nz

    nop
    rst $38
    ld [hl], a
    cp e
    rst $30
    rrca
    ld hl, $bf1a
    ld a, a
    ld e, [hl]
    ld b, d
    jr jr_024_7a1c

    db $fc

jr_024_7a83:
    inc c
    ld [bc], a
    jp $df01


    ld a, $e3
    ld e, l
    rst $38
    jr nz, jr_024_7a83

    and b
    nop
    dec e
    ldh [c], a
    nop
    ld [hl+], a
    ld a, [hl]
    db $fc
    ld a, $fc
    push bc
    adc h
    ldh [c], a
    inc hl
    nop
    nop
    inc h
    jp $0503


    inc h
    ldh a, [c]
    db $fc
    push de
    ld [$2400], a
    ld l, b
    inc b
    inc h
    ld b, b
    db $e3
    ld c, $7c
    cp e
    rrca
    ld l, a
    ld a, a
    ccf
    ld c, h
    jr nz, @+$2a

    inc bc
    rrca
    db $e3
    ld c, $07
    rrca
    ld sp, hl
    ld bc, $3640
    push bc
    rrca
    add h
    ld a, b
    cp d
    ld a, h
    db $dd
    cp $40
    ld h, $ff
    ld a, [hl]
    cp l
    ld a, [hl]
    ld e, d
    inc a
    inc a
    ld a, h
    jr nz, @+$12

    ld hl, $fd01
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $dd
    ld [bc], a
    ld bc, $0dfe
    ld [de], a
    or h
    ld a, b
    ld a, [$f97c]
    ld [hl], $b7
    db $eb
    ld e, [hl]
    rst $08
    nop

jr_024_7aed:
    inc bc
    ld b, d
    ld [bc], a
    inc bc
    or [hl]
    ld a, b
    ld sp, hl
    db $e3
    ld a, [hl]
    ei
    jr nz, jr_024_7afa

    inc bc

jr_024_7afa:
    ld bc, $4403
    add c
    rst $38
    jr c, @+$01

    rst $00
    call nz, $82bb
    ld c, h
    add d
    dec c
    ld c, e
    rst $38
    ld a, [hl]
    ld bc, $45fe
    or $81
    cp $19
    rst $38
    cp $80
    rst $38
    ld [de], a
    sbc $80
    rst $38
    ld bc, $9edf
    ld bc, $01fe
    cp [hl]
    jr nz, jr_024_7b23

jr_024_7b23:
    cp $82
    rst $18
    ld a, l
    ld b, [hl]
    cp d
    cp b
    rst $00
    ld b, $4b
    adc c
    ret nc

    rst $18
    pop hl
    ld h, b
    db $d3
    ldh [$ffdf], a
    ld [$b64b], sp
    dec l
    rst $38
    sub $2d
    sub $a0
    sub a
    ld h, b
    rst $10
    jr nz, jr_024_7baa

    sbc a
    sub b
    adc a
    ld b, $4b
    ld b, b
    ld bc, $d62d
    rlca
    ld c, e
    nop
    ld c, a
    inc e
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
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_024_7aed

    nop
    add b
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $fb24
    nop
    ld a, [hl]
    ld b, b
    nop
    ld l, $00
    ld l, d
    nop
    ld [hl+], a
    ldh a, [rIF]
    ld bc, $010f
    rrca
    ld bc, $0100
    ld d, [hl]
    nop
    ld h, $00
    rlca
    ld a, [hl+]
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0ffc
    ld bc, $0106
    rrca
    nop
    jr jr_024_7bb9

jr_024_7baa:
    scf
    ld [$38ff], sp
    rla
    ld h, c
    ld a, $79
    ld b, $7d
    ld a, [hl-]
    ld a, [$0e21]
    add b

jr_024_7bb9:
    ld b, d
    nop
    ld e, [hl]
    add b
    daa
    sbc $31
    db $fd
    adc $e1
    ld bc, $0877
    cp b
    ld d, a
    ld h, c
    ld e, $bf
    pop af
    ld l, [hl]
    ld a, c
    ld d, $f1
    ld l, a
    db $e3
    ld bc, $ff9e
    nop
    ld h, c
    sbc [hl]
    ld d, c
    cp [hl]
    ld h, c
    cp [hl]
    and d
    rst $38
    db $fc
    nop
    nop
    ld bc, $0300
    ld bc, $ff07
    nop
    dec b
    inc bc
    ld a, [bc]
    rlca
    jr jr_024_7bfd

    ld [$07ff], sp
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    ldh [rIE], a
    nop
    sub b
    ldh [$ff0a], a

jr_024_7bfd:
    ldh a, [$ff7d]
    add d
    add l
    rst $38
    ld a, [hl]
    inc bc
    nop
    ld b, $03
    rrca
    nop
    dec bc
    rst $38
    rlca
    ld a, h
    rlca
    add h
    ld a, e
    cp d
    ld a, l
    adc h
    rst $38
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, $2200
    rst $30
    call c, $ec12
    pop hl
    ld bc, $fe79
    nop
    nop
    rst $38
    ld c, $00
    add hl, de
    ld c, $3f
    db $10
    jr nc, jr_024_7c3e

    cp a
    ld h, b
    ccf
    ld l, b
    scf
    add sp, $57
    ld h, l
    dec e
    add d
    ld a, a
    nop
    ld e, l
    add d
    dec l

jr_024_7c3e:
    sbc $01
    cp $e3
    ld bc, $31ff
    ld c, $61
    ld a, $ea
    ld d, l
    ld a, c
    daa
    db $fd
    jp hl


    nop
    ld [bc], a
    ld [hl], b
    nop
    adc b
    ld [hl], b
    ld c, d
    ldh a, [$ff9f]
    adc l
    ldh a, [c]
    adc l
    or $09
    jr nz, jr_024_7c5e

jr_024_7c5e:
    rlca
    inc c
    ld h, b
    rst $18
    ccf
    ld [hl], a
    ld [$77e9], sp
    dec bc
    inc c
    or c
    adc $f0
    add hl, hl
    ld c, $21
    ld [bc], a
    ld b, e
    inc hl
    ld b, e
    inc c
    ld h, a
    sbc [hl]
    ld sp, $ffce
    cp b
    ld b, a
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    rst $38
    ld c, b
    ccf
    ld hl, $7f1e
    ld hl, $0031
    rst $38
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$39
    cp $41
    cp $ff
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld hl, sp-$80
    add b
    nop
    ei
    ldh a, [$ff1f]
    and $01
    jr nz, jr_024_7cdb

    db $10
    stop
    rst $38
    ld [hl+], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rIE]
    or b
    ld b, b
    ldh [$ff80], a
    ldh [rLCDC], a
    ret nz

    nop
    rst $38
    inc d
    rrca
    inc l
    rra
    jr z, jr_024_7cde

    ld a, [hl+]
    dec e
    rst $38
    ld [de], a
    dec c
    ld c, $01
    rrca
    inc b
    ld b, $00
    rst $18
    ld a, c
    cp $e1
    cp $01
    ldh [$ff03], a
    ld e, $e0
    rst $38
    inc c
    ldh a, [$fffc]
    ld [$0008], sp

jr_024_7cdb:
    ld b, h
    ccf
    rst $38

jr_024_7cde:
    ld b, b
    ccf
    jr nz, jr_024_7d01

    jr jr_024_7ceb

    inc b
    inc bc
    ld sp, hl
    inc bc
    ldh [c], a
    inc hl
    db $e3

jr_024_7ceb:
    ld bc, $e01c
    ld [$f0f0], sp
    rst $38
    nop
    ldh [rLCDC], a
    ld b, b
    nop
    ld c, b
    scf
    adc h
    ei
    ld a, a
    add c
    jr nz, @+$0a

    ld e, b
    ccf

jr_024_7d01:
    jr nc, jr_024_7d12

    ccf
    rst $38
    db $10
    jr jr_024_7d08

jr_024_7d08:
    ld a, c
    add [hl]
    push hl
    ld a, [$dd06]
    ld hl, sp+$21
    ld b, $30

jr_024_7d12:
    ret nz

    ret nz

    ldh [rNR52], a
    call z, $fd3f
    add b
    ldh [c], a
    ld bc, $0f32
    rrca
    nop
    ld c, $04
    rst $28
    inc b
    nop
    ld de, $e1ee
    inc bc
    jr nc, jr_024_7ceb

    ld h, b

jr_024_7d2c:
    xor h
    ret nz

    add hl, bc
    pop hl
    jr z, jr_024_7da2

    rrca
    dec b
    inc c
    ld [hl+], a
    ld h, b
    ld b, $07
    and $06
    inc c
    add d
    ld a, h
    nop
    inc c
    ret nz

    jr jr_024_7d2c

    ld [hl], a
    ldh a, [$ffba]
    inc h
    ld [bc], a
    ld c, d
    jr nz, @+$08

    rrca
    nop
    add [hl]
    ldh [c], a
    dec c
    ld bc, $06fc
    ld [bc], a
    push hl
    rra
    ld h, d
    dec a
    ld [hl], d
    dec c
    ld [$db75], a
    ld [hl], e
    rrca
    db $eb
    rra
    ld [bc], a
    db $fc
    db $e3
    ld de, $3ec9
    rst $18
    db $e3
    ld e, l
    rst $38
    jr nz, @-$5e

    nop
    dec bc
    ld h, $f8
    rst $38
    ld b, d
    db $fc
    ld b, e
    db $fc
    ld h, c
    cp $b1
    ld a, [hl]
    rst $30
    jp hl


    sbc [hl]
    sbc d
    nop
    add hl, bc
    rrca
    nop
    ld a, b
    rrca
    rst $38
    or a
    ld c, b
    cp b
    ld d, a
    ld h, d
    dec e
    ldh a, [c]
    ld l, l
    rst $30
    ld e, d
    dec [hl]
    di
    ld [bc], a
    ld [hl+], a
    ld e, $00
    and c
    ld e, $ff
    ld d, d
    cp h
    ld h, c
    cp [hl]
    and c
    ld a, [hl]
    ld b, d
    db $fc
    ld l, $0d

jr_024_7da2:
    inc d
    ld b, d
    db $fc
    ld [hl+], a
    ld [$4014], sp
    rra
    dec a
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
    ld d, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_024_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
