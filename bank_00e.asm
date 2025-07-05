; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld c, $7c
    ld c, [hl]
    rst $20
    nop
    ld [hl], e
    ld de, $437d
    push hl
    push af
    ld l, $4d
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $4001
    ld c, $6a
    ld a, $b0
    ldh [c], a
    ld c, $6b
    ld d, $08

jr_00e_4022:
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, jr_00e_4022

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
    ld hl, $cb2f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $668d
    ld c, $0a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5eb8
    ld c, $0a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $0a
    ld de, $8000
    call Call_000_31a0
    ld hl, $54e5
    ld c, $0a
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
    ld [$b90e], a
    ld a, $d8
    ld [$b90d], a
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
    call $5142
    call Call_00e_5213
    call Call_000_1275
    ld hl, $629e
    ld a, $0f
    call BankSwitchCallHL
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_00e_4101

    bit 0, a
    jr z, jr_00e_4101

    bit 1, a
    jr nz, jr_00e_4108

    ld a, $02
    call Call_000_18e6
    jr jr_00e_410d

jr_00e_4101:
    ld a, $00
    call Call_000_18e6
    jr jr_00e_410d

jr_00e_4108:
    ld a, $03
    call Call_000_18e6

jr_00e_410d:
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
    jr z, jr_00e_4158

    ld a, [$cb56]
    or a
    jr nz, jr_00e_4158

    ld a, $50
    ld [$cb8f], a
    xor a
    ld [$cc9a], a

jr_00e_4158:
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    ld a, [$b899]
    cp $01
    jr nz, jr_00e_4179

    call Call_00e_53a8
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5285
    call Call_00e_539f
    call $1e32
    ret


jr_00e_4179:
    call Call_000_3cf8
    call Call_00e_5480
    call Call_00e_424f
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5285
    call Call_00e_5468
    call Call_00e_41a1
    call Call_00e_541e
    call $1e32
    call Call_00e_4b65
    call Call_00e_44aa
    call Call_00e_54d1
    ret


Call_00e_41a1:
    ret


    ld a, [$cb79]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [sCurrentHour]
    cp $05
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
    jr z, jr_00e_41db

    ldh a, [$ff8b]
    and $01
    jr nz, jr_00e_41db

    ret


jr_00e_41db:
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
    call Call_00e_4202
    ret


Call_00e_4202:
    ld a, [$c90f]
    or a
    ret z

    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    ld a, [$c911]
    dec a
    ld [$c911], a
    jr z, jr_00e_4236

    cp $13
    jr nc, jr_00e_421b

    pop hl
    ret


jr_00e_421b:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c7c0], a
    ld a, $01
    ld [$c910], a
    pop hl
    ret


jr_00e_4236:
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


Call_00e_424f:
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
    jr nz, jr_00e_42b5

    call Call_00e_4202
    call Call_000_0e54
    call Call_00e_4526
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_00e_42b5

    ld a, [$cc6e]
    or a
    jp nz, Jump_00e_485c

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_00e_457b

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_00e_4fe7

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_00e_4577

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00e_42bb

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00e_4366

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00e_42f4

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00e_432d

    ld a, [$c912]
    or a
    ret nz

jr_00e_42b5:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_42bb:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_42f0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_42f0:
    call Call_00e_43eb
    ret


Jump_00e_42f4:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_4329

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_43c5

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43d8

    ret


jr_00e_4329:
    call Call_00e_444b
    ret


Jump_00e_432d:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_4362

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_43c5

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43d8

    ret


jr_00e_4362:
    call Call_00e_447e
    ret


Jump_00e_4366:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_439b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_439b:
    call Call_00e_441d
    ret


Jump_00e_439f:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_444b
    ret


Jump_00e_43b2:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_447e
    ret


Jump_00e_43c5:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_441d
    ret


Jump_00e_43d8:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_43eb
    ret


Call_00e_43eb:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $d3
    jr nc, jr_00e_4417

    ld a, [$c608]
    cp $c0
    jr nc, jr_00e_4410

    cp $50
    jr c, jr_00e_4410

    jr jr_00e_4403

jr_00e_4403:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_00e_440b:
    ld hl, $c608
    inc [hl]
    ret


jr_00e_4410:
    ld hl, $c60b
    inc [hl]
    jr jr_00e_440b

    ret


jr_00e_4417:
    ld a, $1d
    ld [$c911], a
    ret


Call_00e_441d:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $c1
    jr nc, jr_00e_4444

    ld a, [$c608]
    cp $51
    jr c, jr_00e_4444

    jr jr_00e_4437

jr_00e_4437:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_00e_443f:
    ld hl, $c608
    dec [hl]
    ret


jr_00e_4444:
    ld hl, $c60b
    dec [hl]
    jr jr_00e_443f

    ret


Call_00e_444b:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$c606]
    cp $99
    jr nc, jr_00e_4477

    ld a, [$c607]
    cp $00
    jr nz, jr_00e_446a

    ld a, [$c606]
    cp $59
    jr c, jr_00e_4477

jr_00e_446a:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_00e_4472:
    ld hl, $c606
    dec [hl]
    ret


jr_00e_4477:
    ld hl, $c60a
    dec [hl]
    jr jr_00e_4472

    ret


Call_00e_447e:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $d8
    ret nc

    ld a, [$c606]
    cp $98
    jr nc, jr_00e_44a3

    ld a, [$c606]
    cp $58
    jr c, jr_00e_44a3

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_00e_449e:
    ld hl, $c606
    inc [hl]
    ret


jr_00e_44a3:
    ld hl, $c60a
    inc [hl]
    jr jr_00e_449e

    ret


Call_00e_44aa:
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
    jr z, jr_00e_44da

    cp $21
    jr z, jr_00e_44e6

    cp $22
    jr z, jr_00e_44f2

    cp $23
    jr z, jr_00e_44fe

    cp $24
    jr z, jr_00e_450a

    cp $25
    jr z, jr_00e_4516

    ret


jr_00e_44da:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $05
    ld [$cb50], a
    jr jr_00e_4520

jr_00e_44e6:
    ld a, $00
    ld [$cc7b], a
    ld a, $08
    ld [$cb50], a
    jr jr_00e_4520

jr_00e_44f2:
    ld a, $01
    ld [$cc7b], a
    ld a, $09
    ld [$cb50], a
    jr jr_00e_4520

jr_00e_44fe:
    ld a, $02
    ld [$cc7b], a
    ld a, $0a
    ld [$cb50], a
    jr jr_00e_4520

jr_00e_450a:
    ld a, $03
    ld [$cc7b], a
    ld a, $0b
    ld [$cb50], a
    jr jr_00e_4520

jr_00e_4516:
    ld a, $04
    ld [$cc7b], a
    ld a, $0c
    ld [$cb50], a

jr_00e_4520:
    ld a, $1d
    ld [$cb4f], a
    ret


Call_00e_4526:
    ld a, [$cc96]
    or a
    ret z

    dec a
    ld [$cc96], a
    or a
    ret nz

    ld a, [$cc97]
    rst $00
    dec sp
    ld b, l
    inc a
    ld b, l
    ld e, b
    ld b, l
    ret


    ld a, $56
    call $16d1
    ld a, $1e
    ld [$c912], a
    ld hl, sPlayerMoney
    ld bc, $0064
    call AddSignedBCToHL
    call Call_000_1056
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


    ld a, [sNumPowerBerriesEaten]
    inc a
    ld [sNumPowerBerriesEaten], a
    ld a, $37
    call $16d1
    ld a, $3c
    ld [$c912], a
    ld [$cb8c], a
    ld a, $07
    ld [$cb8d], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_4577:
    call Call_000_1923
    ret


Call_00e_457b:
Jump_00e_457b:
    ld a, [wPlayerFacingDirection]
    rst $00
    add a
    ld b, l
    adc a
    ld b, l
    sub a
    ld b, l
    sbc a
    ld b, l
    call Call_000_14f9
    call Call_00e_52b9
    jr jr_00e_45a5

    call Call_000_150b
    call Call_00e_52c2
    jr jr_00e_45a5

    call Call_000_1514
    call Call_00e_52cb
    jr jr_00e_45a5

    call Call_000_1502
    call Call_00e_52d4

jr_00e_45a5:
    ld a, [$cb4a]
    or a
    jr nz, jr_00e_45ca

    ld a, [$cc1b]
    cp $00
    jr nz, jr_00e_45ca

    ld a, [wCollisionNoMovement]
    or a
    jr nz, jr_00e_45ca

    ld a, [wRightOrUpSideFacingTileID]
    cp $08
    jp z, Jump_00e_4712

    cp $09
    jp z, Jump_00e_471d

    cp $0a
    jp z, Jump_00e_4728

jr_00e_45ca:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jr z, jr_00e_4631

    ld a, [sPlayerEnergy]
    or a
    jr nz, jr_00e_45eb

    ld a, $01
    ld [$c912], a
    ld b, $00
    call CheckForNoEnergyAnimation

jr_00e_45eb:
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
    jr z, jr_00e_4629
    cp HOE
    jr z, jr_00e_4629
    cp HAMMER
    jr z, jr_00e_4629
    cp AX
    jr z, jr_00e_4629
    cp SUPER_SICKLE
    jr z, jr_00e_4629
    cp SUPER_HOE
    jr z, jr_00e_4629
    cp SUPER_HAMMER
    jr z, jr_00e_4629
    cp SUPER_AX
    jr z, jr_00e_4629
    cp PICK_AX
    jr z, jr_00e_4629
    ld a, [$cc75]
    or a
    jp nz, Jump_00e_4733

jr_00e_4629:
    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL

jr_00e_4631:
    ld a, [$cb4a]
    or a
    jp nz, Jump_00e_470e

    ld a, [$cc1b]
    cp $00
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    jr nz, jr_00e_464b

    ld a, [$cc75]
    or a
    jr nz, jr_00e_464b

    ret

; Something with interacting with the Sprites, but I'm not completely sure
jr_00e_464b:
    ld a, [wRightOrUpSideFacingTileID]
    cp $08
    jp z, Jump_00e_4712

    cp $09
    jp z, Jump_00e_471d

    cp $0a
    jp z, Jump_00e_4728

    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp z, Jump_00e_48c7
    cp SICKLE
    jr z, jr_00e_46c8
    cp HOE
    jr z, jr_00e_46c8
    cp HAMMER
    jr z, jr_00e_4694
    cp AX
    jr z, jr_00e_46c8
    cp SUPER_SICKLE
    jr z, jr_00e_46c8
    cp SUPER_HOE
    jr z, jr_00e_46c8
    cp SUPER_HAMMER
    jr z, jr_00e_4694
    cp SUPER_AX
    jr z, jr_00e_46c8
    cp PICK_AX
    jr z, jr_00e_46f0
    ret


jr_00e_4694:
    ld a, [$cc75]
    or a
    ret z

    ld a, [$ba0d]
    bit 0, a
    jr z, ManageSpriteAnger

    bit 2, a
    jr nz, ManageSpriteAnger

    bit 1, a
    jr nz, ManageSpriteAnger

    ld a, [$cc79]
    cp $00
    jr nz, ManageSpriteAnger

    ld a, [sSpriteTotalHappiness]
    add $0a
    cp $64
    jr c, jr_00e_46ba

    ld a, $63

jr_00e_46ba:
    ld [sSpriteTotalHappiness], a
    ld a, $0a
    call Call_000_0f47
    ld a, $01
    ld [$ba0e], a
    ret

jr_00e_46c8:
    ld a, [$cc75]
    or a
    jr nz, ManageSpriteAnger
    ret

ManageSpriteAnger:
    ld a, $01
    ld [$cc6e], a
    ld a, [sSpriteDailyAnger]
    inc a
    ld [sSpriteDailyAnger], a
    cp $05
    ret c

    xor a
    ld [sSpriteDailyAnger], a
    ld a, [sSpriteTotalHappiness]
    sub $0a
    ld [sSpriteTotalHappiness], a
    ret nc

    xor a
    ld [sSpriteTotalHappiness], a
    ret

jr_00e_46f0:
    ld a, [$cc75]
    or a
    jr nz, ManageSpriteAnger

    ld a, [wRightOrUpSideFacingTileID]
    cp $62
    jp z, Jump_00e_4862

    cp $63
    jp z, Jump_00e_4880

    cp $64
    jp z, Jump_00e_488d

    cp $65
    jp z, Jump_00e_489a

    ret


Jump_00e_470e:
    call Call_00e_4954
    ret


Jump_00e_4712:
    ld a, $ae
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_471d:
    ld a, $af
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_4728:
    ld a, $b0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_4733:
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_00e_4741

    ld a, [$ba0d]
    or a
    jp nz, Jump_00e_47d2

Jump_00e_4741:
jr_00e_4741:
    ld a, [sSpriteTotalHappiness]
    cp $0a
    jp nc, Jump_00e_47fd

Jump_00e_4749:
    ld a, [sSpriteDailyHappiness]
    set 0, a
    ld [sSpriteDailyHappiness], a
    call Call_00e_5113
    ld a, [sSpriteEventFlags]
    bit EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    jr nz, jr_00e_4770

    set EVENT_TALKED_TO_SPRITE_FIRST_TIME, a
    ld [sSpriteEventFlags], a
    ld a, $01
    ld [sSpriteFirstInteractionFlag], a
    ld a, $b1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

jr_00e_4770:
    ld a, [$cc79]
    cp $02
    jr z, jr_00e_4798

    cp $03
    jr z, jr_00e_47b5

    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_478d

    ld a, $b2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_478d:
    ld a, $b4
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_4798:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_47aa

    ld a, $b5
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_47aa:
    ld a, $b7
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_47b5:
    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_47c7

    ld a, $b9
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_47c7:
    ld a, $bb
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_47d2:
    ld a, [$cc79]
    cp $00
    jp nz, Jump_00e_4741

    ld a, [$ba0d]
    bit 1, a
    jp nz, Jump_00e_47ed

    ld a, $e0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_47ed:
    ld a, $e1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $04
    call Call_000_18e6
    ret


Jump_00e_47fd:
    ld a, [sSpriteEventFlags]
    bit EVENT_SPRITE_GAVE_BERRY, a
    jr nz, jr_00e_4817

    set EVENT_SPRITE_GAVE_BERRY, a
    ld [sSpriteEventFlags], a
    ld a, $c2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_00e_4749

    ret

jr_00e_4817:
    ld a, [sSpriteTotalHappiness]
    cp $1e
    jp c, Jump_00e_4749

    ld a, [sSpriteEventFlags]
    bit 7, a
    jr nz, jr_00e_4839

    set 7, a
    ld [sSpriteEventFlags], a
    ld a, $bf
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_00e_4749

    ret

