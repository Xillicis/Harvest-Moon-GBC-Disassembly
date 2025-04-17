; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    inc hl
    xor a
    ld [$c7a0], a
    ld [$c780], a
    call Call_000_228a
    call ZeroOutVRAM
    call Call_000_323d
    ld hl, $7aca
    ld c, $2f
    ld de, $8800
    call Call_000_31a0
    ld hl, $781a
    ld c, $23
    ld de, $9000
    call Call_000_31a0
    ld hl, $5ab0
    ld c, $2d
    ld de, $8000
    call Call_000_31a0
    ld hl, $594a
    ld c, $2d
    ld de, $9800
    call Call_000_31a0
    ld a, $66
    ld [$cb5c], a
    ld a, $04
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$c911], a
    ld [$cb56], a
    ld a, $44
    ldh [$ff91], a
    ld a, $20
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
    ld a, $01
    ld [$cc22], a
    call Call_023_620a
    call Call_000_1205
    call Call_023_6198
    ld a, $00
    call RST_TableJumpBankSwitch
    ld hl, $6fad
    ld a, $2f
    call BankSwitchCallHL
    call Call_023_763e
    ld hl, $6ff7
    ld a, $2f
    call BankSwitchCallHL
    ld a, [$b943]
    or a
    call nz, Call_023_6319
    ld a, [$b944]
    or a
    call nz, Call_023_6322
    xor a
    ld [$cc20], a
    ld [$cc27], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    ld [$cc19], a
    ld [$cc1a], a
    ld [$cc26], a
    ld [$cc29], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    ld [$cc28], a
    ld [$cb52], a
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
    ld a, [$b8c0]
    or a
    call nz, Call_023_632b
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_023_4101

    call Call_023_6355
    ret


jr_023_4101:
    ld a, [$b9a1]
    and $0f
    cp $0f
    ret nz

    call Call_000_3dfd
    ld a, [$b9a2]
    cp $ff
    ret z

    call Call_023_6334
    ld a, $1e
    call Call_000_0f47
    ret


    call Call_000_0d90
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_023_413a

    call Call_000_3cf8
    call Call_000_2d67
    call Call_000_36f4
    call Call_023_4278
    ret


jr_023_413a:
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr z, jr_023_4150

    call Call_000_3cf8
    call Call_000_2d67
    call Call_000_36f4
    call Call_023_42ca
    ret


jr_023_4150:
    call Call_000_3cf8
    call Call_023_51a6
    call Call_000_2d67
    call Call_000_36f4
    ld hl, $6a38
    ld a, $21
    call BankSwitchCallHL
    call Call_023_62f2
    call Call_023_4323
    call Call_023_4337
    call Call_023_434b
    call Call_023_435f
    ld a, [$cc1b]
    cp $00
    ret nz

    ld hl, $4180
    ld a, [$cb62]
    rst $00
    adc b
    ld b, c
    call nz, $0041
    ld b, d
    inc a
    ld b, d
    ld a, $00
    ld [$cb62], a
    ld hl, $b949
    ld de, $ba12
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $c800
    ld de, $cc2a
    ld b, $20
    call CopyHLtoDE
    call Call_023_66bc
    ld hl, $ba12
    ld de, $b949
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $cc2a
    ld de, $c800
    ld b, $20
    call CopyHLtoDE
    ld a, $01
    ld [$cb62], a
    ret


    ld a, $01
    ld [$cb62], a
    ld hl, $b95f
    ld de, $ba12
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $c820
    ld de, $cc2a
    ld b, $20
    call CopyHLtoDE
    call Call_023_66bc
    ld hl, $ba12
    ld de, $b95f
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $cc2a
    ld de, $c820
    ld b, $20
    call CopyHLtoDE
    ld a, $02
    ld [$cb62], a
    ret


    ld a, $02
    ld [$cb62], a
    ld hl, $b975
    ld de, $ba12
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $c840
    ld de, $cc2a
    ld b, $20
    call CopyHLtoDE
    call Call_023_66bc
    ld hl, $ba12
    ld de, $b975
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $cc2a
    ld de, $c840
    ld b, $20
    call CopyHLtoDE
    ld a, $03
    ld [$cb62], a
    ret


    ld a, $03
    ld [$cb62], a
    ld hl, $b98b
    ld de, $ba12
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $c860
    ld de, $cc2a
    ld b, $20
    call CopyHLtoDE
    call Call_023_66bc
    ld hl, $ba12
    ld de, $b98b
    ld a, $16
    ld b, a
    call CopyHLtoDE
    ld hl, $cc2a
    ld de, $c860
    ld b, $20
    call CopyHLtoDE
    ld a, $00
    ld [$cb62], a
    ret


Call_023_4278:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_023_42bd

    ld a, [$cc27]
    or a
    jr nz, jr_023_42a1

    ld a, [$b8ec]
    or a
    jr nz, jr_023_4295

    ld a, $e7
    call Call_000_3f52
    jr jr_023_429a

jr_023_4295:
    ld a, $e8
    call Call_000_3f52

jr_023_429a:
    ld a, $f0
    ld [$cc27], a
    jr jr_023_42bd

jr_023_42a1:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_023_42bd

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $25
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_023_42bd:
    call Call_023_4323
    call Call_023_4337
    call Call_023_434b
    call Call_023_435f
    ret


Call_023_42ca:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_023_4316

    ld a, [$cb52]
    cp $ff
    jr nz, jr_023_4316

    ld a, [$cc27]
    or a
    jr nz, jr_023_42fa

    ld a, [$b8ec]
    or a
    jr nz, jr_023_42ee

    ld a, $a9
    call Call_000_3f52
    jr jr_023_42f3

jr_023_42ee:
    ld a, $ad
    call Call_000_3f52

jr_023_42f3:
    ld a, $f0
    ld [$cc27], a
    jr jr_023_4316

jr_023_42fa:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_023_4316

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $23
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_023_4316:
    call Call_023_4323
    call Call_023_4337
    call Call_023_434b
    call Call_023_435f
    ret


Call_023_4323:
    ld hl, $c80a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c806]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c808]
    sub b
    ld [hl+], a
    ret


Call_023_4337:
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


Call_023_434b:
    ld hl, $c84a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c846]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c848]
    sub b
    ld [hl+], a
    ret


Call_023_435f:
    ld hl, $c86a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c866]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c868]
    sub b
    ld [hl+], a
    ret


    sbc d
    ld hl, $ac04
    xor l
    xor [hl]
    rrca
    nop
    sbc d
    ld b, c
    inc b
    cp h
    cp l
    cp [hl]
    rra
    nop
    sbc d
    ld h, c
    inc b
    call z, $cecd
    cpl
    nop
    sbc d
    add c
    inc b
    call c, $dedd
    ccf
    nop
    sbc d
    add c
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b
    nop
    sbc d
    ld h, c
    inc b
    ld l, l
    ld l, [hl]
    ld l, a
    ld c, b
    nop
    sbc d
    ld b, c
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_023_43ab

jr_023_43ab:
    sbc d
    ld hl, $4d04
    ld c, [hl]
    ld c, a
    jr z, jr_023_43b3

jr_023_43b3:
    cp l
    ld b, e
    ret


    ld b, e
    push de
    ld b, e
    pop hl
    ld b, e
    db $ed
    ld b, e
    sbc b
    jp z, $a802

    xor c
    nop
    sbc b
    ld [$b802], a
    cp c
    nop
    sbc c
    adc d
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    xor d
    ld [bc], a
    cp b
    cp c
    nop
    sbc b
    ret nc

    ld [bc], a
    xor b
    xor c
    nop
    sbc b
    ldh a, [rSC]
    cp b
    cp c
    nop
    sbc c
    sub b
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    or b
    ld [bc], a
    cp b
    cp c
    nop
    sbc d
    ld d, h
    ld [bc], a
    xor b
    xor c
    nop
    sbc d
    ld [hl], h
    ld [bc], a
    cp b
    cp c
    nop
    sbc b
    pop hl
    ld [bc], a
    ld a, e
    ld a, h
    nop
    sbc b
    pop hl
    ld [bc], a
    ld l, c
    ld l, d
    nop
    sbc c
    ld bc, $7902
    ld a, d
    nop
    sbc b
    pop hl
    ld [bc], a
    dec l
    ld l, $00
    sbc c
    ld bc, $3d02
    ld a, $00
    sbc b
    and c
    ld [bc], a
    ld l, e
    ld l, h
    nop
    sbc b
    and c
    ld [bc], a
    ld h, a
    ld l, b
    nop
    sbc b
    pop bc
    ld [bc], a
    ld [hl], a
    ld a, b
    nop
    sbc b
    and c
    ld [bc], a
    dec c
    ld c, $00
    sbc b
    pop bc
    ld [bc], a
    dec e
    ld e, $00
    ld sp, hl
    ld b, e
    rla
    ld b, h
    rst $38
    ld b, e
    dec e
    ld b, h
    dec bc
    ld b, h
    add hl, hl
    ld b, h
    sbc d
    ld h, l
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    add l
    ld [bc], a
    inc de
    inc de
    nop

Call_023_444d:
    ld a, [$cc19]
    cp $ff
    jp z, Jump_023_482c

    ld hl, $445c
    ld a, [$cc16]
    rst $00
    ld l, d
    ld b, l
    add b
    ld b, h
    pop bc
    ld b, h
    sbc $44
    dec e
    ld b, l
    dec c
    ld b, [hl]
    ld h, b
    ld b, [hl]
    or b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    or b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    or b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    or b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    nop
    ld b, a
    ld d, b
    ld b, a
    db $ed
    ld b, a
    ld hl, $4373
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

jr_023_4498:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4498

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_023_44b7

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_023_456a


jr_023_44b7:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld a, [$cc17]
    cp $08
    jr nz, jr_023_44d4

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_023_456a


jr_023_44d4:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld hl, $4393
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

jr_023_44f6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_44f6

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_023_4514

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_023_456a

jr_023_4514:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_023_456a

    ld hl, $43b3
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

jr_023_4543:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4543

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_023_4561

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_023_456a

jr_023_4561:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_023_456a

Jump_023_456a:
jr_023_456a:
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_023_457b

    or a
    jr z, jr_023_45c9

    ret


jr_023_457b:
    ld a, [$c602]
    cp $5f
    jr z, jr_023_458f

    cp $60
    jr z, jr_023_458f

    cp $61
    jr z, jr_023_458f

    cp $62
    jr z, jr_023_458f

    ret


jr_023_458f:
    ld a, [$cc20]
    cp $05
    jr nz, jr_023_45a0

jr_023_4596:
    ld a, $1c
    call $16d1
    xor a
    ld [$cc20], a
    ret


jr_023_45a0:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr nz, jr_023_4596

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a
    or a
    jr z, jr_023_45c9

jr_023_45c7:
    pop hl
    ret


jr_023_45c9:
    ld a, [$cb91]
    or a
    jr z, jr_023_45c7

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_023_45f1

    cp $6e
    jr z, jr_023_45f8

    cp $50
    jr z, jr_023_45ff

    cp $a0
    jr z, jr_023_4606

jr_023_45f1:
    ld a, $8a
    call Call_000_151d
    pop hl
    ret


jr_023_45f8:
    ld a, $8b
    call Call_000_151d
    pop hl
    ret


jr_023_45ff:
    ld a, $8c
    call Call_000_151d
    pop hl
    ret


jr_023_4606:
    ld a, $8d
    call Call_000_151d
    pop hl
    ret


    ld a, [$cc17]
    cp $00
    jr nz, jr_023_463e

    ld a, [$cc18]
    ld hl, $4435
    call Call_000_0a3e
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

jr_023_4632:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4632

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_023_463e:
    ld a, [$cc17]
    cp $08
    jr nz, jr_023_4656

    xor a
    ld [$cc17], a
    ld a, $06
    ld [$cc16], a
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_023_456a


jr_023_4656:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld a, [$cc17]
    cp $02
    jr nc, jr_023_4691

    ld a, [$cc18]
    ld hl, $443d
    call Call_000_0a3e
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

jr_023_4685:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4685

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_023_4691:
    ld a, [$cc17]
    cp $08
    jr nz, jr_023_46a6

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_023_456a


jr_023_46a6:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld a, [$cc17]
    cp $02
    jr nc, jr_023_46e1

    ld a, [$cc18]
    ld hl, $4439
    call Call_000_0a3e
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

jr_023_46d5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_46d5

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_023_46e1:
    ld a, [$cc17]
    cp $08
    jr nz, jr_023_46f6

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_023_456a


jr_023_46f6:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld a, [$cc17]
    cp $00
    jr nz, jr_023_4731

    ld a, [$cc18]
    ld hl, $4435
    call Call_000_0a3e
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

jr_023_4725:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4725

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_023_4731:
    ld a, [$cc17]
    cp $08
    jr nz, jr_023_4746

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_023_456a


jr_023_4746:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


    ld a, [$cc17]
    cp $00
    jr nz, jr_023_4781

    ld a, [$cc18]
    ld hl, $443d
    call Call_000_0a3e
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

jr_023_4775:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4775

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_023_4781:
    ld a, [$cc17]
    cp $08
    jr nz, jr_023_47c3

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ld [$cc19], a
    ld a, [sItemSlot]
    ld [$cc1a], a
    ld a, $02
    ld [sItemSlot], a
    ld a, [$cc18]
    or a
    jr z, jr_023_47cd

    xor a
    ld [$cc18], a
    ld a, $29
    ld [$cb4a], a
    ld a, $61
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    jp Jump_023_456a


jr_023_47c3:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


jr_023_47cd:
    xor a
    ld [$cc18], a
    ld a, $2a
    ld [$cb4a], a
    ld a, $64
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    jp Jump_023_456a


    ld hl, $4441
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

jr_023_4805:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_023_4805

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr z, jr_023_4822

    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_023_456a


jr_023_4822:
    xor a
    ld [$cc17], a
    ld [$cc16], a
    jp Jump_023_456a


