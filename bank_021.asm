; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld hl, $8acd
    ld [hl+], a
    call ClearBGMap1
    call Call_000_323d
    ld a, [sCurrentSeason]
    ld [$c0bd], a
    ld a, [sCurrentDayCounter]
    or a
    jr nz, jr_021_402b

    ld a, [$b882]
    cp $06
    jr nc, jr_021_402b

    ld a, [$c0bd]
    or a
    jr z, jr_021_4026

    dec a
    jr jr_021_4028

jr_021_4026:
    ld a, $03

jr_021_4028:
    ld [$c0bd], a

jr_021_402b:
    ld a, [$c0bd]
    cp $01
    jr z, jr_021_4052

    cp $02
    jr z, jr_021_406a

    cp $03
    jr z, jr_021_4082

    ld hl, $478a
    ld c, $2b
    ld de, $8800
    call Call_000_31a0
    ld hl, $4001
    ld c, $2b
    ld de, $9000
    call Call_000_31a0
    jr jr_021_4098

jr_021_4052:
    ld hl, $54c8
    ld c, $2b
    ld de, $8800
    call Call_000_31a0
    ld hl, $4c4e
    ld c, $2b
    ld de, $9000
    call Call_000_31a0
    jr jr_021_4098

jr_021_406a:
    ld hl, $6205
    ld c, $2b
    ld de, $8800
    call Call_000_31a0
    ld hl, $5a75
    ld c, $2b
    ld de, $9000
    call Call_000_31a0
    jr jr_021_4098

jr_021_4082:
    ld hl, $6ec3
    ld c, $2b
    ld de, $8800
    call Call_000_31a0
    ld hl, $66c9
    ld c, $2b
    ld de, $9000
    call Call_000_31a0

jr_021_4098:
    ld hl, $7195
    ld c, $34
    ld de, $8000
    call Call_000_31a0
    ld a, [$b8ea]
    cp $00
    jr z, jr_021_40cc

    cp $02
    jr z, jr_021_40b4

    cp $03
    jr z, jr_021_40c1

    jr jr_021_40cc

jr_021_40b4:
    ld hl, $7443
    ld c, $33
    ld de, $81d0
    call Call_000_31a0
    jr jr_021_40cc

jr_021_40c1:
    ld hl, $7711
    ld c, $33
    ld de, $81d0
    call Call_000_31a0

jr_021_40cc:
    ld a, [sCatOrDog]
    cp $01
    jr z, jr_021_4120

    ld hl, $7a05
    ld c, $33
    ld de, $85a0
    call Call_000_31a0
    ld hl, $7e94
    ld de, $8ae0
    ld b, $20
    call CopyHLtoDE
    ld hl, $7f94
    ld de, $8be0
    ld b, $20
    call CopyHLtoDE
    ld hl, $7eb4
    ld de, $8ce0
    ld b, $20
    call CopyHLtoDE
    ld hl, $7fb4
    ld de, $8de0
    ld b, $20
    call CopyHLtoDE
    ld hl, $7ed4
    ld de, $8ee0
    ld b, $20
    call CopyHLtoDE
    ld hl, $7fd4
    ld de, $8fe0
    ld b, $20
    call CopyHLtoDE

jr_021_4120:
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
    ld [$4000], a
    ld a, $a0
    ld [$b90d], a
    xor a
    ld [$b90e], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb89], a
    call Call_021_6b77
    call Call_021_7221
    call Call_000_10f5
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_021_725f
    call Call_021_6d1e
    call Call_000_0ece
    ld a, [$b89c]
    cp $01
    jr z, jr_021_418b

    ld a, [$b8ea]
    cp $00
    jr z, jr_021_418b

    ld a, $01
    ld [$b88d], a

jr_021_418b:
    xor a
    ld [$cb81], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [$cb79], a
    ld [$cb7d], a
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
    call Call_021_71a8
    call Call_021_6cc3
    call Call_000_3dfd
    ld a, [$b8a0]
    cp $01
    jr z, jr_021_41cb

    cp $03
    jr z, jr_021_41cb

    cp $02
    jr z, jr_021_41cf

    ret


jr_021_41cb:
    call Call_021_6998
    ret


jr_021_41cf:
    call Call_021_69cd
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    call Call_021_6b13
    call Call_021_6893
    call Call_021_549e
    call Call_000_3cf8
    call Call_021_43c4
    call Call_000_2d67
    call Call_000_36f4
    call Call_021_6a38
    call Call_021_69fa
    call Call_021_6b64
    call Call_021_77c7
    call Call_021_74f0
    call Call_021_7c1f
    call Call_021_78cd
    ret


Call_021_4208:
    ld a, [$c90f]
    or a
    ret z

    ld a, $01
    ld [$cb81], a
    ld a, [$c911]
    dec a
    ld [$c911], a
    jr z, jr_021_427f

    cp $13
    jr nc, jr_021_4221

    pop hl
    ret


jr_021_4221:
    call Call_021_6664
    ld a, [$c90f]
    cp $05
    jr z, jr_021_429c

    cp $06
    jp z, Jump_021_42b9

    cp $07
    jp z, Jump_021_4306

    cp $08
    jp z, Jump_021_4325

    cp $09
    jp z, Jump_021_436b

    cp $0a
    jp z, Jump_021_43a2

    ld a, [$c911]
    cp $1e
    jr nz, jr_021_429a

    ld b, $fa
    ld c, $e0
    call Call_000_195e
    call SyncToBlankPeriod
    ld a, $a9
    ld [hl+], a
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
    ld [hl+], a
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
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


jr_021_427f:
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
    jr z, jr_021_429a

jr_021_429a:
    pop hl
    ret


jr_021_429c:
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


Jump_021_42b9:
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
    jr z, jr_021_42ed

    xor a
    ld [$b8e1], a
    ld [$cb8b], a
    ret


jr_021_42ed:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Jump_021_4306:
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


Jump_021_4325:
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


Jump_021_436b:
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


Jump_021_43a2:
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


Call_021_43c4:
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

    call Call_021_4208
    call Call_021_49df
    call Call_021_442a
    call Call_000_0e54
    ldh a, [$ff8b]
    and $01
    jr z, jr_021_43ef

    call Call_021_5251
    ret


jr_021_43ef:
    ldh a, [$ff8a]
    and $02
    jr z, jr_021_43f9

    call Call_021_468e
    ret


jr_021_43f9:
    ldh a, [$ff8b]
    and $08
    jr z, jr_021_4403

    call Call_000_1923
    ret


jr_021_4403:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_021_4510

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_021_456e

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_021_45cf

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_021_4630

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_021_442a:
    ld a, [$cb85]
    or a
    jr nz, jr_021_4437

    ld a, [$cb86]
    or a
    jr nz, jr_021_445a

    ret


jr_021_4437:
    dec a
    ld [$cb85], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_4456

    cp $01
    jr z, jr_021_444e

    cp $02
    jr z, jr_021_4452

    call Call_021_45a5
    ret


jr_021_444e:
    call Call_021_4606
    ret


jr_021_4452:
    call Call_021_4667
    ret


jr_021_4456:
    call Call_021_4547
    ret


jr_021_445a:
    dec a
    ld [$cb86], a
    cp $00
    jr nz, jr_021_4466

    xor a
    ld [$c780], a

jr_021_4466:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_4481

    cp $01
    jr z, jr_021_4479

    cp $02
    jr z, jr_021_447d

    call Call_021_6664
    ret


jr_021_4479:
    call Call_021_66c0
    ret


jr_021_447d:
    call Call_021_6732
    ret


jr_021_4481:
    call Call_021_6608
    ret


Call_021_4485:
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
    jr z, jr_021_44d7

    cp $02
    jr z, jr_021_44d7

    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_021_44ad

    cpl
    inc a

jr_021_44ad:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_021_44c7

    sub b
    bit 7, a
    jr z, jr_021_44c2

    cpl
    inc a

jr_021_44c2:
    cp $1c
    ret nc

    jr jr_021_44d1

jr_021_44c7:
    sub b
    bit 7, a
    jr z, jr_021_44ce

    cpl
    inc a

jr_021_44ce:
    cp $08
    ret nc

jr_021_44d1:
    ld a, $01
    ld [$cb82], a
    ret


jr_021_44d7:
    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_021_44e6

    cpl
    inc a

jr_021_44e6:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_021_4500

    sub b
    bit 7, a
    jr z, jr_021_44fb

    cpl
    inc a

jr_021_44fb:
    cp $1c
    ret nc

    jr jr_021_44d1

jr_021_4500:
    sub b
    bit 7, a
    jr z, jr_021_4507

    cpl
    inc a

jr_021_4507:
    cp $05
    ret nc

    ld a, $01
    ld [$cb82], a
    ret


Jump_021_4510:
    ld a, [$cb84]
    or a
    jp nz, Jump_021_468e

    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_021_4547

    ld de, $0004
    call Call_021_4485
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0004
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

Call_021_4547:
jr_021_4547:
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_456a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_4977

    ld a, [wcb32]
    and $01
    jp z, Jump_021_4991

    ret


jr_021_456a:
    call Call_021_6608
    ret


Jump_021_456e:
    ld a, [$cb84]
    or a
    jp nz, Jump_021_468e

    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_021_45a5

    ld de, $00fc
    call Call_021_4485
    ld a, [$cb82]
    or a
    ret nz

    ld de, $00fc
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

Call_021_45a5:
jr_021_45a5:
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_45c8

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_4977

    ld a, [wcb32]
    and $01
    jp z, Jump_021_4991

    ret


jr_021_45c8:
    call Call_021_689c
    call Call_021_6664
    ret


Jump_021_45cf:
    ld a, [$cb84]
    or a
    jp nz, Jump_021_468e

    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_021_4606

    ld de, $fc00
    call Call_021_4485
    ld a, [$cb82]
    or a
    ret nz

    ld de, $fc00
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

Call_021_4606:
jr_021_4606:
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_4629

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_49ab

    ld a, [wcb32]
    and $01
    jp z, Jump_021_49c5

    ret


jr_021_4629:
    call Call_021_6968
    call Call_021_66c0
    ret


