; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    ld l, $3e
    ld bc, $25ea
    add $fa
    ld a, c
    call z, Call_02e_7aea
    call z, Call_02e_7bfa
    call z, $79ea
    call z, $8acd
    ld [hl+], a
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $6675
    ld c, $2a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5ec0
    ld c, $2a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $2a
    ld de, $8000
    call Call_000_31a0
    ld hl, $54e5
    ld c, $2a
    ld de, vBGMap0
    call Call_000_31a0
    ld a, $3c
    ld [$cb5c], a
    ld a, $01
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cc96], a
    ld [$cc76], a
    ld [$cc77], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld hl, $cb2f
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ld [$cc9a], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$ba0e], a
    ld [$c90f], a
    ld [wCollisionNoMovement], a
    ld [$c800], a
    ld [$c80e], a
    ld [$c760], a
    ld [$c780], a
    ld [$c7a0], a
    ld [$c800], a
    ld [$c820], a
    call $511f
    call Call_02e_51f0
    call Call_000_1275
    ld hl, $629f
    ld a, $2f
    call BankSwitchCallHL
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_02e_40dd

    bit 0, a
    jr z, jr_02e_40dd

    bit 1, a
    jr nz, jr_02e_40e4

    ld a, $02
    call Call_000_18e6
    jr jr_02e_40e9

jr_02e_40dd:
    ld a, $00
    call Call_000_18e6
    jr jr_02e_40e9

jr_02e_40e4:
    ld a, $03
    call Call_000_18e6

jr_02e_40e9:
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $26
    call Call_000_25c5
    call Call_000_3dfd
    ld a, [$b899]
    cp $01
    ret nz

    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    xor a
    ld [$cc98], a
    ld [$cc99], a
    ret


    call Call_000_0d90
    ld a, [$cc9a]
    or a
    jr z, jr_02e_4134

    ld a, [$cb56]
    or a
    jr nz, jr_02e_4134

    ld a, $50
    ld [$cb8f], a
    xor a
    ld [$cc9a], a

jr_02e_4134:
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    ld a, [$b899]
    cp $01
    jr nz, jr_02e_4155

    call Call_02e_5385
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5262
    call Call_02e_537c
    call $1e32
    ret


jr_02e_4155:
    call Call_000_3cf8
    call Call_02e_545d
    call Call_02e_422c
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5262
    call Call_02e_5445
    call Call_02e_417d
    call Call_02e_53fb
    call $1e32
    call Call_02e_4b42
    call Call_02e_4487
    call Call_02e_54ae
    ret


Call_02e_417d:
    ret


    ld a, [$cb79]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [sCurrentHour]
    cp TIME_5_AM
    ret nz

    ld a, [sCurrentMinute]
    cp $0e
    ret nz

    ld a, [sPlayerGender]
    ld b, a
    ld a, $16
    add b
    call Call_000_3f52
    ld a, $f0
    ld [$cb79], a
    ret


    ld a, [$cb79]
    or a
    ret z

    dec a
    ld [$cb79], a
    or a
    jr z, jr_02e_41b7

    ldh a, [$ff8b]
    and $01
    jr nz, jr_02e_41b7

    ret


jr_02e_41b7:
    ld a, $06
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ld a, [$c606]
    and $f8
    or $08
    ld [$c606], a
    ld a, [$c608]
    and $f8
    or $08
    ld [$c608], a
    ld a, $01
    ld [$c910], a
    call Call_02e_41de
    ret


Call_02e_41de:
    ld a, [$c90f]
    or a
    ret z

    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [$c911]
    dec a
    ld [$c911], a
    jr z, jr_02e_4213

    cp $13
    jr nc, jr_02e_41f7

    pop hl
    ret


jr_02e_41f7:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld a, $01
    ld [$c910], a
    xor a
    ld [$c7c0], a
    pop hl
    ret


jr_02e_4213:
    ld a, [$c90f]
    ld b, a
    ld a, [wSTAT_HandlerIndex]
    add b
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    pop hl
    ret


Call_02e_422c:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [wTextID]
    cp $ff
    jr nz, jr_02e_4292

    call Call_02e_41de
    call Call_000_0e54
    call Call_02e_4503
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_02e_4292

    ld a, [$cc6e]
    or a
    jp nz, Jump_02e_4839

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_02e_4558

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_02e_4fc4

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_02e_4554

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_02e_4298

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_02e_4343

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_02e_42d1

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_02e_430a

    ld a, [wInputFreezeTimer]
    or a
    ret nz

jr_02e_4292:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_4298:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_42cd

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_42cd:
    call Call_02e_43c8
    ret


Jump_02e_42d1:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_4306

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_43a2

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_43b5

    ret


jr_02e_4306:
    call Call_02e_4428
    ret


Jump_02e_430a:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_433f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_43a2

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_43b5

    ret


jr_02e_433f:
    call Call_02e_445b
    ret


Jump_02e_4343:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_4378

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_4378:
    call Call_02e_43fa
    ret


Jump_02e_437c:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_4428
    ret


Jump_02e_438f:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_445b
    ret


Jump_02e_43a2:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_43fa
    ret


Jump_02e_43b5:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_43c8
    ret


Call_02e_43c8:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $d3
    jr nc, jr_02e_43f4

    ld a, [$c608]
    cp $c0
    jr nc, jr_02e_43ed

    cp $50
    jr c, jr_02e_43ed

    jr jr_02e_43e0

jr_02e_43e0:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_02e_43e8:
    ld hl, $c608
    inc [hl]
    ret


jr_02e_43ed:
    ld hl, $c60b
    inc [hl]
    jr jr_02e_43e8

    ret


jr_02e_43f4:
    ld a, $1d
    ld [$c911], a
    ret


Call_02e_43fa:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $c1
    jr nc, jr_02e_4421

    ld a, [$c608]
    cp $51
    jr c, jr_02e_4421

    jr jr_02e_4414

jr_02e_4414:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_02e_441c:
    ld hl, $c608
    dec [hl]
    ret


jr_02e_4421:
    ld hl, $c60b
    dec [hl]
    jr jr_02e_441c

    ret


Call_02e_4428:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$c606]
    cp $99
    jr nc, jr_02e_4454

    ld a, [$c607]
    cp $00
    jr nz, jr_02e_4447

    ld a, [$c606]
    cp $59
    jr c, jr_02e_4454

jr_02e_4447:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_02e_444f:
    ld hl, $c606
    dec [hl]
    ret


jr_02e_4454:
    ld hl, $c60a
    dec [hl]
    jr jr_02e_444f

    ret


Call_02e_445b:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $d8
    ret nc

    ld a, [$c606]
    cp $98
    jr nc, jr_02e_4480

    ld a, [$c606]
    cp $58
    jr c, jr_02e_4480

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_02e_447b:
    ld hl, $c606
    inc [hl]
    ret


jr_02e_4480:
    ld hl, $c60a
    inc [hl]
    jr jr_02e_447b

    ret


Call_02e_4487:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cb34]
    and $01
    ret z

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_02e_44b7

    cp $21
    jr z, jr_02e_44c3

    cp $22
    jr z, jr_02e_44cf

    cp $23
    jr z, jr_02e_44db

    cp $24
    jr z, jr_02e_44e7

    cp $25
    jr z, jr_02e_44f3

    ret


jr_02e_44b7:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $05
    ld [$cb50], a
    jr jr_02e_44fd

jr_02e_44c3:
    ld a, $00
    ld [$cc7b], a
    ld a, $08
    ld [$cb50], a
    jr jr_02e_44fd

jr_02e_44cf:
    ld a, $01
    ld [$cc7b], a
    ld a, $09
    ld [$cb50], a
    jr jr_02e_44fd

jr_02e_44db:
    ld a, $02
    ld [$cc7b], a
    ld a, $0a
    ld [$cb50], a
    jr jr_02e_44fd

jr_02e_44e7:
    ld a, $03
    ld [$cc7b], a
    ld a, $0b
    ld [$cb50], a
    jr jr_02e_44fd

jr_02e_44f3:
    ld a, $04
    ld [$cc7b], a
    ld a, $0c
    ld [$cb50], a

jr_02e_44fd:
    ld a, $1d
    ld [$cb4f], a
    ret


Call_02e_4503:
    ld a, [$cc96]
    or a
    ret z

    dec a
    ld [$cc96], a
    or a
    ret nz

    ld a, [$cc97]
    rst $00
    jr @+$47

    add hl, de
    ld b, l
    dec [hl]
    ld b, l
    ret


    ld a, $56
    call $16d1
    ld a, $1e
    ld [wInputFreezeTimer], a
    ld hl, sPlayerMoney
    ld bc, $0064
    call AddSignedBCToHL
    call UpdatePlayerMoneyTileData
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


    ld a, [sNumPowerBerriesEaten]
    inc a
    ld [sNumPowerBerriesEaten], a
    ld a, $37
    call $16d1
    ld a, $3c
    ld [wInputFreezeTimer], a
    ld [$cb8c], a
    ld a, $07
    ld [$cb8d], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_4554:
    call Call_000_1923
    ret


Call_02e_4558:
Jump_02e_4558:
    ld a, [wPlayerFacingDirection]
    rst $00
    ld h, h
    ld b, l
    ld l, h
    ld b, l
    ld [hl], h
    ld b, l
    ld a, h
    ld b, l
    call Call_000_14f9
    call Call_02e_5296
    jr jr_02e_4582

    call Call_000_150b
    call Call_02e_529f
    jr jr_02e_4582

    call Call_000_1514
    call Call_02e_52a8
    jr jr_02e_4582

    call Call_000_1502
    call Call_02e_52b1

jr_02e_4582:
    ld a, [$cb4a]
    or a
    jr nz, jr_02e_45a7

    ld a, [$cc1b]
    cp $00
    jr nz, jr_02e_45a7

    ld a, [wCollisionNoMovement]
    or a
    jr nz, jr_02e_45a7

    ld a, [wRightOrUpSideFacingTileID]
    cp BIG_LOG_TOP_LEFT_TILE
    jp z, Jump_02e_46ef

    cp BIG_LOG_TOP_RIGHT_TILE
    jp z, Jump_02e_46fa

    cp BIG_LOG_BOTTOM_LEFT_TILE
    jp z, Jump_02e_4705

jr_02e_45a7:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jr z, jr_02e_460e

    ld a, [sPlayerEnergy]
    or a
    jr nz, jr_02e_45c8

    ld a, $01
    ld [wInputFreezeTimer], a
    ld b, $00
    call CheckForNoEnergyAnimation

jr_02e_45c8:
    ld a, [$cc1b]
    cp $00
    ret nz

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp SICKLE
    jr z, jr_02e_4606
    cp HOE
    jr z, jr_02e_4606
    cp HAMMER
    jr z, jr_02e_4606
    cp AX
    jr z, jr_02e_4606
    cp SUPER_SICKLE
    jr z, jr_02e_4606
    cp SUPER_HOE
    jr z, jr_02e_4606
    cp SUPER_HAMMER
    jr z, jr_02e_4606
    cp SUPER_AX
    jr z, jr_02e_4606
    cp PICK_AX
    jr z, jr_02e_4606

    ld a, [$cc75]
    or a
    jp nz, Jump_02e_4710

jr_02e_4606:
    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL

jr_02e_460e:
    ld a, [$cb4a]
    or a
    jp nz, Jump_02e_46eb

    ld a, [$cc1b]
    cp $00
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    jr nz, jr_02e_4628

    ld a, [$cc75]
    or a
    jr nz, jr_02e_4628

    ret


jr_02e_4628:
    ld a, [wRightOrUpSideFacingTileID]
    cp BIG_LOG_TOP_LEFT_TILE
    jp z, Jump_02e_46ef

    cp BIG_LOG_TOP_RIGHT_TILE
    jp z, Jump_02e_46fa

    cp BIG_LOG_BOTTOM_LEFT_TILE
    jp z, Jump_02e_4705

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp z, Jump_02e_48a4
    cp SICKLE
    jr z, jr_02e_46a5
    cp HOE
    jr z, jr_02e_46a5
    cp HAMMER
    jr z, jr_02e_4671
    cp AX
    jr z, jr_02e_46a5
    cp SUPER_SICKLE
    jr z, jr_02e_46a5
    cp SUPER_HOE
    jr z, jr_02e_46a5
    cp SUPER_HAMMER
    jr z, jr_02e_4671
    cp SUPER_AX
    jr z, jr_02e_46a5
    cp PICK_AX
    jr z, jr_02e_46cd
    ret

jr_02e_4671:
    ld a, [$cc75]
    or a
    ret z

    ld a, [$ba0d]
    bit 0, a
    jr z, jr_02e_46ac

    bit 2, a
    jr nz, jr_02e_46ac

    bit 1, a
    jr nz, jr_02e_46ac

    ld a, [$cc79]
    cp $00
    jr nz, jr_02e_46ac

    ld a, [sSpriteTotalHappiness]
    add $0a
    cp $64
    jr c, jr_02e_4697
    ld a, $63

jr_02e_4697:
    ld [sSpriteTotalHappiness], a
    ld a, $0a
    call Call_000_0f47
    ld a, $01
    ld [$ba0e], a
    ret

jr_02e_46a5:
    ld a, [$cc75]
    or a
    jr nz, jr_02e_46ac
    ret

jr_02e_46ac:
    ld a, $01
    ld [$cc6e], a
    ld a, [$b9d9]
    inc a
    ld [$b9d9], a
    cp $05
    ret c

    xor a
    ld [$b9d9], a
    ld a, [sSpriteTotalHappiness]
    sub $0a
    ld [sSpriteTotalHappiness], a
    ret nc

    xor a
    ld [sSpriteTotalHappiness], a
    ret


jr_02e_46cd:
    ld a, [$cc75]
    or a
    jr nz, jr_02e_46ac

    ld a, [wRightOrUpSideFacingTileID]
    cp $62
    jp z, Jump_02e_483f

    cp $63
    jp z, Jump_02e_485d

    cp $64
    jp z, Jump_02e_486a

    cp $65
    jp z, Jump_02e_4877

    ret


Jump_02e_46eb:
    call Call_02e_4931
    ret


Jump_02e_46ef:
    ld a, $ae
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_46fa:
    ld a, $af
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_02e_4705:
    ld a, $b0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

Jump_02e_4710:
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_02e_471e

    ld a, [$ba0d]
    or a
    jp nz, Jump_02e_47af

Jump_02e_471e:
jr_02e_471e:
    ld a, [sSpriteTotalHappiness]
    cp $0a
    jp nc, Jump_02e_47da

Jump_02e_4726:
    ld a, [sSpriteDailyHappiness]
    set 0, a
    ld [sSpriteDailyHappiness], a
    call Call_02e_50f0
    ld a, [sSpriteEventFlags]
    bit EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    jr nz, jr_02e_474d

    set EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    ld [sSpriteEventFlags], a
    ld a, 1
    ld [sSpriteFirstInteractionFlag], a
    ld a, $b1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_02e_474d:
    ld a, [$cc79]
    cp $02
    jr z, jr_02e_4775

    cp $03
    jr z, jr_02e_4792

    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_02e_476a

    ld a, $b2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_476a:
    ld a, $b4
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4775:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_02e_4787

    ld a, $b5
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4787:
    ld a, $b7
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4792:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_02e_47a4

    ld a, $b9
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_47a4:
    ld a, $bb
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_47af:
    ld a, [$cc79]
    cp $00
    jp nz, Jump_02e_471e

    ld a, [$ba0d]
    bit 1, a
    jp nz, Jump_02e_47ca

    ld a, $e0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_47ca:
    ld a, $e1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $04
    call Call_000_18e6
    ret


Jump_02e_47da:
    ld a, [sSpriteEventFlags]
    bit EVENT_SPRITE_GAVE_BERRY, a
    jr nz, jr_02e_47f4

    set EVENT_SPRITE_GAVE_BERRY, a
    ld [sSpriteEventFlags], a
    ld a, $c2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_02e_4726

    ret

jr_02e_47f4:
    ld a, [sSpriteTotalHappiness]
    cp $1e
    jp c, Jump_02e_4726

    ld a, [sSpriteEventFlags]
    bit 7, a
    jr nz, jr_02e_4816

    set 7, a
    ld [sSpriteEventFlags], a
    ld a, $bf
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_02e_4726


    ret


