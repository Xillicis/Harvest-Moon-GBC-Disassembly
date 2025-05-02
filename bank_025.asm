; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    dec h
    xor a
    ld [$c7a0], a
    ld [$c780], a
    ld [$c820], a
    ld [$b88d], a
    ld [$b88c], a
    ld a, $01
    ld [wPlayerIsInsideOrAtTown], a
    call Call_000_0f0f
    call ClearBGMap0
    call ClearBGMap1
    call Call_000_323d
    ld hl, $71b9
    ld c, $25
    ld de, $8800
    call Call_000_31a0
    ld hl, $6a35
    ld c, $25
    ld de, $9000
    call Call_000_31a0
    ld hl, $76d4
    ld c, $25
    ld de, $8000
    call Call_000_31a0
    ld hl, $6956
    ld c, $25
    ld de, $9800
    call Call_000_31a0
    ld a, $cd
    ld [$cb5c], a
    ld a, $c8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld [$c820], a
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
    ld a, [$cbe8]
    ld [$cb51], a
    ld a, $00
    ld [$cbe8], a
    call $44f8
    call Call_000_123d
    call Call_025_4486
    call Call_025_459a
    call $44f8
    ld a, $00
    call RST_TableJumpBankSwitch
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
    call Call_000_0ece
    call Call_000_3dfd
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3cf8
    call Call_025_40d2
    call Call_000_2d67
    call Call_000_36f4
    call Call_025_433d
    ret


Call_025_40d2:
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

    call Call_025_43a4
    call Call_000_0e54
    call Call_025_412b
    ldh a, [$ff8a]
    and $02
    jr z, jr_025_40fa

    call Call_025_439b
    ret


jr_025_40fa:
    ldh a, [$ff8b]
    and $08
    jr z, jr_025_4104

    call Call_000_1923
    ret


jr_025_4104:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_025_4377

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_025_4380

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_025_4389

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_025_4392

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Call_025_412b:
    ldh a, [$ff8b]
    cp $01
    ret nz

    ld a, [$cb34]
    and $01
    jp z, Jump_025_4295

    ld a, [wRightOrUpSideFacingTileID]
    or a
    jp z, Jump_025_4295

    cp $80
    jp z, Jump_025_4328

    push af
    call $444f
    pop af
    ld hl, sShedItemFlagList
    dec a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld a, $35
    call Call_000_25ce
    ld a, [wRightOrUpSideFacingTileID]
    dec a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $45fe
    add hl, de
    push hl
    ld de, $0008
    add hl, de
    pop de
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a

jr_025_4175:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_4175

    ld a, [hl+]
    inc hl
    ld [bc], a
    inc bc
    ld a, [hl+]
    inc hl
    ld [bc], a
    ld a, $1f
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a

jr_025_418a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_418a

    ld a, [hl+]
    inc hl
    ld [bc], a
    inc bc
    ld a, [hl+]
    inc hl
    ld [bc], a
    inc de
    inc de
    ld a, [de]
    inc de
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld c, a
    push bc
    ld a, [$b90c]
    call Multiply8Bit
    pop bc
    ld a, b
    add a
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
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, [wRightOrUpSideFacingTileID]
    dec a
    cp $1d
    jr nz, jr_025_41cf

    ld a, $01
    ld [$b907], a
    jp Jump_025_426d


jr_025_41cf:
    ld hl, $1b20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, jr_025_4245

    cp $01
    jr z, jr_025_4216

    ld a, [sInventory]
    cp NO_ITEM
    jr z, jr_025_4206

    ld a, [sInventory+1]
    cp NO_ITEM
    jr nz, jr_025_4206

    ld a, [sInventory+1]
    call Call_025_429f
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_025_426d

jr_025_4206:
    ld a, [sInventory]
    call Call_025_429f
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_025_426d

jr_025_4216:
    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_025_4234

    ld a, [sInventory]
    cp NO_ITEM
    jr nz, jr_025_4234

    ld a, [sInventory]
    call Call_025_429f
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_025_426d

jr_025_4234:
    ld a, [sInventory+1]
    call Call_025_429f
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_025_426d

jr_025_4245:
    ld a, [sInventory]
    cp $ff
    jr nz, jr_025_425c

    ld a, [sInventory]
    call Call_025_429f
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_025_426d

jr_025_425c:
    ld a, [sInventory+1]
    call Call_025_429f
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_025_426d

Jump_025_426d:
jr_025_426d:
    xor a
    ld [wCollisionNoMovement], a
    ld [$cb34], a
    push bc
    ld a, $03
    call RST_TableJumpBankSwitch
    pop bc
    ld a, b
    call $16d1
    ld hl, $c62a
    ld a, [$c60a]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl+], a
    ld a, $10
    ld [$c912], a
    pop hl
    ret


Jump_025_4295:
    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
    pop hl
    ret


Call_025_429f:
    cp NO_ITEM
    ret z

    push bc
    ld c, a
    ld hl, $1b20
    ld b, $00

jr_025_42a9:
    ld a, [hli]
    cp c
    jr z, jr_025_42b0

    inc b
    jr jr_025_42a9

jr_025_42b0:
    ld a, b
    push bc
    ld hl, sShedItemFlagList
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $01
    ld [hl], a
    ld a, b
    cp $1d
    jr z, jr_025_4325

    cp $1e
    jr z, jr_025_4325

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $45fe
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    push hl
    ld e, a
    ld h, b
    ld l, c

jr_025_42db:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_42db

    ld a, e
    inc e
    ld [hl+], a
    ld a, e
    ld [hl], a
    ld a, $0f
    add e
    ld e, a
    ld bc, $001f
    add hl, bc

jr_025_42ee:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_42ee

    ld a, e
    inc e
    ld [hl+], a
    ld a, e
    ld [hl], a
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld c, a
    push bc
    ld a, [$b90c]
    call Multiply8Bit
    pop bc
    ld a, b
    add a
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
    pop bc
    ld a, b
    inc a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    pop bc
    ret


jr_025_4325:
    pop bc
    pop bc
    ret


Jump_025_4328:
    ld a, $06
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    xor a
    ld [$c90f], a
    ret


Call_025_433d:
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret nz

    ld a, [wPlayerFacingDirection]
    cp $03
    ret nz

    ld a, [$c60b]
    cp $38
    ret nc

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
    ld a, $02
    ld [$c910], a
    ld a, $01
    ld [$c90f], a
    ret


Jump_025_4377:
    ld a, $22
    ld hl, $53e7
    call BankSwitchCallHL
    ret


Call_025_4380:
Jump_025_4380:
    ld a, $22
    ld hl, $542d
    call BankSwitchCallHL
    ret


Jump_025_4389:
    ld a, $22
    ld hl, $5473
    call BankSwitchCallHL
    ret


Jump_025_4392:
    ld a, $22
    ld hl, $54b9
    call BankSwitchCallHL
    ret


Call_025_439b:
    ld a, $22
    ld hl, $54ff
    call BankSwitchCallHL
    ret


Call_025_43a4:
    ld a, [$c911]
    or a
    ret z

    ld a, [$c90f]
    cp $00
    jr nz, jr_025_43d3

    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_025_43bd

    pop hl
    ret


jr_025_43bd:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    ld a, $03
    ld [$c910], a
    ret


jr_025_43d3:
    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_025_4413

    cp $1e
    jr nz, jr_025_442a

    ld hl, $9849

jr_025_43e5:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_43e5

    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld hl, $9869

jr_025_43f2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_43f2

    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld hl, $9889

jr_025_4407:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_025_4407

    ld a, $00
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


jr_025_4413:
    ld a, $08
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cc79], a
    ld [$cc7b], a
    ld a, [$cb51]
    ld [$cbe8], a

jr_025_442a:
    call Call_025_4380
    pop hl
    ret


    nop
    nop
    ld bc, $0203
    inc de
    inc d
    ld d, $15
    rla
    dec c
    ld c, $10
    ld de, $1912
    jr jr_025_4450

    inc c
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec de
    inc e
    ld a, [de]
    dec e
    ld e, $21

jr_025_4450:
    cpl
    ld b, h
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, $01
    ld [$c7c0], a
    ld a, $0d
    ld [$c7c1], a
    ld a, b
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
    ret