Jump_021_4630:
    ld a, [$cb84]
    or a
    jp nz, Jump_021_468e

    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    ld a, [$b88c]
    or a
    jr nz, jr_021_4667

    ld de, $0400
    call Call_021_4485
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0400
    call Call_000_19aa
    ld a, [$cb89]
    or a
    ret nz

Call_021_4667:
jr_021_4667:
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_468a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_49ab

    ld a, [wcb32]
    and $01
    jp z, Jump_021_49c5

    ret


jr_021_468a:
    call Call_021_6732
    ret


Call_021_468e:
Jump_021_468e:
    ld a, [$c603]
    and $01
    jr z, jr_021_46a1

    ld a, [$c605]
    cp $08
    jr nz, jr_021_46a1

    ld a, $34
    call Call_000_25ce

jr_021_46a1:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_021_46bb

    ldh a, [$ff8a]
    and $20
    jr nz, jr_021_46bf

    ldh a, [$ff8a]
    and $10
    jr nz, jr_021_46c3

    ldh a, [$ff8a]
    and $40
    jr nz, jr_021_46c7

    jr jr_021_46d7

jr_021_46bb:
    ld a, $00
    jr jr_021_46c9

jr_021_46bf:
    ld a, $01
    jr jr_021_46c9

jr_021_46c3:
    ld a, $02
    jr jr_021_46c9

jr_021_46c7:
    ld a, $03

jr_021_46c9:
    ld hl, wPlayerFacingDirection
    ld [hl], a
    xor a
    ld [wcb30], a
    ld [wcb32], a
    ld [$cb34], a

jr_021_46d7:
    ld a, [wPlayerFacingDirection]
    cp $00
    jp z, Jump_021_478e

    cp $01
    jp z, Jump_021_4830

    cp $02
    jp z, Jump_021_48d5

    ld a, [$cb8b]
    or a
    jp nz, Jump_021_456e

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $00fc
    call Call_021_4485
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
    jr z, jr_021_4774

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_4977

    ld a, [wcb32]
    and $01
    jp z, Jump_021_4991

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_021_4739

    cp $0f
    jr z, jr_021_4739

    ret


jr_021_4739:
    ld a, $12
    ldh [$ffa4], a
    call Call_021_685d
    ld a, [$cb38]
    and $01
    ret nz

    ld d, $00
    ld e, $d8
    call Call_021_4485
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


jr_021_4774:
    call Call_021_689c
    call Call_021_6664
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_478a

    ret


jr_021_478a:
    call Call_021_6664
    ret


Jump_021_478e:
    ld a, [$cb8b]
    or a
    jp nz, Jump_021_4510

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0004
    call Call_021_4485
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
    jr z, jr_021_4819

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_4977

    ld a, [wcb32]
    and $01
    jp z, Jump_021_4991

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_021_47de

    cp $0f
    jr z, jr_021_47de

    ret


jr_021_47de:
    ld a, $12
    ldh [$ffa4], a
    call Call_021_6866
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $00
    ld e, $28
    call Call_021_4485
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


jr_021_4819:
    call Call_021_6608
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_482c

    ret


jr_021_482c:
    call Call_021_6608
    ret


Jump_021_4830:
    ld a, [$cb8b]
    or a
    jp nz, Jump_021_45cf

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $fc00
    call Call_021_4485
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
    jr z, jr_021_48bb

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_49ab

    ld a, [wcb32]
    and $01
    jp z, Jump_021_49c5

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_021_4880

    cp $0f
    jr z, jr_021_4880

    ret


jr_021_4880:
    ld a, $12
    ldh [$ffa4], a
    call Call_021_686f
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $d8
    ld e, $00
    call Call_021_4485
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


jr_021_48bb:
    call Call_021_6968
    call Call_021_66c0
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_48d1

    ret


jr_021_48d1:
    call Call_021_66c0
    ret


Jump_021_48d5:
    ld a, [$cb8b]
    or a
    jp nz, Jump_021_4630

    ld a, $02
    call RST_TableJumpBankSwitch
    ld de, $0400
    call Call_021_4485
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
    jr z, jr_021_4960

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_021_49ab

    ld a, [wcb32]
    and $01
    jp z, Jump_021_49c5

    ld a, [wRightOrUpSideFacingTileID]
    cp FENCE_POST_TILE
    jr z, jr_021_4925

    cp $0f
    jr z, jr_021_4925

    ret


jr_021_4925:
    ld a, $12
    ldh [$ffa4], a
    call Call_021_6878
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $28
    ld e, $00
    call Call_021_4485
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


jr_021_4960:
    call Call_021_6732
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_021_4973

    ret


jr_021_4973:
    call Call_021_6732
    ret


Jump_021_4977:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_021_4984

    ld a, [$cb34]
    and $01
    ret nz

jr_021_4984:
    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_021_66c0
    ret


Jump_021_4991:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_021_499e

    ld a, [$cb34]
    and $01
    ret nz

jr_021_499e:
    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_021_6732
    ret


Jump_021_49ab:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_021_49b8

    ld a, [$cb34]
    and $01
    ret nz

jr_021_49b8:
    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_021_6664
    ret


Jump_021_49c5:
    ld a, [wRightOrUpSideFacingTileID]
    cp $0f
    jr z, jr_021_49d2

    ld a, [$cb34]
    and $01
    ret nz

jr_021_49d2:
    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_021_6608
    ret


Call_021_49df:
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
    ld hl, $4a3a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_021_4a38

    ld b, a
    ld a, [wPlayerFacingDirection]
    cp $00
    jp z, Jump_021_4a1c

    cp $01
    jp z, Jump_021_4a26

    cp $02
    jp z, Jump_021_4a30

jr_021_4a12:
    push bc
    call Call_021_6664
    pop bc
    dec b
    jr nz, jr_021_4a12

    jr jr_021_4a38

Jump_021_4a1c:
jr_021_4a1c:
    push bc
    call Call_021_6608
    pop bc
    dec b
    jr nz, jr_021_4a1c

    jr jr_021_4a38

Jump_021_4a26:
jr_021_4a26:
    push bc
    call Call_021_66c0
    pop bc
    dec b
    jr nz, jr_021_4a26

    jr jr_021_4a38

Jump_021_4a30:
jr_021_4a30:
    push bc
    call Call_021_6732
    pop bc
    dec b
    jr nz, jr_021_4a30

jr_021_4a38:
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

Jump_021_4a5e:
    ld a, [$cb8b]
    or a
    ret nz

    ld a, [$b8ea]
    cp $01
    ret z

    call Call_021_4a86
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


Call_021_4a86:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_4ae2

    cp $01
    jp z, Jump_021_4b2d

    cp $02
    jp z, Jump_021_4b76

    ld hl, $c608
    ld bc, $0015
    call Call_000_0cce
    call Call_021_685d
    ld hl, $c608
    ld bc, $ffeb
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jp nz, Jump_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
    call Call_021_685d
    ld hl, $c608
    ld bc, $fff8
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jp nz, Jump_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ret


jr_021_4ae2:
    ld hl, $c608
    ld bc, $ffec
    call Call_000_0cce
    call Call_021_6866
    ld hl, $c608
    ld bc, $0014
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jp nz, Jump_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ld hl, $c608
    ld bc, $fff8
    call Call_000_0cce
    call Call_021_6866
    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jp nz, Jump_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ret


Jump_021_4b2d:
    ld hl, $c606
    ld bc, $0014
    call Call_000_0cce
    call Call_021_686f
    ld hl, $c606
    ld bc, $ffec
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jr nz, jr_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    call Call_021_686f
    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jr nz, jr_021_4bbd

    ld a, [$cb3a]
    and $01
    jp nz, Jump_021_4bbd

    ret


Jump_021_4b76:
    ld hl, $c606
    ld bc, $ffec
    call Call_000_0cce
    call Call_021_6878
    ld hl, $c606
    ld bc, $0014
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jr nz, jr_021_4bbd

    ld a, [$cb3a]
    and $01
    jr nz, jr_021_4bbd

    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    call Call_021_6878
    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    ld a, [$cb38]
    and $01
    jr nz, jr_021_4bbd

    ld a, [$cb3a]
    and $01
    jr nz, jr_021_4bbd

    ret


Jump_021_4bbd:
jr_021_4bbd:
    pop hl
    ret


Jump_021_4bbf:
    ld a, [wPlayerFacingDirection]
    cp $01
    jr z, jr_021_4bd6

    cp $02
    jp z, Jump_021_4bd6

    cp $00
    jp z, Jump_021_4ce9

    cp $03
    jp z, Jump_021_4df7

    ret


Jump_021_4bd6:
jr_021_4bd6:
    ld d, $00
    ld e, $18
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_021_4c62

    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4c62

    ld hl, $c608
    ld bc, $0010
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff0
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4c62

    ld hl, $c608
    ld bc, $0018
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $ffe8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4c62

    ld a, [wPlayerFacingDirection]
    ld [$c78d], a
    add $00
    call Call_000_15fd
    ld a, $00
    ld [wPlayerFacingDirection], a
    jp Jump_021_4f02


jr_021_4c62:
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
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c608
    ld bc, $fff0
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $0010
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c608
    ld bc, $ffe8
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $0018
    call Call_000_0cce
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
    jp Jump_021_4f02


Jump_021_4ce9:
    ld d, $18
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_021_4d72

    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4d72

    ld hl, $c606
    ld bc, $0010
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff0
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4d72

    ld hl, $c606
    ld bc, $0018
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $ffe8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4d72

    ld a, $02
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_021_4f02


jr_021_4d72:
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
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $fff0
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0010
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $ffe8
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0018
    call Call_000_0cce
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
    jp Jump_021_4f02


Jump_021_4df7:
    ld d, $e8
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19aa
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_021_4e80

    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4e80

    ld hl, $c606
    ld bc, $fff0
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0010
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4e80

    ld hl, $c606
    ld bc, $ffe8
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0018
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr nz, jr_021_4e80

    ld a, $01
    ld [wPlayerFacingDirection], a
    ld [$c78d], a
    add $00
    call Call_000_15fd
    jp Jump_021_4f02


jr_021_4e80:
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
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $0010
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff0
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $0018
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $ffe8
    call Call_000_0cce
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

Jump_021_4f02:
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