jr_02e_4816:
    ld a, [sSpriteTotalHappiness]
    cp $32
    jp c, Jump_02e_4726

    ld a, [sSpriteEventFlags]
    bit 6, a
    jp nz, Jump_02e_4726

    set 6, a
    ld [sSpriteEventFlags], a
    ld a, $c0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_02e_4726


    ret


Jump_02e_4839:
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ret


Jump_02e_483f:
    ld a, $00
    ld [$cc97], a

jr_02e_4844:
    ld hl, $4001
    ld a, $2f
    call BankSwitchCallHL
    ld hl, $410d
    ld a, $2f
    call BankSwitchCallHL
    ld a, [$cc96]
    add $27
    ld [$cc96], a
    ret


Jump_02e_485d:
    ld a, [wPlayerFacingDirection]
    cp $03
    ret nz

    ld a, $01
    ld [$cc97], a
    jr jr_02e_4844

Jump_02e_486a:
    ld a, [wPlayerFacingDirection]
    cp $03
    ret nz

    ld a, $02
    ld [$cc97], a
    jr jr_02e_4844

Jump_02e_4877:
    ld hl, $ba0b
    inc [hl]
    ld a, [hl]
    cp $06
    ret nz

    ld a, $ff
    ld [$ba0b], a
    ld a, $06
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld hl, $d800
    ld de, $0052
    add hl, de
    ld bc, $0000
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ld a, [$cc96]
    add $44
    ld [$cc96], a
    ret


Jump_02e_48a4:
    ld a, [wRightOrUpSideFacingTileID]
    cp $26
    jr z, jr_02e_48b3

    ld a, [$cc75]
    or a
    jp nz, Jump_02e_4710

    ret


jr_02e_48b3:
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $3c
    call $16d1
    ld a, $30
    ld [$cb4a], a
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $07
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld bc, $8103
    ld hl, $d800
    ld a, [$c606]
    cp $78
    jr c, jr_02e_48f8

    ld a, $01
    ld [$cc18], a
    ld a, [$ba4e]
    set 1, a
    ld [$ba4e], a
    ld de, $0100
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


jr_02e_48f8:
    ld a, $00
    ld [$cc18], a
    ld a, [$ba4e]
    set 0, a
    ld [$ba4e], a
    ld de, $013c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $18
    call $16d1
    ld a, $01
    ld [$cb4a], a
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $09
    ld [$cc16], a
    xor a
    call Call_02e_535c
    ret


Call_02e_4931:
    ld a, [$cc75]
    or a
    call nz, Call_02e_4945
    ld a, [$cb4a]
    cp $30
    jr z, jr_02e_4982

    cp $32
    jp z, Jump_02e_4a06

    ret


Call_02e_4945:
    ld a, [$cb4a]
    cp $30
    jr z, jr_02e_4955

    cp $01
    jr z, jr_02e_4981

    cp $32
    jr z, jr_02e_4955

    ret


jr_02e_4955:
    ld a, [sSpriteTotalHappiness]
    cp $3c
    jr nc, jr_02e_4967

    ld a, $bc
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4967:
    cp $5a
    jr nc, jr_02e_4976

    ld a, $ee
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4976:
    ld a, $ef
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_4981:
    ret


jr_02e_4982:
    ld a, [$cc75]
    or a
    jr nz, jr_02e_49b3

    call Call_02e_52ba
    ld a, [de]
    cp $0e
    jr z, jr_02e_49da

    cp $01
    jp z, Jump_02e_49e3

    cp $41
    jp z, Jump_02e_49e3

    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld a, $3d
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_02e_49b3:
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $3c
    call $16d1
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [sSpriteDailyHappiness]
    set 1, a
    ld [sSpriteDailyHappiness], a
    call Call_02e_50f0
    ret


jr_02e_49da:
    ld a, $3c
    call $16d1
    jp Jump_02e_4ad6


    ret


Jump_02e_49e3:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


Jump_02e_4a06:
    ld a, [$cc75]
    or a
    jr nz, jr_02e_4a4a

    call Call_02e_52ba
    ld a, [de]
    cp $0e
    jr z, jr_02e_4a84

    cp $01
    jp z, Jump_02e_4aa0

    cp $41
    jp z, Jump_02e_4aa0

    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $41
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc19]
    ld [sItemSlot], a
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cc1a]
    ld [hl], a
    ret


jr_02e_4a4a:
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $40
    call $16d1
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [sSpriteDailyHappiness]
    set 1, a
    ld [sSpriteDailyHappiness], a
    call Call_02e_50f0
    ld a, [$cc19]
    ld [sItemSlot], a
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cc1a]
    ld [hl], a
    ret


jr_02e_4a84:
    ld a, [$cc19]
    ld [sItemSlot], a
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cc1a]
    ld [hl], a
    ld a, $40
    call $16d1
    jp Jump_02e_4ad6


    ret


Jump_02e_4aa0:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, [$cc19]
    ld [sItemSlot], a
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cc1a]
    ld [hl], a
    ret


Jump_02e_4ad6:
    call Call_000_1cff
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $0a
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Call_02e_4af8:
    ld a, [$cc79]
    cp $01
    jr z, jr_02e_4b20

    ld a, [$cc95]
    dec a
    ld c, $40
    call Multiply8Bit
    ld d, h
    ld e, l
    ld a, [$cc94]
    ld c, $02
    call Multiply8Bit
    add hl, de
    ld de, vBGMap0
    add hl, de
    ld a, h
    ld [$cc92], a
    ld a, l
    ld [$cc93], a
    ret


jr_02e_4b20:
    ld a, [$cc95]
    add $03
    ld c, $40
    call Multiply8Bit
    ld d, h
    ld e, l
    ld a, [$cc94]
    ld c, $02
    call Multiply8Bit
    add hl, de
    ld de, vBGMap0
    add hl, de
    ld a, h
    ld [$cc92], a
    ld a, l
    ld [$cc93], a
    ret


Call_02e_4b42:
    ld a, [$cc16]
    rst $00
    ld e, [hl]
    ld c, e
    ld e, a
    ld c, e
    and b
    ld c, e
    ret nz

    ld c, e
    ld e, d
    ld c, h
    xor l
    ld c, h
    ld bc, $6c4d
    ld c, l
    or b
    ld c, l
    jp nc, $244d

    ld c, [hl]
    ld h, c
    ld c, [hl]
    ret


    ld a, [$cc17]
    cp $04
    jr c, jr_02e_4b98

    sub $04
    ld hl, $4e9c
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

Jump_02e_4b7d:
jr_02e_4b7d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4b7d

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $07
    jr nz, jr_02e_4b98

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


Jump_02e_4b98:
jr_02e_4b98:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $04
    jr c, jr_02e_4b98

    sub $04
    ld hl, $4ebc
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
    jr jr_02e_4b7d

    ld a, [$cc17]
    cp $32
    jr c, jr_02e_4c12

    sub $32
    ld hl, $4fba
    call LoadWordFromTableHL
    ld a, [$cc92]
    ld d, a
    ld a, [$cc93]
    ld e, a
    add hl, de
    ld c, $06
    call Call_000_0930
    ld b, $04
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld hl, $4efc
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_02e_4bf7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4bf7

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jr nz, jr_02e_4c12

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


Jump_02e_4c12:
jr_02e_4c12:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    cp $32
    ret nz

    ld a, $76
    call $16d1
    ld a, $76
    call Call_02e_5479
    ld hl, $5276
    ld a, [$cc94]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c646], a
    ld hl, $5286
    ld a, [$cc95]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c648], a
    ld hl, $c64a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c646]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c648]
    sub b
    ld [hl+], a
    ret


    ld a, [$cc17]
    cp $32
    jr c, jr_02e_4c12

    sub $32
    ld hl, $4fba
    call LoadWordFromTableHL
    ld a, [$cc92]
    ld d, a
    ld a, [$cc93]
    ld e, a
    add hl, de
    ld c, $06
    call Call_000_0930
    ld b, $04
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld hl, $4f10
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_02e_4c91:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4c91

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jp nz, Jump_02e_4c12

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


    ld a, [$cc17]
    cp $32
    jp c, Jump_02e_4c12

    sub $32
    ld hl, $4fba
    call LoadWordFromTableHL
    ld a, [$cc92]
    ld d, a
    ld a, [$cc93]
    ld e, a
    add hl, de
    ld c, $06
    call Call_000_0930
    ld b, $04
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld hl, $4f24
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_02e_4ce5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4ce5

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jp nz, Jump_02e_4c12

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


    ld a, [$cc17]
    cp $32
    jr c, jr_02e_4d3a

    ld hl, $4f38
    sub $32
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, $06
    call Call_000_0930
    ld b, c

jr_02e_4d1f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4d1f

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $34
    jr nz, jr_02e_4d3a

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_02e_4d3a:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    cp $32
    ret nz

    ld a, $77
    call $16d1
    ld a, $77
    call Call_02e_5479
    ld a, $78
    ld [$c646], a
    ld a, $20
    ld [$c648], a
    ld hl, $c64a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c646]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c648]
    sub b
    ld [hl+], a
    ret


    ld hl, $4f4a
    ld a, [$cc18]
    call LoadWordFromTableHL
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
    ld c, $06
    call Call_000_0930
    ld b, c

jr_02e_4d8a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4d8a

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $02
    jr nz, jr_02e_4da8

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ld [$cc18], a
    ret


jr_02e_4da8:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $04
    jp c, Jump_02e_4b98

    sub $04
    ld hl, $4edc
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
    jp Jump_02e_4b7d


    ld a, [$cc17]
    ld hl, $4fba
    call LoadWordFromTableHL
    ld a, [$cc92]
    ld d, a
    ld a, [$cc93]
    ld e, a
    add hl, de
    ld c, $06
    call Call_000_0930
    ld b, $04
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld hl, $4f72
    ld a, [$cc17]
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_02e_4e01:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4e01

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_02e_4e1c

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_02e_4e1c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $4f7a
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

jr_02e_4e3c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4e3c

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_02e_4e59

    xor a
    ld [$cc17], a
    ld a, $0b
    ld [$cc16], a
    ret


jr_02e_4e59:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $4f9a
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

jr_02e_4e79:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_02e_4e79

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_02e_4e94

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_02e_4e94:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    sbc d
    ld e, b
    inc b
    db $10
    ld de, $1110
    nop
    sbc d
    ld a, b
    inc b
    jr nz, @+$23

    jr nz, jr_02e_4ecc

    nop
    sbc d
    sbc b
    inc b
    db $10
    ld de, $1110
    nop
    sbc d
    cp b
    inc b
    jr nz, @+$23

    jr nz, jr_02e_4edc

    nop
    sbc d
    call nc, $1004
    ld de, $1110
    nop
    sbc d
    db $f4
    inc b
    jr nz, @+$23

    jr nz, jr_02e_4eec

    nop

jr_02e_4ecc:
    sbc e
    inc d
    inc b
    db $10
    ld de, $1110
    nop
    sbc e
    inc [hl]
    inc b
    jr nz, @+$23

    jr nz, jr_02e_4efc

    nop

jr_02e_4edc:
    sbc c
    adc h
    inc b
    db $10
    ld de, $1110
    nop
    sbc c
    xor h
    inc b
    jr nz, jr_02e_4f0a

    jr nz, @+$23

    nop

jr_02e_4eec:
    sbc c
    call z, $1004
    ld de, $1110
    nop
    sbc c
    db $ec
    inc b
    jr nz, @+$23

    jr nz, jr_02e_4f1c

    nop

jr_02e_4efc:
    ld [bc], a
    and b
    and c
    nop
    ld [bc], a
    or b
    or c
    nop
    ld [bc], a
    ret nz

    pop bc
    nop
    ld [bc], a
    db $10

jr_02e_4f0a:
    ld de, $0200
    jr nz, jr_02e_4f30

    nop
    ld [bc], a
    ld [$0009], sp
    ld [bc], a
    jr jr_02e_4f30

    nop
    ld [bc], a
    jr z, jr_02e_4f44

    nop

jr_02e_4f1c:
    ld [bc], a
    jr c, jr_02e_4f58

    nop
    ld [bc], a
    jr nz, jr_02e_4f44

    nop
    ld [bc], a
    inc e
    dec e
    nop
    ld [bc], a
    ld c, $0f
    nop
    ld [bc], a
    ld e, $1f
    nop

jr_02e_4f30:
    ld [bc], a
    db $10
    ld de, $0200
    jr nz, jr_02e_4f58

    nop
    sbc b
    ld l, $02
    and [hl]
    and a
    nop
    sbc b
    ld c, [hl]
    ld [bc], a
    or [hl]
    or a
    nop

jr_02e_4f44:
    sbc b
    ld l, [hl]
    ld [bc], a
    add $c7
    nop
    ld c, [hl]
    ld c, a
    ld h, b
    ld c, a
    sbc d
    ld a, [bc]
    ld [bc], a
    ldh a, [c]
    di
    nop
    sbc d
    ld a, [hl+]
    ld [bc], a
    db $e4

jr_02e_4f58:
    push hl
    nop
    sbc d
    ld c, d
    ld [bc], a
    db $f4
    push af
    nop
    sbc c
    sub d
    ld [bc], a
    ldh a, [c]
    di
    nop
    sbc c
    or d
    ld [bc], a
    db $e4
    push hl
    nop
    sbc c
    jp nc, $f402

    push af
    nop
    ld [bc], a
    db $10
    ld de, $0200
    jr nz, jr_02e_4f9a

    nop
    sbc d
    add $04
    xor b
    xor c
    xor d
    xor e
    nop
    sbc d
    and $04
    ret c

    reti


    jp c, $00db

    sbc e
    ld b, $04
    xor h
    xor l
    xor [hl]
    xor a
    nop
    sbc e
    ld h, $04
    call c, $dedd
    rst $18
    nop

jr_02e_4f9a:
    sbc e
    ld h, $04
    db $fc
    db $fd
    cp $ff
    nop
    sbc e
    ld b, $04
    db $ec
    db $ed
    xor $ef
    nop
    sbc d
    and $04
    ld hl, sp-$07
    ld a, [$00fb]
    sbc d
    add $04
    add sp, -$17
    ld [$00eb], a
    nop
    nop
    jr nz, jr_02e_4fbe

jr_02e_4fbe:
    ld b, b
    nop
    ld h, b
    nop
    add b
    nop

Jump_02e_4fc4:
    call Call_02e_4fd9
    ld a, [wPlayerAnimationIndex]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_25ce
    ret


Call_02e_4fd9:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_02e_4ff3

    ldh a, [$ff8a]
    and $20
    jr nz, jr_02e_4ff7

    ldh a, [$ff8a]
    and $10
    jr nz, jr_02e_4ffb

    ldh a, [$ff8a]
    and $40
    jr nz, jr_02e_4fff

    jr jr_02e_5004

jr_02e_4ff3:
    ld a, $00
    jr jr_02e_5001

jr_02e_4ff7:
    ld a, $01
    jr jr_02e_5001

jr_02e_4ffb:
    ld a, $02
    jr jr_02e_5001

jr_02e_4fff:
    ld a, $03

jr_02e_5001:
    ld [wPlayerFacingDirection], a

jr_02e_5004:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_02e_504b

    cp $01
    jr z, jr_02e_5082

    cp $02
    jp z, Jump_02e_50b9

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5044

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_5044:
    call Call_02e_43fa
    call Call_02e_43fa
    ret


jr_02e_504b:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_507b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_507b:
    call Call_02e_43c8
    call Call_02e_43c8
    ret


jr_02e_5082:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_50b2

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_43a2

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_43b5

    ret


jr_02e_50b2:
    call Call_02e_4428
    call Call_02e_4428
    ret


Jump_02e_50b9:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_50e9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_43a2

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_43b5

    ret


jr_02e_50e9:
    call Call_02e_445b
    call Call_02e_445b
    ret


Call_02e_50f0:
    ld a, [wPlayerFacingDirection]
    ld hl, $511b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c82d], a
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_02e_5115

    ld a, [$cc79]
    or a
    jr nz, jr_02e_5115

    ld a, [$ba0d]
    bit 0, a
    jr z, jr_02e_5115

    ret