Call_025_4486:
    ld hl, vBGMap1
    ld de, $4494
    ld b, $14
    ld c, $05
    call CopyTileDataToBGMap
    ret


    ret nz

    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $cdc6

    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    add $cd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    add $cd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    jp $c4c4


    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $fac5
    db $10
    ret


    cp $01
    jr z, jr_025_4516

    cp $02
    jr z, jr_025_4528

    ld hl, $453a
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_025_4516:
    ld hl, $455a
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_025_4528:
    ld hl, $457a
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
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
    ld bc, rJOYP
    nop
    nop
    ld [$0018], sp
    dec a
    nop
    db $10
    ld b, l
    nop
    inc bc
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
    ld bc, rJOYP
    nop
    nop
    ld [$0058], sp
    dec l
    nop
    ld d, b
    dec [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_025_459a:
    ld b, $00
    ld hl, sShedItemFlagList

jr_025_459f:
    ld a, [hl+]
    cp $00
    jr z, jr_025_45f7

    ld a, b
    push hl
    ld de, $45fe
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    ld c, a
    inc de
    push de
    ld [hl+], a
    inc a
    ld [hl], a
    add $0f
    ld d, a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, d
    ld [hl+], a
    inc a
    ld [hl], a
    pop de
    inc de
    ld a, [de]
    ld c, a
    push bc
    inc de
    inc de
    ld a, [de]
    ld c, a
    ld a, [$b90c]
    call Multiply8Bit
    pop bc
    ld a, c
    add a
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
    ld a, b
    inc a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    pop hl

jr_025_45f7:
    inc b
    ld a, b
    cp $1d
    jr nz, jr_025_459f

    ret


    xor e
    sbc c
    ld c, b
    nop
    ld b, $00
    rlca
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc c
    ld c, d
    nop
    rlca
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc c
    ld c, h
    nop
    ld [$0700], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc c
    ld c, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    xor e
    sbc c
    ld l, b
    nop
    ld b, $00
    rlca
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc c
    ld l, d
    nop
    rlca
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc c
    ld l, h
    nop
    ld [$0700], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc c
    ld l, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and c
    sbc c
    ld h, b
    nop
    ld bc, $0700
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    and e
    sbc c
    ld h, d
    nop
    ld [bc], a
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and l
    sbc c
    ld h, h
    nop
    inc bc
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and a
    sbc c
    ld h, [hl]
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and a
    sbc c
    and [hl]
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and a
    sbc c
    and h
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    ld hl, $2899
    nop
    ld bc, $0500
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    inc hl
    sbc c
    ld a, [hl+]
    nop
    ld [bc], a
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    dec h
    sbc c
    inc l
    nop
    inc bc
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    daa
    sbc c
    ld l, $00
    inc b
    nop
    dec b
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    dec hl
    sbc c
    ld [$0600], sp
    nop
    dec b
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    dec l
    sbc c
    ld a, [bc]
    nop
    rlca
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    cpl
    sbc c
    inc c
    nop
    ld [$0500], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    ld sp, $0e99
    nop
    add hl, bc
    nop
    dec b
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    xor e
    sbc b
    ret c

    nop
    ld b, $00
    inc bc
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc b
    jp c, $0700

    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc b
    call c, $0800
    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc b
    sbc $00
    add hl, bc
    nop
    inc bc
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and e
    sbc b
    jp nc, $0200

    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and l
    sbc b
    call nc, $0300
    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and a
    sbc b
    sub $00
    inc b
    nop
    inc bc
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    nop
    nop
    jp nz, LCDCInterrupt

    nop
    call nz, LCDCInterrupt
    nop
    add $48
    nop
    nop
    ret z

    ld c, b
    nop
    nop
    jp z, LCDCInterrupt

    nop
    call z, LCDCInterrupt
    nop
    adc $48
    nop
    nop
    ret nc

    ld c, b
    nop
    nop
    jp nc, LCDCInterrupt

    nop
    call nc, LCDCInterrupt
    nop
    sub $48
    nop
    nop
    ret c

    ld c, b
    nop
    nop
    jp c, LCDCInterrupt

    nop
    call c, LCDCInterrupt
    nop
    sbc $48
    nop
    nop
    ldh [rOBP0], a
    nop
    nop
    ldh [c], a
    ld c, b
    nop
    nop
    db $e4
    ld c, b
    nop
    nop
    and $48
    nop
    nop
    add sp, $48
    nop
    nop
    ld [$0048], a
    nop
    db $ec
    ld c, b
    nop
    nop
    xor $48
    nop
    nop
    ldh a, [rOBP0]
    nop
    nop
    ldh a, [c]
    ld c, b
    nop
    nop
    db $f4
    ld c, b
    nop
    nop
    or $48
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, [$0048]
    nop
    db $fc
    ld c, b
    nop
    nop
    cp $48
    nop
    nop
    nop
    ld c, c
    nop
    nop
    adc [hl]
    ld c, [hl]
    nop
    nop
    sub b
    ld c, [hl]
    nop
    nop
    sub d
    ld c, [hl]
    nop
    nop
    sub h
    ld c, [hl]
    nop
    nop
    sub [hl]
    ld c, [hl]
    nop
    nop
    sbc b
    ld c, [hl]
    nop
    nop
    sbc d
    ld c, [hl]
    nop
    nop
    sbc h
    ld c, [hl]
    nop
    nop
    sbc [hl]
    ld c, [hl]
    nop
    nop
    and b
    ld c, [hl]
    nop
    nop
    and d
    ld c, [hl]
    nop
    nop
    and h
    ld c, [hl]
    nop
    nop
    and [hl]
    ld c, [hl]
    nop
    nop
    xor b
    ld c, [hl]
    nop
    nop
    xor d
    ld c, [hl]
    nop
    nop
    xor h
    ld c, [hl]
    nop
    nop
    xor [hl]
    ld c, [hl]
    nop
    nop
    or b
    ld c, [hl]
    nop
    nop
    or d
    ld c, [hl]
    nop
    nop
    or h
    ld c, [hl]
    nop
    nop
    or [hl]
    ld c, [hl]
    nop
    nop
    cp b
    ld c, [hl]
    nop
    nop
    cp d
    ld c, [hl]
    nop
    nop
    cp h
    ld c, [hl]
    nop
    nop
    cp [hl]
    ld c, [hl]
    nop
    nop
    ret nz

    ld c, [hl]
    nop
    nop
    jp nz, $004e

    nop
    call nz, $004e
    nop
    add $4e
    ld [bc], a
    ld c, c
    rra
    ld c, c
    inc [hl]
    ld c, c
    ld c, c
    ld c, c
    ld l, [hl]
    ld c, c
    xor a
    ld c, c
    ldh a, [rOBP1]
    ld sp, $6a4a
    ld c, d
    or e
    ld c, d
    db $f4
    ld c, d
    dec [hl]
    ld c, e
    halt
    ld c, e
    or a
    ld c, e
    ret c

    ld c, e
    ld sp, hl
    ld c, e
    ld [hl+], a
    ld c, h
    ld d, e
    ld c, h
    add h
    ld c, h
    add h
    ld c, h
    cp l
    ld c, h
    xor $4c
    rra
    ld c, l
    ld h, b
    ld c, l
    sbc c
    ld c, l
    adc $4d
    rlca
    ld c, [hl]
    inc a
    ld c, [hl]
    ld h, c
    ld c, [hl]
    adc [hl]
    ld c, [hl]
    adc [hl]
    ld c, [hl]
    adc [hl]
    ld c, [hl]
    db $f4
    inc bc
    ld d, $00
    db $f4
    db $fc
    ld d, $00
    db $f4
    db $f4
    ld d, $00
    db $fc
    db $ed
    inc d
    nop
    db $fc
    dec b
    ccf
    nop
    db $fc
    db $fd
    ld a, $00
    db $fc
    push af
    dec a
    nop
    add b
    db $f4
    rst $38
    ld d, $00
    db $f4
    rst $30
    ld d, $00
    db $fc
    ldh a, [rNR14]
    nop
    db $fc
    nop
    ld b, c
    nop
    db $fc
    ld hl, sp+$40
    nop
    add b
    db $f4
    db $fd
    ld d, $00
    db $f4
    ld a, [$0016]
    db $fc
    di
    inc d
    nop
    db $fc
    inc bc
    ld b, e
    nop
    db $fc
    ei
    ld b, d
    nop
    add b
    db $f4
    ld [$0016], sp
    db $f4
    nop
    ld d, $00
    db $f4
    ld hl, sp+$16
    nop
    db $f4
    ldh a, [rNR21]
    nop
    db $fc
    jp hl


    inc d
    nop
    db $fc
    add hl, bc
    ld b, a
    nop
    db $fc
    ld bc, $0046
    db $fc
    ld sp, hl
    ld b, l
    nop
    db $fc
    pop af
    ld b, h
    nop
    add b
    db $f4
    inc de
    ld d, $00
    db $f4
    push hl
    ld d, $00
    db $f4
    ld de, $0015
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    pop af
    ld d, $00
    db $f4
    jp hl


    ld d, $00
    db $fc
    add hl, de
    ld e, $00
    db $fc
    ld de, $001d
    db $fc
    add hl, bc
    inc e
    nop
    db $fc
    ld bc, $001b
    db $fc
    ld sp, hl
    ld a, [de]
    nop
    db $fc
    pop af
    add hl, de
    nop
    db $fc
    jp hl


    jr jr_025_49aa

jr_025_49aa:
    db $fc
    pop hl
    rla
    nop
    add b
    db $f4
    db $e4
    ld d, $00
    db $f4
    inc de
    ld d, $00
    db $f4
    ld de, $0015
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    pop af
    ld d, $00
    db $f4
    jp hl


    ld d, $00
    db $fc
    add hl, de
    ld e, $00
    db $fc
    ld de, $001d
    db $fc
    add hl, bc
    inc e
    nop
    db $fc
    ld bc, $001b
    db $fc
    ld sp, hl
    daa
    nop
    db $fc
    pop af
    ld h, $00
    db $fc
    jp hl


    dec h
    nop
    db $fc
    pop hl
    inc h
    nop
    add b
    db $f4
    dec d
    ld d, $00
    db $f4
    inc de
    dec d
    nop
    db $f4
    dec bc
    ld d, $00
    db $f4
    inc bc
    ld d, $00
    db $f4
    ei
    ld d, $00
    db $f4
    di
    ld d, $00
    db $f4
    db $eb
    ld d, $00
    db $f4
    db $e3
    ld d, $00
    db $fc
    dec de
    ld e, $00
    db $fc
    inc de
    dec e
    nop
    db $fc
    dec bc
    inc e
    nop
    db $fc
    inc bc
    dec de
    nop
    db $fc
    ei
    ld [hl-], a
    nop
    db $fc
    di
    ld sp, $fc00
    db $eb
    jr nc, jr_025_4a2c

jr_025_4a2c:
    db $fc
    db $e3
    cpl
    nop
    add b
    db $f4
    rrca
    ld d, $00
    db $f4
    add sp, $16
    nop
    db $f4
    dec c
    dec d
    nop
    db $f4
    dec b
    ld d, $00
    db $f4
    db $fd
    ld d, $00
    db $f4
    push af
    ld d, $00
    db $f4
    db $ed
    ld d, $00
    db $fc
    dec d
    ld e, $00
    db $fc
    dec c
    dec e
    nop
    db $fc
    dec b
    inc e
    nop
    db $fc
    db $fd
    dec de
    nop
    db $fc
    push af
    ld a, [hl+]
    nop
    db $fc
    db $ed
    add hl, hl
    nop
    db $fc
    push hl
    jr z, jr_025_4a69

jr_025_4a69:
    add b
    db $f4
    jr jr_025_4a83

    nop
    db $f4
    ldh [rNR21], a
    nop
    db $f4
    ld c, $16
    nop
    db $f4
    ld b, $16
    nop
    db $f4
    cp $16
    nop
    db $f4
    or $16
    nop
    db $f4

jr_025_4a83:
    xor $16
    nop
    db $f4
    and $16
    nop
    db $f4
    ld d, $15
    nop
    db $fc
    ld e, $1e
    nop
    db $fc
    ld d, $1d
    nop
    db $fc
    ld c, $1c
    nop
    db $fc
    ld b, $1b
    nop
    db $fc
    cp $23
    nop
    db $fc
    or $22
    nop
    db $fc
    xor $21
    nop
    db $fc
    and $20
    nop
    db $fc
    sbc $1f
    nop
    add b
    db $f4
    dec d
    ld d, $00
    db $f4
    db $e3
    ld d, $00
    db $f4
    db $eb
    ld d, $00
    db $f4
    di
    ld d, $00
    db $f4
    ei
    ld d, $00
    db $f4
    inc bc
    ld d, $00
    db $f4
    dec bc
    ld d, $00
    db $f4
    inc de
    dec d
    nop
    db $fc
    dec de
    ld e, $00
    db $fc
    inc de
    dec e
    nop
    db $fc
    dec bc
    inc e
    nop
    db $fc
    inc bc
    dec de
    nop
    db $fc
    ei
    ld l, $00
    db $fc
    di
    dec l
    nop
    db $fc
    db $eb
    inc l
    nop
    db $fc
    db $e3
    dec hl
    nop
    add b
    db $f4
    db $e4
    ld d, $00
    db $f4
    inc de
    ld d, $00
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    pop af
    ld d, $00
    db $f4
    jp hl


    ld d, $00
    db $f4
    ld de, $0015
    db $fc
    add hl, de
    ld e, $00
    db $fc
    ld de, $001d
    db $fc
    add hl, bc
    inc e
    nop
    db $fc
    ld bc, $001b
    db $fc
    pop hl
    jr z, jr_025_4b28

jr_025_4b28:
    db $fc
    ld sp, hl
    dec [hl]
    nop
    db $fc
    pop af
    inc [hl]
    nop
    db $fc
    jp hl


    inc sp
    nop
    add b
    db $f4
    inc de
    ld d, $00
    db $f4
    db $e4
    ld d, $00
    db $f4
    jp hl


    ld d, $00
    db $f4
    pop af
    ld d, $00
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    ld de, $0015
    db $fc
    add hl, de
    ld e, $00
    db $fc
    ld de, $001d
    db $fc
    add hl, bc
    inc e
    nop
    db $fc
    ld bc, $001b
    db $fc
    ld sp, hl
    add hl, sp
    nop
    db $fc
    pop af
    jr c, jr_025_4b6d

jr_025_4b6d:
    db $fc
    jp hl


    scf
    nop
    db $fc
    pop hl
    ld [hl], $00
    add b
    db $f4
    ld de, $0016
    db $f4
    and $16
    nop
    db $f4
    rlca
    ld d, $00
    db $f4
    rst $38
    ld d, $00
    db $f4
    rst $30
    ld d, $00
    db $f4
    rst $28
    ld d, $00
    db $f4
    rst $20
    ld d, $00
    db $f4
    rrca
    dec d
    nop
    db $fc
    rst $18
    inc d
    nop
    db $fc
    rla
    ld e, $00
    db $fc
    rrca
    dec e
    nop
    db $fc
    rlca
    inc e
    nop
    db $fc
    rst $38
    dec de
    nop
    db $fc
    rst $30
    inc a
    nop
    db $fc
    rst $28
    dec sp
    nop
    db $fc
    rst $20
    ld a, [hl-]
    nop
    add b
    db $f4
    dec b
    ld d, $00
    db $f4
    ld [bc], a
    ld d, $00
    db $f4
    ld a, [$0016]
    db $f4
    ldh a, [c]
    ld d, $00
    db $fc
    ld a, [bc]
    ld c, a
    nop
    db $fc
    ld [bc], a
    ld c, [hl]
    nop
    db $fc
    ld a, [$004d]
    db $fc
    ldh a, [c]
    ld c, h
    nop
    add b
    db $f4
    di
    ld d, $00
    db $f4
    inc b
    ld d, $00
    db $f4
    db $fc
    ld d, $00
    db $f4
    db $f4
    ld d, $00
    db $fc
    db $ec
    inc d
    nop
    db $fc
    inc b
    ld [hl], l
    nop
    db $fc
    db $fc
    ld [hl], h
    nop
    db $fc
    db $f4
    ld [hl], e
    nop
    add b
    db $f4
    rst $28
    ld d, $00
    db $f4
    ldh a, [rNR21]
    nop
    db $f4
    ld hl, sp+$16
    nop
    db $f4
    nop
    ld d, $00
    db $f4
    ld [$0016], sp
    db $fc
    add sp, $14
    nop
    db $fc
    ld [$0053], sp
    db $fc
    nop
    ld d, d
    nop
    db $fc
    ld hl, sp+$51
    nop
    db $fc
    ldh a, [$ff50]
    nop
    add b
    db $f4
    db $eb
    ld d, $00
    db $f4
    inc c
    ld d, $00
    db $f4
    inc b
    ld d, $00
    db $f4
    db $fc
    ld d, $00
    db $f4
    db $f4
    ld d, $00
    db $f4
    db $ec
    ld d, $00
    db $fc
    db $e4
    inc d
    nop
    db $fc
    inc c
    ld e, a
    nop
    db $fc
    inc b
    ld e, [hl]
    nop
    db $fc
    db $fc
    ld e, l
    nop
    db $fc
    db $f4
    ld e, h
    nop
    db $fc
    db $ec
    ld e, e
    nop
    add b
    db $f4
    ld a, [bc]
    ld d, $00
    db $f4
    db $ed
    ld d, $00
    db $f4
    ld b, $16
    nop
    db $f4
    cp $16
    nop
    db $f4
    or $16
    nop
    db $f4
    xor $16
    nop
    db $fc
    and $14
    nop
    db $fc
    ld c, $6b
    nop
    db $fc
    ld b, $6a
    nop
    db $fc
    cp $69
    nop
    db $fc
    or $68
    nop
    db $fc
    xor $67
    nop
    add b
    db $f4
    db $10
    ld d, $00
    db $f4
    add sp, $16
    nop
    db $f4
    ld [$0016], a
    db $f4
    ldh a, [c]
    ld d, $00
    db $f4
    ld a, [$0016]
    db $f4
    ld [bc], a
    ld d, $00
    db $f4
    ld a, [bc]
    ld d, $00
    db $fc
    ld [de], a
    ccf
    nop
    db $fc
    ld a, [bc]
    ld a, $00
    db $fc
    ld [bc], a
    dec a
    nop
    db $fc
    ld a, [$004b]
    db $fc
    ldh a, [c]
    ld c, d
    nop
    db $fc
    ld [$0049], a
    db $fc
    ldh [c], a
    ld c, b
    nop
    add b
    db $f4
    db $eb
    ld d, $00
    db $f4
    inc c
    ld d, $00
    db $f4
    dec b
    ld d, $00
    db $f4
    db $fd
    ld d, $00
    db $f4
    push af
    ld d, $00
    db $f4
    db $ed
    ld d, $00
    db $fc
    dec c
    ld b, c
    nop
    db $fc
    dec b
    ld b, b
    nop
    db $fc
    db $fd
    ld c, e
    nop
    db $fc
    push af
    ld c, d
    nop
    db $fc
    db $ed
    ld c, c
    nop
    db $fc
    push hl
    ld c, b
    nop
    add b
    db $f4
    xor $16
    nop
    db $f4
    ld a, [bc]
    ld d, $00
    db $f4
    ld [$0016], sp
    db $f4
    nop
    ld d, $00
    db $f4
    ld hl, sp+$16
    nop
    db $f4
    ldh a, [rNR21]
    nop
    db $fc
    db $10
    ld b, e
    nop
    db $fc
    ld [$0042], sp
    db $fc
    nop
    ld c, e
    nop
    db $fc
    ld hl, sp+$4a
    nop
    db $fc
    ldh a, [rOBP1]
    nop
    db $fc
    add sp, $48
    nop
    add b
    db $f4
    inc d
    ld d, $00
    db $f4
    db $e3
    ld d, $00
    db $f4
    push hl
    ld d, $00
    db $f4
    db $ed
    ld d, $00
    db $f4
    push af
    ld d, $00
    db $f4
    db $fd
    ld d, $00
    db $f4
    dec b
    ld d, $00
    db $f4
    dec c
    ld d, $00
    db $fc
    dec d
    ld b, a
    nop
    db $fc
    dec c
    ld b, [hl]
    nop
    db $fc
    dec b
    ld b, l
    nop
    db $fc
    db $fd
    ld b, h
    nop
    db $fc
    push af
    ld c, e
    nop
    db $fc
    db $ed
    ld c, d
    nop
    db $fc
    push hl
    ld c, c
    nop
    db $fc
    db $dd
    ld c, b
    nop
    add b
    db $f4
    ld [de], a
    ld d, $00
    db $f4
    and $16
    nop
    db $f4
    inc c
    ld d, $00
    db $f4
    inc b
    ld d, $00
    db $f4
    db $fc
    ld d, $00
    db $f4
    db $f4
    ld d, $00
    db $f4
    db $ec
    ld d, $00
    db $fc
    inc d
    ld [hl], d
    nop
    db $fc
    inc c
    ld [hl], c
    nop
    db $fc
    inc b
    ld [hl], b
    nop
    db $fc
    db $fc
    ld l, a
    nop
    db $fc
    db $f4
    ld l, [hl]
    nop
    db $fc
    db $ec
    ld l, l
    nop
    db $fc
    db $e4
    ld l, h
    nop
    add b
    db $f4
    db $ec
    ld d, $00
    db $f4
    ld a, [bc]
    ld d, $00
    db $f4
    xor $16
    nop
    db $f4
    or $16
    nop
    db $f4
    ld b, $16
    nop
    db $f4
    cp $16
    nop
    db $fc
    push hl
    inc d
    nop
    db $fc
    and $61
    nop
    db $fc
    ld c, $66
    nop
    db $fc
    ld b, $65
    nop
    db $fc
    cp $64
    nop
    db $fc
    or $63
    nop
    db $fc
    xor $62
    nop
    add b
    db $f4
    rrca
    ld d, $00
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    pop af
    ld d, $00
    db $f4
    jp hl


    ld d, $00
    db $fc
    ld de, $007f
    db $fc
    add hl, bc
    ld a, [hl]
    nop
    db $fc
    ld bc, $007d
    db $fc
    ld sp, hl
    ld a, h
    nop
    db $fc
    pop af
    ld a, e
    nop
    db $fc
    jp hl


    ld a, d
    nop
    db $fc
    pop af
    ld a, c
    nop
    db $fc
    jp hl


    ld a, b
    nop
    add b
    db $fc
    ld [de], a
    ld a, [$fc00]
    ld a, [bc]
    ld sp, hl
    nop
    db $fc
    ld [bc], a
    ld hl, sp+$00
    db $fc
    ld a, [$00f7]
    db $fc
    ldh a, [c]
    or $00
    db $fc
    ld [$00f5], a
    db $fc
    ldh [c], a
    inc d
    nop
    db $f4
    jp hl


    ld d, $00
    db $f4
    pop af
    ld d, $00
    db $f4
    ld sp, hl
    ld d, $00
    db $f4
    ld bc, $0016
    db $f4
    add hl, bc
    ld d, $00
    db $f4
    rrca
    ld d, $00
    add b
    db $fc
    dec bc
    ld h, b
    nop
    db $fc
    inc bc
    ld a, b
    nop
    db $fc
    ei
    ld [hl], a
    nop
    db $fc
    di
    halt
    nop
    db $f4
    dec b
    ld d, $00
    db $f4
    ld [bc], a
    ld d, $00
    db $f4
    ld a, [$0016]
    db $f4
    ldh a, [c]
    ld d, $00
    db $fc
    db $eb
    inc d
    nop
    add b
    db $fc
    ld c, $f4
    nop
    db $fc
    ld b, $f3
    nop
    db $fc
    cp $f2
    nop
    db $fc
    or $f1
    nop
    db $fc
    xor $f0
    nop
    db $f4
    dec bc
    ld d, $00
    db $f4
    dec b
    ld d, $00
    db $f4
    db $fd
    ld d, $00
    db $f4
    push af
    ld d, $00
    db $f4
    db $ed
    ld d, $00
    db $fc
    and $14
    nop
    add b
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    ret z

    ld c, [hl]
    pop hl
    ld c, [hl]
    ldh a, [c]
    ld c, [hl]
    db $fc
    ld [de], a
    cp $00
    db $fc
    ld a, [bc]
    db $fd
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    ld a, [$00fb]
    db $fc
    ldh a, [c]
    ld a, [$fc00]
    ld [$00f9], a
    add b
    db $fc
    dec bc
    ld hl, sp+$00
    db $fc
    inc bc
    rst $30
    nop
    db $fc
    ei
    or $00
    db $fc
    di
    push af
    nop
    add b
    db $fc
    ld c, $f4
    nop
    db $fc
    ld b, $f3
    nop
    db $fc
    cp $f2
    nop
    db $fc
    or $f1
    nop
    db $fc
    xor $f0
    nop
    add b
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld c, a
    ldh a, [rP1]
    rst $38
    nop
    ld hl, $2201
    ld [bc], a
    inc hl
    inc bc
    ld h, b
    inc b
    ld sp, $3205
    ld b, $33
    rlca
    ld [hl], b
    ld [$0941], sp
    ld b, d
    ld a, [bc]
    ld b, e
    dec bc
    cpl
    inc c
    cp d
    dec c
    cp e
    ld c, $c9
    rrca
    ccf
    db $10
    ld hl, $2211
    ld [de], a
    inc hl
    inc de
    ld h, b
    inc d
    ld sp, $3215
    ld d, $33
    rla
    ld [hl], b
    jr jr_025_4ffd

    add hl, de
    ld b, d
    ld a, [de]
    ld b, e
    dec de
    cpl
    inc e
    cp d
    dec e
    cp e
    ld e, $c9
    rra
    ccf
    ld a, [$cb7d]
    or a
    ret z

    ld a, [$cb7d]
    dec a
    ld [$cb7d], a
    ld a, [$cb7d]
    cp $0f
    jr z, jr_025_4fe2

    cp $07
    jr z, jr_025_4fec

    ret


jr_025_4fe2:
    ld a, $35
    call Call_000_25ce
    ld hl, $4f8a
    jr jr_025_4fef

jr_025_4fec:
    ld hl, $4faa

jr_025_4fef:
    ld d, h
    ld e, l
    ld c, $10

jr_025_4ff3:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_025_4ffd:
    ld bc, $9000
    add hl, bc
    ld a, h
    cp $98
    jr c, jr_025_500a

    ld bc, $f000
    add hl, bc

jr_025_500a:
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
    ld de, $7b8a
    add hl, de
    ld e, c
    ld d, b
    ld b, $08

jr_025_501e:
    call SyncToBlankPeriod
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_025_501e

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_025_4ff3

    ret


    ld a, [$c606]
    sub $07
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $07
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [wcb30], a
    pop hl
    push hl
    ldh a, [$ffa5]
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
    ld a, [hli]
    ld [wLeftOrDownSideFacingTileID], a
    ld a, [hli]
    ld [wcb32], a
    pop hl
    ldh a, [$ffa6]
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
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [wRightOrUpSideFacingTileID], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [$c606]
    sub $07
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $07
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c608]
    add $02