Jump_021_4f44:
    ld a, $01
    ld [$cb8b], a
    xor a
    ld [$c7a0], a
    ld [$cb89], a
    ret


Jump_021_4f51:
    ld a, [wPlayerFacingDirection]
    cp $01
    jr z, jr_021_4f68

    cp $02
    jp z, Jump_021_5000

    cp $00
    jp z, Jump_021_515d

    cp $03
    jp z, Jump_021_508e

    ret


jr_021_4f68:
    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $fff2
    call Call_000_0cce
    call Call_000_150b
    ld hl, $c606
    ld bc, $000e
    call Call_000_0cce
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
    call Call_021_5238
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_021_4ff6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_021_4ff6:
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_163d
    ret


Jump_021_5000:
    ld hl, $c606
    ld bc, $0008
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld hl, $c606
    ld bc, $000e
    call Call_000_0cce
    call Call_000_1514
    ld hl, $c606
    ld bc, $fff2
    call Call_000_0cce
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
    call Call_021_5238
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_021_4ff6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_021_508e:
    ld hl, $c608
    ld bc, $fff8
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
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
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $000e
    call Call_000_0cce
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
    call Call_000_0cce
    call Call_000_1502
    ld hl, $c608
    ld bc, $0018
    call Call_000_0cce
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
    call Call_021_5238
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_021_4ff6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Jump_021_515d:
    ld hl, $c608
    ld bc, $0004
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fffc
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_021_518c

    ld a, [$cb36]
    cp $3c
    jr nz, jr_021_518c

    ret


jr_021_518c:
    ld hl, $c608
    ld bc, $0008
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff8
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_021_51bb

    ld a, [$cb36]
    cp $3c
    jr nz, jr_021_51bb

    ret


jr_021_51bb:
    ld hl, $c608
    ld bc, $000e
    call Call_000_0cce
    call Call_000_14f9
    ld hl, $c608
    ld bc, $fff2
    call Call_000_0cce
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_021_51ea

    ld a, [$cb36]
    cp $3c
    jr nz, jr_021_51ea

    ret


jr_021_51ea:
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
    call Call_021_5238
    ld a, $01
    ld [$c7a0], a
    xor a
    ld [$cb8b], a
    ld a, [sCatOrDog]
    cp $00
    jp z, Jump_021_4ff6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_163d
    ret


Call_021_5238:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_021_5251:
    ld a, [wHeldObject]
    or a
    jr nz, jr_021_5273

    ld a, [$cb82]
    or a
    jp nz, Jump_021_4a5e

    ld a, [$cb84]
    or a
    jp nz, Jump_021_4bbf

    ld a, [$cb89]
    or a
    jp nz, Jump_021_4f44

    ld a, [$cb8b]
    or a
    jp nz, Jump_021_4f51

jr_021_5273:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp NO_ITEM
    jp nz, Jump_021_5e25

    ld a, [$c0a7]
    cp $02
    ret z

    ld a, [wHeldObject]
    or a
    jp nz, Jump_021_55c1

    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $6a
    jr c, jr_021_52ac

    cp $70
    jr nc, jr_021_52ac

    ld a, [$cb34]
    cp $81
    jr nz, jr_021_52ac

    jp Jump_021_5443


jr_021_52ac:
    ld a, [wRightOrUpSideFacingTileID]
    cp BUSH_TILE
    jr nz, jr_021_52c6

    ld a, BUSH
    ld [wHeldObject], a
    ld a, $18
    call $16d1
    xor a
    ld [wCollisionNoMovement], a
    ldh [$ffa4], a
    jp Jump_021_5396


jr_021_52c6:
    cp $03
    jr nz, jr_021_52da

    ld a, STONE
    ld [wHeldObject], a
    ld a, $0f
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_021_5396


jr_021_52da:
    cp $01
    jr nz, jr_021_52ee

    ld a, FENCE_POST
    ld [wHeldObject], a
    ld a, $17
    call $16d1
    xor a
    ldh [$ffa4], a
    jp Jump_021_5396


jr_021_52ee:
    ld a, [$cb34]
    and $40
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $60
    jr z, jr_021_5318

    cp $88
    jr z, jr_021_5328

    cp $98
    jr z, jr_021_5338

    cp $ac
    jr z, jr_021_5348

    cp $b8
    jr z, jr_021_5358

    cp $cc
    jr z, jr_021_5368

    cp $dc
    jr z, jr_021_5378

    cp $f0
    jr z, jr_021_5388

    ret


jr_021_5318:
    ld a, $10
    ld [wHeldObject], a
    ld a, $1b
    call Call_000_16d1
    ld a, $02
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5328:
    ld a, $11
    ld [wHeldObject], a
    ld a, $1a
    call $16d1
    ld a, $04
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5338:
    ld a, $12
    ld [wHeldObject], a
    ld a, $1f
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5348:
    ld a, $13
    ld [wHeldObject], a
    ld a, $21
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5358:
    ld a, $14
    ld [wHeldObject], a
    ld a, $6a
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5368:
    ld a, $15
    ld [wHeldObject], a
    ld a, $6b
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5378:
    ld a, $16
    ld [wHeldObject], a
    ld a, $6c
    call $16d1
    ld a, $01
    ldh [$ffa4], a
    jr jr_021_5396

jr_021_5388:
    ld a, $17
    ld [wHeldObject], a
    ld a, $69
    call $16d1
    ld a, $03
    ldh [$ffa4], a

Jump_021_5396:
jr_021_5396:
    ld a, $35
    call Call_000_25ce
    ldh a, [$ffa4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5476
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
    ld [hl+], a
    ldh a, [$ffa5]
    ld [hl+], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr nz, jr_021_53dd

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $04
    call Call_000_195e
    jr jr_021_5418

jr_021_53dd:
    cp $01
    jr nz, jr_021_53f4

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $ec
    call Call_000_195e
    jr jr_021_5418

jr_021_53f4:
    cp $02
    jr nz, jr_021_540b

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $0c
    call Call_000_195e
    jr jr_021_5418

jr_021_540b:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $e8
    call Call_000_195e

jr_021_5418:
    call SyncToBlankPeriod
    ldh a, [$ffa6]
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa7]
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call SyncToBlankPeriod
    ldh a, [$ffa8]
    ld [hl+], a
    call SyncToBlankPeriod
    ldh a, [$ffa9]
    ld [hl], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $1a
    ld [$c912], a
    ret


Jump_021_5443:
    ld a, [$b938]
    ld b, a
    ld a, [$b939]
    or b
    ret z

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
    call Call_000_0cce
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
    jr z, jr_021_54c2

    jr c, jr_021_548d

jr_021_548d:
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

Call_021_549e:
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

jr_021_54c2:
    ld a, [wRightOrUpSideFacingTileID]
    cp $41
    jr z, jr_021_54df

    cp $42
    jr z, jr_021_54ea

    cp $43
    jr z, jr_021_54f5

    cp $44
    jr z, jr_021_5500

    cp $45
    jr z, jr_021_550b

    cp $d6
    jp z, Jump_021_5566

    ret


jr_021_54df:
    ld a, $19
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_021_54ea:
    ld a, $18
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_021_54f5:
    ld a, $1a
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_021_5500:
    ld a, $1b
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_021_550b:
    ld a, [$b890]
    cp $01
    jr z, jr_021_5522

    ld a, [$c800]
    or a
    ret nz

    ld a, $1c
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_021_5522:
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


Jump_021_5566:
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


Jump_021_55c1:
    call Call_021_55c5
    ret


Call_021_55c5:
    ld a, [wHeldObject]
    rst $00
    ld sp, hl
    ld d, l
    ld a, [$1655]
    ld d, [hl]
    cp h
    ld d, [hl]
    ld sp, hl
    ld e, d
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    dec d
    ld e, e
    ld d, c
    ld e, e
    adc l
    ld e, e
    ret


    ld e, e
    dec b
    ld e, h
    ld b, c
    ld e, h
    ld a, l
    ld e, h
    cp c
    ld e, h
    ret


    call Call_021_5a4f
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


    call Call_021_5a4f
    call Call_021_6881
    call Call_021_5794
    call Call_021_5856
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_021_563c

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

jr_021_563c:
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
    jr nz, jr_021_5667

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

jr_021_5667:
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
    ld [hl+], a
    ld a, $01
    ld [hl], a
    call Call_021_67b1
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $03
    ld [hl+], a
    ld a, $04
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
    ld [hl+], a
    ld a, $14
    ld [hl], a
    xor a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    call Call_021_6881
    call Call_021_5794
    call Call_021_5856
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_021_56e2

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

jr_021_56e2:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    jr nz, jr_021_56f6

    ld a, b
    cp $6a
    jr c, jr_021_56f6

    cp $70
    jr nc, jr_021_56f6

    jp Jump_021_5773


jr_021_56f6:
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
    jr nz, jr_021_571e

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

jr_021_571e:
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
    ld [hli], a
    ld a, $01
    ld [hl], a
    call Call_021_67b1
    call Call_000_199a
    call SyncToBlankPeriod
    ld a, $20
    ld [hl+], a
    ld a, $40
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
    ld [hli], a
    ld a, $50
    ld [hl], a
    xor a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ret


Jump_021_5773:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    ld hl, $b938
    ld bc, $0002
    call Call_000_0cce
    call Call_000_0f73
    ld a, $36
    call Call_000_25ce
    ret


Call_021_5794:
    ld a, [$c780]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    push hl
    push de
    ld bc, $0012
    ld de, $0000
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_021_591b
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_5854

    ret


Jump_021_5854:
    pop hl
    ret


Call_021_5856:
    ld a, [$c7a0]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_021_5937
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_021_5937
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_021_5937
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_021_5937
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_021_5937
    pop de
    pop hl
    call Call_021_58f9
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    call Call_021_590a
    ldh a, [$ffae]
    or a
    jp nz, Jump_021_58f7

    ret


Jump_021_58f7:
    pop hl
    ret


Call_021_58f9:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp l
    jr nz, jr_021_5906

    ld a, b
    cp h
    jr nz, jr_021_5906

    ret


jr_021_5906:
    xor a
    ldh [$ffae], a
    ret