Jump_023_482c:
    ld a, [$cc19]
    cp $ff
    ret nz

    ld a, [$c912]
    cp $01
    jp nz, Jump_023_456a

    ld hl, $4841
    ld a, [$cc1e]
    rst $00
    ld c, c
    ld c, b
    ld e, e
    ld c, b
    ld h, a
    ld c, b
    ld [hl], e
    ld c, b
    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_023_456a


    ld a, $21
    ld [$cb4a], a
    ld a, $27
    call $16d1
    jr jr_023_487d

    ld a, $22
    ld [$cb4a], a
    ld a, $25
    call $16d1
    jr jr_023_487d

    ld a, $23
    ld [$cb4a], a
    ld a, $23
    call $16d1

jr_023_487d:
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call RST_TableJumpBankSwitch
    xor a
    ld [$cc19], a
    jp Jump_023_456a


Call_023_4893:
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc1b]
    or a
    ret nz

    ld a, [$cb34]
    and $01
    jr z, jr_023_48bb

    ld a, [wRightOrUpSideFacingTileID]
    cp $05
    jp z, Jump_023_4cdb

    cp $06
    jp z, Jump_023_4ce6

    cp $07
    jp z, Jump_023_4cf1

    cp $08
    jp z, Jump_023_4cfc

jr_023_48bb:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_023_4b4c

    ld hl, $5251
    ld a, $21
    call BankSwitchCallHL
    ld a, [sItemSlot]
    cp $00
    jr nz, jr_023_48e1

    ld a, [sInventory]
    jr jr_023_48e4

jr_023_48e1:
    ld a, [sInventory+1]

jr_023_48e4:
    ldh [$ffab], a
    cp $0b
    jp z, Jump_023_49f0

    cp $0c
    jp z, Jump_023_49f0

    cp $0d
    jp z, Jump_023_49f0

    cp $0e
    jp z, Jump_023_49f0

    cp $13
    jp z, Jump_023_49f0

    cp $14
    jp z, Jump_023_49f0

    cp $16
    jp z, Jump_023_49f0

    cp $15
    jp z, Jump_023_49f0

    cp $00
    jp z, Jump_023_4aff

    cp $08
    jr z, jr_023_4931

    cp $09
    jp z, Jump_023_49a9

    cp $52
    jp z, Jump_023_4ab7

    cp $01
    jp z, Jump_023_4a46

    cp $02
    jp z, Jump_023_4b48

    cp $10
    jp z, Jump_023_4e98

    ret


jr_023_4931:
    ld hl, $4938
    ld a, [$c60d]
    rst $00
    ld b, b
    ld c, c
    ld b, l
    ld c, c
    ld c, d
    ld c, c
    ld c, a
    ld c, c
    call Call_023_59b0
    jr jr_023_4952

    call Call_023_5da4
    jr jr_023_4952

    call Call_023_5f9e
    jr jr_023_4952

    call Call_023_5baa

jr_023_4952:
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    call Call_023_6356
    ld [$cc1e], a
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 1, a
    ret nz

    set 1, a
    ld [hl], a
    ld a, [sItemSlot]
    ld [$cc1a], a
    ld a, $02
    ld [sItemSlot], a
    ld a, $ff
    ld [$cc19], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $4c
    ld [$cc25], a
    ret


Jump_023_49a9:
    ld hl, $49b0
    ld a, [$c60d]
    rst $00
    cp b
    ld c, c
    cp l
    ld c, c
    jp nz, $c749

    ld c, c
    call Call_023_59b0
    jr jr_023_49ca

    call Call_023_5da4
    jr jr_023_49ca

    call Call_023_5f9e
    jr jr_023_49ca

    call Call_023_5baa

jr_023_49ca:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 0, a
    ret nz

    set 0, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $66
    ld [$cc25], a
    ret


Jump_023_49f0:
    ld hl, $49f7
    ld a, [$c60d]
    rst $00
    rst $38
    ld c, c
    inc b
    ld c, d
    add hl, bc
    ld c, d
    ld c, $4a
    call Call_023_59b0
    jr jr_023_4a11

    call Call_023_5da4
    jr jr_023_4a11

    call Call_023_5f9e
    jr jr_023_4a11

    call Call_023_5baa

jr_023_4a11:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $5196
    ldh a, [$ffaa]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $0a
    call Call_023_75c5
    ldh a, [$ffaa]
    or $10
    ld [$cc24], a
    ld a, $34
    ld [$cc25], a
    dec hl
    inc [hl]
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    call Call_023_75b0
    ret


Jump_023_4a46:
    ld a, [$cc23]
    or a
    ret nz

    ld hl, $4a52
    ld a, [$c60d]
    rst $00
    ld e, d
    ld c, d
    ld e, a
    ld c, d
    ld h, h
    ld c, d
    ld l, c
    ld c, d
    call Call_023_59b0
    jr jr_023_4a6c

    call Call_023_5da4
    jr jr_023_4a6c

    call Call_023_5f9e
    jr jr_023_4a6c

    call Call_023_5baa

jr_023_4a6c:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    jr z, jr_023_4a92

    cp $04
    ret nz

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $02
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], a

jr_023_4a92:
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 7, a
    ret nz

    set 7, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    dec hl
    xor a
    ld [hl], a
    ret


Jump_023_4ab7:
    ld hl, $4abe
    ld a, [$c60d]
    rst $00
    add $4a
    bit 1, d
    ret nc

    ld c, d
    push de
    ld c, d
    call Call_023_59b0
    jr jr_023_4ad8

    call Call_023_5da4
    jr jr_023_4ad8

    call Call_023_5f9e
    jr jr_023_4ad8

    call Call_023_5baa

jr_023_4ad8:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $1e
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    ret


Jump_023_4aff:
    ld hl, $4b06
    ld a, [$c60d]
    rst $00
    ld c, $4b
    inc de
    ld c, e
    jr @+$4d

    dec e
    ld c, e
    call Call_023_59b0
    jr jr_023_4b20

    call Call_023_5da4
    jr jr_023_4b20

    call Call_023_5f9e
    jr jr_023_4b20

    call Call_023_5baa

jr_023_4b20:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, [hl]
    cp $04
    ret nz

    ld a, $02
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    ret


Jump_023_4b48:
    call Call_023_6236
    ret


Jump_023_4b4c:
    ld a, [$cb4a]
    or a
    jp nz, Jump_023_4ddc

    ld hl, $4b5a
    ld a, [$c60d]
    rst $00
    ld h, d
    ld c, e
    ld h, a
    ld c, e
    ld l, h
    ld c, e
    ld [hl], c
    ld c, e
    call Call_023_59b0
    jr jr_023_4b74

    call Call_023_5da4
    jr jr_023_4b74

    call Call_023_5f9e
    jr jr_023_4b74

    call Call_023_5baa

jr_023_4b74:
    ldh a, [$ffa4]
    or a
    jp z, Jump_023_4cbe

    ld a, [$cc1b]
    cp $00
    ret nz

    ldh a, [$ffa9]
    ld hl, $4b86
    rst $00
    sub b
    ld c, e
    sub b
    ld c, e
    sub b
    ld c, e
    xor $4b
    ld h, b
    ld c, h
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl]
    ld [$cc03], a
    ld a, [$b8ec]
    or a
    jr nz, jr_023_4bc2

    ld a, $a6
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_023_4bcc

jr_023_4bc2:
    ld a, $aa
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_023_4bcc:
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl+]
    ld [$cc03], a
    ld a, [hl]
    sla a
    ld hl, $516a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc13], a
    ld a, [hl]
    ld [$cc14], a
    ld a, [$b8ec]
    or a
    jr nz, jr_023_4c34

    ld a, $a7
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_023_4c3e

jr_023_4c34:
    ld a, $ab
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_023_4c3e:
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl]
    ld [$cc03], a
    ld a, [$b8ec]
    or a
    jr nz, jr_023_4c92

    ld a, $a8
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_023_4c9c

jr_023_4c92:
    ld a, $ac
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_023_4c9c:
    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


Jump_023_4cbe:
    ld a, [$cc1b]
    cp $00
    jr z, jr_023_4cc6

    ret


jr_023_4cc6:
    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $1d
    jr z, jr_023_4d07

    ld a, [wRightOrUpSideFacingTileID]
    cp $04
    jp z, Jump_023_4dac

    ret


Jump_023_4cdb:
    ld a, $a2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_023_4ce6:
    ld a, $a0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_023_4cf1:
    ld a, $a3
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_023_4cfc:
    ld a, $a1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_023_4d07:
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, jr_023_4d4f

    cp $01
    jr z, jr_023_4d35

    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_023_4d35

    ld a, [sInventory]
    ld [$cc21], a
    ld hl, $63b0
    ld a, $24
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_023_4d6d

jr_023_4d35:
    ld a, [sInventory+1]
    ld [$cc21], a
    ld hl, $63b0
    ld a, $24
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_023_4d6d

jr_023_4d4f:
    ld a, [sInventory]
    cp $ff
    jr nz, jr_023_4d35

    ld a, [sInventory]
    ld [$cc21], a
    ld hl, $63b0
    ld a, $24
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory], a
    xor a
    ld [sItemSlot], a

jr_023_4d6d:
    xor a
    ld [$b8c0], a
    ld [$cb34], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ld a, $10
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
    ld a, $11
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [wCollisionNoMovement], a
    ld hl, $d800
    ld de, $015a
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


Jump_023_4dac:
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


Jump_023_4ddc:
    call Call_023_4de0
    ret


Call_023_4de0:
    ld a, [$cb4a]
    ld hl, $4de7
    rst $00
    dec a
    ld c, [hl]
    ld a, $4e
    ld d, a
    ld c, [hl]
    ld d, a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld c, e
    ld c, a
    call nz, $3e4f
    ld d, b
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    dec a
    ld c, [hl]
    cp b
    ld d, b
    db $fd
    ld d, b
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
    call Call_023_565f
    ld a, [de]
    cp $0b
    jr z, jr_023_4e89

    cp $0c
    jr z, jr_023_4e89

    cp $0d
    jr z, jr_023_4e89

    cp $0e
    jr z, jr_023_4e89

    cp $0f
    jr z, jr_023_4e89

    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_023_4e89:
    ld a, $19
    call $16d1
    ld a, $08
    ld [$c912], a
    ld a, $36
    call Call_000_25ce

Jump_023_4e98:
    call Call_023_565f
    ld a, [de]
    cp $0b
    jr z, jr_023_4ebb

    cp $0c
    jr z, jr_023_4eca

    cp $0d
    jr z, jr_023_4ed9

    cp $0e
    jr z, jr_023_4ee8

    cp $0f
    jr z, jr_023_4ef7

    ld a, [$cb4a]
    cp $20
    ld a, $05
    ld [$cc20], a
    ret


jr_023_4ebb:
    ld a, $00
    ld [$cc18], a
    ld a, [$b948]
    set 0, a
    ld [$b948], a
    jr jr_023_4f04

jr_023_4eca:
    ld a, $01
    ld [$cc18], a
    ld a, [$b948]
    set 1, a
    ld [$b948], a
    jr jr_023_4f04

jr_023_4ed9:
    ld a, $02
    ld [$cc18], a
    ld a, [$b948]
    set 2, a
    ld [$b948], a
    jr jr_023_4f04

jr_023_4ee8:
    ld a, $03
    ld [$cc18], a
    ld a, [$b948]
    set 3, a
    ld [$b948], a
    jr jr_023_4f04

jr_023_4ef7:
    ld a, $04
    ld [$cc18], a
    ld a, [$b948]
    set 4, a
    ld [$b948], a

jr_023_4f04:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_023_4f26

    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_023_4f26:
    ld a, [$cc18]
    ld [$cc20], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_023_4f38:
jr_023_4f38:
    call Call_000_1cff
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_4f8a

    cp $20
    jr z, jr_023_4f8a

    cp $21
    jr z, jr_023_4f8a

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_023_4f8a

    cp $21
    jr z, jr_023_4f8a

    ld a, $28
    call $16d1
    ld a, $36
    call Call_000_25ce

Call_023_4f84:
    ld a, $08

Call_023_4f86:
    ld [$c912], a
    ret


jr_023_4f8a:
    ld a, [$b942]
    cp $c9
    jr nc, jr_023_4f95

    inc a
    ld [$b942], a

jr_023_4f95:
    ld a, $27
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_4f38

    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_5003

    cp $20
    jr z, jr_023_5003

    cp $21
    jr z, jr_023_5003

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_023_5003

    cp $21
    jr z, jr_023_5003

    ld a, $26
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_023_5003:
    ld a, [$b942]
    cp $c9
    jr nc, jr_023_500e

    inc a
    ld [$b942], a

jr_023_500e:
    ld a, $25
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jp z, Jump_023_4f38

    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_507d

    cp $20
    jr z, jr_023_507d

    cp $21
    jr z, jr_023_507d

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_023_507d

    cp $21
    jr z, jr_023_507d

    ld a, $24
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_023_507d:
    ld a, [$b942]
    cp $c9
    jr nc, jr_023_5088

    inc a
    ld [$b942], a

jr_023_5088:
    ld a, $23
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jp z, Jump_023_4f38

    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_023_5142

    cp $21
    jp z, Jump_023_5155

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_50e4

    ld a, $5b
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_023_50e4:
    ld a, $61
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jp z, Jump_023_4f38

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jr z, jr_023_5129

    ld a, $5e
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    ret


jr_023_5129:
    ld a, $64
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [$c912], a
    call Call_023_565f
    ld a, [de]
    cp $02
    jp z, Jump_023_4f38

    ret