jr_02e_5115:
    ld a, $00
    call Call_000_18e6
    ret


    inc bc
    ld [bc], a
    ld bc, $2100
    adc b
    ld d, c
    ld a, [$cc7a]
    call LoadWordFromTableHL
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $51d0
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$b899]
    cp $01
    jr nz, jr_02e_5158

    ld hl, $5fd1
    ld a, $2d
    call BankSwitchCallHL
    ld hl, $51e0
    ld de, $c880
    ld b, $10
    call CopyHLtoDE
    call Call_02e_5373

jr_02e_5158:
    ld a, [$cc7a]
    rst $00
    ld h, h
    ld d, c
    ld l, l
    ld d, c
    halt
    ld d, c
    ld a, a
    ld d, c
    ld a, $28
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ret


    ld a, $48
    ldh [$ff93], a
    ld a, $60
    ldh [$ff91], a
    ret


    ld a, $28
    ldh [$ff93], a
    ld a, $00
    ldh [$ff91], a
    ret


    ld a, $08
    ldh [$ff93], a
    ld a, $60
    ldh [$ff91], a
    ret


    sub b
    ld d, c
    and b
    ld d, c
    or b
    ld d, c
    ret nz

    ld d, c
    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    ret nc

    nop
    ld d, b
    ld h, b
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$00d0], sp
    or b
    nop
    adc b
    ld d, b
    nop
    ld bc, $0001
    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    jr nc, jr_02e_51ba

jr_02e_51ba:
    ld d, b
    jr nc, jr_02e_51bd

jr_02e_51bd:
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0020], sp
    or b
    nop
    jr jr_02e_521c

    nop
    ld [bc], a
    ld bc, $0100
    inc c
    rst $38
    nop
    nop
    ld [$0088], sp
    sub b
    nop
    ld h, b
    jr nz, jr_02e_51dd

jr_02e_51dd:
    nop
    nop
    nop
    ld bc, $ff08
    nop
    nop
    ld [$0078], sp
    sub b
    nop
    ld d, b
    jr nz, jr_02e_51ed

jr_02e_51ed:
    nop
    nop
    nop

Call_02e_51f0:
    ld hl, vBGMap1
    ld de, $51fe
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    jp nc, $d3d3

    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    call nc, $3ce2
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a

jr_02e_521c:
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    db $e3
    ldh [c], a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    db $e3
    ldh [c], a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    db $e3
    push de
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    rst $10

Call_02e_5262:
    ld hl, $c82a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c826]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c828]
    sub b
    ld [hl+], a
    ret


    ld [$2818], sp
    jr c, jr_02e_52c3

    ld e, b
    ld l, b
    ld a, b
    adc b
    sbc b
    xor b
    cp b
    ret z

    ret c

    add sp, -$08
    nop
    db $10
    jr nz, jr_02e_52ba

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$fff0], a

Call_02e_5296:
    ld hl, $606e
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_529f:
    ld hl, $6122
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_52a8:
    ld hl, $617c
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_52b1:
    ld hl, $60c8
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_52ba:
jr_02e_52ba:
    ld a, [wPlayerFacingDirection]
    rst $00
    add $52
    rst $08
    ld d, d
    ret c

jr_02e_52c3:
    ld d, d
    pop hl
    ld d, d
    ld hl, $712f
    ld a, $32
    call BankSwitchCallHL
    ret


    ld hl, $71c3
    ld a, $32
    call BankSwitchCallHL
    ret


    ld hl, $7259
    ld a, $32
    call BankSwitchCallHL
    ret


    ld hl, $72ef
    ld a, $32
    call BankSwitchCallHL
    ret


Call_02e_52ea:
    ld hl, $6279
    ld a, $2f
    call BankSwitchCallHL
    ret


    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    ret nz

    ld a, [$cc6e]
    or a
    ret nz

    ld a, [$cb90]
    or a
    ret z

    cp $01
    jr z, jr_02e_5318

    cp $02
    jr z, jr_02e_5318

    ld hl, $77c7
    ld a, $21
    call BankSwitchCallHL
    ret


jr_02e_5318:
    xor a
    ld [$cb90], a
    ld hl, $5f2e
    ld a, $22
    call BankSwitchCallHL
    ld a, [$cb8d]
    cp $ff
    ret z

    ld a, $60
    ld [wInputFreezeTimer], a
    ld a, [$cb8d]
    and $01
    jr z, jr_02e_5355

    ld a, [$cb8d]
    cp $01
    jr nz, jr_02e_534b

    ld a, $3c
    ld [wInputFreezeTimer], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_02e_534b:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    pop hl
    ret


jr_02e_5355:
    ld a, $20
    call Call_000_151d
    pop hl
    ret


Call_02e_535c:
    ld hl, $4001
    ld a, $2f
    call BankSwitchCallHL
    ld a, [$cb35]
    ld h, a
    ld a, [$cb36]
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_02e_4af8
    ret


Call_02e_5373:
    ld hl, $6254
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_537c:
    ld hl, $6267
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_02e_5385:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc98]
    rst $00
    sbc b
    ld d, e
    cp d
    ld d, e
    bit 2, e
    ld a, [$c608]
    cp $a8
    jr z, jr_02e_53aa

    ld a, $40
    ldh [$ff8a], a
    xor a
    ldh [$ff8b], a
    call Call_02e_422c
    ret


jr_02e_53aa:
    ld a, $01
    ld [$cc98], a
    ld a, $e6
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


    ld a, [wTextID]
    cp $ff
    ret nz

    ld a, $02
    ld [$cc98], a
    ld a, $f0
    ld [$cc27], a
    ret


    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    ret nz

    ld a, TIME_6_PM
    ld [sCurrentHour], a
    xor a
    ld [sCurrentMinute], a
    ld [sClockFrameCount], a
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$b899]
    set 1, a
    ld [$b899], a
    ld a, $0a
    call Call_000_0f47
    ret


Call_02e_53fb:
    ld a, [$ba0d]
    bit 2, a
    ret nz

    ld a, [$cc79]
    or a
    ret nz

    ld a, [$ba0d]
    bit 1, a
    jr z, jr_02e_5418

    ld a, [$cb56]
    or a
    ret nz

    ld a, $03
    call Call_000_18e6
    ret


jr_02e_5418:
    ld a, [$ba0e]
    cp $01
    ret nz

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $31
    call $16d1
    ld a, $02
    ld [$ba0e], a
    ld a, [$ba0d]
    set 1, a
    ld [$ba0d], a
    ld a, $e1
    call Call_000_3f52
    ld a, $04
    call Call_000_18e6
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_02e_5445:
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    ret nz

    ld a, [$cc6e]
    or a
    ret nz

    ld hl, $6a38
    ld a, $21
    call BankSwitchCallHL
    ret


Call_02e_545d:
    ld a, [$cc6e]
    or a
    ret z

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    call Call_02e_50f0
    ld a, $be
    call Call_000_3f52
    xor a
    ld [$cc6e], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_02e_5479:
    cp $76
    jr z, jr_02e_548d

    cp $77
    jr z, jr_02e_5498

    cp $78
    jr z, jr_02e_54a3

    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ret


jr_02e_548d:
    ld a, $01
    ld [$cc6c], a
    ld a, $26
    ld [$cc6d], a
    ret


jr_02e_5498:
    ld a, $02
    ld [$cc6c], a
    ld a, $43
    ld [$cc6d], a
    ret


jr_02e_54a3:
    ld a, $03
    ld [$cc6c], a
    ld a, $17
    ld [$cc6d], a
    ret


Call_02e_54ae:
    ld a, [$cc6d]
    or a
    jr z, jr_02e_54c4

    dec a
    ld [$cc6d], a
    ld a, [$cc6c]
    rst $00
    call nz, $cc54
    ld d, h
    call nc, $dc54
    ld d, h

jr_02e_54c4:
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ret


    ld a, [$cc6d]
    cp $18
    jr z, jr_02e_54e4

    ret


    ld a, [$cc6d]
    cp $39
    jr z, jr_02e_54e4

    ret


    ld a, [$cc6d]
    cp $10
    jr z, jr_02e_54e4

    ret


jr_02e_54e4:
    ld a, $58
    call Call_000_25ce
    ret


    ld a, $01
    ld [$c625], a
    ld a, [$cc79]
    ld [$cc7a], a
    ld a, [$cc7b]
    ld [$cc79], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $73a6
    ld c, $2a
    ld de, $8800
    call Call_000_31a0
    ld hl, $6bd8
    ld c, $2a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $2a
    ld de, $8000
    call Call_000_31a0
    ld hl, $56a9
    ld c, $2a
    ld de, $9800
    call Call_000_31a0
    ld a, $3c
    ld [$cb5c], a
    ld a, $01
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cc96], a
    ld [$cc76], a
    ld [$cc77], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    call Call_02e_5aa2
    call Call_02e_51f0
    call Call_000_1291
    ld a, $00
    call RST_TableJumpBankSwitch
    xor a
    ld [$c820], a
    ld [$cc6f], a
    ld [$cc70], a
    ld [$cc71], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $26
    call Call_000_25c5
    call Call_000_3dfd
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    ld a, [$cc6f]
    or a
    jr nz, jr_02e_55be

    call Call_000_3cf8

jr_02e_55be:
    call Call_02e_55dd
    call Call_02e_5675
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5445
    call Call_02e_417d
    call $1e32
    call Call_02e_4b42
    call Call_02e_4487
    call Call_02e_54ae
    ret


Call_02e_55dd:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [wTextID]
    cp $ff
    ret nz

    call Call_02e_41de
    call Call_000_0e54
    call Call_02e_4503
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_02e_5641

    ld a, [$cc6f]
    or a
    jr nz, jr_02e_5647

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_02e_4554

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_02e_5712

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_02e_598e

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_02e_57cc

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_02e_5865

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_02e_57fd

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_02e_582e

    ld a, [wInputFreezeTimer]
    or a
    ret nz

jr_02e_5641:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_5647:
    ldh a, [$ff8b]
    and $01
    jp nz, Jump_02e_5741

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_02e_5764

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_02e_5781

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_02e_5798

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_02e_57b5

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $21
    call RST_TableJumpBankSwitch
    ret


Call_02e_5675:
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc70]
    or a
    ret z

    ld a, [wInputFreezeTimer]
    or a
    jr z, jr_02e_56e9

    ld a, [$cc71]
    inc a
    ld [$cc71], a
    ld a, [$cc70]
    cp $01
    jr nz, jr_02e_56be

    ld a, [$cc71]
    cp $1f
    ret c

    ld a, [$cc71]
    bit 0, a
    ret z

    ld a, [$c606]
    cp $90
    jr nc, jr_02e_56b7

    cp $58
    jr c, jr_02e_56b7

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_02e_56b2:
    ld hl, $c606
    inc [hl]
    ret


jr_02e_56b7:
    ld hl, $c60a
    inc [hl]
    jr jr_02e_56b2

    ret


jr_02e_56be:
    ld a, [$cc71]
    cp $1f
    ret c

    ld a, [$cc71]
    bit 0, a
    ret z

    ld a, [$c606]
    cp $91
    jr nc, jr_02e_56e2

    cp $59
    jr c, jr_02e_56e2

    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_02e_56dd:
    ld hl, $c606
    dec [hl]
    ret


jr_02e_56e2:
    ld hl, $c60a
    dec [hl]
    jr jr_02e_56dd

    ret


jr_02e_56e9:
    xor a
    ld [$cc70], a
    ld [$cc71], a
    ld a, [$cc6f]
    or a
    ret nz

    ld a, [sNumPowerBerriesEaten]
    ld hl, $5707
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    call $1ae6
    ret


    inc d
    ld d, $18
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    ld h, $28

Jump_02e_5712:
    ld a, [$cb4a]
    or a
    jr nz, jr_02e_571f

    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    jr z, jr_02e_5723

jr_02e_571f:
    call Call_02e_4558
    ret


jr_02e_5723:
    ld a, $01
    ld [$cc6f], a
    ld a, $33
    call Call_000_25ce
    ld a, $22
    call RST_TableJumpBankSwitch
    ld a, $3d
    ld [wInputFreezeTimer], a
    ld a, $01
    ld [$cc70], a
    xor a
    ld [$cc71], a
    ret


Jump_02e_5741:
    ld a, [wRightOrUpSideFacingTileID]
    cp $40
    ret nz

    xor a
    ld [$cc6f], a
    ld a, $33
    call Call_000_25ce
    ld a, $23
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [wInputFreezeTimer], a
    ld a, $02
    ld [$cc70], a
    xor a
    ld [$cc71], a
    ret


Jump_02e_5764:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    ld a, [$c608]
    cp $54
    ret nc

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_58e2
    ret


Jump_02e_5781:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5907
    ret


Jump_02e_5798:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    ld a, [wRightOrUpSideFacingTileID]
    cp $40
    ret z

    call Call_02e_592f
    ret


Jump_02e_57b5:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5962
    ret


Jump_02e_57cc:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_57f9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5896

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58a9

    ret


jr_02e_57f9:
    call Call_02e_58e2
    ret


Jump_02e_57fd:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_582a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_58bc

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58cf

    ret


jr_02e_582a:
    call Call_02e_592f
    ret


Jump_02e_582e:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_585b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_58bc

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58cf

    ret


jr_02e_585b:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    ret z

    call Call_02e_5962
    ret


Jump_02e_5865:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5892

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5896

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58a9

    ret


jr_02e_5892:
    call Call_02e_5907
    ret


Jump_02e_5896:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_592f
    ret


Jump_02e_58a9:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5962
    ret


Jump_02e_58bc:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5907
    ret


Jump_02e_58cf:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_58e2
    ret


Call_02e_58e2:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $60
    jr nc, jr_02e_5900

    cp $50
    jr c, jr_02e_5900

    jr jr_02e_58f3

jr_02e_58f3:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_02e_58fb:
    ld hl, $c608
    inc [hl]
    ret


jr_02e_5900:
    ld hl, $c60b
    inc [hl]
    jr jr_02e_58fb

    ret


Call_02e_5907:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $61
    jr nc, jr_02e_5928

    ld a, [$c608]
    cp $51
    jr c, jr_02e_5928

    jr jr_02e_591b

jr_02e_591b:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_02e_5923:
    ld hl, $c608
    dec [hl]
    ret


jr_02e_5928:
    ld hl, $c60b
    dec [hl]
    jr jr_02e_5923

    ret


Call_02e_592f:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$c606]
    cp $91
    jr nc, jr_02e_595b

    ld a, [$c607]
    cp $00
    jr nz, jr_02e_594e

    ld a, [$c606]
    cp $59
    jr c, jr_02e_595b

jr_02e_594e:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_02e_5956:
    ld hl, $c606
    dec [hl]
    ret


jr_02e_595b:
    ld hl, $c60a
    dec [hl]
    jr jr_02e_5956

    ret


Call_02e_5962:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $d8
    ret nc

    ld a, [$c606]
    cp $90
    jr nc, jr_02e_5987

    ld a, [$c606]
    cp $58
    jr c, jr_02e_5987

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_02e_5982:
    ld hl, $c606
    inc [hl]
    ret


jr_02e_5987:
    ld hl, $c60a
    inc [hl]
    jr jr_02e_5982

    ret


Jump_02e_598e:
    call Call_02e_59a5
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_02e_59a4

    ld a, [$c605]
    cp $08
    jr nz, jr_02e_59a4

    ld a, $34
    call Call_000_25ce

jr_02e_59a4:
    ret


Call_02e_59a5:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_02e_59bf

    ldh a, [$ff8a]
    and $20
    jr nz, jr_02e_59c3

    ldh a, [$ff8a]
    and $10
    jr nz, jr_02e_59c7

    ldh a, [$ff8a]
    and $40
    jr nz, jr_02e_59cb

    jr jr_02e_59d0

jr_02e_59bf:
    ld a, $00
    jr jr_02e_59cd

jr_02e_59c3:
    ld a, $01
    jr jr_02e_59cd

jr_02e_59c7:
    ld a, $02
    jr jr_02e_59cd

jr_02e_59cb:
    ld a, $03

jr_02e_59cd:
    ld [wPlayerFacingDirection], a

jr_02e_59d0:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_02e_5a0f

    cp $01
    jr z, jr_02e_5a3e

    cp $02
    jp z, Jump_02e_5a6d

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5a08

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5896

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58a9

    ret


jr_02e_5a08:
    call Call_02e_5907
    call Call_02e_5907
    ret