Call_021_590a:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp e
    jr nz, jr_021_5917

    ld a, b
    cp d
    jr nz, jr_021_5917

    ret


jr_021_5917:
    xor a
    ldh [$ffae], a
    ret


Call_021_591b:
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
    call Call_021_5953
    ld b, h
    ld c, l
    ret


Call_021_5937:
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
    call Call_021_5953
    ld b, h
    ld c, l
    ret


Call_021_5953:
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


Call_021_5a4f:
    call Call_021_6881
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    ret nz

    ld a, b
    cp $20
    jr c, jr_021_5a64

    cp $24
    jr nc, jr_021_5a64

    jr jr_021_5a88

jr_021_5a64:
    cp $24
    jr c, jr_021_5a6e

    cp $2d
    jr nc, jr_021_5a6e

    jr jr_021_5a88

jr_021_5a6e:
    cp $2d
    jr c, jr_021_5a78

    cp $31
    jr nc, jr_021_5a78

    jr jr_021_5a88

jr_021_5a78:
    cp $31
    jr c, jr_021_5a82

    cp $35
    jr nc, jr_021_5a82

    jr jr_021_5a88

jr_021_5a82:
    cp $35
    ret c

    cp $39
    ret nc

jr_021_5a88:
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
    jr z, jr_021_5aae

    cp $03
    jr z, jr_021_5aae

    pop hl
    ret


jr_021_5aae:
    ld hl, $c606
    ld bc, $000a
    call Call_000_0cce
    call Call_021_6881
    ld hl, $c606
    ld bc, $fff6
    call Call_000_0cce
    ld a, [de]
    cp $0e
    jr z, jr_021_5ae5

    ld hl, $c606
    ld bc, $fff6
    call Call_000_0cce
    call Call_021_6881
    ld hl, $c606
    ld bc, $000a
    call Call_000_0cce
    ld a, [de]
    cp $0e
    jr z, jr_021_5aef

    pop hl
    ret


    ret


jr_021_5ae5:
    ld a, [$c64a]
    sub $0a
    ld [$c64a], a
    pop hl
    ret


jr_021_5aef:
    ld a, [$c64a]
    add $0a
    ld [$c64a], a
    pop hl
    ret


    call Call_021_5a4f
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


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $1e
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $5c
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $1d
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $82
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $20
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $22
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $6e
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $6f
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $70
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $11
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


    call Call_021_5a4f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_021_688a
    ld a, [hl]
    cp $39
    jp z, Jump_021_5df1

    cp $3a
    jp z, Jump_021_5df1

    cp $3b
    jp z, Jump_021_5df1

    cp $3c
    jp z, Jump_021_5df1

    call Call_021_5d73
    ld a, $6d
    call $16d1
    xor a
    ld [wHeldObject], a
    ld a, $ec
    ld [wRightOrUpSideFacingTileID], a
    ld a, $36
    call Call_000_25ce
    ret


Call_021_5cf5:
    xor a
    ldh [$ffae], a
    ld a, [$c78d]
    cp $01
    jr z, jr_021_5d3b

    cp $02
    jr z, jr_021_5d3b

    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_021_5d12

    cpl
    inc a

jr_021_5d12:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_021_5d2c

    sub b
    bit 7, a
    jr z, jr_021_5d27

    cpl
    inc a

jr_021_5d27:
    cp $1c
    ret nc

    jr jr_021_5d36

jr_021_5d2c:
    sub b
    bit 7, a
    jr z, jr_021_5d33

    cpl
    inc a

jr_021_5d33:
    cp $08
    ret nc

jr_021_5d36:
    ld a, $01
    ldh [$ffae], a
    ret


jr_021_5d3b:
    ld a, [$c60a]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_021_5d4a

    cpl
    inc a

jr_021_5d4a:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_021_5d64

    sub b
    bit 7, a
    jr z, jr_021_5d5f

    cpl
    inc a

jr_021_5d5f:
    cp $1c
    ret nc

    jr jr_021_5d36

jr_021_5d64:
    sub b
    bit 7, a
    jr z, jr_021_5d6b

    cpl
    inc a

jr_021_5d6b:
    cp $05
    ret nc

    ld a, $01
    ldh [$ffae], a
    ret


Call_021_5d73:
    ld a, [$b8ea]
    cp $03
    ret nz

    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_5d9d

    cp $01
    jr z, jr_021_5db0

    cp $02
    jp z, Jump_021_5dc3

    ld a, [$cb82]
    or a
    jp nz, Jump_021_5dd3

    ld de, $00f0
    call Call_021_5cf5
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_021_5dd3


jr_021_5d9d:
    ld a, [$cb82]
    or a
    jr nz, jr_021_5dd3

    ld de, $0010
    call Call_021_5cf5
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_021_5dd3


jr_021_5db0:
    ld a, [$cb82]
    or a
    jr nz, jr_021_5dd3

    ld de, $f000
    call Call_021_5cf5
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_021_5dd3


Jump_021_5dc3:
    ld a, [$cb82]
    or a
    jr nz, jr_021_5dd3

    ld de, $1000
    call Call_021_5cf5
    ldh a, [$ffae]
    or a
    ret z

Jump_021_5dd3:
jr_021_5dd3:
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cb80], a
    ld a, [$b882]
    cp $11
    jr nc, jr_021_5def

    ld a, [wHeldObject]
    call Call_000_1cff
    ld a, $36
    call Call_000_25ce

jr_021_5def:
    pop hl
    ret


Jump_021_5df1:
    ld a, $36
    call Call_000_25ce
    ld a, $01
    ld [$cb80], a
    ld hl, $9800
    ld bc, $0400

jr_021_5e01:
    ld a, [hl+]
    cp $21
    jr z, jr_021_5e0b

    dec bc
    ld a, c
    or b
    jr nz, jr_021_5e01

jr_021_5e0b:
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

Jump_021_5e25:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp SICKLE
    jp z, Jump_021_5ec4
    cp HOE
    jp z, Jump_021_5f84
    cp HAMMER
    jp z, Jump_021_5f9a
    cp AX
    jp z, Jump_021_5ff1
    cp SUPER_SICKLE
    jp z, Jump_021_603b
    cp SUPER_HOE
    jp z, Jump_021_6055
    cp SUPER_HAMMER
    jp z, Jump_021_6081
    cp SUPER_AX
    jp z, Jump_021_60d8
    cp BRUSH
    jp z, Jump_021_6122
    cp WATERING_CAN
    jp z, Jump_021_6132
    cp MILKER
    jp z, Jump_021_61af
    cp COW_MEDICINE
    jp z, Jump_021_61bf
    cp P_MEDICINE
    jp z, Jump_021_61bf
    cp M_POTION
    jp z, Jump_021_61bf
    cp COW_BELL
    jp z, Jump_021_61fb
    cp PICK_AX
    jp z, Jump_021_620b
    cp UMBRELLA
    jp z, Jump_021_621b
    cp SPRINKLER
    jp z, Jump_021_606b
    cp COW_FEED
    jp z, Jump_021_6253
    cp CHICKEN_FEED
    jp z, Jump_021_6253
    cp GRASS_SEEDS
    jp z, Jump_021_6293
    cp TOMATO_SEEDS
    jp z, Jump_021_62bc
    cp CORN_SEEDS
    jp z, Jump_021_62e6
    cp TURNIP_SEEDS
    jp z, Jump_021_6310
    cp POTATO_SEEDS
    jp z, Jump_021_6340
    cp EGGPLANT_SEEDS
    jp z, Jump_021_636a
    cp PEANUT_SEEDS
    jp z, Jump_021_6394
    cp CARROT_SEEDS
    jp z, Jump_021_63be
    cp BROCOLLI_SEEDS
    jp z, Jump_021_63e8
    ret

Jump_021_5ec4:
    ld b, $02
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
    call Call_021_6412
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $02
    jr z, jr_021_5f28

    ld a, [$cb42]
    and $40
    ret z

    ld a, [$cb41]
    ld b, a
    and $f0
    cp $49
    jr z, jr_021_5f2e

    cp $50
    jr z, jr_021_5f34

    cp $60
    jr z, jr_021_5f34

    cp $70
    jr z, jr_021_5f3e

    cp $80
    jr z, jr_021_5f3e

    cp $90
    jr z, jr_021_5f48

    cp $a0
    jr z, jr_021_5f52

    cp $b0
    jr z, jr_021_5f5c

    cp $c0
    jr z, jr_021_5f66

    cp $d0
    jr z, jr_021_5f70

    cp $e0
    jr z, jr_021_5f7a

    ret


jr_021_5f28:
    ld a, $01
    ld [$cb45], a
    ret


jr_021_5f2e:
    ld a, $02
    ld [$cb45], a
    ret


jr_021_5f34:
    ld a, b
    cp $54
    ret c

    ld a, $03
    ld [$cb45], a
    ret


jr_021_5f3e:
    ld a, b
    cp $76
    ret c

    ld a, $04
    ld [$cb45], a
    ret


jr_021_5f48:
    ld a, b
    cp $94
    ret c

    ld a, $05
    ld [$cb45], a
    ret


jr_021_5f52:
    ld a, b
    cp $a6
    ret c

    ld a, $06
    ld [$cb45], a
    ret


jr_021_5f5c:
    ld a, b
    cp $b4
    ret c

    ld a, $07
    ld [$cb45], a
    ret


jr_021_5f66:
    ld a, b
    cp $c6
    ret c

    ld a, $08
    ld [$cb45], a
    ret


jr_021_5f70:
    ld a, b
    cp $d6
    ret c

    ld a, $09
    ld [$cb45], a
    ret


jr_021_5f7a:
    ld a, b
    cp $e4
    ret c

    ld a, $0a
    ld [$cb45], a
    ret


Jump_021_5f84:
    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $07
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret


Jump_021_5f9a:
    ld b, $02
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $08
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_021_6412
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_021_5fc5

    ld a, $01
    ld [$cb45], a
    ret


jr_021_5fc5:
    ld a, [$cb41]
    cp $04
    jr z, jr_021_5fd9

    cp $05
    jr z, jr_021_5fdf

    cp $06
    jr z, jr_021_5fe5

    cp $07
    jr z, jr_021_5feb

    ret


jr_021_5fd9:
    ld a, $02
    ld [$cb45], a
    ret