jr_00e_4839:
    ld a, [sSpriteTotalHappiness]
    cp $32
    jp c, Jump_00e_4749

    ld a, [sSpriteEventFlags]
    bit 6, a
    jp nz, Jump_00e_4749

    set 6, a
    ld [sSpriteEventFlags], a
    ld a, $c0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_00e_4749

    ret

Jump_00e_485c:
    ld a, [$c912]
    or a
    ret nz

    ret

Jump_00e_4862:
    ld a, $00
    ld [$cc97], a

jr_00e_4867:
    ld hl, $4001
    ld a, $0f
    call BankSwitchCallHL
    ld hl, $410d
    ld a, $0f
    call BankSwitchCallHL
    ld a, [$cc96]
    add $27
    ld [$cc96], a
    ret


Jump_00e_4880:
    ld a, [wPlayerFacingDirection]
    cp $03
    ret nz

    ld a, $01
    ld [$cc97], a
    jr jr_00e_4867

Jump_00e_488d:
    ld a, [wPlayerFacingDirection]
    cp $03
    ret nz

    ld a, $02
    ld [$cc97], a
    jr jr_00e_4867

Jump_00e_489a:
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


Jump_00e_48c7:
    ld a, [wRightOrUpSideFacingTileID]
    cp $26
    jr z, jr_00e_48d6

    ld a, [$cc75]
    or a
    jp nz, Jump_00e_4733

    ret


jr_00e_48d6:
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $3c
    call $16d1
    ld a, $30
    ld [$cb4a], a
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $07
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld bc, $8103
    ld hl, $d800
    ld a, [$c606]
    cp $78
    jr c, jr_00e_491b

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


jr_00e_491b:
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
    ld [$c912], a
    ld a, $09
    ld [$cc16], a
    xor a
    call Call_00e_537f
    ret


Call_00e_4954:
    ld a, [$cc75]
    or a
    call nz, Call_00e_4968
    ld a, [$cb4a]
    cp $30
    jr z, jr_00e_49a5

    cp $32
    jp z, Jump_00e_4a29

    ret


Call_00e_4968:
    ld a, [$cb4a]
    cp $30
    jr z, jr_00e_4978

    cp $01
    jr z, jr_00e_49a4

    cp $32
    jr z, jr_00e_4978

    ret


jr_00e_4978:
    ld a, [sSpriteTotalHappiness]
    cp $3c
    jr nc, jr_00e_498a

    ld a, $bc
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_498a:
    cp $5a
    jr nc, jr_00e_4999

    ld a, $ee
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_4999:
    ld a, $ef
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_49a4:
    ret


jr_00e_49a5:
    ld a, [$cc75]
    or a
    jr nz, jr_00e_49d6

    call Call_00e_52dd
    ld a, [de]
    cp $0e
    jr z, jr_00e_49fd

    cp $01
    jp z, Jump_00e_4a06

    cp $41
    jp z, Jump_00e_4a06

    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld a, $3d
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_00e_49d6:
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $3c
    call Call_000_16d1
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, [sSpriteDailyHappiness]
    set 1, a
    ld [sSpriteDailyHappiness], a
    call Call_00e_5113
    ret


jr_00e_49fd:
    ld a, $3c
    call $16d1
    jp Jump_00e_4af9


    ret


Jump_00e_4a06:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


Jump_00e_4a29:
    ld a, [$cc75]
    or a
    jr nz, jr_00e_4a6d

    call Call_00e_52dd
    ld a, [de]
    cp $0e
    jr z, jr_00e_4aa7

    cp $01
    jp z, Jump_00e_4ac3

    cp $41
    jp z, Jump_00e_4ac3

    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $41
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
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


jr_00e_4a6d:
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
    ld [$c912], a
    ld a, [sSpriteDailyHappiness]
    set 1, a
    ld [sSpriteDailyHappiness], a
    call Call_00e_5113
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


jr_00e_4aa7:
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
    jp Jump_00e_4af9


    ret


Jump_00e_4ac3:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
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


Jump_00e_4af9:
    call Call_000_1cff
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, $0a
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Call_00e_4b1b:
    ld a, [$cc79]
    cp $01
    jr z, jr_00e_4b43

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
    ld de, $9800
    add hl, de
    ld a, h
    ld [$cc92], a
    ld a, l
    ld [$cc93], a
    ret


jr_00e_4b43:
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
    ld de, $9800
    add hl, de
    ld a, h
    ld [$cc92], a
    ld a, l
    ld [$cc93], a
    ret


Call_00e_4b65:
    ld a, [$cc16]
    rst $00
    add c
    ld c, e
    add d
    ld c, e
    jp $e34b


    ld c, e
    ld a, l
    ld c, h
    ret nc

    ld c, h
    inc h
    ld c, l
    adc a
    ld c, l
    db $d3
    ld c, l
    push af
    ld c, l
    ld b, a
    ld c, [hl]
    add h
    ld c, [hl]
    ret


    ld a, [$cc17]
    cp $04
    jr c, jr_00e_4bbb

    sub $04
    ld hl, $4ebf
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

Jump_00e_4ba0:
jr_00e_4ba0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4ba0

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $07
    jr nz, jr_00e_4bbb

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


Jump_00e_4bbb:
jr_00e_4bbb:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $04
    jr c, jr_00e_4bbb

    sub $04
    ld hl, $4edf
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
    jr jr_00e_4ba0

    ld a, [$cc17]
    cp $32
    jr c, jr_00e_4c35

    sub $32
    ld hl, $4fdd
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
    ld hl, $4f1f
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_00e_4c1a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4c1a

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jr nz, jr_00e_4c35

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


Jump_00e_4c35:
jr_00e_4c35:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    cp $32
    ret nz

    ld a, $76
    call $16d1
    ld a, $76
    call Call_00e_549c
    ld hl, $5299
    ld a, [$cc94]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c646], a
    ld hl, $52a9
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
    jr c, jr_00e_4c35

    sub $32
    ld hl, $4fdd
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
    ld hl, $4f33
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_00e_4cb4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4cb4

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jp nz, Jump_00e_4c35

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


    ld a, [$cc17]
    cp $32
    jp c, Jump_00e_4c35

    sub $32
    ld hl, $4fdd
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
    ld hl, $4f47
    ld a, [$cc17]
    sub $32
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_00e_4d08:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4d08

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $36
    jp nz, Jump_00e_4c35

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


    ld a, [$cc17]
    cp $32
    jr c, jr_00e_4d5d

    ld hl, $4f5b
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

jr_00e_4d42:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4d42

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $34
    jr nz, jr_00e_4d5d

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_00e_4d5d:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    cp $32
    ret nz

    ld a, $77
    call $16d1
    ld a, $77
    call Call_00e_549c
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


    ld hl, $4f6d
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

jr_00e_4dad:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4dad

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $02
    jr nz, jr_00e_4dcb

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ld [$cc18], a
    ret


jr_00e_4dcb:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld a, [$cc17]
    cp $04
    jp c, Jump_00e_4bbb

    sub $04
    ld hl, $4eff
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
    jp Jump_00e_4ba0


    ld a, [$cc17]
    ld hl, $4fdd
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
    ld hl, $4f95
    ld a, [$cc17]
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_00e_4e24:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4e24

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_00e_4e3f

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_00e_4e3f:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $4f9d
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

jr_00e_4e5f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4e5f

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_00e_4e7c

    xor a
    ld [$cc17], a
    ld a, $0b
    ld [$cc16], a
    ret


jr_00e_4e7c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    ret


    ld hl, $4fbd
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

jr_00e_4e9c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_4e9c

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_00e_4eb7

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ret


jr_00e_4eb7:
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

    jr nz, jr_00e_4eef

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

    jr nz, jr_00e_4eff

    nop
    sbc d
    call nc, $1004
    ld de, $1110
    nop
    sbc d
    db $f4
    inc b
    jr nz, @+$23

    jr nz, jr_00e_4f0f

    nop

jr_00e_4eef:
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

    jr nz, jr_00e_4f1f

    nop

jr_00e_4eff:
    sbc c
    adc h
    inc b
    db $10
    ld de, $1110
    nop
    sbc c
    xor h
    inc b
    jr nz, jr_00e_4f2d

    jr nz, @+$23

    nop

jr_00e_4f0f:
    sbc c
    call z, $1004
    ld de, $1110
    nop
    sbc c
    db $ec
    inc b
    jr nz, @+$23

    jr nz, jr_00e_4f3f

    nop

jr_00e_4f1f:
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

jr_00e_4f2d:
    ld de, $0200
    jr nz, jr_00e_4f53

    nop
    ld [bc], a
    ld [$0009], sp
    ld [bc], a
    jr jr_00e_4f53

    nop
    ld [bc], a
    jr z, jr_00e_4f67

    nop

jr_00e_4f3f:
    ld [bc], a
    jr c, jr_00e_4f7b

    nop
    ld [bc], a
    jr nz, jr_00e_4f67

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

jr_00e_4f53:
    ld [bc], a
    db $10
    ld de, $0200
    jr nz, jr_00e_4f7b

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

jr_00e_4f67:
    sbc b
    ld l, [hl]
    ld [bc], a
    add $c7
    nop
    ld [hl], c
    ld c, a
    add e
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

jr_00e_4f7b:
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
    jr nz, jr_00e_4fbd

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

jr_00e_4fbd:
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
    jr nz, jr_00e_4fe1

jr_00e_4fe1:
    ld b, b
    nop
    ld h, b
    nop
    add b
    nop

Jump_00e_4fe7:
    call Call_00e_4ffc
    ld a, [$c603]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_25ce
    ret


Call_00e_4ffc:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00e_5016

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00e_501a

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00e_501e

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00e_5022

    jr jr_00e_5027

jr_00e_5016:
    ld a, $00
    jr jr_00e_5024

jr_00e_501a:
    ld a, $01
    jr jr_00e_5024

jr_00e_501e:
    ld a, $02
    jr jr_00e_5024

jr_00e_5022:
    ld a, $03

jr_00e_5024:
    ld [wPlayerFacingDirection], a

jr_00e_5027:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_00e_506e

    cp $01
    jr z, jr_00e_50a5

    cp $02
    jp z, Jump_00e_50dc

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5067

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_5067:
    call Call_00e_441d
    call Call_00e_441d
    ret


jr_00e_506e:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_509e

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_509e:
    call Call_00e_43eb
    call Call_00e_43eb
    ret


jr_00e_50a5:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_50d5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_43c5

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43d8

    ret


jr_00e_50d5:
    call Call_00e_444b
    call Call_00e_444b
    ret


Jump_00e_50dc:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_510c

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_43c5

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43d8

    ret


jr_00e_510c:
    call Call_00e_447e
    call Call_00e_447e
    ret


Call_00e_5113:
    ld a, [wPlayerFacingDirection]
    ld hl, $513e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c82d], a
    ld a, [$ba0d]
    bit 2, a
    jr nz, jr_00e_5138

    ld a, [$cc79]
    or a
    jr nz, jr_00e_5138

    ld a, [$ba0d]
    bit 0, a
    jr z, jr_00e_5138

    ret


jr_00e_5138:
    ld a, $00
    call Call_000_18e6
    ret


    inc bc
    ld [bc], a
    ld bc, $2100
    xor e
    ld d, c
    ld a, [$cc7a]
    call LoadWordFromTableHL
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld hl, $51f3
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$b899]
    cp $01
    jr nz, jr_00e_517b

    ld hl, $5fb8
    ld a, $0d
    call BankSwitchCallHL
    ld hl, $5203
    ld de, $c880
    ld b, $10
    call CopyHLtoDE
    call Call_00e_5396

jr_00e_517b:
    ld a, [$cc7a]
    rst $00
    add a
    ld d, c
    sub b
    ld d, c
    sbc c
    ld d, c
    and d
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


    or e
    ld d, c
    jp $d351


    ld d, c
    db $e3
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
    jr nc, jr_00e_51dd

jr_00e_51dd:
    ld d, b
    jr nc, jr_00e_51e0

jr_00e_51e0:
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0020], sp
    or b
    nop
    jr jr_00e_523f

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
    jr nz, jr_00e_5200

jr_00e_5200:
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
    jr nz, jr_00e_5210

jr_00e_5210:
    nop
    nop
    nop

Call_00e_5213:
    ld hl, vBGMap1
    ld de, $5221
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

jr_00e_523f:
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

Call_00e_5285:
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
    jr c, jr_00e_52e6

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
    jr nz, jr_00e_52dd

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

Call_00e_52b9:
    ld hl, $606e
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_52c2:
    ld hl, $6122
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_52cb:
    ld hl, $617c
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_52d4:
    ld hl, $60c8
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_52dd:
jr_00e_52dd:
    ld a, [wPlayerFacingDirection]
    rst $00
    jp hl


    ld d, d
    ldh a, [c]
    ld d, d
    ei

jr_00e_52e6:
    ld d, d
    inc b
    ld d, e
    ld hl, $711f
    ld a, $12
    call BankSwitchCallHL
    ret


    ld hl, $71b3
    ld a, $12
    call BankSwitchCallHL
    ret


    ld hl, $7249
    ld a, $12
    call BankSwitchCallHL
    ret


    ld hl, $72df
    ld a, $12
    call BankSwitchCallHL
    ret


Call_00e_530d:
    ld hl, $6279
    ld a, $0f
    call BankSwitchCallHL
    ret


    ld a, [$c912]
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
    jr z, jr_00e_533b

    cp $02
    jr z, jr_00e_533b

    ld hl, $78e7
    ld a, $01
    call BankSwitchCallHL
    ret


jr_00e_533b:
    xor a
    ld [$cb90], a
    ld hl, $5fc1
    ld a, $02
    call BankSwitchCallHL
    ld a, [$cb8d]
    cp $ff
    ret z

    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_00e_5378

    ld a, [$cb8d]
    cp $01
    jr nz, jr_00e_536e

    ld a, $3c
    ld [$c912], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_00e_536e:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    pop hl
    ret


jr_00e_5378:
    ld a, $20
    call Call_000_151d
    pop hl
    ret


Call_00e_537f:
    ld hl, $4001
    ld a, $0f
    call BankSwitchCallHL
    ld a, [$cb35]
    ld h, a
    ld a, [$cb36]
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_00e_4b1b
    ret