jr_02e_5a0f:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5a37

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5896

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58a9

    ret


jr_02e_5a37:
    call Call_02e_58e2
    call Call_02e_58e2
    ret


jr_02e_5a3e:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5a66

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_58bc

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58cf

    ret


jr_02e_5a66:
    call Call_02e_592f
    call Call_02e_592f
    ret


Jump_02e_5a6d:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5a95

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_58bc

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_58cf

    ret


jr_02e_5a95:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    ret z

    call Call_02e_5962
    call Call_02e_5962
    ret


Call_02e_5aa2:
    ld hl, $5ab6
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $08
    ldh [$ff93], a
    ld a, $40
    ldh [$ff91], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0020], sp
    ld d, b
    nop
    jr @+$52

    nop
    ld [bc], a
    ld bc, $3e00
    ld bc, $25ea
    add $fa
    ld a, c
    call z, Call_02e_7aea
    call z, Call_02e_7bfa
    call z, $79ea
    call z, $8acd
    ld [hl+], a
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $6675
    ld c, $2a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5ec0
    ld c, $2a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $2a
    ld de, $8000
    call Call_000_31a0
    ld hl, $57ed
    ld c, $2a
    ld de, $9800
    call Call_000_31a0
    ld a, $3c
    ld [$cb5c], a
    ld a, $01
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cc96], a
    ld [$cc76], a
    ld [$cc77], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    call Call_02e_6121
    call Call_02e_51f0
    call Call_000_12ad
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $00
    call Call_000_18e6
    ld hl, $677a
    ld a, $2e
    call BankSwitchCallHL
    ld hl, $748f
    ld a, $2e
    call BankSwitchCallHL
    xor a
    ld [$cc9a], a
    ld [$cc72], a
    ld [$cc73], a
    ld [$cc74], a
    ld [$cc98], a
    ld [$cc99], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $26
    call Call_000_25c5
    call Call_000_3dfd
    ret


    call Call_000_0d90
    ld a, [$cc9a]
    or a
    jr z, jr_02e_5bba

    ld a, [$cb56]
    or a
    jr nz, jr_02e_5bba

    ld a, $50
    ld [$cb8f], a
    xor a
    ld [$cc9a], a

jr_02e_5bba:
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    ld a, [$cc72]
    or a
    jr nz, jr_02e_5bca

    call Call_000_3cf8

jr_02e_5bca:
    call Call_02e_545d
    call Call_02e_5bef
    call Call_02e_5e28
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5445
    call Call_02e_5262
    call Call_02e_4487
    call Call_02e_54ae
    call Call_02e_417d
    call $1e32
    call Call_02e_4b42
    ret


Call_02e_5bef:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc98]
    cp $04
    jr nz, jr_02e_5c0f

    ld a, $c1
    call Call_000_3f52
    ld a, $05
    ld [$cc98], a
    ret


jr_02e_5c0f:
    ld a, [$cc98]
    or a
    jr nz, jr_02e_5c71

    ld a, [wTextID]
    cp $ff
    jr nz, jr_02e_5c6b

    call Call_02e_41de
    call Call_000_0e54
    call Call_02e_4503
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_02e_5c6b

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_02e_5f4a

    ld a, [$cc72]
    or a
    ret nz

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_02e_5ff3

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_02e_4554

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_02e_5cb1

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_02e_5d5c

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_02e_5cea

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_02e_5d23

    ld a, [wInputFreezeTimer]
    or a
    ret nz

jr_02e_5c6b:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_5c71:
    ld a, [$cc98]
    cp $01
    jr nz, jr_02e_5c98

    ld a, [wInputFreezeTimer]
    or a
    jr nz, jr_02e_5c89

    ld a, $32
    call $16d1
    ld a, $02
    ld [$cc98], a
    ret


jr_02e_5c89:
    ld a, [wInputFreezeTimer]
    dec a
    ld [wInputFreezeTimer], a
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_02e_5c98:
    ld a, [$cc98]
    cp $02
    ret nz

    ld a, [$c640]
    or a
    ret nz

    call Call_02e_52ea
    ld a, $44
    call Call_000_25cb
    ld a, $03
    ld [$cc98], a
    ret


Jump_02e_5cb1:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5ce6

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_5ce6:
    call Call_02e_5dbb
    ret


Jump_02e_5cea:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5d1f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5d95

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_5da8

    ret


jr_02e_5d1f:
    call Call_02e_4428
    ret


Jump_02e_5d23:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5d58

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5d95

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_5da8

    ret


jr_02e_5d58:
    call Call_02e_445b
    ret


Jump_02e_5d5c:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_5d91

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_5d91:
    call Call_02e_5de8
    ret


Jump_02e_5d95:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5de8
    ret


Jump_02e_5da8:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_5dbb
    ret


Call_02e_5dbb:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $c3
    jr nc, jr_02e_5de7

    ld a, [$c608]
    cp $b0
    jr nc, jr_02e_5de0

    cp $50
    jr c, jr_02e_5de0

    jr jr_02e_5dd3

jr_02e_5dd3:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_02e_5ddb:
    ld hl, $c608
    inc [hl]
    ret


jr_02e_5de0:
    ld hl, $c60b
    inc [hl]
    jr jr_02e_5ddb

    ret


jr_02e_5de7:
    ret


Call_02e_5de8:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $b1
    jr nc, jr_02e_5e0f

    ld a, [$c608]
    cp $51
    jr c, jr_02e_5e0f

    jr jr_02e_5e02

jr_02e_5e02:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_02e_5e0a:
    ld hl, $c608
    dec [hl]
    ret


jr_02e_5e0f:
    ld hl, $c60b
    dec [hl]
    jr jr_02e_5e0a

    ret


jr_02e_5e16:
    ld a, [wPlayerSpriteID]
    cp $86
    ret nz

    ld a, [wInputFreezeTimer]
    cp $01
    ret nz

    ld a, $32
    call $16d1
    ret


Call_02e_5e28:
    ld a, [$cc72]
    or a
    ret z

    cp $02
    jr z, jr_02e_5e7a

    cp $03
    jr z, jr_02e_5e92

    cp $04
    jp z, Jump_02e_5ec0

    ld a, [wInputFreezeTimer]
    or a
    jr nz, jr_02e_5e16

    ld a, $27
    call RST_TableJumpBankSwitch
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $04
    ret nc

    ld a, $03
    ld [$cc72], a
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld l, a
    ld a, $00
    ld h, a
    ld a, $0a
    call DivideHLByA_16bit
    cp $03
    jr c, jr_02e_5e6e

    cp $06
    jr c, jr_02e_5e74

    ld a, $01
    ld [$cc73], a
    ret


jr_02e_5e6e:
    ld a, $02
    ld [$cc73], a
    ret


jr_02e_5e74:
    ld a, $03
    ld [$cc73], a
    ret


jr_02e_5e7a:
    ld a, $26
    call RST_TableJumpBankSwitch
    ld a, $25
    ld [wInputFreezeTimer], a
    ld a, [$cc73]
    or a
    jr nz, jr_02e_5eb6

    xor a
    ld [$cc72], a
    ld [$cc74], a
    ret


jr_02e_5e92:
    ld a, [$cc74]
    or a
    jr nz, jr_02e_5ea3

    ld a, $25
    call RST_TableJumpBankSwitch
    ld a, $80
    ld [$cc74], a
    ret


jr_02e_5ea3:
    ld a, [$cc74]
    dec a
    ld [$cc74], a
    or a
    ret nz

    ld a, $01
    ld [$cc72], a
    xor a
    ld [$cc73], a
    ret


jr_02e_5eb6:
    ld a, $04
    ld [$cc72], a
    xor a
    ld [$cc74], a
    ret


Jump_02e_5ec0:
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc73]
    rst $00
    pop de
    ld e, [hl]
    sbc $5e
    inc e
    ld e, a
    inc sp
    ld e, a
    ld a, $00
    call Call_000_151d
    xor a
    ld [$cc72], a
    ld [$cc73], a
    ret


    ld a, [sItemSlot]
    ld [$cc19], a
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cc1a], a
    ld a, $02
    ld [sItemSlot], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $40
    call $16d1
    ld a, $32
    ld [$cb4a], a
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    xor a
    ld [$cc72], a
    ld [$cc73], a
    ret


    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $4c
    call $16d1
    ld a, $00
    call Call_000_151d
    xor a
    ld [$cc72], a
    ld [$cc73], a
    ret


    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $4d
    call $16d1
    ld a, $00
    call Call_000_151d
    xor a
    ld [$cc72], a
    ld [$cc73], a
    ret


Jump_02e_5f4a:
    ld a, [$cb4a]
    or a
    jr nz, jr_02e_5fb2

    ld a, [wPlayerFacingDirection]
    cp $02
    jr nz, jr_02e_5fb2

    call Call_000_191a
    call Call_000_1514
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $55
    jr nz, jr_02e_5fb2

    ld a, [$cb46]
    cp $42
    jr nz, jr_02e_5fb2

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr nz, jr_02e_5fb2

    ld a, [$cc72]
    or a
    jr nz, jr_02e_5fed

    ld a, [sPlayerEnergy]
    or a
    jr z, jr_02e_5fa7

    ld a, $86
    call Call_000_151d
    ld a, $18
    ld [wInputFreezeTimer], a
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cc72], a
    ld b, $02
    call CheckForNoEnergyAnimation
    ld b, $03
    call CheckForNoEnergyAnimation
    ret


jr_02e_5fa7:
    ld a, $01
    ld [wInputFreezeTimer], a
    ld b, $00
    call CheckForNoEnergyAnimation
    ret


jr_02e_5fb2:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp AX
    jr nz, jr_02e_5fe9

    ld a, [wPlayerFacingDirection]
    cp $03
    jr nz, jr_02e_5fe9

    call Call_000_191a
    ld a, [$cb46]
    cp $43
    jr nz, jr_02e_5fe9

    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_02e_5fe9

    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
    ld a, $01
    ld [$cc98], a
    ret


jr_02e_5fe9:
    call Call_02e_4558
    ret


jr_02e_5fed:
    ld a, $02
    ld [$cc72], a
    ret


Jump_02e_5ff3:
    call Call_02e_600a
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_02e_6009

    ld a, [$c605]
    cp $08
    jr nz, jr_02e_6009

    ld a, $34
    call Call_000_25ce

jr_02e_6009:
    ret


Call_02e_600a:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_02e_6024

    ldh a, [$ff8a]
    and $20
    jr nz, jr_02e_6028

    ldh a, [$ff8a]
    and $10
    jr nz, jr_02e_602c

    ldh a, [$ff8a]
    and $40
    jr nz, jr_02e_6030

    jr jr_02e_6035

jr_02e_6024:
    ld a, $00
    jr jr_02e_6032

jr_02e_6028:
    ld a, $01
    jr jr_02e_6032

jr_02e_602c:
    ld a, $02
    jr jr_02e_6032

jr_02e_6030:
    ld a, $03

jr_02e_6032:
    ld [wPlayerFacingDirection], a

jr_02e_6035:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_02e_607c

    cp $01
    jr z, jr_02e_60b3

    cp $02
    jp z, Jump_02e_60ea

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_6075

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_6075:
    call Call_02e_5de8
    call Call_02e_5de8
    ret


jr_02e_607c:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_60ac

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_437c

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_438f

    ret


jr_02e_60ac:
    call Call_02e_5dbb
    call Call_02e_5dbb
    ret


jr_02e_60b3:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_60e3

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5d95

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_5da8

    ret


jr_02e_60e3:
    call Call_02e_4428
    call Call_02e_4428
    ret


Jump_02e_60ea:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_611a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_5d95

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_5da8

    ret


jr_02e_611a:
    call Call_02e_445b
    call Call_02e_445b
    ret


Call_02e_6121:
    ld hl, $6140
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $28
    ldh [$ff93], a
    ld a, $60
    ldh [$ff91], a
    ld hl, $6150
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    ret nz

    nop
    ld d, b
    ld h, b
    nop
    inc bc
    ld bc, $0100
    inc c
    rst $38
    nop
    nop
    ld [$0068], sp
    and b
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld a, $01
    ld [$c625], a
    ld a, [$cc79]
    ld [$cc7a], a
    ld a, [$cc7b]
    ld [$cc79], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $6675
    ld c, $2a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5ec0
    ld c, $2a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $2a
    ld de, $8000
    call Call_000_31a0
    ld hl, $7a02
    ld c, $37
    ld de, $9800
    call Call_000_31a0
    ld a, $3c
    ld [$cb5c], a
    ld a, $01
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cc96], a
    ld [$cc76], a
    ld [$cc77], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    call Call_02e_65f0
    call Call_02e_51f0
    call Call_000_12c9
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $00
    call Call_000_18e6
    ld hl, $b9dc
    ld de, $cc7c
    ld b, $16
    call CopyHLtoDE
    ld hl, $6793
    ld a, $2e
    call BankSwitchCallHL
    ld hl, $74a5
    ld a, $2e
    call BankSwitchCallHL
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $26
    call Call_000_25c5
    call Call_000_3dfd
    ld a, [$ba0b]
    cp $ff
    ret z

    xor a
    ld [$ba0b], a
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_000_3cf8
    call Call_02e_545d
    call Call_02e_6281
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5262
    call Call_02e_5445
    call Call_02e_417d
    call $1e32
    call Call_02e_4b42
    call Call_02e_6270
    call Call_02e_4487
    call Call_02e_54ae
    ret


Call_02e_6270:
    ld a, [$ba0b]
    cp $ff
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $65
    ret z

    xor a
    ld [$ba0b], a
    ret


Call_02e_6281:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [wTextID]
    cp $ff
    jr nz, jr_02e_62e0

    call Call_02e_41de
    call Call_000_0e54
    call Call_02e_4503
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_02e_62e0

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_02e_4558

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_02e_64c2

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_02e_4554

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_02e_62e6

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_02e_6391

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_02e_631f

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_02e_6358

    ld a, [wInputFreezeTimer]
    or a
    ret nz

jr_02e_62e0:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_02e_62e6:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_631b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63ca

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_63dd

    ret


jr_02e_631b:
    call Call_02e_6416
    ret


Jump_02e_631f:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_6354

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63f0

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_6403

    ret


jr_02e_6354:
    call Call_02e_646f
    ret


Jump_02e_6358:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_638d

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63f0

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_6403

    ret


jr_02e_638d:
    call Call_02e_649c
    ret


Jump_02e_6391:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_63c6

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63ca

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_63dd

    ret


jr_02e_63c6:
    call Call_02e_6441
    ret


Jump_02e_63ca:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_646f
    ret


Jump_02e_63dd:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_649c
    ret


Jump_02e_63f0:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_6441
    ret


Jump_02e_6403:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_02e_6416
    ret


Call_02e_6416:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $c0
    jr nc, jr_02e_6434

    cp $50
    jr c, jr_02e_6434

    jr jr_02e_6427

jr_02e_6427:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_02e_642f:
    ld hl, $c608
    inc [hl]
    ret


jr_02e_6434:
    ld hl, $c60b
    inc [hl]
    jr jr_02e_642f

    ret


    ld a, $1d
    ld [$c911], a
    ret


Call_02e_6441:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $c1
    jr nc, jr_02e_6468

    ld a, [$c608]
    cp $51
    jr c, jr_02e_6468

    jr jr_02e_645b

jr_02e_645b:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_02e_6463:
    ld hl, $c608
    dec [hl]
    ret


jr_02e_6468:
    ld hl, $c60b
    dec [hl]
    jr jr_02e_6463

    ret


Call_02e_646f:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $a9
    jr nc, jr_02e_6495

    ld a, [$c607]
    cp $00
    jr nz, jr_02e_6488

    ld a, [$c606]
    cp $59
    jr c, jr_02e_6495

jr_02e_6488:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_02e_6490:
    ld hl, $c606
    dec [hl]
    ret


jr_02e_6495:
    ld hl, $c60a
    dec [hl]
    jr jr_02e_6490

    ret


Call_02e_649c:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $a8
    jr nc, jr_02e_64bb

    ld a, [$c606]
    cp $58
    jr c, jr_02e_64bb

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_02e_64b6:
    ld hl, $c606
    inc [hl]
    ret


jr_02e_64bb:
    ld hl, $c60a
    inc [hl]
    jr jr_02e_64b6

    ret


