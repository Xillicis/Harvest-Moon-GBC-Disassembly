; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[MBC3SRamBank], BANK[$1]

; OBJ Color Palette data
    db $01
; 0x4001
    RGB 28,19,19, 4,4,0, 18,13,14, 31,27,17
; 0x4009
    RGB 28,19,19, 4,4,0, 22,11,3, 31,27,17
; 0x4011
    RGB 28,19,19, 4,4,0, 31,11,1, 31,27,17

    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    push hl
    push af
    ld l, $8d
    ld h, $78
    ld a, $1f
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $4001
    call SyncLoadSpritePalette5
    ld hl, $4009
    call SyncLoadSpritePalette7
    ld hl, $4011
    call SyncLoadSpritePalette3
    ld a, [sCurrentSeason]
    ld [$c0bd], a
    ld a, [sCurrentDayCounter]
    or a
    jr nz, jr_001_4062

    ld a, [$b882]
    cp $06
    jr nc, jr_001_4062

    ld a, [$c0bd]
    or a
    jr z, jr_001_405d

    dec a
    jr jr_001_405f

jr_001_405d:
    ld a, $03

jr_001_405f:
    ld [$c0bd], a

jr_001_4062:
    ld a, [$c0bd]
    cp $01
    jr z, jr_001_4089

    cp $02
    jr z, jr_001_40a1

    cp $03
    jr z, jr_001_40b9

    ld hl, $4758
    ld c, $0b
    ld de, $8800
    call Call_000_31a0
; loads the dirt tile into the BGMap1 I think...
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call Call_000_31a0
    jr jr_001_40cf

jr_001_4089:
    ld hl, $5457
    ld c, $0b
    ld de, $8800
    call Call_000_31a0
    ld hl, $4c1a
    ld c, $0b
    ld de, $9000
    call Call_000_31a0
    jr jr_001_40cf

jr_001_40a1:
    ld hl, $6150
    ld c, $0b
    ld de, $8800
    call Call_000_31a0
    ld hl, $59fa
    ld c, $0b
    ld de, $9000
    call Call_000_31a0
    jr jr_001_40cf

jr_001_40b9:
    ld hl, $6dc8
    ld c, $0b
    ld de, $8800
    call Call_000_31a0
    ld hl, $6612
    ld c, $0b
    ld de, $9000
    call Call_000_31a0

jr_001_40cf:
    ld hl, $7195
    ld c, $14
    ld de, $8000
    call Call_000_31a0
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
    call Call_000_31a0
    jr jr_001_4103

jr_001_40f8:
    ld hl, $76c1
    ld c, $13
    ld de, $81d0
    call Call_000_31a0

jr_001_4103:
    ld a, [sCatOrDog]
    cp $01
    jr z, jr_001_4122

    ld hl, $79a1
    ld c, $13
    ld de, $85a0
    call Call_000_31a0
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
    ld [$cb81], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld a, $1d
    ld [$cb4e], a
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
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb89], a
    call Call_001_6ce4
    call Call_001_7336
    call Call_000_10f5
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
    ld [$cb81], a
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
    ld [$c0a2], a
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
    ld a, [$b8a0]
    cp $01
    jr z, jr_001_41da

    cp $03
    jr z, jr_001_41da

    cp $02
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
    call Call_000_36f4
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
    ld a, [$c90f]
    or a
    ret z

    ld a, $01
    ld [$cb81], a
    ld a, [$c911]
    dec a
    ld [$c911], a
    jr z, jr_001_42ae

    cp $13
    jr nc, jr_001_423d

    pop hl
    ret


jr_001_423d:
    call Call_001_67d1
    ld a, [$c90f]
    cp $05
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

    ld a, [$c911]
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
    ld a, [$c90f]
    ld b, a
    ld a, [$c0a7]
    add b
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
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
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    pop hl
    ret


Jump_001_42e8:
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
    ld [$cb84], a
    ld [$cb82], a
    pop hl
    ld a, [$b8e1]
    or a
    ret z

    ld a, [$cb8b]
    or a
    jr z, jr_001_431c

    xor a
    ld [$b8e1], a
    ld [$cb8b], a
    ret


jr_001_431c:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Jump_001_4335:
    ld a, $1d
    ld [$cb4f], a
    ld a, $1c
    ld [$cb50], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld a, $05
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    pop hl
    ret


Jump_001_4354:
    ld a, $01
    ld [$ccb8], a
    ld a, $0f
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    ld [$c800], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    ld [$c800], a
    ld [$c620], a
    ld [wHeldObject], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb8b], a
    ld [$cb89], a
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
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    ld [$c800], a
    ld [$c620], a
    ld [wHeldObject], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb8b], a
    ld [$cb89], a
    pop hl
    ret


Jump_001_43d1:
    ld a, $00
    ld [$ccb8], a
    ld a, $0f
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$c7a0], a
    pop hl
    ret


Call_001_43f3:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    call Call_001_4224
    call Call_001_49eb
    call Call_001_4459
    call Call_000_0e54
    ldh a, [$ff8b]
    and $01
    jr z, jr_001_441e

    call Call_001_527d
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

    ld a, [$c912]
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
    cp $00
    jr z, jr_001_4485

    cp $01
    jr z, jr_001_447d

    cp $02
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
    cp $00
    jr z, jr_001_44b0

    cp $01
    jr z, jr_001_44a8

    cp $02
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
    ld a, [$cb84]
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
    ld a, $01
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

    ld a, $01
    ld [$cb82], a
    ret


Jump_001_453f:
    ld a, [$cb84]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, $00
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
    ld a, [$cb89]
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
    ld a, [$cb84]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, $03
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
    ld a, [$cb89]
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
    ld a, [$cb84]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, $01
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
    ld a, [$cb89]
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
    ld a, [$cb84]
    or a
    jp nz, Jump_001_46a1

    call Call_001_7374
    ld a, $02
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
    ld a, [$cb89]
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
    ld a, [$c603]
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
    ld a, $00
    jr jr_001_46dc

jr_001_46d2:
    ld a, $01
    jr jr_001_46dc

jr_001_46d6:
    ld a, $02
    jr jr_001_46dc

jr_001_46da:
    ld a, $03

jr_001_46dc:
    ld hl, wPlayerFacingDirection
    ld [hl], a
    call Call_001_7374