Call_00e_5396:
    ld hl, $6254
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_539f:
    ld hl, $6267
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_00e_53a8:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc98]
    rst $00
    cp e
    ld d, e
    db $dd
    ld d, e
    xor $53
    ld a, [$c608]
    cp $a8
    jr z, jr_00e_53cd

    ld a, $40
    ldh [$ff8a], a
    xor a
    ldh [$ff8b], a
    call Call_00e_424f
    ret


jr_00e_53cd:
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

    ld a, $12
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


Call_00e_541e:
    ld a, [$ba0d]
    bit 2, a
    ret nz

    ld a, [$cc79]
    or a
    ret nz

    ld a, [$ba0d]
    bit 1, a
    jr z, jr_00e_543b

    ld a, [$cb56]
    or a
    ret nz

    ld a, $03
    call Call_000_18e6
    ret


jr_00e_543b:
    ld a, [$ba0e]
    cp $01
    ret nz

    ld a, [$c912]
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


Call_00e_5468:
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc96]
    or a
    ret nz

    ld a, [$cc6e]
    or a
    ret nz

    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    ret


Call_00e_5480:
    ld a, [$cc6e]
    or a
    ret z

    ld a, [$c912]
    or a
    ret nz

    call Call_00e_5113
    ld a, $be
    call Call_000_3f52
    xor a
    ld [$cc6e], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_00e_549c:
    cp $76
    jr z, jr_00e_54b0

    cp $77
    jr z, jr_00e_54bb

    cp $78
    jr z, jr_00e_54c6

    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ret


jr_00e_54b0:
    ld a, $01
    ld [$cc6c], a
    ld a, $26
    ld [$cc6d], a
    ret


jr_00e_54bb:
    ld a, $02
    ld [$cc6c], a
    ld a, $43
    ld [$cc6d], a
    ret


jr_00e_54c6:
    ld a, $03
    ld [$cc6c], a
    ld a, $17
    ld [$cc6d], a
    ret


Call_00e_54d1:
    ld a, [$cc6d]
    or a
    jr z, jr_00e_54e7

    dec a
    ld [$cc6d], a
    ld a, [$cc6c]
    rst $00
    rst $20
    ld d, h
    rst $28
    ld d, h
    rst $30
    ld d, h
    rst $38
    ld d, h

jr_00e_54e7:
    xor a
    ld [$cc6c], a
    ld [$cc6d], a
    ret


    ld a, [$cc6d]
    cp $18
    jr z, jr_00e_5507

    ret


    ld a, [$cc6d]
    cp $39
    jr z, jr_00e_5507

    ret


    ld a, [$cc6d]
    cp $10
    jr z, jr_00e_5507

    ret


jr_00e_5507:
    ld a, $58
    call Call_000_25ce
    ret


    push hl
    push af
    ld l, $6e
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
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
    ld hl, $73de
    ld c, $0a
    ld de, $8800
    call Call_000_31a0
    ld hl, $6c01
    ld c, $0a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $0a
    ld de, $8000
    call Call_000_31a0
    ld hl, $56a9
    ld c, $0a
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
    call Call_00e_5ad2
    call Call_00e_5213
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
    ld [$cb5a], a
    ld [$cb5b], a
    ld a, [$cc6f]
    or a
    jr nz, jr_00e_55ee

    call Call_000_3cf8

jr_00e_55ee:
    call Call_00e_560d
    call Call_00e_56a5
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5468
    call Call_00e_41a1
    call $1e32
    call Call_00e_4b65
    call Call_00e_44aa
    call Call_00e_54d1
    ret


Call_00e_560d:
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

    call Call_00e_4202
    call Call_000_0e54
    call Call_00e_4526
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_00e_5671

    ld a, [$cc6f]
    or a
    jr nz, jr_00e_5677

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_00e_4577

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_00e_5742

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_00e_59be

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00e_57fc

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00e_5895

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00e_582d

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00e_585e

    ld a, [$c912]
    or a
    ret nz

jr_00e_5671:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_5677:
    ldh a, [$ff8b]
    and $01
    jp nz, Jump_00e_5771

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00e_5794

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00e_57b1

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00e_57c8

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00e_57e5

    ld a, [$c912]
    or a
    ret nz

    ld a, $21
    call RST_TableJumpBankSwitch
    ret


Call_00e_56a5:
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc70]
    or a
    ret z

    ld a, [$c912]
    or a
    jr z, jr_00e_5719

    ld a, [$cc71]
    inc a
    ld [$cc71], a
    ld a, [$cc70]
    cp $01
    jr nz, jr_00e_56ee

    ld a, [$cc71]
    cp $1f
    ret c

    ld a, [$cc71]
    bit 0, a
    ret z

    ld a, [$c606]
    cp $90
    jr nc, jr_00e_56e7

    cp $58
    jr c, jr_00e_56e7

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_00e_56e2:
    ld hl, $c606
    inc [hl]
    ret


jr_00e_56e7:
    ld hl, $c60a
    inc [hl]
    jr jr_00e_56e2

    ret


jr_00e_56ee:
    ld a, [$cc71]
    cp $1f
    ret c

    ld a, [$cc71]
    bit 0, a
    ret z

    ld a, [$c606]
    cp $91
    jr nc, jr_00e_5712

    cp $59
    jr c, jr_00e_5712

    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_00e_570d:
    ld hl, $c606
    dec [hl]
    ret


jr_00e_5712:
    ld hl, $c60a
    dec [hl]
    jr jr_00e_570d

    ret


jr_00e_5719:
    xor a
    ld [$cc70], a
    ld [$cc71], a
    ld a, [$cc6f]
    or a
    ret nz

    ld a, [sNumPowerBerriesEaten]
    ld hl, $5737
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

Jump_00e_5742:
    ld a, [$cb4a]
    or a
    jr nz, jr_00e_574f

    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    jr z, jr_00e_5753

jr_00e_574f:
    call Call_00e_457b
    ret


jr_00e_5753:
    ld a, $01
    ld [$cc6f], a
    ld a, $33
    call Call_000_25ce
    ld a, $22
    call RST_TableJumpBankSwitch
    ld a, $3d
    ld [$c912], a
    ld a, $01
    ld [$cc70], a
    xor a
    ld [$cc71], a
    ret


Jump_00e_5771:
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
    ld [$c912], a
    ld a, $02
    ld [$cc70], a
    xor a
    ld [$cc71], a
    ret


Jump_00e_5794:
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

    call Call_00e_5912
    ret


Jump_00e_57b1:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5937
    ret


Jump_00e_57c8:
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

    call Call_00e_595f
    ret


Jump_00e_57e5:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $20
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5992
    ret


Jump_00e_57fc:
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
    jr z, jr_00e_5829

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58c6

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58d9

    ret


jr_00e_5829:
    call Call_00e_5912
    ret


Jump_00e_582d:
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
    jr z, jr_00e_585a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58ec

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58ff

    ret


jr_00e_585a:
    call Call_00e_595f
    ret


Jump_00e_585e:
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
    jr z, jr_00e_588b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58ec

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58ff

    ret


jr_00e_588b:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    ret z

    call Call_00e_5992
    ret


Jump_00e_5895:
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
    jr z, jr_00e_58c2

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58c6

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58d9

    ret


jr_00e_58c2:
    call Call_00e_5937
    ret


Jump_00e_58c6:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_595f
    ret


Jump_00e_58d9:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5992
    ret


Jump_00e_58ec:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5937
    ret


Jump_00e_58ff:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5912
    ret


Call_00e_5912:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $60
    jr nc, jr_00e_5930

    cp $50
    jr c, jr_00e_5930

    jr jr_00e_5923

jr_00e_5923:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_00e_592b:
    ld hl, $c608
    inc [hl]
    ret


jr_00e_5930:
    ld hl, $c60b
    inc [hl]
    jr jr_00e_592b

    ret


Call_00e_5937:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $61
    jr nc, jr_00e_5958

    ld a, [$c608]
    cp $51
    jr c, jr_00e_5958

    jr jr_00e_594b

jr_00e_594b:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_00e_5953:
    ld hl, $c608
    dec [hl]
    ret


jr_00e_5958:
    ld hl, $c60b
    dec [hl]
    jr jr_00e_5953

    ret


Call_00e_595f:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$c606]
    cp $91
    jr nc, jr_00e_598b

    ld a, [$c607]
    cp $00
    jr nz, jr_00e_597e

    ld a, [$c606]
    cp $59
    jr c, jr_00e_598b

jr_00e_597e:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_00e_5986:
    ld hl, $c606
    dec [hl]
    ret


jr_00e_598b:
    ld hl, $c60a
    dec [hl]
    jr jr_00e_5986

    ret


Call_00e_5992:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $d8
    ret nc

    ld a, [$c606]
    cp $90
    jr nc, jr_00e_59b7

    ld a, [$c606]
    cp $58
    jr c, jr_00e_59b7

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_00e_59b2:
    ld hl, $c606
    inc [hl]
    ret


jr_00e_59b7:
    ld hl, $c60a
    inc [hl]
    jr jr_00e_59b2

    ret


Jump_00e_59be:
    call Call_00e_59d5
    ld a, [$c603]
    and $01
    jr z, jr_00e_59d4

    ld a, [$c605]
    cp $08
    jr nz, jr_00e_59d4

    ld a, $34
    call Call_000_25ce

jr_00e_59d4:
    ret


Call_00e_59d5:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00e_59ef

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00e_59f3

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00e_59f7

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00e_59fb

    jr jr_00e_5a00

jr_00e_59ef:
    ld a, $00
    jr jr_00e_59fd

jr_00e_59f3:
    ld a, $01
    jr jr_00e_59fd

jr_00e_59f7:
    ld a, $02
    jr jr_00e_59fd

jr_00e_59fb:
    ld a, $03

jr_00e_59fd:
    ld [wPlayerFacingDirection], a

jr_00e_5a00:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_00e_5a3f

    cp $01
    jr z, jr_00e_5a6e

    cp $02
    jp z, Jump_00e_5a9d

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5a38

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58c6

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58d9

    ret


jr_00e_5a38:
    call Call_00e_5937
    call Call_00e_5937
    ret


jr_00e_5a3f:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5a67

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58c6

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58d9

    ret


jr_00e_5a67:
    call Call_00e_5912
    call Call_00e_5912
    ret


jr_00e_5a6e:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5a96

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58ec

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58ff

    ret


jr_00e_5a96:
    call Call_00e_595f
    call Call_00e_595f
    ret


Jump_00e_5a9d:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5ac5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_58ec

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_58ff

    ret


jr_00e_5ac5:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    ret z

    call Call_00e_5992
    call Call_00e_5992
    ret


Call_00e_5ad2:
    ld hl, $5ae6
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
    ld bc, $7c00
    ld c, [hl]
    pop hl
    nop
    call nz, $7f66
    ld b, a
    push hl
    push af
    ld l, $89
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $5af6
    call SyncLoadSpritePalette5
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
    ld hl, $668d
    ld c, $0a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5eb8
    ld c, $0a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $0a
    ld de, $8000
    call Call_000_31a0
    ld hl, $57ed
    ld c, $0a
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
    call Call_00e_616c
    call Call_00e_5213
    call Call_000_12ad
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $00
    call Call_000_18e6
    ld hl, $67df
    ld a, $0e
    call BankSwitchCallHL
    ld hl, $74f4
    ld a, $0e
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
    jr z, jr_00e_5c05

    ld a, [$cb56]
    or a
    jr nz, jr_00e_5c05

    ld a, $50
    ld [$cb8f], a
    xor a
    ld [$cc9a], a

jr_00e_5c05:
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    ld a, [$cc72]
    or a
    jr nz, jr_00e_5c15

    call Call_000_3cf8

jr_00e_5c15:
    call Call_00e_5480
    call Call_00e_5c3a
    call Call_00e_5e73
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5468
    call Call_00e_5285
    call Call_00e_44aa
    call Call_00e_54d1
    call Call_00e_41a1
    call $1e32
    call Call_00e_4b65
    ret


Call_00e_5c3a:
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
    jr nz, jr_00e_5c5a

    ld a, $c1
    call Call_000_3f52
    ld a, $05
    ld [$cc98], a
    ret


jr_00e_5c5a:
    ld a, [$cc98]
    or a
    jr nz, jr_00e_5cbc

    ld a, [wTextID]
    cp $ff
    jr nz, jr_00e_5cb6

    call Call_00e_4202
    call Call_000_0e54
    call Call_00e_4526
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_00e_5cb6

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_00e_5f95

    ld a, [$cc72]
    or a
    ret nz

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_00e_603e

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_00e_4577

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00e_5cfc

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00e_5da7

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00e_5d35

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00e_5d6e

    ld a, [$c912]
    or a
    ret nz

jr_00e_5cb6:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_5cbc:
    ld a, [$cc98]
    cp $01
    jr nz, jr_00e_5ce3

    ld a, [$c912]
    or a
    jr nz, jr_00e_5cd4

    ld a, $32
    call $16d1
    ld a, $02
    ld [$cc98], a
    ret


jr_00e_5cd4:
    ld a, [$c912]
    dec a
    ld [$c912], a
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_00e_5ce3:
    ld a, [$cc98]
    cp $02
    ret nz

    ld a, [$c640]
    or a
    ret nz

    call Call_00e_530d
    ld a, $44
    call Call_000_25cb
    ld a, $03
    ld [$cc98], a
    ret


Jump_00e_5cfc:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5d31

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_5d31:
    call Call_00e_5e06
    ret


Jump_00e_5d35:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5d6a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_5de0

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_5df3

    ret


jr_00e_5d6a:
    call Call_00e_444b
    ret


Jump_00e_5d6e:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5da3

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_5de0

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_5df3

    ret


jr_00e_5da3:
    call Call_00e_447e
    ret


Jump_00e_5da7:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_5ddc

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_5ddc:
    call Call_00e_5e33
    ret


Jump_00e_5de0:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5e33
    ret


Jump_00e_5df3:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_5e06
    ret


Call_00e_5e06:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $c3
    jr nc, jr_00e_5e32

    ld a, [$c608]
    cp $b0
    jr nc, jr_00e_5e2b

    cp $50
    jr c, jr_00e_5e2b

    jr jr_00e_5e1e

jr_00e_5e1e:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_00e_5e26:
    ld hl, $c608
    inc [hl]
    ret


jr_00e_5e2b:
    ld hl, $c60b
    inc [hl]
    jr jr_00e_5e26

    ret


jr_00e_5e32:
    ret


Call_00e_5e33:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $b1
    jr nc, jr_00e_5e5a

    ld a, [$c608]
    cp $51
    jr c, jr_00e_5e5a

    jr jr_00e_5e4d