Jump_025_516e:
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [wcb30], a
    pop hl
    push hl
    ldh a, [$ffa5]
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
    ld [wLeftOrDownSideFacingTileID], a
    ld a, [hl+]
    ld [wcb32], a
    pop hl
    ldh a, [$ffa6]
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
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [wRightOrUpSideFacingTileID], a
    ld a, [hl+]
    ld [$cb34], a
    ld a, [$cb84]
    or a
    call nz, Call_025_51ff
    ld a, [$cb4a]
    or a
    call nz, Call_025_51ff
    ld a, [$cb8b]
    or a
    call nz, Call_025_5239
    ret


Call_025_51ff:
    ld a, [wcb30]
    and $80
    ret z

    ld a, [$cb2f]
    cp $66
    jr nz, jr_025_5212

    ld a, $01
    ld [wcb30], a
    ret


jr_025_5212:
    cp $83
    jr nz, jr_025_521c

    ld a, $01
    ld [wcb30], a
    ret


jr_025_521c:
    cp $a7
    jr nz, jr_025_5226

    ld a, $01
    ld [wcb30], a
    ret


jr_025_5226:
    cp $b6
    jr nz, jr_025_5230

    ld a, $01
    ld [wcb30], a
    ret


jr_025_5230:
    cp $c7
    ret nz

    ld a, $01
    ld [wcb30], a
    ret


Call_025_5239:
    ld a, [wcb30]
    and $80
    ret z

    ld a, [$cb2f]
    cp $83
    jr nz, jr_025_524c

    ld a, $01
    ld [wcb30], a
    ret


jr_025_524c:
    cp $a7
    jr nz, jr_025_5256

    ld a, $01
    ld [wcb30], a
    ret


jr_025_5256:
    cp $b6
    ret nz

    ld a, $01
    ld [wcb30], a
    ret


    ret


    ld a, [$c608]
    add $03
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c606]
    sub $09
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
    push af
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
    ld [$cb2f], a
    ld a, [hl+]
    ld [wcb30], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [wLeftOrDownSideFacingTileID], a
    ld a, [hl+]
    ld [wcb32], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [wRightOrUpSideFacingTileID], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [$c608]
    add $03
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c606]
    add $08
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
    push af
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
    ld [$cb2f], a
    ld a, [hl+]
    ld [wcb30], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [wLeftOrDownSideFacingTileID], a
    ld a, [hl+]
    ld [wcb32], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [wRightOrUpSideFacingTileID], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [$c606]
    sub $07
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $07
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c608]
    sub $08
    add $02
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    pop hl
    push hl
    ldh a, [$ffa5]
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
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    pop hl
    ldh a, [$ffa6]
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
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [$c606]
    sub $07
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $07
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $10
    add $08
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    pop hl
    push hl
    ldh a, [$ffa5]
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
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    pop hl
    ldh a, [$ffa6]
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
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [$c608]
    add $02
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
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
    push af
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
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [$c608]
    add $02
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
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
    ldh [$ffa6], a
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
    push af
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
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
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
    add $0d
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
    ld [$cb46], a
    ld a, [hl+]
    ld [$cb47], a
    dec hl
    dec hl
    ld a, h
    ld [$cb48], a
    ld a, l
    ld [$cb49], a
    ret


    ld a, [$c606]
    sub $07
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $07
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
    ldh [$ffa5], a
    ld a, [$c608]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    ld a, l
    sub $12
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
    ld c, l
    ld a, [$b90c]
    call Multiply8Bit
    push hl
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
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    pop hl
    ldh a, [$ffa5]
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
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [$c606]
    sub $06
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
    ldh [$ffa4], a
    ld a, [$c606]
    add $06
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
    ldh [$ffa5], a
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $12
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
    ld c, l
    ld a, [$b90c]
    call Multiply8Bit
    push hl
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
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    pop hl
    ldh a, [$ffa5]
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
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [$c608]
    add $03
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
    ld a, [$c606]
    sub $08
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    ld a, l
    sub $12
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    ldh a, [$ffa5]
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
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [$c608]
    add $03
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
    ld a, [$c608]
    add $0f
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
    ldh [$ffa5], a
    ld a, [$c606]
    add $08
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    ld a, l
    add $12
    ld l, a
    ld a, h
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
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    ldh a, [$ffa5]
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
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [wPlayerFacingDirection]
    rst $00
    push de
    ld e, d
    ld l, c
    ld e, e
    rst $38
    ld e, e
    sub l
    ld e, h
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


    ld a, [wPlayerFacingDirection]
    rst $00
    ld a, $5d
    sub h
    ld e, l
    db $ed
    ld e, l
    ld b, [hl]
    ld e, [hl]
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
    ld a, $2f
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
    sub $28
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
    add $27
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
    sub $1f
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
    ret


    ld a, [$cb88]
    or a
    jp nz, Jump_025_6073

    ld a, [$c760]
    or a
    ret z

    ld a, [$c770]
    or a
    jp z, Jump_025_5f9c

    cp $02
    jp z, Jump_025_5fc1

    cp $03
    jp z, Jump_025_604d

    cp $04
    jp z, Jump_025_606a

    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_025_606e

    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    push hl
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld b, h
    ld c, l
    pop hl
    call Call_025_6910
    inc hl
    inc hl
    ld a, [hl+]
    cp $0e
    jp z, Jump_025_606e

    ld a, [hl-]
    cp $81
    jr nz, jr_025_5f0e

    ld a, [hl]
    cp $39
    jp z, Jump_025_606e

    cp $3a
    jp z, Jump_025_606e

Jump_025_5eff:
    cp $3b
    jp z, Jump_025_606e

    cp $3c
    jp z, Jump_025_606e

    cp $46
    jp nc, Jump_025_606e

jr_025_5f0e:
    ld hl, $c766
    ld a, [$c76c]
    ld b, $00
    ld c, a
    and $80
    jr nz, jr_025_5f1d

    jr jr_025_5f1f

jr_025_5f1d:
    ld b, $ff

jr_025_5f1f:
    call AddBCtoWordAtHL

Jump_025_5f22:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_5f4d

    ld a, c
    cp $f0
    jr c, jr_025_5f4d

    jr jr_025_5f5b

jr_025_5f4d:
    ld a, b
    or a
    jr nz, jr_025_5f56

    ld a, c
    cp $e0
    jr c, jr_025_5f5b

jr_025_5f56:
    ld c, $c8
    jp Jump_025_606e


jr_025_5f5b:
    ld a, c
    ld [$c76a], a
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_5f8e

    ld a, c
    cp $f0
    jr c, jr_025_5f8e

    jr jr_025_5f97

jr_025_5f8e:
    ld a, b
    or a
    jr z, jr_025_5f97

    ld c, $c8
    jp Jump_025_606e


jr_025_5f97:
    ld a, c
    ld [$c76b], a
    ret


Jump_025_5f9c:
    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_025_606e

    ld a, [$cb5a]
    ld b, a
    ld a, [$c76a]
    add b
    ld [$c76a], a
    ld a, [$cb5b]
    ld b, a
    ld a, [$c76b]
    add b
    ld [$c76b], a
    ret


Jump_025_5fc1:
    ld a, [$cb4e]
    cp $0c
    ret nc

    ld a, [$c912]
    ld [$c771], a
    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_025_606e

    cp $b0
    jr nc, jr_025_5fe9

    cp $80
    jr nc, jr_025_6018

    cp $50
    jr nc, jr_025_5ffe

    jr jr_025_6032

jr_025_5fe9:
    ld a, [$c0a8]
    and $0f
    jp nz, Jump_025_5f22

    ld hl, $c766
    ld bc, $ffff
    call AddBCtoWordAtHL
    jp Jump_025_5f22


    ret


jr_025_5ffe:
    ld a, $17
    call Call_000_15e4
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_025_5f22

    ld hl, $c766
    ld bc, $0001
    call AddBCtoWordAtHL
    jp Jump_025_5f22


    ret


jr_025_6018:
    ld a, $15
    call Call_000_15e4
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_025_5f22

    ld hl, $c766
    ld bc, $0001
    call AddBCtoWordAtHL
    jp Jump_025_5f22


    ret


jr_025_6032:
    ld a, $1a
    call Call_000_15e4
    ld hl, $c766
    ld bc, $0001
    call AddBCtoWordAtHL
    ld hl, $c768
    ld bc, $ffff
    call AddBCtoWordAtHL
    jp Jump_025_5f22


    ret


Jump_025_604d:
    ld a, [$c76c]
    cp $00
    jr z, jr_025_6066

    ld hl, $c766
    ld bc, $0001
    call AddBCtoWordAtHL
    ld hl, $c768
    ld bc, $ffff
    call AddBCtoWordAtHL

jr_025_6066:
    call Call_025_6080
    ret


Jump_025_606a:
    call Call_025_6080
    ret


Jump_025_606e:
    xor a
    ld [$c760], a
    ret


Jump_025_6073:
    ld a, [$cb88]
    dec a
    ld [$cb88], a
    ld a, $c8
    ld [$c76a], a
    ret


Call_025_6080:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_60ab

    ld a, c
    cp $f0
    jr c, jr_025_60ab

    jr jr_025_60b6

jr_025_60ab:
    ld a, b
    or a
    jr nz, jr_025_60b4

    ld a, c
    cp $e0
    jr c, jr_025_60b6

jr_025_60b4:
    ld c, $c8

jr_025_60b6:
    ld a, c
    ld [$c76a], a
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_60e9

    ld a, c
    cp $f0
    jr c, jr_025_60e9

    jr jr_025_60ef

jr_025_60e9:
    ld a, b
    or a
    jr z, jr_025_60ef

    ld c, $c8

jr_025_60ef:
    ld a, c
    ld [$c76b], a
    ret


    ld a, [$c800]
    or a
    ret z

    ld a, [$c810]
    cp $06
    jr nz, jr_025_6105

    call Call_025_6645
    jr jr_025_6139

jr_025_6105:
    cp $05
    jr nz, jr_025_610e

    call Call_025_65ef
    jr jr_025_6139

jr_025_610e:
    cp $04
    jr nz, jr_025_6117

    call Call_025_64d0
    jr jr_025_6139

jr_025_6117:
    cp $00
    jr nz, jr_025_6120

    call Call_025_669b
    jr jr_025_6139

jr_025_6120:
    cp $01
    jr nz, jr_025_6129

    call Call_025_61c4
    jr jr_025_6139

jr_025_6129:
    cp $02
    jr nz, jr_025_6132

    call Call_025_62d7
    jr jr_025_6139

jr_025_6132:
    cp $03
    jr nz, jr_025_6132

    call Call_025_632e

jr_025_6139:
    ld a, [$c806]
    ld l, a
    ld a, [$c807]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_6164

    ld a, c
    cp $f0
    jr c, jr_025_6164

    jr jr_025_6172

jr_025_6164:
    ld a, b
    or a
    jr nz, jr_025_616d

    ld a, c
    cp $e0
    jr c, jr_025_6172

jr_025_616d:
    ld c, $c8
    jp Jump_025_61b3


jr_025_6172:
    ld a, c
    ld [$c80a], a
    ld a, [$c808]
    ld l, a
    ld a, [$c809]
    ld h, a
    ld bc, $0000
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_025_61a5

    ld a, c
    cp $f0
    jr c, jr_025_61a5

    jr jr_025_61ae