Jump_02e_64c2:
    call Call_02e_64d9
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_02e_64d8

    ld a, [$c605]
    cp $08
    jr nz, jr_02e_64d8

    ld a, $34
    call Call_000_25ce

jr_02e_64d8:
    ret


Call_02e_64d9:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_02e_64f3

    ldh a, [$ff8a]
    and $20
    jr nz, jr_02e_64f7

    ldh a, [$ff8a]
    and $10
    jr nz, jr_02e_64fb

    ldh a, [$ff8a]
    and $40
    jr nz, jr_02e_64ff

    jr jr_02e_6504

jr_02e_64f3:
    ld a, $00
    jr jr_02e_6501

jr_02e_64f7:
    ld a, $01
    jr jr_02e_6501

jr_02e_64fb:
    ld a, $02
    jr jr_02e_6501

jr_02e_64ff:
    ld a, $03

jr_02e_6501:
    ld [wPlayerFacingDirection], a

jr_02e_6504:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_02e_654b

    cp $01
    jr z, jr_02e_6582

    cp $02
    jp z, Jump_02e_65b9

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52b1
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_6544

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63ca

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_63dd

    ret


jr_02e_6544:
    call Call_02e_6441
    call Call_02e_6441
    ret


jr_02e_654b:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_5296
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_657b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63ca

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_63dd

    ret


jr_02e_657b:
    call Call_02e_6416
    call Call_02e_6416
    ret


jr_02e_6582:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_529f
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_65b2

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63f0

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_6403

    ret


jr_02e_65b2:
    call Call_02e_646f
    call Call_02e_646f
    ret


Jump_02e_65b9:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_02e_52a8
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_02e_65e9

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_02e_63f0

    ld a, [wcb32]
    and $01
    jp z, Jump_02e_6403

    ret


jr_02e_65e9:
    call Call_02e_649c
    call Call_02e_649c
    ret


Call_02e_65f0:
    ld hl, $664a
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$cc7a]
    cp $00
    jr nz, jr_02e_6616

    ld hl, $662a
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $58
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ret


jr_02e_6616:
    ld hl, $663a
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $28
    ldh [$ff93], a
    ld a, $00
    ldh [$ff91], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$00d0], sp
    ret nc

    nop
    ld a, b
    ld h, b
    nop
    ld bc, $0001
    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    jr nc, jr_02e_6644

jr_02e_6644:
    ld d, b
    jr nc, jr_02e_6647

jr_02e_6647:
    nop
    ld bc, $0100
    inc c
    rst $38
    nop
    nop
    ld [$00c8], sp
    ret nz

    nop
    ld l, b
    ld d, b
    nop
    nop
    nop
    nop
    ld a, $01
    ld [$c625], a
    ld a, [$cc79]
    ld [$cc7a], a
    ld a, [$cc7b]
    ld [$cc79], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $6675
    ld c, $2a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5ec0
    ld c, $2a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $2a
    ld de, $8000
    call Call_000_31a0
    ld hl, $7f12
    ld c, $22
    ld de, $9800
    call Call_000_31a0
    ld a, $3c
    ld [$cb5c], a
    ld a, $01
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$cc96], a
    ld [$cc76], a
    ld [$cc77], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    call Call_02e_6756
    call Call_02e_51f0
    call Call_000_12e5
    ld a, $00
    call RST_TableJumpBankSwitch
    xor a
    ld [$c820], a
    ld hl, $b9f2
    ld de, $cc7c
    ld b, $16
    call CopyHLtoDE
    ld hl, $6793
    ld a, $2e
    call BankSwitchCallHL
    ld hl, $74a5
    ld a, $2e
    call BankSwitchCallHL
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [wLCDCTempStorage], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $26
    call Call_000_25c5
    call Call_000_3dfd
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_000_3cf8
    call Call_02e_422c
    call Call_000_2d67
    call Call_000_36f4
    call Call_02e_5445
    call Call_02e_417d
    call $1e32
    call Call_02e_4b42
    call Call_02e_4487
    call Call_02e_54ae
    ret


Call_02e_6756:
    ld hl, $676a
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $28
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    ret nc

    nop
    ld d, b
    ld h, b
    nop
    inc bc
    ld bc, $fa00
    ld a, c
    call z, $02fe
    ret nz

    ld a, [$ba0a]
    or a
    ret nz

    ld hl, $d800
    ld de, $00fa
    add hl, de
    ld bc, $8129
    call Call_02e_7f7f
    ret


    ld a, [$cc7c]
    bit 0, a
    jr nz, jr_02e_67b4

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_67a6

    ld bc, $0163
    jr jr_02e_67a9

jr_02e_67a6:
    ld bc, $0162

jr_02e_67a9:
    ld hl, $d800
    ld de, $0068
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_67b4:
    ld a, [$cc7c]
    bit 1, a
    jr nz, jr_02e_67d5

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_67c7

    ld bc, $0163
    jr jr_02e_67ca

jr_02e_67c7:
    ld bc, $0162

jr_02e_67ca:
    ld hl, $d800
    ld de, $006a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_67d5:
    ld a, [$cc7c]
    bit 2, a
    jr nz, jr_02e_67f6

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_67e8

    ld bc, $0163
    jr jr_02e_67eb

jr_02e_67e8:
    ld bc, $0162

jr_02e_67eb:
    ld hl, $d800
    ld de, $006c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_67f6:
    ld a, [$cc7c]
    bit 3, a
    jr nz, jr_02e_6817

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6809

    ld bc, $0163
    jr jr_02e_680c

jr_02e_6809:
    ld bc, $0162

jr_02e_680c:
    ld hl, $d800
    ld de, $006e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6817:
    ld a, [$cc7c]
    bit 4, a
    jr nz, jr_02e_6838

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_682a

    ld bc, $0163
    jr jr_02e_682d

jr_02e_682a:
    ld bc, $0162

jr_02e_682d:
    ld hl, $d800
    ld de, $0070
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6838:
    ld a, [$cc7c]
    bit 5, a
    jr nz, jr_02e_6859

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_684b

    ld bc, $0163
    jr jr_02e_684e

jr_02e_684b:
    ld bc, $0162

jr_02e_684e:
    ld hl, $d800
    ld de, $0072
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6859:
    ld a, [$cc7c]
    bit 6, a
    jr nz, jr_02e_687a

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_686c

    ld bc, $0163
    jr jr_02e_686f

jr_02e_686c:
    ld bc, $0162

jr_02e_686f:
    ld hl, $d800
    ld de, $0074
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_687a:
    ld a, [$cc7c]
    bit 7, a
    jr nz, jr_02e_689b

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_688d

    ld bc, $0163
    jr jr_02e_6890

jr_02e_688d:
    ld bc, $0162

jr_02e_6890:
    ld hl, $d800
    ld de, $0076
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_689b:
    ld a, [$cc7d]
    bit 0, a
    jr nz, jr_02e_68bc

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_68ae

    ld bc, $0163
    jr jr_02e_68b1

jr_02e_68ae:
    ld bc, $0162

jr_02e_68b1:
    ld hl, $d800
    ld de, $0078
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_68bc:
    ld a, [$cc7d]
    bit 1, a
    jr nz, jr_02e_68dd

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_68cf

    ld bc, $0163
    jr jr_02e_68d2

jr_02e_68cf:
    ld bc, $0162

jr_02e_68d2:
    ld hl, $d800
    ld de, $007a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_68dd:
    ld a, [$cc7d]
    bit 2, a
    jr nz, jr_02e_68fe

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_68f0

    ld bc, $0163
    jr jr_02e_68f3

jr_02e_68f0:
    ld bc, $0162

jr_02e_68f3:
    ld hl, $d800
    ld de, $007c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_68fe:
    ld a, [$cc7d]
    bit 3, a
    jr nz, jr_02e_691f

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6911

    ld bc, $0163
    jr jr_02e_6914

jr_02e_6911:
    ld bc, $0162

jr_02e_6914:
    ld hl, $d800
    ld de, $007e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_691f:
    ld a, [$cc7d]
    bit 4, a
    jr nz, jr_02e_6940

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6932

    ld bc, $0163
    jr jr_02e_6935

jr_02e_6932:
    ld bc, $0162

jr_02e_6935:
    ld hl, $d800
    ld de, $0080
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6940:
    ld a, [$cc7e]
    bit 0, a
    jr nz, jr_02e_6955

    ld bc, $0162
    ld hl, $d800
    ld de, $008a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6955:
    ld a, [$cc7e]
    bit 1, a
    jr nz, jr_02e_6976

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6968

    ld bc, $0162
    jr jr_02e_696b

jr_02e_6968:
    ld bc, $0163

jr_02e_696b:
    ld hl, $d800
    ld de, $008c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6976:
    ld a, [$cc7e]
    bit 2, a
    jr nz, jr_02e_698b

    ld bc, $0162
    ld hl, $d800
    ld de, $008e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_698b:
    ld a, [$cc7e]
    bit 3, a
    jr nz, jr_02e_69ac

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_699e

    ld bc, $0162
    jr jr_02e_69a1

jr_02e_699e:
    ld bc, $0163

jr_02e_69a1:
    ld hl, $d800
    ld de, $0090
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_69ac:
    ld a, [$cc7e]
    bit 4, a
    jr nz, jr_02e_69c1

    ld bc, $0162
    ld hl, $d800
    ld de, $0092
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_69c1:
    ld a, [$cc7e]
    bit 5, a
    jr nz, jr_02e_69e2

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_69d4

    ld bc, $0162
    jr jr_02e_69d7

jr_02e_69d4:
    ld bc, $0163

jr_02e_69d7:
    ld hl, $d800
    ld de, $0094
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_69e2:
    ld a, [$cc7e]
    bit 6, a
    jr nz, jr_02e_69f7

    ld bc, $0162
    ld hl, $d800
    ld de, $0096
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_69f7:
    ld a, [$cc7e]
    bit 7, a
    jr nz, jr_02e_6a18

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6a0a

    ld bc, $0162
    jr jr_02e_6a0d

jr_02e_6a0a:
    ld bc, $0163

jr_02e_6a0d:
    ld hl, $d800
    ld de, $0098
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a18:
    ld a, [$cc7f]
    bit 0, a
    jr nz, jr_02e_6a2d

    ld bc, $0162
    ld hl, $d800
    ld de, $009a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a2d:
    ld a, [$cc7f]
    bit 1, a
    jr nz, jr_02e_6a4e

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6a40

    ld bc, $0162
    jr jr_02e_6a43

jr_02e_6a40:
    ld bc, $0163

jr_02e_6a43:
    ld hl, $d800
    ld de, $009c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a4e:
    ld a, [$cc7f]
    bit 2, a
    jr nz, jr_02e_6a63

    ld bc, $0162
    ld hl, $d800
    ld de, $009e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a63:
    ld a, [$cc7f]
    bit 3, a
    jr nz, jr_02e_6a84

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6a76

    ld bc, $0162
    jr jr_02e_6a79

jr_02e_6a76:
    ld bc, $0163

jr_02e_6a79:
    ld hl, $d800
    ld de, $00a0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a84:
    ld a, [$cc7f]
    bit 4, a
    jr nz, jr_02e_6a99

    ld bc, $0162
    ld hl, $d800
    ld de, $00a2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6a99:
    ld a, [$cc80]
    bit 0, a
    jr nz, jr_02e_6aba

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6aac

    ld bc, $0164
    jr jr_02e_6aaf

jr_02e_6aac:
    ld bc, $0162

jr_02e_6aaf:
    ld hl, $d800
    ld de, $00ac
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6aba:
    ld a, [$cc80]
    bit 1, a
    jr nz, jr_02e_6acf

    ld bc, $0162
    ld hl, $d800
    ld de, $00ae
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6acf:
    ld a, [$cc80]
    bit 2, a
    jr nz, jr_02e_6ae4

    ld bc, $0162
    ld hl, $d800
    ld de, $00b0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6ae4:
    ld a, [$cc80]
    bit 3, a
    jr nz, jr_02e_6af9

    ld bc, $0162
    ld hl, $d800
    ld de, $00b2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6af9:
    ld a, [$cc80]
    bit 4, a
    jr nz, jr_02e_6b0e

    ld bc, $0162
    ld hl, $d800
    ld de, $00b4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b0e:
    ld a, [$cc80]
    bit 5, a
    jr nz, jr_02e_6b23

    ld bc, $0162
    ld hl, $d800
    ld de, $00b6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b23:
    ld a, [$cc80]
    bit 6, a
    jr nz, jr_02e_6b38

    ld bc, $0162
    ld hl, $d800
    ld de, $00b8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b38:
    ld a, [$cc80]
    bit 7, a
    jr nz, jr_02e_6b4d

    ld bc, $0162
    ld hl, $d800
    ld de, $00ba
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b4d:
    ld a, [$cc81]
    bit 0, a
    jr nz, jr_02e_6b62

    ld bc, $0162
    ld hl, $d800
    ld de, $00bc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b62:
    ld a, [$cc81]
    bit 1, a
    jr nz, jr_02e_6b77

    ld bc, $0162
    ld hl, $d800
    ld de, $00be
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b77:
    ld a, [$cc81]
    bit 2, a
    jr nz, jr_02e_6b8c

    ld bc, $0162
    ld hl, $d800
    ld de, $00c0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6b8c:
    ld a, [$cc81]
    bit 3, a
    jr nz, jr_02e_6ba1

    ld bc, $0162
    ld hl, $d800
    ld de, $00c2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6ba1:
    ld a, [$cc81]
    bit 4, a
    jr nz, jr_02e_6bc2

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6bb4

    ld bc, $0164
    jr jr_02e_6bb7

jr_02e_6bb4:
    ld bc, $0162

jr_02e_6bb7:
    ld hl, $d800
    ld de, $00c4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6bc2:
    ld a, [$cc82]
    bit 0, a
    jr nz, jr_02e_6be3

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6bd5

    ld bc, $0163
    jr jr_02e_6bd8

jr_02e_6bd5:
    ld bc, $0162

jr_02e_6bd8:
    ld hl, $d800
    ld de, $00ce
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6be3:
    ld a, [$cc82]
    bit 1, a
    jr nz, jr_02e_6bf8

    ld bc, $0162
    ld hl, $d800
    ld de, $00d0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6bf8:
    ld a, [$cc82]
    bit 2, a
    jr nz, jr_02e_6c0d

    ld bc, $0163
    ld hl, $d800
    ld de, $00d2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c0d:
    ld a, [$cc82]
    bit 3, a
    jr nz, jr_02e_6c22

    ld bc, $0162
    ld hl, $d800
    ld de, $00d4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c22:
    ld a, [$cc82]
    bit 4, a
    jr nz, jr_02e_6c37

    ld bc, $0163
    ld hl, $d800
    ld de, $00d6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c37:
    ld a, [$cc82]
    bit 5, a
    jr nz, jr_02e_6c4c

    ld bc, $0162
    ld hl, $d800
    ld de, $00d8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c4c:
    ld a, [$cc82]
    bit 6, a
    jr nz, jr_02e_6c6d

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6c5f

    ld bc, $0163
    jr jr_02e_6c62

jr_02e_6c5f:
    ld bc, $0164

jr_02e_6c62:
    ld hl, $d800
    ld de, $00da
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c6d:
    ld a, [$cc82]
    bit 7, a
    jr nz, jr_02e_6c82

    ld bc, $0162
    ld hl, $d800
    ld de, $00dc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c82:
    ld a, [$cc83]
    bit 0, a
    jr nz, jr_02e_6c97

    ld bc, $0163
    ld hl, $d800
    ld de, $00de
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6c97:
    ld a, [$cc83]
    bit 1, a
    jr nz, jr_02e_6cac

    ld bc, $0162
    ld hl, $d800
    ld de, $00e0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6cac:
    ld a, [$cc83]
    bit 2, a
    jr nz, jr_02e_6cc1

    ld bc, $0163
    ld hl, $d800
    ld de, $00e2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6cc1:
    ld a, [$cc83]
    bit 3, a
    jr nz, jr_02e_6cd6

    ld bc, $0162
    ld hl, $d800
    ld de, $00e4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6cd6:
    ld a, [$cc83]
    bit 4, a
    jr nz, jr_02e_6cf7

    ld a, [$cc79]
    cp $03
    jr z, jr_02e_6ce9

    ld bc, $0163
    jr jr_02e_6cec