Jump_023_5142:
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc18], a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_023_5155:
    ld a, $05
    ld [$cc16], a
    ld a, $01
    ld [$cc18], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_023_516a:
    inc c
    dec bc
    ld [hl], $35
    ld [hl], $34
    dec [hl]
    dec a
    dec [hl]
    inc a
    dec [hl]
    dec sp
    dec [hl]
    ld a, [hl-]
    dec [hl]
    add hl, sp
    dec [hl]
    jr c, @+$37

    scf
    dec [hl]
    ld [hl], $35
    dec [hl]
    dec [hl]
    inc [hl]
    rst $28
    dec a
    rst $28
    inc a
    rst $28
    dec sp
    rst $28
    ld a, [hl-]
    rst $28
    add hl, sp
    rst $28
    jr c, @-$0f

    scf
    rst $28
    ld [hl], $ef
    dec [hl]
    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    nop
    ret z

    jr nz, jr_023_516a

    ld b, b
    ret z

    ld h, b
    ret z

Call_023_51a6:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    call Call_023_5626
    call Call_023_444d
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ld a, [$cc16]
    cp $05
    ret nc

    ldh a, [$ff8b]
    and $01
    jr z, jr_023_51d4

    call Call_023_4893
    ret


jr_023_51d4:
    ldh a, [$ff8a]
    and $02
    jr z, jr_023_51f1

    call Call_023_5380
    ld a, [$c603]
    and $01
    jr z, jr_023_51f0

    ld a, [$c605]
    cp $08
    jr nz, jr_023_51f0

    ld a, $34
    call Call_000_25ce

jr_023_51f0:
    ret


jr_023_51f1:
    ldh a, [$ff8b]
    and $08
    jr z, jr_023_51fb

    call Call_000_1923
    ret


jr_023_51fb:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_023_5220

    ldh a, [$ff8a]
    and $40
    jr nz, jr_023_525e

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_023_529c

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_023_52d9

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_023_5220:
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_023_59b0
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_525a

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54a7

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54ba

    ret


jr_023_525a:
    call Call_023_54f3
    ret


jr_023_525e:
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_023_5baa
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_5298

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54a7

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54ba

    ret


jr_023_5298:
    call Call_023_5526
    ret


Jump_023_529c:
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_023_5da4
    ldh a, [$ffa4]
    or a
    jr nz, jr_023_5316

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_52d5

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54cd

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54e0

    ret


jr_023_52d5:
    call Call_023_5554
    ret


Jump_023_52d9:
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_023_5f9e
    ldh a, [$ffa4]
    or a
    jr nz, jr_023_5316

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_5312

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54cd

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54e0

    ret


jr_023_5312:
    call Call_023_55c4
    ret


Jump_023_5316:
jr_023_5316:
    ld a, [$cc29]
    cp $08
    jr c, jr_023_537b

    ld hl, $5196
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $03
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $519e
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c60d]
    ld [hl], a
    xor a
    ld [$cc29], a
    ld a, [$cc28]
    cp $ff
    ret nz

    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    add $08
    cp $6c
    ret c

    cp $84
    ret nc

    inc hl
    ld a, [hl+]
    cp $a0
    ret c

    inc hl
    ldh a, [$ffaa]
    ld [$cc28], a
    ld hl, $519e
    ldh a, [$ffaa]
    call Call_000_0a3e
    ld a, $00
    ld [hl], a
    ret


jr_023_537b:
    inc a
    ld [$cc29], a
    ret


Call_023_5380:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_023_539a

    ldh a, [$ff8a]
    and $20
    jr nz, jr_023_539e

    ldh a, [$ff8a]
    and $10
    jr nz, jr_023_53a2

    ldh a, [$ff8a]
    and $40
    jr nz, jr_023_53a6

    jr jr_023_53ab

jr_023_539a:
    ld a, $00
    jr jr_023_53a8

jr_023_539e:
    ld a, $01
    jr jr_023_53a8

jr_023_53a2:
    ld a, $02
    jr jr_023_53a8

jr_023_53a6:
    ld a, $03

jr_023_53a8:
    ld [$c60d], a

jr_023_53ab:
    ld a, [$c60d]
    cp $00
    jr z, jr_023_53f7

    cp $01
    jr z, jr_023_5433

    cp $02
    jp z, Jump_023_546d

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_023_5baa
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_53f0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54a7

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54ba

    ret


jr_023_53f0:
    call Call_023_5526
    call Call_023_5526
    ret


jr_023_53f7:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_023_59b0
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_542c

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_023_54a7

    ld a, [wcb32]
    and $01
    jp z, Jump_023_54ba

    ret


jr_023_542c:
    call Call_023_54f3
    call Call_023_54f3
    ret


jr_023_5433:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_023_5da4
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_5466

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_023_54cd

    ld a, [wcb32]
    and $01
    jr z, jr_023_54e0

    ret


jr_023_5466:
    call Call_023_5554
    call Call_023_5554
    ret


Jump_023_546d:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_023_5f9e
    ldh a, [$ffa4]
    or a
    jp nz, Jump_023_5316

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_023_54a0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_023_54cd

    ld a, [wcb32]
    and $01
    jr z, jr_023_54e0

    ret


jr_023_54a0:
    call Call_023_55c4
    call Call_023_55c4
    ret


Jump_023_54a7:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_023_5554
    ret


Jump_023_54ba:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_023_55c4
    ret


Jump_023_54cd:
jr_023_54cd:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_023_5526
    ret


Jump_023_54e0:
jr_023_54e0:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_023_54f3
    ret


Call_023_54f3:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $a3
    jr nc, jr_023_551b

    ld a, [$c608]
    cp $5c
    jr nc, jr_023_5507

    jr jr_023_5514

jr_023_5507:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_023_550f:
    ld hl, $c608
    inc [hl]
    ret


jr_023_5514:
    ld hl, $c60b
    inc [hl]
    jr jr_023_550f

    ret


jr_023_551b:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    ret


Call_023_5526:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_023_5540

    ld a, [$c608]
    cp $08
    jr c, jr_023_554d

    jr jr_023_554d

jr_023_5540:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_023_5548:
    ld hl, $c608
    dec [hl]
    ret


jr_023_554d:
    ld hl, $c60b
    dec [hl]
    jr jr_023_5548

    ret


Call_023_5554:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_023_5592

    cp $01
    jr z, jr_023_559b

    ld a, [$c606]
    cp $b9
    jr nc, jr_023_558b

    ld a, [$c607]
    cp $00
    jr nz, jr_023_557e

    ld a, [$c606]
    cp $59
    jr c, jr_023_558b

jr_023_557e:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_023_5586:
    ld hl, $c606
    dec [hl]
    ret


jr_023_558b:
    ld hl, $c60a
    dec [hl]
    jr jr_023_5586

    ret


jr_023_5592:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_023_559b:
    ld a, [$c606]
    cp $99
    jr nc, jr_023_55bd

    ld a, [$c607]
    cp $00
    jr nz, jr_023_55b0

    ld a, [$c606]
    cp $59
    jr c, jr_023_55bd

jr_023_55b0:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_023_55b8:
    ld hl, $c606
    dec [hl]
    ret


jr_023_55bd:
    ld hl, $c60a
    dec [hl]
    jr jr_023_55b8

    ret


Call_023_55c4:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_023_55fb

    cp $01
    jr z, jr_023_5604

    ld a, [$c606]
    cp $b8
    jr nc, jr_023_55f4

    ld a, [$c606]
    cp $58
    jr c, jr_023_55f4

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_023_55ef:
    ld hl, $c606
    inc [hl]
    ret


jr_023_55f4:
    ld hl, $c60a
    inc [hl]
    jr jr_023_55ef

    ret


jr_023_55fb:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_023_5604:
    ld a, [$c606]
    cp $98
    jr nc, jr_023_561f

    ld a, [$c606]
    cp $58
    jr c, jr_023_561f

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_023_561a:
    ld hl, $c606
    inc [hl]
    ret


jr_023_561f:
    ld hl, $c60a
    inc [hl]
    jr jr_023_561a

    ret


Call_023_5626:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_023_563a

    pop hl
    ret


jr_023_563a:
    call Call_023_74e1
    ld a, [$cc28]
    cp $ff
    jr nz, jr_023_5654

    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $01
    ld [$c910], a
    ret


jr_023_5654:
    ld a, $07
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_023_565f:
    ld a, [$c60d]
    rst $00
    ld l, h
    ld d, [hl]
    nop
    ld d, a
    sub [hl]
    ld d, a
    inc l
    ld e, b
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


Call_023_58c8:
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


    ld a, [$c60d]
    cp $00
    jr nz, jr_023_5921

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
    call Call_023_58c8
    ret


jr_023_5921:
    cp $01
    jr nz, jr_023_5952

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
    jr z, jr_023_5944

    cp $0c
    jr nc, jr_023_5948

    cp $04
    jr nc, jr_023_594c

jr_023_5944:
    ld b, $ec
    jr jr_023_594e

jr_023_5948:
    ld b, $dc
    jr jr_023_594e

jr_023_594c:
    ld b, $e4

jr_023_594e:
    call Call_023_58c8
    ret


jr_023_5952:
    cp $02
    jr nz, jr_023_5983

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
    jr z, jr_023_5979

    cp $0c
    jr nc, jr_023_5979

    cp $04
    jr nc, jr_023_597d

    ld b, $1c
    jr jr_023_597f

jr_023_5979:
    ld b, $0c
    jr jr_023_597f

jr_023_597d:
    ld b, $14

jr_023_597f:
    call Call_023_58c8
    ret


jr_023_5983:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    sub $0d
    and $0f
    cp $00
    jr z, jr_023_59aa

    cp $0b
    jr nc, jr_023_59a2

    cp $03
    jr nc, jr_023_59a6

    ld c, $e8
    jr jr_023_59ac

jr_023_59a2:
    ld c, $d8
    jr jr_023_59ac

jr_023_59a6:
    ld c, $e0
    jr jr_023_59ac

jr_023_59aa:
    ld c, $e8

jr_023_59ac:
    call Call_023_58c8
    ret


Call_023_59b0:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
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
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_023_5a43

    ld a, [$b949]
    cp $00
    jr z, jr_023_5a12

    cp $ff
    jr z, jr_023_5a43

    ld a, [$c80d]
    cp $00
    jr z, jr_023_5a12

    cp $03
    jr z, jr_023_5a12

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_023_5a2e

jr_023_5a12:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_023_5a2e:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5a43

    ldh a, [$ffa7]
    cp e
    jr c, jr_023_5a43

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5a43

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_023_5ba5

jr_023_5a43:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_023_5ab8

    ld a, [$b95f]
    cp $00
    jr z, jr_023_5a87

    cp $ff
    jr z, jr_023_5ab8

    ld a, [$c82d]
    cp $00
    jr z, jr_023_5a87

    cp $03
    jr z, jr_023_5a87

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_023_5aa3

jr_023_5a87:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_023_5aa3:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5ab8

    ldh a, [$ffa7]
    cp e
    jr c, jr_023_5ab8

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5ab8

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_023_5ba5

jr_023_5ab8:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_023_5b2c

    ld a, [$b975]
    cp $00
    jr z, jr_023_5afc

    cp $ff
    jr z, jr_023_5b2c

    ld a, [$c84d]
    cp $00
    jr z, jr_023_5afc

    cp $03
    jr z, jr_023_5afc

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_023_5b18

jr_023_5afc:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_023_5b18:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5b2c

    ldh a, [$ffa7]
    cp e
    jr c, jr_023_5b2c

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5b2c

    ldh a, [$ffa5]
    cp b
    jr nc, jr_023_5ba5

jr_023_5b2c:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_023_5ba0

    ld a, [$b98b]
    cp $00
    jr z, jr_023_5b70

    cp $ff
    jr z, jr_023_5ba0

    ld a, [$c86d]
    cp $00
    jr z, jr_023_5b70

    cp $03
    jr z, jr_023_5b70

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_023_5b8c

jr_023_5b70:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_023_5b8c:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5ba0

    ldh a, [$ffa7]
    cp e
    jr c, jr_023_5ba0

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5ba0

    ldh a, [$ffa5]
    cp b
    jr nc, jr_023_5ba5

jr_023_5ba0:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_5ba5:
jr_023_5ba5:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_023_5baa:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
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
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_023_5c3d

    ld a, [$b949]
    cp $00
    jr z, jr_023_5c0c

    cp $ff
    jr z, jr_023_5c3d

    ld a, [$c80d]
    cp $00
    jr z, jr_023_5c0c

    cp $03
    jr z, jr_023_5c0c

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]

Call_023_5bff:
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_023_5c28

jr_023_5c0c:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_023_5c28:
    ldh a, [$ffa7]
    cp d
    jr c, jr_023_5c3d

    ldh a, [$ffa6]
    cp d
    jr nc, jr_023_5c3d

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5c3d

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_023_5d9f

jr_023_5c3d:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_023_5cb2

    ld a, [$b95f]
    cp $00
    jr z, jr_023_5c81

    cp $ff
    jr z, jr_023_5cb2

    ld a, [$c82d]
    cp $00
    jr z, jr_023_5c81

    cp $03
    jr z, jr_023_5c81

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_023_5c9d

jr_023_5c81:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_023_5c9d:
    ldh a, [$ffa7]
    cp d
    jr c, jr_023_5cb2

    ldh a, [$ffa6]
    cp d
    jr nc, jr_023_5cb2

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5cb2

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_023_5d9f

jr_023_5cb2:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_023_5d26

    ld a, [$b975]
    cp $00
    jr z, jr_023_5cf6

    cp $ff
    jr z, jr_023_5d26

    ld a, [$c84d]
    cp $00
    jr z, jr_023_5cf6

    cp $03
    jr z, jr_023_5cf6

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_023_5d12

jr_023_5cf6:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_023_5d12:
    ldh a, [$ffa7]
    cp d
    jr c, jr_023_5d26

    ldh a, [$ffa6]
    cp d
    jr nc, jr_023_5d26

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5d26

    ldh a, [$ffa5]
    cp b
    jr nc, jr_023_5d9f

jr_023_5d26:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_023_5d9a

    ld a, [$b98b]
    cp $00
    jr z, jr_023_5d6a

    cp $ff
    jr z, jr_023_5d9a

    ld a, [$c86d]
    cp $00
    jr z, jr_023_5d6a

    cp $03
    jr z, jr_023_5d6a

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_023_5d86