jr_025_61a5:
    ld a, b
    or a
    jr z, jr_025_61ae

    ld c, $c8
    jp Jump_025_61b3


jr_025_61ae:
    ld a, c
    ld [$c80b], a
    ret


Jump_025_61b3:
    ld a, [$c810]
    cp $05
    ret z

    cp $06
    ret z

    xor a
    ld [$c800], a
    ld [$c912], a
    ret


Call_025_61c4:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_025_61d2

    call Call_025_669b
    ret


jr_025_61d2:
    ld a, [$c813]
    cp $00
    jr z, jr_025_61f5

    cp $01
    jr z, jr_025_6218

    cp $02
    jr z, jr_025_6232

    cp $03
    jr z, jr_025_6255

    cp $04
    jp z, Jump_025_6273

    cp $05
    jp z, Jump_025_6291

    cp $06
    jp z, Jump_025_62b0

    ret


jr_025_61f5:
    ld a, $2e
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $27
    call Call_000_3f52
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $48
    call Call_000_151d
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_025_6218:
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


jr_025_6232:
    xor a
    ld [$c760], a
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $03
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


jr_025_6255:
    ld a, $01
    ld [$c80d], a
    ld a, $2d
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $10
    ld [$c811], a
    ld a, $04
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_025_6273:
    ld a, $00
    ld [$c80d], a
    ld a, $2c
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $10
    ld [$c811], a
    ld a, $05
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_025_6291:
    ld a, $02
    ld [$c80d], a
    ld a, $32
    call Call_000_152a
    ld a, $01
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $06
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_025_62b0:
    ld a, $2e
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $28
    call Call_000_3f52
    ld a, $02
    ld [$c811], a
    ret


    xor a
    ld [$b890], a
    ld a, $2e
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $02
    ld [$c811], a
    ret


Call_025_62d7:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_025_62e5

    call Call_025_669b
    ret


jr_025_62e5:
    ld a, [$c813]
    cp $00
    jr z, jr_025_62f1

    cp $01
    jr z, jr_025_6314

    ret


jr_025_62f1:
    ld a, $16
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $2a
    call Call_000_3f52
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $48
    call Call_000_151d
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_025_6314:
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_152a
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


Call_025_632e:
    ld a, [sHouseExpansionFlag]
    cp $00
    jr z, jr_025_6383

    cp $01
    jp z, Jump_025_63db

    ld a, [$c813]
    cp $01
    jp z, Jump_025_6397

    inc a
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$c802]
    cp $10
    call z, Call_025_64a8
    cp $11
    call z, Call_025_64b2
    cp $12
    call z, Call_025_64bc
    cp $13
    call z, Call_025_64c6
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jp z, Jump_025_6455

    cp $08
    jp z, Jump_025_646a

    cp $28
    jp z, Jump_025_6455

    cp $30
    jp z, Jump_025_6493

    cp $c0
    jp z, Jump_025_63d6

    ret


jr_025_6383:
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $01
    jr z, jr_025_6397

    cp $02
    jr z, jr_025_639b

    cp $03
    jr z, jr_025_63a9

    ret


Jump_025_6397:
jr_025_6397:
    call Call_025_669b
    ret


jr_025_639b:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_025_63b7

    call Call_025_669b
    ret


jr_025_63a9:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_025_63d6

    call Call_025_669b
    ret


jr_025_63b7:
    ld a, $00
    ld [$c80d], a
    ld a, $10
    call Call_000_152a
    ld a, $40
    ld [$c811], a
    ld a, $03
    ld [$c813], a
    ld a, $01
    ld [$c80c], a
    ld a, $03
    ld [$c810], a
    ret


Jump_025_63d6:
jr_025_63d6:
    xor a
    ld [$c800], a
    ret


Jump_025_63db:
    ld a, [$c813]
    cp $01
    jp z, Jump_025_6397

    inc a
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$c802]
    cp $10
    call z, Call_025_64a8
    cp $11
    call z, Call_025_64b2
    cp $12
    call z, Call_025_64bc
    cp $13
    call z, Call_025_64c6
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jr z, jr_025_642b

    cp $08
    jr z, jr_025_647f

    cp $10
    jr z, jr_025_6493

    cp $20
    jr z, jr_025_6455

    cp $28
    jr z, jr_025_646a

    cp $48
    jr z, jr_025_647f

    cp $50
    jr z, jr_025_6493

    cp $80
    jr z, jr_025_63d6

    ret


jr_025_642b:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Jump_025_6455:
jr_025_6455:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Jump_025_646a:
jr_025_646a:
    ld a, $02
    ld [$c80d], a
    ld a, $12
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


jr_025_647f:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a

Jump_025_6493:
jr_025_6493:
    ld a, $00
    ld [$c80d], a
    ld a, $10
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Call_025_64a8:
    ld hl, $c808
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


Call_025_64b2:
    ld hl, $c806
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


Call_025_64bc:
    ld hl, $c806
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


Call_025_64c6:
    ld hl, $c808
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


Call_025_64d0:
    ld a, $02
    ld [$c912], a
    ld a, [$c811]
    inc a
    ld [$c811], a
    ld a, [$c802]
    cp $38
    call z, Call_025_64a8
    cp $39
    call z, Call_025_64b2
    cp $3a
    call z, Call_025_64bc
    cp $3b
    call z, Call_025_64c6
    ld a, [$c813]
    cp $01
    jr z, jr_025_6524

    cp $02
    jr z, jr_025_64ff

    ret


jr_025_64ff:
    ld a, $02
    ld [$c813], a
    ld a, [$c811]
    cp $6c
    call z, Call_025_658f
    cp $74
    call z, Call_025_65df
    cp $a4
    call z, Call_025_65cf
    cp $b0
    call z, Call_025_65af
    ld a, [$c811]
    cp $b0
    call z, Call_025_6565
    ret


jr_025_6524:
    ld a, $01
    ld [$c813], a
    ld a, [$c811]
    cp $01
    call z, Call_025_656f
    cp $08
    call z, Call_025_657f
    cp $38
    call z, Call_025_656f
    cp $40
    call z, Call_025_65bf
    cp $e0
    jr z, jr_025_6545

    ret


jr_025_6545:
    call Call_025_659f
    ld a, $d0
    ld [$c806], a
    xor a
    ld [$c807], a
    ld a, $60
    ld [$c808], a
    ld a, $01
    ld [$c809], a
    xor a
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


Call_025_6565:
    xor a
    ld [$c810], a
    ld a, $35
    call Call_000_3f52
    ret


Call_025_656f:
    ld a, $03
    ld [$c80d], a
    ld a, $37
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_657f:
    ld a, $03
    ld [$c80d], a
    ld a, $3b
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_658f:
    ld a, $01
    ld [$c80d], a
    ld a, $35
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_659f:
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_65af:
    ld a, $02
    ld [$c80d], a
    ld a, $36
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_65bf:
    ld a, $02
    ld [$c80d], a
    ld a, $3a
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_65cf:
    ld a, $00
    ld [$c80d], a
    ld a, $34
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_65df:
    ld a, $00
    ld [$c80d], a
    ld a, $38
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_025_65ef:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_025_6606

    cp $01
    jr z, jr_025_661b

    cp $02
    jr z, jr_025_661c

    ret


jr_025_6606:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_025_6627

    ld hl, $c806
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


jr_025_661b:
    ret


jr_025_661c:
    ld a, $08
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_025_6627:
    ld a, $02
    ld [$c80d], a
    ld a, $16
    call Call_000_152a
    ld a, $05
    ld [$c810], a
    xor a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $37
    call Call_000_3f52
    ret


Call_025_6645:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_025_665c

    cp $01
    jr z, jr_025_6671

    cp $02
    jr z, jr_025_6672

    ret


jr_025_665c:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_025_667d

    ld hl, $c806
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


jr_025_6671:
    ret


jr_025_6672:
    ld a, $09
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_025_667d:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $06
    ld [$c810], a
    xor a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $38
    call Call_000_3f52
    ret


Call_025_669b:
    ld a, [$c80c]
    or a
    ret z

    ld a, [$c80d]
    cp $00
    jr z, jr_025_66b9

    cp $01
    jr z, jr_025_66c3

    cp $02
    jr z, jr_025_66cd

    ld hl, $c808
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


jr_025_66b9:
    ld hl, $c808
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


jr_025_66c3:
    ld hl, $c806
    ld bc, $ffff
    call AddBCtoWordAtHL
    ret


jr_025_66cd:
    ld hl, $c806
    ld bc, $0001
    call AddBCtoWordAtHL
    ret


    ld a, [sHouseExpansionFlag]
    cp $00
    jp z, Jump_025_66e8

    cp $01
    jp z, Jump_025_677d

    jp Jump_025_680a


    ret


Jump_025_66e8:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$c831]
    cp $59
    jr nc, jr_025_6735

    inc a
    ld [$c831], a
    cp $4d
    jr c, jr_025_671c

    cp $50
    jr z, jr_025_6724

    cp $58
    ret c

    cp $58
    jr z, jr_025_672f

    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


jr_025_671c:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


jr_025_6724:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


jr_025_672f:
    ld a, $32
    call Call_000_3f52
    ret


jr_025_6735:
    ld a, [$c831]
    cp $9a
    ret nc

    inc a
    ld [$c831], a
    cp $5b
    jr z, jr_025_674c

    cp $99
    jr c, jr_025_6757

    cp $99
    jr z, jr_025_675f

    ret


jr_025_674c:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_156b
    ret


jr_025_6757:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


jr_025_675f:
    xor a
    ld [$c820], a
    ld a, $33
    call Call_000_3f52
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_152a
    ld a, $03
    ld [$c810], a
    ld a, $01
    ld [$c813], a
    ret


Jump_025_677d:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_025_68f0
    cp $09
    call z, Call_025_68f8
    cp $0a
    call z, Call_025_6900
    cp $0b
    call z, Call_025_6908
    ld a, [$c831]
    cp $83
    jp nc, Jump_025_67df

    inc a
    ld [$c831], a
    cp $01
    jp z, Jump_025_6874

    cp $34
    jp z, Jump_025_687f

    cp $35
    jp z, Jump_025_688a

    cp $36
    jp z, Jump_025_6895

    cp $66
    jp z, Jump_025_687f

    cp $67
    jp z, Jump_025_6874

    cp $7f
    jp z, Jump_025_687f

    cp $80
    jp z, Jump_025_68a0

    cp $82
    jp z, Jump_025_68cc

    ret


Jump_025_67df:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $86
    jp z, Jump_025_68b6

    cp $8a
    jp z, Jump_025_68c1

    cp $9e
    jp z, Jump_025_68a0

    cp $a2
    jp z, Jump_025_68ab

    cp $d4
    jp z, Jump_025_68b6

    cp $da
    jp z, Jump_025_68c1

    cp $fe
    jp z, Jump_025_68d2

    ret


Jump_025_680a:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call RST_TableJumpBankSwitch
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_025_68f0
    cp $09
    call z, Call_025_68f8
    cp $0a
    call z, Call_025_6900
    cp $0b
    call z, Call_025_6908
    ld a, [$c831]
    cp $71
    jp nc, Jump_025_6854

    inc a
    ld [$c831], a
    cp $07
    jr z, jr_025_6874

    cp $54
    jr z, jr_025_687f

    cp $5a
    jr z, jr_025_6895

    cp $68
    jr z, jr_025_688a

    cp $70
    jp z, Jump_025_68cc

    ret


Jump_025_6854:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $75
    jp z, Jump_025_68b6

    cp $84
    jp z, Jump_025_68ab

    cp $90
    jp z, Jump_025_68a0

    cp $98
    jp z, Jump_025_68c1

    cp $d8
    jr z, jr_025_68d2

    ret


Jump_025_6874:
jr_025_6874:
    ld a, $03
    ld [$c82d], a
    ld a, $0b
    call Call_000_156b
    ret


Jump_025_687f:
jr_025_687f:
    ld a, $03
    ld [$c82d], a
    ld a, $07
    call Call_000_156b
    ret


Jump_025_688a:
jr_025_688a:
    ld a, $01
    ld [$c82d], a
    ld a, $05
    call Call_000_156b
    ret


Jump_025_6895:
jr_025_6895:
    ld a, $01
    ld [$c82d], a
    ld a, $09
    call Call_000_156b
    ret


Jump_025_68a0:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


Jump_025_68ab:
    ld a, $02
    ld [$c82d], a
    ld a, $0a
    call Call_000_156b
    ret


Jump_025_68b6:
    ld a, $00
    ld [$c82d], a
    ld a, $04
    call Call_000_156b
    ret


Jump_025_68c1:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_156b
    ret


Jump_025_68cc:
    ld a, $32
    call Call_000_3f52
    ret


Jump_025_68d2:
jr_025_68d2:
    xor a
    ld [$c820], a
    ld a, $33
    call Call_000_3f52
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_152a
    ld a, $03
    ld [$c810], a
    ld a, $01
    ld [$c813], a
    ret


Call_025_68f0:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


Call_025_68f8:
    ld a, [$c82a]
    dec a
    ld [$c82a], a
    ret


Call_025_6900:
    ld a, [$c82a]
    inc a
    ld [$c82a], a
    ret


Call_025_6908:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


Call_025_6910:
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


    nop
    inc b
    db $eb
    ld bc, $1e03
    nop
    ld bc, $0209
    ld [bc], a
    ld h, $36
    sbc $22
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    and e
    nop
    scf
    ld [de], a
    ld a, h
    ld a, [bc]
    ld [bc], a
    di
    ld bc, $3236
    inc sp
    inc [hl]
    dec [hl]
    or e
    ld [bc], a
    push af
    daa
    dec bc
    ld [bc], a
    ld d, l
    inc de
    nop
    ld d, e
    ld b, e
    ld b, h
    ld d, h
    ldh a, [c]
    or e
    nop
    ld d, [hl]
    rrca
    inc b
    jr nc, jr_025_6993

    ld b, d
    ld b, [hl]
    ld b, a
    ld b, l
    db $fc
    rrca

jr_025_6993:
    inc b
    nop
    ld [$d1d0], sp
    xor d
    xor e
    xor h
    xor l
    ccf
    xor [hl]
    xor a
    inc b
    dec b
    xor b
    xor c
    and e
    nop
    dec bc
    inc b
    rst $38
    ldh [$ffe1], a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $08
    dec b
    dec b
    cp b
    cp c
    and e
    nop
    dec bc
    ld b, $10
    ld de, $12ce
    nop
    ld hl, $0504
    and l
    nop
    dec bc
    ld [$0505], sp
    dec bc
    inc b
    dec b
    ld c, d
    nop
    rlca
    dec bc
    ld a, [bc]
    ld h, l
    rlca
    rrca
    ld [$1203], sp
    nop
    ld h, l
    rlca
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$0f30], sp
    ld [$080f], sp
    rrca
    ld [$0809], sp
    ld d, $17
    add l
    ld [$1a0a], sp
    dec de
    ld bc, $1413
    nop
    inc d
    dec d
    and l
    nop
    ld a, [bc]
    ld [hl+], a
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
    dec e
    nop
    nop
    ld [$fffd], sp
    ld l, $00
    or l
    ld a, [hl]
    db $d3
    ld d, d
    xor e
    ld l, [hl]
    rst $38
    db $dd
    ld e, [hl]
    adc e
    ld c, d
    and l
    ld a, [hl]
    rst $38
    nop
    rst $38
    push de
    ld a, [hl]
    push de
    halt
    xor e
    ld a, d
    xor c
    ld a, d
    rst $38
    cp l
    ld a, [hl]
    adc e
    ld l, [hl]
    sub e
    halt
    and l
    halt
    rst $38
    rst $38
    nop
    adc b
    rst $38
    ld h, c
    rst $38
    ld c, $6e
    cp a
    sbc d
    sbc e
    ld c, l
    ld a, a
    ld h, d
    rst $38
    pop hl
    inc bc
    ret


    rst $38
    ccf
    or d
    ld a, [hl]
    or a
    ld [hl], a
    sbc h
    ld a, h
    ret


    rst $38
    ld c, c
    cp e
    ld a, a
    add [hl]
    ld a, a
    rst $38
    nop
    call nz, $ffff
    or e
    rst $38
    ld b, a
    ld b, a
    inc a
    inc a
    rst $08
    rst $28
    rst $08
    call z, Call_000_38ff
    jr nz, @+$04