jr_00e_5e4d:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_00e_5e55:
    ld hl, $c608
    dec [hl]
    ret


jr_00e_5e5a:
    ld hl, $c60b
    dec [hl]
    jr jr_00e_5e55

    ret


jr_00e_5e61:
    ld a, [wPlayerSpriteID]
    cp $86
    ret nz

    ld a, [$c912]
    cp $01
    ret nz

    ld a, $32
    call $16d1
    ret


Call_00e_5e73:
    ld a, [$cc72]
    or a
    ret z

    cp $02
    jr z, jr_00e_5ec5

    cp $03
    jr z, jr_00e_5edd

    cp $04
    jp z, Jump_00e_5f0b

    ld a, [$c912]
    or a
    jr nz, jr_00e_5e61

    ld a, $27
    call RST_TableJumpBankSwitch
    call GetNextRandomByte
    ldh a, [$ff9c]
    cp $04
    ret nc

    ld a, $03
    ld [$cc72], a
    call GetNextRandomByte
    ldh a, [$ff9c]
    ld l, a
    ld a, $00
    ld h, a
    ld a, $0a
    call DivideHLByA
    cp $03
    jr c, jr_00e_5eb9

    cp $06
    jr c, jr_00e_5ebf

    ld a, $01
    ld [$cc73], a
    ret


jr_00e_5eb9:
    ld a, $02
    ld [$cc73], a
    ret


jr_00e_5ebf:
    ld a, $03
    ld [$cc73], a
    ret


jr_00e_5ec5:
    ld a, $26
    call RST_TableJumpBankSwitch
    ld a, $25
    ld [$c912], a
    ld a, [$cc73]
    or a
    jr nz, jr_00e_5f01

    xor a
    ld [$cc72], a
    ld [$cc74], a
    ret


jr_00e_5edd:
    ld a, [$cc74]
    or a
    jr nz, jr_00e_5eee

    ld a, $25
    call RST_TableJumpBankSwitch
    ld a, $80
    ld [$cc74], a
    ret


jr_00e_5eee:
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


jr_00e_5f01:
    ld a, $04
    ld [$cc72], a
    xor a
    ld [$cc74], a
    ret


Jump_00e_5f0b:
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc73]
    rst $00
    inc e
    ld e, a
    add hl, hl
    ld e, a
    ld h, a
    ld e, a
    ld a, [hl]
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
    ld [$c912], a
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


Jump_00e_5f95:
    ld a, [$cb4a]
    or a
    jr nz, jr_00e_5ffd

    ld a, [wPlayerFacingDirection]
    cp $02
    jr nz, jr_00e_5ffd

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
    jr nz, jr_00e_5ffd

    ld a, [$cb46]
    cp $42
    jr nz, jr_00e_5ffd

    ld a, [wRightOrUpSideFacingTileID]
    cp $01
    jr nz, jr_00e_5ffd

    ld a, [$cc72]
    or a
    jr nz, jr_00e_6038

    ld a, [sPlayerEnergy]
    or a
    jr z, jr_00e_5ff2

    ld a, $86
    call Call_000_151d
    ld a, $18
    ld [$c912], a
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cc72], a
    ld b, $02
    call CheckForNoEnergyAnimation
    ld b, $03
    call CheckForNoEnergyAnimation
    ret


jr_00e_5ff2:
    ld a, $01
    ld [$c912], a
    ld b, $00
    call CheckForNoEnergyAnimation
    ret


jr_00e_5ffd:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp AX
    jr nz, jr_00e_6034

    ld a, [wPlayerFacingDirection]
    cp $03
    jr nz, jr_00e_6034

    call Call_000_191a
    ld a, [$cb46]
    cp $43
    jr nz, jr_00e_6034

    ld a, [sSpriteEventFlags]
    bit 5, a
    jr nz, jr_00e_6034

    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    ld a, $01
    ld [$cc98], a
    ret


jr_00e_6034:
    call Call_00e_457b
    ret


jr_00e_6038:
    ld a, $02
    ld [$cc72], a
    ret


Jump_00e_603e:
    call Call_00e_6055
    ld a, [$c603]
    and $01
    jr z, jr_00e_6054

    ld a, [$c605]
    cp $08
    jr nz, jr_00e_6054

    ld a, $34
    call Call_000_25ce

jr_00e_6054:
    ret


Call_00e_6055:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00e_606f

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00e_6073

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00e_6077

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00e_607b

    jr jr_00e_6080

jr_00e_606f:
    ld a, $00
    jr jr_00e_607d

jr_00e_6073:
    ld a, $01
    jr jr_00e_607d

jr_00e_6077:
    ld a, $02
    jr jr_00e_607d

jr_00e_607b:
    ld a, $03

jr_00e_607d:
    ld [wPlayerFacingDirection], a

jr_00e_6080:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_00e_60c7

    cp $01
    jr z, jr_00e_60fe

    cp $02
    jp z, Jump_00e_6135

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_60c0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_60c0:
    call Call_00e_5e33
    call Call_00e_5e33
    ret


jr_00e_60c7:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_60f7

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_439f

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_43b2

    ret


jr_00e_60f7:
    call Call_00e_5e06
    call Call_00e_5e06
    ret


jr_00e_60fe:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_612e

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_5de0

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_5df3

    ret


jr_00e_612e:
    call Call_00e_444b
    call Call_00e_444b
    ret


Jump_00e_6135:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_6165

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_5de0

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_5df3

    ret


jr_00e_6165:
    call Call_00e_447e
    call Call_00e_447e
    ret


Call_00e_616c:
    ld hl, $618b
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $28
    ldh [$ff93], a
    ld a, $60
    ldh [$ff91], a
    ld hl, $619b
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
    push hl
    push af
    ld l, $a4
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
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
    ld hl, $668d
    ld c, $0a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5eb8
    ld c, $0a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $0a
    ld de, $8000
    call Call_000_31a0
    ld hl, $79ea
    ld c, $17
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
    call Call_00e_6648
    call Call_00e_5213
    call Call_000_12c9
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $00
    call Call_000_18e6
    ld hl, $b9dc
    ld de, $cc7c
    ld b, $16
    call CopyHLtoDE
    ld hl, $67f8
    ld a, $0e
    call BankSwitchCallHL
    ld hl, $750a
    ld a, $0e
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
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3cf8
    call Call_00e_5480
    call Call_00e_62d9
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5285
    call Call_00e_5468
    call Call_00e_41a1
    call $1e32
    call Call_00e_4b65
    call Call_00e_62c8
    call Call_00e_44aa
    call Call_00e_54d1
    ret


Call_00e_62c8:
    ld a, [$ba0b]
    cp $ff
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $65
    ret z

    xor a
    ld [$ba0b], a
    ret


Call_00e_62d9:
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
    jr nz, jr_00e_6338

    call Call_00e_4202
    call Call_000_0e54
    call Call_00e_4526
    ld a, [$c912]
    or a
    ret nz

    ld a, [$cc96]
    or a
    jr nz, jr_00e_6338

    ldh a, [$ff8b]
    and $01
    jp nz, Jump_00e_457b

    ldh a, [$ff8a]
    and $02
    jp nz, Jump_00e_651a

    ldh a, [$ff8b]
    and $08
    jp nz, Jump_00e_4577

    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00e_633e

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00e_63e9

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00e_6377

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00e_63b0

    ld a, [$c912]
    or a
    ret nz

jr_00e_6338:
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_00e_633e:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_6373

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6422

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_6435

    ret


jr_00e_6373:
    call Call_00e_646e
    ret


Jump_00e_6377:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_63ac

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6448

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_645b

    ret


jr_00e_63ac:
    call Call_00e_64c7
    ret


Jump_00e_63b0:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_63e5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6448

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_645b

    ret


jr_00e_63e5:
    call Call_00e_64f4
    ret


Jump_00e_63e9:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_641e

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6422

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_6435

    ret


jr_00e_641e:
    call Call_00e_6499
    ret


Jump_00e_6422:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_64c7
    ret


Jump_00e_6435:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_64f4
    ret


Jump_00e_6448:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_6499
    ret


Jump_00e_645b:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_00e_646e
    ret


Call_00e_646e:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $c0
    jr nc, jr_00e_648c

    cp $50
    jr c, jr_00e_648c

    jr jr_00e_647f

jr_00e_647f:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_00e_6487:
    ld hl, $c608
    inc [hl]
    ret


jr_00e_648c:
    ld hl, $c60b
    inc [hl]
    jr jr_00e_6487

    ret


    ld a, $1d
    ld [$c911], a
    ret


Call_00e_6499:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $1e
    ret c

    ld a, [$c608]
    cp $c1
    jr nc, jr_00e_64c0

    ld a, [$c608]
    cp $51
    jr c, jr_00e_64c0

    jr jr_00e_64b3

jr_00e_64b3:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_00e_64bb:
    ld hl, $c608
    dec [hl]
    ret


jr_00e_64c0:
    ld hl, $c60b
    dec [hl]
    jr jr_00e_64bb

    ret


Call_00e_64c7:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $a9
    jr nc, jr_00e_64ed

    ld a, [$c607]
    cp $00
    jr nz, jr_00e_64e0

    ld a, [$c606]
    cp $59
    jr c, jr_00e_64ed

jr_00e_64e0:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_00e_64e8:
    ld hl, $c606
    dec [hl]
    ret


jr_00e_64ed:
    ld hl, $c60a
    dec [hl]
    jr jr_00e_64e8

    ret


Call_00e_64f4:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $a8
    jr nc, jr_00e_6513

    ld a, [$c606]
    cp $58
    jr c, jr_00e_6513

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_00e_650e:
    ld hl, $c606
    inc [hl]
    ret


jr_00e_6513:
    ld hl, $c60a
    inc [hl]
    jr jr_00e_650e

    ret


Jump_00e_651a:
    call Call_00e_6531
    ld a, [$c603]
    and $01
    jr z, jr_00e_6530

    ld a, [$c605]
    cp $08
    jr nz, jr_00e_6530

    ld a, $34
    call Call_000_25ce

jr_00e_6530:
    ret


Call_00e_6531:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00e_654b

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00e_654f

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00e_6553

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00e_6557

    jr jr_00e_655c

jr_00e_654b:
    ld a, $00
    jr jr_00e_6559

jr_00e_654f:
    ld a, $01
    jr jr_00e_6559

jr_00e_6553:
    ld a, $02
    jr jr_00e_6559

jr_00e_6557:
    ld a, $03

jr_00e_6559:
    ld [wPlayerFacingDirection], a

jr_00e_655c:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_00e_65a3

    cp $01
    jr z, jr_00e_65da

    cp $02
    jp z, Jump_00e_6611

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52d4
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_659c

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6422

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_6435

    ret


jr_00e_659c:
    call Call_00e_6499
    call Call_00e_6499
    ret


jr_00e_65a3:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52b9
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_65d3

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6422

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_6435

    ret


jr_00e_65d3:
    call Call_00e_646e
    call Call_00e_646e
    ret


jr_00e_65da:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52c2
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_660a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6448

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_645b

    ret


jr_00e_660a:
    call Call_00e_64c7
    call Call_00e_64c7
    ret


Jump_00e_6611:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_00e_52cb
    ld a, [$cc75]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_00e_6641

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_00e_6448

    ld a, [wcb32]
    and $01
    jp z, Jump_00e_645b

    ret


jr_00e_6641:
    call Call_00e_64f4
    call Call_00e_64f4
    ret


Call_00e_6648:
    ld hl, $66a2
    ld de, $c820
    ld b, $10
    call CopyHLtoDE
    ld a, [$cc7a]
    cp $00
    jr nz, jr_00e_666e

    ld hl, $6682
    ld de, $c600
    ld b, $10
    call CopyHLtoDE
    ld a, $58
    ldh [$ff93], a
    ld a, $70
    ldh [$ff91], a
    ret


jr_00e_666e:
    ld hl, $6692
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
    jr nc, jr_00e_669c

jr_00e_669c:
    ld d, b
    jr nc, jr_00e_669f

jr_00e_669f:
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
    push hl
    push af
    ld l, $bf
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
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
    ld hl, $668d
    ld c, $0a
    ld de, $8800
    call Call_000_31a0
    ld hl, $5eb8
    ld c, $0a
    ld de, $9000
    call Call_000_31a0
    ld hl, $58e8
    ld c, $0a
    ld de, $8000
    call Call_000_31a0
    ld hl, $72e7
    ld c, $1f
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
    call Call_00e_67bb
    call Call_00e_5213
    call Call_000_12e5
    ld a, $00
    call RST_TableJumpBankSwitch
    xor a
    ld [$c820], a
    ld hl, $b9f2
    ld de, $cc7c
    ld b, $16
    call CopyHLtoDE
    ld hl, $67f8
    ld a, $0e
    call BankSwitchCallHL
    ld hl, $750a
    ld a, $0e
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
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3cf8
    call Call_00e_424f
    call Call_000_2d67
    call Call_000_36f4
    call Call_00e_5468
    call Call_00e_41a1
    call $1e32
    call Call_00e_4b65
    call Call_00e_44aa
    call Call_00e_54d1
    ret


Call_00e_67bb:
    ld hl, $67cf
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
    call Call_00e_7fe4
    ret


    ld a, [$cc7c]
    bit 0, a
    jr nz, jr_00e_6819

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_680b

    ld bc, $0163
    jr jr_00e_680e

jr_00e_680b:
    ld bc, $0162

jr_00e_680e:
    ld hl, $d800
    ld de, $0068
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6819:
    ld a, [$cc7c]
    bit 1, a
    jr nz, jr_00e_683a

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_682c

    ld bc, $0163
    jr jr_00e_682f

jr_00e_682c:
    ld bc, $0162

jr_00e_682f:
    ld hl, $d800
    ld de, $006a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_683a:
    ld a, [$cc7c]
    bit 2, a
    jr nz, jr_00e_685b

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_684d

    ld bc, $0163
    jr jr_00e_6850

jr_00e_684d:
    ld bc, $0162

jr_00e_6850:
    ld hl, $d800
    ld de, $006c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_685b:
    ld a, [$cc7c]
    bit 3, a
    jr nz, jr_00e_687c

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_686e

    ld bc, $0163
    jr jr_00e_6871

jr_00e_686e:
    ld bc, $0162

jr_00e_6871:
    ld hl, $d800
    ld de, $006e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_687c:
    ld a, [$cc7c]
    bit 4, a
    jr nz, jr_00e_689d

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_688f

    ld bc, $0163
    jr jr_00e_6892

