; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc b
    push hl
    push af
    ld l, $da
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    xor a
    ld [$c7a0], a
    ld [$c780], a
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $76c1
    ld c, $04
    ld de, $8800
    call Call_000_31a0
    ld hl, $70b1
    ld c, $04
    ld de, $9000
    call Call_000_31a0
    ld hl, $7b0c
    ld c, $04
    ld de, $8000
    call Call_000_31a0
    ld a, $08
    ld [$cb5c], a
    ld a, $07
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6f75
    ld c, $04
    ld de, $9800
    call Call_000_31a0
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
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
    call Call_004_4736
    call Call_000_1221
    call Call_004_46c4
    ld a, $00
    call RST_TableJumpBankSwitch
    call Call_004_6baf
    ld a, [$b9a6]
    bit 0, a
    call nz, Call_004_5bda
    ld a, [$b9a6]
    bit 1, a
    call nz, Call_004_5bdf
    ld a, [$b9a6]
    bit 2, a
    call nz, Call_004_5be4
    ld a, [$b9a6]
    bit 3, a
    call nz, Call_004_5be9
    ld a, [$b9a4]
    bit 0, a
    call nz, Call_004_5c20
    ld a, [$b9a4]
    bit 1, a
    call nz, Call_004_5c28
    ld a, [$b9a4]
    bit 2, a
    call nz, Call_004_5c30
    ld a, [$b9a4]
    bit 3, a
    call nz, Call_004_5c38
    ld a, [$b9a4]
    bit 4, a
    call nz, Call_004_5c5a
    ld a, [$b9a5]
    cp $00
    call nz, Call_004_5cb8
    ld a, [sChickenFeedFlag]
    or a
    call nz, Call_004_5d01
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
    ld [$c0a2], a
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
    call Call_004_429d
    call Call_000_2d67
    call Call_000_36f4
    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    call Call_004_424d
    call Call_004_4261
    call Call_004_4275
    call Call_004_4289
    ld a, [$cb56]
    or a
    ret nz

    ld hl, $4157
    ld a, [$cc1f]
    rst $00
    ld e, a
    ld b, c
    sbc d
    ld b, c
    sub $41
    ld de, $3e42
    nop
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
    ld [$cc1f], a
    ret


Call_004_424d:
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


Call_004_4261:
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


Call_004_4275:
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


Call_004_4289:
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


Call_004_429d:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    call Call_004_4680
    call Call_004_5562
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ldh a, [$ff8b]
    and $01
    jr z, jr_004_42c5

    call Call_004_4c4a
    ret


jr_004_42c5:
    ldh a, [$ff8a]
    and $02
    jr z, jr_004_42e2

    call Call_004_43f3
    ld a, [$c603]
    and $01
    jr z, jr_004_42e1

    ld a, [$c605]
    cp $08
    jr nz, jr_004_42e1

    ld a, $34
    call Call_000_25ce

jr_004_42e1:
    ret


jr_004_42e2:
    ldh a, [$ff8b]
    and $08
    jr z, jr_004_42ec

    call Call_000_1923
    ret


jr_004_42ec:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_004_4313

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_004_434b

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_004_4383

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_004_43bb

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_004_4313:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call $4752
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_4347

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_004_4501

    ld a, [wcb32]
    and $01
    jp z, Jump_004_4514

    ret


jr_004_4347:
    call Call_004_454d
    ret


Jump_004_434b:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_004_488e
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_437f

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_004_4501

    ld a, [wcb32]
    and $01
    jp z, Jump_004_4514

    ret


jr_004_437f:
    call Call_004_4580
    ret


Jump_004_4383:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_004_49ca
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_43b7

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_004_4527

    ld a, [wcb32]
    and $01
    jp z, Jump_004_453a

    ret


jr_004_43b7:
    call Call_004_45ae
    ret


Jump_004_43bb:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_004_4b06
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_43ef

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_004_4527

    ld a, [wcb32]
    and $01
    jp z, Jump_004_453a

    ret


jr_004_43ef:
    call Call_004_461e
    ret


Call_004_43f3:
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
    ld a, $00
    jr jr_004_441b

jr_004_4411:
    ld a, $01
    jr jr_004_441b

jr_004_4415:
    ld a, $02
    jr jr_004_441b

jr_004_4419:
    ld a, $03

jr_004_441b:
    ld [wPlayerFacingDirection], a

jr_004_441e:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_004_4464

    cp $01
    jr z, jr_004_4499

    cp $02
    jp z, Jump_004_44cd

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_004_488e
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_445d

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_004_4501

    ld a, [wcb32]
    and $01
    jp z, Jump_004_4514

    ret


jr_004_445d:
    call Call_004_4580
    call Call_004_4580
    ret


jr_004_4464:
    ld a, $02
    call RST_TableJumpBankSwitch
    call $4752
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_4492

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_004_4501

    ld a, [wcb32]
    and $01
    jp z, Jump_004_4514

    ret


jr_004_4492:
    call Call_004_454d
    call Call_004_454d
    ret


jr_004_4499:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_004_49ca
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_44c6

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_004_4527

    ld a, [wcb32]
    and $01
    jr z, jr_004_453a

    ret


jr_004_44c6:
    call Call_004_45ae
    call Call_004_45ae
    ret


Jump_004_44cd:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_004_4b06
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_004_44fa

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_004_4527

    ld a, [wcb32]
    and $01
    jr z, jr_004_453a

    ret


jr_004_44fa:
    call Call_004_461e
    call Call_004_461e
    ret


Jump_004_4501:
jr_004_4501:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_45ae
    ret


Jump_004_4514:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_461e
    ret


Jump_004_4527:
jr_004_4527:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_4580
    ret


Jump_004_453a:
jr_004_453a:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_454d
    ret


Call_004_454d:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $83
    jr nc, jr_004_4575

    ld a, [$c608]
    cp $5c
    jr nc, jr_004_4561

    jr jr_004_456e

jr_004_4561:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_004_4569:
    ld hl, $c608
    inc [hl]
    ret


jr_004_456e:
    ld hl, $c60b
    inc [hl]
    jr jr_004_4569

    ret


jr_004_4575:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    ret


Call_004_4580:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_004_459a

    ld a, [$c608]
    cp $08
    jr c, jr_004_45a7

    jr jr_004_45a7

jr_004_459a:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_004_45a2:
    ld hl, $c608
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
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_004_45ec

    cp $01
    jr z, jr_004_45f5

    ld a, [$c606]
    cp $b9
    jr nc, jr_004_45e5

    ld a, [$c607]
    cp $00
    jr nz, jr_004_45d8

    ld a, [$c606]
    cp $59
    jr c, jr_004_45e5

jr_004_45d8:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_45e0:
    ld hl, $c606
    dec [hl]
    ret


jr_004_45e5:
    ld hl, $c60a
    dec [hl]
    jr jr_004_45e0

    ret


jr_004_45ec:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_004_45f5:
    ld a, [$c606]
    cp $99
    jr nc, jr_004_4617

    ld a, [$c607]
    cp $00
    jr nz, jr_004_460a

    ld a, [$c606]
    cp $59
    jr c, jr_004_4617

