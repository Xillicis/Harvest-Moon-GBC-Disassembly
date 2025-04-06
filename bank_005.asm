; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    dec b
    push hl
    push af
    ld l, $0b
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    call Call_005_483e
    xor a
    ld [$c7a0], a
    ld [$c780], a
    ld [$c820], a
    ld [$b88d], a
    ld [$b88c], a
    ld a, $01
    ld [$cb81], a
    call Call_000_0f0f
    call Call_000_228a
    call Call_000_2299
    call Call_000_323d
    ld hl, $717e
    ld c, $05
    ld de, $8800
    call Call_000_31a0
    ld hl, $6acc
    ld c, $05
    ld de, $9000
    call Call_000_31a0
    ld hl, $75ab
    ld c, $05
    ld de, $8000
    call Call_000_31a0
    ld hl, $69ed
    ld c, $05
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
    call $4514
    call Call_000_123d
    call Call_005_44a2
    call Call_005_45b6
    call $4514
    ld a, $00
    call Call_000_1658
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
    call Call_005_40e2
    call Call_000_2d67
    call Call_000_36f4
    call Call_005_4355
    ret


Call_005_40e2:
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

    call Call_005_43bc
    call Call_000_0e54
    call Call_005_413b
    ldh a, [$ff8a]
    and $02
    jr z, jr_005_410a

    call Call_005_43b3
    ret


jr_005_410a:
    ldh a, [$ff8b]
    and $08
    jr z, jr_005_4114

    call Call_000_1923
    ret


jr_005_4114:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_005_438f

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_005_4398

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_005_43a1

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_005_43aa

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_1658
    ret


Call_005_413b:
    ldh a, [$ff8b]
    cp $01
    ret nz

    ld a, [$cb34]
    and $01
    jp z, Jump_005_42a5

    ld a, [wRightOrUpSideFacingTileID]
    or a
    jp z, Jump_005_42a5

    cp $80
    jp z, Jump_005_4340

    push af
    call $446b
    pop af
    ld hl, $b8a3
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
    ld de, $461d
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

jr_005_4185:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4185

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

jr_005_419a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_419a

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
    call Call_000_0a19
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
    jr nz, jr_005_41df

    ld a, $01
    ld [$b907], a
    jp Jump_005_427d


jr_005_41df:
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
    jr z, jr_005_4255

    cp $01
    jr z, jr_005_4226

    ld a, [sInventory]
    cp NO_ITEM
    jr z, jr_005_4216

    ld a, [sInventory+1]
    cp NO_ITEM
    jr nz, jr_005_4216

    ld a, [sInventory+1]
    call Call_005_42af
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_005_427d

jr_005_4216:
    ld a, [sInventory]
    call Call_005_42af
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_005_427d

jr_005_4226:
    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_005_4244

    ld a, [sInventory]
    cp NO_ITEM
    jr nz, jr_005_4244

    ld a, [sInventory]
    call Call_005_42af
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_005_427d

jr_005_4244:
    ld a, [sInventory+1]
    call Call_005_42af
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_005_427d

jr_005_4255:
    ld a, [sInventory]
    cp NO_ITEM
    jr nz, jr_005_426c

    ld a, [sInventory]
    call Call_005_42af
    ld a, b
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_005_427d

jr_005_426c:
    ld a, [sInventory+1]
    call Call_005_42af
    ld a, b
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_005_427d

Jump_005_427d:
jr_005_427d:
    xor a
    ld [$c90e], a
    ld [$cb34], a
    push bc
    ld a, $03
    call Call_000_1658
    pop bc
    ld a, b
    call $16d1
    ld hl, $c62a
    ld a, [$c60a]
    sub $00
    ld [hli], a
    ld a, [$c60b]
    sub $1c
    ld [hli], a
    ld a, $10
    ld [$c912], a
    pop hl
    ret


Jump_005_42a5:
    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    pop hl
    ret


Call_005_42af:
    cp $ff
    ret z

    push bc
    ld c, a
    ld hl, $1b20
    ld b, $00

jr_005_42b9:
    ld a, [hl+]
    cp c
    jr z, jr_005_42c0

    inc b
    jr jr_005_42b9

jr_005_42c0:
    ld a, b
    ldh [$ffa4], a
    push bc
    ld hl, $b8a3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $01
    ld [hl], a
    ld a, b
    cp $1d
    jr z, jr_005_433d

    cp $1e
    jr z, jr_005_433d

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $461d
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
    ldh a, [$ffa4]
    ld b, a
    call Call_005_47ed

jr_005_42f3:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_42f3

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

jr_005_4306:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4306

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
    call Call_000_0a19
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


jr_005_433d:
    pop bc
    pop bc
    ret


Jump_005_4340:
    ld a, $06
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    xor a
    ld [$c90f], a
    ret


Call_005_4355:
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret nz

    ld a, [$c60d]
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


Jump_005_438f:
    ld a, $02
    ld hl, $549d
    call BankSwitchCallHL
    ret


Call_005_4398:
Jump_005_4398:
    ld a, $02
    ld hl, $54dc
    call BankSwitchCallHL
    ret


Jump_005_43a1:
    ld a, $02
    ld hl, $551b
    call BankSwitchCallHL
    ret


Jump_005_43aa:
    ld a, $02
    ld hl, $555a
    call BankSwitchCallHL
    ret


Call_005_43b3:
    ld a, $02
    ld hl, $5599
    call BankSwitchCallHL
    ret


Call_005_43bc:
    ld a, [$c911]
    or a
    ret z

    ld a, [$c90f]
    cp $00
    jr nz, jr_005_43ef

    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_005_43d5

    pop hl
    ret


jr_005_43d5:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ret


jr_005_43ef:
    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_005_442f

    cp $1e
    jr nz, jr_005_4446

    ld hl, $9849

jr_005_4401:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4401

    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld hl, $9869

jr_005_440e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_440e

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

jr_005_4423:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4423

    ld a, $00
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


jr_005_442f:
    ld a, $08
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cc79], a
    ld [$cc7b], a
    ld a, [$cb51]
    ld [$cbe8], a

jr_005_4446:
    call Call_005_4398
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
    jr jr_005_446c

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

jr_005_446c:
    ld c, e
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


Call_005_44a2:
    ld hl, $9c00
    ld de, $44b0
    ld b, $14
    ld c, $05
    call Call_000_0a62
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
    jr z, jr_005_4532

    cp $02
    jr z, jr_005_4544

    ld hl, $4556
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_005_4532:
    ld hl, $4576
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    xor a
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_005_4544:
    ld hl, $4596
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

Call_005_45b6:
    ld b, $00
    ld hl, $b8a3

jr_005_45bb:
    ld a, [hl+]
    cp $00
    jr z, jr_005_4616

    ld a, b
    push hl
    ld de, $461d
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
    call Call_005_47ed
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
    call Call_000_0a19
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

jr_005_4616:
    inc b
    ld a, b
    cp $1d
    jr nz, jr_005_45bb

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
    call nc, Call_000_0300
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

Call_005_47ed:
    push de
    push bc
    push af
    push hl
    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $4821
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    push hl
    ld c, a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0da9
    ld a, c
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    pop hl
    pop af
    pop bc
    pop de
    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
    dec b
    inc b
    inc b
    inc bc
    inc bc
    inc b
    ld b, $03
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    ld b, $02
    dec b
    ld [bc], a

Call_005_483e:
    ld b, $00

jr_005_4840:
    push bc
    ld a, b
    ld de, $461d
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
    call Call_005_47ed
    pop de
    pop bc
    inc b
    ld a, b
    cp $1d
    jr nz, jr_005_4840

    ret


    nop
    nop
    ld e, c
    ld c, c
    nop
    nop
    ld e, e
    ld c, c
    nop
    nop
    ld e, l
    ld c, c
    nop
    nop
    ld e, a
    ld c, c
    nop
    nop
    ld h, c
    ld c, c
    nop
    nop
    ld h, e
    ld c, c
    nop
    nop
    ld h, l
    ld c, c
    nop
    nop
    ld h, a
    ld c, c
    nop
    nop
    ld l, c
    ld c, c
    nop
    nop
    ld l, e
    ld c, c
    nop
    nop
    ld l, l
    ld c, c
    nop
    nop
    ld l, a
    ld c, c
    nop
    nop
    ld [hl], c
    ld c, c
    nop
    nop
    ld [hl], e
    ld c, c
    nop
    nop
    ld [hl], l
    ld c, c
    nop
    nop
    ld [hl], a
    ld c, c
    nop
    nop
    ld a, c
    ld c, c
    nop
    nop
    ld a, e
    ld c, c
    nop
    nop
    ld a, l
    ld c, c
    nop
    nop
    ld a, a
    ld c, c
    nop
    nop
    add c
    ld c, c
    nop
    nop
    add e
    ld c, c
    nop
    nop
    add l
    ld c, c
    nop
    nop
    add a
    ld c, c
    nop
    nop
    adc c
    ld c, c
    nop
    nop
    adc e
    ld c, c
    nop
    nop
    adc l
    ld c, c
    nop
    nop
    adc a
    ld c, c
    nop
    nop
    sub c
    ld c, c
    nop
    nop
    sub e
    ld c, c
    nop
    nop
    sub l
    ld c, c
    nop
    nop
    sub a
    ld c, c
    nop
    nop
    dec h
    ld c, a
    nop
    nop
    daa
    ld c, a
    nop
    nop
    add hl, hl
    ld c, a
    nop
    nop
    dec hl
    ld c, a
    nop
    nop
    dec l
    ld c, a
    nop
    nop
    cpl
    ld c, a
    nop
    nop
    ld sp, $004f
    nop
    inc sp
    ld c, a
    nop
    nop
    dec [hl]
    ld c, a
    nop
    nop
    scf
    ld c, a
    nop
    nop
    add hl, sp
    ld c, a
    nop
    nop
    dec sp
    ld c, a
    nop
    nop
    dec a
    ld c, a
    nop
    nop
    ccf
    ld c, a
    nop
    nop
    ld b, c
    ld c, a
    nop
    nop
    ld b, e
    ld c, a
    nop
    nop
    ld b, l
    ld c, a
    nop
    nop
    ld b, a
    ld c, a
    nop
    nop
    ld c, c
    ld c, a
    nop
    nop
    ld c, e
    ld c, a
    nop
    nop
    ld c, l
    ld c, a
    nop
    nop
    ld c, a
    ld c, a
    nop
    nop
    ld d, c
    ld c, a
    nop
    nop
    ld d, e
    ld c, a
    nop
    nop
    ld d, l
    ld c, a
    nop
    nop
    ld d, a
    ld c, a
    nop
    nop
    ld e, c
    ld c, a
    nop
    nop
    ld e, e
    ld c, a
    nop
    nop
    ld e, l
    ld c, a
    sbc c
    ld c, c
    or [hl]
    ld c, c
    bit 1, c
    ldh [rOBP1], a
    dec b
    ld c, d
    ld b, [hl]
    ld c, d
    add a
    ld c, d
    ret z

    ld c, d
    ld bc, $4a4b
    ld c, e
    adc e
    ld c, e
    call z, $0d4b
    ld c, h
    ld c, [hl]
    ld c, h
    ld l, a
    ld c, h
    sub b
    ld c, h
    cp c
    ld c, h
    ld [$1b4c], a
    ld c, l
    dec de
    ld c, l
    ld d, h
    ld c, l
    add l
    ld c, l
    or [hl]
    ld c, l
    rst $30
    ld c, l
    jr nc, jr_005_49d9

    ld h, l
    ld c, [hl]
    sbc [hl]
    ld c, [hl]
    db $d3
    ld c, [hl]
    ld hl, sp+$4e
    dec h
    ld c, a
    dec h
    ld c, a
    dec h
    ld c, a
    db $f4
    inc bc
    ld d, $14
    db $f4
    db $fc
    ld d, $14
    db $f4
    db $f4
    ld d, $14
    db $fc
    db $ed
    inc d
    inc d
    db $fc
    dec b
    ccf
    inc d
    db $fc
    db $fd
    ld a, $14
    db $fc
    push af
    dec a
    inc d
    add b
    db $f4
    rst $38
    ld d, $14
    db $f4
    rst $30
    ld d, $14
    db $fc
    ldh a, [rNR14]
    inc d
    db $fc
    nop
    ld b, c
    inc d
    db $fc
    ld hl, sp+$40
    inc d
    add b
    db $f4
    db $fd
    ld d, $14
    db $f4
    ld a, [$1416]
    db $fc
    di
    inc d
    inc d
    db $fc
    inc bc