jr_00e_688f:
    ld bc, $0162

jr_00e_6892:
    ld hl, $d800
    ld de, $0070
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_689d:
    ld a, [$cc7c]
    bit 5, a
    jr nz, jr_00e_68be

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_68b0

    ld bc, $0163
    jr jr_00e_68b3

jr_00e_68b0:
    ld bc, $0162

jr_00e_68b3:
    ld hl, $d800
    ld de, $0072
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_68be:
    ld a, [$cc7c]
    bit 6, a
    jr nz, jr_00e_68df

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_68d1

    ld bc, $0163
    jr jr_00e_68d4

jr_00e_68d1:
    ld bc, $0162

jr_00e_68d4:
    ld hl, $d800
    ld de, $0074
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_68df:
    ld a, [$cc7c]
    bit 7, a
    jr nz, jr_00e_6900

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_68f2

    ld bc, $0163
    jr jr_00e_68f5

jr_00e_68f2:
    ld bc, $0162

jr_00e_68f5:
    ld hl, $d800
    ld de, $0076
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6900:
    ld a, [$cc7d]
    bit 0, a
    jr nz, jr_00e_6921

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6913

    ld bc, $0163
    jr jr_00e_6916

jr_00e_6913:
    ld bc, $0162

jr_00e_6916:
    ld hl, $d800
    ld de, $0078
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6921:
    ld a, [$cc7d]
    bit 1, a
    jr nz, jr_00e_6942

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6934

    ld bc, $0163
    jr jr_00e_6937

jr_00e_6934:
    ld bc, $0162

jr_00e_6937:
    ld hl, $d800
    ld de, $007a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6942:
    ld a, [$cc7d]
    bit 2, a
    jr nz, jr_00e_6963

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6955

    ld bc, $0163
    jr jr_00e_6958

jr_00e_6955:
    ld bc, $0162

jr_00e_6958:
    ld hl, $d800
    ld de, $007c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6963:
    ld a, [$cc7d]
    bit 3, a
    jr nz, jr_00e_6984

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6976

    ld bc, $0163
    jr jr_00e_6979

jr_00e_6976:
    ld bc, $0162

jr_00e_6979:
    ld hl, $d800
    ld de, $007e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6984:
    ld a, [$cc7d]
    bit 4, a
    jr nz, jr_00e_69a5

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6997

    ld bc, $0163
    jr jr_00e_699a

jr_00e_6997:
    ld bc, $0162

jr_00e_699a:
    ld hl, $d800
    ld de, $0080
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_69a5:
    ld a, [$cc7e]
    bit 0, a
    jr nz, jr_00e_69ba

    ld bc, $0162
    ld hl, $d800
    ld de, $008a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_69ba:
    ld a, [$cc7e]
    bit 1, a
    jr nz, jr_00e_69db

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_69cd

    ld bc, $0162
    jr jr_00e_69d0

jr_00e_69cd:
    ld bc, $0163

jr_00e_69d0:
    ld hl, $d800
    ld de, $008c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_69db:
    ld a, [$cc7e]
    bit 2, a
    jr nz, jr_00e_69f0

    ld bc, $0162
    ld hl, $d800
    ld de, $008e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_69f0:
    ld a, [$cc7e]
    bit 3, a
    jr nz, jr_00e_6a11

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6a03

    ld bc, $0162
    jr jr_00e_6a06

jr_00e_6a03:
    ld bc, $0163

jr_00e_6a06:
    ld hl, $d800
    ld de, $0090
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a11:
    ld a, [$cc7e]
    bit 4, a
    jr nz, jr_00e_6a26

    ld bc, $0162
    ld hl, $d800
    ld de, $0092
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a26:
    ld a, [$cc7e]
    bit 5, a
    jr nz, jr_00e_6a47

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6a39

    ld bc, $0162
    jr jr_00e_6a3c

jr_00e_6a39:
    ld bc, $0163

jr_00e_6a3c:
    ld hl, $d800
    ld de, $0094
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a47:
    ld a, [$cc7e]
    bit 6, a
    jr nz, jr_00e_6a5c

    ld bc, $0162
    ld hl, $d800
    ld de, $0096
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a5c:
    ld a, [$cc7e]
    bit 7, a
    jr nz, jr_00e_6a7d

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6a6f

    ld bc, $0162
    jr jr_00e_6a72

jr_00e_6a6f:
    ld bc, $0163

jr_00e_6a72:
    ld hl, $d800
    ld de, $0098
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a7d:
    ld a, [$cc7f]
    bit 0, a
    jr nz, jr_00e_6a92

    ld bc, $0162
    ld hl, $d800
    ld de, $009a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6a92:
    ld a, [$cc7f]
    bit 1, a
    jr nz, jr_00e_6ab3

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6aa5

    ld bc, $0162
    jr jr_00e_6aa8

jr_00e_6aa5:
    ld bc, $0163

jr_00e_6aa8:
    ld hl, $d800
    ld de, $009c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ab3:
    ld a, [$cc7f]
    bit 2, a
    jr nz, jr_00e_6ac8

    ld bc, $0162
    ld hl, $d800
    ld de, $009e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ac8:
    ld a, [$cc7f]
    bit 3, a
    jr nz, jr_00e_6ae9

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6adb

    ld bc, $0162
    jr jr_00e_6ade

jr_00e_6adb:
    ld bc, $0163

jr_00e_6ade:
    ld hl, $d800
    ld de, $00a0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ae9:
    ld a, [$cc7f]
    bit 4, a
    jr nz, jr_00e_6afe

    ld bc, $0162
    ld hl, $d800
    ld de, $00a2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6afe:
    ld a, [$cc80]
    bit 0, a
    jr nz, jr_00e_6b1f

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6b11

    ld bc, $0164
    jr jr_00e_6b14

jr_00e_6b11:
    ld bc, $0162

jr_00e_6b14:
    ld hl, $d800
    ld de, $00ac
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b1f:
    ld a, [$cc80]
    bit 1, a
    jr nz, jr_00e_6b34

    ld bc, $0162
    ld hl, $d800
    ld de, $00ae
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b34:
    ld a, [$cc80]
    bit 2, a
    jr nz, jr_00e_6b49

    ld bc, $0162
    ld hl, $d800
    ld de, $00b0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b49:
    ld a, [$cc80]
    bit 3, a
    jr nz, jr_00e_6b5e

    ld bc, $0162
    ld hl, $d800
    ld de, $00b2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b5e:
    ld a, [$cc80]
    bit 4, a
    jr nz, jr_00e_6b73

    ld bc, $0162
    ld hl, $d800
    ld de, $00b4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b73:
    ld a, [$cc80]
    bit 5, a
    jr nz, jr_00e_6b88

    ld bc, $0162
    ld hl, $d800
    ld de, $00b6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b88:
    ld a, [$cc80]
    bit 6, a
    jr nz, jr_00e_6b9d

    ld bc, $0162
    ld hl, $d800
    ld de, $00b8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6b9d:
    ld a, [$cc80]
    bit 7, a
    jr nz, jr_00e_6bb2

    ld bc, $0162
    ld hl, $d800
    ld de, $00ba
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6bb2:
    ld a, [$cc81]
    bit 0, a
    jr nz, jr_00e_6bc7

    ld bc, $0162
    ld hl, $d800
    ld de, $00bc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6bc7:
    ld a, [$cc81]
    bit 1, a
    jr nz, jr_00e_6bdc

    ld bc, $0162
    ld hl, $d800
    ld de, $00be
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6bdc:
    ld a, [$cc81]
    bit 2, a
    jr nz, jr_00e_6bf1

    ld bc, $0162
    ld hl, $d800
    ld de, $00c0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6bf1:
    ld a, [$cc81]
    bit 3, a
    jr nz, jr_00e_6c06

    ld bc, $0162
    ld hl, $d800
    ld de, $00c2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c06:
    ld a, [$cc81]
    bit 4, a
    jr nz, jr_00e_6c27

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6c19

    ld bc, $0164
    jr jr_00e_6c1c

jr_00e_6c19:
    ld bc, $0162

jr_00e_6c1c:
    ld hl, $d800
    ld de, $00c4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c27:
    ld a, [$cc82]
    bit 0, a
    jr nz, jr_00e_6c48

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6c3a

    ld bc, $0163
    jr jr_00e_6c3d

jr_00e_6c3a:
    ld bc, $0162

jr_00e_6c3d:
    ld hl, $d800
    ld de, $00ce
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c48:
    ld a, [$cc82]
    bit 1, a
    jr nz, jr_00e_6c5d

    ld bc, $0162
    ld hl, $d800
    ld de, $00d0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c5d:
    ld a, [$cc82]
    bit 2, a
    jr nz, jr_00e_6c72

    ld bc, $0163
    ld hl, $d800
    ld de, $00d2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c72:
    ld a, [$cc82]
    bit 3, a
    jr nz, jr_00e_6c87

    ld bc, $0162
    ld hl, $d800
    ld de, $00d4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c87:
    ld a, [$cc82]
    bit 4, a
    jr nz, jr_00e_6c9c

    ld bc, $0163
    ld hl, $d800
    ld de, $00d6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6c9c:
    ld a, [$cc82]
    bit 5, a
    jr nz, jr_00e_6cb1

    ld bc, $0162
    ld hl, $d800
    ld de, $00d8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6cb1:
    ld a, [$cc82]
    bit 6, a
    jr nz, jr_00e_6cd2

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6cc4

    ld bc, $0163
    jr jr_00e_6cc7

jr_00e_6cc4:
    ld bc, $0164

jr_00e_6cc7:
    ld hl, $d800
    ld de, $00da
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6cd2:
    ld a, [$cc82]
    bit 7, a
    jr nz, jr_00e_6ce7

    ld bc, $0162
    ld hl, $d800
    ld de, $00dc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ce7:
    ld a, [$cc83]
    bit 0, a
    jr nz, jr_00e_6cfc

    ld bc, $0163
    ld hl, $d800
    ld de, $00de
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6cfc:
    ld a, [$cc83]
    bit 1, a
    jr nz, jr_00e_6d11

    ld bc, $0162
    ld hl, $d800
    ld de, $00e0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d11:
    ld a, [$cc83]
    bit 2, a
    jr nz, jr_00e_6d26

    ld bc, $0163
    ld hl, $d800
    ld de, $00e2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d26:
    ld a, [$cc83]
    bit 3, a
    jr nz, jr_00e_6d3b

    ld bc, $0162
    ld hl, $d800
    ld de, $00e4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d3b:
    ld a, [$cc83]
    bit 4, a
    jr nz, jr_00e_6d5c

    ld a, [$cc79]
    cp $03
    jr z, jr_00e_6d4e

    ld bc, $0163
    jr jr_00e_6d51

jr_00e_6d4e:
    ld bc, $0162