jr_02e_6ce9:
    ld bc, $0162

jr_02e_6cec:
    ld hl, $d800
    ld de, $00e6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6cf7:
    ld a, [$cc84]
    bit 0, a
    jr nz, jr_02e_6d0c

    ld bc, $0162
    ld hl, $d800
    ld de, $00f0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d0c:
    ld a, [$cc84]
    bit 1, a
    jr nz, jr_02e_6d21

    ld bc, $0162
    ld hl, $d800
    ld de, $00f2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d21:
    ld a, [$cc84]
    bit 2, a
    jr nz, jr_02e_6d36

    ld bc, $0162
    ld hl, $d800
    ld de, $00f4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d36:
    ld a, [$cc84]
    bit 3, a
    jr nz, jr_02e_6d4b

    ld bc, $0162
    ld hl, $d800
    ld de, $00f6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d4b:
    ld a, [$cc84]
    bit 4, a
    jr nz, jr_02e_6d60

    ld bc, $0162
    ld hl, $d800
    ld de, $00f8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d60:
    ld a, [$cc84]
    bit 5, a
    jr nz, jr_02e_6d75

    ld bc, $0162
    ld hl, $d800
    ld de, $00fa
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d75:
    ld a, [$cc84]
    bit 6, a
    jr nz, jr_02e_6d8a

    ld bc, $0162
    ld hl, $d800
    ld de, $00fc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d8a:
    ld a, [$cc84]
    bit 7, a
    jr nz, jr_02e_6d9f

    ld bc, $0162
    ld hl, $d800
    ld de, $00fe
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6d9f:
    ld a, [$cc85]
    bit 0, a
    jr nz, jr_02e_6db4

    ld bc, $0162
    ld hl, $d800
    ld de, $0100
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6db4:
    ld a, [$cc85]
    bit 1, a
    jr nz, jr_02e_6dc9

    ld bc, $0162
    ld hl, $d800
    ld de, $0102
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6dc9:
    ld a, [$cc85]
    bit 2, a
    jr nz, jr_02e_6dde

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderLogo
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6dde:
    ld a, [$cc85]
    bit 3, a
    jr nz, jr_02e_6df3

    ld bc, $0162
    ld hl, $d800
    ld de, $0106
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6df3:
    ld a, [$cc85]
    bit 4, a
    jr nz, jr_02e_6e08

    ld bc, $0162
    ld hl, $d800
    ld de, $0108
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e08:
    ld a, [$cc86]
    bit 0, a
    jr nz, jr_02e_6e1d

    ld bc, $0162
    ld hl, $d800
    ld de, $0112
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e1d:
    ld a, [$cc86]
    bit 1, a
    jr nz, jr_02e_6e32

    ld bc, $0162
    ld hl, $d800
    ld de, $0114
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e32:
    ld a, [$cc86]
    bit 2, a
    jr nz, jr_02e_6e47

    ld bc, $0162
    ld hl, $d800
    ld de, $0116
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e47:
    ld a, [$cc86]
    bit 3, a
    jr nz, jr_02e_6e5c

    ld bc, $0162
    ld hl, $d800
    ld de, $0118
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e5c:
    ld a, [$cc86]
    bit 4, a
    jr nz, jr_02e_6e71

    ld bc, $0162
    ld hl, $d800
    ld de, $011a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e71:
    ld a, [$cc86]
    bit 5, a
    jr nz, jr_02e_6e86

    ld bc, $0162
    ld hl, $d800
    ld de, $011c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e86:
    ld a, [$cc86]
    bit 6, a
    jr nz, jr_02e_6e9b

    ld bc, $0162
    ld hl, $d800
    ld de, $011e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6e9b:
    ld a, [$cc86]
    bit 7, a
    jr nz, jr_02e_6eb0

    ld bc, $0162
    ld hl, $d800
    ld de, $0120
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6eb0:
    ld a, [$cc87]
    bit 0, a
    jr nz, jr_02e_6ec5

    ld bc, $0162
    ld hl, $d800
    ld de, $0122
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6ec5:
    ld a, [$cc87]
    bit 1, a
    jr nz, jr_02e_6eda

    ld bc, $0162
    ld hl, $d800
    ld de, $0124
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6eda:
    ld a, [$cc87]
    bit 2, a
    jr nz, jr_02e_6eef

    ld bc, $0162
    ld hl, $d800
    ld de, $0126
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6eef:
    ld a, [$cc87]
    bit 3, a
    jr nz, jr_02e_6f04

    ld bc, $0162
    ld hl, $d800
    ld de, $0128
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f04:
    ld a, [$cc87]
    bit 4, a
    jr nz, jr_02e_6f19

    ld bc, $0162
    ld hl, $d800
    ld de, $012a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f19:
    ld a, [$cc88]
    bit 0, a
    jr nz, jr_02e_6f2e

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderTitle
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f2e:
    ld a, [$cc88]
    bit 1, a
    jr nz, jr_02e_6f43

    ld bc, $0162
    ld hl, $d800
    ld de, $0136
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f43:
    ld a, [$cc88]
    bit 2, a
    jr nz, jr_02e_6f58

    ld bc, $0162
    ld hl, $d800
    ld de, $0138
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f58:
    ld a, [$cc88]
    bit 3, a
    jr nz, jr_02e_6f6d

    ld bc, $0162
    ld hl, $d800
    ld de, $013a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f6d:
    ld a, [$cc88]
    bit 4, a
    jr nz, jr_02e_6f82

    ld bc, $0162
    ld hl, $d800
    ld de, $013c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f82:
    ld a, [$cc88]
    bit 5, a
    jr nz, jr_02e_6f97

    ld bc, $0162
    ld hl, $d800
    ld de, $013e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6f97:
    ld a, [$cc88]
    bit 6, a
    jr nz, jr_02e_6fac

    ld bc, $0162
    ld hl, $d800
    ld de, $0140
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6fac:
    ld a, [$cc88]
    bit 7, a
    jr nz, jr_02e_6fc1

    ld bc, $0162
    ld hl, $d800
    ld de, $0142
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6fc1:
    ld a, [$cc89]
    bit 0, a
    jr nz, jr_02e_6fd6

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderNewLicenseeCode
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6fd6:
    ld a, [$cc89]
    bit 1, a
    jr nz, jr_02e_6feb

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderSGBFlag
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_6feb:
    ld a, [$cc89]
    bit 2, a
    jr nz, jr_02e_7000

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderROMSize
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7000:
    ld a, [$cc89]
    bit 3, a
    jr nz, jr_02e_7015

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderDestinationCode
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7015:
    ld a, [$cc89]
    bit 4, a
    jr nz, jr_02e_702a

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderMaskROMVersion
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_702a:
    ld a, [$cc8a]
    bit 0, a
    jr nz, jr_02e_703f

    ld bc, $0162
    ld hl, $d800
    ld de, $0156
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_703f:
    ld a, [$cc8a]
    bit 1, a
    jr nz, jr_02e_7054

    ld bc, $0162
    ld hl, $d800
    ld de, $0158
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7054:
    ld a, [$cc8a]
    bit 2, a
    jr nz, jr_02e_7069

    ld bc, $0162
    ld hl, $d800
    ld de, $015a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7069:
    ld a, [$cc8a]
    bit 3, a
    jr nz, jr_02e_707e

    ld bc, $0162
    ld hl, $d800
    ld de, $015c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_707e:
    ld a, [$cc8a]
    bit 4, a
    jr nz, jr_02e_7093

    ld bc, $0162
    ld hl, $d800
    ld de, $015e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7093:
    ld a, [$cc8a]
    bit 5, a
    jr nz, jr_02e_70a8

    ld bc, $0162
    ld hl, $d800
    ld de, $0160
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_70a8:
    ld a, [$cc8a]
    bit 6, a
    jr nz, jr_02e_70bd

    ld bc, $0162
    ld hl, $d800
    ld de, $0162
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_70bd:
    ld a, [$cc8a]
    bit 7, a
    jr nz, jr_02e_70d2

    ld bc, $0162
    ld hl, $d800
    ld de, $0164
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_70d2:
    ld a, [$cc8b]
    bit 0, a
    jr nz, jr_02e_70e7

    ld bc, $0162
    ld hl, $d800
    ld de, $0166
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_70e7:
    ld a, [$cc8b]
    bit 1, a
    jr nz, jr_02e_70fc

    ld bc, $0162
    ld hl, $d800
    ld de, $0168
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_70fc:
    ld a, [$cc8b]
    bit 2, a
    jr nz, jr_02e_7111

    ld bc, $0162
    ld hl, $d800
    ld de, $016a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7111:
    ld a, [$cc8b]
    bit 3, a
    jr nz, jr_02e_7126

    ld bc, $0162
    ld hl, $d800
    ld de, $016c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7126:
    ld a, [$cc8b]
    bit 4, a
    jr nz, jr_02e_713b

    ld bc, $0162
    ld hl, $d800
    ld de, $016e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_713b:
    ld a, [$cc8c]
    bit 0, a
    jr nz, jr_02e_7150

    ld bc, $0162
    ld hl, $d800
    ld de, $0178
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7150:
    ld a, [$cc8c]
    bit 1, a
    jr nz, jr_02e_7165

    ld bc, $0162
    ld hl, $d800
    ld de, $017a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7165:
    ld a, [$cc8c]
    bit 2, a
    jr nz, jr_02e_717a

    ld bc, $0162
    ld hl, $d800
    ld de, $017c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_717a:
    ld a, [$cc8c]
    bit 3, a
    jr nz, jr_02e_718f

    ld bc, $0162
    ld hl, $d800
    ld de, $017e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_718f:
    ld a, [$cc8c]
    bit 4, a
    jr nz, jr_02e_71a4

    ld bc, $0162
    ld hl, $d800
    ld de, $0180
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_71a4:
    ld a, [$cc8c]
    bit 5, a
    jr nz, jr_02e_71b9

    ld bc, $0162
    ld hl, $d800
    ld de, $0182
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_71b9:
    ld a, [$cc8c]
    bit 6, a
    jr nz, jr_02e_71ce

    ld bc, $0162
    ld hl, $d800
    ld de, $0184
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_71ce:
    ld a, [$cc8c]
    bit 7, a
    jr nz, jr_02e_71e3

    ld bc, $0162
    ld hl, $d800
    ld de, $0186
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_71e3:
    ld a, [$cc8d]
    bit 0, a
    jr nz, jr_02e_71f8

    ld bc, $0162
    ld hl, $d800
    ld de, $0188
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_71f8:
    ld a, [$cc8d]
    bit 1, a
    jr nz, jr_02e_720d

    ld bc, $0162
    ld hl, $d800
    ld de, $018a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_720d:
    ld a, [$cc8d]
    bit 2, a
    jr nz, jr_02e_7222

    ld bc, $0162
    ld hl, $d800
    ld de, $018c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7222:
    ld a, [$cc8d]
    bit 3, a
    jr nz, jr_02e_7237

    ld bc, $0162
    ld hl, $d800
    ld de, $018e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7237:
    ld a, [$cc8d]
    bit 4, a
    jr nz, jr_02e_724c

    ld bc, $0162
    ld hl, $d800
    ld de, $0190
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_724c:
    ld a, [$cc8e]
    bit 0, a
    jr nz, jr_02e_7261

    ld bc, $0162
    ld hl, $d800
    ld de, $019a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7261:
    ld a, [$cc8e]
    bit 1, a
    jr nz, jr_02e_7276

    ld bc, $0162
    ld hl, $d800
    ld de, $019c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7276:
    ld a, [$cc8e]
    bit 2, a
    jr nz, jr_02e_728b

    ld bc, $0162
    ld hl, $d800
    ld de, $019e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_728b:
    ld a, [$cc8e]
    bit 3, a
    jr nz, jr_02e_72a0

    ld bc, $0162
    ld hl, $d800
    ld de, $01a0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_72a0:
    ld a, [$cc8e]
    bit 4, a
    jr nz, jr_02e_72b5

    ld bc, $0162
    ld hl, $d800
    ld de, $01a2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_72b5:
    ld a, [$cc8e]
    bit 5, a
    jr nz, jr_02e_72ca

    ld bc, $0162
    ld hl, $d800
    ld de, $01a4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_72ca:
    ld a, [$cc8e]
    bit 6, a
    jr nz, jr_02e_72df

    ld bc, $0162
    ld hl, $d800
    ld de, $01a6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_72df:
    ld a, [$cc8e]
    bit 7, a
    jr nz, jr_02e_72f4

    ld bc, $0162
    ld hl, $d800
    ld de, $01a8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_72f4:
    ld a, [$cc8f]
    bit 0, a
    jr nz, jr_02e_7309

    ld bc, $0162
    ld hl, $d800
    ld de, $01aa
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7309:
    ld a, [$cc8f]
    bit 1, a
    jr nz, jr_02e_731e

    ld bc, $0162
    ld hl, $d800
    ld de, $01ac
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_731e:
    ld a, [$cc8f]
    bit 2, a
    jr nz, jr_02e_7333

    ld bc, $0162
    ld hl, $d800
    ld de, $01ae
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7333:
    ld a, [$cc8f]
    bit 3, a
    jr nz, jr_02e_7348

    ld bc, $0162
    ld hl, $d800
    ld de, $01b0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7348:
    ld a, [$cc8f]
    bit 4, a
    jr nz, jr_02e_735d

    ld bc, $0162
    ld hl, $d800
    ld de, $01b2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_735d:
    ld a, [$cc90]
    bit 0, a
    jr nz, jr_02e_7372

    ld bc, $0162
    ld hl, $d800
    ld de, $01bc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7372:
    ld a, [$cc90]
    bit 1, a
    jr nz, jr_02e_7387

    ld bc, $0162
    ld hl, $d800
    ld de, $01be
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7387:
    ld a, [$cc90]
    bit 2, a
    jr nz, jr_02e_739c

    ld bc, $0162
    ld hl, $d800
    ld de, $01c0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_739c:
    ld a, [$cc90]
    bit 3, a
    jr nz, jr_02e_73b1

    ld bc, $0162
    ld hl, $d800
    ld de, $01c2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_73b1:
    ld a, [$cc90]
    bit 4, a
    jr nz, jr_02e_73c6

    ld bc, $0162
    ld hl, $d800
    ld de, $01c4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_73c6:
    ld a, [$cc90]
    bit 5, a
    jr nz, jr_02e_73db

    ld bc, $0162
    ld hl, $d800
    ld de, $01c6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_73db:
    ld a, [$cc90]
    bit 6, a
    jr nz, jr_02e_73f0

    ld bc, $0162
    ld hl, $d800
    ld de, $01c8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_73f0:
    ld a, [$cc90]
    bit 7, a
    jr nz, jr_02e_7405

    ld bc, $0162
    ld hl, $d800
    ld de, $01ca
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7405:
    ld a, [$cc91]
    bit 0, a
    jr nz, jr_02e_741a

    ld bc, $0162
    ld hl, $d800
    ld de, $01cc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_741a:
    ld a, [$cc91]
    bit 1, a
    jr nz, jr_02e_742f

    ld bc, $0162
    ld hl, $d800
    ld de, $01ce
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_742f:
    ld a, [$cc91]
    bit 2, a
    jr nz, jr_02e_7444

    ld bc, $0162
    ld hl, $d800
    ld de, $01d0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7444:
    ld a, [$cc91]
    bit 3, a
    jr nz, jr_02e_7459

    ld bc, $0162
    ld hl, $d800
    ld de, $01d2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_7459:
    ld a, [$cc91]
    bit 4, a
    jr nz, jr_02e_746e

    ld bc, $0162
    ld hl, $d800
    ld de, $01d4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_02e_746e:
    ld a, [$cc79]
    cp $03
    ret nz

    call Call_02e_7f4d
    call Call_02e_7f66
    ld a, [$ba0b]
    cp $ff
    ret z

    ld bc, $0165
    ld hl, $d800
    ld de, $0052
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld a, [$cc79]
    cp $02
    ret nz

    ld a, [$ba0a]
    or a
    ret nz

    ld hl, $9800
    ld de, $018c
    add hl, de
    call Call_02e_7f04
    ret


    ld a, [$cc7c]
    bit 0, a
    jr nz, jr_02e_74b6

    ld hl, $9800
    ld de, $0022
    add hl, de
    call Call_02e_7e53