jr_001_46e3:
    ld a, [wPlayerFacingDirection]
    cp $00
    jp z, Jump_001_479a

    cp $01
    jp z, Jump_001_483c

    cp $02
    jp z, Jump_001_48e1

    ld a, [$cb8b]
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
    ld a, [$cb89]
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

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_4745

    cp $0f
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
    ld a, [$cb89]
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
    ld a, [$cb8b]
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
    ld a, [$cb89]
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

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_47ea

    cp $0f
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
    ld a, [$cb89]
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
    ld a, [$cb8b]
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
    ld a, [$cb89]
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

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_488c

    cp $0f
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
    ld a, [$cb89]
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
    ld a, [$cb8b]
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
    ld a, [$cb89]
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

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_001_4931

    cp $0f
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
    ld a, [$cb89]
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
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_001_4990

    ld a, [$cb34]
    and $01
    ret nz

jr_001_4990:
    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_682d
    ret


Jump_001_499d:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_001_49aa

    ld a, [$cb34]
    and $01
    ret nz

jr_001_49aa:
    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_689f
    ret


Jump_001_49b7:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_001_49c4

    ld a, [$cb34]
    and $01
    ret nz

jr_001_49c4:
    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_67d1
    ret


Jump_001_49d1:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_001_49de

    ld a, [$cb34]
    and $01
    ret nz

jr_001_49de:
    call Call_000_14f9
    ld a, [$cb34]
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
    cp $00
    jp z, Jump_001_4a28

    cp $01
    jp z, Jump_001_4a32

    cp $02
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


    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102

Jump_001_4a6a:
    ld a, [$cb8b]
    or a
    ret nz

    ld a, [$b8ea]
    cp $01
    ret z

    call Call_001_4a92
    ld a, $01
    ld [$cb84], a
    xor a
    ld [$cb82], a
    ld a, $10
    ld [$c912], a
    ld [$cb86], a
    ld a, [wPlayerFacingDirection]
    add $0c
    call Call_000_151d
    ret


Call_001_4a92:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_001_4aee

    cp $01
    jp z, Jump_001_4b39

    cp $02
    jp z, Jump_001_4b82

    ld hl, $c608
    ld bc, $0015
    call AddBCtoWordAtHL
    call Call_001_69ca
    ld hl, $c608
    ld bc, $ffeb
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_001_69ca
    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ret


jr_001_4aee:
    ld hl, $c608
    ld bc, $ffec
    call AddBCtoWordAtHL
    call Call_001_69d3
    ld hl, $c608
    ld bc, $0014
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_001_69d3
    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ret


Jump_001_4b39:
    ld hl, $c606
    ld bc, $0014
    call AddBCtoWordAtHL
    call Call_001_69dc
    ld hl, $c606
    ld bc, $ffec
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_001_69dc
    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4bc9

    ret


Jump_001_4b82:
    ld hl, $c606
    ld bc, $ffec
    call AddBCtoWordAtHL
    call Call_001_69e5
    ld hl, $c606
    ld bc, $0014
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4bc9

    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_001_69e5
    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4bc9

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4bc9

    ret


Jump_001_4bc9:
jr_001_4bc9:
    pop hl
    ret


Jump_001_4bcb:
    ld a, [wPlayerFacingDirection]
    cp $01
    jr z, jr_001_4be2

    cp $02
    jp z, Jump_001_4be2

    cp $00
    jp z, Jump_001_4cf5

    cp $03
    jp z, Jump_001_4e03

    ret


Jump_001_4be2:
jr_001_4be2:
    ld d, $00
    ld e, $18
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4c6e

    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld hl, $c608
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld hl, $c608
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4c6e

    ld a, [wPlayerFacingDirection]
    ld [$c78d], a
    add $00
    call Call_000_15fd
    ld a, $00
    ld [wPlayerFacingDirection], a
    jp Jump_001_4f0e


jr_001_4c6e:
    ld d, $00
    ld e, $e8
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    ret nz

    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c608
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c608
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, $00
    ld [$c78d], a
    add $00
    call Call_000_15fd
    ld a, $03
    ld [wPlayerFacingDirection], a
    jp Jump_001_4f0e


Jump_001_4cf5:
    ld d, $18
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4d7e

    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld hl, $c606
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld hl, $c606
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4d7e

    ld a, $02
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e


jr_001_4d7e:
    ld d, $e8
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    ret nz

    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, $01
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e


Jump_001_4e03:
    ld d, $e8
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4e8c

    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld hl, $c606
    ld bc, $fff0
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0010
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld hl, $c606
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_001_4e8c

    ld a, $01
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_001_4f0e


jr_001_4e8c:
    ld d, $18
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    ret nz

    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $0010
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff0
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $0018
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $ffe8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, $02
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd

Jump_001_4f0e:
    xor a
    ld [$cb84], a
    ld [$cb82], a
    ld a, $01
    ld [$c780], a
    xor a
    ld [$c78c], a
    ld [$c792], a
    ld a, $40
    ld [$c791], a
    ld a, [$c606]
    ld [$c786], a
    ld a, [$c607]
    ld [$c787], a
    ld a, [$c608]
    ld [$c788], a
    ld a, [$c609]
    ld [$c789], a
    ld a, $18
    ld [$cb85], a
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    add $68
    call Call_000_151d
    pop hl
    ret


Jump_001_4f50:
    ld a, $01
    ld [$cb8b], a
    xor a
    ld [$c7a0], a
    ld [$cb89], a
    ld hl, $4f6d
    ld a, [sCatOrDog]
    cp $01
    jr z, jr_001_4f69

    ld hl, $4f75

jr_001_4f69:
    call SyncLoadSpritePalette2
    ret


    ld a, h
    ld c, [hl]
    add h
    nop
    ccf
    ld [bc], a
    ld a, a
    ld b, a
    ld a, h
    ld c, [hl]
    add h
    nop
    sbc h
    add hl, bc
    ld a, a
    ld b, a

Jump_001_4f7d:
    ld a, [wPlayerFacingDirection]
    cp $01
    jr z, jr_001_4f94

    cp $02
    jp z, Jump_001_502c

    cp $00
    jp z, Jump_001_5189

    cp $03
    jp z, Jump_001_50ba

    ret