jr_00e_6d51:
    ld hl, $d800
    ld de, $00e6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d5c:
    ld a, [$cc84]
    bit 0, a
    jr nz, jr_00e_6d71

    ld bc, $0162
    ld hl, $d800
    ld de, $00f0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d71:
    ld a, [$cc84]
    bit 1, a
    jr nz, jr_00e_6d86

    ld bc, $0162
    ld hl, $d800
    ld de, $00f2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d86:
    ld a, [$cc84]
    bit 2, a
    jr nz, jr_00e_6d9b

    ld bc, $0162
    ld hl, $d800
    ld de, $00f4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6d9b:
    ld a, [$cc84]
    bit 3, a
    jr nz, jr_00e_6db0

    ld bc, $0162
    ld hl, $d800
    ld de, $00f6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6db0:
    ld a, [$cc84]
    bit 4, a
    jr nz, jr_00e_6dc5

    ld bc, $0162
    ld hl, $d800
    ld de, $00f8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6dc5:
    ld a, [$cc84]
    bit 5, a
    jr nz, jr_00e_6dda

    ld bc, $0162
    ld hl, $d800
    ld de, $00fa
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6dda:
    ld a, [$cc84]
    bit 6, a
    jr nz, jr_00e_6def

    ld bc, $0162
    ld hl, $d800
    ld de, $00fc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6def:
    ld a, [$cc84]
    bit 7, a
    jr nz, jr_00e_6e04

    ld bc, $0162
    ld hl, $d800
    ld de, $00fe
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e04:
    ld a, [$cc85]
    bit 0, a
    jr nz, jr_00e_6e19

    ld bc, $0162
    ld hl, $d800
    ld de, $0100
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e19:
    ld a, [$cc85]
    bit 1, a
    jr nz, jr_00e_6e2e

    ld bc, $0162
    ld hl, $d800
    ld de, $0102
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e2e:
    ld a, [$cc85]
    bit 2, a
    jr nz, jr_00e_6e43

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderLogo
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e43:
    ld a, [$cc85]
    bit 3, a
    jr nz, jr_00e_6e58

    ld bc, $0162
    ld hl, $d800
    ld de, $0106
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e58:
    ld a, [$cc85]
    bit 4, a
    jr nz, jr_00e_6e6d

    ld bc, $0162
    ld hl, $d800
    ld de, $0108
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e6d:
    ld a, [$cc86]
    bit 0, a
    jr nz, jr_00e_6e82

    ld bc, $0162
    ld hl, $d800
    ld de, $0112
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e82:
    ld a, [$cc86]
    bit 1, a
    jr nz, jr_00e_6e97

    ld bc, $0162
    ld hl, $d800
    ld de, $0114
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6e97:
    ld a, [$cc86]
    bit 2, a
    jr nz, jr_00e_6eac

    ld bc, $0162
    ld hl, $d800
    ld de, $0116
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6eac:
    ld a, [$cc86]
    bit 3, a
    jr nz, jr_00e_6ec1

    ld bc, $0162
    ld hl, $d800
    ld de, $0118
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ec1:
    ld a, [$cc86]
    bit 4, a
    jr nz, jr_00e_6ed6

    ld bc, $0162
    ld hl, $d800
    ld de, $011a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ed6:
    ld a, [$cc86]
    bit 5, a
    jr nz, jr_00e_6eeb

    ld bc, $0162
    ld hl, $d800
    ld de, $011c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6eeb:
    ld a, [$cc86]
    bit 6, a
    jr nz, jr_00e_6f00

    ld bc, $0162
    ld hl, $d800
    ld de, $011e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f00:
    ld a, [$cc86]
    bit 7, a
    jr nz, jr_00e_6f15

    ld bc, $0162
    ld hl, $d800
    ld de, $0120
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f15:
    ld a, [$cc87]
    bit 0, a
    jr nz, jr_00e_6f2a

    ld bc, $0162
    ld hl, $d800
    ld de, $0122
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f2a:
    ld a, [$cc87]
    bit 1, a
    jr nz, jr_00e_6f3f

    ld bc, $0162
    ld hl, $d800
    ld de, $0124
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f3f:
    ld a, [$cc87]
    bit 2, a
    jr nz, jr_00e_6f54

    ld bc, $0162
    ld hl, $d800
    ld de, $0126
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f54:
    ld a, [$cc87]
    bit 3, a
    jr nz, jr_00e_6f69

    ld bc, $0162
    ld hl, $d800
    ld de, $0128
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f69:
    ld a, [$cc87]
    bit 4, a
    jr nz, jr_00e_6f7e

    ld bc, $0162
    ld hl, $d800
    ld de, $012a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f7e:
    ld a, [$cc88]
    bit 0, a
    jr nz, jr_00e_6f93

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderTitle
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6f93:
    ld a, [$cc88]
    bit 1, a
    jr nz, jr_00e_6fa8

    ld bc, $0162
    ld hl, $d800
    ld de, $0136
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6fa8:
    ld a, [$cc88]
    bit 2, a
    jr nz, jr_00e_6fbd

    ld bc, $0162
    ld hl, $d800
    ld de, $0138
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6fbd:
    ld a, [$cc88]
    bit 3, a
    jr nz, jr_00e_6fd2

    ld bc, $0162
    ld hl, $d800
    ld de, $013a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6fd2:
    ld a, [$cc88]
    bit 4, a
    jr nz, jr_00e_6fe7

    ld bc, $0162
    ld hl, $d800
    ld de, $013c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6fe7:
    ld a, [$cc88]
    bit 5, a
    jr nz, jr_00e_6ffc

    ld bc, $0162
    ld hl, $d800
    ld de, $013e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_6ffc:
    ld a, [$cc88]
    bit 6, a
    jr nz, jr_00e_7011

    ld bc, $0162
    ld hl, $d800
    ld de, $0140
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7011:
    ld a, [$cc88]
    bit 7, a
    jr nz, jr_00e_7026

    ld bc, $0162
    ld hl, $d800
    ld de, $0142
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7026:
    ld a, [$cc89]
    bit 0, a
    jr nz, jr_00e_703b

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderNewLicenseeCode
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_703b:
    ld a, [$cc89]
    bit 1, a
    jr nz, jr_00e_7050

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderSGBFlag
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7050:
    ld a, [$cc89]
    bit 2, a
    jr nz, jr_00e_7065

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderROMSize
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7065:
    ld a, [$cc89]
    bit 3, a
    jr nz, jr_00e_707a

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderDestinationCode
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_707a:
    ld a, [$cc89]
    bit 4, a
    jr nz, jr_00e_708f

    ld bc, $0162
    ld hl, $d800
    ld de, HeaderMaskROMVersion
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_708f:
    ld a, [$cc8a]
    bit 0, a
    jr nz, jr_00e_70a4

    ld bc, $0162
    ld hl, $d800
    ld de, $0156
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_70a4:
    ld a, [$cc8a]
    bit 1, a
    jr nz, jr_00e_70b9

    ld bc, $0162
    ld hl, $d800
    ld de, $0158
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_70b9:
    ld a, [$cc8a]
    bit 2, a
    jr nz, jr_00e_70ce

    ld bc, $0162
    ld hl, $d800
    ld de, $015a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_70ce:
    ld a, [$cc8a]
    bit 3, a
    jr nz, jr_00e_70e3

    ld bc, $0162
    ld hl, $d800
    ld de, $015c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_70e3:
    ld a, [$cc8a]
    bit 4, a
    jr nz, jr_00e_70f8

    ld bc, $0162
    ld hl, $d800
    ld de, $015e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_70f8:
    ld a, [$cc8a]
    bit 5, a
    jr nz, jr_00e_710d

    ld bc, $0162
    ld hl, $d800
    ld de, $0160
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_710d:
    ld a, [$cc8a]
    bit 6, a
    jr nz, jr_00e_7122

    ld bc, $0162
    ld hl, $d800
    ld de, $0162
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7122:
    ld a, [$cc8a]
    bit 7, a
    jr nz, jr_00e_7137

    ld bc, $0162
    ld hl, $d800
    ld de, $0164
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7137:
    ld a, [$cc8b]
    bit 0, a
    jr nz, jr_00e_714c

    ld bc, $0162
    ld hl, $d800
    ld de, $0166
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_714c:
    ld a, [$cc8b]
    bit 1, a
    jr nz, jr_00e_7161

    ld bc, $0162
    ld hl, $d800
    ld de, $0168
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7161:
    ld a, [$cc8b]
    bit 2, a
    jr nz, jr_00e_7176

    ld bc, $0162
    ld hl, $d800
    ld de, $016a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7176:
    ld a, [$cc8b]
    bit 3, a
    jr nz, jr_00e_718b

    ld bc, $0162
    ld hl, $d800
    ld de, $016c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_718b:
    ld a, [$cc8b]
    bit 4, a
    jr nz, jr_00e_71a0

    ld bc, $0162
    ld hl, $d800
    ld de, $016e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_71a0:
    ld a, [$cc8c]
    bit 0, a
    jr nz, jr_00e_71b5

    ld bc, $0162
    ld hl, $d800
    ld de, $0178
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_71b5:
    ld a, [$cc8c]
    bit 1, a
    jr nz, jr_00e_71ca

    ld bc, $0162
    ld hl, $d800
    ld de, $017a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_71ca:
    ld a, [$cc8c]
    bit 2, a
    jr nz, jr_00e_71df

    ld bc, $0162
    ld hl, $d800
    ld de, $017c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_71df:
    ld a, [$cc8c]
    bit 3, a
    jr nz, jr_00e_71f4

    ld bc, $0162
    ld hl, $d800
    ld de, $017e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_71f4:
    ld a, [$cc8c]
    bit 4, a
    jr nz, jr_00e_7209

    ld bc, $0162
    ld hl, $d800
    ld de, $0180
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7209:
    ld a, [$cc8c]
    bit 5, a
    jr nz, jr_00e_721e

    ld bc, $0162
    ld hl, $d800
    ld de, $0182
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_721e:
    ld a, [$cc8c]
    bit 6, a
    jr nz, jr_00e_7233

    ld bc, $0162
    ld hl, $d800
    ld de, $0184
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7233:
    ld a, [$cc8c]
    bit 7, a
    jr nz, jr_00e_7248

    ld bc, $0162
    ld hl, $d800
    ld de, $0186
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7248:
    ld a, [$cc8d]
    bit 0, a
    jr nz, jr_00e_725d

    ld bc, $0162
    ld hl, $d800
    ld de, $0188
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_725d:
    ld a, [$cc8d]
    bit 1, a
    jr nz, jr_00e_7272

    ld bc, $0162
    ld hl, $d800
    ld de, $018a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7272:
    ld a, [$cc8d]
    bit 2, a
    jr nz, jr_00e_7287

    ld bc, $0162
    ld hl, $d800
    ld de, $018c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7287:
    ld a, [$cc8d]
    bit 3, a
    jr nz, jr_00e_729c

    ld bc, $0162
    ld hl, $d800
    ld de, $018e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_729c:
    ld a, [$cc8d]
    bit 4, a
    jr nz, jr_00e_72b1

    ld bc, $0162
    ld hl, $d800
    ld de, $0190
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_72b1:
    ld a, [$cc8e]
    bit 0, a
    jr nz, jr_00e_72c6

    ld bc, $0162
    ld hl, $d800
    ld de, $019a
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_72c6:
    ld a, [$cc8e]
    bit 1, a
    jr nz, jr_00e_72db

    ld bc, $0162
    ld hl, $d800
    ld de, $019c
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_72db:
    ld a, [$cc8e]
    bit 2, a
    jr nz, jr_00e_72f0

    ld bc, $0162
    ld hl, $d800
    ld de, $019e
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_72f0:
    ld a, [$cc8e]
    bit 3, a
    jr nz, jr_00e_7305

    ld bc, $0162
    ld hl, $d800
    ld de, $01a0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7305:
    ld a, [$cc8e]
    bit 4, a
    jr nz, jr_00e_731a

    ld bc, $0162
    ld hl, $d800
    ld de, $01a2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_731a:
    ld a, [$cc8e]
    bit 5, a
    jr nz, jr_00e_732f

    ld bc, $0162
    ld hl, $d800
    ld de, $01a4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_732f:
    ld a, [$cc8e]
    bit 6, a
    jr nz, jr_00e_7344

    ld bc, $0162
    ld hl, $d800
    ld de, $01a6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7344:
    ld a, [$cc8e]
    bit 7, a
    jr nz, jr_00e_7359

    ld bc, $0162
    ld hl, $d800
    ld de, $01a8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7359:
    ld a, [$cc8f]
    bit 0, a
    jr nz, jr_00e_736e

    ld bc, $0162
    ld hl, $d800
    ld de, $01aa
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_736e:
    ld a, [$cc8f]
    bit 1, a
    jr nz, jr_00e_7383

    ld bc, $0162
    ld hl, $d800
    ld de, $01ac
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7383:
    ld a, [$cc8f]
    bit 2, a
    jr nz, jr_00e_7398

    ld bc, $0162
    ld hl, $d800
    ld de, $01ae
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7398:
    ld a, [$cc8f]
    bit 3, a
    jr nz, jr_00e_73ad

    ld bc, $0162
    ld hl, $d800
    ld de, $01b0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_73ad:
    ld a, [$cc8f]
    bit 4, a
    jr nz, jr_00e_73c2

    ld bc, $0162
    ld hl, $d800
    ld de, $01b2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_73c2:
    ld a, [$cc90]
    bit 0, a
    jr nz, jr_00e_73d7

    ld bc, $0162
    ld hl, $d800
    ld de, $01bc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_73d7:
    ld a, [$cc90]
    bit 1, a
    jr nz, jr_00e_73ec

    ld bc, $0162
    ld hl, $d800
    ld de, $01be
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_73ec:
    ld a, [$cc90]
    bit 2, a
    jr nz, jr_00e_7401

    ld bc, $0162
    ld hl, $d800
    ld de, $01c0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7401:
    ld a, [$cc90]
    bit 3, a
    jr nz, jr_00e_7416

    ld bc, $0162
    ld hl, $d800
    ld de, $01c2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7416:
    ld a, [$cc90]
    bit 4, a
    jr nz, jr_00e_742b

    ld bc, $0162
    ld hl, $d800
    ld de, $01c4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_742b:
    ld a, [$cc90]
    bit 5, a
    jr nz, jr_00e_7440

    ld bc, $0162
    ld hl, $d800
    ld de, $01c6
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7440:
    ld a, [$cc90]
    bit 6, a
    jr nz, jr_00e_7455

    ld bc, $0162
    ld hl, $d800
    ld de, $01c8
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7455:
    ld a, [$cc90]
    bit 7, a
    jr nz, jr_00e_746a

    ld bc, $0162
    ld hl, $d800
    ld de, $01ca
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_746a:
    ld a, [$cc91]
    bit 0, a
    jr nz, jr_00e_747f

    ld bc, $0162
    ld hl, $d800
    ld de, $01cc
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_747f:
    ld a, [$cc91]
    bit 1, a
    jr nz, jr_00e_7494

    ld bc, $0162
    ld hl, $d800
    ld de, $01ce
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_7494:
    ld a, [$cc91]
    bit 2, a
    jr nz, jr_00e_74a9

    ld bc, $0162
    ld hl, $d800
    ld de, $01d0
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_74a9:
    ld a, [$cc91]
    bit 3, a
    jr nz, jr_00e_74be

    ld bc, $0162
    ld hl, $d800
    ld de, $01d2
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_74be:
    ld a, [$cc91]
    bit 4, a
    jr nz, jr_00e_74d3

    ld bc, $0162
    ld hl, $d800
    ld de, $01d4
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a

jr_00e_74d3:
    ld a, [$cc79]
    cp $03
    ret nz

    call Call_00e_7fb2
    call Call_00e_7fcb
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
    call Call_00e_7f69
    ret


    ld a, [$cc7c]
    bit 0, a
    jr nz, jr_00e_751b

    ld hl, $9800
    ld de, $0022
    add hl, de
    call Call_00e_7eb8

jr_00e_751b:
    ld a, [$cc7c]
    bit 1, a
    jr nz, jr_00e_752c

    ld hl, $9800
    ld de, $0024
    add hl, de
    call Call_00e_7eb8

jr_00e_752c:
    ld a, [$cc7c]
    bit 2, a
    jr nz, jr_00e_753d

    ld hl, $9800
    ld de, $0026
    add hl, de
    call Call_00e_7eb8

jr_00e_753d:
    ld a, [$cc7c]
    bit 3, a
    jr nz, jr_00e_754e

    ld hl, $9800
    ld de, $0028
    add hl, de
    call Call_00e_7eb8

jr_00e_754e:
    ld a, [$cc7c]
    bit 4, a
    jr nz, jr_00e_755f

    ld hl, $9800
    ld de, $002a
    add hl, de
    call Call_00e_7eb8

jr_00e_755f:
    ld a, [$cc7c]
    bit 5, a
    jr nz, jr_00e_7570

    ld hl, $9800
    ld de, $002c
    add hl, de
    call Call_00e_7eb8

jr_00e_7570:
    ld a, [$cc7c]
    bit 6, a
    jr nz, jr_00e_7581

    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_00e_7eb8

jr_00e_7581:
    ld a, [$cc7c]
    bit 7, a
    jr nz, jr_00e_7592

    ld hl, $9800
    ld de, $0030
    add hl, de
    call Call_00e_7eb8

jr_00e_7592:
    ld a, [$cc7d]
    bit 0, a
    jr nz, jr_00e_75a3

    ld hl, $9800
    ld de, $0032
    add hl, de
    call Call_00e_7eb8

jr_00e_75a3:
    ld a, [$cc7d]
    bit 1, a
    jr nz, jr_00e_75b4

    ld hl, $9800
    ld de, $0034
    add hl, de
    call Call_00e_7eb8

jr_00e_75b4:
    ld a, [$cc7d]
    bit 2, a
    jr nz, jr_00e_75c5

    ld hl, $9800
    ld de, $0036
    add hl, de
    call Call_00e_7eb8

jr_00e_75c5:
    ld a, [$cc7d]
    bit 3, a
    jr nz, jr_00e_75d6

    ld hl, $9800
    ld de, $0038
    add hl, de
    call Call_00e_7eb8