jr_025_6a91:
    rst $30
    ld [$ffdb], sp
    daa
    ret c

    ccf
    jp $b63f


    ld a, a
    and e
    rst $38
    ld a, a
    cp b
    ld b, a

jr_025_6aa1:
    rst $38
    nop
    ld [hl-], a
    call $ef33
    rst $38
    ld a, b
    rst $38
    rst $00
    ld h, b
    inc b
    adc h
    rst $38
    rst $00
    rst $38
    jr c, @+$01

    nop
    ld a, b
    add a
    xor a
    ld [hl], b
    ldh a, [rIE]
    nop
    and b
    ld b, b
    and b
    ld b, b
    or h
    ld b, b
    cp l
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $28
    db $10
    jr c, jr_025_6a91

    db $e3
    rst $38
    inc e
    ld c, h
    inc sp
    ld a, [hl]
    rra
    sbc a
    dec b
    rst $00
    rst $38
    inc bc
    rst $38

jr_025_6ad7:
    nop
    daa
    ret c

    sbc a
    ldh a, [$fff0]
    rst $38
    dec b
    ld h, b
    jp z, $d520

    db $f4
    ld [$751d], a
    jr nc, jr_025_6aef

    ld [bc], a
    or e
    nop
    ld [bc], a
    dec h
    rst $00

jr_025_6aef:
    inc de
    inc b
    ld [bc], a
    rst $38
    rrca
    ld h, b
    rst $18
    jr nz, jr_025_6ad7

    db $f4
    db $eb
    dec e
    ld a, l
    ld [hl-], a
    ld [$9f02], sp
    sbc a
    ld h, l
    rst $00
    dec sp
    inc b
    inc b
    ld a, a
    add hl, bc
    ld h, b
    add $20
    reti


    db $f4
    ldh [c], a
    ld bc, rDIV
    cp $01
    inc hl
    call c, $22dd
    ld c, a
    jr nc, @+$01

    ld h, c
    sbc [hl]
    sbc l
    ld h, d
    rst $00
    jr jr_025_6aa1

    ld a, a
    rst $38
    rst $30
    ld [$7f80], sp
    db $dd
    ld [hl+], a
    ld a, a
    nop
    cp $03
    dec bc
    nop
    rst $38
    ld [hl], a
    adc b
    nop
    rst $38
    db $dd
    ei
    ld [hl+], a
    rst $38
    inc b
    ld bc, $7eab
    xor e
    ld l, [hl]
    push de
    rst $38
    ld e, [hl]
    sub l
    ld e, [hl]
    cp l
    ld a, [hl]
    pop de
    halt
    ret


    rst $38
    ld l, [hl]
    and l
    ld l, [hl]
    rst $38
    nop
    ld h, d
    rst $38
    ld c, l
    rst $38
    ld a, a
    sbc d
    sbc e
    ld c, $6e
    ld h, c
    rst $38
    adc b
    ld a, [hl]
    nop
    db $10
    ret nz

    ld b, b
    ld h, b
    and b
    ld a, a
    ld b, b
    rlca
    ld bc, $033f
    ld [bc], a
    ld b, $05
    db $fd
    inc bc
    rlca
    ld [bc], a
    ld bc, $ff11
    and [hl]
    and $90
    sub b
    ld b, b
    ld b, b
    and b
    and b
    rst $38
    ret nz

    ret nz

    add b
    add b
    rst $38
    nop
    call nc, $ffff
    set 1, e
    dec d
    dec d
    inc bc
    inc bc
    dec b
    dec b
    cp a
    ld [bc], a
    ld [bc], a
    ld bc, $b201
    ld h, b
    and c
    rrca
    and b
    rst $38
    ld b, b
    sub b
    ld h, b
    sbc h
    ld h, b
    adc a
    ld d, b
    add b
    rst $38
    ld b, b
    and d
    nop
    inc hl
    ld bc, $0103
    ld [bc], a
    rst $38
    nop
    inc b
    ld [bc], a
    ld [$f604], sp
    ld c, $00
    rst $38
    nop
    jp nc, $60c8

    ld d, c
    jr nz, jr_025_6bb8

jr_025_6bb8:
    ldh [rIE], a
    pop de
    jr nc, @+$0c

    ld c, h
    ld [hl], c
    rlca
    jr jr_025_6bc2

jr_025_6bc2:
    rst $38
    nop
    and d
    ld [$5523], sp
    inc bc
    xor c
    ld [bc], a
    ld e, a
    ld d, h
    inc b
    xor d
    ld [$0254], sp
    ld [bc], a
    call $0200
    ld a, a
    db $10
    ldh [$ffd8], a
    db $10
    cpl
    ld c, h
    ld [hl], e
    ld [bc], a
    ld [bc], a
    rst $38
    ld e, h
    inc hl
    db $dd
    inc bc
    db $fd
    ld [bc], a
    db $fc
    inc b
    ld e, a
    ld a, [$f408]
    cp $06
    nop
    inc b
    call nz, $0403
    rst $38
    db $10
    ld h, $4c
    ld [hl], c
    inc bc
    inc e
    nop
    nop
    rst $38
    and e
    ld b, h
    inc hl
    sbc b
    inc bc
    ld h, h
    inc bc
    sbc b
    rst $38
    dec b
    ld h, d
    add hl, bc
    sub [hl]
    push af
    ld c, $4d
    cp $fc
    rlca
    rrca
    inc bc
    inc e
    ld bc, $77fe
    adc b
    ld bc, $f7fe
    db $dd
    ld [hl+], a
    cp $04
    ld de, $77c2
    jp nc, $ff7f

    add $6f
    and d
    ld l, e
    xor d
    ld l, e
    adc a
    ld b, b
    rst $38
    adc b
    ld b, a
    xor b
    ld h, a
    or d
    ld [hl], a
    or d
    ld [hl], a
    rst $38
    cp d
    ld a, a
    adc h
    ld l, a
    adc h
    ld l, a
    rst $38
    nop
    rst $28
    add e
    ld a, a
    add b
    ld a, a
    rlca
    ld [bc], a
    rst $38
    nop
    pop bc
    rst $30
    ret nz

    inc bc
    cp $07
    ld [bc], a
    db $fc
    rrca
    ld [de], a
    rlca
    ei
    jp nc, $07c7

    inc bc
    adc h
    ld l, a
    sub d
    ld [hl], a
    jp nz, Jump_025_77ff

    and a
    ld [hl], d
    rst $28
    ld a, [hl-]
    pop bc
    ld a, $d5
    rst $38
    ld a, $d7
    inc a
    db $db
    inc a
    jp hl


    ld e, $ab
    rst $38
    ld e, [hl]
    rst $38
    nop
    ld a, h
    add b
    xor a
    ld [hl], h
    cp $ff
    dec b
    and b
    ld e, a
    cp a
    ld b, b
    xor a

jr_025_6c7f:
    ld e, a

jr_025_6c80:
    or b
    rst $38
    ld d, b
    rst $38
    nop
    ccf
    jr nz, jr_025_6c80

    rla
    cpl
    rst $38
    ret nc

    ld [bc], a
    db $fd
    cp $01
    ei
    db $fd
    rlca
    rst $38
    dec b
    rst $38
    nop
    inc l
    jp nc, $e890

    and e
    rst $38
    ld d, b
    ld l, [hl]
    ret nz

    ld l, b
    add b
    call $4580
    rst $38
    ld [$00ff], sp
    rra
    jr nz, jr_025_6cb0

    dec bc
    ld h, e
    rst $38
    add h

jr_025_6cb0:
    cp d
    ld bc, $000b
    ld e, c
    nop
    ld d, c
    cp $00
    inc l
    ld h, $d8
    sub d
    db $fc

jr_025_6cbe:
    db $e3
    inc e
    ld a, h
    ld a, a
    ei
    ld [$f8f7], sp
    rst $20
    ld [hl-], a
    dec l
    ld bc, $fb24
    cp b
    ld b, a
    ld bc, $3a22
    ld e, a
    rra
    dec l
    rla
    sub l
    adc e
    ld b, $24
    adc $00
    ld [hl+], a
    jp hl


    ld bc, $0222
    jr nz, jr_025_6d44

    rst $38
    ld b, c
    cp [hl]
    ld h, l
    sbc [hl]
    sbc l
    ld b, [hl]
    push bc

jr_025_6cea:
    ld a, [hl+]
    cp $01
    jr nc, jr_025_6cea

    inc b
    db $fc
    rrca
    db $ed
    ld e, $f7
    rst $18
    jr jr_025_6c7f

    ld a, b
    ei
    inc b
    ld bc, $0731
    ld hl, sp-$01
    rst $30
    jr jr_025_6cbe

    ld c, h
    ei
    inc b
    db $ed
    ld [de], a
    rst $38
    pop bc
    ld a, $bf
    ld [hl], b
    cp c
    ld [hl], a
    cp c
    ld [hl], a
    ei
    adc c
    ld h, a
    ld hl, $9900
    ld [hl], a
    ret


    ld [hl], a
    rst $38
    rst $38
    nop
    add b
    ld b, b
    or l
    ld d, l
    cp [hl]
    ld a, [hl]
    cp l
    cp a
    ld a, a
    or e
    ld a, a
    cp h
    ld e, a
    add b
    nop
    cpl
    ld bc, $00ff
    ld c, c
    ld b, b
    and c
    and b
    push af
    db $f4
    sbc e
    rst $38
    ld a, [$f4ed]
    ld bc, $f2fe
    rlca
    ld [hl-], a
    rst $38
    rst $28
    ld d, $cf

jr_025_6d44:
    ld [de], a
    rr d
    rr b
    rst $18
    rl b
    rl h
    rst $08
    rlca
    inc d
    adc b
    ld c, e
    rst $38
    add b
    ld c, e
    and h
    ld l, a
    xor e
    ld e, [hl]
    add e
    ld a, [hl]
    db $eb
    sub e
    ld a, [hl]
    ld bc, $f710
    jr nz, jr_025_6d64

jr_025_6d64:
    reti


    ld [hl], $bf
    rst $38
    ld b, b
    or c
    ld d, b
    or a
    ld d, b
    or h
    ld d, e
    or a
    rst $38
    ld d, b
    xor a
    ld e, [hl]
    sbc a
    ld b, b
    add b
    ld b, b
    rst $38
    rst $38
    ld bc, $8446
    ld [hl], a
    add l
    ld d, $e4
    halt
    rst $38
    add h
    ld a, d
    cp h
    cp $02
    nop
    nop
    ld c, c
    rst $38
    and h
    ld l, b
    dec b
    inc h
    dec de
    di
    call z, $df18
    rlca
    ld c, $01
    inc de
    stop
    ld bc, $0b12
    rst $38
    ret nc

    inc de
    db $ed
    and $18
    ld c, $f2
    jr c, @-$03

    ret nz

    xor $00
    ld [hl+], a
    or $c9
    halt
    ld c, c
    ld [hl], $ff
    add hl, bc
    ldh [$ff9c], a
    ld b, a
    jr z, jr_025_6e2a

    inc c
    inc [hl]
    rst $38
    dec bc
    rrca
    nop
    ld [$0a90], sp
    add d
    add hl, bc
    rst $38
    pop bc
    ld b, $5a
    db $e4
    ld [$6894], sp
    ld e, d
    ei
    ld [hl+], a
    ldh [rSB], a
    ld [hl+], a
    ld d, a
    jr nz, jr_025_6e1e

    and b
    rst $10
    rst $28
    jr nc, jr_025_6e26

    ld e, h
    ld h, d
    ld bc, $a324
    ld e, h
    inc hl
    rst $38
    ld d, h
    inc bc
    xor b
    inc bc
    ld [hl], h
    dec b
    jp c, $ff09

    and [hl]
    pop af
    ld a, [bc]
    ld bc, $f102
    ld c, $d7
    rst $38
    jr c, @-$3f

    ld b, b
    ccf
    ret nz

    ld a, [hl]
    add c
    db $db
    rst $38
    inc h
    sbc a
    ld h, b
    rst $38
    nop
    ld hl, sp+$07
    cp l
    rst $18
    ld b, [hl]
    db $fd
    ld b, $fe
    inc bc
    ldh [rNR22], a
    inc b
    reti


    rst $38
    ld h, $ce
    ld sp, $77c9
    reti


    ld [hl], a
    ret


    ei
    ld h, a
    xor c
    jr nz, jr_025_6e1c

jr_025_6e1c:
    adc c
    ld b, a

jr_025_6e1e:
    adc c
    ld b, a
    xor c
    db $ed
    ld h, a
    nop
    ld b, d
    ld [hl], l

jr_025_6e26:
    xor a
    add b
    rrca
    cp [hl]

jr_025_6e2a:
    ld h, b
    cp c
    rst $38
    ld e, c
    sbc a
    ld h, b
    and b
    ld e, a
    rst $38
    nop
    ld b, c
    rst $38
    ld b, b
    xor c
    and b
    db $fd
    db $fc
    dec hl
    ld [$fffd], a
    ld a, h
    ccf
    cp $ed
    db $f4
    ld [hl-], a
    rst $20
    ld [hl-], a
    adc a
    rst $20
    ld a, [hl-]
    rst $28
    inc a
    ld [hl+], a
    nop
    pop bc
    nop
    ld hl, $ba12
    rst $38
    ld a, d
    cp a
    ld e, a
    add c
    ld a, a
    add d
    ld a, a
    and b
    cp $00
    inc de
    ld bc, $fffe
    nop

jr_025_6e63:
    and c
    and b
    ld e, l
    ccf
    ld d, h
    xor e
    xor d
    ld a, a
    cp $09
    nop
    inc de
    ld bc, $ff40
    and a
    ld a, b
    ld hl, sp+$07
    ldh [rNR34], a
    ret nc

    dec l
    rst $28
    xor e
    ld d, h
    call nc, $012b
    ld b, b
    ld hl, sp+$07
    rrca
    rst $38
    ldh a, [rSC]
    dec c
    rst $38
    nop
    ld l, e
    ld a, a
    rst $18
    rst $38
    rst $18
    rst $38
    nop
    jr nz, jr_025_6e63

    and b
    jp z, $ffc0

    dec d
    ld b, b
    xor a
    ld b, c
    cp [hl]
    add a
    ld a, b
    adc c
    ld a, h
    nop
    ld c, b
    inc bc
    ld e, $ac
    ld [hl], e
    sbc $bf
    dec b
    and b
    ld b, [hl]
    cp $01
    ld b, d
    sub e
    db $fc
    db $fc
    inc bc
    ld h, b
    sbc a
    add b
    rst $18
    ld a, a
    add c
    ld a, [hl]
    jp nz, $033d

    inc b
    inc hl
    call c, $1cff
    db $e3
    ld a, [de]
    rst $28
    sbc a
    ld l, l
    ld [hl], a
    sbc e
    cp $01
    ld b, h
    add d
    db $fd
    sbc $21
    ld [hl], h
    bit 1, b
    rst $28
    or a
    ld h, h
    sbc e
    ld d, d
    nop
    ld [hl+], a
    cp $01
    ld h, e
    rst $38
    inc e
    dec e
    and d
    rrca
    ret nc

    dec bc
    db $e4
    rlca
    rst $18
    ldh a, [$ffe5]
    ld a, [de]
    cp a
    ld b, b
    ld hl, $ff41
    nop
    ld a, a
    ld sp, hl
    rlca
    rst $38
    nop
    rst $20
    rra
    cp a
    nop
    ld c, h
    or a
    ei
    inc b
    ld a, a
    ld h, b
    ld a, [hl-]
    sbc a
    ldh [rP1], a
    ld bc, $f8f8
    ld d, b
    jr z, jr_025_6f0e

    ld sp, $4e03
    ld sp, hl
    rlca
    adc c