jr_005_49d9:
    ld b, e
    inc d
    db $fc
    ei
    ld b, d
    inc d
    add b
    db $f4
    ld [$1416], sp
    db $f4
    nop
    ld d, $14
    db $f4
    ld hl, sp+$16
    inc d
    db $f4
    ldh a, [rNR21]
    inc d
    db $fc
    jp hl


    inc d
    inc d
    db $fc
    add hl, bc
    ld b, a
    inc d
    db $fc
    ld bc, $1446
    db $fc
    ld sp, hl
    ld b, l
    inc d
    db $fc
    pop af
    ld b, h
    inc d
    add b
    db $f4
    inc de
    ld d, $14
    db $f4
    push hl
    ld d, $14
    db $f4
    ld de, $1415
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    pop af
    ld d, $14
    db $f4
    jp hl


    ld d, $14
    db $fc
    add hl, de
    ld e, $14
    db $fc
    ld de, $141d
    db $fc
    add hl, bc
    inc e
    inc d
    db $fc
    ld bc, $141b
    db $fc
    ld sp, hl
    ld a, [de]
    inc d
    db $fc
    pop af
    add hl, de
    inc d
    db $fc
    jp hl


    jr @+$16

    db $fc
    pop hl
    rla
    inc d
    add b
    db $f4
    db $e4
    ld d, $14
    db $f4
    inc de
    ld d, $14
    db $f4
    ld de, $1415
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    pop af
    ld d, $14
    db $f4
    jp hl


    ld d, $14
    db $fc
    add hl, de
    ld e, $14
    db $fc
    ld de, $141d
    db $fc
    add hl, bc
    inc e
    inc d
    db $fc
    ld bc, $141b
    db $fc
    ld sp, hl
    daa
    inc d
    db $fc
    pop af
    ld h, $14
    db $fc
    jp hl


    dec h
    inc d
    db $fc
    pop hl
    inc h
    inc d
    add b
    db $f4
    dec d
    ld d, $14
    db $f4
    inc de
    dec d
    inc d
    db $f4
    dec bc
    ld d, $14
    db $f4
    inc bc
    ld d, $14
    db $f4
    ei
    ld d, $14
    db $f4
    di
    ld d, $14
    db $f4
    db $eb
    ld d, $14
    db $f4
    db $e3
    ld d, $14
    db $fc
    dec de
    ld e, $14
    db $fc
    inc de
    dec e
    inc d
    db $fc
    dec bc
    inc e
    inc d
    db $fc
    inc bc
    dec de
    inc d
    db $fc
    ei
    ld [hl-], a
    inc d
    db $fc
    di
    ld sp, $fc14
    db $eb
    jr nc, @+$16

    db $fc
    db $e3
    cpl
    inc d
    add b
    db $f4
    rrca
    ld d, $14
    db $f4
    add sp, $16
    inc d
    db $f4
    dec c
    dec d
    inc d
    db $f4
    dec b
    ld d, $14
    db $f4
    db $fd
    ld d, $14
    db $f4
    push af
    ld d, $14
    db $f4
    db $ed
    ld d, $14
    db $fc
    dec d
    ld e, $14
    db $fc
    dec c
    dec e
    inc d
    db $fc
    dec b
    inc e
    inc d
    db $fc
    db $fd
    dec de
    inc d
    db $fc
    push af
    ld a, [hl+]
    inc d
    db $fc
    db $ed
    add hl, hl
    inc d
    db $fc
    push hl
    jr z, jr_005_4b14

    add b
    db $f4
    jr jr_005_4b1a

    inc d
    db $f4
    ldh [rNR21], a
    inc d
    db $f4
    ld c, $16
    inc d
    db $f4
    ld b, $16
    inc d
    db $f4
    cp $16

jr_005_4b14:
    inc d
    db $f4
    or $16
    inc d
    db $f4

jr_005_4b1a:
    xor $16
    inc d
    db $f4
    and $16
    inc d
    db $f4
    ld d, $15
    inc d
    db $fc
    ld e, $1e
    inc d
    db $fc
    ld d, $1d
    inc d
    db $fc
    ld c, $1c
    inc d
    db $fc
    ld b, $1b
    inc d
    db $fc
    cp $23
    inc d
    db $fc
    or $22
    inc d
    db $fc
    xor $21
    inc d
    db $fc
    and $20
    inc d
    db $fc
    sbc $1f
    inc d
    add b
    db $f4
    dec d
    ld d, $14
    db $f4
    db $e3
    ld d, $14
    db $f4
    db $eb
    ld d, $14
    db $f4
    di
    ld d, $14
    db $f4
    ei
    ld d, $14
    db $f4
    inc bc
    ld d, $14
    db $f4
    dec bc
    ld d, $14
    db $f4
    inc de
    dec d
    inc d
    db $fc
    dec de
    ld e, $14
    db $fc
    inc de
    dec e
    inc d
    db $fc
    dec bc
    inc e
    inc d
    db $fc
    inc bc
    dec de
    inc d
    db $fc
    ei
    ld l, $14
    db $fc
    di
    dec l
    inc d
    db $fc
    db $eb
    inc l
    inc d
    db $fc
    db $e3
    dec hl
    inc d
    add b
    db $f4
    db $e4
    ld d, $14
    db $f4
    inc de
    ld d, $14
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    pop af
    ld d, $14
    db $f4
    jp hl


    ld d, $14
    db $f4
    ld de, $1415
    db $fc
    add hl, de
    ld e, $14
    db $fc
    ld de, $141d
    db $fc
    add hl, bc
    inc e
    inc d
    db $fc
    ld bc, $141b
    db $fc
    pop hl
    jr z, @+$16

    db $fc
    ld sp, hl
    dec [hl]
    inc d
    db $fc
    pop af
    inc [hl]
    inc d
    db $fc
    jp hl


    inc sp
    inc d
    add b
    db $f4
    inc de
    ld d, $14
    db $f4
    db $e4
    ld d, $14
    db $f4
    jp hl


    ld d, $14
    db $f4
    pop af
    ld d, $14
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    ld de, $1415
    db $fc
    add hl, de
    ld e, $14
    db $fc
    ld de, $141d
    db $fc
    add hl, bc
    inc e
    inc d
    db $fc
    ld bc, $141b
    db $fc
    ld sp, hl
    add hl, sp
    inc d
    db $fc
    pop af
    jr c, @+$16

    db $fc
    jp hl


    scf
    inc d
    db $fc
    pop hl
    ld [hl], $14
    add b
    db $f4
    ld de, $1416
    db $f4
    and $16
    inc d
    db $f4
    rlca
    ld d, $14
    db $f4
    rst $38
    ld d, $14
    db $f4
    rst $30
    ld d, $14
    db $f4
    rst $28
    ld d, $14
    db $f4
    rst $20
    ld d, $14
    db $f4
    rrca
    dec d
    inc d
    db $fc
    rst $18
    inc d
    inc d
    db $fc
    rla
    ld e, $14
    db $fc
    rrca
    dec e
    inc d
    db $fc
    rlca
    inc e
    inc d
    db $fc
    rst $38
    dec de
    inc d
    db $fc
    rst $30
    inc a
    inc d
    db $fc
    rst $28
    dec sp
    inc d
    db $fc
    rst $20
    ld a, [hl-]
    inc d
    add b
    db $f4
    dec b
    ld d, $14
    db $f4
    ld [bc], a
    ld d, $14
    db $f4
    ld a, [$1416]
    db $f4
    ldh a, [c]
    ld d, $14
    db $fc
    ld a, [bc]
    ld c, a
    inc d
    db $fc
    ld [bc], a
    ld c, [hl]
    inc d
    db $fc
    ld a, [$144d]
    db $fc
    ldh a, [c]
    ld c, h
    inc d
    add b
    db $f4
    di
    ld d, $14
    db $f4
    inc b
    ld d, $14
    db $f4
    db $fc
    ld d, $14
    db $f4
    db $f4
    ld d, $14
    db $fc
    db $ec
    inc d
    inc d
    db $fc
    inc b
    ld [hl], l
    inc d
    db $fc
    db $fc
    ld [hl], h
    inc d
    db $fc
    db $f4
    ld [hl], e
    inc d
    add b
    db $f4
    rst $28
    ld d, $14
    db $f4
    ldh a, [rNR21]
    inc d
    db $f4
    ld hl, sp+$16
    inc d
    db $f4
    nop
    ld d, $14
    db $f4
    ld [$1416], sp
    db $fc
    add sp, $14
    inc d
    db $fc
    ld [$1453], sp
    db $fc
    nop
    ld d, d
    inc d
    db $fc
    ld hl, sp+$51
    inc d
    db $fc
    ldh a, [$ff50]
    inc d
    add b
    db $f4
    db $eb
    ld d, $14
    db $f4
    inc c
    ld d, $14
    db $f4
    inc b
    ld d, $14
    db $f4
    db $fc
    ld d, $14
    db $f4
    db $f4
    ld d, $14
    db $f4
    db $ec
    ld d, $14
    db $fc
    db $e4
    inc d
    inc d
    db $fc
    inc c
    ld e, a
    inc d
    db $fc
    inc b
    ld e, [hl]
    inc d
    db $fc
    db $fc
    ld e, l
    inc d
    db $fc
    db $f4
    ld e, h
    inc d
    db $fc
    db $ec
    ld e, e
    inc d
    add b
    db $f4
    ld a, [bc]
    ld d, $14
    db $f4
    db $ed
    ld d, $14
    db $f4
    ld b, $16
    inc d
    db $f4
    cp $16
    inc d
    db $f4
    or $16
    inc d
    db $f4
    xor $16
    inc d
    db $fc
    and $14
    inc d
    db $fc
    ld c, $6b
    inc d
    db $fc
    ld b, $6a
    inc d
    db $fc
    cp $69
    inc d
    db $fc
    or $68
    inc d
    db $fc
    xor $67
    inc d
    add b
    db $f4
    db $10
    ld d, $14
    db $f4
    add sp, $16
    inc d
    db $f4
    ld [$1416], a
    db $f4
    ldh a, [c]
    ld d, $14
    db $f4
    ld a, [$1416]
    db $f4
    ld [bc], a
    ld d, $14
    db $f4
    ld a, [bc]
    ld d, $14
    db $fc
    ld [de], a
    ccf
    inc d
    db $fc
    ld a, [bc]
    ld a, $14
    db $fc
    ld [bc], a
    dec a
    inc d
    db $fc
    ld a, [$144b]
    db $fc
    ldh a, [c]
    ld c, d
    inc d
    db $fc
    ld [$1449], a
    db $fc
    ldh [c], a
    ld c, b
    inc d
    add b
    db $f4
    db $eb
    ld d, $14
    db $f4
    inc c
    ld d, $14
    db $f4
    dec b
    ld d, $14
    db $f4
    db $fd
    ld d, $14
    db $f4
    push af
    ld d, $14
    db $f4
    db $ed
    ld d, $14
    db $fc
    dec c
    ld b, c
    inc d
    db $fc
    dec b
    ld b, b
    inc d
    db $fc
    db $fd
    ld c, e
    inc d
    db $fc
    push af
    ld c, d
    inc d
    db $fc
    db $ed
    ld c, c
    inc d
    db $fc
    push hl
    ld c, b
    inc d
    add b
    db $f4
    xor $16
    inc d
    db $f4
    ld a, [bc]
    ld d, $14
    db $f4
    ld [$1416], sp
    db $f4
    nop
    ld d, $14
    db $f4
    ld hl, sp+$16
    inc d
    db $f4
    ldh a, [rNR21]
    inc d
    db $fc
    db $10
    ld b, e
    inc d
    db $fc
    ld [$1442], sp
    db $fc
    nop
    ld c, e
    inc d
    db $fc
    ld hl, sp+$4a
    inc d
    db $fc
    ldh a, [rOBP1]
    inc d
    db $fc
    add sp, $48
    inc d
    add b
    db $f4
    inc d
    ld d, $14
    db $f4
    db $e3
    ld d, $14
    db $f4
    push hl
    ld d, $14
    db $f4
    db $ed
    ld d, $14
    db $f4
    push af
    ld d, $14
    db $f4
    db $fd
    ld d, $14
    db $f4
    dec b
    ld d, $14
    db $f4
    dec c
    ld d, $14
    db $fc
    dec d
    ld b, a
    inc d
    db $fc
    dec c
    ld b, [hl]
    inc d
    db $fc
    dec b
    ld b, l
    inc d
    db $fc
    db $fd
    ld b, h
    inc d
    db $fc
    push af
    ld c, e
    inc d
    db $fc
    db $ed
    ld c, d
    inc d
    db $fc
    push hl
    ld c, c
    inc d
    db $fc
    db $dd
    ld c, b
    inc d
    add b
    db $f4
    ld [de], a
    ld d, $14
    db $f4
    and $16
    inc d
    db $f4
    inc c
    ld d, $14
    db $f4
    inc b
    ld d, $14
    db $f4
    db $fc
    ld d, $14
    db $f4
    db $f4
    ld d, $14
    db $f4
    db $ec
    ld d, $14
    db $fc
    inc d
    ld [hl], d
    inc d
    db $fc
    inc c
    ld [hl], c
    inc d
    db $fc
    inc b
    ld [hl], b
    inc d
    db $fc
    db $fc
    ld l, a
    inc d
    db $fc
    db $f4
    ld l, [hl]
    inc d
    db $fc
    db $ec
    ld l, l
    inc d
    db $fc
    db $e4
    ld l, h
    inc d
    add b
    db $f4
    db $ec
    ld d, $14
    db $f4
    ld a, [bc]
    ld d, $14
    db $f4
    xor $16
    inc d
    db $f4
    or $16
    inc d
    db $f4
    ld b, $16
    inc d
    db $f4
    cp $16
    inc d
    db $fc
    push hl
    inc d
    inc d
    db $fc
    and $61
    inc d
    db $fc
    ld c, $66
    inc d
    db $fc
    ld b, $65
    inc d
    db $fc
    cp $64
    inc d
    db $fc
    or $63
    inc d
    db $fc
    xor $62
    inc d
    add b
    db $f4
    rrca
    ld d, $14
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    pop af
    ld d, $14
    db $f4
    jp hl


    ld d, $14
    db $fc
    ld de, $147f
    db $fc
    add hl, bc
    ld a, [hl]
    inc d
    db $fc
    ld bc, $147d
    db $fc
    ld sp, hl
    ld a, h
    inc d
    db $fc
    pop af
    ld a, e
    inc d
    db $fc
    jp hl


    ld a, d
    inc d
    db $fc
    pop af
    ld a, c
    inc d
    db $fc
    jp hl


    ld a, b
    inc d
    add b
    db $fc
    ld [de], a
    ld a, [$fc14]
    ld a, [bc]
    ld sp, hl
    inc d
    db $fc
    ld [bc], a
    ld hl, sp+$14
    db $fc
    ld a, [$14f7]
    db $fc
    ldh a, [c]
    or $14
    db $fc
    ld [$14f5], a
    db $fc
    ldh [c], a
    inc d
    inc d
    db $f4
    jp hl


    ld d, $14
    db $f4
    pop af
    ld d, $14
    db $f4
    ld sp, hl
    ld d, $14
    db $f4
    ld bc, $1416
    db $f4
    add hl, bc
    ld d, $14
    db $f4
    rrca
    ld d, $14
    add b
    db $fc
    dec bc
    ld h, b
    inc d
    db $fc
    inc bc
    ld a, b
    inc d
    db $fc
    ei
    ld [hl], a
    inc d
    db $fc
    di
    halt
    inc d
    db $f4
    dec b
    ld d, $14
    db $f4
    ld [bc], a
    ld d, $14
    db $f4
    ld a, [$1416]
    db $f4
    ldh a, [c]
    ld d, $14
    db $fc
    db $eb
    inc d
    inc d
    add b
    db $fc
    ld c, $f4
    inc d
    db $fc
    ld b, $f3
    inc d
    db $fc
    cp $f2
    inc d
    db $fc
    or $f1
    inc d
    db $fc
    xor $f0
    inc d
    db $f4
    dec bc
    ld d, $14
    db $f4
    dec b
    ld d, $14
    db $f4
    db $fd
    ld d, $14
    db $f4
    push af
    ld d, $14
    db $f4
    db $ed
    ld d, $14
    db $fc
    and $14
    inc d
    add b
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ld a, b
    ld c, a
    adc c
    ld c, a
    db $fc
    ld [de], a
    cp $14
    db $fc
    ld a, [bc]
    db $fd
    inc d
    db $fc
    ld [bc], a
    db $fc
    inc d
    db $fc
    ld a, [$14fb]
    db $fc
    ldh a, [c]
    ld a, [$fc14]
    ld [$14f9], a
    add b
    db $fc
    dec bc
    ld hl, sp+$14
    db $fc
    inc bc
    rst $30
    inc d
    db $fc
    ei
    or $14
    db $fc
    di
    push af
    inc d
    add b
    db $fc
    ld c, $f4
    inc d
    db $fc
    ld b, $f3
    inc d
    db $fc
    cp $f2
    inc d
    db $fc
    or $f1
    inc d
    db $fc
    xor $f0
    inc d
    add b
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
    ld e, $50
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
    jr jr_005_5094

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
    jr z, jr_005_5079

    cp $07
    jr z, jr_005_5083

    ret