jr_023_5d6a:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_023_5d86:
    ldh a, [$ffa7]
    cp d
    jr c, jr_023_5d9a

    ldh a, [$ffa6]
    cp d
    jr nc, jr_023_5d9a

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_5d9a

    ldh a, [$ffa5]
    cp b
    jr nc, jr_023_5d9f

jr_023_5d9a:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_5d9f:
jr_023_5d9f:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_023_5da4:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
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
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_023_5e37

    ld a, [$b949]
    cp $00
    jr z, jr_023_5e06

    cp $ff
    jr z, jr_023_5e37

    ld a, [$c80d]
    cp $00
    jr z, jr_023_5e06

    cp $03
    jr z, jr_023_5e06

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_023_5e22

jr_023_5e06:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_023_5e22:
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_5e37

    ldh a, [$ffa4]
    cp b
    jr nc, jr_023_5e37

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5e37

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_023_5f99

jr_023_5e37:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_023_5eac

    ld a, [$b95f]
    cp $00
    jr z, jr_023_5e7b

    cp $ff
    jr z, jr_023_5eac

    ld a, [$c82d]
    cp $00
    jr z, jr_023_5e7b

    cp $03
    jr z, jr_023_5e7b

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_023_5e97

jr_023_5e7b:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_023_5e97:
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_5eac

    ldh a, [$ffa4]
    cp b
    jr nc, jr_023_5eac

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5eac

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_023_5f99

jr_023_5eac:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_023_5f20

    ld a, [$b975]
    cp $00
    jr z, jr_023_5ef0

    cp $ff
    jr z, jr_023_5f20

    ld a, [$c84d]
    cp $00
    jr z, jr_023_5ef0

    cp $03
    jr z, jr_023_5ef0

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_023_5f0c

jr_023_5ef0:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_023_5f0c:
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_5f20

    ldh a, [$ffa4]
    cp b
    jr nc, jr_023_5f20

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5f20

    ldh a, [$ffa7]
    cp d
    jr nc, jr_023_5f99

jr_023_5f20:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_023_5f94

    ld a, [$b98b]
    cp $00
    jr z, jr_023_5f64

    cp $ff
    jr z, jr_023_5f94

    ld a, [$c86d]
    cp $00
    jr z, jr_023_5f64

    cp $03
    jr z, jr_023_5f64

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_023_5f80

jr_023_5f64:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_023_5f80:
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_5f94

    ldh a, [$ffa4]
    cp b
    jr nc, jr_023_5f94

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_5f94

    ldh a, [$ffa7]
    cp d
    jr nc, jr_023_5f99

jr_023_5f94:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_5f99:
jr_023_5f99:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_023_5f9e:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
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
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_023_6031

    ld a, [$b949]
    cp $00
    jr z, jr_023_6000

    cp $ff
    jr z, jr_023_6031

    ld a, [$c80d]
    cp $00
    jr z, jr_023_6000

    cp $03
    jr z, jr_023_6000

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_023_601c

jr_023_6000:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_023_601c:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_6031

    ldh a, [$ffa5]
    cp c
    jr c, jr_023_6031

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_6031

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_023_6193

jr_023_6031:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_023_60a6

    ld a, [$b95f]
    cp $00
    jr z, jr_023_6075

    cp $ff
    jr z, jr_023_60a6

    ld a, [$c82d]
    cp $00
    jr z, jr_023_6075

    cp $03
    jr z, jr_023_6075

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_023_6091

jr_023_6075:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_023_6091:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_60a6

    ldh a, [$ffa5]
    cp c
    jr c, jr_023_60a6

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_60a6

    ldh a, [$ffa7]
    cp d

Call_023_60a3:
    jp nc, Jump_023_6193

jr_023_60a6:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_023_611a

    ld a, [$b975]
    cp $00
    jr z, jr_023_60ea

    cp $ff
    jr z, jr_023_611a

    ld a, [$c84d]
    cp $00
    jr z, jr_023_60ea

    cp $03
    jr z, jr_023_60ea

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_023_6106

jr_023_60ea:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_023_6106:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_611a

    ldh a, [$ffa5]
    cp c
    jr c, jr_023_611a

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_611a

    ldh a, [$ffa7]
    cp d
    jr nc, jr_023_6193

jr_023_611a:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_023_618e

    ld a, [$b98b]
    cp $00
    jr z, jr_023_615e

    cp $ff
    jr z, jr_023_618e

    ld a, [$c86d]
    cp $00
    jr z, jr_023_615e

    cp $03
    jr z, jr_023_615e

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_023_617a

jr_023_615e:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_023_617a:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_618e

    ldh a, [$ffa5]
    cp c
    jr c, jr_023_618e

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_618e

    ldh a, [$ffa7]
    cp d
    jr nc, jr_023_6193

jr_023_618e:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_6193:
jr_023_6193:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_023_6198:
    ld hl, $9c00
    ld de, $61a6
    ld b, $14
    ld c, $05
    call Call_000_0a62
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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

Call_023_620a:
    ld hl, $6216
    ld de, $c600
    ld b, $20
    call CopyHLtoDE
    ret


    ld bc, rJOYP
    nop
    nop
    ld [$0078], sp
    and b
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

Call_023_6236:
    ld a, $3c
    ld [$cc26], a
    ret


Call_023_623c:
    ldh a, [$ffa4]
    ld hl, $5196
    call Call_000_0a3e
    ld a, [hl]
    cp $03
    ret z

    cp $04
    ret z

    cp $ff
    ret z

    ldh a, [$ffa4]
    ld hl, $519e
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c606]
    cp b
    jr c, jr_023_626b

    sub b
    ldh [$ffa5], a
    jr jr_023_6271

jr_023_626b:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa5], a

jr_023_6271:
    inc hl
    inc hl
    ld a, [hl]
    ld b, a
    ld a, [$c608]
    cp b
    jr c, jr_023_6280

    sub b
    ldh [$ffa6], a
    jr jr_023_6286

jr_023_6280:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa6], a

jr_023_6286:
    ld b, a
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_62b4

    ldh a, [$ffa4]
    ld hl, $519e
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, a
    ld a, [$c606]
    cp b
    jr c, jr_023_62af

    ld a, $02
    ld [hl], a
    jr jr_023_62d8

jr_023_62af:
    ld a, $01
    ld [hl], a
    jr jr_023_62d8

jr_023_62b4:
    ldh a, [$ffa4]
    ld hl, $519e
    call Call_000_0a3e
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, a
    ld a, [$c608]
    cp b
    jr c, jr_023_62d5

    ld a, $00
    ld [hl], a
    jr jr_023_62d8

jr_023_62d5:
    ld a, $03
    ld [hl], a

jr_023_62d8:
    ldh a, [$ffa4]
    ld hl, $5196
    call Call_000_0a3e
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $03
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


Call_023_62f2:
    ld a, [$cc26]
    or a
    ret z

    dec a
    ld [$cc26], a
    ret nz

    ld a, $00
    ldh [$ffa4], a
    call Call_023_623c
    ld a, $01
    ldh [$ffa4], a
    call Call_023_623c
    ld a, $02
    ldh [$ffa4], a
    call Call_023_623c
    ld a, $03
    ldh [$ffa4], a
    call Call_023_623c
    ret


Call_023_6319:
    ld hl, $6f24
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_023_6322:
    ld hl, $6f50
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_023_632b:
    ld hl, $6f7c
    ld a, $2f
    call BankSwitchCallHL
    ret


Call_023_6334:
    ld hl, $5196
    ld a, [$b9a2]
    call Call_000_0a3e
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, h
    ld e, l
    ld hl, $cd2c
    ld b, $04
    call CopyHLtoDE
    ld a, $ff
    ld [$b9a2], a
    ret


Call_023_6355:
    ret


Call_023_6356:
    cp $0a
    jr c, jr_023_6364

    cp $50
    jr c, jr_023_6367

    cp $a0
    jr c, jr_023_636f

    jr jr_023_6377

jr_023_6364:
    ld a, $00
    ret


jr_023_6367:
    ld a, b
    cp $00
    jr nz, jr_023_6364

    ld a, $01
    ret


jr_023_636f:
    ld a, b
    cp $00
    jr nz, jr_023_6364

    ld a, $02
    ret


jr_023_6377:
    ld a, b
    cp $00
    jr nz, jr_023_6364

    ld a, $03
    ret


    ld a, [$b949]
    cp $ff
    jr z, jr_023_63ac

    ld a, [$b953]
    bit 0, a
    jr z, jr_023_6399

    ld a, [$b94f]
    add $03
    jr nc, jr_023_6396

    ld a, $ff

jr_023_6396:
    ld [$b94f], a

jr_023_6399:
    ld a, [$b953]
    bit 2, a
    jr z, jr_023_63ac

    ld a, [$b94f]
    add $01
    jr nc, jr_023_63a9

    ld a, $ff

jr_023_63a9:
    ld [$b94f], a

jr_023_63ac:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_63d9

    ld a, [$b969]
    bit 0, a
    jr z, jr_023_63c6

    ld a, [$b965]
    add $03
    jr nc, jr_023_63c3

    ld a, $ff

jr_023_63c3:
    ld [$b965], a

jr_023_63c6:
    ld a, [$b969]
    bit 2, a
    jr z, jr_023_63d9

    ld a, [$b965]
    add $01
    jr nc, jr_023_63d6

    ld a, $ff

jr_023_63d6:
    ld [$b965], a

jr_023_63d9:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_6406

    ld a, [$b97f]
    bit 0, a
    jr z, jr_023_63f3

    ld a, [$b97b]
    add $03
    jr nc, jr_023_63f0

    ld a, $ff

jr_023_63f0:
    ld [$b97b], a

jr_023_63f3:
    ld a, [$b97f]
    bit 2, a
    jr z, jr_023_6406

    ld a, [$b97b]
    add $01
    jr nc, jr_023_6403

    ld a, $ff

jr_023_6403:
    ld [$b97b], a

jr_023_6406:
    ld a, [$b98b]
    cp $ff
    jr z, jr_023_6433

    ld a, [$b995]
    bit 0, a
    jr z, jr_023_6420

    ld a, [$b991]
    add $03
    jr nc, jr_023_641d

    ld a, $ff

jr_023_641d:
    ld [$b991], a

jr_023_6420:
    ld a, [$b995]
    bit 2, a
    jr z, jr_023_6433

    ld a, [$b991]
    add $01
    jr nc, jr_023_6430

    ld a, $ff

jr_023_6430:
    ld [$b991], a

jr_023_6433:
    ld a, [$b8a0]
    cp $00
    jp nz, Jump_023_658b

    ld a, [$b949]
    cp $ff
    jr z, jr_023_6449

    ld a, [$b953]
    bit 3, a
    jr nz, jr_023_6473

jr_023_6449:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_6457

    ld a, [$b969]
    bit 3, a
    jr nz, jr_023_6473

jr_023_6457:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_6465

    ld a, [$b97f]
    bit 3, a
    jr nz, jr_023_6473

jr_023_6465:
    ld a, [$b98b]
    cp $ff
    jr z, jr_023_64a3

    ld a, [$b995]
    bit 3, a
    jr z, jr_023_64a3

jr_023_6473:
    ld a, [$b94f]
    add $05
    jr nc, jr_023_647c

    ld a, $ff

jr_023_647c:
    ld [$b94f], a
    ld a, [$b965]
    add $05
    jr nc, jr_023_6488

    ld a, $ff

jr_023_6488:
    ld [$b965], a
    ld a, [$b97b]
    add $05
    jr nc, jr_023_6494

    ld a, $ff

jr_023_6494:
    ld [$b97b], a
    ld a, [$b991]
    add $05
    jr nc, jr_023_64a0

    ld a, $ff

jr_023_64a0:
    ld [$b991], a

Jump_023_64a3:
jr_023_64a3:
    ld a, [$b949]
    cp $ff
    jr z, jr_023_64c1

    cp $00
    jr z, jr_023_64c1

    cp $01
    jr z, jr_023_64c1

    ld a, [$b953]
    bit 4, a
    jr nz, jr_023_64c1

    ld hl, $b949
    ld b, $08
    call Call_023_75c5

jr_023_64c1:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_64df

    cp $00
    jr z, jr_023_64df

    cp $01
    jr z, jr_023_64df

    ld a, [$b969]
    bit 4, a
    jr nz, jr_023_64df

    ld hl, $b95f
    ld b, $08
    call Call_023_75c5

jr_023_64df:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_64fd

    cp $00
    jr z, jr_023_64fd

    cp $01
    jr z, jr_023_64fd

    ld a, [$b97f]
    bit 4, a
    jr nz, jr_023_64fd

    ld hl, $b975
    ld b, $08
    call Call_023_75c5

jr_023_64fd:
    ld a, [$b98b]
    cp $ff
    jr z, jr_023_651b

    cp $00
    jr z, jr_023_651b

    cp $01
    jr z, jr_023_651b

    ld a, [$b995]
    bit 4, a
    jr nz, jr_023_651b

    ld hl, $b98b
    ld b, $08
    call Call_023_75c5

jr_023_651b:
    call Call_023_73ef
    ld a, [$b949]
    cp $ff
    jr z, jr_023_652f

    ld a, [$b949]
    ld a, $00
    ldh [$ffa4], a
    call Call_023_703d

jr_023_652f:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_6540

    ld a, [$b95f]
    ld a, $01
    ldh [$ffa4], a
    call Call_023_703d

jr_023_6540:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_6551

    ld a, [$b975]
    ld a, $02
    ldh [$ffa4], a
    call Call_023_703d

jr_023_6551:
    ld a, [$b98b]
    cp $ff
    jr z, jr_023_6562

    ld a, [$b98b]
    ld a, $03
    ldh [$ffa4], a
    call Call_023_703d

jr_023_6562:
    xor a
    ld [$b948], a
    ld [$b953], a
    ld [$b969], a
    ld [$b97f], a
    ld [$b995], a
    ld hl, $b949
    call Call_023_75b0
    ld hl, $b95f
    call Call_023_75b0
    ld hl, $b975
    call Call_023_75b0
    ld hl, $b98b
    call Call_023_75b0
    ret