jr_025_6f0e:
    rst $20
    add hl, sp

jr_025_6f10:
    rst $38
    rst $30
    ld c, c
    ld [hl], a
    ld l, c
    rst $30
    sbc c

jr_025_6f17:
    rst $30
    add hl, bc
    rst $38
    rst $30
    ld sp, hl
    rlca
    ccf
    ldh [rWave_9], a
    rst $28
    ld [hl-], a
    rst $38
    rst $28
    jr c, jr_025_6f10

    jr nc, jr_025_6f17

    add hl, sp
    rst $28
    jr nc, @-$03

    rst $28
    ccf
    ld h, b
    inc bc
    adc b
    rst $28
    dec [hl]
    db $fd
    ld b, c
    cp a
    ld a, a
    ld h, d
    rst $30
    sub l
    db $fd
    nop
    ld [bc], a
    ld d, d
    jp nc, $bdff

    ld h, $ff
    sbc c
    rst $20
    jr z, @+$01

    ld b, $ef
    rst $38
    halt
    adc c
    rst $38
    ld c, $58
    xor e
    ld d, l
    cp c
    rst $38
    ld h, [hl]
    sbc h
    ld [hl], e
    and [hl]
    ld h, c
    cp e
    ld a, b
    and c
    rst $38
    ld h, b
    sbc d
    ld e, d
    add b
    ld b, b
    inc hl
    rst $28
    ld a, b
    rst $38
    ld a, b
    xor l
    dec l
    ld d, b
    or b
    ld h, $c6
    call c, Call_000_2cff
    sub d
    ld h, d
    ld h, b
    nop
    adc h
    ld [hl], e
    ld b, [hl]

jr_025_6f76:
    ei
    add hl, sp
    ccf
    and b
    dec [hl]
    inc e
    inc e
    inc bc
    inc bc
    db $10
    cp $00
    jr nz, jr_025_6f76

    ld [hl], d
    ld a, c
    cp a
    daa
    rst $00
    sub b
    rst $38
    ld h, b
    adc $36
    db $f4
    adc b
    ld h, $1a
    jr @+$01

    nop
    and $19
    ld a, a
    inc b
    dec b
    inc b
    ret nz

    rst $18
    ret nz

    ld a, [de]
    ld a, [de]
    ld h, h
    ld h, h
    ld bc, $3802
    ret c

    rst $38
    ld [de], a
    ldh [c], a
    adc c
    ld [hl], c
    add $3a
    ld h, d
    inc e
    rst $38
    ld a, $00
    ld [hl-], a
    inc l
    inc c
    nop
    ld l, c
    sub $ff
    ld d, h
    ld c, e
    ld c, $01
    set 1, b
    ld bc, $fb00
    ld c, h
    ld c, h
    ld bc, $dd5f
    ld [hl+], a
    db $e3
    ld a, h
    ld e, l
    rst $38
    sbc [hl]
    dec a
    sbc $9b
    ld l, h
    jp hl


    ld d, $cd
    rst $30
    or [hl]
    ld a, l

jr_025_6fd7:
    adc $03
    jr jr_025_6fd7

    inc bc
    or d
    ld a, h
    cp a
    add [hl]
    ld a, l
    or h
    ld e, d
    xor b
    ld [hl], h
    ld bc, $325b
    rst $38
    push bc
    and c
    ld d, [hl]
    ld b, a
    xor b
    ld l, $57
    dec de
    rst $38
    cpl
    rrca
    rst $10
    rst $38
    nop
    ld b, b
    and c
    adc h
    rst $38
    ld d, d
    sbc [hl]
    ld hl, $528c
    ld b, b
    and c
    ret nz

    ei
    sbc a
    ld b, b
    and b
    ld [de], a
    rst $28
    db $10
    ld a, b
    add a
    ld h, e
    rst $38
    inc e
    ld l, h
    or e
    sbc $3f
    add l
    ld a, a
    cp e
    db $fc
    nop
    ld e, l
    ld [bc], a
    ld e, d
    ld [$a057], sp
    ld e, b
    and a
    ldh [$fff7], a
    sbc a
    ld e, b
    daa
    inc bc
    inc e
    dec de
    inc h
    call nc, $bf0b
    ld [hl], $cb
    rrca
    pop af
    scf
    rlc c
    ld e, h
    rst $28
    rst $38
    sub b
    ret nc

    cpl
    or b
    ld c, a
    xor a
    ld b, b
    and b
    rst $30
    ld b, c
    and b
    ld b, e
    ld bc, $a358
    ld e, h
    ld e, l
    and d
    rst $38
    ld l, a
    sub b
    and e
    ld e, h
    cpl
    ret nc

    ld sp, $ffca
    rst $38
    nop
    ld a, a
    add b
    cp b
    ld h, h
    ldh [rNR10], a
    rst $38
    ret nc

    ld hl, $14ab
    call nc, $aa0a
    ld d, l
    ld e, [hl]
    ld bc, $0c69
    inc de
    inc bc
    inc c
    add b
    dec a
    rst $38
    ld b, $20
    rst $38
    jp nz, Jump_000_35c0

    ld b, b
    xor d
    ld b, b
    sub l
    rst $00
    rst $38
    xor b
    ld c, c
    ld d, $ff
    nop
    cpl
    ld d, b
    jr c, @+$01

    rst $00
    inc hl
    ld e, h
    inc l
    db $d3
    ld e, [hl]
    cp a
    ld b, l
    rst $30
    cp a
    ld [hl], e
    cp a
    dec b
    jr nz, jr_025_70d1

    cp b
    add b
    ld b, b
    rst $30
    add b
    inc b
    add b
    ld h, b
    inc e
    rst $38
    nop
    jp nz, $ff25

    ld bc, $0112
    jr jr_025_70a5

    ld a, [de]

jr_025_70a5:
    ld b, c
    cp [hl]
    db $ed
    and c
    nop
    ld b, [hl]
    ld h, $d9
    ld bc, $6420
    sbc d
    sbc b
    rst $38
    ld h, [hl]
    ret z

    dec [hl]
    and h
    dec de
    rst $38
    nop
    ld a, $ff
    pop bc
    dec bc
    inc d
    dec b
    ld a, [bc]
    rlca
    nop
    inc bc
    rst $38
    and h
    inc bc
    ld d, h
    inc bc
    db $ec
    sub b
    ld l, b
    and b
    rst $38
    ld d, c
    and b
    ld d, e

jr_025_70d1:
    or b
    ld l, a
    xor c
    ld d, [hl]
    or a
    rst $38
    ld b, c
    jp c, $801a

    ld b, b
    rlca
    db $eb
    inc [hl]
    rst $38
    ret z

    ld l, l
    and c
    ret nc

    ld [hl], b
    ld h, $26
    call z, $ccff
    ld h, d
    ld h, d
    nop
    nop
    ld b, b
    and e
    ld h, c
    rst $38
    ld d, [hl]
    ld [hl-], a
    inc l
    jp nc, Jump_000_1ec4

    nop
    dec bc
    rst $38
    inc b
    jr jr_025_7115

jr_025_70fe:
    rlca

Jump_025_70ff:
    nop
    add $3a
    sub e
    rst $38
    ld l, l
    xor e
    ld b, l
    cp d
    ld d, h
    or c
    ld c, [hl]
    or c
    rst $38
    ld b, d
    ld c, [hl]
    add b
    add b
    nop
    rst $00
    cp b
    ld b, b

jr_025_7115:
    rst $38
    jr nc, jr_025_7148

    inc c
    rst $38
    ret nz

    dec [hl]
    ld a, [bc]
    ld a, l
    ei
    ld h, d
    ld d, $00
    ld a, [hl-]
    call nz, Call_000_0638
    ld a, [de]
    add hl, de
    rst $38
    ld h, c
    ld a, [$5802]
    and b
    ld [hl], b
    add b
    ldh [c], a
    rst $38
    ld [hl+], a
    nop
    nop
    and b
    ld b, e
    ret nz

    inc hl
    ld h, b
    ld a, a
    inc de
    ldh a, [$ffcb]
    jr jr_025_7147

    ld c, a
    ld b, b
    ld bc, $ff77
    ld a, a
    add b

jr_025_7147:
    add a

jr_025_7148:
    ld a, b
    adc l
    ld [hl], d
    db $fd
    ld b, $ff
    ld a, e
    sbc h
    pop hl
    ld h, $85
    adc [hl]
    ld c, l
    cp $ff
    sbc c
    ld h, [hl]
    cp h
    ld [hl], e
    sub [hl]
    ld [hl], c
    and e
    ld h, b

jr_025_715f:
    rst $28
    cp e
    ld a, d
    and c
    ld h, c
    inc bc
    jr nz, jr_025_715f

    ld a, b
    ld l, l
    rst $38
    xor l
    jr nc, @-$2e

    sub $26
    sbc h
    ld l, h
    ld h, d
    sub $00
    ld b, b
    ld c, h
    or e
    inc c
    jr nz, jr_025_71ac

    dec bc
    jr nz, jr_025_70fe

    ld b, $df
    add c
    ld c, [hl]
    ld b, e
    inc a
    db $fc
    ld b, $20
    ld [de], a
    xor h
    rst $38
    adc [hl]
    ld d, d
    push bc
    add hl, hl
    ldh [c], a
    sub h
    ld sp, $ff0a
    rra
    nop
    add hl, hl
    ld h, $06
    nop
    ld d, d
    xor l
    rst $38

jr_025_719b:
    ld l, c
    ld d, [hl]
    inc e
    inc bc
    adc $c9
    inc bc
    nop
    db $fd
    ld c, l
    ld [bc], a
    jr nz, jr_025_719b

    inc c
    ld l, a
    ld [hl], b
    sbc l

jr_025_71ac:
    ld e, $ff
    ld e, l
    cp [hl]
    dec sp
    call c, $26d1
    sub l
    ld l, [hl]
    inc bc
    ld l, l
    sbc [hl]
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
    rst $38
    nop
    ld a, [hl]
    rst $38
    add c
    xor b
    ld [hl], h
    ld sp, hl
    nop
    or [hl]
    ld l, b
    sub d
    rst $38
    ld h, h
    or d
    ld b, b
    or d
    ld h, b
    rst $38
    nop
    cp a
    rst $38
    ld b, b
    adc b
    rla
    rst $08
    nop
    inc [hl]
    dec bc
    ld h, $ff
    inc de
    daa
    inc bc
    daa
    ld c, e
    rst $38
    nop
    daa
    rst $38
    ret c

    sub e
    db $fc
    sbc h
    ld h, d
    ld [hl], b
    call $bf40
    xor d
    add b
    ld d, l
    add b
    ld l, d
    rst $38
    jr nz, jr_025_7235

    inc c
    ld a, a
    db $d3

jr_025_7235:
    inc bc
    xor h
    ld bc, $0156
    xor [hl]
    ld b, b
    nop
    db $fd
    cp [hl]
    ld bc, rSC
    add b
    pop bc
    ld h, $71
    adc $ff
    rrca
    ldh a, [$ff27]
    db $fc
    dec c
    ld [bc], a
    rst $38
    nop

jr_025_7250:
    rst $38
    cp $01
    ccf
    ret nz

    pop bc
    ld h, $47
    sbc b
    cp a
    sbc e
    ld h, h
    cpl
    ret nc

    ld e, c
    and [hl]
    inc b
    ld [bc], a
    ld [hl+], a
    ei
    ld [hl], c
    ret z

    ld a, [bc]
    ld [bc], a
    ld [hl+], a
    ld b, a
    adc b
    sbc e
    inc h
    cp $00
    ld [bc], a
    ld h, $ff
    nop
    ld a, b
    add a
    and a
    ld a, b
    rst $38
    ld hl, sp+$07
    or c
    ld a, a
    add h
    ld a, a
    or b
    ld e, [hl]
    rst $38
    and h
    ld a, a
    rst $38
    nop
    rst $28
    db $10
    jr c, jr_025_7250

    rst $38
    inc hl
    call c, $f38c
    ld h, $ff
    ld l, e
    ld a, a
    ei
    rst $18
    rst $18
    ld bc, $9108
    cp $9c
    ld h, e
    ld b, a
    ld a, a
    rst $38
    dec sp
    rst $38
    ldh [c], a
    rst $38
    ld de, $033f
    ld [bc], a
    rst $38
    db $e3
    inc e
    inc l
    di
    sbc $bf
    dec b
    rst $38
    ei
    or e
    rst $38
    ld [bc], a
    ld a, [bc]
    rst $38
    ldh [$ff1f], a
    ld a, b
    rst $38
    rst $18
    rrca
    rst $38
    ld hl, sp-$01
    cpl
    inc b
    ld [bc], a
    ld h, e
    sbc h
    rst $38
    call z, $1af3
    rst $38
    rst $38
    db $fd
    ld d, a
    ld e, e
    cp $01
    inc c
    add e
    db $fc
    call c, $6123
    rst $38
    ld [$ffdf], sp
    daa
    cp $0d
    dec c
    ld bc, $230a
    call c, $ddff
    ld [hl+], a
    rrca
    ldh a, [rNR44]
    call c, $f02f
    rst $38
    pop de
    cp $92
    ld h, b
    or d
    ld h, l
    sub [hl]
    ld l, c
    rst $38
    cp c
    ld h, [hl]
    cp b
    ld [hl], a
    and [hl]
    ld h, c
    sbc e
    ld e, d

jr_025_72fb:
    rst $38
    add b
    ld b, b
    daa
    sbc e
    inc h
    ld e, b
    dec [hl]
    ret


    rst $38
    db $fc
    nop
    cp $06
    db $fc
    inc c
    ldh [c], a
    ld [hl+], a
    rst $38
    nop
    nop
    add b
    ld d, l
    ret nz

    ld a, [hl+]
    or b
    ld c, l
    rst $38
    sbc $a1
    jr nc, @+$11

    rrca
    nop
    db $10
    db $10
    rst $38
    nop
    nop
    ld [bc], a
    db $fc
    dec c
    di
    scf
    rst $00
    rst $38
    jr nc, jr_025_72fb

    sub $16
    add b
    add b
    ld c, $0e
    rst $38
    nop
    nop
    ld [hl], c
    xor $60
    ld d, e
    jr nz, @+$15

    cp a
    ret nc

    adc $0c
    inc bc
    ld c, a
    ld c, h
    pop hl
    dec d
    ld b, l
    rst $38
    cp d
    add e
    ld a, h
    inc bc
    db $fc
    dec b
    ld a, [$ff1b]
    db $e4
    pop hl
    ld b, $85
    adc [hl]
    ld c, l
    cp $71
    ld a, a
    add sp, $60
    ld d, c
    jr nz, jr_025_736c

    ret nc

    ret z

    ld b, $02
    ld a, a
    adc d
    add e
    ld b, h
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec b
    ld [bc], a
    rst $38
    adc a