jr_001_4f94:
    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $fff2
    call AddBCtoWordAtHL
    call Call_000_150b
    ld hl, $c606
    ld bc, $000e
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [$c7ad], a
    add $00
    call Call_000_1622
    ld a, [$c606]
    sub $10
    ld [$c7a6], a
    ld a, [$c607]
    sbc $00
    ld [$c7a7], a
    ld a, [$c608]
    ld [$c7a8], a
    ld a, [$c609]
    ld [$c7a9], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5264
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_001_5022

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_001_5022:
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_163d
    ret


Jump_001_502c:
    ld hl, $c606
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $000e
    call AddBCtoWordAtHL
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff2
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [$c7ad], a
    add $00
    call Call_000_1622
    ld a, [$c606]
    add $10
    ld [$c7a6], a
    ld a, [$c607]
    adc $00
    ld [$c7a7], a
    ld a, [$c608]
    ld [$c7a8], a
    ld a, [$c609]
    ld [$c7a9], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5264
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_001_5022

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_001_50ba:
    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld hl, $c608
    ld bc, $fff2
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $000e
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld hl, $c608
    ld bc, $ffe8
    call AddBCtoWordAtHL
    call Call_000_1502
    ld hl, $c608
    ld bc, $0018
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $02
    ret nz

    ld a, [wPlayerFacingDirection]
    ld [$c7ad], a
    add $00
    call Call_000_1622
    ld a, [$c608]
    sub $18
    ld [$c7a8], a
    ld a, [$c609]
    sbc $00
    ld [$c7a9], a
    ld a, [$c606]
    ld [$c7a6], a
    ld a, [$c607]
    ld [$c7a7], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5264
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_001_5022

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_001_5189:
    ld hl, $c608
    ld bc, $0004
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fffc
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_51b8

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_51b8

    ret


jr_001_51b8:
    ld hl, $c608
    ld bc, $0008
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff8
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_51e7

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_51e7

    ret


jr_001_51e7:
    ld hl, $c608
    ld bc, $000e
    call AddBCtoWordAtHL
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff2
    call AddBCtoWordAtHL
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_5216

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_5216

    ret


jr_001_5216:
    ld a, [wPlayerFacingDirection]
    ld [$c7ad], a
    add $00
    call Call_000_1622
    ld a, [$c608]
    add $10
    ld [$c7a8], a
    ld a, [$c609]
    adc $00
    ld [$c7a9], a
    ld a, [$c606]
    ld [$c7a6], a
    ld a, [$c607]
    ld [$c7a7], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5264
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_001_5022

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Call_001_5264:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_001_527d:
    ld a, [wHeldObject]
    or a
    jr nz, jr_001_529f

    ld a, [$cb82]
    or a
    jp nz, Jump_001_4a6a

    ld a, [$cb84]
    or a
    jp nz, Jump_001_4bcb

    ld a, [$cb89]
    or a
    jp nz, Jump_001_4f50

    ld a, [$cb8b]
    or a
    jp nz, Jump_001_4f7d

jr_001_529f:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp nz, UseItem

    ld a, [$c0a7]
    cp $02
    ret z

    ld a, [wHeldObject]
    or a
    jp nz, Jump_001_56a2

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $6a
    jr c, .checkForBushTile

    cp $70
    jr nc, .checkForBushTile

    ld a, [$cb34]
    cp $81
    jr nz, .checkForBushTile

    jp Jump_001_5517

.checkForBushTile
    ld a, [wRightOrUpSideFacingTileID]
    cp BUSH_TILE
    jr nz, .checkForStoneTile

    push hl
    push af
    ld l, $b3
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, BUSH
    ld [wHeldObject], a
    ld a, $18
    call $16d1
    xor a
    ld [wCollisionNoMovement], a
    ldh [$ffa4], a
    jp Jump_001_5458

.checkForStoneTile
    cp STONE_TILE
    jr nz, .checkForFencePostTile

    push hl
    push af
    ld l, $c8
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, STONE
    ld [wHeldObject], a
    ld a, $0f
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_001_5458

.checkForFencePostTile
    cp FENCE_POST_TILE
    jr nz, jr_001_5341

    push hl
    push af
    ld l, $cf
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, FENCE_POST
    ld [wHeldObject], a
    ld a, $17
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_001_5458

jr_001_5341:
    ld a, [$cb34]
    and $40
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $60
    jr z, jr_001_536f
    cp $88
    jr z, jr_001_538d
    cp FULLY_GROWN_TURNIP_TILE
    jr z, PickUpTurnip
    cp FULLY_GROWN_POTATO_TILE
    jr z, PickUpPotato
    cp $b8
    jp z, Jump_001_53e6
    cp $cc
    jp z, Jump_001_5403
    cp $dc
    jp z, Jump_001_5420
    cp $f0
    jp z, Jump_001_543d
    ret

jr_001_536f:
    push hl
    push af
    ld l, $dd
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $10
    ld [wHeldObject], a
    ld a, $1b
    call $16d1
    ld a, $02
    ldh [$ffa4], a
    jp Jump_001_5458

jr_001_538d:
    push hl
    push af
    ld l, $e4
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $11
    ld [wHeldObject], a
    ld a, $1a
    call $16d1
    ld a, $04
    ldh [$ffa4], a
    jp Jump_001_5458

PickUpTurnip:
    push hl
    push af
    ld l, $eb
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $12
    ld [wHeldObject], a
    ld a, $1f
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jp Jump_001_5458

PickUpPotato:
    push hl
    push af
    ld l, $f2
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, POTATO
    ld [wHeldObject], a
    ld a, $21
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_53e6:
    push hl
    push af
    ld l, $f9
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $14
    ld [wHeldObject], a
    ld a, $6a
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_5403:
    push hl
    push af
    ld l, $00
    ld h, $50
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $15
    ld [wHeldObject], a
    ld a, $6b
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_5420:
    push hl
    push af
    ld l, $dd
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $16
    ld [wHeldObject], a
    ld a, $6c
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5458

Jump_001_543d:
    push hl
    push af
    ld l, $ac
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $17
    ld [wHeldObject], a
    ld a, $69
    call $16d1
    ld a, $03
    ldh [$ffa4], a