jr_005_5079:
    ld a, $35
    call Call_000_25ce
    ld hl, $5021
    jr jr_005_5086

jr_005_5083:
    ld hl, $5041

jr_005_5086:
    ld d, h
    ld e, l
    ld c, $10

jr_005_508a:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_005_5094:
    ld bc, $9000
    add hl, bc
    ld a, h
    cp $98
    jr c, jr_005_50a1

    ld bc, $f000
    add hl, bc

jr_005_50a1:
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
    ld de, $7a5e
    add hl, de
    ld e, c
    ld d, b
    ld b, $08

jr_005_50b5:
    call Call_000_0da9
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_005_50b5

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_005_508a

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
    call Call_000_0a19
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
    ld [wLeftOrDownSideFacingTile], a
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
    ld [$cb31], a
    ld a, [hli]
    ld [wRightOrUpSideFacingTile], a
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
    call Call_000_0a19
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
    ld [wLeftOrDownSideFacingTile], a
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
    ld [$cb31], a
    ld a, [hli]
    ld [wRightOrUpSideFacingTile], a
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
    call nz, Call_005_5296
    ld a, [$cb4a]
    or a
    call nz, Call_005_5296
    ld a, [$cb8b]
    or a
    call nz, Call_005_52d0
    ret


Call_005_5296:
    ld a, [wLeftOrDownSideFacingTile]
    and $80
    ret z

    ld a, [$cb2f]
    cp $66
    jr nz, jr_005_52a9

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52a9:
    cp $83
    jr nz, jr_005_52b3

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52b3:
    cp $a7
    jr nz, jr_005_52bd

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52bd:
    cp $b6
    jr nz, jr_005_52c7

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52c7:
    cp $c7
    ret nz

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


Call_005_52d0:
    ld a, [wLeftOrDownSideFacingTile]
    and $80
    ret z

    ld a, [$cb2f]
    cp $83
    jr nz, jr_005_52e3

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52e3:
    cp $a7
    jr nz, jr_005_52ed

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
    ret


jr_005_52ed:
    cp $b6
    ret nz

    ld a, $01
    ld [wLeftOrDownSideFacingTile], a
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
    call Call_000_0a19
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
    ld [wLeftOrDownSideFacingTile], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_0a19
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
    ld a, [hli]
    ld [$cb31], a
    ld a, [hli]
    ld [wRightOrUpSideFacingTile], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_0a19
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
    call Call_000_0a19
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
    ld [wLeftOrDownSideFacingTile], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_0a19
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
    ld [$cb31], a
    ld a, [hl+]
    ld [wRightOrUpSideFacingTile], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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


    ld a, [$c60d]
    rst $00
    ld l, h
    ld e, e
    nop
    ld e, h
    sub [hl]
    ld e, h
    inc l
    ld e, l
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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


    ld a, [$c60d]
    rst $00
    push de
    ld e, l
    dec hl
    ld e, [hl]
    add h
    ld e, [hl]
    db $dd
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    call Call_000_0a19
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
    jp nz, Jump_005_610a

    ld a, [$c760]
    or a
    ret z

    ld a, [$c770]
    or a
    jp z, Jump_005_6033

    cp $02
    jp z, Jump_005_6058

    cp $03
    jp z, Jump_005_60e4

    cp $04
    jp z, Jump_005_6101

    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_005_6105

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
    call Call_005_69a7
    inc hl
    inc hl
    ld a, [hl+]
    cp $0e
    jp z, Jump_005_6105

    ld a, [hl-]
    cp $81
    jr nz, jr_005_5fa5

    ld a, [hl]
    cp $39
    jp z, Jump_005_6105

    cp $3a
    jp z, Jump_005_6105

    cp $3b
    jp z, Jump_005_6105

    cp $3c
    jp z, Jump_005_6105

    cp $46
    jp nc, Jump_005_6105

jr_005_5fa5:
    ld hl, $c766
    ld a, [$c76c]
    ld b, $00
    ld c, a
    and $80
    jr nz, jr_005_5fb4

    jr jr_005_5fb6

jr_005_5fb4:
    ld b, $ff

jr_005_5fb6:
    call Call_000_0cce

Jump_005_5fb9:
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
    jr nz, jr_005_5fe4

    ld a, c
    cp $f0
    jr c, jr_005_5fe4

    jr jr_005_5ff2

jr_005_5fe4:
    ld a, b
    or a
    jr nz, jr_005_5fed

    ld a, c
    cp $e0
    jr c, jr_005_5ff2

jr_005_5fed:
    ld c, $c8
    jp Jump_005_6105


jr_005_5ff2:
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
    jr nz, jr_005_6025

    ld a, c
    cp $f0
    jr c, jr_005_6025

    jr jr_005_602e

jr_005_6025:
    ld a, b
    or a
    jr z, jr_005_602e

    ld c, $c8
    jp Jump_005_6105


jr_005_602e:
    ld a, c
    ld [$c76b], a
    ret


Jump_005_6033:
    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_005_6105

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


Jump_005_6058:
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
    jp z, Jump_005_6105

    cp $b0
    jr nc, jr_005_6080

    cp $80
    jr nc, jr_005_60af

    cp $50
    jr nc, jr_005_6095

    jr jr_005_60c9

jr_005_6080:
    ld a, [$c0a8]
    and $0f
    jp nz, Jump_005_5fb9

    ld hl, $c766
    ld bc, $ffff
    call Call_000_0cce
    jp Jump_005_5fb9


    ret


jr_005_6095:
    ld a, $17
    call Call_000_15e4
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_005_5fb9

    ld hl, $c766
    ld bc, $0001
    call Call_000_0cce
    jp Jump_005_5fb9


    ret


jr_005_60af:
    ld a, $15
    call Call_000_15e4
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_005_5fb9

    ld hl, $c766
    ld bc, $0001
    call Call_000_0cce
    jp Jump_005_5fb9


    ret


jr_005_60c9:
    ld a, $1a
    call Call_000_15e4
    ld hl, $c766
    ld bc, $0001
    call Call_000_0cce
    ld hl, $c768
    ld bc, $ffff
    call Call_000_0cce
    jp Jump_005_5fb9


    ret


Jump_005_60e4:
    ld a, [$c76c]
    cp $00
    jr z, jr_005_60fd

    ld hl, $c766
    ld bc, $0001
    call Call_000_0cce
    ld hl, $c768
    ld bc, $ffff
    call Call_000_0cce

jr_005_60fd:
    call Call_005_6117
    ret


Jump_005_6101:
    call Call_005_6117
    ret


Jump_005_6105:
    xor a
    ld [$c760], a
    ret


Jump_005_610a:
    ld a, [$cb88]
    dec a
    ld [$cb88], a
    ld a, $c8
    ld [$c76a], a
    ret


Call_005_6117:
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
    jr nz, jr_005_6142

    ld a, c
    cp $f0
    jr c, jr_005_6142

    jr jr_005_614d

jr_005_6142:
    ld a, b
    or a
    jr nz, jr_005_614b

    ld a, c
    cp $e0
    jr c, jr_005_614d

jr_005_614b:
    ld c, $c8

jr_005_614d:
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
    jr nz, jr_005_6180

    ld a, c
    cp $f0
    jr c, jr_005_6180

    jr jr_005_6186

jr_005_6180:
    ld a, b
    or a
    jr z, jr_005_6186

    ld c, $c8

jr_005_6186:
    ld a, c
    ld [$c76b], a
    ret


    ld a, [$c800]
    or a
    ret z

    ld a, [$c810]
    cp $06
    jr nz, jr_005_619c

    call Call_005_66dc
    jr jr_005_61d0

jr_005_619c:
    cp $05
    jr nz, jr_005_61a5

    call Call_005_6686
    jr jr_005_61d0

jr_005_61a5:
    cp $04
    jr nz, jr_005_61ae

    call Call_005_6567
    jr jr_005_61d0

jr_005_61ae:
    cp $00
    jr nz, jr_005_61b7

    call Call_005_6732
    jr jr_005_61d0

jr_005_61b7:
    cp $01
    jr nz, jr_005_61c0

    call Call_005_625b
    jr jr_005_61d0

jr_005_61c0:
    cp $02
    jr nz, jr_005_61c9

    call Call_005_636e
    jr jr_005_61d0