jr_004_460a:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_4612:
    ld hl, $c606
    dec [hl]
    ret


jr_004_4617:
    ld hl, $c60a
    dec [hl]
    jr jr_004_4612

    ret


Call_004_461e:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_004_4655

    cp $01
    jr z, jr_004_465e

    ld a, [$c606]
    cp $b8
    jr nc, jr_004_464e

    ld a, [$c606]
    cp $58
    jr c, jr_004_464e

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_4649:
    ld hl, $c606
    inc [hl]
    ret


jr_004_464e:
    ld hl, $c60a
    inc [hl]
    jr jr_004_4649

    ret


jr_004_4655:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_004_465e:
    ld a, [$c606]
    cp $98
    jr nc, jr_004_4679

    ld a, [$c606]
    cp $58
    jr c, jr_004_4679

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_4674:
    ld hl, $c606
    inc [hl]
    ret


jr_004_4679:
    ld hl, $c60a
    inc [hl]
    jr jr_004_4674

    ret


Call_004_4680:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_004_4694

    pop hl
    ret


jr_004_4694:
    ld a, [$cc4a]
    cp $ff
    jr z, jr_004_46b1

    ld hl, $6f37
    call Call_000_0a3e
    ld a, [hl]
    cp $ff
    jr nz, jr_004_46b1

    ld a, [$cc4b]
    ld [hl], a
    xor a
    ld [$cb4a], a
    ld [$c620], a

jr_004_46b1:
    call Call_004_6f3f
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    ret

Call_004_46c4:
    ld hl, vBGMap1
    ld de, $46d2
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret

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

Call_004_4736:
    ld hl, $4742
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
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_47b7

    cp $ff
    jr z, jr_004_47b7

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
    jr nc, jr_004_47b7

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_47b7

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_47b7

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_4889

jr_004_47b7:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_47fc

    cp $ff
    jr z, jr_004_47fc

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
    jr nc, jr_004_47fc

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_47fc

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_47fc

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_4889

jr_004_47fc:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4840

    cp $ff
    jr z, jr_004_4840

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
    jr nc, jr_004_4840

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_4840

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4840

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_4889

jr_004_4840:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4884

    cp $ff
    jr z, jr_004_4884

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
    jr nc, jr_004_4884

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_4884

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4884

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_4889

jr_004_4884:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_4889:
jr_004_4889:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_488e:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


Call_004_49ca:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


Call_004_4b06:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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

Call_004_4c4a:
    ld a, [$cb4a]
    or a
    jp nz, Jump_004_4f75

    ld hl, $4c58
    ld a, [wPlayerFacingDirection]
    rst $00
    ld h, b
    ld c, h
    ld h, l
    ld c, h
    ld l, d
    ld c, h
    ld l, a
    ld c, h
    call $4752
    jr jr_004_4c72

    call Call_004_49ca
    jr jr_004_4c72

    call Call_004_4b06
    jr jr_004_4c72

    call Call_004_488e

jr_004_4c72:
    ldh a, [$ffa4]
    or a
    jr z, jr_004_4cd8

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [$ffaa]
    ld [$cc4a], a
    ld hl, $6f37
    call Call_000_0a3e
    ld a, $ff
    ld [hl], a
    ldh a, [$ffaa]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    cp $03
    jr z, jr_004_4cb6

    ld a, $27
    ld [$cb4a], a
    ld a, $74
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_004_4cb6:
    ld a, $28
    ld [$cb4a], a
    ld a, $75
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
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

jr_004_4cd8:
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
    call Call_004_5d32
    jr jr_004_4cf9

    call Call_004_5f86
    jr jr_004_4cf9

    call Call_004_60b0
    jr jr_004_4cf9

    call Call_004_5e5c

jr_004_4cf9:
    ldh a, [$ffa4]
    or a
    jr z, jr_004_4d39

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [$ffaa]
    ld [$cc4a], a
    ld hl, $6f37
    call Call_000_0a3e
    ld a, $ff
    ld [hl], a
    ldh a, [$ffaa]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    ld a, $26
    ld [$cb4a], a
    ld a, $73
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_004_4d39:
    ld a, [$cc1b]
    cp $00
    jr z, jr_004_4d41
    ret

jr_004_4d41:
    ld a, [wCollisionNoMovement]
    or a
    jp z, NoObjectInteraction

    ld a, [wRightOrUpSideFacingTileID]
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

    ld hl, $527d
    ld a, $01
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

    call Call_004_5889
    ld a, [de]
    cp $03
    jp z, Jump_004_5038

    ld a, $04
    ld [$cc20], a
    ret

.topSignChickenCoup
    ld a, $a2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.bottomLeftSignChickenCoup
    ld a, $a4
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.middleSignChickenCoup
    ld a, $a3
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

.rightSignChickenCoup
    ld a, $a5
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret

PickUpChickenFeed:
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, jr_004_4e02

    cp $01
    jr z, jr_004_4ded

    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_004_4ded

    ld a, [sInventory]
    ld [$cc21], a
    call Call_004_6443
    ld a, CHICKEN_FEED
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_004_4e1b

jr_004_4ded:
    ld a, [sInventory+1]
    ld [$cc21], a
    call Call_004_6443
    ld a, CHICKEN_FEED
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_004_4e1b

jr_004_4e02:
    ld a, [sInventory]
    cp $ff
    jr nz, jr_004_4ded

    ld a, [sInventory]
    ld [$cc21], a
    call Call_004_6443
    ld a, $11
    ld [sInventory], a
    xor a
    ld [sItemSlot], a

jr_004_4e1b:
    xor a
    ld [sChickenFeedFlag], a
    ld [$cb34], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $11
    call $16d1
    ld hl, $c62a
    ld a, [$c60a]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl], a
    xor a
    ld [$c623], a
    ld a, $10
    ld [$c912], a
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
    ld a, [wRightOrUpSideFacingTileID]
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
    ld [$cb4a], a
    ld a, $19
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


jr_004_4ea6:
    ld a, [$b9a4]
    res 0, a
    ld [$b9a4], a
    ld a, $00
    ld [$cc18], a
    ld hl, $d91e
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

jr_004_4ebb:
    ld a, [$b9a4]
    res 1, a
    ld [$b9a4], a
    ld a, $01
    ld [$cc18], a
    ld hl, $d8ce
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

jr_004_4ed0:
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a
    ld a, $02
    ld [$cc18], a
    ld hl, $d8ba
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4efa

Jump_004_4ee5:
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

jr_004_4efa:
    ld a, $24
    ld [$cb4a], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $29
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


Jump_004_4f1d:
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
    ld [$cb4a], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $71
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
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
    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    ld a, $04
    ld [$cc20], a
    ret


Jump_004_4f75:
    call Call_004_4f79
    ret


Call_004_4f79:
    ld a, [$cb4a]
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
    ld [$cb4a], a
    ld a, $33
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_004_5889
    ld a, [de]
    cp $03
    jr z, jr_004_5020

    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_004_5020:
    ld a, $19
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_004_5889
    ld a, [de]
    cp $03
    jr z, jr_004_5038

    ret