Jump_001_5458:
jr_001_5458:
    ld a, $35
    call Call_000_25ce
    ldh a, [$ffa4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5557
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [$cb35]
    ld h, a
    ld a, [$cb36]
    ld l, a
    ldh a, [$ffa4]
    call Call_000_1fb5
    ld [hl+], a
    ldh a, [$ffa5]
    call Call_000_1fb5
    ld [hl+], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr nz, jr_001_54a5

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $04
    call Call_000_195e
    jr jr_001_54e0

jr_001_54a5:
    cp $01
    jr nz, jr_001_54bc

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $ec
    call Call_000_195e
    jr jr_001_54e0

jr_001_54bc:
    cp $02
    jr nz, jr_001_54d3

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $0c
    call Call_000_195e
    jr jr_001_54e0

jr_001_54d3:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $e8
    call Call_000_195e

jr_001_54e0:
    call SyncToBlankPeriod
    ldh a, [$ffa6]
    call Call_000_1fb5
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa7]
    call Call_000_1fb5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call SyncToBlankPeriod
    ldh a, [$ffa8]
    call Call_000_1fb5
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa9]
    call Call_000_1fb5
    ld [hl], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    ret


Jump_001_5517:
    ld a, [$b938]
    ld b, a
    ld a, [$b939]
    or b
    ret z

    push hl
    push af
    ld l, $cf
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $03
    ld [wHeldObject], a
    ld a, $17
    call $16d1
    xor a
    ld [wCollisionNoMovement], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    ld hl, $b938
    ld bc, $fffe
    call AddBCtoWordAtHL
    call Call_000_0f73
    ld a, $35
    call Call_000_25ce
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1000
    db $10
    db $10
    stop
    nop
    ld e, h
    ld b, c
    daa
    jr z, jr_001_55a3

    jr c, jr_001_556e

jr_001_556e:
    nop
    db $ec
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add d
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop

Call_001_557f:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    ld a, [$cb8b]
    or a
    ret nz

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [$cb56]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$cb34]
    cp $81
    ret nz

jr_001_55a3:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    jr z, jr_001_55c0

    cp $42
    jr z, jr_001_55cb

    cp $43
    jr z, jr_001_55d6

    cp $44
    jr z, jr_001_55e1

    cp $45
    jr z, jr_001_55ec

    cp $d6
    jp z, Jump_001_5647

    ret


jr_001_55c0:
    ld a, $19
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_55cb:
    ld a, $18
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_55d6:
    ld a, $1a
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_55e1:
    ld a, $1b
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_55ec:
    ld a, [$b890]
    cp $01
    jr z, jr_001_5603

    ld a, [$c800]
    or a
    ret nz

    ld a, $1c
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_001_5603:
    xor a
    ld [$b890], a
    ld a, $32
    call Call_000_152a
    ld a, $02
    ld [$c80d], a
    ld a, [$c606]
    sub $60
    ld [$c806], a
    ld a, [$c607]
    sbc $00
    ld [$c807], a
    ld a, [$c608]
    ld [$c808], a
    ld a, [$c609]
    sbc $00
    ld [$c809], a
    ld a, $01
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [$c912], a
    ld a, $00
    ld [$c813], a
    ret


Jump_001_5647:
    ld a, [$b891]
    or a
    ret z

    xor a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, $1a
    call Call_000_152a
    ld a, $02
    ld [$c80d], a
    ld a, [$c606]
    sub $60
    ld [$c806], a
    ld a, [$c607]
    sbc $00
    ld [$c807], a
    ld a, [$c608]
    ld [$c808], a
    ld a, [$c609]
    sbc $00
    ld [$c809], a
    ld a, $02
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [$c912], a
    ld a, $00
    ld [$c813], a
    ld a, $0a
    call Call_000_0f47
    ret


Jump_001_56a2:
    call Call_001_56a6
    ret

Call_001_56a6:
    ld a, [wHeldObject]
    rst $00

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


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [$c912], a
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
    ld [$c620], a
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
    ld [$c912], a
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
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ret


Jump_001_5878:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld hl, $b938
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
    ld a, [$c7a0]
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
    ld a, [$c7a6]
    ld l, a
    ld a, [$c7a7]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c7a8]
    ld l, a
    ld a, [$c7a9]
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


    ld a, [$c7a8]
    add $00
    ld l, a
    ld a, [$c7a9]
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
    ld a, [$c7a6]
    add $00
    ld l, a
    ld a, [$c7a7]
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
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld a, $32
    call $16d1
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_001_5bb3

    cp $03
    jr z, jr_001_5bb3

    pop hl
    ret


jr_001_5bb3:
    ld hl, $c606
    ld bc, $000a
    call AddBCtoWordAtHL
    call Call_001_69ee
    ld hl, $c606
    ld bc, $fff6
    call AddBCtoWordAtHL
    ld a, [de]
    cp $0e
    jr z, jr_001_5bea

    ld hl, $c606
    ld bc, $fff6
    call AddBCtoWordAtHL
    call Call_001_69ee
    ld hl, $c606
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
    ld [$c912], a
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
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_001_5b54
    ld a, $08
    ld [$c912], a
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
    ld [wRightOrUpSideFacingTileID], a
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
    cp $00
    jr z, jr_001_5ea2

    cp $01
    jr z, jr_001_5eb5

    cp $02
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
    ld a, [$b882]
    cp $11
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
    ld a, [$b882]
    cp $11
    ret nc

    ld a, [wHeldObject]
    call Call_000_1cff
    ret


UseItem:
    push hl
    push af
    ld l, $f4
    ld h, $6d
    ld a, $20