jr_021_5fdf:
    ld a, $03
    ld [$cb45], a
    ret


jr_021_5fe5:
    ld a, $04
    ld [$cb45], a
    ret


jr_021_5feb:
    ld a, $05
    ld [$cb45], a
    ret


Jump_021_5ff1:
    ld b, $02
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $09
    call RST_TableJumpBankSwitch
    ld a, $34
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_021_6412
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_021_6023

    cp $09
    jr z, jr_021_6029

    cp $0a
    jr z, jr_021_602f

    cp $0b
    jr z, jr_021_6035

    ret


jr_021_6023:
    ld a, $02
    ld [$cb45], a
    ret


jr_021_6029:
    ld a, $03
    ld [$cb45], a
    ret


jr_021_602f:
    ld a, $04
    ld [$cb45], a
    ret


jr_021_6035:
    ld a, $05
    ld [$cb45], a
    ret


Jump_021_603b:
    ld b, $03
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


Jump_021_6055:
    ld b, $03
    call CheckForNoEnergyAnimation
    ld a, $0d
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret


Jump_021_606b:
    ld b, $03
    call CheckForNoEnergyAnimation
    ld a, $85
    call Call_000_151d
    ld a, $56
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ret


Jump_021_6081:
    ld b, $03
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0f
    call RST_TableJumpBankSwitch
    ld a, $3e
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_021_6412
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_021_60ac

    ld a, $01
    ld [$cb45], a
    ret


jr_021_60ac:
    ld a, [$cb41]
    cp $04
    jr z, jr_021_60c0

    cp $05
    jr z, jr_021_60c6

    cp $06
    jr z, jr_021_60cc

    cp $07
    jr z, jr_021_60d2

    ret


jr_021_60c0:
    ld a, $02
    ld [$cb45], a
    ret


jr_021_60c6:
    ld a, $03
    ld [$cb45], a
    ret


jr_021_60cc:
    ld a, $04
    ld [$cb45], a
    ret


jr_021_60d2:
    ld a, $05
    ld [$cb45], a
    ret


Jump_021_60d8:
    ld b, $03
    call CheckForNoEnergyAnimation
    xor a
    ld [$cb45], a
    ld a, $0e
    call RST_TableJumpBankSwitch
    ld a, $44
    ld [$c912], a
    ld a, [wPlayerFacingDirection]
    call Call_021_6412
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_021_610a

    cp $09
    jr z, jr_021_6110

    cp $0a
    jr z, jr_021_6116

    cp $0b
    jr z, jr_021_611c

    ret


jr_021_610a:
    ld a, $02
    ld [$cb45], a
    ret


jr_021_6110:
    ld a, $03
    ld [$cb45], a
    ret


jr_021_6116:
    ld a, $04
    ld [$cb45], a
    ret


jr_021_611c:
    ld a, $05
    ld [$cb45], a
    ret


Jump_021_6122:
    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $0b
    call RST_TableJumpBankSwitch
    ld a, $64
    ld [$c912], a
    ret


Jump_021_6132:
    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $0c
    call RST_TableJumpBankSwitch
    ld a, [sCurrentWaterInWateringCan]
    or a
    jr z, jr_021_6149

    ld a, $56
    ld [$c912], a
    jr jr_021_614e

jr_021_6149:
    ld a, $10
    ld [$c912], a

jr_021_614e:
    ld a, [wPlayerFacingDirection]
    call Call_000_191a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_6173

    cp $01
    jr z, jr_021_6182

    cp $02
    jp z, Jump_021_6191

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    add hl, bc
    ld a, [hl]
    jr jr_021_619e

jr_021_6173:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    jr jr_021_619e

jr_021_6182:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    add hl, bc
    ld a, [hl]
    jr jr_021_619e

Jump_021_6191:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    add hl, bc
    ld a, [hl]

jr_021_619e:
    cp $20
    ret c

    cp $39
    ret nc

    ld a, $19
    call RST_TableJumpBankSwitch
    ld a, $36
    ld [$c912], a
    ret


Jump_021_61af:
    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $14
    call RST_TableJumpBankSwitch
    ld a, $32
    ld [$c912], a
    ret


Jump_021_61bf:
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
    cp $00
    jr z, jr_021_61eb

    cp $01
    jr z, jr_021_61f3

    xor a
    ld [$b8b1], a
    call Call_021_633a
    ret


jr_021_61eb:
    xor a
    ld [$b8ab], a
    call Call_021_633a
    ret


jr_021_61f3:
    xor a
    ld [$b8b2], a
    call Call_021_633a
    ret


Jump_021_61fb:
    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $0a
    call RST_TableJumpBankSwitch
    ld a, $4c
    ld [$c912], a
    ret


Jump_021_620b:
    ld b, $03
    call CheckForNoEnergyAnimation
    ld a, $16
    call RST_TableJumpBankSwitch
    ld a, $35
    ld [$c912], a
    ret


Jump_021_621b:
    ld b, $03
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $69
    ld [$c912], a
    ld a, [$b88a]
    cp $03
    jr z, jr_021_623d

    ld a, [$b89f]
    cp $03
    ret z

    ld a, $01
    ld [$b89f], a
    ret


jr_021_623d:
    ld a, $02
    ld [$b89f], a
    ret


    ld b, $02
    call CheckForNoEnergyAnimation
    ld a, $63
    call Call_000_151d
    ld a, $60
    ld [$c912], a
    ret


Jump_021_6253:
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
    cp COW_FEED
    jr z, .usedCowFeed

    ld a, [sNumChickenFeed]
    dec a
    ld [sNumChickenFeed], a
    ret nz

    xor a
    ld [sChickenFeedFlag], a
    call Call_021_633a
    ret

.usedCowFeed
    ld a, [sNumCowFeed]
    dec a
    ld [sNumCowFeed], a
    ret nz

    xor a
    ld [sCowFeedFlag], a
    call Call_021_633a
    ret


Jump_021_6293:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_62bc:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_62e6:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_6310:
    ld b, $01
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
    call Call_021_633a
    ret


Call_021_633a:
    ld a, $50
    ld [$cb8f], a
    ret


Jump_021_6340:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_636a:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_6394:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_63be:
    ld b, $01
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
    call Call_021_633a
    ret


Jump_021_63e8:
    ld b, $01
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
    call Call_021_633a
    ret


Call_021_6412:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_6427

    cp $01
    jp z, Jump_021_642b

    cp $02
    jp z, Jump_021_642f

    call Call_000_18f6
    ret


jr_021_6427:
    call Call_000_18ff
    ret


Jump_021_642b:
    call Call_000_1908
    ret


Jump_021_642f:
    call Call_000_1911
    ret


    ld a, [$cb43]
    ld h, a
    ld a, [$cb44]
    ld l, a
    ld a, [$cb45]
    cp $01
    jr nz, jr_021_6448

    ld a, $00
    ld [hl+], a
    ld [hl+], a
    jr jr_021_648d

jr_021_6448:
    cp $02
    jr nz, jr_021_6465

jr_021_644c:
    push hl
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, [$b90c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_021_648d

jr_021_6465:
    cp $03
    jr nz, jr_021_646d

    dec hl
    dec hl
    jr jr_021_644c

jr_021_646d:
    cp $04
    jr nz, jr_021_647e

    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_021_644c

jr_021_647e:
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
    jr jr_021_644c

jr_021_648d:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_64d5

    cp $01
    jp z, Jump_021_64f6

    cp $02
    jp z, Jump_021_651a

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    and $0f
    cp $0c
    jr z, jr_021_64c7

    or $10
    sub $0d
    cp $10
    jr z, jr_021_64c7

    cp $11
    jr z, jr_021_64c7

    cp $12
    jr z, jr_021_64c7

    cp $09
    jr c, jr_021_64c9

    sub $08
    jr jr_021_64c9

jr_021_64c7:
    ld a, $00

jr_021_64c9:
    ld c, a
    ld a, $e8
    sub c
    ld c, a
    call Call_000_195e
    jp Jump_021_6538


    ret


jr_021_64d5:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    and $0f
    jr z, jr_021_64ec

    cp $01
    jr z, jr_021_64ec

    ld c, a
    ld a, $10
    sub c

jr_021_64ec:
    add $04
    ld c, a
    call Call_000_195e
    jp Jump_021_6538


    ret


Jump_021_64f6:
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
    jr z, jr_021_650f

    cpl
    inc a

jr_021_650f:
    ld b, a
    ld a, $ec
    sub b
    ld b, a
    call Call_000_195e
    jr jr_021_6538

    ret


Jump_021_651a:
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
    jr jr_021_6538

    ret


Jump_021_6538:
jr_021_6538:
    ld a, [$cb45]
    cp $01
    jr nz, jr_021_655a

    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
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
    ld [hl+], a
    ld [hl], a
    ret


jr_021_655a:
    ld a, [$cb45]
    cp $02
    jr nz, jr_021_65d4

Jump_021_6561:
    push hl
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_021_65fa
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
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
    ld [hl+], a
    ld [hl+], a
    call Call_021_65fa
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
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
    ld [hl+], a
    ld [hl+], a
    call Call_021_65fa
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
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
    ld [hl+], a
    ld [hl+], a
    call Call_021_65fa
    call Call_000_199a
    call SyncToBlankPeriod
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


jr_021_65d4:
    cp $03
    jr nz, jr_021_65dd

    dec hl
    dec hl
    jp Jump_021_6561


jr_021_65dd:
    cp $04
    jr nz, jr_021_65ec

    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_021_6561


jr_021_65ec:
    dec hl
    dec hl
    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_021_6561


    ret


Call_021_65fa:
    push de
    ld a, l
    and $3f
    cp $20
    jr nz, jr_021_6606

    ld de, $0020
    add hl, de

jr_021_6606:
    pop de
    ret


Call_021_6608:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c609]
    cp $02
    jr nz, jr_021_661e

    ld a, [$c608]
    cp $e8
    ret nc

jr_021_661e:
    ld a, [$c609]
    cp $02
    jr nz, jr_021_662c

    ld a, [$c608]
    cp $c0
    jr nc, jr_021_665d