Jump_004_5038:
jr_004_5038:
    ld a, [wPlayerFacingDirection]
    ld a, [$c606]
    cp $29
    jr c, jr_004_504c

    cp $39
    jr c, jr_004_5071

    cp $49
    jr c, jr_004_5096

    jr jr_004_50bb

jr_004_504c:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_5062

    ld a, $00
    ld [$cc20], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_5062:
    ld a, $00
    ld [$cc18], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_5071:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_5087

    ld a, $01
    ld [$cc20], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_5087:
    ld a, $01
    ld [$cc18], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_5096:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_50ac

    ld a, $02
    ld [$cc20], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_50ac:
    ld a, $02
    ld [$cc18], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_50bb:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_50d1

    ld a, $03
    ld [$cc20], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a
    jr jr_004_50de

jr_004_50d1:
    ld a, $03
    ld [$cc18], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a

jr_004_50de:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_50ed

    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_004_50ed:
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld [wRightOrUpSideFacingTileID], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jr z, jr_004_5125

    cp $09
    jr z, jr_004_5125

    ld a, $2a
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_004_5125:
    ld a, $29
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jp z, Jump_004_5467

    ld a, $04
    ld [$b9a5], a
    ld a, $00
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_004_547a

    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld [wRightOrUpSideFacingTileID], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jr z, jr_004_5176

    cp $09
    jr z, jr_004_5176

    ld a, $72
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_004_5176:
    ld a, $71
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_004_5889
    ld a, [de]
    cp $02
    jp z, Jump_004_5467

    ld a, $84
    ld [$b9a5], a
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
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6f37
    call Call_000_0a3e
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
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
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
    ld hl, $4cd0
    call Call_000_0a3e
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
    jr jr_004_527a

    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jr jr_004_527a

    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jr jr_004_527a

    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
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

Jump_004_527a:
jr_004_527a:
    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
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
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6f37
    call Call_000_0a3e
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
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
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
    ld hl, $4cd0
    call Call_000_0a3e
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
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
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
    jp Jump_004_527a


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
    call $16d1
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6f37
    call Call_000_0a3e
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
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c606]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
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
    ld hl, $4cd0
    call Call_000_0a3e
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
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_004_527a


    ld a, [$cc4a]
    ld hl, $4cd0
    call Call_000_0a3e
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
    jp Jump_004_527a


Jump_004_5467:
    call Call_000_1cff
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_004_547a:
    ld a, $06
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
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
    jp nz, Jump_000_3702

    jr c, jr_004_54de

jr_004_54de:
    sbc b
    and h
    ld [bc], a
    daa
    jr z, jr_004_54e4

jr_004_54e4:
    sbc b
    call nz, Call_000_3702
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
    call Call_000_0a3e
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
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_004_5799

    or a
    jr z, jr_004_57e4

    ret


jr_004_5799:
    ld a, [$c602]
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
    call $16d1
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

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
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
    call Call_000_151d
    pop hl
    ret


jr_004_5813:
    ld a, $8b
    call Call_000_151d
    pop hl
    ret


jr_004_581a:
    ld a, $8c
    call Call_000_151d
    pop hl
    ret


jr_004_5821:
    ld a, $8d
    call Call_000_151d
    pop hl
    ret


Jump_004_5828:
    ld a, [$c912]
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
    ld [$cb4a], a
    ld a, $27
    call $16d1
    jr jr_004_5873

    ld a, $22
    ld [$cb4a], a
    ld a, $25
    call $16d1
    jr jr_004_5873

    ld a, $23
    ld [$cb4a], a
    ld a, $23
    call $16d1

jr_004_5873:
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
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


    ld a, [$c606]
    ld l, a
    ld a, [$c607]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
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


    ld a, [$c608]
    add $08
    ld l, a
    ld a, [$c609]
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
    ld a, [$c606]
    sub $1f
    ld l, a
    ld a, [$c607]
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
    ld a, [$c606]
    sub $18
    ld l, a
    ld a, [$c607]
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


    ld a, [$c608]
    add $08
    ld l, a
    ld a, [$c609]
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
    ld a, [$c606]
    add $1e
    ld l, a
    ld a, [$c607]
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
    ld a, [$c606]
    add $17
    ld l, a
    ld a, [$c607]
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


    ld a, [$c606]
    ld l, a
    ld a, [$c607]
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
    ld a, [$c608]
    add $0a
    ld l, a
    ld a, [$c609]
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
    ld a, [$c608]
    add $0a
    ld l, a
    ld a, [$c609]
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
    ld a, [$c60a]
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
    call Call_004_5af2
    ret


jr_004_5b4b:
    cp $01
    jr nz, jr_004_5b7c

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
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
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


Call_004_5bda:
    ld hl, $98a2
    jr jr_004_5bec

Call_004_5bdf:
    ld hl, $98a4
    jr jr_004_5bec

Call_004_5be4:
    ld hl, $98a6
    jr jr_004_5bec

Call_004_5be9:
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


Call_004_5c20:
    ld hl, $99ee
    ld a, $00
    ld b, a
    jr jr_004_5c3e

Call_004_5c28:
    ld hl, $9962
    ld a, $01
    ld b, a
    jr jr_004_5c3e

Call_004_5c30:
    ld hl, $9930
    ld a, $02
    ld b, a
    jr jr_004_5c3e

Call_004_5c38:
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


Call_004_5cb8:
    ld hl, $99d1
    ld a, [$b9a5]
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


Call_004_5d01:
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

Call_004_5d32:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


Call_004_5e5c:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


Call_004_5f86:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


Call_004_60b0:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0a
    ld d, a
    ld a, [$c608]
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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
    ldh [$ffaa], a
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


    ld a, [$c606]
    ld l, a
    ld a, [$c607]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
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
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
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


    ld a, [$c608]
    add $08
    ld l, a
    ld a, [$c609]
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
    ld a, [$c606]
    sub $18
    ld l, a
    ld a, [$c607]
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
    ld a, [$c606]
    sub $11
    ld l, a
    ld a, [$c607]
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


    ld a, [$c608]
    add $08
    ld l, a
    ld a, [$c609]
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
    ld a, [$c606]
    add $17
    ld l, a
    ld a, [$c607]
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
    ld a, [$c606]
    add $10
    ld l, a
    ld a, [$c607]
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


    ld a, [$c606]
    ld l, a
    ld a, [$c607]
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
    ld a, [$c608]
    add $02
    ld l, a
    ld a, [$c609]
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
    ld a, [$c608]
    add $02
    ld l, a
    ld a, [$c609]
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


Call_004_6443:
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
    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $03
    jr nz, jr_004_64c8

    ld a, $00

jr_004_64c8:
    ld [$cc59], a
    jr jr_004_6513

    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $02
    jr nz, jr_004_64e0

    ld a, $01

jr_004_64e0:
    ld [$cc59], a
    jr jr_004_6513

    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $01
    jr nz, jr_004_64f8

    ld a, $02

jr_004_64f8:
    ld [$cc59], a
    jr jr_004_6513

    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $00
    jr nz, jr_004_6510

    ld a, $03