; calls an almost identitcal function that does something with colors or graphics maybe?
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp SICKLE
    jp z, UseSickle
    cp HOE
    jp z, UseHoe
    cp HAMMER
    jp z, UseHammer
    cp AX
    jp z, UseAx
    cp SUPER_SICKLE
    jp z, UseSuperSickle
    cp SUPER_HOE
    jp z, UseSuperHoe
    cp SUPER_HAMMER
    jp z, UseSuperHammer
    cp SUPER_AX
    jp z, UseSuperAx
    cp BRUSH
    jp z, UseBrush
    cp WATERING_CAN
    jp z, UseWateringCan
    cp MILKER
    jp z, UseMilker
    cp COW_MEDICINE
    jp z, UseMedicine
    cp P_MEDICINE
    jp z, UseMedicine
    cp M_POTION
    jp z, UseMedicine
    cp COW_BELL
    jp z, UseCowBell
    cp $53
    jp z, Jump_001_631d
    cp $54
    jp z, Jump_001_632d
    cp SPRINKLER
    jp z, UseSprinkler
    cp COW_FEED
    jp z, UseAnimalFeed
    cp CHICKEN_FEED
    jp z, UseAnimalFeed
    cp GRASS_SEEDS
    jp z, UseGrassSeeds
    cp TOMATO_SEEDS
    jp z, UseTomatoSeeds
    cp CORN_SEEDS
    jp z, UseCornSeeds
    cp TURNIP_SEEDS
    jp z, UseTurnipSeeds
    cp POTATO_SEEDS
    jp z, UsePotatoSeeds
    cp EGGPLANT_SEEDS
    jp z, UseEggplantSeeds
    cp PEANUT_SEEDS
    jp z, Jump_001_64a6
    cp CARROT_SEEDS
    jp z, Jump_001_64d0
    cp BROCOLLI_SEEDS
    jp z, Jump_001_64fa
    ret

UseSickle:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $06
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $02
    jr z, jr_001_603a

    ld a, [$cb42]
    and $40
    ret z

    ld a, [$cb41]
    ld b, a
    and $f0
    cp $49
    jr z, jr_001_6040
    cp $50
    jr z, jr_001_6046
    cp $60
    jr z, jr_001_6046
    cp $70
    jr z, jr_001_6050
    cp $80
    jr z, jr_001_6050
    cp $90
    jr z, jr_001_605a
    cp $a0
    jr z, jr_001_6064
    cp $b0
    jr z, jr_001_606e
    cp $c0
    jr z, jr_001_6078
    cp $d0
    jr z, jr_001_6082
    cp $e0
    jr z, jr_001_608c
    ret

jr_001_603a:
    ld a, $01
    ld [$cb45], a
    ret

jr_001_6040:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_6046:
    ld a, b
    cp $54
    ret c

    ld a, $03
    ld [$cb45], a
    ret

jr_001_6050:
    ld a, b
    cp $76
    ret c

    ld a, $04
    ld [$cb45], a
    ret

jr_001_605a:
    ld a, b
    cp $94
    ret c

    ld a, $05
    ld [$cb45], a
    ret

jr_001_6064:
    ld a, b
    cp $a6
    ret c

    ld a, $06
    ld [$cb45], a
    ret

jr_001_606e:
    ld a, b
    cp $b4
    ret c

    ld a, $07
    ld [$cb45], a
    ret

jr_001_6078:
    ld a, b
    cp $c6
    ret c

    ld a, $08
    ld [$cb45], a
    ret

jr_001_6082:
    ld a, b
    cp $d6
    ret c

    ld a, $09
    ld [$cb45], a
    ret

jr_001_608c:
    ld a, b
    cp $e4
    ret c

    ld a, $0a
    ld [$cb45], a
    ret

UseHoe:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $07
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseHammer:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $08
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_60d7

    ld a, $01
    ld [$cb45], a
    ret


jr_001_60d7:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_60eb
    cp $05
    jr z, jr_001_60f1
    cp $06
    jr z, jr_001_60f7
    cp $07
    jr z, jr_001_60fd
    ret

jr_001_60eb:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_60f1:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_60f7:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_60fd:
    ld a, $05
    ld [$cb45], a
    ret

UseAx:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $09
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z
    ld a, [$cb41]
    cp $08
    jr z, jr_001_6135
    cp $09
    jr z, jr_001_613b
    cp $0a
    jr z, jr_001_6141
    cp $0b
    jr z, jr_001_6147
    ret

jr_001_6135:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_613b:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_6141:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_6147:
    ld a, $05
    ld [$cb45], a
    ret

UseSuperSickle:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $84
    call Call_000_151d
    ld a, $50
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSuperHoe:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0d
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSprinkler:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $85
    call Call_000_151d
    ld a, $56
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret

UseSuperHammer:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0f
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_61be
    ld a, $01
    ld [$cb45], a
    ret

jr_001_61be:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_61d2
    cp $05
    jr z, jr_001_61d8
    cp $06
    jr z, jr_001_61de
    cp $07
    jr z, jr_001_61e4
    ret

jr_001_61d2:
    ld a, $02
    ld [$cb45], a
    ret

jr_001_61d8:
    ld a, $03
    ld [$cb45], a
    ret

jr_001_61de:
    ld a, $04
    ld [$cb45], a
    ret

jr_001_61e4:
    ld a, $05
    ld [$cb45], a
    ret

UseSuperAx:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0e
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_001_6524
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_001_621c

    cp $09
    jr z, jr_001_6222

    cp $0a
    jr z, jr_001_6228

    cp $0b
    jr z, jr_001_622e

    ret


jr_001_621c:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_6222:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_6228:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_622e:
    ld a, $05
    ld [$cb45], a
    ret


UseBrush:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0b
    call RST_TableJumpBankSwitch
    ld a, $64
    ld [$c912], a
    ret


UseWateringCan:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0c
    call RST_TableJumpBankSwitch
    ld a, [sCurrentWaterInWateringCan]
    or a
    jr z, .noWater

    ld a, $56 ; animation ID?
    ld [$c912], a
    jr jr_001_6260

.noWater
    ld a, $10 ; no water animation ID?
    ld [$c912], a

jr_001_6260:
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_001_6285

    cp $01
    jr z, jr_001_6294

    cp $02
    jp z, Jump_001_62a3

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

jr_001_6285:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

jr_001_6294:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    add hl, bc
    ld a, [hl]
    jr CheckForFillingWateringCan

; Seems like it gets the tile type. Something like what we are watering...
Jump_001_62a3: ; 01x62a3
    ld a, [$cb48] ; contains the sram address for the tile we are looking at I think...
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    add hl, bc
    ld a, [hl]

CheckForFillingWateringCan:
; look at tiles between $20 and $38 (probably all types of water tiles).
    cp $20
    ret c

    cp $39
    ret nc

    ld a, $19
    call RST_TableJumpBankSwitch
    ld a, $36
    ld [$c912], a
    ret


UseMilker:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $14
    call RST_TableJumpBankSwitch
    ld a, $32
    ld [$c912], a
    ret