jr_005_61c9:
    cp $03
    jr nz, jr_005_61c9

    call Call_005_63c5

jr_005_61d0:
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
    jr nz, jr_005_61fb

    ld a, c
    cp $f0
    jr c, jr_005_61fb

    jr jr_005_6209

jr_005_61fb:
    ld a, b
    or a
    jr nz, jr_005_6204

    ld a, c
    cp $e0
    jr c, jr_005_6209

jr_005_6204:
    ld c, $c8
    jp Jump_005_624a


jr_005_6209:
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
    jr nz, jr_005_623c

    ld a, c
    cp $f0
    jr c, jr_005_623c

    jr jr_005_6245

jr_005_623c:
    ld a, b
    or a
    jr z, jr_005_6245

    ld c, $c8
    jp Jump_005_624a


jr_005_6245:
    ld a, c
    ld [$c80b], a
    ret


Jump_005_624a:
    ld a, [$c810]
    cp $05
    ret z

    cp $06
    ret z

    xor a
    ld [$c800], a
    ld [$c912], a
    ret


Call_005_625b:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_6269

    call Call_005_6732
    ret


jr_005_6269:
    ld a, [$c813]
    cp $00
    jr z, jr_005_628c

    cp $01
    jr z, jr_005_62af

    cp $02
    jr z, jr_005_62c9

    cp $03
    jr z, jr_005_62ec

    cp $04
    jp z, Jump_005_630a

    cp $05
    jp z, Jump_005_6328

    cp $06
    jp z, Jump_005_6347

    ret


jr_005_628c:
    ld a, $2e
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $27
    call Call_000_3f52
    ld a, $01
    ld [$c60d], a
    ld a, $48
    call Call_000_151d
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_005_62af:
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


jr_005_62c9:
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


jr_005_62ec:
    ld a, $01
    ld [$c80d], a
    ld a, $2d
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $10
    ld [$c811], a

Call_005_62ff:
    ld a, $04
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_005_630a:
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


Jump_005_6328:
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


Jump_005_6347:
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


Call_005_636e:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_637c

    call Call_005_6732
    ret


jr_005_637c:
    ld a, [$c813]
    cp $00
    jr z, jr_005_6388

    cp $01
    jr z, jr_005_63ab

    ret


jr_005_6388:
    ld a, $16
    call Call_000_152a
    xor a
    ld [$c80c], a
    ld a, $2a
    call Call_000_3f52
    ld a, $01
    ld [$c60d], a
    ld a, $48
    call Call_000_151d
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_005_63ab:
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


Call_005_63c5:
    ld a, [$b911]
    cp $00
    jr z, jr_005_641a

    cp $01
    jp z, Jump_005_6472

    ld a, [$c813]
    cp $01
    jp z, Jump_005_642e

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_1658
    ld a, [$c802]
    cp $10
    call z, Call_005_653f
    cp $11
    call z, Call_005_6549
    cp $12
    call z, Call_005_6553
    cp $13
    call z, Call_005_655d
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jp z, Jump_005_64ec

    cp $08
    jp z, Jump_005_6501

    cp $28
    jp z, Jump_005_64ec

    cp $30
    jp z, Jump_005_652a

    cp $c0
    jp z, Jump_005_646d

    ret


jr_005_641a:
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $01
    jr z, jr_005_642e

    cp $02
    jr z, jr_005_6432

    cp $03
    jr z, jr_005_6440

    ret


Jump_005_642e:
jr_005_642e:
    call Call_005_6732
    ret


jr_005_6432:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_644e

    call Call_005_6732
    ret


jr_005_6440:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_646d

    call Call_005_6732
    ret


jr_005_644e:
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


Jump_005_646d:
jr_005_646d:
    xor a
    ld [$c800], a
    ret


Jump_005_6472:
    ld a, [$c813]
    cp $01
    jp z, Jump_005_642e

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_1658
    ld a, [$c802]
    cp $10
    call z, Call_005_653f
    cp $11
    call z, Call_005_6549
    cp $12
    call z, Call_005_6553
    cp $13
    call z, Call_005_655d
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jr z, jr_005_64c2

    cp $08
    jr z, jr_005_6516

    cp $10
    jr z, jr_005_652a

    cp $20
    jr z, jr_005_64ec

    cp $28
    jr z, jr_005_6501

    cp $48
    jr z, jr_005_6516

    cp $50
    jr z, jr_005_652a

    cp $80
    jr z, jr_005_646d

    ret


jr_005_64c2:
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


Jump_005_64ec:
jr_005_64ec:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Jump_005_6501:
jr_005_6501:
    ld a, $02
    ld [$c80d], a
    ld a, $12
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


jr_005_6516:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a

Jump_005_652a:
jr_005_652a:
    ld a, $00
    ld [$c80d], a
    ld a, $10
    call Call_000_152a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Call_005_653f:
    ld hl, $c808
    ld bc, $0001
    call Call_000_0cce
    ret


Call_005_6549:
    ld hl, $c806
    ld bc, $ffff
    call Call_000_0cce
    ret


Call_005_6553:
    ld hl, $c806
    ld bc, $0001
    call Call_000_0cce
    ret


Call_005_655d:
    ld hl, $c808
    ld bc, $ffff
    call Call_000_0cce
    ret


Call_005_6567:
    ld a, $02
    ld [$c912], a
    ld a, [$c811]
    inc a
    ld [$c811], a
    ld a, [$c802]
    cp $38
    call z, Call_005_653f
    cp $39
    call z, Call_005_6549
    cp $3a
    call z, Call_005_6553
    cp $3b
    call z, Call_005_655d
    ld a, [$c813]
    cp $01
    jr z, jr_005_65bb

    cp $02
    jr z, jr_005_6596

    ret


jr_005_6596:
    ld a, $02
    ld [$c813], a
    ld a, [$c811]
    cp $6c
    call z, Call_005_6626
    cp $74
    call z, Call_005_6676
    cp $a4
    call z, Call_005_6666
    cp $b0
    call z, Call_005_6646
    ld a, [$c811]
    cp $b0
    call z, Call_005_65fc
    ret


jr_005_65bb:
    ld a, $01
    ld [$c813], a
    ld a, [$c811]
    cp $01
    call z, Call_005_6606
    cp $08
    call z, Call_005_6616
    cp $38
    call z, Call_005_6606
    cp $40
    call z, Call_005_6656
    cp $e0
    jr z, jr_005_65dc

    ret


jr_005_65dc:
    call Call_005_6636
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


Call_005_65fc:
    xor a
    ld [$c810], a
    ld a, $35
    call Call_000_3f52
    ret


Call_005_6606:
    ld a, $03
    ld [$c80d], a
    ld a, $37
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6616:
    ld a, $03
    ld [$c80d], a
    ld a, $3b
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6626:
    ld a, $01
    ld [$c80d], a
    ld a, $35
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6636:
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6646:
    ld a, $02
    ld [$c80d], a
    ld a, $36
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6656:
    ld a, $02
    ld [$c80d], a
    ld a, $3a
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6666:
    ld a, $00
    ld [$c80d], a
    ld a, $34
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6676:
    ld a, $00
    ld [$c80d], a
    ld a, $38
    call Call_000_152a
    ld a, $04
    ld [$c810], a
    ret


Call_005_6686:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_005_669d

    cp $01
    jr z, jr_005_66b2

    cp $02
    jr z, jr_005_66b3

    ret


jr_005_669d:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_005_66be

    ld hl, $c806
    ld bc, $0001
    call Call_000_0cce
    ret


jr_005_66b2:
    ret


jr_005_66b3:
    ld a, $08
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_005_66be:
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


Call_005_66dc:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_005_66f3

    cp $01
    jr z, jr_005_6708

    cp $02
    jr z, jr_005_6709

    ret


jr_005_66f3:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_005_6714

    ld hl, $c806
    ld bc, $0001
    call Call_000_0cce
    ret


jr_005_6708:
    ret


jr_005_6709:
    ld a, $09
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_005_6714:
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


Call_005_6732:
    ld a, [$c80c]
    or a
    ret z

    ld a, [$c80d]
    cp $00
    jr z, jr_005_6750

    cp $01
    jr z, jr_005_675a

    cp $02
    jr z, jr_005_6764

    ld hl, $c808
    ld bc, $ffff
    call Call_000_0cce
    ret


jr_005_6750:
    ld hl, $c808
    ld bc, $0001
    call Call_000_0cce
    ret


jr_005_675a:
    ld hl, $c806
    ld bc, $ffff
    call Call_000_0cce
    ret


jr_005_6764:
    ld hl, $c806
    ld bc, $0001
    call Call_000_0cce
    ret


    ld a, [$b911]
    cp $00
    jp z, Jump_005_677f

    cp $01
    jp z, Jump_005_6814

    jp Jump_005_68a1


    ret


Jump_005_677f:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_1658
    ld a, [$c831]
    cp $59
    jr nc, jr_005_67cc

    inc a
    ld [$c831], a
    cp $4d
    jr c, jr_005_67b3

    cp $50
    jr z, jr_005_67bb

    cp $58
    ret c

    cp $58
    jr z, jr_005_67c6

    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


jr_005_67b3:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


jr_005_67bb:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


jr_005_67c6:
    ld a, $32
    call Call_000_3f52
    ret


jr_005_67cc:
    ld a, [$c831]
    cp $9a
    ret nc

    inc a
    ld [$c831], a
    cp $5b
    jr z, jr_005_67e3

    cp $99
    jr c, jr_005_67ee

    cp $99
    jr z, jr_005_67f6

    ret


jr_005_67e3:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_156b
    ret


jr_005_67ee:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


jr_005_67f6:
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


Jump_005_6814:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_1658
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_005_6987
    cp $09
    call z, Call_005_698f
    cp $0a
    call z, Call_005_6997
    cp $0b
    call z, Call_005_699f
    ld a, [$c831]
    cp $83
    jp nc, Jump_005_6876

    inc a
    ld [$c831], a
    cp $01
    jp z, Jump_005_690b

    cp $34
    jp z, Jump_005_6916

    cp $35
    jp z, Jump_005_6921

    cp $36
    jp z, Jump_005_692c

    cp $66
    jp z, Jump_005_6916

    cp $67
    jp z, Jump_005_690b

    cp $7f
    jp z, Jump_005_6916

    cp $80
    jp z, Jump_005_6937

    cp $82
    jp z, Jump_005_6963

    ret


Jump_005_6876:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $86
    jp z, Jump_005_694d

    cp $8a
    jp z, Jump_005_6958

    cp $9e
    jp z, Jump_005_6937

    cp $a2
    jp z, Jump_005_6942

    cp $d4
    jp z, Jump_005_694d

    cp $da
    jp z, Jump_005_6958

    cp $fe
    jp z, Jump_005_6969

    ret


Jump_005_68a1:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_1658
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_005_6987
    cp $09
    call z, Call_005_698f
    cp $0a
    call z, Call_005_6997
    cp $0b
    call z, Call_005_699f
    ld a, [$c831]
    cp $71
    jp nc, Jump_005_68eb

    inc a
    ld [$c831], a
    cp $07
    jr z, jr_005_690b

    cp $54
    jr z, jr_005_6916

    cp $5a
    jr z, jr_005_692c

    cp $68
    jr z, jr_005_6921

    cp $70
    jp z, Jump_005_6963

    ret


Jump_005_68eb:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $75
    jp z, Jump_005_694d

    cp $84
    jp z, Jump_005_6942

    cp $90
    jp z, Jump_005_6937

    cp $98
    jp z, Jump_005_6958

    cp $d8
    jr z, jr_005_6969

    ret


Jump_005_690b:
jr_005_690b:
    ld a, $03
    ld [$c82d], a
    ld a, $0b
    call Call_000_156b
    ret


Jump_005_6916:
jr_005_6916:
    ld a, $03
    ld [$c82d], a
    ld a, $07
    call Call_000_156b
    ret


Jump_005_6921:
jr_005_6921:
    ld a, $01
    ld [$c82d], a
    ld a, $05
    call Call_000_156b
    ret


Jump_005_692c:
jr_005_692c:
    ld a, $01
    ld [$c82d], a
    ld a, $09
    call Call_000_156b
    ret


Jump_005_6937:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_156b
    ret


Jump_005_6942:
    ld a, $02
    ld [$c82d], a
    ld a, $0a
    call Call_000_156b
    ret


Jump_005_694d:
    ld a, $00
    ld [$c82d], a
    ld a, $04
    call Call_000_156b
    ret


Jump_005_6958:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_156b
    ret


Jump_005_6963:
    ld a, $32
    call Call_000_3f52
    ret


Jump_005_6969:
jr_005_6969:
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


Call_005_6987:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


Call_005_698f:
    ld a, [$c82a]
    dec a
    ld [$c82a], a
    ret