jr_004_6510:
    ld [$cc59], a

jr_004_6513:
    call Call_000_0b1d
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
    call Call_000_0b1d
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_09c9
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
    jr z, jr_004_69eb

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_004_6a1b

    ld a, [$ba33]
    and $02
    jr z, jr_004_6a03

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6a03

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_004_6a33

    ld a, [$ba33]
    and $02
    jr z, jr_004_69eb

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6a1b

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_004_69eb

    ld a, [$ba33]
    and $02
    jr z, jr_004_6a33

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6a33

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_004_6a03

    ld a, [$ba33]
    and $02
    jr z, jr_004_6a1b

    ret


jr_004_69eb:
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


jr_004_6a03:
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


Jump_004_6a1b:
jr_004_6a1b:
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


Jump_004_6a33:
jr_004_6a33:
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
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
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
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
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
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
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
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0a
    ldh [$ffa6], a
    ld a, [$c608]
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


Call_004_6baf:
    ld a, $00
    ld [$cc1f], a
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
    ld [$cc1f], a
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
    ld [$cc1f], a
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
    ld [$cc1f], a
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
    call Call_004_424d
    call Call_004_4261
    call Call_004_4275
    call Call_004_4289
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


    ld hl, $b9a7
    ld b, $00
    ld a, [$b9a6]
    bit 4, a
    call nz, Call_004_6e37
    ld a, [$b9a6]
    bit 5, a
    call nz, Call_004_6e37
    ld a, [$b9a6]
    bit 6, a
    call nz, Call_004_6e37
    ld a, [$b9a6]
    bit 7, a
    call nz, Call_004_6e37
    ld a, b
    cp $04
    call c, Call_004_6e7a
    xor a
    ld [$b9a4], a
    ld a, $00
    ldh [$ffa5], a
    ld a, $00
    ldh [$ffa4], a
    call Call_004_6ea4
    ld a, $01
    ldh [$ffa4], a
    call Call_004_6ea4
    ld a, $02
    ldh [$ffa4], a
    call Call_004_6ea4
    ld a, $03
    ldh [$ffa4], a
    call Call_004_6ea4
    xor a
    ld [$b9a6], a
    ld hl, $b9a5
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
    ld [$b9a5], a
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

Call_004_6ea4:
    ldh a, [$ffa4]
    ld hl, $6f37
    call Call_000_0a3e
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
    ld hl, $6f37
    call Call_000_0a3e
    ld a, [hl]
    cp $03
    ret nz

    ld a, [$b9a4]
    set 4, a
    ld [$b9a4], a
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


    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c

Call_004_6f3f:
    ld a, [$b882]
    cp $06
    ret c

    ld a, [$b9a6]
    bit 0, a
    jr z, jr_004_6f51

    set 4, a
    ld [$b9a6], a

jr_004_6f51:
    ld a, [$b9a6]
    bit 1, a
    jr z, jr_004_6f5d

    set 5, a
    ld [$b9a6], a

jr_004_6f5d:
    ld a, [$b9a6]
    bit 2, a
    jr z, jr_004_6f69

    set 6, a
    ld [$b9a6], a

jr_004_6f69:
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
    jr nz, jr_004_6fd6

    ld [$53db], sp
    ld d, h
    inc d
    nop
    ld d, [hl]
    inc de
    stop
    ld [hl], b

jr_004_6fd6:
    ld [hl], c
    cp e
    ld [hl], d
    jr nc, jr_004_6fe6

    ld a, [bc]
    dec d
    ld d, $17
    inc hl
    nop
    jr @-$60

    ld bc, $6302

jr_004_6fe6:
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

jr_004_7022:
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
    jr jr_004_7022

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
    dec [hl]
    dec [hl]
    cp $fe
    rst $38
    or e
    or e
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $00
    ld b, a
    dec sp
    rst $38
    add d
    ld a, h
    add e
    ld a, l
    dec [hl]
    inc [hl]
    rst $38
    cp $ff
    or e
    or d
    ld a, a
    ld a, [hl]
    rst $20
    and $7f
    ld a, a
    rst $38
    call z, Call_004_7fcc
    ld a, a
    ld bc, $01fe
    cp $fd
    add e
    jr nz, jr_004_70fc

jr_004_70fc:
    rst $00
    cp $ff
    ld a, l
    cp $ba
    rst $38
    rst $38
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

jr_004_713a:
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
    jr nc, jr_004_713a

    cp $e2
    ld a, [bc]
    db $fc
    ld b, b
    ld b, $40
    nop
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    ld e, a
    rst $38
    and b
    ld e, h
    rst $38
    ld sp, $69f1
    jp hl


    ld b, $ff
    add [hl]
    ret z

    ld hl, sp+$45
    rst $00
    ret nc

    ldh a, [$ffed]
    rst $38
    ld d, $cd
    or $bd
    or $8d
    or [hl]
    dec c
    rst $38
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
    ld a, c
    rst $38
    cp [hl]
    pop de
    cp [hl]
    ld l, c
    cp [hl]
    push de
    cp [hl]
    or c
    pop bc
    ld a, $2b
    nop
    nop
    db $10
    db $f4
    rrca
    and e
    dec b
    dec b
    rrca
    rst $20
    rst $20
    cp $03
    ld c, $95
    ld [$4fb2], a
    ld e, e
    db $fc
    jr c, @+$01

    rst $00
    jp z, $253d

    jp c, Jump_004_77a9

    ld [hl], e
    rst $18
    adc h
    sub $4e
    push de
    ld c, l
    ld b, e
    nop
    rst $18
    ld b, b
    rst $38
    sub b
    ld l, a
    rst $38
    nop
    ld d, [hl]
    ld l, [hl]
    sub l
    xor l
    ei
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
    ld [$f6bf], a
    db $eb
    rst $30
    rst $38
    nop
    ld [$0040], sp
    ld l, e
    rst $30
    ld [hl], d
    xor e
    or d
    ld b, e
    nop
    ei
    ld [bc], a
    add hl, bc
    or $fb
    rst $38
    nop
    ld b, c
    rrca
    or l
    ld [hl], e
    cp l
    ld a, e
    sbc l
    rst $38
    ld a, e
    ld a, l
    add e
    inc sp
    db $fc
    add h
    rst $38
    xor l
    db $fd
    sbc h
    ld hl, $af00
    sbc [hl]
    and a
    sbc [hl]
    cp $c1
    rst $38
    call nz, Call_000_113f
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    rrca
    rst $28
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    pop bc
    dec c
    ld e, b
    or a
    jr nc, @+$01

    rst $08
    ld l, l
    cp [hl]
    rst $18
    jr nz, jr_004_7272

    ld a, $77
    rst $38
    adc $01
    cp $ff
    nop
    ld d, $ed
    inc c
    db $fd
    di
    inc bc
    db $10
    dec c
    ld c, $fd
    ld b, $0d
    or $ff
    dec c
    or $fd
    ld b, $80
    add b
    ld d, d
    db $d3
    rst $38
    ld [$8588], sp
    add a
    dec de
    ei
    xor a
    xor a
    rst $38
    sub h
    ld e, a
    ld c, b
    ld hl, sp+$6d
    halt
    adc l
    or [hl]
    rst $38
    ld l, l
    halt
    dec c
    or $2d
    ld [hl], $8d
    sub [hl]
    rst $18
    ld c, l
    or $4d
    halt
    ld l, c