jr_021_662c:
    ld a, [$c609]
    cp $00
    jr nz, jr_021_663a

    ld a, [$c608]
    cp $48
    jr c, jr_021_665d

jr_021_663a:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]
    ldh a, [$ff91]
    and $0f
    cp $00
    call z, Call_021_7374

jr_021_664b:
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


jr_021_665d:
    ld hl, $c60b
    inc [hl]
    jr jr_021_664b

    ret


Call_021_6664:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c609]
    cp $00
    jr nz, jr_021_667a

    ld a, [$c608]
    cp $0e
    ret c

jr_021_667a:
    ld a, [$c609]
    cp $02
    jr nz, jr_021_6688

    ld a, [$c608]
    cp $c1
    jr nc, jr_021_66b9

jr_021_6688:
    ld a, [$c609]
    cp $00
    jr nz, jr_021_6696

    ld a, [$c608]
    cp $49
    jr c, jr_021_66b9

jr_021_6696:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]
    ldh a, [$ff91]
    and $0f
    cp $0f
    call z, Call_021_7325

jr_021_66a7:
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


jr_021_66b9:
    ld hl, $c60b
    dec [hl]
    jr jr_021_66a7

    ret


Call_021_66c0:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c607]
    cp $00
    jr nz, jr_021_66d6

    ld a, [$c606]
    cp $18
    ret c

jr_021_66d6:
    ld a, [$b90b]
    or a
    jr z, jr_021_66ec

    ld a, [$c607]
    cp $03
    jr nz, jr_021_66fa

    ld a, [$c606]
    cp $b1
    jr nc, jr_021_672b

    jr jr_021_66fa

jr_021_66ec:
    ld a, [$c607]
    cp $02
    jr nz, jr_021_66fa

    ld a, [$c606]
    cp $c1
    jr nc, jr_021_672b

jr_021_66fa:
    ld a, [$c607]
    cp $00
    jr nz, jr_021_6708

    ld a, [$c606]
    cp $51
    jr c, jr_021_672b

jr_021_6708:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]
    ldh a, [$ff93]
    and $0f
    cp $0f
    call z, Call_021_73c3

jr_021_6719:
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


jr_021_672b:
    ld hl, $c60a
    dec [hl]
    jr jr_021_6719

    ret


Call_021_6732:
    ld a, $05
    ld [$c611], a
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$b90b]
    or a
    jr z, jr_021_675e

    ld a, [$c607]
    cp $03
    jr nz, jr_021_674e

    ld a, [$c606]
    cp $e8
    ret nc

jr_021_674e:
    ld a, [$c607]
    cp $03
    jr nz, jr_021_6779

    ld a, [$c606]
    cp $b0
    jr nc, jr_021_67aa

    jr jr_021_6779

jr_021_675e:
    ld a, [$c607]
    cp $02
    jr nz, jr_021_676b

    ld a, [$c606]
    cp $f8
    ret nc

jr_021_676b:
    ld a, [$c607]
    cp $02
    jr nz, jr_021_6779

    ld a, [$c606]
    cp $c0
    jr nc, jr_021_67aa

jr_021_6779:
    ld a, [$c607]
    cp $00
    jr nz, jr_021_6787

    ld a, [$c606]
    cp $50
    jr c, jr_021_67aa

jr_021_6787:
    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]
    ldh a, [$ff93]
    and $0f
    cp $00
    call z, Call_021_7418

jr_021_6798:
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


jr_021_67aa:
    ld hl, $c60a
    inc [hl]
    jr jr_021_6798

    ret


Call_021_67b1:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr nz, jr_021_67ce

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


jr_021_67ce:
    cp $01
    jr nz, jr_021_67ff

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
    jr z, jr_021_67f1

    cp $0c
    jr nc, jr_021_67f5

    cp $04
    jr nc, jr_021_67f9

jr_021_67f1:
    ld b, $ec
    jr jr_021_67fb

jr_021_67f5:
    ld b, $dc
    jr jr_021_67fb

jr_021_67f9:
    ld b, $e4

jr_021_67fb:
    call Call_000_195e
    ret


jr_021_67ff:
    cp $02
    jr nz, jr_021_6830

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
    jr z, jr_021_6826

    cp $0c
    jr nc, jr_021_6826

    cp $04
    jr nc, jr_021_682a

    ld b, $1c
    jr jr_021_682c

jr_021_6826:
    ld b, $0c
    jr jr_021_682c

jr_021_682a:
    ld b, $14

jr_021_682c:
    call Call_000_195e
    ret


jr_021_6830:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    sub $0d
    and $0f
    cp $00
    jr z, jr_021_6857

    cp $0b
    jr nc, jr_021_684f

    cp $03
    jr nc, jr_021_6853

    ld c, $e8
    jr jr_021_6859

jr_021_684f:
    ld c, $d8
    jr jr_021_6859

jr_021_6853:
    ld c, $e0
    jr jr_021_6859

jr_021_6857:
    ld c, $e8

jr_021_6859:
    call Call_000_195e
    ret


Call_021_685d:
    ld hl, $582c
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_6866:
    ld hl, $58ce
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_686f:
    ld hl, $5974
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_6878:
    ld hl, $5a1e
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_6881:
    ld hl, $5ac8
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_688a:
    ld hl, $5d31
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_6893:
    ld hl, $4fca
    ld a, $25
    call BankSwitchCallHL
    ret


Call_021_689c:
    ld a, [wHeldObject]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    call Call_000_14f9
    ld a, [$cb2f]
    cp $3d
    jr nz, jr_021_68bc

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3d
    jr nz, jr_021_68bc

    call Call_021_690b
    pop hl
    ret


jr_021_68bc:
    cp $3e
    jr nz, jr_021_68d1

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3e
    jr nz, jr_021_68d1

    ld a, [$cb8b]
    or a
    ret nz

    call Call_021_6943
    pop hl
    ret


jr_021_68d1:
    cp $3f
    jr nz, jr_021_68e6

    ld a, [wLeftOrDownSideFacingTileID]
    cp $3f
    jr nz, jr_021_68e6

    ld a, [$cb8b]
    or a
    ret nz

    call Call_021_694e
    pop hl
    ret


jr_021_68e6:
    ld a, [wcb30]
    and $40
    ret nz

    ld a, [wcb32]
    and $40
    ret nz

    ld a, [$cb2f]
    cp $40
    jr nz, jr_021_690a

    ld a, [wLeftOrDownSideFacingTileID]
    cp $40
    jr nz, jr_021_690a

    ld a, [$cb8b]
    or a
    ret nz

    call Call_021_6959
    pop hl
    ret


jr_021_690a:
    ret


Call_021_690b:
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
    jr z, jr_021_692a

    ld a, $00
    ld [$b8e1], a
    ret


jr_021_692a:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_021_6943:
    ld a, $02
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_021_694e:
    ld a, $03
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_021_6959:
    ld a, $04
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ret


Call_021_6968:
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


Call_021_6998:
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


Call_021_69cd:
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


Call_021_69fa:
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


Call_021_6a38:
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
    jr c, jr_021_6a61

    cp $a1
    jr nc, jr_021_6a61

    ret


jr_021_6a61:
    ldh a, [$ff8a]
    or a
    jr z, jr_021_6a71

    xor a
    ld [$cb7c], a
    ld [$cb7a], a
    ld [$cb7b], a
    ret


jr_021_6a71:
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

    call Call_021_7032
    xor a
    ld [$cb7a], a
    ld [$cb7b], a
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_021_6abf

    cp $01
    jr z, jr_021_6adb

    cp $02
    jr z, jr_021_6af7

    ldh a, [hRandomNumber]
    and $01
    jr z, jr_021_6ab4

    ld a, $9f
    call Call_000_151d
    ld a, $e4
    ld [$cb7c], a
    ret


jr_021_6ab4:
    ld a, $a0
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


jr_021_6abf:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_021_6ad0

    ld a, $99
    call Call_000_151d
    ld a, $9f
    ld [$cb7c], a
    ret


jr_021_6ad0:
    ld a, $9a
    call Call_000_151d
    ld a, $f8
    ld [$cb7c], a
    ret


jr_021_6adb:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_021_6aec

    ld a, $9b
    call Call_000_151d
    ld a, $3e
    ld [$cb7c], a
    ret


jr_021_6aec:
    ld a, $9c
    call Call_000_151d
    ld a, $e1
    ld [$cb7c], a
    ret


jr_021_6af7:
    ldh a, [hRandomNumber]
    and $01
    jr z, jr_021_6b08

    ld a, $9d
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


jr_021_6b08:
    ld a, $9e
    call Call_000_151d
    ld a, $4e
    ld [$cb7c], a
    ret


Call_021_6b13:
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb79]
    or a
    ret z

    dec a
    ld [$cb79], a
    or a
    jr z, jr_021_6b37

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr nz, jr_021_6b37

    ret


jr_021_6b37:
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
    call Call_021_4208
    pop hl
    ret


Call_021_6b64:
    ld a, [$b882]
    cp $06
    jr c, jr_021_6b71

    ld a, [$b882]
    cp $12
    ret c

jr_021_6b71:
    ld a, $bd
    ld [$c0a3], a
    ret


Call_021_6b77:
    ld a, [$cb8b]
    or a
    jr nz, jr_021_6ba7

    ld a, [$b8e1]
    or a
    jr z, jr_021_6ba7

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
    jr jr_021_6bab

jr_021_6ba7:
    xor a
    ld [$c7a0], a

jr_021_6bab:
    ld hl, $6c43
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
    jr z, jr_021_6c0a

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
    jr jr_021_6c32

jr_021_6c0a:
    ld a, [$b890]
    or a
    jr z, jr_021_6c32

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

jr_021_6c32:
    ld a, [$c910]
    cp $05
    jr z, jr_021_6c3a

    ret


jr_021_6c3a:
    ld a, $28
    ldh [$ff93], a
    ld a, $88
    ldh [$ff93], a
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    jr nc, jr_021_6c4e

    ld d, b

jr_021_6c4e:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0138], sp
    jr nc, jr_021_6c5e

    ld d, b

jr_021_6c5e:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$01c8], sp
    jr nc, jr_021_6c6e

    ld d, b

jr_021_6c6e:
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
    jr nc, jr_021_6c8e

    ld d, b