jr_00e_75d6:
    ld a, [$cc7d]
    bit 4, a
    jr nz, jr_00e_75e7

    ld hl, $9800
    ld de, $003a
    add hl, de
    call Call_00e_7eb8

jr_00e_75e7:
    ld a, [$cc7e]
    bit 0, a
    jr nz, jr_00e_75f8

    ld hl, $9800
    ld de, $0062
    add hl, de
    call Call_00e_7eb8

jr_00e_75f8:
    ld a, [$cc7e]
    bit 1, a
    jr nz, jr_00e_7609

    ld hl, $9800
    ld de, $0064
    add hl, de
    call Call_00e_7eb8

jr_00e_7609:
    ld a, [$cc7e]
    bit 2, a
    jr nz, jr_00e_761a

    ld hl, $9800
    ld de, $0066
    add hl, de
    call Call_00e_7eb8

jr_00e_761a:
    ld a, [$cc7e]
    bit 3, a
    jr nz, jr_00e_762b

    ld hl, $9800
    ld de, $0068
    add hl, de
    call Call_00e_7eb8

jr_00e_762b:
    ld a, [$cc7e]
    bit 4, a
    jr nz, jr_00e_763c

    ld hl, $9800
    ld de, $006a
    add hl, de
    call Call_00e_7eb8

jr_00e_763c:
    ld a, [$cc7e]
    bit 5, a
    jr nz, jr_00e_764d

    ld hl, $9800
    ld de, $006c
    add hl, de
    call Call_00e_7eb8

jr_00e_764d:
    ld a, [$cc7e]
    bit 6, a
    jr nz, jr_00e_765e

    ld hl, $9800
    ld de, $006e
    add hl, de
    call Call_00e_7eb8

jr_00e_765e:
    ld a, [$cc7e]
    bit 7, a
    jr nz, jr_00e_766f

    ld hl, $9800
    ld de, $0070
    add hl, de
    call Call_00e_7eb8

jr_00e_766f:
    ld a, [$cc7f]
    bit 0, a
    jr nz, jr_00e_7680

    ld hl, $9800
    ld de, $0072
    add hl, de
    call Call_00e_7eb8

jr_00e_7680:
    ld a, [$cc7f]
    bit 1, a
    jr nz, jr_00e_7691

    ld hl, $9800
    ld de, $0074
    add hl, de
    call Call_00e_7eb8

jr_00e_7691:
    ld a, [$cc7f]
    bit 2, a
    jr nz, jr_00e_76a2

    ld hl, $9800
    ld de, $0076
    add hl, de
    call Call_00e_7eb8

jr_00e_76a2:
    ld a, [$cc7f]
    bit 3, a
    jr nz, jr_00e_76b3

    ld hl, $9800
    ld de, $0078
    add hl, de
    call Call_00e_7eb8

jr_00e_76b3:
    ld a, [$cc7f]
    bit 4, a
    jr nz, jr_00e_76c4

    ld hl, $9800
    ld de, $007a
    add hl, de
    call Call_00e_7eb8

jr_00e_76c4:
    ld a, [$cc80]
    bit 0, a
    jr nz, jr_00e_76d5

    ld hl, $9800
    ld de, $00a2
    add hl, de
    call Call_00e_7eb8

jr_00e_76d5:
    ld a, [$cc80]
    bit 1, a
    jr nz, jr_00e_76e6

    ld hl, $9800
    ld de, $00a4
    add hl, de
    call Call_00e_7eb8

jr_00e_76e6:
    ld a, [$cc80]
    bit 2, a
    jr nz, jr_00e_76f7

    ld hl, $9800
    ld de, $00a6
    add hl, de
    call Call_00e_7eb8

jr_00e_76f7:
    ld a, [$cc80]
    bit 3, a
    jr nz, jr_00e_7708

    ld hl, $9800
    ld de, $00a8
    add hl, de
    call Call_00e_7eb8

jr_00e_7708:
    ld a, [$cc80]
    bit 4, a
    jr nz, jr_00e_7719

    ld hl, $9800
    ld de, $00aa
    add hl, de
    call Call_00e_7eb8

jr_00e_7719:
    ld a, [$cc80]
    bit 5, a
    jr nz, jr_00e_772a

    ld hl, $9800
    ld de, $00ac
    add hl, de
    call Call_00e_7eb8

jr_00e_772a:
    ld a, [$cc80]
    bit 6, a
    jr nz, jr_00e_773b

    ld hl, $9800
    ld de, $00ae
    add hl, de
    call Call_00e_7eb8

jr_00e_773b:
    ld a, [$cc80]
    bit 7, a
    jr nz, jr_00e_774c

    ld hl, $9800
    ld de, $00b0
    add hl, de
    call Call_00e_7eb8

jr_00e_774c:
    ld a, [$cc81]
    bit 0, a
    jr nz, jr_00e_775d

    ld hl, $9800
    ld de, $00b2
    add hl, de
    call Call_00e_7eb8

jr_00e_775d:
    ld a, [$cc81]
    bit 1, a
    jr nz, jr_00e_776e

    ld hl, $9800
    ld de, $00b4
    add hl, de
    call Call_00e_7eb8

jr_00e_776e:
    ld a, [$cc81]
    bit 2, a
    jr nz, jr_00e_777f

    ld hl, $9800
    ld de, $00b6
    add hl, de
    call Call_00e_7eb8

jr_00e_777f:
    ld a, [$cc81]
    bit 3, a
    jr nz, jr_00e_7790

    ld hl, $9800
    ld de, $00b8
    add hl, de
    call Call_00e_7eb8

jr_00e_7790:
    ld a, [$cc81]
    bit 4, a
    jr nz, jr_00e_77a1

    ld hl, $9800
    ld de, $00ba
    add hl, de
    call Call_00e_7eb8

jr_00e_77a1:
    ld a, [$cc82]
    bit 0, a
    jr nz, jr_00e_77b2

    ld hl, $9800
    ld de, $00e2
    add hl, de
    call Call_00e_7eb8

jr_00e_77b2:
    ld a, [$cc82]
    bit 1, a
    jr nz, jr_00e_77c3

    ld hl, $9800
    ld de, $00e4
    add hl, de
    call Call_00e_7eb8

jr_00e_77c3:
    ld a, [$cc82]
    bit 2, a
    jr nz, jr_00e_77d4

    ld hl, $9800
    ld de, $00e6
    add hl, de
    call Call_00e_7eb8

jr_00e_77d4:
    ld a, [$cc82]
    bit 3, a
    jr nz, jr_00e_77e5

    ld hl, $9800
    ld de, $00e8
    add hl, de
    call Call_00e_7eb8

jr_00e_77e5:
    ld a, [$cc82]
    bit 4, a
    jr nz, jr_00e_77f6

    ld hl, $9800
    ld de, $00ea
    add hl, de
    call Call_00e_7eb8

jr_00e_77f6:
    ld a, [$cc82]
    bit 5, a
    jr nz, jr_00e_7807

    ld hl, $9800
    ld de, $00ec
    add hl, de
    call Call_00e_7eb8

jr_00e_7807:
    ld a, [$cc82]
    bit 6, a
    jr nz, jr_00e_7818

    ld hl, $9800
    ld de, $00ee
    add hl, de
    call Call_00e_7eb8

jr_00e_7818:
    ld a, [$cc82]
    bit 7, a
    jr nz, jr_00e_7829

    ld hl, $9800
    ld de, $00f0
    add hl, de
    call Call_00e_7eb8

jr_00e_7829:
    ld a, [$cc83]
    bit 0, a
    jr nz, jr_00e_783a

    ld hl, $9800
    ld de, $00f2
    add hl, de
    call Call_00e_7eb8

jr_00e_783a:
    ld a, [$cc83]
    bit 1, a
    jr nz, jr_00e_784b

    ld hl, $9800
    ld de, $00f4
    add hl, de
    call Call_00e_7eb8

jr_00e_784b:
    ld a, [$cc83]
    bit 2, a
    jr nz, jr_00e_785c

    ld hl, $9800
    ld de, $00f6
    add hl, de
    call Call_00e_7eb8

jr_00e_785c:
    ld a, [$cc83]
    bit 3, a
    jr nz, jr_00e_786d

    ld hl, $9800
    ld de, $00f8
    add hl, de
    call Call_00e_7eb8

jr_00e_786d:
    ld a, [$cc83]
    bit 4, a
    jr nz, jr_00e_787e

    ld hl, $9800
    ld de, $00fa
    add hl, de
    call Call_00e_7eb8

jr_00e_787e:
    ld a, [$cc84]
    bit 0, a
    jr nz, jr_00e_788f

    ld hl, $9800
    ld de, $0122
    add hl, de
    call Call_00e_7eb8

jr_00e_788f:
    ld a, [$cc84]
    bit 1, a
    jr nz, jr_00e_78a0

    ld hl, $9800
    ld de, $0124
    add hl, de
    call Call_00e_7eb8

jr_00e_78a0:
    ld a, [$cc84]
    bit 2, a
    jr nz, jr_00e_78b1

    ld hl, $9800
    ld de, $0126
    add hl, de
    call Call_00e_7eb8

jr_00e_78b1:
    ld a, [$cc84]
    bit 3, a
    jr nz, jr_00e_78c2

    ld hl, $9800
    ld de, $0128
    add hl, de
    call Call_00e_7eb8

jr_00e_78c2:
    ld a, [$cc84]
    bit 4, a
    jr nz, jr_00e_78d3

    ld hl, $9800
    ld de, $012a
    add hl, de
    call Call_00e_7eb8

jr_00e_78d3:
    ld a, [$cc84]
    bit 5, a
    jr nz, jr_00e_78e4

    ld hl, $9800
    ld de, $012c
    add hl, de
    call Call_00e_7eb8

jr_00e_78e4:
    ld a, [$cc84]
    bit 6, a
    jr nz, jr_00e_78f5

    ld hl, $9800
    ld de, $012e
    add hl, de
    call Call_00e_7eb8

jr_00e_78f5:
    ld a, [$cc84]
    bit 7, a
    jr nz, jr_00e_7906

    ld hl, $9800
    ld de, $0130
    add hl, de
    call Call_00e_7eb8

jr_00e_7906:
    ld a, [$cc85]
    bit 0, a
    jr nz, jr_00e_7917

    ld hl, $9800
    ld de, $0132
    add hl, de
    call Call_00e_7eb8

jr_00e_7917:
    ld a, [$cc85]
    bit 1, a
    jr nz, jr_00e_7928

    ld hl, $9800
    ld de, HeaderTitle
    add hl, de
    call Call_00e_7eb8

jr_00e_7928:
    ld a, [$cc85]
    bit 2, a
    jr nz, jr_00e_7939

    ld hl, $9800
    ld de, $0136
    add hl, de
    call Call_00e_7eb8

jr_00e_7939:
    ld a, [$cc85]
    bit 3, a
    jr nz, jr_00e_794a

    ld hl, $9800
    ld de, $0138
    add hl, de
    call Call_00e_7eb8

jr_00e_794a:
    ld a, [$cc85]
    bit 4, a
    jr nz, jr_00e_795b

    ld hl, $9800
    ld de, $013a
    add hl, de
    call Call_00e_7eb8

jr_00e_795b:
    ld a, [$cc86]
    bit 0, a
    jr nz, jr_00e_796c

    ld hl, $9800
    ld de, $0162
    add hl, de
    call Call_00e_7eb8

jr_00e_796c:
    ld a, [$cc86]
    bit 1, a
    jr nz, jr_00e_797d

    ld hl, $9800
    ld de, $0164
    add hl, de
    call Call_00e_7eb8

jr_00e_797d:
    ld a, [$cc86]
    bit 2, a
    jr nz, jr_00e_798e

    ld hl, $9800
    ld de, $0166
    add hl, de
    call Call_00e_7eb8

jr_00e_798e:
    ld a, [$cc86]
    bit 3, a
    jr nz, jr_00e_799f

    ld hl, $9800
    ld de, $0168
    add hl, de
    call Call_00e_7eb8

jr_00e_799f:
    ld a, [$cc86]
    bit 4, a
    jr nz, jr_00e_79b0

    ld hl, $9800
    ld de, $016a
    add hl, de
    call Call_00e_7eb8

jr_00e_79b0:
    ld a, [$cc86]
    bit 5, a
    jr nz, jr_00e_79c1

    ld hl, $9800
    ld de, $016c
    add hl, de
    call Call_00e_7eb8

jr_00e_79c1:
    ld a, [$cc86]
    bit 6, a
    jr nz, jr_00e_79d2

    ld hl, $9800
    ld de, $016e
    add hl, de
    call Call_00e_7eb8

jr_00e_79d2:
    ld a, [$cc86]
    bit 7, a
    jr nz, jr_00e_79e3

    ld hl, $9800
    ld de, $0170
    add hl, de
    call Call_00e_7eb8

jr_00e_79e3:
    ld a, [$cc87]
    bit 0, a
    jr nz, jr_00e_79f4

    ld hl, $9800
    ld de, $0172
    add hl, de
    call Call_00e_7eb8

jr_00e_79f4:
    ld a, [$cc87]
    bit 1, a
    jr nz, jr_00e_7a05

    ld hl, $9800
    ld de, $0174
    add hl, de
    call Call_00e_7eb8

jr_00e_7a05:
    ld a, [$cc87]
    bit 2, a
    jr nz, jr_00e_7a16

    ld hl, $9800
    ld de, $0176
    add hl, de
    call Call_00e_7eb8

jr_00e_7a16:
    ld a, [$cc87]
    bit 3, a
    jr nz, jr_00e_7a27

    ld hl, $9800
    ld de, $0178
    add hl, de
    call Call_00e_7eb8

jr_00e_7a27:
    ld a, [$cc87]
    bit 4, a
    jr nz, jr_00e_7a38

    ld hl, $9800
    ld de, $017a
    add hl, de
    call Call_00e_7eb8

jr_00e_7a38:
    ld a, [$cc88]
    bit 0, a
    jr nz, jr_00e_7a49

    ld hl, $9800
    ld de, $01a2
    add hl, de
    call Call_00e_7eb8

jr_00e_7a49:
    ld a, [$cc88]
    bit 1, a
    jr nz, jr_00e_7a5a

    ld hl, $9800
    ld de, $01a4
    add hl, de
    call Call_00e_7eb8

jr_00e_7a5a:
    ld a, [$cc88]
    bit 2, a
    jr nz, jr_00e_7a6b

    ld hl, $9800
    ld de, $01a6
    add hl, de
    call Call_00e_7eb8