jr_004_7272:
    add b
    rrca
    ld c, c
    cp [hl]
    rst $38
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, l
    cp [hl]
    ld h, e
    sbc h
    rst $28
    ld d, l
    xor d
    rst $38
    nop
    ld hl, $7d1b
    cp $45
    ld sp, hl
    add $23
    nop
    ld bc, $8322
    ld a, h
    xor e
    ld a, h
    sub e
    cp $44
    nop
    rst $38
    nop
    ret nc

    ld b, b
    rst $18
    ld b, b
    ret nc

    ld bc, $214f
    nop
    add c
    nop
    ld [bc], a
    ld [de], a
    ld [hl], h
    inc h
    inc hl
    ld c, $09
    ld bc, $0e21
    ccf
    add hl, bc
    nop
    ld sp, hl
    nop
    add hl, bc
    ldh a, [rNR42]
    nop
    add c
    nop
    rst $38
    ld d, d
    rst $28
    rst $10
    rst $28
    rst $18
    ldh [$ffbf], a
    rst $08
    rst $38
    ld hl, sp+$3f
    rst $20
    ld a, a

jr_004_72c7:
    ret z

    cp a
    pop af
    rst $18
    rst $38
    ld c, b
    rst $30
    ld l, l
    rst $30
    db $fd
    rlca
    rst $38
    pop af
    rst $38
    adc l
    ld a, [$f9c7]
    ccf
    cp $8f
    pop af
    ei
    ld c, $ff
    ld d, b
    dec de
    ldh [$ff0d], a

jr_004_72e4:
    db $fd
    jr nz, jr_004_72c7

    rst $38
    db $ec
    db $ec
    jr jr_004_72e4

    ld b, b
    ret nz

    inc h
    rst $20
    db $db
    adc c
    adc c
    add c
    ld a, [hl+]
    ld bc, $0301
    dec hl
    dec hl
    rst $38
    db $db
    db $eb
    db $eb
    and e
    dec hl
    inc b
    inc b
    ld bc, $302c
    rst $38
    rst $38
    and e
    cp a
    inc e
    rra
    ld d, [hl]
    ld d, a
    inc bc
    inc bc
    cp a
    rlca
    rlca
    inc bc
    inc bc
    inc l
    cpl
    add hl, bc
    ld de, $ffd7
    inc l
    ld a, a
    add b
    sub l
    ld [hl], l
    rst $38
    nop
    add c
    cp a
    ld bc, $00ff
    ei
    ld a, a
    db $e4
    ld [bc], a
    ld hl, $3a3d
    ld b, b
    ld de, $c0fd
    ld [de], a
    add hl, de
    cp $63
    and b
    add hl, hl
    pop hl
    cpl
    dec sp
    ld bc, $01fe
    ld bc, $fe01
    ld b, c
    ld [bc], a
    ld bc, $0f85
    cp b
    dec b
    db $10
    add l
    rrca
    dec b
    db $10
    ret nc

    ld c, a
    jp nc, $0024

    pop de
    cp $20
    nop
    db $d3
    ld c, a
    ld d, d
    rst $28
    sub $ee
    db $d3
    rst $28
    db $eb
    ld d, $6e
    sub e
    ld b, b
    nop
    db $d3
    db $eb
    ld d, l
    ld sp, hl
    ld l, l
    ld bc, $210d
    nop
    call z, $adf6
    or a
    ld l, d
    rst $38
    ld [hl], d
    xor e
    or e
    add hl, bc
    ldh a, [$ff29]
    ldh a, [$ff89]
    rst $38
    ret nc

    add hl, hl
    ld [hl], b
    xor c
    ldh a, [$ffc9]
    ret nc

    jp hl


    rst $38
    ldh a, [$ff09]
    ld d, b
    rst $10
    cpl
    ld a, [$e79f]
    rst $38
    rra
    db $fd
    ld a, $f3
    call z, $e3dc
    rst $18
    rst $38
    rst $28
    rst $18
    rst $28
    rst $08

jr_004_739a:
    ldh a, [c]
    dec de
    db $fd
    rst $38
    rst $38
    ldh [$ffcf], a
    jr c, jr_004_739a

    inc c
    rst $28
    pop af
    rst $28
    rst $38
    rst $30
    rst $28
    rst $30
    ld a, [$70fa]
    ldh a, [rLY]
    rst $38
    call nz, $f030
    ld e, h
    call c, $f838
    ldh [$ffe7], a
    ldh [rWave_a], a
    ld a, [$3b2f]
    dec bc
    inc a
    ld [de], a
    inc de
    inc c
    rst $38
    rrca
    inc bc
    inc bc
    or h
    or a
    nop
    ld bc, $df00
    inc bc
    ld [de], a
    rra
    jr nc, @+$39

    and b
    ld [de], a
    nop
    ld b, $ff
    ld bc, $031d
    cpl
    dec de
    dec a
    dec de
    ccf
    rst $38
    dec de
    cpl
    dec de
    rra
    nop
    rst $38
    rrca
    rst $38
    ei
    rst $28
    rst $38
    or b
    dec b
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $38
    rst $28
    ld hl, sp+$00
    rst $38

jr_004_73f8:
    ldh a, [rIE]
    rst $30
    rst $38
    cp a
    rst $30
    xor e
    rst $30
    ei
    rst $30
    cp a
    add b
    nop
    ld bc, $feef
    and l
    cp $e9
    jr nz, jr_004_741d

    cp l
    cp $99
    jp nz, Jump_000_1102

    ld a, l
    ret nz

    rra
    pop bc
    inc h
    ld h, c
    cpl
    and c
    inc [hl]
    add e

jr_004_741d:
    ld a, h
    cp b
    ld hl, $5200
    dec [hl]
    ld [hl-], a
    jr nc, jr_004_73f8

    ld c, [hl]
    db $d3
    ld h, b
    rrca
    db $d3
    ld a, c
    ld c, a
    add c
    nop
    pop bc
    nop
    sbc e
    xor e
    ld e, l
    ld l, l
    ld b, c
    nop
    rst $38
    sbc [hl]
    xor [hl]
    db $dd
    db $ed
    sbc h
    xor h
    call c, $ffec
    ld l, [hl]
    halt
    db $ed
    push af
    ld l, [hl]
    halt
    ld c, h
    ld d, h
    ei
    ld l, $36
    ld b, c
    nop
    dec c
    dec d
    ret


    ret nc

    ld c, c
    rst $38
    ld d, b
    xor c
    or b
    ret


    ret nc

    xor c
    or b
    adc c
    sbc a
    sub b
    xor c
    or b
    add hl, hl
    jr nc, @+$11

    inc de
    dec bc
    inc de
    inc e
    rst $38
    db $fc
    add b
    add b
    ld [$38ea], a
    ld hl, sp+$10
    ld a, a
    ldh a, [$ffd0]
    ret nc

    db $fc
    db $fc
    cpl
    rst $28
    ld h, e
    ld c, d
    reti


    add b
    sbc a
    ld b, d
    inc b
    ld c, h
    ld b, $07
    pop bc
    ld hl, $4746
    rst $38
    jr jr_004_74a8

    ld b, $07
    ld bc, $0401
    rlca
    rst $30
    dec [hl]
    dec de
    scf
    and b
    rrca
    dec l
    dec de
    daa
    dec de
    rst $30
    ld l, $1b
    ld [hl], $20
    nop
    db $db
    rst $28
    di
    rst $28
    rst $38
    ld [hl], a
    rst $28
    or $ef