Jump_023_658b:
    ld a, [$b949]
    cp $ff
    jr z, jr_023_65d5

    ld a, [$b953]
    bit 3, a
    jr z, jr_023_65d5

    ld a, $01
    ld [$b952], a
    ld hl, $b949
    ld b, $0a
    call Call_023_75c5
    ld a, [$b949]
    cp $02
    jr nz, jr_023_65d5

    xor a
    ld [$b94e], a
    ld a, [$b95d]
    or a
    jr nz, jr_023_65d5

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $10
    jr nc, jr_023_65d5

    ld a, $04
    ld [$b949], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_023_65d5

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_023_65d5:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_661f

    ld a, [$b969]
    bit 3, a
    jr z, jr_023_661f

    ld a, $01
    ld [$b968], a
    ld hl, $b95f
    ld b, $0a
    call Call_023_75c5
    ld a, [$b95f]
    cp $02
    jr nz, jr_023_661f

    xor a
    ld [$b964], a
    ld a, [$b973]
    or a
    jr nz, jr_023_661f

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $02
    jr nc, jr_023_661f

    ld a, $04
    ld [$b95f], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_023_661f

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_023_661f:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_6669

    ld a, [$b97f]
    bit 3, a
    jr z, jr_023_6669

    ld a, $01
    ld [$b97e], a
    ld hl, $b975
    ld b, $0a
    call Call_023_75c5
    ld a, [$b975]
    cp $02
    jr nz, jr_023_6669

    xor a
    ld [$b97a], a
    ld a, [$b989]
    or a
    jr nz, jr_023_6669

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $02
    jr nc, jr_023_6669

    ld a, $04
    ld [$b975], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_023_6669

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_023_6669:
    ld a, [$b98b]
    cp $ff
    jp z, Jump_023_64a3

    ld a, [$b995]
    bit 3, a
    jp z, Jump_023_64a3

    ld a, $01
    ld [$b994], a
    ld hl, $b98b
    ld b, $0a
    call Call_023_75c5
    ld a, [$b98b]
    cp $02
    jp nz, Jump_023_64a3

    xor a
    ld [$b990], a
    ld a, [$b99f]
    or a
    jp nz, Jump_023_64a3

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $02
    jp nc, Jump_023_64a3

    ld a, $04
    ld [$b98b], a
    ld a, [$b945]
    cp $0a
    jp nc, Jump_023_64a3

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47
    jp Jump_023_64a3


Call_023_66bc:
    ld a, [$cc24]
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_023_66eb

    ld a, [$cc25]
    sub $04
    ld [$cc25], a
    jr z, jr_023_66d2

    jr nc, jr_023_671a

jr_023_66d2:
    ld a, $01
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_023_68a0


jr_023_66eb:
    ld a, [$cc24]
    and $0f
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_023_671a

    ld a, [$cc25]
    sub $02
    ld [$cc25], a
    jr nz, jr_023_671a

    ld a, $06
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_023_68a0


jr_023_671a:
    ld a, [$ba12]
    cp $ff
    ret z

    ld a, [$ba1e]
    ld b, a
    ld a, [$ba1f]
    inc a
    inc a
    inc a
    inc a
    ld [$ba1f], a
    cp b
    jp c, Jump_023_6831

    xor a
    ld [$ba1f], a
    ld a, [$ba1d]
    cp $03
    jr nz, jr_023_67aa

    ld a, [$cc37]
    ld hl, $6744
    rst $00
    ld c, h
    ld h, a
    ld h, h
    ld h, a
    ld a, h
    ld h, a
    sub h
    ld h, a
    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $03
    jr nz, jr_023_675f

    ld a, $00

jr_023_675f:
    ld [$cc37], a
    jr jr_023_67aa

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $02
    jr nz, jr_023_6777

    ld a, $01

jr_023_6777:
    ld [$cc37], a
    jr jr_023_67aa

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $01
    jr nz, jr_023_678f

    ld a, $02

jr_023_678f:
    ld [$cc37], a
    jr jr_023_67aa

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_09c9
    cp $00
    jr nz, jr_023_67a7

    ld a, $03

jr_023_67a7:
    ld [$cc37], a

jr_023_67aa:
    call Call_000_0b1d
    ldh a, [hRandomNumber]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_023_67b9

    add $60

jr_023_67b9:
    sub $30
    ld [$ba1e], a
    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_09c9
    cp $1e
    jr c, jr_023_67dd

    cp $28
    jr c, jr_023_67e4

    cp $3c
    jr c, jr_023_67f6

    cp $5a
    jr c, jr_023_680d

    jr jr_023_680d

jr_023_67dd:
    ld a, $00
    ld [$ba1d], a
    jr jr_023_6831

jr_023_67e4:
    ld a, [$ba1d]
    cp $03
    jr z, jr_023_67dd

    cp $05
    jr z, jr_023_67dd

    ld a, $04
    ld [$ba1d], a
    jr jr_023_6831

jr_023_67f6:
    ld a, [$ba1d]
    cp $03
    jr z, jr_023_6801

    cp $00
    jr nz, jr_023_67dd

jr_023_6801:
    ld a, $03
    ld [$ba1d], a
    ld a, $c0
    ld [$ba1e], a
    jr jr_023_6831

jr_023_680d:
    ld a, [$ba1d]
    cp $03
    jr z, jr_023_67dd

    cp $05
    jr z, jr_023_67dd

    ld a, $02
    ld [$ba1d], a
    jr jr_023_6831

    ld a, [$ba1d]
    cp $04
    jr z, jr_023_682a

    cp $00
    jr nz, jr_023_67dd

jr_023_682a:
    ld a, $05
    ld [$ba1d], a
    jr jr_023_6831

Jump_023_6831:
jr_023_6831:
    ld a, [$ba1d]
    cp $03
    jr nz, jr_023_6850

    ld a, [$ba12]
    cp $03
    jr z, jr_023_6850

    cp $04
    jr z, jr_023_6850

    call Call_023_69e4
    ld a, [$ba1f]
    bit 1, a
    jr nz, jr_023_6850

    call Call_023_6d3d

jr_023_6850:
    ld hl, $6857
    ld a, [$ba1d]
    rst $00
    ld h, l
    ld l, b
    and b
    ld l, b
    push de
    ld l, b
    ld [bc], a
    ld l, c
    dec sp
    ld l, c
    ld h, a
    ld l, c
    sub e
    ld l, c
    ld a, [$ba12]
    cp $00
    jr z, jr_023_6880

    cp $01
    jr z, jr_023_6888

    cp $02
    jr z, jr_023_6890

    cp $03
    jr z, jr_023_6898

Jump_023_6878:
jr_023_6878:
    ld a, $13
    call Call_000_1887
    jp Jump_023_69b1


Jump_023_6880:
jr_023_6880:
    ld a, $00
    call Call_000_1887
    jp Jump_023_69b1


Jump_023_6888:
jr_023_6888:
    ld a, $06
    call Call_000_1887
    jp Jump_023_69b1


jr_023_6890:
    ld a, $0c
    call Call_000_1887
    jp Jump_023_69b1


Jump_023_6898:
jr_023_6898:
    ld a, $15
    call Call_000_1887
    jp Jump_023_69b1


Jump_023_68a0:
    ld a, [$ba12]
    cp $00
    jr z, jr_023_68b5

    cp $01
    jr z, jr_023_68bd

    cp $02
    jr z, jr_023_68c5

    cp $03
    jr z, jr_023_68cd

    jr jr_023_6878

jr_023_68b5:
    ld a, $01
    call Call_000_1887
    jp Jump_023_69b1


jr_023_68bd:
    ld a, $07
    call Call_000_1887
    jp Jump_023_69b1


jr_023_68c5:
    ld a, $0d
    call Call_000_1887
    jp Jump_023_69b1


jr_023_68cd:
    ld a, $16
    call Call_000_1887
    jp Jump_023_69b1


    ld a, [$ba12]
    cp $00
    jr z, jr_023_68ea

    cp $01
    jr z, jr_023_68f2

    cp $02
    jr z, jr_023_68fa

    cp $03
    jr z, jr_023_6898

    jr jr_023_6878

jr_023_68ea:
    ld a, $02
    call Call_000_1887
    jp Jump_023_69b1


jr_023_68f2:
    ld a, $08
    call Call_000_1887
    jp Jump_023_69b1


jr_023_68fa:
    ld a, $0e
    call Call_000_1887
    jp Jump_023_69b1


    ld a, [$ba12]
    cp $00
    jr z, jr_023_691d

    cp $01
    jr z, jr_023_6925

    cp $02
    jr z, jr_023_692d

    cp $03
    jr z, jr_023_6934

    ld a, $12
    call Call_000_1887
    jp Jump_023_69b1


jr_023_691d:
    ld a, $03
    call Call_000_1887
    jp Jump_023_69b1


jr_023_6925:
    ld a, $09
    call Call_000_1887
    jp Jump_023_69b1


jr_023_692d:
    ld a, $0f
    call Call_000_1887
    jr jr_023_69b1

jr_023_6934:
    ld a, $14
    call Call_000_1887
    jr jr_023_69b1

    ld a, [$ba12]
    cp $00
    jr z, jr_023_6952

    cp $01
    jr z, jr_023_6959

    cp $02
    jr z, jr_023_6960

    cp $03
    jp z, Jump_023_6898

    jp Jump_023_6878


jr_023_6952:
    ld a, $04
    call Call_000_1887
    jr jr_023_69b1

jr_023_6959:
    ld a, $0a
    call Call_000_1887
    jr jr_023_69b1

jr_023_6960:
    ld a, $10
    call Call_000_1887
    jr jr_023_69b1

    ld a, [$ba12]
    cp $00
    jr z, jr_023_697e

    cp $01
    jr z, jr_023_6985

    cp $02
    jr z, jr_023_698c

    cp $03
    jp z, Jump_023_6898

    jp Jump_023_6878


jr_023_697e:
    ld a, $05
    call Call_000_1887
    jr jr_023_69b1

jr_023_6985:
    ld a, $0b
    call Call_000_1887
    jr jr_023_69b1

jr_023_698c:
    ld a, $11
    call Call_000_1887
    jr jr_023_69b1

    ld a, [$ba12]
    cp $00
    jp z, Jump_023_6880

    cp $01
    jp z, Jump_023_6888

    cp $02
    jr z, jr_023_69ac

    cp $03
    jp z, Jump_023_6898

    jp Jump_023_6878


jr_023_69ac:
    ld a, $17
    call Call_000_1887

Jump_023_69b1:
jr_023_69b1:
    ld hl, $c800
    ld a, [$cb62]
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
    ld [$cc2c], a
    ld a, [hl+]
    ld [$cc2d], a
    ld a, [hl+]
    ld [$cc2e], a
    ld a, [hl+]
    ld [$cc2f], a
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
    ld [$cc3b], a
    ret


Call_023_69e4:
    ld hl, $69eb
    ld a, [$cc37]
    rst $00
    di
    ld l, c
    jp nz, $9c6a

    ld l, e
    ld [hl], d
    ld l, h
    ld a, [$cc30]
    add $07
    ld l, a
    ld a, [$cc31]
    adc $00
    ld h, a

Jump_023_69ff:
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
    ld a, [$cc30]
    add $07
    sub $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc32]
    ld l, a
    ld a, [$cc33]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc32]
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    sub $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc30]
    add $07
    add $07
    sub $10
    ld l, a
    ld a, [$cc31]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc32]
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    sub $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc30]
    add $10
    ld l, a
    ld a, [$cc31]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc30]
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    sub $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc32]
    sub $02
    ld l, a
    ld a, [$cc33]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


Call_023_6d3d:
    ld hl, $6d44
    ld a, [$cc37]
    rst $00
    ld c, h
    ld l, l
    ld [hl], a
    ld l, l
    and c
    ld l, l
    jp z, $fa6d

    dec h
    cp d
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_023_6df2

    ld a, [$ba21]
    and $02
    jr nz, jr_023_6d70

    ld a, [$ba23]
    and $02
    jp z, Jump_023_6e24

    ld a, [$ba25]
    and $02
    jp z, Jump_023_6e0b

jr_023_6d70:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_023_6e0b

    ld a, [$ba21]
    and $02
    jr nz, jr_023_6d9a

    ld a, [$ba23]
    and $02
    jr z, jr_023_6df2

    ld a, [$ba25]
    and $02
    jp z, Jump_023_6e3d

jr_023_6d9a:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_023_6e24

    ld a, [$ba21]
    and $02
    jr nz, jr_023_6dc3

    ld a, [$ba23]
    and $02
    jp z, Jump_023_6e3d

    ld a, [$ba25]
    and $02
    jr z, jr_023_6df2

jr_023_6dc3:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_023_6e3d

    ld a, [$ba21]
    and $02
    jr nz, jr_023_6deb

    ld a, [$ba23]
    and $02
    jr z, jr_023_6e0b

    ld a, [$ba25]
    and $02
    jr z, jr_023_6e24

jr_023_6deb:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Jump_023_6df2:
jr_023_6df2:
    call Call_023_6e56
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc32]
    add $01
    ld [$cc32], a
    ld a, [$cc33]
    adc $00
    ld [$cc33], a
    ret


Jump_023_6e0b:
jr_023_6e0b:
    call Call_023_6f49
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc30]
    sub $01
    ld [$cc30], a
    ld a, [$cc31]
    sbc $00
    ld [$cc31], a
    ret


Jump_023_6e24:
jr_023_6e24:
    call Call_023_6fc3
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc30]
    add $01
    ld [$cc30], a
    ld a, [$cc31]
    adc $00
    ld [$cc31], a
    ret


Jump_023_6e3d:
jr_023_6e3d:
    call Call_023_6ecf
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc32]
    sub $01
    ld [$cc32], a
    ld a, [$cc33]
    sbc $00
    ld [$cc33], a
    ret