jr_025_736c:
    ld a, a
    cp e
    ld a, e
    sub b
    ld [hl], b
    and b
    ld h, b
    rst $18
    cp d
    ld a, d

jr_025_7376:
    and c
    ld h, c
    sbc d
    nop
    ld [$ef23], sp
    rst $38
    ld a, b
    ld a, b
    dec l
    dec l
    ld d, b
    ld [hl], b
    ld h, $26
    rst $38
    call z, $62cc
    ld h, d
    nop
    nop
    ccf
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld a, [hl-]
    ld a, [hl-]
    ret nz

    ret nz

    inc e
    inc e
    ei
    inc bc
    inc bc
    ld bc, $7208
    ld [hl], d
    ld a, c
    rst $38
    rlca
    rst $28
    rlca
    ret nc

    ret nc

    ld d, $04
    ld [$d3d3], sp
    ld l, [hl]
    rst $38
    ld l, [hl]
    inc b
    inc b
    ret nz

    ret nz

    ld a, [de]
    ld a, [de]
    ld h, h
    db $fd
    ld h, h
    ld bc, $380a
    ld hl, sp+$42
    ld b, d
    ld h, c
    ld h, c
    db $eb
    sbc d

jr_025_73c1:
    sbc d
    and c
    ld e, $22
    nop
    inc c
    ld h, d
    db $e3
    ld b, c
    rst $38
    ld b, a
    inc bc
    inc bc
    jp z, $00ca

    ld bc, $fe4c
    ld [bc], a
    ld a, [bc]
    call $633e
    ld a, h
    dec e
    ld e, $5d
    rst $18
    ld a, [hl]
    ld a, e
    db $fc
    ld hl, $0126
    ld a, [bc]
    ccf
    nop
    rst $38
    ld b, b
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_025_7376

    xor b
    ld [hl+], a
    nop
    rst $38
    ld b, c
    ld hl, $1e50
    add c
    nop
    pop hl
    ld [hl+], a
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
    jr nc, jr_025_73c1

    jr nc, jr_025_7432

    cp a
    ccf
    ld b, b
    ccf
    ccf
    ld h, [hl]
    inc h
    ld h, l
    inc bc
    ld h, e
    ld [bc], a
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    add e
    db $fc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop

jr_025_7432:
    jr nz, @+$18

    nop
    ld e, a
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    rrca
    nop
    rra
    rrca
    dec de
    inc c
    rra
    dec bc
    cp $25
    nop
    ldh [rP1], a
    ret nc

    ldh [$ff90], a
    ld h, b
    ret nc

    add hl, sp
    and b
    dec h
    nop
    and a
    ld bc, $0c1b
    db $10
    ld b, b
    add hl, de
    and a
    ld bc, $901f
    ld h, b
    db $10
    ldh [$ffe0], a
    rra
    ld l, $1f
    nop
    inc c
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    db $fc
    ld [$69bc], sp
    cp a
    sbc h

jr_025_7477:
    ld l, c
    cp h
    ld c, c
    cp h
    ld l, b
    ld bc, $f828
    rst $38
    rlca
    dec bc
    inc b
    inc c
    db $e3
    ld c, $27
    dec bc
    rst $30
    rst $20
    rrca
    rlca
    ld bc, $9930
    and $af
    ld c, c
    rst $38
    ld l, e
    jp nc, $e437

    db $dd
    jp hl


    inc a
    ld [de], a
    cp $01
    jr nc, jr_025_7477

    ld h, a
    db $e3
    sbc h
    call z, $9e33
    rst $18
    ld a, a
    add l
    ld a, a
    di

jr_025_74aa:
    cp a
    nop
    inc sp
    nop
    jp $a4ff


    ret nz

    add hl, de
    ld b, b
    sbc [hl]
    ld b, b
    xor a
    ldh [$fff7], a
    rst $08
    jr nz, jr_025_74d3

    ld b, $2a
    ld d, e
    ld a, [de]
    cpl
    rrca
    rst $38
    sub l
    rlca
    set 7, a
    nop
    ld h, $d9
    add a
    rst $38
    ld a, [$25de]
    ld a, l
    db $eb
    jr c, jr_025_74aa

jr_025_74d3:
    cpl
    rst $38
    sub $5d
    dec l
    add a
    ld a, b
    ld a, d
    add c
    and c
    rst $38
    ld e, h
    db $dd
    jr nz, @+$0f

    ldh a, [rNR44]
    ret nz

    dec e
    rst $30
    jp nz, $ce91

    ld bc, $af30
    ld [hl], b
    ldh a, [rP1]
    rst $38
    and b
    ld e, a
    and b
    ld b, b
    or h
    ld c, e
    cp l
    ld [hl], b

jr_025_74f9:
    cp $05
    ld l, $4c
    or e
    ld a, [hl]
    rra
    sbc a
    ld h, l
    rst $00
    db $fd
    inc bc
    ld bc, $9f38
    ldh a, [$fff0]
    ld a, [bc]
    ld h, b
    jp z, Jump_000_20bf

    jp z, $eaf4

    dec e
    ld [hl-], a
    ld [$9f02], sp
    rst $28
    sbc a
    dec h
    rst $00
    dec hl
    inc b
    ld [bc], a
    dec b
    ld h, b
    rst $18
    sbc a
    jr nz, jr_025_74f9

    db $f4
    db $eb
    dec e
    nop
    inc e
    ld a, [bc]
    inc b
    inc de
    db $e4
    ld b, $02
    ld bc, $e104
    ld bc, $0302
    jr nc, jr_025_7586

    or b
    ld h, c
    ld a, a
    sbc [hl]
    sbc l
    ld b, d
    rst $00
    db $10
    sbc h
    ld l, b
    and b
    rrca
    rst $38
    ld l, b

jr_025_7545:
    cp a
    ld h, b
    or b
    ld l, a
    or b
    ld l, a
    sbc a
    rst $38
    ld d, b
    add b
    ld b, b
    dec bc
    rlca
    ld [$0de0], sp
    rst $38
    dec b
    ld hl, sp+$00
    ld e, $e6
    inc e
    db $e4
    ld a, [$02ff]
    nop
    nop
    ld a, $d1
    ld a, a
    ld h, $5a
    cp a
    ld a, [hl+]
    ldh [$ff80], a
    ld e, h
    inc e
    ld b, e
    inc bc
    jr z, jr_025_75c3

    rst $38
    add hl, sp
    xor a
    sbc a
    ld d, a
    call z, Call_000_26a8
    inc d
    rst $38
    sub l
    adc d
    add hl, bc
    ld b, $06
    nop
    ret nc

    jp Jump_025_70ff


jr_025_7585:
    ld l, c

jr_025_7586:
    ld [$c404], sp
    jp nz, Jump_000_191a

    db $fd
    ld h, l
    ld [bc], a
    jr z, jr_025_75ad

    ldh [rNR21], a
    add sp, $19
    ldh [c], a
    rst $38
    jp hl


    inc b
    and c
    ld e, h
    pop de
    ld c, $2e
    jr nz, @+$01

    nop
    nop
    ld d, d
    and e
    ld a, b
    rlca
    and h
    ld a, [bc]
    rst $38
    and l
    jr jr_025_7545

    inc h

jr_025_75ad:
    sbc h
    ld l, [hl]
    ld h, b
    ld bc, $00fe
    jr z, @+$28

    rlca
    ldh a, [rTAC]
    jr nc, jr_025_7585

    nop
    rst $38
    ld a, l
    ret nz

    sbc e
    ld l, h
    dec e
    ld [bc], a
    dec c

jr_025_75c3:
    cp $ff
    or d
    ld l, l
    and b
    ld b, b
    and b
    ld d, b
    and b
    ld d, b
    rst $18
    sub b
    ld l, a
    sbc h
    ld h, d
    adc a
    nop
    ld [$5ca2], sp
    rst $38
    inc hl
    ld bc, $fd03
    ld [bc], a
    inc b
    inc b
    ld a, [$08f7]
    inc d
    or $00
    ld [hl], $d2
    ret z

    ld h, b
    ld b, b
    rst $38
    jr nz, jr_025_75ed

jr_025_75ed:
    ldh [$ffc8], a
    jr nc, @+$0c

    ld c, h
    ld [hl], d
    rst $38
    rlca
    jr jr_025_75f7

jr_025_75f7:
    nop
    and d
    ld [$8923], sp
    rst $38
    inc bc
    xor c
    ld [bc], a
    xor b
    inc b
    xor d
    ld [$fea4], sp
    ld [bc], a
    ld [bc], a
    call $5060
    jr nz, jr_025_761d

    ldh [$ffd1], a
    rst $28
    db $10
    cpl
    ld c, h
    ld [hl], c
    ld [bc], a
    ld [bc], a
    ld e, h
    inc hl
    ld d, l
    ld a, [de]
    nop
    inc b
    ld d, h

jr_025_761d:
    nop
    inc b
    ld d, h
    cp $e0
    dec h
    ld [bc], a
    inc b
    ld bc, rSC
    ld a, [hli]
    ld c, h
    ld [hl], d
    inc bc
    inc e
    nop
    nop
    and e
    rst $38
    ld [$8823], sp
    inc bc
    ld d, h
    inc bc
    ld d, h
    dec b
    rst $38
    xor d
    add hl, bc
    and [hl]
    push af
    ld c, $4d
    cp $ff
    db $dd
    ld l, a
    jr nz, jr_025_7646

jr_025_7646:
    ld l, b
    rst $38
    ld l, d
    ld [hl+], a
    nop
    sbc d
    rst $38
    rst $30
    rst $38
    rst $38
    rst $28
    jr nz, jr_025_7653

jr_025_7653:
    ld l, a
    rst $38
    and e
    rst $38
    push hl
    xor l
    jr nz, jr_025_765b

jr_025_765b:
    and e
    nop
    ld bc, $0031
    ld e, c
    rst $38
    ld [hl], $bf
    rst $38
    ld [hl], b
    rst $38
    ld [hl], a
    rst $38
    ld a, c
    nop
    ld [bc], a
    db $db
    or $2a
    nop
    rst $38
    ld hl, sp+$11
    nop
    sbc b
    ld hl, sp-$18
    ld hl, sp-$29
    adc b
    ld hl, sp+$68
    ld b, b
    nop
    ld hl, sp+$70
    ld c, b
    ld a, e
    rst $38
    ld [hl], a
    ld a, a
    rst $38
    ld a, [de]
    ld h, b
    nop
    ld a, e
    rst $38
    ld a, d
    nop
    dec b
    ld e, l
    rst $30
    jr nz, jr_025_7692

jr_025_7692:
    dec d
    rst $38
    ldh a, [c]
    jr nz, @+$06

    sub $60
    inc b
    adc $11
    dec b
    cp a
    rst $38
    db $e3
    ldh [c], a
    dec b
    ld hl, rTMA
    rst $38
    ld a, a
    db $fc
    rst $38
    db $ed
    rst $38
    adc l
    rst $38
    ld l, h
    ld b, b
    nop
    rst $10
    db $ed
    rst $38
    sbc l
    nop
    ld [$007f], sp
    ld [bc], a
    or e
    rst $38
    ld bc, $026d
    ld [$4df0], sp
    and b
    dec b
    ld hl, $e100
    dec b
    ld [bc], a
    ld b, $2f
    inc l
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec d
    nop
    nop
    ld [$007f], sp
    nop
    jr nz, jr_025_76db

jr_025_76db:
    stop
    ld a, h
    ld b, b
    nop
    ld bc, $8238
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    nop
    inc bc
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
    sub b
    rra
    nop
    rra
    nop
    rra
    nop
    rst $20
    inc de
    ld bc, $001c
    rl l
    rst $38
    ld a, l
    rst $30
    inc c
    ld bc, $0fff
    ld [$0e0f], sp
    jr z, jr_025_771b

jr_025_771b:
    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    jp c, $0024

    ld sp, hl
    and $c0
    nop
    ld sp, $a300
    rst $38
    ld l, l
    rst $38
    db $ed
    db $fc
    ld [hl+], a
    nop
    ld de, $5701
    rst $38
    set 7, a
    ld e, e
    rst $38
    push af
    ld c, e
    add b
    nop
    ld e, a
    ret nz

    ld [bc], a
    sbc a
    rst $38
    ld l, a
    rst $38
    rst $38
    ld a, h
    rst $38
    sbc e
    rst $38
    add sp, -$01
    ld l, e
    rst $38
    ld [hl], l
    sbc h
    inc b
    inc bc
    rst $20
    nop
    ld [bc], a
    ld b, d
    rst $38
    sbc $80
    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    call c, $fdff
    dec de
    ld b, b
    nop
    rst $18
    rst $38
    jr @+$01

    rst $38
    ret nz

    ld a, d
    ld de, $4000
    ld h, a
    nop
    ccf
    ld hl, $2f3f
    jr nz, jr_025_777a

jr_025_777a:
    xor l
    ld [hl+], a
    ld h, d
    nop
    ld hl, $e13f
    rlca
    sbc $80
    ld [bc], a
    sub $ee
    ret nz

    ld [bc], a
    sbc $ff
    add hl, sp
    ret nz

    ld [$fffd], sp
    xor l
    rst $28
    rst $38
    sub l
    rst $38
    or l
    ld b, b
    nop
    xor l
    rst $38
    cp l
    cp [hl]
    inc b
    add hl, bc
    sbc b
    rst $38
    db $eb
    rst $38
    adc e
    nop
    rlca
    adc e
    jp z, $0ac0

    rst $28
    jr nz, jr_025_77ac

jr_025_77ac:
    rst $00
    ld b, b
    ld [$0021], sp
    ld [hl], a
    rst $38
    rst $18
    rst $38
    rra
    ld de, $161f
    jr nz, jr_025_77bb

jr_025_77bb:
    ld de, $551f
    rla
    ld [hl+], a
    nop
    rra
    nop
    inc b
    db $fd
    nop
    inc bc
    ld l, l
    ld [hl+], a
    nop
    push af
    sbc [hl]
    ret nz

    dec c
    cp $20
    nop
    call z, $f6ff
    rst $38
    rst $20
    add $ff
    or [hl]
    add b
    inc bc
    inc de
    ld c, $67
    rst $38
    db $db
    ld c, d
    ld [hl+], a
    nop
    ld h, a
    nop
    inc b
    add hl, de
    nop
    inc b
    jp Jump_000_1603


    ret nz

    nop
    ld e, l
    rra
    ld [hl+], a
    db $10
    call $b4ff
    jr nz, jr_025_77ff

    or l
    add b
    nop
    ld [$1113], a
    ld b, a
    inc b

Jump_025_77ff:
jr_025_77ff:
    inc bc
    db $db
    ret nz

    ld [de], a
    adc a
    rst $38
    or a
    xor [hl]
    and b
    inc b
    adc l
    rst $38
    cp h
    ldh [$ff09], a
    cp [hl]
    inc b
    inc de
    ld [hl], e
    ld a, [hl+]
    and b
    ld a, [bc]
    ld sp, $1320
    ld [hl], c
    inc b

jr_025_781a:
    inc d
    dec de
    ret nz

    ld de, $0021
    ld d, l
    ld l, h
    inc b
    dec bc
    ld b, a
    inc b
    dec bc
    rst $30
    ret nz

    ld d, $83
    jr nz, jr_025_7839

    ld [hl], l
    xor $e4
    dec d
    xor $04
    rla
    ld h, c
    rst $38
    xor d
    ld [hl+], a
    nop