jr_004_74a8:
    or d
    rst $28
    or l
    rst $28
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $38
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    db $fd
    rst $30
    jp nz, $0025

    ld [bc], a
    ld bc, $0305
    dec bc
    rst $38
    rlca
    rla
    rrca
    daa
    rra
    ld a, a
    nop
    cp a
    rst $28
    ld a, a
    ccf
    rst $38
    cp a
    ld h, $00
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    ld a, e
    rst $38
    ld l, a
    rst $38
    ld a, l
    rst $38
    ld a, d
    rst $38
    rst $38
    ld [hl], l
    rst $38
    ld l, d
    rst $38
    rst $18
    ld b, b
    ret nz

    rla
    ld b, b
    rst $18
    ld e, a
    ld hl, $df30
    ld [hl+], a
    jr nc, jr_004_74fc

    ld b, d
    ld d, e
    nop
    db $f4

jr_004_74fc:
    ld sp, $0c52
    ld d, [hl]
    ei
    ldh [rOBP1], a
    ei
    ld a, [$02fb]
    cpl
    dec bc
    ldh a, [c]
    ei
    ldh a, [c]
    ld b, b
    nop
    ld [bc], a
    rrca
    inc de
    dec bc
    inc de
    rst $38
    ret nc

    ret nc

    ld a, d
    ld a, [$ff1f]
    xor $ef
    ld a, a
    ld b, l
    rst $38
    dec de
    rst $38
    ld h, b
    rst $38
    inc bc
    ldh a, [$ff57]
    rst $38
    add b
    add b
    dec sp
    dec sp
    ld [bc], a
    add d
    pop af
    pop af
    rst $08
    ld c, h
    call z, $ff1f
    sub b
    inc l
    ld b, b
    ld e, e
    ld [$ff08], sp
    ld h, b
    ld h, b
    and b
    and b
    inc e
    inc e
    ldh [$ffe0], a
    rst $38
    adc a
    rst $38
    inc hl
    inc hl
    inc c
    rrca
    or e
    or e
    rst $38
    rrca
    rrca
    jr jr_004_7570

    nop
    nop
    jp nz, $d7f3

    ret nc

    rst $18
    ld a, $60
    rrca
    dec a
    ret nz

    rrca
    ld l, $1b
    rst $38
    inc h
    dec de
    inc [hl]
    dec de
    ld h, $1b
    ld a, d
    rst $28
    rst $38
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28

jr_004_7570:
    sub b
    rst $28
    rst $38
    sub h
    rst $28
    add hl, sp
    rst $28

jr_004_7577:
    or b
    rst $28
    cp d
    rst $30
    rst $38
    xor c
    rst $30
    jr z, jr_004_7577

    ld c, d
    rst $30
    ld c, b
    rst $30
    rst $38
    dec c
    rst $30
    dec e
    rst $30
    ld [$2ff7], sp
    rra
    and e
    daa
    rra
    ld c, c
    nop
    xor b
    rrca
    ld d, d
    db $10
    ld [hl], l
    add d
    rrca
    ld a, d
    rst $28
    rst $38
    db $f4
    ld a, a
    jp nc, Jump_004_5500

    add b
    ld a, a
    dec h
    cp a
    ld e, $2d
    ld e, $3d
    ld e, $3f
    jr nz, jr_004_75ad

jr_004_75ad:
    dec hl
    rst $38
    ld e, $23
    ld e, $1f
    nop
    ld [bc], a
    db $fd
    cpl
    rst $38
    db $fd
    ld l, a
    db $fd
    rst $28
    db $fd
    ld a, a
    db $fd
    ld [hl], a
    rst $30
    db $fd
    ld [bc], a
    db $fd
    pop hl
    ld b, e
    and e
    cp $b3
    cp $df
    cp e
    cp $ff
    cp $6b
    ld [bc], a
    ld [hl], $3f
    ret nz

    rst $38
    ld a, a
    sbc a
    ld a, a
    cp b
    ld hl, sp+$70
    ld a, [$f770]
    ldh a, [c]
    ld b, b
    ret c

    add b
    ld e, a
    db $fc
    inc bc
    db $ec
    di
    rst $38
    or $f9
    ld a, [$f27d]
    cp l
    ld a, [hl-]
    dec b
    rrca
    ld a, $29
    ld a, [hl-]
    dec h
    rrca
    ld hl, $340b
    rrca
    ld [bc], a
    dec bc
    ld [hl], $ff
    inc h
    dec bc
    dec h
    ld a, [de]
    ld l, $11
    jr nc, jr_004_7615

    db $fd
    db $10
    ld [hl+], a
    nop
    rrca
    nop
    rra
    ldh [$fff0], a
    rrca
    rst $30
    db $10
    rst $28
    jr nc, jr_004_7639

jr_004_7615:
    nop
    rst $38
    nop
    ld hl, sp+$07
    adc a
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    rrca
    ld a, [de]
    ld [bc], a
    db $10
    ld e, $ff
    daa
    inc e
    dec l
    dec de
    ld a, [hl+]
    rla
    dec [hl]
    rrca
    ld a, a
    ccf
    nop
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    or d
    cpl

jr_004_7639:
    ld h, a
    xor d
    rst $38
    ld e, l
    ld d, d
    ld e, a
    ldh [c], a
    ld l, a
    nop
    ret nc

    ld b, b
    ld [hl], b
    db $fd
    ld d, h
    and d
    ld h, l
    ld h, b
    nop
    rra
    nop
    ret nz

    ret nz

    ret nz

    dec b
    ld h, c
    ld b, e
    ld [hl], h
    db $e3
    ld [hl-], a
    and c
    ld h, a
    ldh [rWave_7], a
    ldh [$ff6d], a
    inc bc
    inc bc
    cp $05
    ld h, e
    db $fc
    ld [hl], h
    cp a
    ld a, b
    rst $18
    ccf
    rst $30
    rst $38
    rrca
    rst $08
    jr nc, jr_004_76cd

    sbc a
    ccf
    ret nz

    nop
    rst $38
    rst $38
    halt
    ld e, c
    ldh [c], a
    dec a
    and $f9
    jp c, $e5ff

    or $09
    inc e
    db $e3
    ld hl, sp+$07
    nop
    pop bc
    rst $38
    rrca
    ld hl, $340b
    rrca
    ld [bc], a
    dec bc
    ld [hl], $02
    ld [hl], l
    add b
    ld hl, sp-$01
    ret nz

    db $fc
    ret c

    cp h
    ret c

    db $fc
    ret c

    db $f4
    xor d
    ld b, d
    nop
    cp h
    add d
    nop
    xor h
    jr nz, jr_004_76a4

    or h