UseMedicine:
    ld a, $17
    call RST_TableJumpBankSwitch
    ld a, $40
    ld [$c912], a
    ld a, $5a
    call $16d1
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp COW_MEDICINE
    jr z, .usedUpCowMedicine
    cp M_POTION
    jr z, .usedUpMPotion
    xor a
    ld [sShedPMedicineFlag], a
    call Call_001_644c
    ret

.usedUpCowMedicine
    xor a
    ld [sShedCowMedicineFlag], a
    call Call_001_644c
    ret


.usedUpMPotion
    xor a
    ld [sShedMPotionFlag], a
    call Call_001_644c
    ret


UseCowBell:
    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $0a
    call RST_TableJumpBankSwitch
    ld a, $4c
    ld [$c912], a
    ret


Jump_001_631d:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $16
    call RST_TableJumpBankSwitch
    ld a, $35
    ld [$c912], a
    ret


Jump_001_632d:
    ld b, LARGE_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $69
    ld [$c912], a
    ld a, [$b88a]
    cp $03
    jr z, jr_001_634f

    ld a, [$b89f]
    cp $03
    ret z

    ld a, $01
    ld [$b89f], a
    ret


jr_001_634f:
    ld a, $02
    ld [$b89f], a
    ret


    ld b, MEDIUM_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $60
    ld [$c912], a
    ret

UseAnimalFeed:
    ld a, $18
    call RST_TableJumpBankSwitch
    ld a, $36
    call Call_000_25ce
    ld a, $5a
    ld [$c912], a
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_001_6395

    ld a, [sNumChickenFeed]
    dec a
    ld [sNumChickenFeed], a
    ret nz

    xor a
    ld [sChickenFeedFlag], a
    call Call_001_644c
    ret

jr_001_6395:
    ld a, [sNumCowFeed]
    dec a
    ld [sNumCowFeed], a
    ret nz

    xor a
    ld [sCowFeedFlag], a
    call Call_001_644c
    ret


UseGrassSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    xor a
    ld [$cb74], a
    ld a, [sNumGrassSeeds]
    dec a
    ld [sNumGrassSeeds], a
    or a
    ret nz

    ld [sShedGrassSeedsFlag], a
    call Call_001_644c
    ret


UseTomatoSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $01
    ld [$cb74], a
    ld a, [$b8d4]
    dec a
    ld [$b8d4], a
    or a
    ret nz

    ld [$b8b7], a
    call Call_001_644c
    ret


UseCornSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $02
    ld [$cb74], a
    ld a, [$b8d5]
    dec a
    ld [$b8d5], a
    or a
    ret nz

    ld [$b8b8], a
    call Call_001_644c
    ret


UseTurnipSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $03
    ld [$cb74], a
    ld a, [sNumTurnipSeeds]
    dec a
    ld [sNumTurnipSeeds], a
    or a
    ret nz

    ld [sShedTurnipSeedsFlag], a
    call Call_001_644c
    ret


Call_001_644c:
    ld a, $50
    ld [$cb8f], a
    ret


UsePotatoSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $04
    ld [$cb74], a
    ld a, [sNumPotatoSeeds]
    dec a
    ld [sNumPotatoSeeds], a
    or a
    ret nz

    ld [sShedPotatoSeedsFlag], a
    call Call_001_644c
    ret


UseEggplantSeeds:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $05
    ld [$cb74], a
    ld a, [$b8d6]
    dec a
    ld [$b8d6], a
    or a
    ret nz

    ld [$b8b9], a
    call Call_001_644c
    ret


Jump_001_64a6:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $06
    ld [$cb74], a
    ld a, [$b8d7]
    dec a
    ld [$b8d7], a
    or a
    ret nz

    ld [$b8ba], a
    call Call_001_644c
    ret


Jump_001_64d0:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $07
    ld [$cb74], a
    ld a, [$b8d8]
    dec a
    ld [$b8d8], a
    or a
    ret nz

    ld [$b8bb], a
    call Call_001_644c
    ret


Jump_001_64fa:
    ld b, SMALL_ENERGY
    call CheckForNoEnergyAnimation
    ld a, $3e
    call Call_000_151d
    ld a, $55
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, $08
    ld [$cb74], a
    ld a, [$b8d9]
    dec a
    ld [$b8d9], a
    or a
    ret nz

    ld [$b8bc], a
    call Call_001_644c
    ret


Call_001_6524:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_001_6539

    cp $01
    jp z, Jump_001_653d

    cp $02
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
    cp $00
    jr z, jr_001_6605

    cp $01
    jp z, Jump_001_6626

    cp $02
    jp z, Jump_001_664a

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
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
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
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
    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
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
    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
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
    ld a, [$c609]
    cp $02
    jr nz, jr_001_678b

    ld a, [$c608]
    cp $e8
    ret nc

jr_001_678b:
    ld a, [$c609]
    cp $02
    jr nz, jr_001_6799

    ld a, [$c608]
    cp $c0
    jr nc, jr_001_67ca

jr_001_6799:
    ld a, [$c609]
    cp $00
    jr nz, jr_001_67a7

    ld a, [$c608]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    inc hl
    ld a, l
    ld [$c608], a
    ld a, h
    ld [$c609], a
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
    ld a, [$c609]
    cp $00
    jr nz, jr_001_67e7

    ld a, [$c608]
    cp $0e
    ret c

jr_001_67e7:
    ld a, [$c609]
    cp $02
    jr nz, jr_001_67f5

    ld a, [$c608]
    cp $c1
    jr nc, jr_001_6826

jr_001_67f5:
    ld a, [$c609]
    cp $00
    jr nz, jr_001_6803

    ld a, [$c608]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    dec hl
    ld a, l
    ld [$c608], a
    ld a, h
    ld [$c609], a
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
    ld a, [$c607]
    cp $00
    jr nz, jr_001_6843

    ld a, [$c606]
    cp $18
    ret c

jr_001_6843:
    ld a, [$b90b]
    or a
    jr z, jr_001_6859

    ld a, [$c607]
    cp $03
    jr nz, jr_001_6867

    ld a, [$c606]
    cp $b1
    jr nc, jr_001_6898

    jr jr_001_6867

jr_001_6859:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_6867

    ld a, [$c606]
    cp $c1
    jr nc, jr_001_6898