jr_021_6c8e:
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
    jr nc, jr_021_6cbe

    nop

jr_021_6cbe:
    nop
    nop
    nop
    nop
    nop

Call_021_6cc3:
    ld a, [$b8ea]
    or a
    ret z

    ld a, [$b88c]
    cp $01
    jr z, jr_021_6ce9

    ld hl, $6cb3
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


jr_021_6ce9:
    ld hl, $6ca3
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
    ld [bc], a
    ld l, l
    ld de, $c800
    ld b, $10
    call CopyHLtoDE
    ret


Call_021_6d1e:
    ld hl, vBGMap1
    ld de, $6d2c
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
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    and e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    and h
    ld a, [$cb14]
    or a
    jr nz, jr_021_6db5

    ld a, [$cb15]
    or a
    jr nz, jr_021_6dc4

    ld a, [$cb16]
    or a
    jr nz, jr_021_6dd8

    ld a, [$cb17]
    or a
    jr nz, jr_021_6df1

    ld a, [$cb18]
    or a
    jr nz, jr_021_6dff

    ld a, [$cb19]
    or a
    jr nz, jr_021_6e0d

    ret


jr_021_6db5:
    ld de, $c913
    ld hl, $8000
    xor a
    ld [$cb14], a
    ld c, $0a
    jp Jump_021_6e51


jr_021_6dc4:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb15], a
    ld a, [$c820]
    or a
    jr nz, jr_021_6ded

    ld c, $04
    jr jr_021_6e1d

jr_021_6dd8:
    ld de, $c9f3
    ld hl, $80e0
    xor a
    ld [$cb16], a
    ld a, [$c0a7]
    cp $03
    jr nz, jr_021_6e09

    cp $04
    jr nz, jr_021_6e09

jr_021_6ded:
    ld c, $06
    jr jr_021_6e1d

jr_021_6df1:
    ld de, $ca33
    ld hl, $8120
    xor a
    ld [$cb17], a
    ld c, $08
    jr jr_021_6e1d

jr_021_6dff:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb18], a

jr_021_6e09:
    ld c, $0a
    jr jr_021_6e1d

jr_021_6e0d:
    ld de, $cab3
    ld hl, $81a0
    xor a
    ld [$cb19], a
    ld c, $02
    jr jr_021_6e1d

    ld c, $08

jr_021_6e1d:
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
    jr nz, jr_021_6e1d

    ret


Jump_021_6e51:
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
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


Call_021_7032:
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

    ldh a, [hRandomNumber]
    and $0f
    cp $0f
    jr z, jr_021_7066

    cp $0e
    jr z, jr_021_70a9

    cp $0d
    jp z, Jump_021_70e9

    ret


jr_021_7066:
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
    call Call_021_7129
    ret


jr_021_70a9:
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
    call Call_021_7129
    ret


Jump_021_70e9:
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
    call Call_021_7129
    ret


Call_021_7129:
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
    jp z, Jump_021_71a3

    ld a, [hl-]
    cp $81
    ret nz

    ld a, [hl]
    cp $39
    jp z, Jump_021_71a3

    cp $3a
    jp z, Jump_021_71a3

    cp $3b
    jp z, Jump_021_71a3

    cp $3c
    jp z, Jump_021_71a3

    cp $46
    jp nc, Jump_021_71a3

    ret


Jump_021_71a3:
    xor a
    ld [$c760], a
    ret


Call_021_71a8:
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
    jr z, jr_021_71ce

    cp $07
    jr z, jr_021_71ce

    ret


jr_021_71ce:
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
    ret


Call_021_7221:
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


Call_021_725f:
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

jr_021_72ae:
    push hl
    push de
    ld c, $0d

jr_021_72b2:
    call Call_000_1391
    inc hl
    inc hl
    inc de
    inc de
    dec c
    jr nz, jr_021_72b2

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
    jr nz, jr_021_72ae

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


Call_021_7325:
    ld de, $cb23
    call Call_021_74c1
    ld de, $cb25
    call Call_021_74c1
    ld de, $cb1f
    call Call_021_74c1
    ld de, $cb21
    call Call_021_74c1
    ld de, $cb2b
    call Call_021_7489
    ld de, $cb2d
    call Call_021_7489
    ld de, $cb27
    call Call_021_7489
    ld de, $cb29
    call Call_021_7489
    ld a, [$cb2b]
    ld l, a
    ld a, [$cb2c]
    ld h, a
    ld a, [$cb23]
    ld [$cb1d], a
    ld a, [$cb24]
    ld [$cb1e], a
    ld b, $0c

jr_021_736b:
    call Call_000_1471
    inc hl
    inc hl
    dec b
    jr nz, jr_021_736b

    ret


Call_021_7374:
    ld de, $cb23
    call Call_021_74d8
    ld de, $cb25
    call Call_021_74d8
    ld de, $cb1f
    call Call_021_74d8
    ld de, $cb21
    call Call_021_74d8
    ld de, $cb2b
    call Call_021_7498
    ld de, $cb2d
    call Call_021_7498
    ld de, $cb27
    call Call_021_7498
    ld de, $cb29
    call Call_021_7498
    ld a, [$cb2d]
    ld l, a
    ld a, [$cb2e]
    ld h, a
    ld a, [$cb25]
    ld [$cb1d], a
    ld a, [$cb26]
    ld [$cb1e], a
    ld b, $0c

jr_021_73ba:
    call Call_000_1471
    inc hl
    inc hl
    dec b
    jr nz, jr_021_73ba

    ret


Call_021_73c3:
    ld de, $cb23
    call Call_021_74b4
    ld de, $cb25
    call Call_021_74b4
    ld de, $cb1f
    call Call_021_74b4
    ld de, $cb21
    call Call_021_74b4
    ld de, $cb2b
    call Call_021_747b
    ld de, $cb2d
    call Call_021_747b
    ld de, $cb27
    call Call_021_747b
    ld de, $cb29
    call Call_021_747b
    ld a, [$cb27]
    ld l, a
    ld a, [$cb28]
    ld h, a
    ld a, [$cb1f]
    ld [$cb1d], a
    ld a, [$cb20]
    ld [$cb1e], a
    ld b, $0c

jr_021_7409:
    call Call_000_13e7
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_021_7409

    ret


Call_021_7418:
    ld de, $cb23
    call Call_021_74a7
    ld de, $cb25
    call Call_021_74a7
    ld de, $cb1f
    call Call_021_74a7
    ld de, $cb21
    call Call_021_74a7
    ld de, $cb2b
    call Call_021_746d
    ld de, $cb2d
    call Call_021_746d
    ld de, $cb27
    call Call_021_746d
    ld de, $cb29
    call Call_021_746d
    ld a, [$cb29]
    ld l, a
    ld a, [$cb2a]
    ld h, a
    ld a, [$cb21]
    ld [$cb1d], a
    ld a, [$cb22]
    ld [$cb1e], a
    ld b, $0c

jr_021_745e:
    call Call_000_13e7
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_021_745e

    ret


Call_021_746d:
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


Call_021_747b:
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


Call_021_7489:
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


Call_021_7498:
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


Call_021_74a7:
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


Call_021_74b4:
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


Call_021_74c1:
    ld a, [de]
    sub $40
    ld l, a
    inc de
    ld a, [de]
    sbc $00
    ld h, a
    cp $97
    jr nz, jr_021_74d2

    ld bc, $0400
    add hl, bc

jr_021_74d2:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_021_74d8:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld bc, $0040
    add hl, bc
    ld a, h
    cp $9c
    jr nz, jr_021_74ea

    ld a, h
    sub $04
    ld h, a

jr_021_74ea:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_021_74f0:
    ld a, [$b88d]
    or a
    jr nz, jr_021_750b

    ld a, [$b88c]
    or a
    ret nz

    call Call_021_7701
    call Call_021_771c
    call Call_021_7758
    call Call_021_7775
    call Call_021_779e
    ret


jr_021_750b:
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
    jp z, Jump_021_7584

    cp $02
    jp z, Jump_021_7596

    cp $03
    jp z, Jump_021_75a6

    cp $04
    jp z, Jump_021_75c2

    cp $05
    jp z, Jump_021_75d2

    cp $06
    jp z, Jump_021_7601

    cp $07
    jp z, Jump_021_7615

    cp $08
    jp z, Jump_021_7629

    cp $09
    jp z, Jump_021_7639

    cp $0a
    jp z, Jump_021_7649

    cp $0b
    jp z, Jump_021_766b

    cp $0c
    jp z, Jump_021_767b

    cp $0d
    jp z, Jump_021_768b

    cp $0f
    jp z, Jump_021_76aa

    cp $10
    jp z, Jump_021_76af

    cp $10
    jp z, Jump_021_76af

    cp $12
    jp z, Jump_021_76bf

    cp $13
    jp z, Jump_021_76cf

    ret


Jump_021_7584:
    ld a, $01
    ld [$b8ea], a
    call Call_021_6cc3
    call Call_021_76df
    ld a, [sCurrentDayCounter]
    ld [$b8eb], a
    ret


Jump_021_7596:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_75a6:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $24
    call Call_000_152a
    call Call_021_76df
    ld a, [$b88b]
    ld [$b894], a
    ld a, [$b88a]
    ld [$b895], a
    ret


Jump_021_75c2:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_75d2:
    call $6d12
    ld a, [sPlayerGender]
    cp $00
    jr z, jr_021_75e9

    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_152a
    call Call_021_76df
    ret


jr_021_75e9:
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_152a
    call Call_021_76df
    ld a, [$b896]
    cp $02
    ret z

    ld a, $01
    ld [$b896], a
    ret


Jump_021_7601:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_152a
    call Call_021_76df
    xor a
    ld [$c80c], a
    ret


Jump_021_7615:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_152a
    call Call_021_76df
    xor a
    ld [$c80c], a
    ret


Jump_021_7629:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_7639:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_7649:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_152a
    call Call_021_76df
    ld a, [sCurrentDayCounter]
    ld [$ba3b], a
    ld a, [sCurrentSeason]
    ld [$ba3c], a
    ld a, [$b885]
    ld [$ba3d], a
    ret