Call_023_6e56:
    ld a, [$ba12]
    cp $00
    jr nz, jr_023_6e77

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_023_6e8f

jr_023_6e77:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $12
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_023_6e8f:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_6ebf

    ldh a, [$ffa7]
    cp e
    jr c, jr_023_6ebf

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_6ebf

    ldh a, [$ffa5]
    cp b
    jr nc, jr_023_6ec4

jr_023_6ebf:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_023_6ec4:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_023_6ecf:
    ld a, [$ba12]
    cp $00
    jr nz, jr_023_6ef0

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_023_6f08

jr_023_6ef0:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_023_6f08:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_023_6f39

    ldh a, [$ffa6]
    cp d
    jr nc, jr_023_6f39

    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_6f39

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_023_6f3e

jr_023_6f39:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_6f3e:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_023_6f49:
    ld a, [$ba12]
    cp $00
    jr nz, jr_023_6f6a

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_023_6f82

jr_023_6f6a:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_023_6f82:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_023_6fb3

    ldh a, [$ffa4]
    cp b
    jr nc, jr_023_6fb3

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_6fb3

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_023_6fb8

jr_023_6fb3:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_6fb8:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_023_6fc3:
    ld a, [$ba12]
    cp $00
    jr nz, jr_023_6fe4

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_023_6ffc

jr_023_6fe4:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_023_6ffc:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_023_702d

    ldh a, [$ffa5]
    cp c
    jr c, jr_023_702d

    ldh a, [$ffa6]
    cp e
    jr nc, jr_023_702d

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_023_7032

jr_023_702d:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_023_7032:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_023_703d:
    ld hl, $73e7
    call Call_000_0a3e
    ld a, [hl]
    ld hl, $7048
    rst $00
    ld d, d
    ld [hl], b
    ld [hl], h
    ld [hl], b
    sub [hl]
    ld [hl], b
    ld e, l
    ld [hl], d
    add a
    ld [hl], e
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $0e
    jr nc, jr_023_7069

    inc [hl]
    ret


jr_023_7069:
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $01
    ld [hl], a
    ret


    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_023_708b

    inc [hl]
    ret


jr_023_708b:
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $02
    ld [hl], a
    ret


    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_023_70c5

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    cp $03
    jr c, jr_023_70bd

    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], a
    jr jr_023_70c5

jr_023_70bd:
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a

jr_023_70c5:
    ld hl, $70cb
    ldh a, [$ffa4]
    rst $00
    db $d3
    ld [hl], b
    call c, $e570
    ld [hl], b
    xor $70
    ld a, [$b948]
    bit 0, a
    jr nz, jr_023_7155

    jr jr_023_70f5

    ld a, [$b948]
    bit 1, a
    jr nz, jr_023_7155

    jr jr_023_70f5

    ld a, [$b948]
    bit 2, a
    jr nz, jr_023_7155

    jr jr_023_70f5

    ld a, [$b948]
    bit 3, a
    jr nz, jr_023_7155

jr_023_70f5:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_023_713a

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $08
    jr nc, jr_023_713b

    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_023_713a:
    dec [hl]

jr_023_713b:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a
    ret


jr_023_7155:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    ret z

    dec hl
    ld a, [hl]
    ld de, $725a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    cp c
    ret c

    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a
    ret


    ld a, [$b8a0]
    cp $00
    jr z, jr_023_71da

    cp $01
    jr z, jr_023_71da

    cp $02
    jr z, jr_023_71da

    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_023_71da

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $08
    jr nc, jr_023_71da

    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_023_71da:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    rst $00
    ldh a, [c]
    ld [hl], c
    inc bc
    ld [hl], d
    dec bc
    ld [hl], d
    ld a, [$b884]
    cp $00
    ret z

    cp $02
    ret z

    ld a, [sCurrentDayCounter]
    cp $0e
    ret nz

    jr jr_023_7217

    ld a, [sCurrentDayCounter]
    cp $0e
    ret nz

    jr jr_023_7217

    ld a, [sCurrentDayCounter]
    cp $00
    jr z, jr_023_7217

    cp $0e
    jr z, jr_023_7217

    ret


jr_023_7217:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    ret nz

    call Call_000_0b1d
    ldh a, [hRandomNumber]
    cp $08
    ret nc

    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


    inc d
    ld a, [bc]
    dec b
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_023_7277

    inc [hl]
    inc hl
    jp Jump_023_737a


jr_023_7277:
    ld a, [$b9a2]
    cp $ff
    jr z, jr_023_7289

    ld b, a
    ld a, [$b9a1]
    and $f0
    or b
    ld [$b9a1], a
    ret


jr_023_7289:
    ld a, $00
    ldh [$ffa5], a
    ld a, [$b949]
    cp $ff
    jr z, jr_023_72c0

    ld a, $01
    ldh [$ffa5], a
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_72c0

    ld a, $02
    ldh [$ffa5], a
    ld a, [$b975]
    cp $ff
    jr z, jr_023_72c0

    ld a, $03
    ldh [$ffa5], a
    ld a, [$b98b]
    cp $ff
    jr z, jr_023_72c0

    ld a, [$b9a1]
    and $f0
    or $0f
    ld [$b9a1], a
    ret


jr_023_72c0:
    ld a, [$b9a1]
    and $f0
    ld b, a
    ldh a, [$ffa5]
    or b
    ld [$b9a1], a
    ld hl, $73e7
    ldh a, [$ffa5]
    call Call_000_0a3e
    ld a, $00
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld d, h
    ld e, l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $50
    jr c, jr_023_7304

    cp $a0
    jr c, jr_023_7309

    ld a, $50
    ld [de], a
    jr jr_023_730c

jr_023_7304:
    ld a, $14
    ld [de], a
    jr jr_023_730c

jr_023_7309:
    ld a, $32
    ld [de], a

Call_023_730c:
jr_023_730c:
    inc de
    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_09c9
    cp $0a
    jr c, jr_023_7327

    cp $5f
    jr c, jr_023_732c

    ld a, $02
    ld [de], a
    jr jr_023_732f

jr_023_7327:
    ld a, $00
    ld [de], a
    jr jr_023_732f

jr_023_732c:
    ld a, $01
    ld [de], a

jr_023_732f:
    inc de
    call Call_000_0b1d
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_09c9
    cp $0a
    jr c, jr_023_734a

    cp $5f
    jr c, jr_023_734f

    ld a, $02
    ld [de], a
    jr jr_023_7352

jr_023_734a:
    ld a, $00
    ld [de], a
    jr jr_023_7352

jr_023_734f:
    ld a, $01
    ld [de], a

jr_023_7352:
    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $02
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $1e
    jr nc, jr_023_7379

    ld a, $ff

jr_023_7379:
    ld [hl], a

Jump_023_737a:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    bit 4, a
    ret nz

    dec hl
    ld a, $01
    ld [hl], a
    ret


    ld hl, $73e7
    ldh a, [$ffa4]
    call Call_000_0a3e
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc [hl]
    ld a, [hl]
    cp $07
    jr nc, jr_023_73ab

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    bit 4, a
    ret nz

    dec hl
    ld a, $01
    ld [hl], a
    ret


jr_023_73ab:
    xor a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ffa4]
    ld hl, $73bb
    rst $00
    jp $cc73


    ld [hl], e
    push de
    ld [hl], e
    sbc $73
    ld a, [$b9a1]
    set 4, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 5, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 6, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 7, a
    ld [$b9a1], a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c

Call_023_73ef:
    call Call_023_74bc
    ld a, [$b949]
    cp $02
    jr z, jr_023_73fd

    cp $04
    jr nz, jr_023_7426

jr_023_73fd:
    ld a, [$b953]
    bit 7, a
    jr z, jr_023_7426

    xor a
    ld [$b94e], a
    ld [$b952], a
    ld a, [$b94f]
    add $0a
    jr nc, jr_023_7414

    ld a, $ff

jr_023_7414:
    ld [$b94f], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_023_7426

    ld a, $03
    ld [$b949], a
    ld a, $01
    ldh [$ffa5], a

jr_023_7426:
    ld a, [$b95f]
    cp $02
    jr z, jr_023_7431

    cp $04
    jr nz, jr_023_745a

jr_023_7431:
    ld a, [$b969]
    bit 7, a
    jr z, jr_023_745a

    xor a
    ld [$b964], a
    ld [$b968], a
    ld a, [$b965]
    add $0a
    jr nc, jr_023_7448

    ld a, $ff

jr_023_7448:
    ld [$b965], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_023_745a

    ld a, $03
    ld [$b95f], a
    ld a, $01
    ldh [$ffa5], a

jr_023_745a:
    ld a, [$b975]
    cp $02
    jr z, jr_023_7465

    cp $04
    jr nz, jr_023_748e

jr_023_7465:
    ld a, [$b97f]
    bit 7, a
    jr z, jr_023_748e

    xor a
    ld [$b97a], a
    ld [$b97e], a
    ld a, [$b97b]
    add $0a
    jr nc, jr_023_747c

    ld a, $ff

jr_023_747c:
    ld [$b97b], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_023_748e

    ld a, $03
    ld [$b975], a
    ld a, $01
    ldh [$ffa5], a

jr_023_748e:
    ld a, [$b98b]
    cp $02
    jr z, jr_023_7498

    cp $04
    ret nz

jr_023_7498:
    ld a, [$b995]
    bit 7, a
    ret z

    xor a
    ld [$b990], a
    ld [$b994], a
    ld a, [$b991]
    add $0a
    jr nc, jr_023_74ae

    ld a, $ff

jr_023_74ae:
    ld [$b991], a
    ldh a, [$ffa5]
    cp $01
    ret z

    ld a, $03
    ld [$b98b], a
    ret


Call_023_74bc:
    ld a, [$b949]
    cp $03
    jr z, jr_023_74dc

    ld a, [$b95f]
    cp $03
    jr z, jr_023_74dc

    ld a, [$b975]
    cp $03
    jr z, jr_023_74dc

    ld a, [$b98b]
    cp $03
    jr z, jr_023_74dc

    xor a
    ldh [$ffa5], a
    ret


jr_023_74dc:
    ld a, $01
    ldh [$ffa5], a
    ret


Call_023_74e1:
    ld a, [$b882]
    cp $06
    ret c

    ld a, [$b949]
    cp $ff
    jr z, jr_023_751a

    ld a, [$b949]
    cp $03
    jr nz, jr_023_74fe

    ld a, [$b948]
    bit 4, a
    jr nz, jr_023_7512

    jr jr_023_751a

jr_023_74fe:
    ld a, [$b949]
    cp $02
    jr z, jr_023_750b

    cp $04
    jr nz, jr_023_750b

    jr jr_023_751a

jr_023_750b:
    ld a, [$b948]
    bit 0, a
    jr z, jr_023_751a

jr_023_7512:
    ld a, [$b953]
    set 4, a
    ld [$b953], a

jr_023_751a:
    ld a, [$b95f]
    cp $ff
    jr z, jr_023_754d

    ld a, [$b95f]
    cp $03
    jr nz, jr_023_7531

    ld a, [$b948]
    bit 4, a
    jr nz, jr_023_7545

    jr jr_023_754d

jr_023_7531:
    ld a, [$b95f]
    cp $02
    jr z, jr_023_753e

    cp $04
    jr nz, jr_023_753e

    jr jr_023_754d

jr_023_753e:
    ld a, [$b948]
    bit 1, a
    jr z, jr_023_754d

jr_023_7545:
    ld a, [$b969]
    set 4, a
    ld [$b969], a

jr_023_754d:
    ld a, [$b975]
    cp $ff
    jr z, jr_023_7580

    ld a, [$b975]
    cp $03
    jr nz, jr_023_7564

    ld a, [$b948]
    bit 4, a
    jr nz, jr_023_7578

    jr jr_023_7580

jr_023_7564:
    ld a, [$b975]
    cp $02
    jr z, jr_023_7571

    cp $04
    jr nz, jr_023_7571

    jr jr_023_7580

jr_023_7571:
    ld a, [$b948]
    bit 2, a
    jr z, jr_023_7580

jr_023_7578:
    ld a, [$b97f]
    set 4, a
    ld [$b97f], a

jr_023_7580:
    ld a, [$b98b]
    cp $ff
    ret z

    ld a, [$b98b]
    cp $03
    jr nz, jr_023_7595

    ld a, [$b948]
    bit 4, a
    jr nz, jr_023_75a7

    ret


jr_023_7595:
    ld a, [$b98b]
    cp $02
    jr z, jr_023_75a1

    cp $04
    jr nz, jr_023_75a1

    ret


jr_023_75a1:
    ld a, [$b948]
    bit 3, a
    ret z

jr_023_75a7:
    ld a, [$b995]
    set 4, a
    ld [$b995], a
    ret


Call_023_75b0:
    ld a, [hl]
    cp $ff
    ret nz

    xor a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_023_75c5:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $64
    jr c, jr_023_75de

    ld a, [hl]
    sub b
    ld [hl], a
    cp $64
    ret nc

    ld a, $f6
    call Call_000_0f47
    ret


jr_023_75de:
    sub b
    ld [hl], a
    ret nc

    xor a
    ld [hl], a
    ret


    ld a, $ff
    ld [$b949], a
    ld [$b95f], a
    ld [$b975], a
    ld [$b98b], a
    ld a, $af
    ld hl, $b94a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b960
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b976
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b98c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$b9a2], a
    ld a, $0f
    ld [$b9a1], a
    ld a, $ff
    ld [$b9a7], a
    ld [$b9b3], a
    ld [$b9bf], a
    ld [$b9cb], a
    ld a, $18
    ld [$b9eb], a
    ld [$b9ed], a
    ld a, $1e
    ld [$b9ef], a
    ld [$b9f1], a
    ld a, $e0
    ld [$ba06], a
    ret


Call_023_763e:
    ld a, $00
    ld [$cb62], a
    ld a, $02
    ld [$c80d], a
    ld a, [$b949]
    cp $ff
    jr nz, jr_023_7656

    ld a, $00
    ld [$c800], a
    jr jr_023_767d