Call_005_6997:
    ld a, [$c82a]
    inc a
    ld [$c82a], a
    ret


Call_005_699f:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


Call_005_69a7:
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
    call Call_000_0a19
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
    jr nc, jr_005_6a2a

    ld b, d
    ld b, [hl]
    ld b, a
    ld b, l
    db $fc
    rrca

jr_005_6a2a:
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
    add c
    ld a, [hl]
    or l
    ld a, [hl]
    sbc c
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    xor l
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    nop
    rst $18
    push de
    ld a, [hl]
    db $dd
    ld a, [hl]
    xor a
    ret nz

    nop
    cp l
    ld a, [hl]
    push af
    sbc e
    jr nz, jr_005_6aef

jr_005_6aef:
    xor l
    jr nz, jr_005_6af3

    adc b

jr_005_6af3:
    rst $38
    ld h, c
    rst $38
    rst $38
    sbc a
    rst $38
    cp $ff
    call Call_005_62ff
    rst $38
    db $fd
    rst $38
    db $10
    inc b
    ld e, a
    rst $18
    ld a, h
    db $fc
    ld h, a
    rst $20
    rst $38
    rra
    sbc a
    ld c, b
    ret z

    ld a, a
    rst $38
    ld sp, $fff1
    nop
    rst $38
    ld [hl], d
    ld [hl], d
    rra
    rra
    db $fc
    db $fc
    rst $38
    rlca
    rlca
    cp $fe
    rst $00
    rst $00
    inc a
    inc a
    xor $11
    ld b, $03
    rst $38
    jr jr_005_6b6b

    nop
    ld [hl], $ff
    inc hl
    cp [hl]
    call nc, $3306
    rst $38
    ld a, b
    rst $38
    rst $00
    ld h, b
    inc b
    adc h
    cp $d0
    rlca
    rst $38
    nop
    ld b, b
    cp a
    adc a
    ld [hl], b
    or b
    ld a, e
    ld b, b
    and b

jr_005_6b47:
    jr nz, jr_005_6b49

jr_005_6b49:
    or h
    ld b, b
    adc l
    ld [hl], b
    ld hl, rTIMA
    nop
    rst $38
    ret nz

    ccf
    ld b, b
    ccf
    ld h, b
    rra
    rst $28
    sbc b
    rlca
    call nz, Call_000_2103
    ld b, $0f
    ldh a, [rWave_f]
    rst $38
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    rra
    db $eb
    rrca

jr_005_6b6b:
    db $fd
    ldh a, [c]
    dec b
    ld [bc], a
    ret nz

    cp a
    ldh [$ff9f], a
    ld hl, sp+$67
    or e
    db $fc
    dec sp
    rrca
    ld [bc], a
    ld sp, $800d
    ld a, a
    dec bc
    ld [bc], a
    db $10
    rst $38
    ldh [rNR41], a
    ret nz

    jr nz, jr_005_6b47

    inc d
    ldh [$ff0d], a
    rst $38
    ldh a, [rIE]
    nop
    ld [bc], a
    db $fd
    ld bc, $c1fe
    rst $38
    ld a, $41
    ld a, $61
    ld e, $9d
    ld [bc], a
    rst $00
    rst $38
    nop
    add b
    ld a, a
    rst $30
    ld [$7f80], sp
    db $dd
    rst $38
    ld [hl+], a
    ld a, a
    nop
    rst $08
    rst $08
    db $fc
    db $fc
    jr c, @+$01

    jr c, jr_005_6bb1

jr_005_6bb1:
    rst $38
    ld [hl], a
    adc b
    nop
    rst $38
    db $dd
    ei
    ld [hl+], a
    rst $38
    nop
    ld bc, $cece
    jr c, jr_005_6bf8

    xor e
    rst $28
    ld a, [hl]
    cp e
    ld a, [hl]
    push af
    jr nz, jr_005_6bd9

    cp l
    ld a, [hl]
    reti


    xor d
    jr nz, jr_005_6bce

jr_005_6bce:
    or l
    jr nz, jr_005_6be2

    ld h, d
    and b
    rrca
    cp $20
    db $10
    ld h, c
    ei

jr_005_6bd9:
    rst $38
    adc b
    nop
    db $10
    add b
    nop
    ld b, b
    add b
    rst $38

jr_005_6be2:
    db $fd
    ret nz

    rlca
    ld bc, $0001
    ld [bc], a
    ld bc, $03fd
    db $fc
    rlca
    ld [bc], a
    jr nz, jr_005_6bff

    rst $38
    and $e6
    sub b
    sub b
    ret nz

    ld a, a

jr_005_6bf8:
    ret nz

    and b
    and b
    ret nz

    ret nz

    add b
    add b

jr_005_6bff:
    ld bc, rSB
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
    ld bc, $9201
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
    ld [hl], b

jr_005_6c1c:
    add b
    cp a
    ld a, a
    and d
    ld bc, $0122
    ld [bc], a
    jr nz, jr_005_6c26

jr_005_6c26:
    inc b
    rst $38
    inc bc
    ld [$f007], sp
    rrca
    nop
    rst $38
    rra
    ld sp, hl
    db $ed
    and c
    rrca
    ldh [rIF], a
    rst $08
    rrca
    di
    rlca
    ld hl, sp-$01
    nop
    rst $38
    cp $5d
    cp $dd
    cp $fd
    cp a
    cp $fd
    db $fc
    ei
    ld hl, sp-$09
    add hl, bc
    ld [bc], a
    rra
    ld a, l
    rst $28
    rrca
    ld [bc], a
    ld hl, sp+$07
    nop
    rst $38
    ld [de], a
    and d
    rrca
    rst $38
    jr nz, jr_005_6c1c

    db $10
    ldh [$ff0c], a
    ldh a, [$ff03]
    db $fc
    ld a, a
    nop
    rst $38
    and e
    nop
    inc hl
    nop
    inc bc
    jr nz, jr_005_6c6c