jr_02e_74b6:
    ld a, [$cc7c]
    bit 1, a
    jr nz, jr_02e_74c7

    ld hl, $9800
    ld de, $0024
    add hl, de
    call Call_02e_7e53

jr_02e_74c7:
    ld a, [$cc7c]
    bit 2, a
    jr nz, jr_02e_74d8

    ld hl, $9800
    ld de, $0026
    add hl, de
    call Call_02e_7e53

jr_02e_74d8:
    ld a, [$cc7c]
    bit 3, a
    jr nz, jr_02e_74e9

    ld hl, $9800
    ld de, $0028
    add hl, de
    call Call_02e_7e53

jr_02e_74e9:
    ld a, [$cc7c]
    bit 4, a
    jr nz, jr_02e_74fa

    ld hl, $9800
    ld de, $002a
    add hl, de
    call Call_02e_7e53

jr_02e_74fa:
    ld a, [$cc7c]
    bit 5, a
    jr nz, jr_02e_750b

    ld hl, $9800
    ld de, $002c
    add hl, de
    call Call_02e_7e53

jr_02e_750b:
    ld a, [$cc7c]
    bit 6, a
    jr nz, jr_02e_751c

    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_02e_7e53

jr_02e_751c:
    ld a, [$cc7c]
    bit 7, a
    jr nz, jr_02e_752d

    ld hl, $9800
    ld de, $0030
    add hl, de
    call Call_02e_7e53

jr_02e_752d:
    ld a, [$cc7d]
    bit 0, a
    jr nz, jr_02e_753e

    ld hl, $9800
    ld de, $0032
    add hl, de
    call Call_02e_7e53

jr_02e_753e:
    ld a, [$cc7d]
    bit 1, a
    jr nz, jr_02e_754f

    ld hl, $9800
    ld de, $0034
    add hl, de
    call Call_02e_7e53

jr_02e_754f:
    ld a, [$cc7d]
    bit 2, a
    jr nz, jr_02e_7560

    ld hl, $9800
    ld de, $0036
    add hl, de
    call Call_02e_7e53

jr_02e_7560:
    ld a, [$cc7d]
    bit 3, a
    jr nz, jr_02e_7571

    ld hl, $9800
    ld de, $0038
    add hl, de
    call Call_02e_7e53

jr_02e_7571:
    ld a, [$cc7d]
    bit 4, a
    jr nz, jr_02e_7582

    ld hl, $9800
    ld de, $003a
    add hl, de
    call Call_02e_7e53

jr_02e_7582:
    ld a, [$cc7e]
    bit 0, a
    jr nz, jr_02e_7593

    ld hl, $9800
    ld de, $0062
    add hl, de
    call Call_02e_7e53

jr_02e_7593:
    ld a, [$cc7e]
    bit 1, a
    jr nz, jr_02e_75a4

    ld hl, $9800
    ld de, $0064
    add hl, de
    call Call_02e_7e53

jr_02e_75a4:
    ld a, [$cc7e]
    bit 2, a
    jr nz, jr_02e_75b5

    ld hl, $9800
    ld de, $0066
    add hl, de
    call Call_02e_7e53

jr_02e_75b5:
    ld a, [$cc7e]
    bit 3, a
    jr nz, jr_02e_75c6

    ld hl, $9800
    ld de, $0068
    add hl, de
    call Call_02e_7e53

jr_02e_75c6:
    ld a, [$cc7e]
    bit 4, a
    jr nz, jr_02e_75d7

    ld hl, $9800
    ld de, $006a
    add hl, de
    call Call_02e_7e53

jr_02e_75d7:
    ld a, [$cc7e]
    bit 5, a
    jr nz, jr_02e_75e8

    ld hl, $9800
    ld de, $006c
    add hl, de
    call Call_02e_7e53

jr_02e_75e8:
    ld a, [$cc7e]
    bit 6, a
    jr nz, jr_02e_75f9

    ld hl, $9800
    ld de, $006e
    add hl, de
    call Call_02e_7e53

jr_02e_75f9:
    ld a, [$cc7e]
    bit 7, a
    jr nz, jr_02e_760a

    ld hl, $9800
    ld de, $0070
    add hl, de
    call Call_02e_7e53

jr_02e_760a:
    ld a, [$cc7f]
    bit 0, a
    jr nz, jr_02e_761b

    ld hl, $9800
    ld de, $0072
    add hl, de
    call Call_02e_7e53

jr_02e_761b:
    ld a, [$cc7f]
    bit 1, a
    jr nz, jr_02e_762c

    ld hl, $9800
    ld de, $0074
    add hl, de
    call Call_02e_7e53

jr_02e_762c:
    ld a, [$cc7f]
    bit 2, a
    jr nz, jr_02e_763d

    ld hl, $9800
    ld de, $0076
    add hl, de
    call Call_02e_7e53

jr_02e_763d:
    ld a, [$cc7f]
    bit 3, a
    jr nz, jr_02e_764e

    ld hl, $9800
    ld de, $0078
    add hl, de
    call Call_02e_7e53

jr_02e_764e:
    ld a, [$cc7f]
    bit 4, a
    jr nz, jr_02e_765f

    ld hl, $9800
    ld de, $007a
    add hl, de
    call Call_02e_7e53

jr_02e_765f:
    ld a, [$cc80]
    bit 0, a
    jr nz, jr_02e_7670

    ld hl, $9800
    ld de, $00a2
    add hl, de
    call Call_02e_7e53

jr_02e_7670:
    ld a, [$cc80]
    bit 1, a
    jr nz, jr_02e_7681

    ld hl, $9800
    ld de, $00a4
    add hl, de
    call Call_02e_7e53

jr_02e_7681:
    ld a, [$cc80]
    bit 2, a
    jr nz, jr_02e_7692

    ld hl, $9800
    ld de, $00a6
    add hl, de
    call Call_02e_7e53

jr_02e_7692:
    ld a, [$cc80]
    bit 3, a
    jr nz, jr_02e_76a3

    ld hl, $9800
    ld de, $00a8
    add hl, de
    call Call_02e_7e53

jr_02e_76a3:
    ld a, [$cc80]
    bit 4, a
    jr nz, jr_02e_76b4

    ld hl, $9800
    ld de, $00aa
    add hl, de
    call Call_02e_7e53

jr_02e_76b4:
    ld a, [$cc80]
    bit 5, a
    jr nz, jr_02e_76c5

    ld hl, $9800
    ld de, $00ac
    add hl, de
    call Call_02e_7e53

jr_02e_76c5:
    ld a, [$cc80]
    bit 6, a
    jr nz, jr_02e_76d6

    ld hl, $9800
    ld de, $00ae
    add hl, de
    call Call_02e_7e53

jr_02e_76d6:
    ld a, [$cc80]
    bit 7, a
    jr nz, jr_02e_76e7

    ld hl, $9800
    ld de, $00b0
    add hl, de
    call Call_02e_7e53

jr_02e_76e7:
    ld a, [$cc81]
    bit 0, a
    jr nz, jr_02e_76f8

    ld hl, $9800
    ld de, $00b2
    add hl, de
    call Call_02e_7e53

jr_02e_76f8:
    ld a, [$cc81]
    bit 1, a
    jr nz, jr_02e_7709

    ld hl, $9800
    ld de, $00b4
    add hl, de
    call Call_02e_7e53

jr_02e_7709:
    ld a, [$cc81]
    bit 2, a
    jr nz, jr_02e_771a

    ld hl, $9800
    ld de, $00b6
    add hl, de
    call Call_02e_7e53

jr_02e_771a:
    ld a, [$cc81]
    bit 3, a
    jr nz, jr_02e_772b

    ld hl, $9800
    ld de, $00b8
    add hl, de
    call Call_02e_7e53

jr_02e_772b:
    ld a, [$cc81]
    bit 4, a
    jr nz, jr_02e_773c

    ld hl, $9800
    ld de, $00ba
    add hl, de
    call Call_02e_7e53

jr_02e_773c:
    ld a, [$cc82]
    bit 0, a
    jr nz, jr_02e_774d

    ld hl, $9800
    ld de, $00e2
    add hl, de
    call Call_02e_7e53

jr_02e_774d:
    ld a, [$cc82]
    bit 1, a
    jr nz, jr_02e_775e

    ld hl, $9800
    ld de, $00e4
    add hl, de
    call Call_02e_7e53

jr_02e_775e:
    ld a, [$cc82]
    bit 2, a
    jr nz, jr_02e_776f

    ld hl, $9800
    ld de, $00e6
    add hl, de
    call Call_02e_7e53

jr_02e_776f:
    ld a, [$cc82]
    bit 3, a
    jr nz, jr_02e_7780

    ld hl, $9800
    ld de, $00e8
    add hl, de
    call Call_02e_7e53

jr_02e_7780:
    ld a, [$cc82]
    bit 4, a
    jr nz, jr_02e_7791

    ld hl, $9800
    ld de, $00ea
    add hl, de
    call Call_02e_7e53

jr_02e_7791:
    ld a, [$cc82]
    bit 5, a
    jr nz, jr_02e_77a2

    ld hl, $9800
    ld de, $00ec
    add hl, de
    call Call_02e_7e53

jr_02e_77a2:
    ld a, [$cc82]
    bit 6, a
    jr nz, jr_02e_77b3

    ld hl, $9800
    ld de, $00ee
    add hl, de
    call Call_02e_7e53

jr_02e_77b3:
    ld a, [$cc82]
    bit 7, a
    jr nz, jr_02e_77c4

    ld hl, $9800
    ld de, $00f0
    add hl, de
    call Call_02e_7e53

jr_02e_77c4:
    ld a, [$cc83]
    bit 0, a
    jr nz, jr_02e_77d5

    ld hl, $9800
    ld de, $00f2
    add hl, de
    call Call_02e_7e53

jr_02e_77d5:
    ld a, [$cc83]
    bit 1, a
    jr nz, jr_02e_77e6

    ld hl, $9800
    ld de, $00f4
    add hl, de
    call Call_02e_7e53

jr_02e_77e6:
    ld a, [$cc83]
    bit 2, a
    jr nz, jr_02e_77f7

    ld hl, $9800
    ld de, $00f6
    add hl, de
    call Call_02e_7e53

jr_02e_77f7:
    ld a, [$cc83]
    bit 3, a
    jr nz, jr_02e_7808

    ld hl, $9800
    ld de, $00f8
    add hl, de
    call Call_02e_7e53

jr_02e_7808:
    ld a, [$cc83]
    bit 4, a
    jr nz, jr_02e_7819

    ld hl, $9800
    ld de, $00fa
    add hl, de
    call Call_02e_7e53

jr_02e_7819:
    ld a, [$cc84]
    bit 0, a
    jr nz, jr_02e_782a

    ld hl, $9800
    ld de, $0122
    add hl, de
    call Call_02e_7e53

jr_02e_782a:
    ld a, [$cc84]
    bit 1, a
    jr nz, jr_02e_783b

    ld hl, $9800
    ld de, $0124
    add hl, de
    call Call_02e_7e53

jr_02e_783b:
    ld a, [$cc84]
    bit 2, a
    jr nz, jr_02e_784c

    ld hl, $9800
    ld de, $0126
    add hl, de
    call Call_02e_7e53

jr_02e_784c:
    ld a, [$cc84]
    bit 3, a
    jr nz, jr_02e_785d

    ld hl, $9800
    ld de, $0128
    add hl, de
    call Call_02e_7e53

jr_02e_785d:
    ld a, [$cc84]
    bit 4, a
    jr nz, jr_02e_786e

    ld hl, $9800
    ld de, $012a
    add hl, de
    call Call_02e_7e53

jr_02e_786e:
    ld a, [$cc84]
    bit 5, a
    jr nz, jr_02e_787f

    ld hl, $9800
    ld de, $012c
    add hl, de
    call Call_02e_7e53

jr_02e_787f:
    ld a, [$cc84]
    bit 6, a
    jr nz, jr_02e_7890

    ld hl, $9800
    ld de, $012e
    add hl, de
    call Call_02e_7e53

jr_02e_7890:
    ld a, [$cc84]
    bit 7, a
    jr nz, jr_02e_78a1

    ld hl, $9800
    ld de, $0130
    add hl, de
    call Call_02e_7e53

jr_02e_78a1:
    ld a, [$cc85]
    bit 0, a
    jr nz, jr_02e_78b2

    ld hl, $9800
    ld de, $0132
    add hl, de
    call Call_02e_7e53

jr_02e_78b2:
    ld a, [$cc85]
    bit 1, a
    jr nz, jr_02e_78c3

    ld hl, $9800
    ld de, HeaderTitle
    add hl, de
    call Call_02e_7e53

jr_02e_78c3:
    ld a, [$cc85]
    bit 2, a
    jr nz, jr_02e_78d4

    ld hl, $9800
    ld de, $0136
    add hl, de
    call Call_02e_7e53

jr_02e_78d4:
    ld a, [$cc85]
    bit 3, a
    jr nz, jr_02e_78e5

    ld hl, $9800
    ld de, $0138
    add hl, de
    call Call_02e_7e53

jr_02e_78e5:
    ld a, [$cc85]
    bit 4, a
    jr nz, jr_02e_78f6

    ld hl, $9800
    ld de, $013a
    add hl, de
    call Call_02e_7e53

jr_02e_78f6:
    ld a, [$cc86]
    bit 0, a
    jr nz, jr_02e_7907

    ld hl, $9800
    ld de, $0162
    add hl, de
    call Call_02e_7e53

jr_02e_7907:
    ld a, [$cc86]
    bit 1, a
    jr nz, jr_02e_7918

    ld hl, $9800
    ld de, $0164
    add hl, de
    call Call_02e_7e53

jr_02e_7918:
    ld a, [$cc86]
    bit 2, a
    jr nz, jr_02e_7929

    ld hl, $9800
    ld de, $0166
    add hl, de
    call Call_02e_7e53

jr_02e_7929:
    ld a, [$cc86]
    bit 3, a
    jr nz, jr_02e_793a

    ld hl, $9800
    ld de, $0168
    add hl, de
    call Call_02e_7e53

jr_02e_793a:
    ld a, [$cc86]
    bit 4, a
    jr nz, jr_02e_794b

    ld hl, $9800
    ld de, $016a
    add hl, de
    call Call_02e_7e53

jr_02e_794b:
    ld a, [$cc86]
    bit 5, a
    jr nz, jr_02e_795c

    ld hl, $9800
    ld de, $016c
    add hl, de
    call Call_02e_7e53

jr_02e_795c:
    ld a, [$cc86]
    bit 6, a
    jr nz, jr_02e_796d

    ld hl, $9800
    ld de, $016e
    add hl, de
    call Call_02e_7e53

jr_02e_796d:
    ld a, [$cc86]
    bit 7, a
    jr nz, jr_02e_797e

    ld hl, $9800
    ld de, $0170
    add hl, de
    call Call_02e_7e53

jr_02e_797e:
    ld a, [$cc87]
    bit 0, a
    jr nz, jr_02e_798f

    ld hl, $9800
    ld de, $0172
    add hl, de
    call Call_02e_7e53

jr_02e_798f:
    ld a, [$cc87]
    bit 1, a
    jr nz, jr_02e_79a0

    ld hl, $9800
    ld de, $0174
    add hl, de
    call Call_02e_7e53

jr_02e_79a0:
    ld a, [$cc87]
    bit 2, a
    jr nz, jr_02e_79b1

    ld hl, $9800
    ld de, $0176
    add hl, de
    call Call_02e_7e53

jr_02e_79b1:
    ld a, [$cc87]
    bit 3, a
    jr nz, jr_02e_79c2

    ld hl, $9800
    ld de, $0178
    add hl, de
    call Call_02e_7e53

jr_02e_79c2:
    ld a, [$cc87]
    bit 4, a
    jr nz, jr_02e_79d3

    ld hl, $9800
    ld de, $017a
    add hl, de
    call Call_02e_7e53

jr_02e_79d3:
    ld a, [$cc88]
    bit 0, a
    jr nz, jr_02e_79e4

    ld hl, $9800
    ld de, $01a2
    add hl, de
    call Call_02e_7e53