jr_00e_7a6b:
    ld a, [$cc88]
    bit 3, a
    jr nz, jr_00e_7a7c

    ld hl, $9800
    ld de, $01a8
    add hl, de
    call Call_00e_7eb8

jr_00e_7a7c:
    ld a, [$cc88]
    bit 4, a
    jr nz, jr_00e_7a8d

    ld hl, $9800
    ld de, $01aa
    add hl, de
    call Call_00e_7eb8

jr_00e_7a8d:
    ld a, [$cc88]
    bit 5, a
    jr nz, jr_00e_7a9e

    ld hl, $9800
    ld de, $01ac
    add hl, de
    call Call_00e_7eb8

jr_00e_7a9e:
    ld a, [$cc88]
    bit 6, a
    jr nz, jr_00e_7aaf

    ld hl, $9800
    ld de, $01ae
    add hl, de
    call Call_00e_7eb8

jr_00e_7aaf:
    ld a, [$cc88]
    bit 7, a
    jr nz, jr_00e_7ac0

    ld hl, $9800
    ld de, $01b0
    add hl, de
    call Call_00e_7eb8

jr_00e_7ac0:
    ld a, [$cc89]
    bit 0, a
    jr nz, jr_00e_7ad1

    ld hl, $9800
    ld de, $01b2
    add hl, de
    call Call_00e_7eb8

jr_00e_7ad1:
    ld a, [$cc89]
    bit 1, a
    jr nz, jr_00e_7ae2

    ld hl, $9800
    ld de, $01b4
    add hl, de
    call Call_00e_7eb8

jr_00e_7ae2:
    ld a, [$cc89]
    bit 2, a
    jr nz, jr_00e_7af3

    ld hl, $9800
    ld de, $01b6
    add hl, de
    call Call_00e_7eb8

jr_00e_7af3:
    ld a, [$cc89]
    bit 3, a
    jr nz, jr_00e_7b04

    ld hl, $9800
    ld de, $01b8
    add hl, de
    call Call_00e_7eb8

jr_00e_7b04:
    ld a, [$cc89]
    bit 4, a
    jr nz, jr_00e_7b15

    ld hl, $9800
    ld de, $01ba
    add hl, de
    call Call_00e_7eb8

jr_00e_7b15:
    ld a, [$cc8a]
    bit 0, a
    jr nz, jr_00e_7b26

    ld hl, $9800
    ld de, $01e2
    add hl, de
    call Call_00e_7eb8

jr_00e_7b26:
    ld a, [$cc8a]
    bit 1, a
    jr nz, jr_00e_7b37

    ld hl, $9800
    ld de, $01e4
    add hl, de
    call Call_00e_7eb8

jr_00e_7b37:
    ld a, [$cc8a]
    bit 2, a
    jr nz, jr_00e_7b48

    ld hl, $9800
    ld de, $01e6
    add hl, de
    call Call_00e_7eb8

jr_00e_7b48:
    ld a, [$cc8a]
    bit 3, a
    jr nz, jr_00e_7b59

    ld hl, $9800
    ld de, $01e8
    add hl, de
    call Call_00e_7eb8

jr_00e_7b59:
    ld a, [$cc8a]
    bit 4, a
    jr nz, jr_00e_7b6a

    ld hl, $9800
    ld de, $01ea
    add hl, de
    call Call_00e_7eb8

jr_00e_7b6a:
    ld a, [$cc8a]
    bit 5, a
    jr nz, jr_00e_7b7b

    ld hl, $9800
    ld de, $01ec
    add hl, de
    call Call_00e_7eb8

jr_00e_7b7b:
    ld a, [$cc8a]
    bit 6, a
    jr nz, jr_00e_7b8c

    ld hl, $9800
    ld de, $01ee
    add hl, de
    call Call_00e_7eb8

jr_00e_7b8c:
    ld a, [$cc8a]
    bit 7, a
    jr nz, jr_00e_7b9d

    ld hl, $9800
    ld de, $01f0
    add hl, de
    call Call_00e_7eb8

jr_00e_7b9d:
    ld a, [$cc8b]
    bit 0, a
    jr nz, jr_00e_7bae

    ld hl, $9800
    ld de, $01f2
    add hl, de
    call Call_00e_7eb8

jr_00e_7bae:
    ld a, [$cc8b]
    bit 1, a
    jr nz, jr_00e_7bbf

    ld hl, $9800
    ld de, $01f4
    add hl, de
    call Call_00e_7eb8

jr_00e_7bbf:
    ld a, [$cc8b]
    bit 2, a
    jr nz, jr_00e_7bd0

    ld hl, $9800
    ld de, $01f6
    add hl, de
    call Call_00e_7eb8

jr_00e_7bd0:
    ld a, [$cc8b]
    bit 3, a
    jr nz, jr_00e_7be1

    ld hl, $9800
    ld de, $01f8
    add hl, de
    call Call_00e_7eb8

jr_00e_7be1:
    ld a, [$cc8b]
    bit 4, a
    jr nz, jr_00e_7bf2

    ld hl, $9800
    ld de, $01fa
    add hl, de
    call Call_00e_7eb8

jr_00e_7bf2:
    ld a, [$cc8c]
    bit 0, a
    jr nz, jr_00e_7c03

    ld hl, $9800
    ld de, $0222
    add hl, de
    call Call_00e_7eb8

jr_00e_7c03:
    ld a, [$cc8c]
    bit 1, a
    jr nz, jr_00e_7c14

    ld hl, $9800
    ld de, $0224
    add hl, de
    call Call_00e_7eb8

jr_00e_7c14:
    ld a, [$cc8c]
    bit 2, a
    jr nz, jr_00e_7c25

    ld hl, $9800
    ld de, $0226
    add hl, de
    call Call_00e_7eb8

jr_00e_7c25:
    ld a, [$cc8c]
    bit 3, a
    jr nz, jr_00e_7c36

    ld hl, $9800
    ld de, $0228
    add hl, de
    call Call_00e_7eb8

jr_00e_7c36:
    ld a, [$cc8c]
    bit 4, a
    jr nz, jr_00e_7c47

    ld hl, $9800
    ld de, $022a
    add hl, de
    call Call_00e_7eb8

jr_00e_7c47:
    ld a, [$cc8c]
    bit 5, a
    jr nz, jr_00e_7c58

    ld hl, $9800
    ld de, $022c
    add hl, de
    call Call_00e_7eb8

jr_00e_7c58:
    ld a, [$cc8c]
    bit 6, a
    jr nz, jr_00e_7c69

    ld hl, $9800
    ld de, $022e
    add hl, de
    call Call_00e_7eb8

jr_00e_7c69:
    ld a, [$cc8c]
    bit 7, a
    jr nz, jr_00e_7c7a

    ld hl, $9800
    ld de, $0230
    add hl, de
    call Call_00e_7eb8

jr_00e_7c7a:
    ld a, [$cc8d]
    bit 0, a
    jr nz, jr_00e_7c8b

    ld hl, $9800
    ld de, $0232
    add hl, de
    call Call_00e_7eb8

jr_00e_7c8b:
    ld a, [$cc8d]
    bit 1, a
    jr nz, jr_00e_7c9c

    ld hl, $9800
    ld de, $0234
    add hl, de
    call Call_00e_7eb8

jr_00e_7c9c:
    ld a, [$cc8d]
    bit 2, a
    jr nz, jr_00e_7cad

    ld hl, $9800
    ld de, $0236
    add hl, de
    call Call_00e_7eb8

jr_00e_7cad:
    ld a, [$cc8d]
    bit 3, a
    jr nz, jr_00e_7cbe

    ld hl, $9800
    ld de, $0238
    add hl, de
    call Call_00e_7eb8

jr_00e_7cbe:
    ld a, [$cc8d]
    bit 4, a
    jr nz, jr_00e_7ccf

    ld hl, $9800
    ld de, $023a
    add hl, de
    call Call_00e_7eb8

jr_00e_7ccf:
    ld a, [$cc8e]
    bit 0, a
    jr nz, jr_00e_7ce0

    ld hl, $9800
    ld de, $0262
    add hl, de
    call Call_00e_7eb8

jr_00e_7ce0:
    ld a, [$cc8e]
    bit 1, a
    jr nz, jr_00e_7cf1

    ld hl, $9800
    ld de, $0264
    add hl, de
    call Call_00e_7eb8

jr_00e_7cf1:
    ld a, [$cc8e]
    bit 2, a
    jr nz, jr_00e_7d02

    ld hl, $9800
    ld de, $0266
    add hl, de
    call Call_00e_7eb8

jr_00e_7d02:
    ld a, [$cc8e]
    bit 3, a
    jr nz, jr_00e_7d13

    ld hl, $9800
    ld de, $0268
    add hl, de
    call Call_00e_7eb8

jr_00e_7d13:
    ld a, [$cc8e]
    bit 4, a
    jr nz, jr_00e_7d24

    ld hl, $9800
    ld de, $026a
    add hl, de
    call Call_00e_7eb8

jr_00e_7d24:
    ld a, [$cc8e]
    bit 5, a
    jr nz, jr_00e_7d35

    ld hl, $9800
    ld de, $026c
    add hl, de
    call Call_00e_7eb8

jr_00e_7d35:
    ld a, [$cc8e]
    bit 6, a
    jr nz, jr_00e_7d46

    ld hl, $9800
    ld de, $026e
    add hl, de
    call Call_00e_7eb8

jr_00e_7d46:
    ld a, [$cc8e]
    bit 7, a
    jr nz, jr_00e_7d57

    ld hl, $9800
    ld de, $0270
    add hl, de
    call Call_00e_7eb8

jr_00e_7d57:
    ld a, [$cc8f]
    bit 0, a
    jr nz, jr_00e_7d68

    ld hl, $9800
    ld de, $0272
    add hl, de
    call Call_00e_7eb8

jr_00e_7d68:
    ld a, [$cc8f]
    bit 1, a
    jr nz, jr_00e_7d79

    ld hl, $9800
    ld de, $0274
    add hl, de
    call Call_00e_7eb8

jr_00e_7d79:
    ld a, [$cc8f]
    bit 2, a
    jr nz, jr_00e_7d8a

    ld hl, $9800
    ld de, $0276
    add hl, de
    call Call_00e_7eb8

jr_00e_7d8a:
    ld a, [$cc8f]
    bit 3, a
    jr nz, jr_00e_7d9b

    ld hl, $9800
    ld de, $0278
    add hl, de
    call Call_00e_7eb8

jr_00e_7d9b:
    ld a, [$cc8f]
    bit 4, a
    jr nz, jr_00e_7dac

    ld hl, $9800
    ld de, $027a
    add hl, de
    call Call_00e_7eb8

jr_00e_7dac:
    ld a, [$cc90]
    bit 0, a
    jr nz, jr_00e_7dbd

    ld hl, $9800
    ld de, $02a2
    add hl, de
    call Call_00e_7eb8

jr_00e_7dbd:
    ld a, [$cc90]
    bit 1, a
    jr nz, jr_00e_7dce

    ld hl, $9800
    ld de, $02a4
    add hl, de
    call Call_00e_7eb8

jr_00e_7dce:
    ld a, [$cc90]
    bit 2, a
    jr nz, jr_00e_7ddf

    ld hl, $9800
    ld de, $02a6
    add hl, de
    call Call_00e_7eb8

jr_00e_7ddf:
    ld a, [$cc90]
    bit 3, a
    jr nz, jr_00e_7df0

    ld hl, $9800
    ld de, $02a8
    add hl, de
    call Call_00e_7eb8

jr_00e_7df0:
    ld a, [$cc90]
    bit 4, a
    jr nz, jr_00e_7e01

    ld hl, $9800
    ld de, $02aa
    add hl, de
    call Call_00e_7eb8

jr_00e_7e01:
    ld a, [$cc90]
    bit 5, a
    jr nz, jr_00e_7e12

    ld hl, $9800
    ld de, $02ac
    add hl, de
    call Call_00e_7eb8

jr_00e_7e12:
    ld a, [$cc90]
    bit 6, a
    jr nz, jr_00e_7e23

    ld hl, $9800
    ld de, $02ae
    add hl, de
    call Call_00e_7eb8

jr_00e_7e23:
    ld a, [$cc90]
    bit 7, a
    jr nz, jr_00e_7e34

    ld hl, $9800
    ld de, $02b0
    add hl, de
    call Call_00e_7eb8

jr_00e_7e34:
    ld a, [$cc91]
    bit 0, a
    jr nz, jr_00e_7e45

    ld hl, $9800
    ld de, $02b2
    add hl, de
    call Call_00e_7eb8

jr_00e_7e45:
    ld a, [$cc91]
    bit 1, a
    jr nz, jr_00e_7e56

    ld hl, $9800
    ld de, $02b4
    add hl, de
    call Call_00e_7eb8

jr_00e_7e56:
    ld a, [$cc91]
    bit 2, a
    jr nz, jr_00e_7e67

    ld hl, $9800
    ld de, $02b6
    add hl, de
    call Call_00e_7eb8

jr_00e_7e67:
    ld a, [$cc91]
    bit 3, a
    jr nz, jr_00e_7e78

    ld hl, $9800
    ld de, $02b8
    add hl, de
    call Call_00e_7eb8

jr_00e_7e78:
    ld a, [$cc91]
    bit 4, a
    jr nz, jr_00e_7e89

    ld hl, $9800
    ld de, $02ba
    add hl, de
    call Call_00e_7eb8

jr_00e_7e89:
    ld a, [$cc79]
    cp $03
    ret nz

    call Call_00e_7f3d
    call Call_00e_7f53
    ld a, [$ba0b]
    cp $ff
    jr z, jr_00e_7ead

    ld a, [$cc7c]
    bit 6, a
    ret z

    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_00e_7f1a
    ret


jr_00e_7ead:
    ld hl, $9800
    ld de, $002e
    add hl, de
    call Call_00e_7ef7
    ret


Call_00e_7eb8:
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


Call_00e_7ef7:
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


Call_00e_7f1a:
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


Call_00e_7f3d:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba08]
    or a
    ret nz

    ld hl, $9800
    ld de, $0258
    add hl, de
    call Call_00e_7f69
    ret


Call_00e_7f53:
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$ba09]
    or a
    ret nz

    ld hl, $9800
    ld de, $02d4
    add hl, de
    call Call_00e_7f69
    ret


Call_00e_7f69:
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


Call_00e_7fb2:
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
    call Call_00e_7fe4
    ret


Call_00e_7fcb:
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
    call Call_00e_7fe4
    ret


Call_00e_7fe4:
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