jr_001_6867:
    ld a, [$c607]
    cp $00
    jr nz, jr_001_6875

    ld a, [$c606]
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
    ld a, [$c606]
    ld l, a
    ld a, [$c607]
    ld h, a
    dec hl
    ld a, l
    ld [$c606], a
    ld a, h
    ld [$c607], a
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

    ld a, [$c607]
    cp $03
    jr nz, jr_001_68bb

    ld a, [$c606]
    cp $e8
    ret nc

jr_001_68bb:
    ld a, [$c607]
    cp $03
    jr nz, jr_001_68e6

    ld a, [$c606]
    cp $b0
    jr nc, jr_001_6917

    jr jr_001_68e6

jr_001_68cb:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_68d8

    ld a, [$c606]
    cp $f8
    ret nc

jr_001_68d8:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_68e6

    ld a, [$c606]
    cp $c0
    jr nc, jr_001_6917

jr_001_68e6:
    ld a, [$c607]
    cp $00
    jr nz, jr_001_68f4

    ld a, [$c606]
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
    ld a, [$c606]
    ld l, a
    ld a, [$c607]
    ld h, a
    inc hl
    ld a, l
    ld [$c606], a
    ld a, h
    ld [$c607], a
    ret


jr_001_6917:
    ld hl, $c60a
    inc [hl]
    jr jr_001_6905

    ret


Call_001_691e:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr nz, jr_001_693b

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
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

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
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

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
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
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
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

    ld a, [$cb84]
    or a
    ret nz

    call Call_000_14f9
    ld a, [$cb2f]
    cp $3d
    jr nz, jr_001_6a29

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3d
    jr nz, jr_001_6a29

    call Call_001_6a78
    pop hl
    ret


jr_001_6a29:
    cp $3e
    jr nz, jr_001_6a3e

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3e
    jr nz, jr_001_6a3e

    ld a, [$cb8b]
    or a
    ret nz

    call Call_001_6ab0
    pop hl
    ret


jr_001_6a3e:
    cp $3f
    jr nz, jr_001_6a53

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3f
    jr nz, jr_001_6a53

    ld a, [$cb8b]
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

    ld a, [wLeftOrDownSideFacingTileID]
    cp $40
    jr nz, jr_001_6a77

    ld a, [$cb8b]
    or a
    ret nz

    call Call_001_6ac6
    pop hl
    ret


jr_001_6a77:
    ret


Call_001_6a78:
    ld a, $01
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ld a, [$b8e1]
    or a
    ret z

    ld a, [$cb8b]
    or a
    jr z, jr_001_6a97

    ld a, $00
    ld [$b8e1], a
    ret


jr_001_6a97:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_001_6ab0:
    ld a, $02
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_001_6abb:
    ld a, $03
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_001_6ac6:
    ld a, $04
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ret


Call_001_6ad5:
    ld a, [$cb84]
    or a
    ret nz

    ld a, [$cb8b]
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

    ld a, $05
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
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
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cb79]
    or a
    ret nz

    ld a, [$ba40]
    or a
    ret z

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, $3c
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, $01
    ld [$b900], a
    ld a, [sPlayerGender]
    ld b, a
    ld a, $16
    add b
    call Call_000_3f52
    ld a, $f0
    ld [$cb79], a
    ret


Call_001_6ba5:
    ld a, [$cb84]
    or a
    ret nz

    ld a, [$cb8b]
    or a
    ret nz

    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$c602]
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
    cp $00
    jr z, jr_001_6c2c

    cp $01
    jr z, jr_001_6c48

    cp $02
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
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb79]
    or a
    ret z

    dec a
    ld [$cb79], a
    or a
    jr z, jr_001_6ca4

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr nz, jr_001_6ca4

    ret


jr_001_6ca4:
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3efc
    ld a, $06
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ld a, $01
    ld [$c910], a
    call Call_001_4224
    pop hl
    ret


Call_001_6cd1:
    ld a, [$b882]
    cp $06
    jr c, jr_001_6cde

    ld a, [$b882]
    cp $12
    ret c

jr_001_6cde:
    ld a, $bd
    ld [$c0a3], a
    ret


Call_001_6ce4:
    ld a, [$cb8b]
    or a
    jr nz, jr_001_6d14

    ld a, [$b8e1]
    or a
    jr z, jr_001_6d14

    ld a, [$b8e2]
    ld [$c7a6], a
    ld a, [$b8e3]
    ld [$c7a7], a
    ld a, [$b8e4]
    ld [$c7a8], a
    ld a, [$b8e5]
    ld [$c7a9], a
    ld a, $01
    ld [$c7a0], a
    ld a, $05
    ld [$c7a1], a
    jr jr_001_6d18

jr_001_6d14:
    xor a
    ld [$c7a0], a

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


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    jr nc, jr_001_6dbb

    ld d, b

jr_001_6dbb:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0138], sp
    jr nc, jr_001_6dcb

    ld d, b

jr_001_6dcb:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$01c8], sp
    jr nc, jr_001_6ddb

    ld d, b

jr_001_6ddb:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0188], sp
    or b
    ld bc, $5850
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    jr nc, jr_001_6dfb

    ld d, b

jr_001_6dfb:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    sub b
    ld bc, $5850
    nop
    ld [bc], a
    ld bc, $0100
    inc b
    ld [bc], a
    nop
    nop
    ld [$0060], sp
    sub b
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0004
    nop
    nop
    ld [$0100], sp
    jr nc, jr_001_6e2b

    nop

jr_001_6e2b:
    nop
    nop
    nop
    nop
    nop

Call_001_6e30:
    ld a, [$b8ea]
    or a
    ret z

    ld a, [$b88c]
    cp $01
    jr z, jr_001_6e56

    ld hl, $6e20
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
    ld hl, $6e10
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
    ld a, [$c0a7]
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
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$b8a0]
    cp $01
    ret z

    ld a, [$b8a0]
    cp $02
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
    ld [$c912], a
    ld a, $0d
    call Call_000_15cb
    ld a, [$c606]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [$c608]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
    call Call_001_7231
    ret


jr_001_71b1:
    ld a, $01
    call Call_000_0f47
    ld a, $07
    call Call_000_15cb
    ld a, [$c606]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [$c608]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
    call Call_001_7231
    ret