jr_02e_79e4:
    ld a, [$cc88]
    bit 1, a
    jr nz, jr_02e_79f5

    ld hl, $9800
    ld de, $01a4
    add hl, de
    call Call_02e_7e53

jr_02e_79f5:
    ld a, [$cc88]
    bit 2, a
    jr nz, jr_02e_7a06

    ld hl, $9800
    ld de, $01a6
    add hl, de
    call Call_02e_7e53

jr_02e_7a06:
    ld a, [$cc88]
    bit 3, a
    jr nz, jr_02e_7a17

    ld hl, $9800
    ld de, $01a8
    add hl, de
    call Call_02e_7e53

jr_02e_7a17:
    ld a, [$cc88]
    bit 4, a
    jr nz, jr_02e_7a28

    ld hl, $9800
    ld de, $01aa
    add hl, de
    call Call_02e_7e53

jr_02e_7a28:
    ld a, [$cc88]
    bit 5, a
    jr nz, jr_02e_7a39

    ld hl, $9800
    ld de, $01ac
    add hl, de
    call Call_02e_7e53

jr_02e_7a39:
    ld a, [$cc88]
    bit 6, a
    jr nz, jr_02e_7a4a

    ld hl, $9800
    ld de, $01ae
    add hl, de
    call Call_02e_7e53

jr_02e_7a4a:
    ld a, [$cc88]
    bit 7, a
    jr nz, jr_02e_7a5b

    ld hl, $9800
    ld de, $01b0
    add hl, de
    call Call_02e_7e53

jr_02e_7a5b:
    ld a, [$cc89]
    bit 0, a
    jr nz, jr_02e_7a6c

    ld hl, $9800
    ld de, $01b2
    add hl, de
    call Call_02e_7e53

jr_02e_7a6c:
    ld a, [$cc89]
    bit 1, a
    jr nz, jr_02e_7a7d

    ld hl, $9800
    ld de, $01b4
    add hl, de
    call Call_02e_7e53

jr_02e_7a7d:
    ld a, [$cc89]
    bit 2, a
    jr nz, jr_02e_7a8e

    ld hl, $9800
    ld de, $01b6
    add hl, de
    call Call_02e_7e53

jr_02e_7a8e:
    ld a, [$cc89]
    bit 3, a
    jr nz, jr_02e_7a9f

    ld hl, $9800
    ld de, $01b8
    add hl, de
    call Call_02e_7e53

jr_02e_7a9f:
    ld a, [$cc89]
    bit 4, a
    jr nz, jr_02e_7ab0

    ld hl, $9800
    ld de, $01ba
    add hl, de
    call Call_02e_7e53

jr_02e_7ab0:
    ld a, [$cc8a]
    bit 0, a
    jr nz, jr_02e_7ac1

    ld hl, $9800
    ld de, $01e2
    add hl, de
    call Call_02e_7e53

jr_02e_7ac1:
    ld a, [$cc8a]
    bit 1, a
    jr nz, jr_02e_7ad2

    ld hl, $9800
    ld de, $01e4
    add hl, de
    call Call_02e_7e53

jr_02e_7ad2:
    ld a, [$cc8a]
    bit 2, a
    jr nz, jr_02e_7ae3

    ld hl, $9800
    ld de, $01e6
    add hl, de
    call Call_02e_7e53

jr_02e_7ae3:
    ld a, [$cc8a]
    bit 3, a
    jr nz, jr_02e_7af4

Call_02e_7aea:
    ld hl, $9800
    ld de, $01e8
    add hl, de
    call Call_02e_7e53

jr_02e_7af4:
    ld a, [$cc8a]
    bit 4, a
    jr nz, jr_02e_7b05

    ld hl, $9800
    ld de, $01ea
    add hl, de
    call Call_02e_7e53

jr_02e_7b05:
    ld a, [$cc8a]
    bit 5, a
    jr nz, jr_02e_7b16

    ld hl, $9800
    ld de, $01ec
    add hl, de
    call Call_02e_7e53

jr_02e_7b16:
    ld a, [$cc8a]
    bit 6, a
    jr nz, jr_02e_7b27

    ld hl, $9800
    ld de, $01ee
    add hl, de
    call Call_02e_7e53

jr_02e_7b27:
    ld a, [$cc8a]
    bit 7, a
    jr nz, jr_02e_7b38

    ld hl, $9800
    ld de, $01f0
    add hl, de
    call Call_02e_7e53

jr_02e_7b38:
    ld a, [$cc8b]
    bit 0, a
    jr nz, jr_02e_7b49

    ld hl, $9800
    ld de, $01f2
    add hl, de
    call Call_02e_7e53

jr_02e_7b49:
    ld a, [$cc8b]
    bit 1, a
    jr nz, jr_02e_7b5a

    ld hl, $9800
    ld de, $01f4
    add hl, de
    call Call_02e_7e53

jr_02e_7b5a:
    ld a, [$cc8b]
    bit 2, a
    jr nz, jr_02e_7b6b

    ld hl, $9800
    ld de, $01f6
    add hl, de
    call Call_02e_7e53

jr_02e_7b6b:
    ld a, [$cc8b]
    bit 3, a
    jr nz, jr_02e_7b7c

    ld hl, $9800
    ld de, $01f8
    add hl, de
    call Call_02e_7e53

jr_02e_7b7c:
    ld a, [$cc8b]
    bit 4, a
    jr nz, jr_02e_7b8d

    ld hl, $9800
    ld de, $01fa
    add hl, de
    call Call_02e_7e53

jr_02e_7b8d:
    ld a, [$cc8c]
    bit 0, a
    jr nz, jr_02e_7b9e

    ld hl, $9800
    ld de, $0222
    add hl, de
    call Call_02e_7e53

jr_02e_7b9e:
    ld a, [$cc8c]
    bit 1, a
    jr nz, jr_02e_7baf

    ld hl, $9800
    ld de, $0224
    add hl, de
    call Call_02e_7e53

jr_02e_7baf:
    ld a, [$cc8c]
    bit 2, a
    jr nz, jr_02e_7bc0

    ld hl, $9800
    ld de, $0226
    add hl, de
    call Call_02e_7e53

jr_02e_7bc0:
    ld a, [$cc8c]
    bit 3, a
    jr nz, jr_02e_7bd1

    ld hl, $9800
    ld de, $0228
    add hl, de
    call Call_02e_7e53

jr_02e_7bd1:
    ld a, [$cc8c]
    bit 4, a
    jr nz, jr_02e_7be2

    ld hl, $9800
    ld de, $022a
    add hl, de
    call Call_02e_7e53

jr_02e_7be2:
    ld a, [$cc8c]
    bit 5, a
    jr nz, jr_02e_7bf3

    ld hl, $9800
    ld de, $022c
    add hl, de
    call Call_02e_7e53

jr_02e_7bf3:
    ld a, [$cc8c]
    bit 6, a
    jr nz, jr_02e_7c04

Call_02e_7bfa:
    ld hl, $9800
    ld de, $022e
    add hl, de
    call Call_02e_7e53

jr_02e_7c04:
    ld a, [$cc8c]
    bit 7, a
    jr nz, jr_02e_7c15

    ld hl, $9800
    ld de, $0230
    add hl, de
    call Call_02e_7e53

jr_02e_7c15:
    ld a, [$cc8d]
    bit 0, a
    jr nz, jr_02e_7c26

    ld hl, $9800
    ld de, $0232
    add hl, de
    call Call_02e_7e53

jr_02e_7c26:
    ld a, [$cc8d]
    bit 1, a
    jr nz, jr_02e_7c37

    ld hl, $9800
    ld de, $0234
    add hl, de
    call Call_02e_7e53

jr_02e_7c37:
    ld a, [$cc8d]
    bit 2, a
    jr nz, jr_02e_7c48

    ld hl, $9800
    ld de, $0236
    add hl, de
    call Call_02e_7e53

jr_02e_7c48:
    ld a, [$cc8d]
    bit 3, a
    jr nz, jr_02e_7c59

    ld hl, $9800
    ld de, $0238
    add hl, de
    call Call_02e_7e53

jr_02e_7c59:
    ld a, [$cc8d]
    bit 4, a
    jr nz, jr_02e_7c6a

    ld hl, $9800
    ld de, $023a
    add hl, de
    call Call_02e_7e53

jr_02e_7c6a:
    ld a, [$cc8e]
    bit 0, a
    jr nz, jr_02e_7c7b

    ld hl, $9800
    ld de, $0262
    add hl, de
    call Call_02e_7e53

jr_02e_7c7b:
    ld a, [$cc8e]
    bit 1, a
    jr nz, jr_02e_7c8c

    ld hl, $9800
    ld de, $0264
    add hl, de
    call Call_02e_7e53

jr_02e_7c8c:
    ld a, [$cc8e]
    bit 2, a
    jr nz, jr_02e_7c9d

    ld hl, $9800
    ld de, $0266
    add hl, de
    call Call_02e_7e53

jr_02e_7c9d:
    ld a, [$cc8e]
    bit 3, a
    jr nz, jr_02e_7cae

    ld hl, $9800
    ld de, $0268
    add hl, de
    call Call_02e_7e53

jr_02e_7cae:
    ld a, [$cc8e]
    bit 4, a
    jr nz, jr_02e_7cbf

    ld hl, $9800
    ld de, $026a
    add hl, de
    call Call_02e_7e53

jr_02e_7cbf:
    ld a, [$cc8e]
    bit 5, a
    jr nz, jr_02e_7cd0

    ld hl, $9800
    ld de, $026c
    add hl, de
    call Call_02e_7e53

jr_02e_7cd0:
    ld a, [$cc8e]
    bit 6, a
    jr nz, jr_02e_7ce1

    ld hl, $9800
    ld de, $026e
    add hl, de
    call Call_02e_7e53

jr_02e_7ce1:
    ld a, [$cc8e]
    bit 7, a
    jr nz, jr_02e_7cf2

    ld hl, $9800
    ld de, $0270
    add hl, de
    call Call_02e_7e53

jr_02e_7cf2:
    ld a, [$cc8f]
    bit 0, a
    jr nz, jr_02e_7d03

    ld hl, $9800
    ld de, $0272
    add hl, de
    call Call_02e_7e53

jr_02e_7d03:
    ld a, [$cc8f]
    bit 1, a
    jr nz, jr_02e_7d14

    ld hl, $9800
    ld de, $0274
    add hl, de
    call Call_02e_7e53

jr_02e_7d14:
    ld a, [$cc8f]
    bit 2, a
    jr nz, jr_02e_7d25

    ld hl, $9800
    ld de, $0276
    add hl, de
    call Call_02e_7e53

jr_02e_7d25:
    ld a, [$cc8f]
    bit 3, a
    jr nz, jr_02e_7d36

    ld hl, $9800
    ld de, $0278
    add hl, de
    call Call_02e_7e53

jr_02e_7d36:
    ld a, [$cc8f]
    bit 4, a
    jr nz, jr_02e_7d47

    ld hl, $9800
    ld de, $027a
    add hl, de
    call Call_02e_7e53

jr_02e_7d47:
    ld a, [$cc90]
    bit 0, a
    jr nz, jr_02e_7d58

    ld hl, $9800
    ld de, $02a2
    add hl, de
    call Call_02e_7e53

jr_02e_7d58:
    ld a, [$cc90]
    bit 1, a
    jr nz, jr_02e_7d69

    ld hl, $9800
    ld de, $02a4
    add hl, de
    call Call_02e_7e53

jr_02e_7d69:
    ld a, [$cc90]
    bit 2, a
    jr nz, jr_02e_7d7a

    ld hl, $9800
    ld de, $02a6
    add hl, de
    call Call_02e_7e53

jr_02e_7d7a:
    ld a, [$cc90]
    bit 3, a
    jr nz, jr_02e_7d8b

    ld hl, $9800
    ld de, $02a8
    add hl, de
    call Call_02e_7e53

jr_02e_7d8b:
    ld a, [$cc90]
    bit 4, a
    jr nz, jr_02e_7d9c

    ld hl, $9800
    ld de, $02aa
    add hl, de
    call Call_02e_7e53

jr_02e_7d9c:
    ld a, [$cc90]
    bit 5, a
    jr nz, jr_02e_7dad

    ld hl, $9800
    ld de, $02ac
    add hl, de
    call Call_02e_7e53

jr_02e_7dad:
    ld a, [$cc90]
    bit 6, a
    jr nz, jr_02e_7dbe

    ld hl, $9800
    ld de, $02ae
    add hl, de
    call Call_02e_7e53

jr_02e_7dbe:
    ld a, [$cc90]
    bit 7, a
    jr nz, jr_02e_7dcf

    ld hl, $9800
    ld de, $02b0
    add hl, de
    call Call_02e_7e53

jr_02e_7dcf:
    ld a, [$cc91]
    bit 0, a
    jr nz, jr_02e_7de0

    ld hl, $9800
    ld de, $02b2
    add hl, de
    call Call_02e_7e53

jr_02e_7de0:
    ld a, [$cc91]
    bit 1, a
    jr nz, jr_02e_7df1

    ld hl, $9800
    ld de, $02b4
    add hl, de
    call Call_02e_7e53

jr_02e_7df1:
    ld a, [$cc91]
    bit 2, a
    jr nz, jr_02e_7e02

    ld hl, $9800
    ld de, $02b6
    add hl, de
    call Call_02e_7e53

jr_02e_7e02:
    ld a, [$cc91]
    bit 3, a
    jr nz, jr_02e_7e13

    ld hl, $9800
    ld de, $02b8
    add hl, de
    call Call_02e_7e53

jr_02e_7e13:
    ld a, [$cc91]
    bit 4, a
    jr nz, jr_02e_7e24

    ld hl, $9800
    ld de, $02ba
    add hl, de
    call Call_02e_7e53

jr_02e_7e24:
    ld a, [$cc79]
    cp $03
    ret nz

    call Call_02e_7ed8
    call Call_02e_7eee
    ld a, [$ba0b]
    cp $ff
    jr z, jr_02e_7e48

    ld a, [$cc7c]
    bit 6, a
    ret z

    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_02e_7eb5
    ret


jr_02e_7e48:
    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_02e_7e92
    ret


Call_02e_7e53:
    ld a, $60
    ld [hl+], a
    ld a, $61
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $70
    ld [hl+], a
    ld a, $71
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $a0
    ld [hl+], a
    ld a, $a1
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $b0
    ld [hl+], a
    ld a, $b1
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $c0
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ret


Call_02e_7e92:
    ld a, $a6
    ld [hl+], a
    ld a, $a7
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $b6
    ld [hl+], a
    ld a, $b7
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $c6
    ld [hl+], a
    ld a, $c7
    ld [hl], a
    ret


Call_02e_7eb5:
    ld a, $1c
    ld [hl+], a
    ld a, $1d
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $0e
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $1e
    ld [hl+], a
    ld a, $1f
    ld [hl], a
    ret


Call_02e_7ed8:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba08]
    or a
    ret nz

    ld hl, $9800
    ld de, $0258
    add hl, de
    call Call_02e_7f04
    ret


Call_02e_7eee:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba09]
    or a
    ret nz

    ld hl, $9800
    ld de, $02d4
    add hl, de
    call Call_02e_7f04
    ret


Call_02e_7f04:
    ld a, $68
    ld [hl+], a
    ld a, $69
    ld [hl+], a
    ld a, $6a
    ld [hl+], a
    ld a, $11
    ld [hl+], a
    ld a, $1c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $78
    ld [hl+], a
    ld a, $79
    ld [hl+], a
    ld a, $7a
    ld [hl+], a
    ld a, $7b
    ld [hl+], a
    ld a, $1c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $6c
    ld [hl+], a
    ld a, $6d
    ld [hl+], a
    ld a, $6e
    ld [hl+], a
    ld a, $6f
    ld [hl+], a
    ld a, $1c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $7c
    ld [hl+], a
    ld a, $7d
    ld [hl+], a
    ld a, $7e
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    ret


Call_02e_7f4d:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba08]
    or a
    ret nz

    ld hl, $d800
    ld de, $016c
    add hl, de
    ld bc, $8127
    call Call_02e_7f7f
    ret


Call_02e_7f66:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba09]
    or a
    ret nz

    ld hl, $d800
    ld de, $01ac
    add hl, de
    ld bc, $8128
    call Call_02e_7f7f
    ret


Call_02e_7f7f:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $0f
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