jr_023_7656:
    ld hl, $c806
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b949]
    rst $00
    ld d, h
    ld [hl], a
    ld e, d
    ld [hl], a
    ld h, b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, a
    ld [hl], a

Jump_023_7673:
    ld a, $01
    ld [$c800], a
    ld a, $10
    ld [$c801], a

jr_023_767d:
    ld a, $01
    ld [$cb62], a
    ld a, $02
    ld [$c82d], a
    ld a, [$b95f]
    cp $ff
    jr nz, jr_023_7695

    ld a, $00
    ld [$c820], a
    jr jr_023_76bc

jr_023_7695:
    ld hl, $c826
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $68
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b95f]
    rst $00
    ld [hl], l
    ld [hl], a
    ld a, e
    ld [hl], a
    add c
    ld [hl], a
    add a
    ld [hl], a
    sub b
    ld [hl], a

Jump_023_76b2:
    ld a, $01
    ld [$c820], a
    ld a, $11
    ld [$c821], a

jr_023_76bc:
    ld a, $02
    ld [$cb62], a
    ld a, $01
    ld [$c84d], a
    ld a, [$b975]
    cp $ff
    jr nz, jr_023_76d4

    ld a, $00
    ld [$c840], a
    jr jr_023_76fb

jr_023_76d4:
    ld hl, $c846
    ld a, $a8
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b975]
    rst $00
    sub [hl]
    ld [hl], a
    sbc h
    ld [hl], a
    and d
    ld [hl], a
    xor b
    ld [hl], a
    or c
    ld [hl], a

Jump_023_76f1:
    ld a, $01
    ld [$c840], a
    ld a, $12
    ld [$c841], a

jr_023_76fb:
    ld a, $03
    ld [$cb62], a
    ld a, $01
    ld [$c86d], a
    ld a, [$b98b]
    cp $ff
    jr nz, jr_023_7713

    ld a, $00
    ld [$c860], a
    jr jr_023_773a

jr_023_7713:
    ld hl, $c866
    ld a, $a8
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $68
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b98b]
    rst $00
    or a
    ld [hl], a
    cp l
    ld [hl], a
    jp $c977


    ld [hl], a
    jp nc, $3e77

    ld bc, $60ea
    ret z

    ld a, $13
    ld [$c861], a

jr_023_773a:
    call Call_023_4323
    call Call_023_4337
    call Call_023_434b
    call Call_023_435f
    xor a
    ld [$c80e], a
    ld [$c82e], a
    ld [$c84e], a
    ld [$c86e], a
    ret


    call Call_023_77d8
    jp Jump_023_7673


    call Call_023_77de
    jp Jump_023_7673


    call Call_023_77e4
    jp Jump_023_7673


    ld de, $c800
    call Call_023_77ea
    jp Jump_023_7673


    call Call_023_7814
    jp Jump_023_7673


    call Call_023_77d8
    jp Jump_023_76b2


    call Call_023_77de
    jp Jump_023_76b2


    call Call_023_77e4
    jp Jump_023_76b2


    ld de, $c820
    call Call_023_77ea
    jp Jump_023_76b2


    call Call_023_7814
    jp Jump_023_76b2


    call Call_023_77d8
    jp Jump_023_76f1


    call Call_023_77de
    jp Jump_023_76f1


    call Call_023_77e4
    jp Jump_023_76f1


    ld de, $c840
    call Call_023_77ea
    jp Jump_023_76f1


    call Call_023_7814
    jp Jump_023_76f1


    call Call_023_77d8
    jp $7730


    call Call_023_77de
    jp $7730


    call Call_023_77e4
    jp $7730


    ld de, $c860
    call Call_023_77ea
    jp $7730


    call Call_023_7814
    jp $7730


Call_023_77d8:
    ld a, $00
    call Call_000_1887
    ret


Call_023_77de:
    ld a, $06
    call Call_000_1887
    ret


Call_023_77e4:
    ld a, $0c
    call Call_000_1887
    ret


Call_023_77ea:
    push de
    ld a, $0d
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [de], a
    pop de
    ld a, $06
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $c8
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    inc de
    ld a, $98
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    ld a, $15
    call Call_000_1887
    ret


Call_023_7814:
    ld a, $13
    call Call_000_1887
    ret


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
    ei
    rst $38
    ld a, [hl]
    ldh [rSB], a
    nop
    add b
    nop
    ldh [rP1], a
    rst $10
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    ld a, a
    ld b, b
    rst $38
    ld h, b
    sub l
    ld b, [hl]
    xor b
    adc l
    ld d, b
    sub b
    ld h, b
    rst $38
    or d
    ld c, b
    jp z, $b230

    ld c, b
    ld a, [$ff07]
    dec c
    ld d, e
    call nz, Call_023_632b
    dec d
    ld [de], a
    dec c
    rst $38
    sbc d
    dec h
    and [hl]
    jr @-$64

    dec h
    rst $38
    nop
    db $fd
    ld bc, $0740
    ret


    cp $7b
    add [hl]
    ld c, l
    add [hl]
    rst $38
    rst $08
    nop
    ld c, c
    add [hl]
    res 0, d
    ld c, l
    inc b
    rst $38
    call $cf84
    add [hl]
    call $cb84
    add d
    rst $38
    call Call_023_4f84
    ld b, $ff
    nop
    ret nz

    ld b, b
    rst $38
    ldh [$ff60], a
    db $f4
    dec bc
    or [hl]
    ld a, a
    cp c
    ld h, l
    rst $38
    ldh [$ff1f], a
    xor [hl]
    ld a, l
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    ccf
    ret nz

    rst $30
    cp $9b
    cp $ff
    rst $08
    jr nc, @-$21

    cp $78
    add a
    rst $08
    ld c, b
    rst $38
    add $42
    db $ec
    ld l, b
    sbc $3a
    or [hl]
    ld [hl], c
    rst $38
    or a
    ld [hl], e
    or a
    ld [hl], e
    ld e, $e1
    di
    ld [de], a
    rst $38
    ld [hl], c
    ld d, b
    dec sp
    ld a, [de]
    ld [hl], a
    ld c, [hl]
    db $ed
    call c, $2dff
    inc e
    dec l
    inc e
    ld c, d
    ld a, a
    ld bc, $ffff
    ld c, l
    ldh a, [c]
    or e
    ret nz

    ld e, [hl]
    xor l
    db $ec
    or e
    rst $38
    ld b, c
    add c
    ret nz

    cp a
    ld a, d
    rlca
    sbc l
    dec de
    rst $38
    ld a, [hl]
    dec b
    ld a, a
    dec b
    db $fd
    ld a, d
    ld a, c
    add [hl]
    rst $28
    cp a
    cp [hl]
    ld bc, $01fe
    ld [bc], a
    ld b, h
    rst $30
    pop bc

jr_023_78ff:
    rst $38
    ccf
    ld hl, sp-$39
    cp $f1

jr_023_7905:
    rst $28
    and $ef
    rst $38
    or $ff
    nop
    ld e, l
    cp [hl]
    db $fd
    cp [hl]
    ld [hl], l
    rst $38
    cp [hl]
    ld a, c
    cp [hl]
    pop de
    cp [hl]
    ld l, c
    cp [hl]
    push de
    add a
    cp [hl]
    or c
    ld a, $2b
    nop
    ld hl, $e40e
    rrca
    add c
    stop
    cp $03
    inc b
    add c
    rst $38
    jr @+$01

    add b
    rst $38
    ld [de], a
    rst $38
    sbc $80
    rst $38
    sub l
    ld [$4fb2], a
    ld e, e
    rst $38
    db $fc
    jr c, jr_023_7905

    jp z, $253d

    jp c, $ffa9

    ld [hl], a
    ld [hl], e
    adc h
    ret nc

    dec hl
    adc b
    ld d, a
    rst $00
    rst $38
    jr z, jr_023_78ff

    ld c, l
    adc a
    ld [hl], b
    ldh [$ff9f], a
    ccf
    rst $38
    ret nz

    add b
    rst $38
    ld d, $a9
    inc hl
    push de
    add $ff
    add hl, hl
    dec de
    ld h, l
    ldh [c], a
    dec e
    inc c
    di
    ld a, [$06ef]
    add b
    rst $38

jr_023_796b:
    ld c, c
    add b
    rrca
    call Call_023_4f86
    rst $00
    ld b, $cd
    add h
    ld hl, $010f
    rrca
    ld bc, $a911
    add sp, -$01
    ld d, a
    ld a, [hl]
    xor c
    cp $05
    cp $ff
    nop
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    rrca
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ld e, b
    or a
    jr nc, @-$2f

    rst $38
    ld l, l
    cp [hl]
    rst $18
    jr nz, jr_023_79dd

    ld a, $77
    adc $bd
    ld bc, $01c0
    ld d, $ed
    inc c
    di
    ld b, c
    rrca
    or l
    rst $38
    ld [hl], e
    cp l
    ld a, e
    sbc l
    ld a, e
    ld a, l
    add e
    inc sp
    rst $18
    db $fc
    add h
    rst $38
    xor l
    sbc h
    ld hl, $af00
    sbc [hl]
    rst $38
    and a
    sbc [hl]
    cp $c1
    call nz, Call_000_113f
    rst $38
    cp $00
    jr jr_023_796b

    ld e, a
    and b
    push bc
    add l
    ld b, b
    cp a
    ei
    ret nz

    cp a
    ld bc, $fe08
    ld bc, $5ca3
    db $fd
    rst $38

jr_023_79dd:
    ld [bc], a
    rst $38
    ld e, [hl]
    and c
    ld e, [hl]
    pop hl
    ld e, $1e
    cp $00
    add hl, bc
    db $fd
    db $f4
    db $fd
    or $ff
    or $ed
    ei
    and $ad
    add b
    nop
    cp a
    or $eb
    or $69
    cp $80
    rrca
    ld c, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, l
    rst $18
    cp [hl]
    ld h, e
    sbc h
    ld d, l
    xor d
    nop
    ld a, [de]
    cp $01
    sbc a
    cp $7d
    cp $45
    add $23
    nop
    ld bc, $8322
    rst $28
    ld a, h
    xor e
    ld a, h
    sub e
    ld b, h
    nop
    rst $38
    nop
    ret nc

    rst $38
    ld b, b
    rst $18
    ld b, b
    pop de
    ld c, a
    call nc, $d04f
    rst $18
    ld c, a
    rst $18
    ld b, b
    ret nc

    ld c, a
    ld [bc], a
    ld [de], a
    nop
    ld a, e
    ld l, a
    rst $38
    adc h
    rst $38
    ld hl, $2210
    db $10
    rst $28
    inc bc
    ld bc, $4edf
    rst $38
    and l
    rst $38
    ld bc, $2310
    ld [$fff7], sp
    rst $38
    nop
    add hl, bc
    nop
    ld sp, hl
    nop
    ret


    ldh a, [rIE]
    ld l, c
    ldh a, [$ff09]
    ldh a, [$fff9]
    nop
    add hl, bc
    ldh a, [$fffd]
    rst $38
    nop
    inc hl
    rst $38
    nop
    ei
    ld a, a
    sbc $61
    rst $38
    sbc d
    ld l, c
    ei
    ld [$699a], sp
    ld c, d
    ld a, a
    rst $38
    add c
    ld a, a
    db $e4
    sub a
    ld sp, hl
    rst $00
    cp h
    sbc e
    ld a, a
    cp h
    db $db
    or $d2
    db $f4
    db $db
    sub c
    db $10
    add hl, hl
    db $fd
    ld e, l
    db $10
    dec bc
    ld a, [hl-]
    ld a, [$ffd3]
    inc b
    db $fc
    rst $38
    or e
    di
    jr @+$01

    ld [hl], b
    ld hl, sp+$1f
    rra
    rst $28
    add sp, -$18
    ld d, [hl]
    ld d, a
    ldh a, [$ff0b]
    ret nz

    ld a, [bc]
    ld a, [bc]
    rst $38
    adc d
    rst $38
    db $db
    ei
    and h
    and h
    ld e, l
    ld e, l
    rst $38
    ldh a, [$fff0]
    dec bc
    rrca
    jr nz, jr_023_7acf

    rst $18
    rst $18
    rst $38
    jr @+$01

    jp nz, $40ff

    ld e, a
    xor b
    rst $38
    rst $38
    rlca
    rlca
    ld [$c90f], sp
    ret


    db $10
    rra
    rst $38
    ld e, [hl]
    ld h, e
    daa
    push bc
    ld e, a
    add d
    rst $38
    and d
    rst $38
    ld a, [hl]
    sbc l

jr_023_7acf:
    call c, Call_023_60a3
    cp a
    jp $ff83


    ld c, d
    ld a, a

Jump_023_7ad8:
    add hl, sp
    rst $00
    add $01
    cp a
    inc b
    rst $38
    rst $38
    ld b, h
    ld a, l
    cp d
    add hl, sp
    add $7f
    ld a, [hl]
    rst $38
    ld l, a
    or $ed
    or $6f
    or $cf
    and $7f
    ld c, c
    db $f4
    ld e, c
    or $1b
    or $8f
    nop
    jr nz, jr_023_7b72

    ld bc, $fdfe
    add b
    rla
    ld bc, $41fe
    add b
    rrca
    jp $00ff


    add l
    rrca
    dec b
    db $10
    add l
    rrca
    dec b
    db $10
    jp nc, $ee4f

    inc hl
    nop
    db $d3
    ld c, a
    pop de
    jr nz, jr_023_7b1a