jr_004_76a4:
    ld h, b
    ld bc, $ff7c
    ret c

    inc l
    ret c

    ld h, h
    ret c

    ld l, h
    ret c

    inc a
    cp $82
    nop
    inc l
    ret c

jr_004_76b5:
    and h
    ld e, b
    ld [hl], h
    adc b
    inc c
    dec de
    ldh a, [rNR23]
    ld [hl+], a
    nop
    ldh a, [rP1]
    nop
    ld [$2f00], sp
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra

jr_004_76cd:
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

jr_004_76dd:
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
    ccf
    xor a
    jr nc, jr_004_76b5

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_004_7715

    rst $38
    rst $38

jr_004_7715:
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
    jr nc, jr_004_76dd

    jr nc, jr_004_774e

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

jr_004_774e:
    ld e, a
    and b
    rst $38
    ld e, h
    rst $38
    ccf
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [rIE], a
    ret nc

    ldh [$ff60], a
    ret nz

    ldh [$ffc0], a
    db $ed
    ld d, $ff
    call $bdf6
    or $cd
    halt
    ld l, l
    ld [hl], $ff
    ld e, l
    ld [hl], $2d
    ld d, $2d
    ld d, $e0
    ret nz

jr_004_7774:
    rst $38
    ld h, b
    ret nc

    ld h, b
    ret c

    ldh a, [$ffef]
    jr jr_004_7774

    cp a
    rst $38
    ld hl, sp-$4c
    ld a, a
    ld c, a
    rst $38
    ld b, b
    ld bc, $ff56
    dec l
    sub $4d
    or [hl]
    db $ed
    halt
    db $ed
    or $ef
    ld c, l
    or $cd
    or $23
    dec c
    inc bc
    nop
    dec e
    ld a, a
    inc bc
    ld [hl], a
    rrca
    cp a
    ld l, a
    rst $30
    ld l, a
    ld b, e
    dec c
    rst $38
    rst $38
    rra
    rst $38
    rst $18

Jump_004_77a9:
    rst $38
    rst $18
    rst $28
    rst $18
    ei
    cp a
    rst $18
    ld b, e
    inc c
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    rst $18
    ei
    push de
    ei
    db $fd
    ei
    inc hl
    db $10
    ret nz

    nop
    ld a, a
    ld hl, sp-$40
    cp $f0
    rst $38
    or $ef
    nop
    inc b
    rst $38
    rrca
    nop
    db $10
    rrca
    scf
    ld [$173f], sp
    cp a
    ld a, a
    ld a, $7f
    ld b, $47
    ld a, [hl-]
    ld hl, $8012
    ld a, [hl]
    ld b, d
    nop
    sbc $80
    rst $38
    sbc $ff
    cp $e1
    ld bc, $77ff
    ld [$57ff], sp
    ld a, a
    ld e, $9f
    ld l, [hl]
    rst $20
    ld l, a
    ld d, $9f
    nop
    ld b, $e1
    ld bc, $009e
    rst $38
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    cp $fe
    db $fc
    nop
    rst $38
    nop
    ld bc, $0200
    ld bc, $0007
    rlca
    ld a, a
    inc bc
    rrca
    rlca
    rla
    rrca
    rrca
    rlca
    pop bc
    dec b
    rst $38
    jr nz, @-$3e

    ldh [rP1], a
    ldh a, [$ffe0]
    ld a, [$fff0]
    rst $38
    add d
    rst $38
    ld a, [hl]
    inc bc
    nop
    inc b
    inc bc
    rst $38
    rrca
    nop
    rrca
    rlca
    ld a, a
    rlca
    rst $38
    ld a, c
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    add b
    nop
    ld b, b
    add b
    rst $38
    call c, $fe00
    call c, $ecfe
    rst $38
    ldh [c], a
    cp $20
    inc b
    ld a, [hl]
    nop
    nop
    ld c, $00
    ld de, $ff0e
    cpl
    db $10
    ccf
    rrca
    ld a, a
    ccf
    ld a, a
    cpl
    ld a, c
    cp a
    ld [bc], a
    inc c
    ld h, c
    ld a, [de]
    add d
    nop
    rst $18
    add d
    nop
    ld [$befd], sp
    pop hl
    ld bc, $003f
    ccf
    ld e, $7f
    dec a
    ei
    cp a

jr_004_7871:
    ld l, l
    ld bc, $3002
    nop
    ld a, b
    jr nc, jr_004_7871

    ld a, l
    ld [hl], b
    ret nz

    dec b
    ldh a, [c]
    rst $38
    and $ff
    or $40
    ld [$6fff], sp
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $18
    ld l, a
    or $ff
    ld l, a
    or a
    ld l, a
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $38
    rst $18
    cp d
    rst $18
    or [hl]
    rst $18
    rst $20
    rst $18
    db $ed
    cp [hl]
    ldh [rIF], a
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    add b
    rrca
    rst $18
    cp $a0
    rrca
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    sub [hl]
    ld e, a
    ei
    rst $38
    or $fd
    or $41
    nop
    xor a
    add b
    nop
    rst $38
    cp a
    or $eb
    or $ff

jr_004_78c5:
    ld b, a
    rst $38
    ld a, a
    cp $21
    nop
    ld a, a
    ccf
    ccf
    ld e, $5e
    ld hl, $e731
    nop
    cp $fc
    add c
    dec c
    and b
    dec c
    ld a, h
    db $fc
    jr c, jr_004_78c5

    ld a, b
    add b
    add b
    and c
    inc d
    db $e4

jr_004_78e4:
    ld bc, $205f
    jr z, jr_004_78e4

    db $10
    stop
    ld [bc], a
    cp $fc
    db $fc
    ld hl, sp-$08
    rst $38
    ldh a, [$fff0]
    ld b, b
    ld h, b
    add b
    and b
    ld b, b
    ret nz

    rst $18
    nop
    rra
    rrca
    ccf
    rra
    ld hl, $1f00
    rrca
    cp a
    rrca
    inc bc
    dec bc
    inc b
    ld b, $00
    db $e4
    inc bc
    db $fc
    rst $38
    cp $e0
    db $fc
    ldh a, [$fff4]
    ld [$0008], sp
    jp z, $0d60

    ccf
    db $e3
    ld bc, $a303
    ld [hl+], a
    ld h, d
    inc de
    db $fc
    ldh [$fffe], a
    jr nz, jr_004_792c

    nop
    and b
    ld b, b
    ld b, b

jr_004_792c:
    nop
    ld a, a
    cpl
    cp [hl]
    ld b, $08
    rrca
    cpl
    db $10
    jr jr_004_7937