Jump_021_766b:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_767b:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_768b:
    call $6d12
    ld hl, $c806
    ld bc, $0004
    call Call_000_0cce
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_021_76df
    ld a, [sCurrentDayCounter]
    ld [$b89b], a
    ret


Jump_021_76aa:
    ld a, $01
    ld [$b89d], a

Jump_021_76af:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $34
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_76bf:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_152a
    call Call_021_76df
    ret


Jump_021_76cf:
    call $6d12
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_152a
    call Call_021_76df
    ret


Call_021_76df:
    ld a, $00
    ld [$cbf4], a
    ld a, $21
    ld [$cbf5], a
    ld a, $01
    ld [$cbf1], a
    ld hl, $7d94
    ld a, l
    ld [$cbf2], a
    ld a, h
    ld [$cbf3], a
    xor a
    ld [$cbee], a
    ld [$cbef], a
    ret


Call_021_7701:
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


Call_021_771c:
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


Call_021_7758:
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


Call_021_7775:
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


Call_021_779e:
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


Call_021_77c7:
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
    jr z, jr_021_77ed

    cp $02
    jr z, jr_021_77ed

    cp $03
    jr z, jr_021_7831

    cp $04
    jp z, Jump_021_786f

    cp $05
    jp z, Jump_021_789e

    ret


jr_021_77ed:
    xor a
    ld [$cb90], a
    ld hl, $5f2e
    ld a, $22
    call BankSwitchCallHL
    ld a, [$cb8d]
    cp $ff
    ret z

    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_021_782a

    ld a, [$cb8d]
    cp $01
    jr nz, jr_021_7820

    ld a, $3c
    ld [$c912], a
    ld a, $8e
    call Call_000_151d
    call Call_000_1afe
    ret


jr_021_7820:
    ld a, $b5
    call Call_000_151d
    call Call_000_1afe
    pop hl
    ret


jr_021_782a:
    ld a, $20
    call Call_000_151d
    pop hl
    ret


jr_021_7831:
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
    jr z, jr_021_7862

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


jr_021_7862:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, $20
    call Call_000_3f52
    ret


Jump_021_786f:
    xor a
    ld [$cb90], a
    call $6d12
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


Jump_021_789e:
    xor a
    ld [$cb90], a
    call $6d12
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


Call_021_78cd:
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
    jr z, jr_021_7933

    cp $02
    jr z, jr_021_7952

    cp $03
    jp z, Jump_021_797d

    cp $04
    jp z, Jump_021_79a8

    cp $05
    jp z, Jump_021_79d3

    cp $06
    jp z, Jump_021_7a1a

    cp $07
    jp z, Jump_021_7a45

    cp $08
    jp z, Jump_021_7a6e

    cp $09
    jp z, Jump_021_7ab8

    cp $0a
    jp z, Jump_021_7ae1

    cp $0b
    jp z, Jump_021_7b0a

    cp $0c
    jp z, Jump_021_7b33

    cp $0d
    jp z, Jump_021_7b5c

    cp $0f
    jp z, Jump_021_7b97

    cp $10
    jp z, Jump_021_7ba4

    cp $12
    jp z, Jump_021_7bcd

    cp $13
    jp z, Jump_021_7bf6

    ret


jr_021_7933:
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
    call Call_021_4208
    xor a
    ld [$cb81], a
    ret


jr_021_7952:
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


Jump_021_797d:
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


Jump_021_79a8:
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


Jump_021_79d3:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $01
    ld a, [sPlayerGender]
    or a
    jr z, jr_021_7a01

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


jr_021_7a01:
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


Jump_021_7a1a:
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


Jump_021_7a45:
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


Jump_021_7a6e:
    ld a, [$c604]
    cp $04
    jr nz, jr_021_7a8f

    ld a, [$c912]
    cp $ff
    jr z, jr_021_7a8f

    ld a, $ff
    ld [$c912], a
    ld a, $48
    call Call_000_151d
    xor a
    ld [$cbf6], a
    ld a, $53
    call Call_000_3f52

jr_021_7a8f:
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


Jump_021_7ab8:
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


Jump_021_7ae1:
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


Jump_021_7b0a:
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


Jump_021_7b33:
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


Jump_021_7b5c:
    ld a, [$cbf6]
    cp $01
    ret nz

    ld a, [$b89a]
    or a
    jr z, jr_021_7b74

    ld a, $03
    ld [$c80d], a
    ld a, $13
    call Call_000_152a
    jr jr_021_7b7e

jr_021_7b74:
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a

jr_021_7b7e:
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


Jump_021_7b97:
    ld a, $02
    ld [$b89d], a
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a

Jump_021_7ba4:
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


Jump_021_7bcd:
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


Jump_021_7bf6:
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


Call_021_7c1f:
    ld a, [$b88c]
    or a
    ret z

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
    jp z, Jump_021_7c90

    cp $02
    jp z, Jump_021_7c96

    cp $03
    jp z, Jump_021_7c9c

    cp $04
    jp z, Jump_021_7ca2

    cp $05
    jp z, Jump_021_7ca8

    cp $06
    jp z, Jump_021_7cb3

    cp $07
    jp z, Jump_021_7cb9

    cp $08
    jp z, Jump_021_7cbf

    cp $09
    jp z, Jump_021_7cc5

    cp $0a
    jp z, Jump_021_7ccb

    cp $0b
    jp z, Jump_021_7cd1

    cp $0c
    jp z, Jump_021_7d20

    cp $0d
    jp z, Jump_021_7d26

    cp $0f
    jp z, Jump_021_7d2c

    cp $10
    jp z, Jump_021_7d32

    cp $12
    jp z, Jump_021_7d38

    cp $13
    jp z, Jump_021_7d8e

    ret


Jump_021_7c90:
    ld a, $1e
    call Call_000_3f52
    ret


Jump_021_7c96:
    ld a, $21
    call Call_000_3f52
    ret


Jump_021_7c9c:
    ld a, $22
    call Call_000_3f52
    ret


Jump_021_7ca2:
    ld a, $23
    call Call_000_3f52
    ret


Jump_021_7ca8:
    ld a, [sPlayerGender]
    ld b, a
    ld a, $24
    add b
    call Call_000_3f52
    ret


Jump_021_7cb3:
    ld a, $26
    call Call_000_3f52
    ret


Jump_021_7cb9:
    ld a, $29
    call Call_000_3f52
    ret


Jump_021_7cbf:
    ld a, $2b
    call Call_000_3f52
    ret


Jump_021_7cc5:
    ld a, $2c
    call Call_000_3f52
    ret


Jump_021_7ccb:
    ld a, $2d
    call Call_000_3f52
    ret


Jump_021_7cd1:
    ld a, [$b911]
    cp $00
    jr z, jr_021_7cfb

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


jr_021_7cfb:
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


Jump_021_7d20:
    ld a, $2f
    call Call_000_3f52
    ret


Jump_021_7d26:
    ld a, $30
    call Call_000_3f52
    ret


Jump_021_7d2c:
    ld a, $34
    call Call_000_3f52
    ret


Jump_021_7d32:
    ld a, $36
    call Call_000_3f52
    ret


Jump_021_7d38:
    ld a, [$b911]
    cp $01
    jr z, jr_021_7d45

    ld a, $3a
    call Call_000_3f52
    ret


jr_021_7d45:
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
    jr nz, jr_021_7d6d

    ld a, [sInventory]
    cp HAMMER
    jr z, jr_021_7d72

    ld a, [sInventory+1]
    cp HAMMER
    jr z, jr_021_7d80

    ret


jr_021_7d6d:
    xor a
    ld [$b8a5], a
    ret


jr_021_7d72:
    ld a, NO_ITEM
    ld [sInventory], a
    ld hl, $45c5
    ld a, $28
    call BankSwitchCallHL
    ret


jr_021_7d80:
    ld a, NO_ITEM
    ld [sInventory+1], a
    ld hl, $45c5
    ld a, $28
    call BankSwitchCallHL
    ret


Jump_021_7d8e:
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
    jr nz, jr_021_7e52

jr_021_7e52:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_7e7d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc e
    nop
    ccf

jr_021_7e99:
    inc e
    ld a, a
    inc hl
    db $e3
    ld b, b
    ld b, a
    ld [bc], a
    rlca
    inc bc
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$ff80], a
    ldh a, [$ffa0]
    ldh a, [$ff60]
    add sp, -$10
    nop
    nop
    nop
    nop
    ld d, $00
    ccf
    ld [de], a
    ld e, $0b
    dec e
    dec bc
    rrca
    dec b
    rrca
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_021_7eca

jr_021_7eca:
    ld [hl], b
    jr nz, jr_021_7e7d

    ld h, b
    ld d, b
    ldh [$fff0], a
    ldh [rSVBK], a
    and b
    ld b, $00
    rlca
    ld [bc], a
    ld b, $03
    dec b
    inc bc
    rrca
    inc bc
    ld c, $03
    rrca
    dec b
    ld b, $03
    jr nc, jr_021_7ee6

jr_021_7ee6:
    ld [hl], b
    jr nz, jr_021_7e99

    ld h, b
    ld d, b
    ldh [$fff8], a
    ldh [$ffb8], a
    ldh [$ff78], a
    ret nc

    or b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld c, $1e
    add hl, bc
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    db $ec
    cp b
    inc a
    ret z

    ret c

    jr nz, @+$72

    and b
    ldh a, [rNR41]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rlca
    ld bc, $0205
    rlca
    inc bc
    dec b
    inc bc
    rlca
    ld [bc], a
    dec c
    ld b, $06
    nop
    ldh a, [rLCDC]
    ret nc

    and b
    ret nc

    ld h, b
    ldh a, [$ffe0]
    ret nc

    ld h, b
    ld [hl], b
    jr nz, @+$5a

    jr nc, @+$32

    nop
    dec b
    ld [bc], a
    rra
    ld [bc], a
    ld a, a
    add hl, de
    rst $38
    ld h, [hl]
    ld l, a
    ld bc, $060d
    ld c, $04
    inc b
    nop
    ret nc

    and b
    ldh a, [$ffa0]
    ret nc

    ld h, b
    xor b
    ldh a, [$fff8]
    ld h, b
    ld e, b
    jr nc, @+$3a

    db $10
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