jr_023_7b1a:
    db $d3
    ld c, a
    jp nc, $efff

    sub $ee
    db $d3
    db $eb
    ld d, $6e
    sub e
    cp $40
    nop
    db $d3
    db $eb
    ld d, l
    ld l, l
    ld c, b
    rst $30
    ld l, l
    cp $20
    nop
    db $ed
    rst $30
    call z, $adf6
    or a
    ld l, d
    rst $38
    ld [hl], d
    xor e
    or e
    ld c, c
    ldh a, [$ff59]
    ldh a, [$ffd9]
    rst $38
    ldh a, [$ff79]
    ld [hl], b
    reti


    ret nc

    cp c
    or b
    reti


    cp a
    ret nc

    ld e, c
    ld d, b
    cp d
    ld l, c
    sbc d
    jr nz, jr_023_7b55

jr_023_7b55:
    jp c, Jump_023_69ff

    ei
    ld l, c
    sbc e
    add hl, bc
    cp e
    add hl, hl
    db $db
    rst $38
    ld c, c
    cp $db
    or l
    sbc e
    or h
    db $d3
    push af
    rst $38
    db $db
    db $fc
    db $db
    xor h
    db $db
    cp [hl]
    jp c, $ffb4

jr_023_7b72:
    db $db
    ld c, l
    rst $38
    db $10
    ldh a, [$ff8b]
    adc a
    ld a, [bc]
    rst $38
    ld a, [$fd21]
    ld b, h
    ld a, h
    inc hl
    db $e3
    sub l
    cp $a0
    scf
    jr nc, jr_023_7bb8

    add h
    add h
    ld [hl], b
    ld [hl], b
    add c
    rst $38
    add c
    ld a, [de]
    ld a, [de]
    ldh a, [$fff0]
    add hl, hl
    add hl, hl
    ld d, l
    rst $38
    ld d, l
    adc d
    adc d
    nop
    nop
    dec b
    dec b
    ld b, b
    rst $38
    ld b, b
    inc b
    inc b
    ld bc, $9e01
    sbc [hl]
    ld hl, $33ff
    ld c, b
    ld c, a
    and d
    and e
    ld c, b
    rst $38
    jr nz, @+$01

    ld hl, $1714
    ldh [$ffe7], a
    ld a, [bc]

jr_023_7bb8:
    dec sp
    ld b, b
    rst $38
    ccf
    ld c, d
    or l
    ld [hl], l
    add d
    push de
    xor b
    ld c, d
    rst $38
    or l
    rst $38
    add b
    ld h, $da
    sbc b
    rst $20
    add hl, de
    rst $38
    and $ad
    ld c, d
    ld [hl], a
    jr jr_023_7c2c

    and [hl]
    add c
    cp $c0
    ld a, [hl-]
    ld [de], a
    call z, Call_023_730c
    adc e
    or $09
    rst $38
    and $09

jr_023_7be2:
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    rst $38
    db $fc
    ld c, $fa
    ld hl, sp+$07
    ld bc, $a5fe
    rst $38
    cp $69
    ld a, [hl]
    dec a
    ld a, $2d
    ld l, [hl]
    sbc c
    jp nz, Jump_000_1002

    ld a, l
    ret nz

    rra
    pop bc
    ld h, $61
    cpl
    ld bc, $832f
    ld a, h
    jr c, jr_023_7c2b

    nop
    or d
    cpl
    ld [hl-], a
    jr nc, jr_023_7be2

    ld c, [hl]
    db $d3
    ret nz

    rrca
    add b
    rrca
    cp h
    add b
    nop
    pop bc
    nop
    sbc e
    xor e
    ld e, l
    ld l, l
    ld b, c
    nop
    sbc [hl]

jr_023_7c22:
    rst $38
    xor [hl]
    db $dd
    db $ed
    sbc h
    xor h
    call c, $6eec

jr_023_7c2b:
    rst $38

jr_023_7c2c:
    halt
    db $ed
    push af
    ld l, [hl]
    halt
    ld c, h
    ld d, h
    ld l, $dd
    ld [hl], $41
    nop
    dec c
    dec d
    ld sp, hl
    jp nz, $d90f

jr_023_7c3e:
    ret nc

    ei
    ld sp, hl
    ldh a, [rSTAT]
    nop
    ld e, c
    ld d, b
    jp c, $fb48

    db $ed
    ld l, c
    add c
    rrca
    sbc d
    ld [$0043], sp
    cp [hl]
    db $db
    dec a
    rst $38
    sbc e
    inc h
    db $d3
    ld h, l
    db $db
    ld l, h
    db $db
    inc a
    rst $38
    db $db
    ld l, $da
    inc h
    sbc e
    inc bc

jr_023_7c64:
    rst $38
    ld b, [hl]
    rst $38
    add $95
    rst $38
    ld b, e
    ei
    inc a
    db $fc
    ld b, c
    rst $38
    pop de
    inc bc
    rst $38
    nop
    rst $28
    sub $d6
    jr nc, @+$01

    jr nc, jr_023_7c3e

    jp $b838


    rlca
    rlca
    ei
    rst $38
    ei
    inc b
    inc b
    di
    di
    or c
    or c
    ld c, $ff
    ld c, $a9
    xor c
    ld a, h
    ld a, h
    rst $00
    rst $00
    jr nc, @+$01

    jr nc, jr_023_7c64

    adc $38
    jr c, jr_023_7c22

    adc a
    inc de
    rst $38
    inc de
    adc $cf
    cp b
    rst $38
    inc h
    ccf
    ld c, c
    rst $18
    ld c, a
    ld [bc], a
    inc bc
    jr c, @+$41

    nop
    ld b, b
    cp $46
    rst $38
    pop af
    sbc l
    jp $d92d


    cp l
    db $db
    cpl
    rst $38
    res 5, a
    db $db
    ld e, a
    ld h, b
    rst $38
    rrca
    rst $38
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $38
    rst $28
    ld e, l
    rst $28
    ld a, [$ff07]
    ldh a, [rIE]
    rst $38
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    rst $30
    rst $38
    rst $30
    ld bc, $4543
    or $82
    db $fd
    rst $38
    inc e
    ld a, [$f589]
    ld d, $ce
    and l
    db $dd
    rst $38
    ld a, a
    add b
    add b
    ld b, b
    ld bc, $12c1
    ld d, d
    ei
    ld bc, $4141
    nop
    ld [bc], a
    ld b, d
    rst $38
    nop
    rrca
    rst $38
    adc a
    dec hl
    xor a
    rrca
    sbc a
    dec e
    sbc a
    ld a, [bc]
    rst $18
    adc a
    dec [hl]
    cp a
    ld a, [bc]
    sbc a
    ld b, b
    cpl
    ld b, b
    rst $38
    ld a, a
    nop
    cp e
    ld a, a
    rst $00
    ld a, a
    sub b
    ld a, a
    ld b, c
    ld a, [hl-]
    cp $03
    jr nc, jr_023_7d74

    ld [hl], a
    ld [hl+], a
    rst $38
    rst $00
    rst $38
    ld [de], a
    ld a, h
    ld d, d
    ld b, d
    ld b, c
    ld d, l
    ld h, [hl]
    ld h, a
    add hl, de
    rst $18
    ld h, h
    ld [bc], a
    ld b, e
    ldh a, [rLCDC]
    cpl
    ld a, [bc]
    ld a, $03
    jr nc, jr_023_7d44

    inc b
    ld h, $d3

jr_023_7d40:
    and l
    ld e, e

jr_023_7d42:
    rst $38
    ld [hl], h

jr_023_7d44:
    adc e
    dec c
    di
    jr jr_023_7d40

    jr jr_023_7d42

    rst $38
    ld a, [de]
    or $f0
    rrca
    ld [$07d8], sp
    rst $38
    rst $38
    add c
    rst $38
    inc de
    rst $38
    ld b, b
    rst $38
    ld bc, $fffd
    ld h, b
    rst $38
    ld b, $ff
    cpl
    cpl
    rra
    rra
    rst $38
    ret c

    ld hl, sp+$05
    add a
    rrca
    rst $38
    add d
    add d
    rst $38
    rlca
    rst $38
    jr nz, @+$01

jr_023_7d74:
    adc $cf
    jr nz, jr_023_7d98

    rst $38
    rst $30
    rst $38
    jr z, jr_023_7da5

    db $dd
    rst $38
    cp h
    cp h
    rst $38
    set 1, e
    nop
    rst $38
    jp nc, $10f3

    rra
    rst $38
    ld b, c
    db $fd
    ld d, b
    ld e, a
    add b
    rst $38
    ld e, d
    ld a, a
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38

jr_023_7d98:
    ld [hl], l
    ld e, e
    dec [hl]
    reti


    rst $38
    ld l, l
    res 5, l
    db $db
    daa
    db $db
    xor [hl]
    db $db

jr_023_7da5:
    rst $38
    ld [hl], $db
    or [hl]
    db $db
    db $d3
    rst $20
    di
    rst $28
    rst $38
    ld [hl], a
    rst $28
    or $ef
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
    rst $38
    rst $30
    ld l, [hl]
    ld e, [hl]
    dec h
    db $dd
    ld l, [hl]
    sbc $a5
    ld a, e
    db $dd
    ld l, $44
    nop
    dec h
    ld h, l
    ld a, [bc]
    ld c, d
    ld b, c
    nop
    rst $38
    dec d
    ld d, l
    ld c, d
    ld a, [bc]
    ld d, l
    dec d
    ld l, d
    ld a, [hl+]
    rst $38
    dec [hl]
    cp a
    ld a, [de]
    sbc a
    dec h
    xor a
    ld e, d
    rst $18
    rst $30
    or h
    ccf
    jp nc, $0f00

    add b
    ld a, a
    ld h, l
    ld e, [hl]
    rst $38
    add hl, hl
    jp c, $da79

    or e
    jp nc, $d435

    rst $38
    xor c
    call c, $de23
    sbc a
    ldh [rSC], a
    db $fd
    rst $38
    cpl
    db $fd
    ld c, e
    reti


    jp z, Jump_023_7ad8

    ld hl, sp-$11
    ld [hl], a
    db $fd
    ld [bc], a
    db $fd
    pop hl
    ld b, e
    and e
    cp $11
    ccf
    ld e, h
    add hl, bc
    ld c, h
    rst $38
    cp $6b
    add h
    inc h
    dec bc
    ld h, a
    cp $01
    ld a, [de]
    ld e, [hl]
    db $e4
    and $80
    cp l
    ld e, d
    ret c

    rst $38
    ld h, a
    add e
    inc bc
    add b
    ld a, a
    ld a, [$390f]
    rst $38
    scf
    db $fc
    dec bc
    db $fd
    dec bc
    ld a, [$f2f5]
    rst $38
    dec c
    ld a, [hl]
    ld a, h
    ld [bc], a
    db $fd
    ld a, d
    ld b, a
    ld c, l
    db $fd
    adc e
    pop hl
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    cp b
    ld b, a
    ret nz

    ld a, a
    rst $38
    add [hl]
    ld b, $4a
    ld a, a
    ld [hl], c
    adc a
    adc h
    inc bc
    rst $38
    ld a, a
    add hl, bc
    cp $89
    ld a, [$7275]
    adc h
    ei
    cp $fd
    ld bc, $4e1e
    ldh a, [$ffb2]
    ret nz

    ld e, a
    db $fd
    xor h
    inc bc
    ld e, [hl]
    cp $03
    ccf
    dec a
    rst $38
    ld [bc], a
    xor $20
    nop
    db $fc
    db $fd
    ld [bc], a
    ld bc, $7e5e
    ld e, e
    inc [hl]
    cp $00
    db $10
    xor [hl]
    db $db
    ld l, $db
    and h
    db $db
    inc [hl]
    rst $38
    db $db
    and h
    reti


    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $38
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $e7ff
    or b
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    jr z, @+$01

    rst $30
    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    ei
    rst $20
    ld [$1002], sp
    ld l, a
    sbc $a7
    call c, $ff2d
    db $db
    xor d
    rst $10
    dec [hl]
    rst $08
    cp a
    ret nz

    rst $38
    rst $28
    add b
    add b
    ld a, a
    ld a, a
    or d
    cpl
    xor d
    rst $38
    ld e, l
    call nc, $1d03
    or d
    ld l, a
    ret nc

    ld b, b
    ld [hl], b
    ld d, h
    jr nc, jr_023_7f50

    add b
    nop
    ccf
    ld h, b
    nop
    rra
    nop
    ret nz

    ret nz

    dec b
    ld h, c
    ld b, e
    ld [hl], h
    call c, $32e3
    ld bc, $0162
    nop
    ld b, $e0
    ld [hl], b
    inc bc
    inc bc
    db $fc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [hl], a
    ld a, a
    nop
    pop bc
    ld a, $bf
    ld b, b
    rst $38
    adc e
    ld a, [bc]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld a, [hl]
    add b
    cp $00
    ld e, d
    inc bc
    ld b, a
    cp c
    ld a, [rTIMA]
    cp l
    rst $38
    ld b, d
    cp l
    jp nz, Jump_000_3e3d

    jp nz, $ff80

    rst $38
    add b
    ld a, a
    sub l
    ld l, d
    ld [$aa04], a
    ld d, c
    ei
    sub l
    ld l, d
    ret nz

    ld h, [hl]
    or [hl]
    or b
    rst $08
    ld [hl-], a
    call Call_023_5bff
    sub l
    xor $31
    or e
    ld c, l
    ld [bc], a
    db $fd
    or e
    cp $01
    ld bc, $053d
    ld c, [hl]
    ld a, a
    sbc h
    dec b
    ld c, [hl]
    ld a, l
    rst $38
    add e
    add d
    ld bc, $027f
    rst $38
    add d

jr_023_7f50:
    rst $38
    rst $38
    ld a, h
    ld a, l
    add d
    ld a, a
    ld a, [hl]
    ld h, h
    ld c, e
    dec h
    cp a
    jp c, $d16e

    or b
    rst $08
    db $10
    jr nz, jr_023_7f72

    db $10
    rst $38
    rst $08
    adc a
    ldh a, [$ff1f]
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_023_7f95

    nop

jr_023_7f72:
    rst $38
    nop
    ld hl, sp+$07
    rrca
    add hl, de
    ldh a, [$ffc1]
    ld h, $43
    nop
    rst $38
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

jr_023_7f95:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