jr_005_6c6c:
    rst $38
    dec b
    ld [bc], a
    add hl, bc
    ld b, $f1
    ld c, $01
    cp $fe
    rlca
    rrca
    ret


    ld c, c
    rst $38
    ld a, a
    or [hl]
    ld [hl], $01
    rst $38
    cp $77
    adc b
    ld bc, $ddfe
    ld [hl+], a
    cp $fe
    nop
    ld de, $fefe
    jr c, @+$3a

    jp z, $d27f

    rst $38
    ld a, a
    sub $7f
    or [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp a
    ld a, a
    ld [hl], b
    cp b
    ld [hl], a
    cp b
    ld [hl], a
    cp d
    ld a, a
    ld hl, $fd00
    sbc h
    jr nz, jr_005_6ca9

jr_005_6ca9:
    rst $38
    nop
    add e
    ld a, a
    add b
    ld a, a
    call c, Call_000_0207
    and b
    inc h
    cp $03
    cp $07
    ld [bc], a
    db $fc
    rrca
    rst $28
    ld a, [$faef]
    rst $28
    rlca
    inc bc
    sbc h
    ld a, a
    sbc d
    xor [hl]
    ldh [rSC], a
    xor e
    ld a, [hl]
    xor e
    add b
    dec h
    sub l
    jr nz, jr_005_6cd0

jr_005_6cd0:
    sbc c

jr_005_6cd1:
    rst $28
    ld a, [hl]
    ret


    ld a, [hl]
    sla b
    ld h, $4c
    or b

jr_005_6cda:
    adc e
    cp a
    ld [hl], b
    sbc d
    ld h, c
    and b
    ld b, b
    cp a
    ld b, d
    jr nz, @+$01

    rst $38
    nop
    db $10
    rrca
    add sp, $07
    ld l, $c1
    ld [bc], a
    cp e
    ld bc, $82fe
    db $10
    rst $38
    nop
    inc c
    ldh [rNR31], a
    inc hl
    rst $38
    ret nz

    ld l, $c0
    ld l, b
    add b
    ld c, l
    add b
    ld b, l
    rst $38
    add b
    rst $38
    nop
    jr jr_005_6d0f

    inc b
    inc bc
    ld h, d
    rst $38
    ld bc, $01ba

jr_005_6d0f:
    dec bc
    nop
    ld e, c
    nop
    ld d, c
    cp $00
    inc l
    rlca
    ld sp, hl

jr_005_6d19:
    inc bc
    db $fd
    inc bc
    db $fc
    ld b, $ff
    ld a, [$f60e]
    inc e
    db $e4
    inc e
    db $ec
    rst $38
    rst $28
    nop
    ret nz

    ccf
    add b
    add b
    add hl, bc
    ld b, b
    ccf
    jr nz, jr_005_6cd1

    rra
    db $10
    rrca
    db $10
    rrca
    rrca
    ld [hl+], a
    ld bc, $8120
    rst $38
    ld a, [hl]
    pop bc
    cp [hl]
    pop hl
    sbc [hl]
    ld sp, hl
    ld h, [hl]
    db $fd
    db $fd
    ld a, [hl-]
    ld bc, $fb30
    inc b
    db $fc
    rrca
    db $ed
    ld e, $bf
    rst $30
    jr jr_005_6cda

    ld a, b
    ei
    inc b
    ld bc, $0731
    rst $38
    ld hl, sp-$09
    jr jr_005_6d19

    ld c, h
    ei
    inc b
    db $ed
    rst $38
    ld [de], a
    pop bc
    ld a, $bf
    ld [hl], b
    cp c
    ld [hl], a
    cp c
    ei
    ld [hl], a
    sbc c
    inc h
    nop
    ret


    ld [hl], a
    rst $38
    nop
    cp a
    rst $38
    ld a, a
    cp a
    ld e, a
    cp a
    ld a, a
    cp l
    ld a, a
    or e
    ld l, a
    ld a, a
    cp h
    ld e, a
    add b
    ld h, d
    rrca
    rst $38
    or $f0
    jr nc, @+$01

    cp $9f
    cp $ef
    or $01
    cp $fa
    rst $28
    rrca
    ld [hl-], a
    rst $28
    ld [hl], $20
    nop
    ld a, $ef
    inc a
    ld [hl], e
    rst $28
    inc [hl]
    jr nz, jr_005_6da1

jr_005_6da1:
    rlca
    inc d
    cp h
    ld a, a
    or h
    jr nz, jr_005_6da8

jr_005_6da8:
    ld a, a
    adc e
    ld a, [hl]
    add e
    ld a, [hl]
    sub e
    ld a, [hl]
    add l
    jr nz, jr_005_6dc2

    db $fd
    or l
    add b
    ld [hl], $91
    ld a, [hl]
    cp a
    ld b, b
    and c
    ld b, b
    rst $18
    and a
    ld b, b
    and a
    ld b, e
    and a

jr_005_6dc2:
    add b
    nop
    sbc a
    ld h, b

jr_005_6dc6:
    rst $38
    add b

jr_005_6dc8:
    ld a, a
    cp $01
    jp nz, $f281

    add c
    rst $38
    ldh a, [c]
    pop hl
    ldh a, [c]
    add c
    jp nz, $fc81

    inc bc
    rst $38
    nop

jr_005_6dda:
    rst $38
    ld c, c
    add b
    ld l, b
    add e
    inc h
    jp Jump_000_33df


    ret nz

    jr jr_005_6dc6

    ld c, $02
    inc e
    ld c, c
    nop
    rst $38
    dec bc
    ldh [rNR12], a
    pop hl
    and $01
    inc c
    inc bc
    rst $38

jr_005_6df5:
    jr c, jr_005_6dfe

    ldh [$ff1f], a
    nop
    rst $38
    jr @-$16

    rst $38

jr_005_6dfe:
    jr c, jr_005_6dc8

    jr z, jr_005_6dda

    ld l, b
    sbc b
    ld c, a
    or b
    rst $38
    ld [hl], d
    adc h
    inc [hl]
    ret z

    rrca
    ldh a, [$ff08]
    rlca
    cp $21
    nop
    inc b
    inc bc
    db $e4
    inc bc
    sub h
    ld h, e
    ld e, b
    rst $20
    daa
    ldh [$ff1f], a
    add hl, bc
    ld [hl+], a
    ld bc, $ff20
    ld e, h

jr_005_6e23:
    rst $38
    rst $38
    call c, $fcff
    rst $38
    db $fc
    db $fd
    ld a, [$fdf9]
    or $01
    jr nz, jr_005_6e23

    ld c, $d7
    jr c, jr_005_6df5

    ld b, b
    rst $38
    ccf
    ret nz

    ld a, [hl]
    add c
    db $db
    inc h
    sbc a
    ld h, b
    rst $38
    rst $38
    nop
    ld hl, sp+$07
    cp l
    ld b, [hl]
    db $fd
    ld b, $fe
    sub b
    inc e
    ld bc, $04fb
    reti


    ld h, $ce
    ld sp, $c987
    ld [hl], a
    reti


    jr nz, jr_005_6e59

jr_005_6e59:
    ld b, c
    db $10
    ld b, e
    nop
    ld bc, $af10
    cp $80
    rrca
    cp a
    ld h, c
    cp a
    ld e, a
    sbc a
    ld h, b
    and b
    ld a, l
    ld e, a
    dec b
    db $10
    ccf
    cp $ff
    ld a, [hl]
    ccf
    jr nz, jr_005_6e85

    dec bc
    ld a, [hl-]
    rst $28
    ld hl, $3c00
    ld [hl+], a
    nop
    pop bc
    nop
    ld hl, $2112
    inc de
    ld l, a
    add c

jr_005_6e85:
    ld a, a
    add d
    ld a, a
    pop hl
    ld [bc], a
    ld bc, $25fe
    inc de
    rst $28
    ld a, a
    cp $0b
    or $e1
    ld b, a
    ld b, b
    cp a
    add a
    rst $38
    ld a, b
    rst $38
    nop
    cp $00
    ld hl, sp+$40

jr_005_6ea0:
    di
    rst $30
    jr nz, jr_005_6ea0

    inc de
    ld hl, $f045
    rrca
    db $fc
    inc bc
    ld e, c
    ld b, $a0
    rra
    pop de
    ld c, c
    rst $38
    nop
    and c
    dec sp
    ld d, l
    ld sp, $061d
    ret nz

    rra
    rst $38
    ld b, $20
    scf
    or c
    nop
    and b
    daa
    or e
    ld c, e
    ld hl, $ff48
    inc bc
    db $fc
    rra
    db $e3
    ld a, a
    sbc a
    rst $38
    ld a, a
    ld a, [$4a40]
    ld a, l
    ld hl, $c049
    ccf
    ldh [$ffdf], a
    ldh a, [rIE]
    rst $28
    ldh a, [$ffef]
    or b
    ld l, a
    ldh [$ff9f], a
    rst $38
    rst $18
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    jr nz, jr_005_6f2e

    ret nz

    ld a, a
    rst $28
    or b
    ld a, a
    sbc b
    ld a, a
    jr nc, jr_005_6f3c

    jp nz, $613d

    rst $38
    ld e, $31
    ld c, $99
    ld b, $c9
    ld b, $f5
    xor a
    ld [bc], a
    db $fd
    ld [bc], a
    cp a
    jr nz, jr_005_6f2f

    cp $60
    ld h, $f9
    cp a
    rlca
    rst $38
    nop
    rst $20
    rra
    cp a
    ld h, b
    dec l
    ei
    db $ed
    inc b
    and c
    ld b, $9f
    ldh [rP1], a
    ld bc, $fdf8
    cp $fe
    rlca
    ld sp, $c949
    dec sp
    rst $38
    rlca
    rst $38
    ld sp, hl
    rst $38
    rlca
    sbc c

jr_005_6f2e:
    rst $30

jr_005_6f2f:
    add hl, sp
    rst $30
    ret


jr_005_6f32:
    rst $30
    ld l, c
    rst $38
    rst $30
    sbc c
    rst $30
    add hl, bc
    rst $30
    ld sp, hl
    rlca

jr_005_6f3c:
    ccf
    rst $38
    ldh [rWave_9], a
    rst $28
    ld [hl-], a
    rst $28
    dec a
    rst $28
    jr nc, jr_005_6f32

    rst $28
    add hl, sp
    ld b, b
    nop
    ccf
    ld h, b
    inc bc
    sbc b
    rst $38
    scf
    cp a
    rst $38
    pop bc
    rst $38

jr_005_6f55:
    ld l, d
    rst $38
    sub a
    ldh [c], a
    ld c, l
    rst $38
    rst $38
    nop

jr_005_6f5d:
    sub b
    rst $38
    ld h, $ff
    add c
    rst $38
    jr z, jr_005_6f5d

    or c
    dec bc
    ld bc, $0c53
    ld e, b
    cp [hl]
    ld c, l
    sbc a
    ld h, [hl]
    adc a
    ld a, a
    ld [hl], e
    add a
    ld a, c
    add e
    ld a, h
    add c
    ld a, [hl]
    ld h, l
    dec c
    cp $e2
    ld c, e
    rst $18
    ldh a, [rVBK]
    ldh a, [$ff2f]
    ld h, b

jr_005_6f83:
    sbc a
    ccf
    rst $38
    inc bc
    ld a, a
    add c
    ccf
    ret nz

    add c
    ld a, [hl-]
    or e
    ld e, d
    cp $c4
    ld bc, $f86f
    scf
    ld [hl], h
    adc e
    inc h
    db $db
    cp a
    jr jr_005_6f83

    rst $00
    add hl, sp
    ld a, e
    add h
    rst $20
    ld bc, $fd00
    rst $38
    and c
    rrca
    ld hl, sp+$77
    db $fc
    dec sp
    ld a, [hl]
    sub c
    rst $38
    ld a, [hl-]
    push bc
    ld [de], a
    db $ed
    inc c
    di
    ccf
    add $bf
    rra
    db $e3
    rrca
    pop af
    inc bc
    db $fc
    dec h
    inc b
    db $dd
    db $fd
    ld [hl+], a
    jp nz, $de2f

    pop af
    ld l, [hl]
    jp hl


    ld d, $49
    rst $30
    or [hl]
    ld sp, $03ce
    jr jr_005_6f55

    ld a, b
    add d
    ld a, h
    rst $38
    add d
    ld a, h
    add [hl]
    ld a, d
    adc h
    ld [hl], h
    rst $38
    nop
    rst $38
    inc d
    db $e3
    ld [de], a
    pop hl
    and a
    ld b, [hl]
    rst $08
    adc b
    rst $38
    ld a, b
    ld d, a
    jr nc, jr_005_701a

    jr jr_005_7004

    rst $38
    nop
    rst $38
    ld h, c
    and c
    call z, $de40
    ld b, b
    call z, $bf40
    ld h, c
    and c
    ld a, a
    cp a
    ld l, a
    xor a
    ld bc, $c018
    reti


    cp a

jr_005_7004:
    ld hl, $6100
    ld [hl], $b8
    ld b, a
    dec b
    ld [hl], $7f
    xor b
    cp a
    ld a, b
    and a
    ld h, a
    sbc a
    ld e, a
    and a
    inc bc
    inc e
    ld hl, sp-$01
    rst $20

jr_005_701a:
    db $fc
    dec hl
    inc a
    set 1, h
    di
    db $f4
    db $fd
    sla c
    ld h, d
    cpl
    ret nc

    ld a, a
    xor a
    rst $38
    ld c, a
    ccf
    rst $28
    ld b, b
    db $e3
    ld b, e
    db $e3
    ld b, e
    ld bc, $e358
    scf
    rst $38
    pop hl
    ld e, [hl]
    rst $28
    ret nc

    ei
    jp z, Jump_000_00ff

    rst $38
    ld b, a
    cp b
    sbc b
    ld h, b
    ldh [rP1], a
    ldh a, [$ff27]
    rst $38
    ei
    inc d
    db $fc
    dec bc
    cp [hl]
    ld c, l
    rst $38
    nop
    ccf
    ldh a, [rIF]
    inc c
    inc bc
    inc bc
    db $fc
    pop bc
    cpl
    rlca
    jr nz, @+$01

    ld b, b
    add b
    ld b, b
    sub l
    ld b, b
    xor d
    ld b, a
    cp b
    dec hl
    ld c, a
    or [hl]
    nop
    ld hl, $221f
    nop
    ld e, a
    db $10
    ld b, e
    jr nz, jr_005_7072

jr_005_7072:
    cp [hl]
    inc bc
    jr nz, jr_005_70f2

    add b
    ld b, b
    and b
    add b
    ld d, b
    ld [bc], a
    add b
    cp [hl]
    nop
    ld b, h
    inc a
    jp $01c2


    ld bc, $5880
    ld bc, $00df
    ld b, c
    ld [hl+], a
    pop hl
    ld e, [hl]
    nop
    ld e, a
    db $fc
    ld [bc], a
    rst $38
    db $fc
    call c, $f022
    adc a
    ld hl, sp+$67
    ld hl, sp-$01
    scf
    cp h
    dec de
    rst $38
    nop
    ld [hl-], a
    dec c
    add hl, bc
    rst $38
    ld b, $05
    ld [bc], a
    rlca
    add b
    inc bc
    ret nz

    inc bc
    rst $38
    ldh [$ff03], a
    ldh [$ff98], a
    ld l, b
    or b
    ld d, b
    and c
    ld a, a
    ld b, c
    or e
    ld h, e
    cp a
    ld d, [hl]
    or [hl]
    ld c, c
    and c
    ld b, e
    cp a
    ld l, h
    ld l, e
    db $fc
    set 1, h
    or e
    push hl
    dec h
    nop
    ld a, a
    rst $38
    ld l, a

jr_005_70cd:
    xor a
    scf
    sub $1e
    db $ed
    jr nz, jr_005_70d4

jr_005_70d4:
    rst $38
    pop hl
    rrca
    db $f4
    rrca
    rst $30
    rlca
    ld hl, sp-$04
    rst $38
    dec sp
    cp $6d
    xor $55
    xor $55
    rst $38
    rst $38
    ld c, [hl]
    rst $38

jr_005_70e9:
    ld c, [hl]
    adc $b1
    add b
    ld a, a

jr_005_70ee:
    ld c, a
    rst $38
    cp b
    ld c, h

jr_005_70f2:
    cp a
    inc a
    rst $08
    ccf
    ret nz

    ccf
    rst $38
    jp z, $e21f

    ld b, $f9
    nop
    rst $38
    call nz, $3bff
    inc b
    ei
    jr jr_005_70ee

    ld hl, sp+$07
    ld hl, sp+$7f
    and a
    ldh a, [$ff8f]
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    rrca
    rst $38
    inc hl
    ld [hl], e
    sub e
    dec sp
    rr a
    rst $20
    rrca
    db $fd
    ldh a, [rSC]
    dec l
    add b
    rst $38
    ld a, b
    db $fd
    ld [hl], d
    ld sp, hl
    ld e, a
    ld b, $e1
    sbc [hl]
    pop bc
    ld a, $30
    ld c, [hl]
    cp $eb
    rra
    db $fc
    ld h, c
    dec l
    db $e3
    rra
    ret nc

    cpl
    sub b
    ld l, a
    ld h, b
    sbc a
    ccf
    nop
    rst $38
    ld c, a
    or e
    ld b, a
    cp c
    add hl, bc
    jr nz, jr_005_70e9

    ld l, a
    cp $08
    jr nz, jr_005_70cd

    ld h, d
    add c
    ld a, [hl]
    ld h, e
    sbc h
    inc a
    cp l
    jp Jump_005_7c95


    ldh a, [c]
    db $ed
    db $fc
    ld [hl], e
    ldh [$ff1f], a
    sbc l
    rst $38
    ccf
    adc $1f
    ldh [$ff09], a
    or $06
    ld sp, hl
    rst $00
    ld e, [hl]
    adc l
    cpl
    jr nz, jr_005_718c

    ld b, b
    ld d, d
    inc h
    jr nz, @-$0b

    nop
    ei
    rrca
    ldh a, [rNR44]
    jr nz, @-$2d

    ld l, $91
    ld l, [hl]
    ld h, c
    ld bc, $009e
    ld [$2f00], sp
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    rra

jr_005_718c:
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
    ld b, a
    rst $38
    cp c
    adc h
    ld [hl], h
    sbc c
    ld h, b
    sbc [hl]
    ld l, b
    sub [hl]
    rst $38
    ld h, h
    sub d
    ld h, b
    sub d
    ld h, b
    rst $38
    nop
    ldh a, [rIE]
    ld c, a
    sbc b
    rla
    call z, Call_000_3c03
    dec bc
    inc [hl]
    rst $38
    inc de
    inc h
    inc bc
    ld l, h
    ld c, e
    rst $38
    nop
    ld bc, $feff
    inc bc
    db $fc
    ld e, $e2
    dec a
    call $ff6a
    xor d
    push de
    ld d, l
    ld [$ff6a], a
    nop
    db $fc
    rst $38
    inc bc
    sbc $d1
    xor a
    xor h
    ld d, l
    ld d, d
    xor a
    cp a
    xor d
    ld e, e
    ld d, [hl]
    cp a
    and [hl]
    rst $38
    jr nc, jr_005_720d

    ld a, [hl]
    rst $38
    add c
    ld b, c

jr_005_720d:
    add b
    ld sp, $0fc0
    ldh a, [$ff03]
    rst $38
    db $fc
    dec c
    ldh a, [rIE]
    nop
    ld [bc], a
    db $fd
    ccf
    rst $38
    ret nz

    pop bc
    nop
    ld b, a
    nop
    ld sp, hl
    ld b, $61
    rst $30
    ld e, $59
    ld b, $03
    ld [bc], a
    ld a, a
    cp [hl]
    ccf
    adc $f6
    ld bc, $0f02
    ldh a, [c]
    inc bc
    ld [bc], a
    rst $38
    inc a
    db $fd
    cp d
    rst $18
    ld sp, hl
    ld b, $e1
    sbc [hl]
    ld sp, hl
    nop
    inc b
    ld b, b
    cp a
    inc bc
    add b
    ld a, a
    daa
    nop
    ld bc, $2905
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fbc
    ld bc, $0107
    ld [bc], a
    db $fd
    ld bc, $27fe
    nop
    sub d
    rst $38
    ld h, b
    sub a
    ld h, l
    sbc a
    ld l, c

jr_005_7265:
    sbc a
    ld h, [hl]
    adc a
    rst $38
    ld [hl], a
    add a
    ld a, c
    add c
    ld a, [hl]
    add b
    ld a, a
    cp h
    rst $38
    sbc e
    ld a, h
    ld e, e
    db $fc
    set 7, h
    inc bc
    ld hl, sp+$7f
    rlca
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    rrca
    rst $38
    ld a, [hl+]
    cp l
    ld c, h
    ld e, [hl]
    and c
    ccf
    rst $08
    rrca
    db $fd
    ldh a, [$ffa1]
    dec b
    xor $dd
    call c, Call_000_3033
    rst $08
    di
    ldh [$ffdf], a
    pop bc
    ld bc, $06a1
    ld de, $20e0
    ret nz

    sbc a
    jr nz, jr_005_7265

    db $10
    ldh [$ff0c], a
    ldh [rIF], a
    and c
    rlca
    ld b, l
    rst $38
    ld [bc], a
    add e
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    add hl, de
    rst $30
    ld b, $e1
    ld e, $81
    ld b, $1f
    xor $3f
    rst $18
    cp a
    ccf
    rst $18
    rra
    rst $28
    rrca
    di

jr_005_72c7:
    inc bc
    ld [bc], a
    db $fd
    rst $38
    cp d
    rst $38
    ld a, h
    rst $38
    db $fc
    db $fd
    ld a, [$01f9]
    and $03
    ld [bc], a
    ret


jr_005_72d8:
    rrca
    add c
    db $10
    db $eb
    dec bc
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ldh a, [$ff2f]
    nop
    ld b, a
    ld de, $0fc9
    add c
    db $10
    ccf
    nop
    ld b, b
    nop
    ld a, a
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, @-$56

    ld [hl+], a
    nop
    ldh a, [rP1]
    dec e
    ld d, c
    inc de
    add c
    inc de
    jp nc, $fc22

    nop
    ld [bc], a
    nop
    ld a, a
    db $fd
    cp $0d
    cp $f5
    ld b, $15
    ld [hl+], a
    nop
    cp $63
    ld [bc], a
    xor a
    jr nc, jr_005_72c7

    jr nc, jr_005_72d8

    ccf
    ld b, b
    db $e3
    ccf
    ccf
    ld h, [hl]
    inc h
    ld h, l
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $0d
    ld a, a
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    ld h, e
    dec b
    ld hl, sp+$67
    nop
    ld h, e
    inc b
    ld h, a
    nop
    nop
    nop
    add b
    nop
    ldh [$ffaf], a
    nop
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rrca
    ld a, a
    nop
    rra
    rrca
    dec de
    inc c
    rra
    dec bc
    dec h
    nop
    rst $38
    ldh [rP1], a
    ret nc

    ldh [$ff90], a
    ld h, b
    ret nc

    and b
    db $fc
    dec h
    nop
    and a
    ld bc, $0c1b
    db $10
    rrca
    rrca
    nop
    ld a, $a7
    ld bc, $6090
    db $10
    ldh [$ffe0], a
    rra
    ld l, $1f
    nop
    cp $0c
    jr nc, jr_005_73b6

    cp a
    adc a
    ld [hl], b
    sbc h
    ld l, b
    sbc h
    push af
    ld l, c
    ld [hl+], a
    nop
    ld l, b
    ld bc, $f82d
    rlca
    ld [$af07], sp
    ld [$08e7], sp
    daa
    ld b, b
    nop
    rlca
    ld bc, $192e
    rst $38
    and $3f
    ret c

    ccf
    ret nc

    rra
    ldh [$ff1f], a
    rst $30
    pop hl
    ccf
    jp $0203


    ldh [$ff1f], a
    ret nz

    ccf
    cp $61
    dec hl
    ret nz

    cp a
    rst $38
    nop
    cp h
    inc bc

jr_005_73ae:
    ld h, a
    rst $38

jr_005_73b0:
    and h
    ld e, c
    sbc c
    ld e, [hl]
    sbc [hl]
    ld l, a

jr_005_73b6:
    xor a
    cpl
    rst $30
    rst $08
    scf
    rst $10
    inc bc
    daa
    ret nz

    ccf
    ld h, b
    ld e, a
    rst $38
    jr nc, jr_005_73f4

    sbc b
    sub a
    call z, $ffcb
    nop
    rst $38
    rlca
    ld sp, hl
    rlca
    ld a, [$f50e]
    inc e
    db $eb
    rst $38
    jr c, jr_005_73ae

    jr c, jr_005_73b0

    ld [hl], b
    xor a
    rst $38
    nop
    rst $38
    ld a, [$e181]
    ld b, b
    db $dd
    jr nz, jr_005_73f2

    ldh a, [$ffbf]
    inc hl
    ret nz

    dec e
    jp nz, $ce11

    ld bc, $9f30
    rst $38
    ld h, b

jr_005_73f2:
    cp a
    ld b, l

jr_005_73f4:
    cp a
    ld c, d
    cp a
    ld d, l
    cp a
    rst $30
    ld c, d
    adc a
    ld [hl], b
    dec b
    inc b
    ret nz

    cp a
    ldh [$ff1f], a
    rst $28
    ld hl, sp+$27
    db $fc
    inc de
    ld bc, $0f36
    ldh a, [rWave_a]
    ld a, a
    jp z, $d535

    ld a, [hl+]
    jp z, $e515

    ld bc, $fe34
    inc bc
    ld b, $40
    ccf
    ldh [$ff9f], a
    ret c

    ld b, a
    db $ec
    pop de
    dec hl
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, $02
    pop hl
    inc bc
    jr c, @+$03

    cp $ff
    add c
    ld a, [hl]
    ld b, c
    ld a, $e1
    sbc [hl]
    reti


    ld b, [hl]

jr_005_7437:
    ei
    db $ed

jr_005_7439:
    ld a, [hl+]
    and d
    rrca
    ld l, b
    sbc a
    ld h, b
    sub b
    ld l, a
    cp a
    sub b
    ld l, a
    adc a
    ld [hl], b
    add b
    ld a, a
    and d
    rrca
    rlca
    rst $38
    ld hl, sp+$07
    jr jr_005_7437

    jr jr_005_7439

    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ccf
    pop bc
    ld a, c
    add [hl]
    ld [hl], b
    adc a
    cp a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    and c
    dec [hl]
    ldh [rIE], a
    rst $18
    ldh a, [$ffef]
    ld hl, sp+$77
    ld a, h
    cp e
    ld a, $ff
    db $dd
    dec e
    ld [$f609], a
    ld b, $f9
    inc de
    rst $38
    db $e3
    add hl, de
    jp hl


    inc c
    db $f4
    ld b, $fa
    inc bc
    db $fc
    ld h, b
    dec [hl]
    and c
    scf
    db $fc
    db $e3
    cp $e9
    ld sp, hl
    ldh [rIE], a
    db $eb
    ld [bc], a
    di
    ld d, d
    rst $18
    inc l
    ld c, $f1
    rst $38
    nop
    rst $38
    ld [hl], b
    xor a
    ld a, b
    add a
    and h
    ld [bc], a
    rst $38
    and l
    nop
    sbc l
    nop
    sub d
    inc c
    ld h, c
    sbc [hl]
    rst $38
    nop
    rst $38
    add hl, bc
    and $05
    ldh a, [c]
    rlca
    jr nc, @+$01

    rlc b
    dec a
    ret nz

    db $d3
    inc l
    ld de, $ef0e
    pop hl
    ld e, $9f
    ld l, b
    add c
    rrca
    cp a
    ld d, l
    sbc a
    rst $30
    ld l, d
    sbc a
    ld h, c
    ld bc, $fe08
    add hl, bc
    cp $55
    rst $38
    cp $a9
    cp $55
    db $fc
    xor e
    ld hl, sp+$57
    ld a, a
    ldh a, [rIF]
    nop
    rst $38
    rla
    push hl
    ld a, [hl+]
    jp nz, $ff0d

    dec [hl]
    push bc
    ld e, $e2
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    or $55
    xor d
    adc c
    ld d, [hl]
    ld d, l
    xor d
    xor c
    adc a
    ld d, h
    ld d, e
    xor b
    and a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec b
    ld [bc], a
    dec d
    rst $30
    push hl
    ld c, $f2
    ld hl, $f73a
    ld d, h
    xor e
    adc b
    rst $38
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, l
    ld d, d
    xor c
    and [hl]
    cp a
    pop af
    ld c, $01
    cp $ff
    ld l, a
    jr nz, jr_005_751b

jr_005_751b:
    ld l, b
    ei
    rst $38
    ld l, d
    ld [hl+], a
    nop
    sbc d
    rst $38
    rst $38
    rst $38
    rst $28
    cp [hl]
    jr nz, jr_005_7529

jr_005_7529:
    ld l, a
    rst $38
    and e
    rst $38
    xor l
    jr nz, jr_005_7530

jr_005_7530:
    and e
    db $fc
    nop
    ld bc, $0031
    ld e, c
    rst $38
    ld [hl], $ff
    ld [hl], b
    rst $38
    rst $10
    ld [hl], a
    rst $38
    ld a, c
    nop
    ld [bc], a
    db $db
    ld a, [hl+]
    nop
    rst $38
    ld hl, sp-$02
    ld de, $9800
    ld hl, sp-$18
    ld hl, sp-$78
    ld hl, sp+$68
    cp $40
    nop
    ld hl, sp-$01
    rrca
    rst $38
    ld a, e
    rst $38
    ld a, a
    cp e
    rst $38
    ld a, [de]
    ld h, b
    nop
    ld a, e
    rst $38
    ld a, d
    nop
    dec b
    rst $30
    ld l, $20
    nop
    dec d
    rst $38
    ldh a, [c]
    jr nz, @+$06

    sub $60
    inc b
    ld de, $e705
    cp a
    rst $38
    db $e3
    ldh [c], a
    dec b
    ld hl, rTMA
    rst $38
    db $fc
    cp a
    rst $38
    db $ed
    rst $38
    adc l
    rst $38
    ld l, h
    ld b, b
    nop
    db $ed
    db $eb
    rst $38
    sbc l
    nop
    ld [$007f], sp
    ld [bc], a
    or e
    rst $38
    ld l, l
    ld a, [bc]
    ld [bc], a
    ld [$00b3], sp
    ld b, $e8
    ld [hl+], a
    nop
    pop hl
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
    jr nz, jr_005_75b2

jr_005_75b2:
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
    jr z, jr_005_75f2

jr_005_75f2:
    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    jp c, Jump_000_0024

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
    ld [hl], a
    rst $38
    rst $38
    rst $18
    jr nz, jr_005_7638

jr_005_7638:
    call c, Call_000_1bff
    ld b, b
    nop
    cp a
    rst $18
    rst $38
    jr @+$01

    rst $38
    ret nz

    ld de, $4000
    ld e, [hl]
    ld h, a
    nop
    ccf
    ld hl, $2f3f
    jr nz, jr_005_7650

jr_005_7650:
    ld [hl+], a
    ld h, d
    nop
    xor e
    ld hl, $e13f
    rlca
    sbc $80
    ld [bc], a
    sub $c0
    ld [bc], a
    sbc $fb
    rst $38
    add hl, sp
    ret nz

    ld [$fffd], sp
    xor l
    rst $38
    sub l
    cp e
    rst $38
    or l
    ld b, b
    nop
    xor l
    rst $38
    cp l
    inc b
    add hl, bc
    sbc b
    xor a
    rst $38
    db $eb
    rst $38
    adc e
    nop
    rlca
    adc e
    ret nz

    ld a, [bc]
    rst $28
    ldh a, [c]
    jr nz, jr_005_7682

jr_005_7682:
    rst $00
    ld b, b
    ld [$0021], sp
    ld [hl], a
    rst $38
    rst $38
    rra
    ld [hl], a
    ld de, $161f
    jr nz, jr_005_7691

jr_005_7691:
    ld de, $171f
    ld [hl+], a
    nop
    ld d, l
    rra
    nop
    inc b
    db $fd
    nop
    inc bc
    ld l, l
    ld [hl+], a
    nop
    sbc [hl]
    ret nz

    dec c
    db $fd
    cp $20
    nop
    call z, $f6ff
    rst $38
    add $ff
    cp c
    or [hl]
    add b
    inc bc
    inc de
    ld c, $67
    rst $38
    db $db
    ld [hl+], a
    nop
    ld h, a
    ld d, d
    nop
    inc b
    add hl, de
    nop
    inc b
    jp Jump_000_1603


    ret nz

    nop
    rra
    ld [hl+], a
    db $10
    sub a
    call $b4ff
    jr nz, jr_005_76d5

    or l
    add b
    nop
    inc de
    ld de, $ba47
    inc b

jr_005_76d5:
    inc bc
    db $db
    ret nz

    ld [de], a
    adc a
    rst $38
    or a
    and b
    inc b
    adc l
    xor e
    rst $38
    cp h
    ldh [$ff09], a
    cp [hl]
    inc b
    inc de
    ld [hl], e
    and b
    ld a, [bc]
    ld sp, $204a
    inc de
    ld [hl], c
    inc b
    inc d
    dec de
    ret nz

    ld de, $0021
    ld l, h
    inc b
    dec bc
    ld d, l
    ld b, a
    inc b
    dec bc
    rst $30
    ret nz

    ld d, $83
    jr nz, jr_005_770f

    xor $e4
    dec d
    ld e, l
    xor $04
    rla
    ld h, c
    rst $38
    xor d
    ld [hl+], a
    nop

jr_005_770f:
    ld l, d
    rrca
    dec bc
    ld e, h
    dec c
    dec bc
    inc b
    ld a, [bc]
    db $f4
    rst $38
    push bc
    ld b, b
    ld [de], a
    push bc
    inc b
    dec de
    ld d, l
    ld d, [hl]
    jr nz, jr_005_772e

    db $dd
    jr nz, jr_005_7726

jr_005_7726:
    sbc $c0
    inc e
    rst $30
    ld h, b
    ld b, $e9
    ld h, e

jr_005_772e:
    ld b, b
    ld a, [bc]
    ld hl, $7b00
    nop
    ld [de], a
    inc bc
    rra
    dec c
    cp b
    jr nz, jr_005_773b

jr_005_773b:
    ld h, l
    nop
    inc bc
    ld c, $53
    rst $38
    dec l
    ld [hl+], a
    ld [de], a
    ld [hl], e
    jp nc, $1f04

    sbc c
    and b
    inc d
    ld hl, $9900
    ret nz

    jr nz, @-$03

    rst $38
    push de
    ld a, [$1de0]
    ld l, d
    ld [hl+], a
    nop
    sbc d
    inc b
    rra
    ld a, d
    rst $38
    ld d, c
    ld c, c
    ld [hl+], a
    dec c
    ld bc, $3118
    ld [hl+], a
    sbc h
    nop
    add hl, de
    adc h
    add b
    jr nz, @-$69

    adc b
    inc b
    inc hl
    ld h, e
    ld h, b
    rra
    rst $20
    ldh [rTMA], a
    ld bc, $9f0b
    xor d
    add b
    ld hl, $a07f
    inc bc
    ld [$0ce0], a
    sbc e
    ret nz

    dec h
    xor $ea
    ldh [$ff0e], a
    ld a, [hl+]
    ldh [rP1], a
    and $20
    ld bc, $ff2a
    rst $38
    db $fd
    db $fc
    ld de, $cc00
    db $fc
    or h
    db $fc
    add h
    db $fc
    ld [hl], l
    cp h
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
    db $fd
    cp $11
    nop
    and $fe
    ld e, d
    cp $42
    cp $25
    ld e, [hl]
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
    adc b
    ld hl, $6225
    nop
    inc b
    inc b
    rrca
    ret nz

    ld d, $03
    rla
    ld sp, $c32c
    ld d, e
    rst $38
    ld d, l
    inc h
    nop
    inc de
    dec l
    ld c, $00
    ld bc, $4054
    ld bc, $56fd
    inc b
    ld b, $6a
    cp $a6
    cp $2e
    cp $ff
    xor $fe
    ld l, [hl]
    cp $fe
    inc bc
    inc bc
    inc bc
    and c
    ld [bc], a
    jr nz, jr_005_77f3

jr_005_77f3:
    ld de, $6200
    nop
    nop
    ld sp, $e0df
    rla
    ld [hl], $fa
    jr nz, jr_005_7829

    sub $02
    add hl, hl
    rst $38
    rst $38
    xor a
    rst $38
    sub [hl]
    ldh a, [c]
    nop
    add hl, hl
    sub h
    add b
    add hl, hl
    dec b
    rra
    ld l, e
    rst $38
    and a
    rst $38
    ld [hl], l
    cpl
    and b
    jr z, jr_005_7888

    ret nz

    inc sp
    cp e
    rst $38
    sub e
    jr nz, jr_005_7820

jr_005_7820:
    sub l
    xor e
    jr nz, jr_005_7824

jr_005_7824:
    cp e
    ret nz

    nop
    rst $38
    add b

jr_005_7829:
    inc sp
    pop bc
    inc sp
    ld l, l
    ld hl, sp-$40
    rra
    ld b, c
    jr z, jr_005_7846

    dec [hl]
    ld h, [hl]
    rst $38
    ld e, d
    rst $38
    jp nz, $ffdb

jr_005_783b:
    ld e, [hl]
    add b
    nop
    rst $38
    ldh [rNR11], a
    nop
    and b
    ldh [$ff91], a
    ld h, b

jr_005_7846:
    add d
    nop
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
    sub d
    inc b
    inc c
    db $eb
    ld [$2127], sp
    add hl, hl
    adc [hl]
    ld [bc], a
    ld b, $21
    ld b, $ad
    ld a, h
    jr nz, @+$1e

    and c
    ld b, $ff
    rst $38
    add a
    rst $38
    cp a
    add b
    jr z, jr_005_783b

    dec c
    add hl, hl
    xor l
    rst $38
    ld hl, $32a0
    nop
    ld e, $f8
    add sp, -$12
    ld [hl+], a
    nop
    adc b
    ld hl, sp+$68
    jr nz, jr_005_7880

jr_005_7880:
    adc b
    ld hl, sp-$08
    cp a
    ld a, a
    ld h, [hl]
    ld a, a
    ld e, d

jr_005_7888:
    ld a, a
    ld e, [hl]
    ld [hl+], a
    nop
    ld e, d
    xor d
    ret nz

    nop
    ld a, a
    ld [hl+], a
    inc hl
    cp [hl]
    nop
    inc de
    push de
    jr nz, jr_005_7899

jr_005_7899:
    sub $0a
    inc b
    inc a
    ld d, [hl]
    ldh [rP1], a
    call z, $0120
    nop
    inc de
    inc b
    ld e, $07
    rlca
    ld a, [$22a1]
    ld d, [hl]
    ld b, b
    ld b, c
    ld h, $ff
    dec h
    rst $38
    halt
    cp d
    ld b, $27
    or [hl]
    jr nz, jr_005_78cd

    or [hl]
    rst $38
    dec sp
    inc b
    ld b, h
    dec [hl]
    xor a
    rst $38
    db $d3
    rst $38
    rla
    ldh [$ff2e], a
    scf
    ret nz

    ld b, l
    rst $08
    ld a, [hl-]
    nop

jr_005_78cd:
    inc sp
    cp [hl]
    ld b, d
    ld a, [bc]
    or l
    rst $38
    adc $0a

jr_005_78d5:
    dec b
    ld b, c
    inc c
    ld d, [hl]
    ld c, $1d
    ld bc, $2a00
    nop
    ld bc, $3f00
    ld c, a
    jr nz, jr_005_78e5

jr_005_78e5:
    ld d, l
    xor a
    ld h, b
    jr jr_005_78d5

jr_005_78ea:
    ld [bc], a
    ld de, $021f
    inc hl
    dec de
    ld [hl+], a
    inc de
    dec h
    ld a, h

jr_005_78f4:
    ld [bc], a
    ld b, c
    db $ed
    nop
    ld b, c
    inc bc
    ccf
    push af
    ld b, $43
    inc bc
    jr c, @-$54

    nop
    jr z, jr_005_78f4

    inc de
    nop
    ld [hl], b
    inc h
    nop
    ldh a, [rP1]
    ld c, h
    ld l, d
    set 7, a
    ld a, c
    nop
    ld c, h
    jp hl


    inc b
    ld a, [hl+]
    ld hl, $5747
    rst $38
    rst $20
    ld c, l
    rst $38
    ld e, l
    ld [hl+], a
    inc [hl]
    ld bc, $fb30
    rst $38
    ld a, [de]
    ld [$38a0], a
    ld l, c
    ld b, d
    jr nc, @+$01

    ldh [$ff15], a
    cp a
    rst $38
    or e
    ld [$4940], a
    and c
    add b
    jr nz, jr_005_78ea

    inc b
    dec b
    ld d, b
    ldh a, [rWave_0]
    ld e, [hl]
    dec b
    dec b
    ccf
    inc sp

jr_005_7941:
    ccf
    dec l
    ld [hl+], a
    ld c, l
    cpl
    add b
    nop
    push de
    inc sp
    ld [bc], a
    ld c, l
    rst $38
    ld b, $34
    sbc l
    ld [bc], a
    add hl, sp
    ldh a, [c]
    rst $38
    dec h
    or d
    ldh [c], a
    ld b, h
    or a
    ld bc, $c04b
    ld sp, $007f
    ld c, b
    ld bc, $5d53
    ld e, [hl]
    ld [bc], a
    dec a
    rst $18
    rst $38
    rst $10
    and b
    ld d, e
    dec d
    ld [bc], a
    jr jr_005_7994

    ld d, $02
    ld e, b
    rst $18
    add b
    ld b, h
    pop hl
    daa
    sub $01
    dec hl
    ld c, $33
    xor [hl]
    ld bc, $6a10
    rst $38
    add hl, de
    ld [hl+], a
    ld b, [hl]
    dec de
    inc b
    ld e, e
    or [hl]
    ld [$5300], a
    or [hl]
    add b
    ld c, c
    call z, $5204
    dec hl
    rst $38
    push hl

jr_005_7994:
    ld d, h
    ld b, d
    ld [hl+], a
    ld bc, $1f28
    add b
    ld e, d
    ld l, a
    jr nz, jr_005_79ac

    ld a, d
    ld h, b
    inc a
    sub h
    nop
    ld b, c
    inc b
    ld [bc], a
    db $eb
    ld b, b
    ld e, e
    db $eb
    add b

jr_005_79ac:
    ld [bc], a
    inc de
    ld e, a
    sbc e
    ld e, b
    ld [bc], a
    dec a
    ld [bc], a
    ld d, [hl]
    db $ed
    ld a, c
    rst $38
    pop af
    ret nz

    ld c, b
    or $60
    nop
    jr z, jr_005_7941

    ld b, l
    ld bc, HeaderMaskROMVersion
    dec c
    ldh a, [c]
    and b
    ld d, $f5
    ld b, d
    ld b, [hl]
    rrca
    dec c
    nop
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
    jr jr_005_79df

jr_005_79df:
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

jr_005_7adb:
    or $eb

jr_005_7add:
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
    jr nz, jr_005_7adb

    jr z, jr_005_7add

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

jr_005_7b17:
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
    jr nz, jr_005_7b17

    ld h, b
    rst $18
    jr nc, @-$0f

    rst $38
    nop
    ld h, $f3
    inc b
    ei
    db $fc

jr_005_7b43:
    inc bc
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    jr jr_005_7b43

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
    jp c, $516e

    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_005_7c59

    ret nc

jr_005_7c2b:
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

    jr nc, jr_005_7c2b

    rst $38

jr_005_7c3d:
    nop
    ld hl, sp+$07
    rrca

jr_005_7c41:
    ldh a, [rNR23]

jr_005_7c43:
    rst $30
    jr jr_005_7c3d

    jr @-$07

    jr jr_005_7c41

    jr jr_005_7c43

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

jr_005_7c59:
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

Jump_005_7c95:
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
    jr nz, jr_005_7cc9

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
    jr z, jr_005_7ceb

    jr z, jr_005_7d27

    nop
    cp l
    nop
    ld [bc], a

jr_005_7cc9:
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
    jr c, jr_005_7cf9

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

jr_005_7ceb:
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

jr_005_7cf9:
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

jr_005_7d27:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