jr_025_7839:
    ld [hl], c
    ld l, d
    rrca
    dec bc
    dec c
    dec bc
    inc b
    ld a, [bc]
    db $f4
    rst $38
    push bc
    ld b, b
    ld [de], a
    ld d, l
    push bc
    inc b
    dec de
    ld d, [hl]
    jr nz, jr_025_7858

    db $dd
    jr nz, jr_025_7850

jr_025_7850:
    sbc $c0
    inc e
    dec h
    rst $30
    ld h, b
    ld b, $63

jr_025_7858:
    ld b, b
    ld a, [bc]
    ld hl, $7b00
    ld [$6312], sp
    ld [de], a
    xor d
    inc bc
    ld c, $ac
    nop
    inc e
    cp e
    jr nz, jr_025_786a

jr_025_786a:
    cp h
    inc b
    rra
    and $53
    rst $38
    ld e, l
    ld [hl+], a
    nop
    ld bc, $df20
    jr nz, jr_025_7894

    ld e, a
    ld h, b
    inc e
    ld a, [hl-]
    ld hl, $5700
    inc b
    rra
    ld a, d
    rst $38
    ld c, c
    ld [hl+], a
    dec c
    ld bc, $aa18
    ld sp, $9c22
    nop
    add hl, de
    adc h
    add b
    jr nz, jr_025_781a

    inc b
    inc hl

jr_025_7894:
    ld h, e
    jp nc, Jump_000_1f40

    rst $20
    ldh [rTMA], a
    ld bc, $9f0b
    add b
    ld hl, $ff7f
    ld d, a
    sbc d
    rst $38
    ld [$0ce0], a
    sbc e
    ret nz

    dec h
    xor $e0
    ld c, $f5
    ld a, [hl+]
    ldh [rP1], a
    and $20
    ld bc, $ff2a
    rst $38
    db $fc
    cp $11
    nop
    call z, $b4fc
    db $fc
    add h
    db $fc
    cp h
    cp d
    add b
    nop
    db $fc
    and d
    inc e
    ld l, h
    rst $38
    dec bc
    dec b
    inc de
    cp $fe
    ld de, $e600
    cp $5a
    cp $42
    cp $5e
    ld [de], a
    add b
    nop
    cp $02
    daa
    pop hl
    inc d
    inc c
    ld b, d
    dec d
    dec b
    dec h
    ld hl, $c425
    ld h, d
    nop
    inc b
    inc b
    rrca
    ret nz

    ld d, $03
    rla
    ld sp, $c32c
    rst $38
    xor c
    ld d, l
    inc h
    nop
    inc de
    dec l
    ld c, $00
    ld bc, $4054
    ld bc, $fe56
    inc b
    ld b, $6a
    cp $a6
    cp $2e
    cp $ee
    rst $38
    cp $6e
    cp $fe
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld d, b
    jr nz, jr_025_7919

jr_025_7919:
    ld de, $6200
    nop
    nop
    ld sp, $e0df
    rla
    ld [hl], $20
    add hl, hl
    ld a, l
    sub $02
    add hl, hl
    rst $38
    rst $38
    xor a
    rst $38
    sub [hl]
    nop
    add hl, hl
    ld sp, hl
    sub h
    add b
    add hl, hl
    dec b
    rra
    ld l, e
    rst $38
    and a
    rst $38
    cpl
    cp d
    and b
    jr z, jr_025_79ae

    ret nz

    inc sp
    cp e
    rst $38
    sub e
    jr nz, jr_025_7946

jr_025_7946:
    xor e
    inc h
    jr nz, jr_025_794a

jr_025_794a:
    ld hl, $ff15
    add b
    inc sp
    pop bc
    inc sp
    ld l, l
    ret nz

    rra
    ld b, c

jr_025_7955:
    jr z, jr_025_7955

    inc de
    dec [hl]
    ld h, [hl]
    rst $38
    ld e, d
    rst $38
    jp nz, Jump_025_5eff

    halt
    add b
    nop
    rst $38
    ldh [rNR11], a
    nop
    and b
    ldh [$ff60], a
    add d
    nop
    and h
    ret nc

    nop
    inc b
    dec [hl]
    ld a, e
    ret nz

    ld a, [de]
    rlca
    dec [hl]
    db $dd
    inc b
    inc c
    db $eb
    db $e4
    ld [$2127], sp
    add hl, hl
    adc [hl]
    ld [bc], a
    ld b, $21
    ld b, $ad
    rst $38
    dec l
    ld a, $a2
    ld b, $ff
    rst $38
    add a
    rst $38
    cp a
    add b
    jr z, @+$0f

    add hl, hl
    rst $30
    xor l
    rst $38
    ld hl, $32a0
    ld [hl], e
    rst $38
    rst $38
    ld hl, sp-$23
    add sp, $22
    nop
    adc b
    ld hl, sp+$68
    jr nz, jr_025_79a6

jr_025_79a6:
    adc b
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld h, [hl]
    ld a, a
    ld e, d

jr_025_79ae:
    ld a, a
    ld e, [hl]
    ld [hl+], a
    nop
    ld d, l
    ld e, d
    ret nz

    nop
    ld a, a
    ld [hl+], a
    inc hl
    cp [hl]
    nop
    inc de
    push de
    jr nz, jr_025_79bf

jr_025_79bf:
    ld d, l
    sub $02
    jr nz, @-$1f

    nop
    dec h
    push de
    ld b, b
    jr z, @-$29

    ld bc, $d413
    inc b
    ld e, $07
    rlca
    ld [hl], a
    ld h, b
    scf
    ld d, [hl]
    ld b, b
    ld b, c
    ld h, $ff
    rst $10
    dec h
    rst $38
    halt
    ld b, $27
    or [hl]
    jr nz, jr_025_79f5

    or [hl]
    rst $38
    ld a, l
    dec sp
    inc b
    ld b, h
    dec [hl]
    rst $38
    db $d3
    rst $38
    rla
    ldh [$ff2e], a
    push de
    scf
    ret nz

    ld b, l
    rst $08
    nop

jr_025_79f5:
    inc sp
    cp [hl]
    ld b, d
    ld a, [bc]
    or l
    rst $38
    or c
    adc $0a
    dec b
    ld b, c
    inc c
    ld c, $1d
    ld bc, $2a00
    nop
    ld bc, $00aa
    ccf
    ld c, a
    jr nz, jr_025_7a0e

jr_025_7a0e:
    xor a
    ld h, b
    jr @-$13

    ld [bc], a

jr_025_7a13:
    ld de, $2a1f
    ld [bc], a
    inc hl
    dec de
    ld [hl+], a
    inc de
    ld a, h

jr_025_7a1c:
    ld [bc], a
    ld b, c
    db $ed
    nop
    ld b, c
    inc bc
    ccf
    ld d, c
    push af
    ld b, $43
    inc bc
    jr c, jr_025_7a2a

jr_025_7a2a:
    jr z, jr_025_7a1c

    inc de
    nop
    ld [hl], b
    inc h
    nop
    ld e, l
    ldh a, [rP1]
    ld c, h
    ld l, d
    rst $38
    ld a, c
    nop
    ld c, h
    jp hl


    inc b
    ld a, [hl+]
    adc $21
    ld b, a
    ld d, a
    rst $38
    ld c, l
    jr nz, jr_025_7a75

    ld hl, rWave_4
    rst $38
    sub l
    ei
    jr nz, jr_025_7a4d

jr_025_7a4d:
    ld a, [de]
    and b
    jr c, jr_025_7aba

    ldh [rWave_8], a
    ld bc, $bf39
    xor d
    nop
    ld d, $b3
    ld b, b
    ld c, c
    and c
    add b
    jr nz, jr_025_7a13

    inc b
    dec b
    ld d, b
    ld a, e
    ldh a, [rWave_0]
    dec b
    dec b
    ccf
    inc sp
    ccf
    dec l
    ld [hl+], a
    ld c, l
    sub l
    cpl
    add b
    nop
    inc sp
    ld [bc], a
    ld c, l

jr_025_7a75:
    rst $38
    ldh [rHDMA1], a
    pop bc
    inc bc
    ld l, d
    cp e
    rst $38
    sbc l
    ld [bc], a
    add hl, sp
    ldh a, [c]
    rst $38
    or d
    ldh [c], a
    ld b, h
    or a
    inc h
    ld bc, $c04b
    ld sp, $007f
    ld c, b
    ld bc, $5e53
    ld [bc], a
    dec a
    ld bc, $5737
    sbc $ff
    dec d
    ld [bc], a
    jr jr_025_7ab2

    ld [bc], a
    ld e, b
    rst $18
    add b
    ld b, h
    ldh [c], a
    pop hl
    daa
    sub $01
    dec hl
    ld c, $33
    ld bc, $6a10
    rst $38
    add hl, de
    xor d
    ld [hl+], a
    ld b, [hl]
    dec de

jr_025_7ab2:
    inc b
    ld e, e
    or [hl]
    nop
    ld d, e
    or [hl]
    add b
    ld c, c

jr_025_7aba:
    call z, $044e
    ld d, d
    dec hl
    rst $38
    push hl
    ld b, d
    ld [hl+], a
    ld bc, $1f28
    add b
    ld e, d
    ld b, l
    ld l, a
    jr nz, jr_025_7ad9

    ld a, d
    ld h, b
    inc a
    nop
    ld b, c
    inc b
    ld [bc], a
    db $eb
    ld b, b
    ld e, e
    adc c
    db $eb
    add b

jr_025_7ad9:
    ld [bc], a
    inc de
    ld e, a
    sbc e
    ld [bc], a
    dec a
    ld [bc], a
    ld d, [hl]
    db $ed
    ld a, c
    rst $38
    add l
    pop af
    ret nz

    ld c, b
    or $60
    nop
    add c
    ld b, l
    ld bc, HeaderMaskROMVersion
    dec c
    ldh a, [c]
    ld [bc], a
    and b
    ld d, $f5
    ld b, d
    ld b, [hl]
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    ld [$0040], sp
    inc b
    ld e, e
    ldh a, [$fff1]
    ld e, $00
    ldh a, [c]
    xor a
    jr jr_025_7b0b

jr_025_7b0b:
    or $d9
    nop
    ld [bc], a
    sub e
    ld bc, $0ff7
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld h, b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, l
    ld [bc], a
    di
    db $f4
    ld e, $00
    ld bc, $09f5
    inc b
    rrca
    ld a, [de]
    rrca
    ld a, [de]
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld a, [bc]
    dec c
    ld a, [bc]
    rrca
    inc b
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec c
    ld [bc], a
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    rst $10
    call nc, $e3fd
    ld [hl], a
    rrca
    or a
    ld h, a
    rst $30
    ld l, a
    xor l
    xor l
    ld a, [$7ffa]
    ld b, b
    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $08
    rst $28
    rst $18
    cp a
    rst $18
    xor l
    xor l
    ld a, [$fffa]
    inc bc
    rst $38
    ld hl, sp-$01
    ei
    rst $30
    di
    push de
    ei
    db $fd
    ei
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $16
    ld sp, hl
    pop bc
    rst $38
    pop af
    rst $28
    and $ef
    or $bf
    cpl
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $10
    ld h, a
    or [hl]
    cpl
    or a
    ld l, a
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    rst $10
    di
    push de
    ei
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    sub [hl]
    ei
    db $fd
    db $f4
    db $fd
    or $ff
    or $ed
    and $ad
    db $f4
    db $fd
    or $bf

jr_025_7c07:
    or $eb

jr_025_7c09:
    or $d9
    ld l, a
    jp c, $f96f

    ld l, a
    db $d3
    ld h, a
    or l
    cpl
    cp c
    ld l, a
    cp d
    ld l, a
    sub d
    ld l, a
    db $eb
    rst $18
    rst $20
    rst $18
    push hl
    rst $08
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_025_7c07

    jr z, jr_025_7c09

    ld d, a
    ei
    ld d, [hl]
    ei
    ld d, l
    di
    inc d
    ei
    inc d
    ei
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    ld l, a
    or $ed
    or $6f
    or $cf
    and $49

jr_025_7c43:
    db $f4
    ld e, c
    or $1b
    or $8f
    or $d0
    ld l, a
    sub d
    ld h, a
    sub b
    cpl
    sub a
    ld l, b
    cp b
    ld b, a
    ret nz

    ccf
    ldh [$ffdf], a
    ld a, a
    ld h, b
    ld h, d
    rst $08
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_025_7c43

    ld h, b
    rst $18
    jr nc, @-$0f

    rst $38
    nop
    ld h, $f3
    inc b
    ei
    db $fc

jr_025_7c6f:
    inc bc
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    jr jr_025_7c6f

    rst $38
    nop
    adc e
    or $09
    and $09
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    db $fc
    ld c, $fa
    db $fd
    dec b
    xor l
    xor l
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    cp $c6
    cp l
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    rst $28
    rst $20
    xor e
    rst $30
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    cp [hl]
    sbc e
    db $f4
    reti


    ld l, l
    ld c, e
    xor $db
    xor $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$bdf7], sp
    reti


    ld a, $9a
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    ld l, $da
    dec h
    sbc c
    and h
    adc e
    push hl
    jp c, Jump_025_516e

    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_025_7d85

    ret nc

jr_025_7d57:
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    rst $28
    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, jr_025_7d57

    rst $38

jr_025_7d69:
    nop
    ld hl, sp+$07
    rrca

jr_025_7d6d:
    ldh a, [rNR23]

jr_025_7d6f:
    rst $30
    jr jr_025_7d69

    jr @-$07

    jr jr_025_7d6d

    jr jr_025_7d6f

    rst $38
    nop
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    add hl, de
    pop af
    rra

jr_025_7d85:
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    nop
    inc b
    cp c
    ld bc, $001f
    dec l
    nop
    inc bc
    inc b
    dec b
    ld d, e
    ld bc, $fb0e
    rrca
    db $10
    ld l, [hl]
    ld bc, $0706
    ld [$0a09], sp
    rst $38
    dec bc
    inc c
    dec c
    ld [bc], a
    ld de, $1312
    inc d
    sbc a
    dec d
    ld d, $17
    jr @+$04

    ld de, $6600
    ld bc, $8702
    ld a, [de]
    add hl, de
    ld a, [de]
    ld de, $6200
    nop
    cp l
    nop
    or c
    ld bc, $871e
    dec de
    dec e
    ld e, $20
    nop
    ld h, d
    nop
    cp l
    nop
    or c
    ld bc, $8720
    inc e
    rra
    jr nz, jr_025_7df5

    nop
    ld h, d
    nop
    cp l
    nop
    or c
    ld bc, $1f21
    ld [hl+], a
    inc hl
    inc h
    inc h
    inc h
    ld h, d
    nop
    cp l
    nop
    or d
    ld bc, $253f
    ld h, $27
    jr z, jr_025_7e17

    jr z, jr_025_7e53

    nop
    cp l
    nop
    ld [bc], a

jr_025_7df5:
    or d
    ld bc, $1f29
    nop
    ld e, d
    nop
    cpl
    inc de
    rra
    nop
    rra
    nop
    rra
    nop
    jr c, jr_025_7e25

    nop
    rra
    nop
    rra
    nop
    nop
    nop
    ld a, [hl+]
    rra
    nop
    ld e, d
    nop
    add c
    dec hl
    rra
    nop
    rra

jr_025_7e17:
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    jp nc, $2c00

    nop
    rra
    nop
    ld e, d

jr_025_7e25:
    nop
    cpl
    dec bc
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

jr_025_7e53:
    nop
    nop
    rra
    nop
    rra
    nop
    dec e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