Jump_001_71f1:
    ld a, $01
    call Call_000_0f47
    ld a, $11
    call Call_000_15cb
    ld a, [$c606]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [$c608]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
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

    ld a, [$b8a0]
    cp $01
    ret z

    ld a, [$b8a0]
    cp $02
    ret z

    call Call_000_0b37
    ldh a, [$ff9d]
    and $0f
    cp $0f
    jr z, jr_001_72d6

    cp $07
    jr z, jr_001_72d6

    ret


jr_001_72d6:
    ld a, [$b882]
    cp $06
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    call Call_000_0f47
    ld a, $16
    call Call_000_15e4
    ld a, [$c606]
    add $08
    ld [$c766], a
    ld a, [$c607]
    adc $00
    ld [$c767], a
    ld a, [$c608]
    add $10
    ld [$c768], a
    ld a, [$c609]
    adc $00
    ld [$c769], a
    ld a, $02
    ld [$c770], a
    ld a, $ff
    ld [$c76c], a
    ld a, $ff
    ld [$c771], a
    ld [$c912], a
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
    ld [$c912], a
    ld [wCollisionNoMovement], a
    ld [$c910], a
    ld [$c90f], a
    ld [$c911], a
    ld [$cb56], a
    ld [$cb57], a
    ld [$b88c], a
    ld a, $ff
    ld [$cb52], a
    ld a, $00
    ld [$cb53], a
    ld [$cb54], a
    ld a, $00
    ld [$cb55], a
    ld [$cb5f], a
    ret


Call_001_7374:
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a
    ret


Call_001_737f:
    ld a, [$c606]
    ld l, a
    ld a, [$c607]
    ld h, a
    ld a, l
    sub $60
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call Call_000_09c9
    add $20
    ldh [$ff93], a
    ld a, l
    ldh [$ffa4], a
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, l
    sub $58
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call Call_000_09c9
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
    ld [$cb81], a
    xor a
    ld [$b881], a
    ld a, $01
    ld [$b880], a
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
    ld a, [$b88b]
    ld [$b894], a
    ld a, [$b88a]
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
    ld a, [$b885]
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
    ld a, [$b882]
    cp $0c
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    ld [$b880], a
    ld [$cb90], a
    ret


Call_001_783c:
    ld a, [$b882]
    cp $12
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    ld [$b880], a
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
    ld a, [$b882]
    cp $11
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    ld [$b880], a
    ld a, $03
    ld [$cb90], a
    ret


Call_001_7895:
    ld a, [sCurrentSeason]
    cp $01
    ret nz

    ld a, [sCurrentDayCounter]
    cp $13
    ret nz

    ld a, [$b882]
    cp $12
    ret nz

    ld a, [$b881]
    cp $01
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    ld [$b880], a
    ld a, $04
    ld [$cb90], a
    ret


Call_001_78be:
    ld a, [sCurrentSeason]
    cp $03
    ret nz

    ld a, [sCurrentDayCounter]
    cp $17
    ret nz

    ld a, [$b882]
    cp $12
    ret nz

    ld a, [$b881]
    cp $01
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, $01
    ld [$b880], a
    ld a, $05
    ld [$cb90], a
    ret


Call_001_78e7:
    ld a, [$c912]
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
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_001_794a

    ld a, [$cb8d]
    cp $01
    jr nz, jr_001_7940

    ld a, $3c
    ld [$c912], a
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
    ld a, [$b93d]
    ld b, a
    ld a, [$b93e]
    or b
    jr z, jr_001_7982

    ld a, [$b93d]
    ld [$b8fc], a
    ld a, [$b93e]
    ld [$b8fd], a
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ld a, $1f
    call Call_000_3f52
    ret


jr_001_7982:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, $20
    call Call_000_3f52
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
    ld [$c912], a
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
    ld [$c912], a
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
    ld [$b880], a
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
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    call Call_001_4224
    xor a
    ld [$cb81], a
    ret


jr_001_7a72:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $41
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $28
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $10
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$cb81], a
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
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $30
    add b
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
    call Call_000_3f26
    ret


Jump_001_7b8e:
    ld a, [$c604]
    cp $04
    jr nz, jr_001_7baf

    ld a, [$c912]
    cp $ff
    jr z, jr_001_7baf

    ld a, $ff
    ld [$c912], a
    ld a, $48
    call Call_000_151d
    xor a
    ld [$cbf6], a
    ld a, $53
    call Call_000_3f52

jr_001_7baf:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $21
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [$cb81], a
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
    ld [$c912], a
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
    call Call_000_3f52
    ret


Jump_001_7dc3:
    ld a, $21
    call Call_000_3f52
    ret


Jump_001_7dc9:
    ld a, $22
    call Call_000_3f52
    ret


Jump_001_7dcf:
    ld a, $23
    call Call_000_3f52
    ret


Jump_001_7dd5:
    ld a, [sPlayerGender]
    ld b, a
    ld a, $24
    add b
    call Call_000_3f52
    ret


Jump_001_7de0:
    ld a, $26
    call Call_000_3f52
    ret


Jump_001_7de6:
    ld a, $29
    call Call_000_3f52
    ret


Jump_001_7dec:
    ld a, $2b
    call Call_000_3f52
    ret


Jump_001_7df2:
    ld a, $2c
    call Call_000_3f52
    ret


Jump_001_7df8:
    ld a, $2d
    call Call_000_3f52
    ret


Jump_001_7dfe:
    ld a, [$b911]
    cp $00
    jr z, jr_001_7e28

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
    call Call_000_3f52
    ret


jr_001_7e28:
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
    call Call_000_3f52
    ret


Jump_001_7e4d:
    ld a, $2f
    call Call_000_3f52
    ret


Jump_001_7e53:
    ld a, $30
    call Call_000_3f52
    ret


Jump_001_7e59:
    ld a, $34
    call Call_000_3f52
    ret


Jump_001_7e5f:
    ld a, $36
    call Call_000_3f52
    ret


Jump_001_7e65:
    ld a, [$b911]
    cp $01
    jr z, jr_001_7e72

    ld a, $3a
    call Call_000_3f52
    ret


jr_001_7e72:
    ld a, $39
    call Call_000_3f52
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
    call Call_000_3f52
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_7f7f

jr_001_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