jr_004_7937:
    ld b, b
    ld [de], a
    cp $ff
    cp $f4
    db $fc
    ldh a, [$fff0]
    ldh [$ffe0], a
    ret nz

    push af
    ret nz

    pop bc
    jr z, jr_004_7987

    push hl
    ld bc, $000f
    ld a, [bc]
    inc b
    add hl, sp
    inc b
    nop
    ld b, $e1
    inc bc
    ldh a, [$ffc0]
    ldh [$ffc0], a
    add hl, bc
    pop hl

jr_004_795a:
    inc l
    rst $38

jr_004_795c:
    reti


    ld l, a
    jp c, $f96f

    ld l, a
    db $db
    ld l, a
    ld [hl], a
    push af
    ld l, a
    cp c
    ldh [rIF], a
    sub d
    ld l, a
    db $eb
    ret nz

    rrca
    rst $38
    push af
    rst $18
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    rst $38

jr_004_7979:
    jr nz, jr_004_795a

    jr z, jr_004_795c

    ld d, a
    ei
    ld d, [hl]
    ei
    rst $30
    ld e, l
    ei
    inc d
    jr nz, jr_004_7987

jr_004_7987:
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
    rst $18
    or $4b
    or $59
    or $1b
    or $7d
    adc a
    add hl, bc
    jr nz, jr_004_79e1

    ld a, a
    ld [$778f], sp
    dec c
    jr nz, jr_004_7979

    ld hl, $2933
    ld [bc], a
    inc hl
    inc [hl]
    ld b, [hl]
    jr nz, @-$20

    and $23
    dec a
    ld a, a
    rst $18
    dec c
    adc a
    ld [hl], l
    ld a, a
    rrca
    db $eb
    inc hl
    cp $fc
    cp a
    rrca
    nop
    ld [hl], b
    rrca
    rst $30
    ld c, b
    nop
    inc h
    dec e
    rst $28
    sbc a
    ld l, l
    ld l, a
    dec d
    inc bc
    inc h
    ld e, $00
    cp a
    ld a, a
    ld e, $fe
    cp h
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    ld bc, $fa24
    ld c, c
    add hl, sp

jr_004_79e1:
    inc a
    jr nz, jr_004_79e4

jr_004_79e4:
    ld b, d
    inc a
    xor c
    ld d, [hl]
    add b
    rst $38
    ld a, a

jr_004_79eb:
    sub b
    ld l, a
    ld b, e
    inc a
    ld hl, $1e1e
    ldh a, [c]
    inc d
    dec sp
    add b
    ld [hl+], a
    nop
    rra
    nop
    ld a, b
    nop
    ret nc

    ld l, a
    rst $38
    sbc d
    ld l, a
    ret nc

    ld l, a
    sub a
    ld l, b
    cp b
    ld b, a
    rst $38
    ret nz

jr_004_7a09:
    ccf
    jr nz, jr_004_79eb

jr_004_7a0c:
    sbc a
    ldh [$ff72], a
    rst $18
    ld a, a
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, @-$7e

    nop
    rst $38
    jr nc, jr_004_7a0c

    rst $38
    nop
    ld l, $fb
    inc b
    ei
    rst $38
    db $fc
    inc bc
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    cp $40
    inc [hl]
    nop
    adc e
    or $19
    or $0b
    or $ff
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    db $fc
    ld c, $fa
    rst $28
    ld hl, sp+$07
    ld a, a
    rrca
    ld b, $20
    rra
    rra
    rlca

jr_004_7a49:
    push af
    rlca
    dec b
    jr nz, jr_004_7acc

    nop
    jr nz, jr_004_7a09

    ld hl, sp-$80
    ret nz

    rrca
    nop
    adc a
    ld [hl], a
    rst $38
    daa
    ld [bc], a
    ld b, b
    jr jr_004_7a6b

    ld [bc], a
    db $e3
    inc hl
    ld a, a
    rst $38
    ld a, $be
    ld e, l
    rst $18
    jr nz, jr_004_7a49

    nop
    dec e

jr_004_7a6b:
    adc e
    cp $f8
    jr nz, @+$24

    ld a, h
    push hl
    inc hl
    ret nz

    ld b, h
    dec c
    inc h
    ldh a, [$ffeb]
    cp $ec
    rlca
    inc h
    ld b, b
    ldh [c], a
    ld c, $83
    ld a, h
    sub b
    ld b, e
    ld l, a
    ld b, b
    ldh [rLY], a
    dec b
    rrca
    db $e3
    ld c, $07
    rrca
    ld bc, $3640
    cp $c5
    rrca
    add h
    ld a, b
    add d
    ld a, h
    ld bc, $01fe
    rst $38
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    ret nz

    jr nz, jr_004_7ab7

    ld hl, $e101
    nop
    inc bc
    ld bc, $120d
    ld bc, $c903
    ld [hl], $7b
    and c
    ld e, [hl]
    rlca

jr_004_7ab7:
    inc bc
    add [hl]
    ld a, b
    add c
    ld a, [hl]
    inc hl
    ld bc, $01fe
    inc b
    dec [hl]
    dec [hl]
    cp $fe
    or e
    or e
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $00

jr_004_7acc:
    ld b, a
    dec sp
    add d
    ld a, h
    add e
    rst $38
    ld a, l
    dec [hl]
    inc [hl]
    rst $38
    cp $b3
    or d
    ld a, a
    rst $38
    ld a, [hl]
    rst $20
    and $7f
    ld a, a
    call z, Call_004_7fcc
    push af
    ld a, a
    pop bc
    ld b, $83
    jr nz, jr_004_7aea

jr_004_7aea:
    rst $00
    cp $ff
    ld a, l
    rrca
    cp $ba
    rst $38
    rst $00
    rrca
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e
    dec c
    ld c, e
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
    add hl, de
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, @-$7c

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
    jr jr_004_7b66

    scf
    ld [$38ff], sp
    rla
    ld h, c
    ld a, $79
    ld b, $7d
    ld a, [hl-]
    ld a, [$0e21]
    add b

jr_004_7b66:
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
    jr jr_004_7baa

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

jr_004_7baa:
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
    call c, Call_000_2200
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
    jr nc, jr_004_7beb

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

jr_004_7beb:
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
    jr nz, jr_004_7c0b

jr_004_7c0b:
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
    jr nz, jr_004_7c88

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
    jr z, jr_004_7c8b

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

jr_004_7c88:
    ld b, h
    ccf
    rst $38

jr_004_7c8b:
    ld b, b
    ccf
    jr nz, jr_004_7cae

    jr jr_004_7c98

    inc b
    inc bc
    ld sp, hl
    inc bc
    ldh [c], a
    inc hl
    db $e3

jr_004_7c98:
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

jr_004_7cae:
    jr nc, jr_004_7cbf

    ccf
    rst $38
    db $10
    jr jr_004_7cb5

jr_004_7cb5:
    ld a, c
    add [hl]
    push hl
    ld a, [$dd06]
    ld hl, sp+$21
    ld b, $30

jr_004_7cbf:
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
    jr nc, jr_004_7c98

    ld h, b

jr_004_7cd9:
    xor h
    ret nz

    add hl, bc
    pop hl
    jr z, jr_004_7d4f

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

    jr jr_004_7cd9

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

jr_004_7d4f:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
