; Disassembly of "harvest_moon.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    inc bc
    xor a
    ld [wPetIsPresentOnMap], a
    ld [$c780], a
    call ClearBGMap0
    call ClearBGMap1
    call ClearShadowOAMBuffer
    push hl
    push af
    ld l, $2c
    ld h, $6c
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld hl, $742c
    ld c, $0f
    ld de, $8800
    call Call_000_31a0
    ld hl, $7860
    ld c, $03
    ld de, $9000
    call Call_000_31a0
    ld hl, $5a33
    ld c, $0d
    ld de, $8000
    call Call_000_31a0
    ld hl, $58cd
    ld c, $0d
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
    call Call_003_6250
    call Call_000_1205
    call Call_003_61de
    ld a, $00
    call RST_TableJumpBankSwitch
    ld hl, $7010
    ld a, $0f
    call BankSwitchCallHL
    call Call_003_7684
    ld hl, $705a
    ld a, $0f
    call BankSwitchCallHL
    ld a, [$b943]
    or a
    call nz, Call_003_635f
    ld a, [$b944]
    or a
    call nz, Call_003_6368
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
    ld [wTextID], a
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
    ld a, [sCowFeedFlag]
    or a

Jump_003_40ff:
    call nz, Call_003_6371
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_003_410e

    call Call_003_639b
    ret


jr_003_410e:
    ld a, [$b9a1]
    and $0f
    cp $0f
    ret nz

    call Call_000_3dfd
    ld a, [$b9a2]
    cp $ff
    ret z

    call Call_003_637a
    ld a, $1e
    call Call_000_0f47
    ret


    call Call_000_0d90
    xor a
    ld [wPlayerMovementX], a
    ld [wPlayerMovementY], a
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_003_4147

    call Call_000_3cf8
    call Call_000_2d67
    call Call_000_36f4
    call Call_003_4285
    ret


jr_003_4147:
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr z, jr_003_415d

    call Call_000_3cf8
    call Call_000_2d67
    call Call_000_36f4
    call Call_003_42d7
    ret


jr_003_415d:
    call Call_000_3cf8
    call Call_003_51ec
    call Call_000_2d67
    call Call_000_36f4
    ld hl, $6ba5
    ld a, $01
    call BankSwitchCallHL
    call Call_003_6338
    call Call_003_4330
    call Call_003_4344
    call Call_003_4358
    call Call_003_436c
    ld a, [$cc1b]
    cp $00
    ret nz

    ld hl, $418d
    ld a, [$cb62]
    rst $00
    sub l
    ld b, c
    pop de
    ld b, c
    dec c
    ld b, d
    ld c, c
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
    call Call_003_6702
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
    call Call_003_6702
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
    call Call_003_6702
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
    call Call_003_6702
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


Call_003_4285:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_003_42ca

    ld a, [$cc27]
    or a
    jr nz, jr_003_42ae

    ld a, [sPlayerGender]
    or a
    jr nz, jr_003_42a2

    ld a, $e7
    call Call_000_3f52
    jr jr_003_42a7

jr_003_42a2:
    ld a, $e8
    call Call_000_3f52

jr_003_42a7:
    ld a, $f0
    ld [$cc27], a
    jr jr_003_42ca

jr_003_42ae:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_003_42ca

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $25
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_003_42ca:
    call Call_003_4330
    call Call_003_4344
    call Call_003_4358
    call Call_003_436c
    ret


Call_003_42d7:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_003_4323

    ld a, [wTextID]
    cp $ff
    jr nz, jr_003_4323

    ld a, [$cc27]
    or a
    jr nz, jr_003_4307

    ld a, [sPlayerGender]
    or a
    jr nz, jr_003_42fb

    ld a, $a9
    call Call_000_3f52
    jr jr_003_4300

jr_003_42fb:
    ld a, $ad
    call Call_000_3f52

jr_003_4300:
    ld a, $f0
    ld [$cc27], a
    jr jr_003_4323

jr_003_4307:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_003_4323

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $23
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_003_4323:
    call Call_003_4330
    call Call_003_4344
    call Call_003_4358
    call Call_003_436c
    ret


Call_003_4330:
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


Call_003_4344:
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


Call_003_4358:
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


Call_003_436c:
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
    jr c, jr_003_43b8

jr_003_43b8:
    sbc d
    ld hl, $4d04
    ld c, [hl]
    ld c, a
    jr z, jr_003_43c0

jr_003_43c0:
    jp z, $d643

    ld b, e
    ldh [c], a
    ld b, e
    xor $43
    ld a, [$9843]
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
    ld b, $44
    inc h
    ld b, h
    inc c
    ld b, h
    ld a, [hl+]
    ld b, h
    jr jr_003_4490

    ld [hl], $44
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

Call_003_445a:
    ld a, [$cc19]
    cp $ff
    jp z, Jump_003_4865

    ld hl, $4469
    ld a, [$cc16]
    rst $00
    and e
    ld b, l
    adc l
    ld b, h
    adc $44
    db $eb
    ld b, h
    dec hl
    ld b, l
    ld b, [hl]
    ld b, [hl]
    sbc c
    ld b, [hl]
    jp hl


    ld b, [hl]
    sbc c
    ld b, [hl]
    jp hl


    ld b, [hl]
    sbc c
    ld b, [hl]
    jp hl


    ld b, [hl]
    sbc c
    ld b, [hl]
    jp hl


    ld b, [hl]
    sbc c
    ld b, [hl]
    add hl, sp
    ld b, a
    adc c
    ld b, a
    ld h, $48
    ld hl, $4380

jr_003_4490:
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

jr_003_44a5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_44a5

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_003_44c4

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_44c4:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld a, [$cc17]
    cp $08
    jr nz, jr_003_44e1

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_44e1:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld hl, $43a0
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

jr_003_4503:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4503

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_003_4522

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_4522:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_003_45a3

    ld c, $4f
    ld a, $01
    ldh [c], a
    ld hl, $43c0
    ld a, [$cc18]
    call LoadWordFromTableHL
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    call SyncToBlankPeriod
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call SyncToBlankPeriod
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld c, $4f
    xor a
    ldh [c], a
    ld hl, $43c0
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

jr_003_457c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_457c

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_003_459a

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_003_45a3

jr_003_459a:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_003_45a3

Jump_003_45a3:
jr_003_45a3:
    ld a, [wInputFreezeTimer]
    or a
    ret z

    dec a
    ld [wInputFreezeTimer], a
    cp $26
    jr z, jr_003_45b4

    or a
    jr z, jr_003_4602

    ret


jr_003_45b4:
    ld a, [wPlayerSpriteID]
    cp $5f
    jr z, jr_003_45c8

    cp $60
    jr z, jr_003_45c8

    cp $61
    jr z, jr_003_45c8

    cp $62
    jr z, jr_003_45c8

    ret


jr_003_45c8:
    ld a, [$cc20]
    cp $05
    jr nz, jr_003_45d9

jr_003_45cf:
    ld a, $1c
    call $16d1
    xor a
    ld [$cc20], a
    ret


jr_003_45d9:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr nz, jr_003_45cf

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a
    or a
    jr z, jr_003_4602

jr_003_4600:
    pop hl
    ret


jr_003_4602:
    ld a, [$cb91]
    or a
    jr z, jr_003_4600

    ld [wInputFreezeTimer], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [wInputFreezeTimer]
    cp $b4
    jr z, jr_003_462a

    cp $6e
    jr z, jr_003_4631

    cp $50
    jr z, jr_003_4638

    cp $a0
    jr z, jr_003_463f

jr_003_462a:
    ld a, $8a
    call Call_000_151d
    pop hl
    ret


jr_003_4631:
    ld a, $8b
    call Call_000_151d
    pop hl
    ret


jr_003_4638:
    ld a, $8c
    call Call_000_151d
    pop hl
    ret


jr_003_463f:
    ld a, $8d
    call Call_000_151d
    pop hl
    ret


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_4677

    ld a, [$cc18]
    ld hl, $4442
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
    ld b, $06
    call Call_000_0930
    ld c, b

jr_003_466b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_466b

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_4677:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_468f

    xor a
    ld [$cc17], a
    ld a, $06
    ld [$cc16], a
    ld a, $00
    call RST_TableJumpBankSwitch
    jp Jump_003_45a3


jr_003_468f:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld a, [$cc17]
    cp $02
    jr nc, jr_003_46ca

    ld a, [$cc18]
    ld hl, $444a
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
    ld b, $06
    call Call_000_0930
    ld c, b

jr_003_46be:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_46be

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_46ca:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_46df

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_46df:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld a, [$cc17]
    cp $02
    jr nc, jr_003_471a

    ld a, [$cc18]
    ld hl, $4446
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
    ld b, $06
    call Call_000_0930
    ld c, b

jr_003_470e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_470e

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_471a:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_472f

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_472f:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_476a

    ld a, [$cc18]
    ld hl, $4442
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
    ld b, $06
    call Call_000_0930
    ld c, b

jr_003_475e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_475e

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_476a:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_477f

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_45a3


jr_003_477f:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_47ba

    ld a, [$cc18]
    ld hl, $444a
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
    ld b, $06
    call Call_000_0930
    ld c, b

jr_003_47ae:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_47ae

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_47ba:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_47fc

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
    jr z, jr_003_4806

    xor a
    ld [$cc18], a
    ld a, $29
    ld [$cb4a], a
    ld a, $61
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    jp Jump_003_45a3


jr_003_47fc:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


jr_003_4806:
    xor a
    ld [$cc18], a
    ld a, $2a
    ld [$cb4a], a
    ld a, $64
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    jp Jump_003_45a3


    ld hl, $444e
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

jr_003_483e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_483e

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr z, jr_003_485b

    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_45a3


jr_003_485b:
    xor a
    ld [$cc17], a
    ld [$cc16], a
    jp Jump_003_45a3


Jump_003_4865:
    ld a, [$cc19]
    cp $ff
    ret nz

    ld a, [wInputFreezeTimer]
    cp $01
    jp nz, Jump_003_45a3

    ld hl, $487a
    ld a, [$cc1e]
    rst $00
    add d
    ld c, b
    sub h
    ld c, b
    and b
    ld c, b
    xor h
    ld c, b
    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_003_45a3


    ld a, $21
    ld [$cb4a], a
    ld a, $27
    call $16d1
    jr jr_003_48b6

    ld a, $22
    ld [$cb4a], a
    ld a, $25
    call $16d1
    jr jr_003_48b6

    ld a, $23
    ld [$cb4a], a
    ld a, $23
    call $16d1

jr_003_48b6:
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    xor a
    ld [$cc19], a
    jp Jump_003_45a3


Call_003_48cc:
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc1b]
    or a
    ret nz

    ld a, [$cb34]
    and $01
    jr z, jr_003_48f4

    ld a, [wRightOrUpSideFacingTileID]
    cp $05
    jp z, Jump_003_4d14

    cp $06
    jp z, Jump_003_4d1f

    cp $07
    jp z, Jump_003_4d2a

    cp $08
    jp z, Jump_003_4d35

jr_003_48f4:
    ld a, [sItemSlot]
    ld hl, sInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_003_4b85

    ld hl, $527d
    ld a, $01
    call BankSwitchCallHL
    ld a, [sItemSlot]
    cp $00
    jr nz, jr_003_491a

    ld a, [sInventory]
    jr jr_003_491d

jr_003_491a:
    ld a, [sInventory+1]

jr_003_491d:
    ldh [$ffab], a
    cp $0b
    jp z, Jump_003_4a29

    cp $0c
    jp z, Jump_003_4a29

    cp $0d
    jp z, Jump_003_4a29

    cp $0e
    jp z, Jump_003_4a29

    cp $13
    jp z, Jump_003_4a29

    cp $14
    jp z, Jump_003_4a29

    cp $16
    jp z, Jump_003_4a29

    cp $15
    jp z, Jump_003_4a29

    cp $00
    jp z, Jump_003_4b38

    cp $08
    jr z, jr_003_496a

    cp $09
    jp z, Jump_003_49e2

    cp $52
    jp z, Jump_003_4af0

    cp $01
    jp z, Jump_003_4a7f

    cp $02
    jp z, Jump_003_4b81

    cp $10
    jp z, Jump_003_4ede

    ret


jr_003_496a:
    ld hl, $4971
    ld a, [wPlayerFacingDirection]
    rst $00
    ld a, c
    ld c, c
    ld a, [hl]
    ld c, c
    add e
    ld c, c
    adc b
    ld c, c
    call Call_003_59f6
    jr jr_003_498b

    call Call_003_5dea
    jr jr_003_498b

    call Call_003_5fe4
    jr jr_003_498b

    call Call_003_5bf0

jr_003_498b:
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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
    call Call_003_639c
    ld [$cc1e], a
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_49e2:
    ld hl, $49e9
    ld a, [wPlayerFacingDirection]
    rst $00
    pop af
    ld c, c
    or $49
    ei
    ld c, c
    nop
    ld c, d
    call Call_003_59f6
    jr jr_003_4a03

    call Call_003_5dea
    jr jr_003_4a03

    call Call_003_5fe4
    jr jr_003_4a03

    call Call_003_5bf0

jr_003_4a03:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_4a29:
    ld hl, $4a30
    ld a, [wPlayerFacingDirection]
    rst $00
    jr c, @+$4c

    dec a
    ld c, d
    ld b, d
    ld c, d
    ld b, a
    ld c, d
    call Call_003_59f6
    jr jr_003_4a4a

    call Call_003_5dea
    jr jr_003_4a4a

    call Call_003_5fe4
    jr jr_003_4a4a

    call Call_003_5bf0

jr_003_4a4a:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $51dc
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
    call Call_003_760b
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
    call Call_003_75f6
    ret


Jump_003_4a7f:
    ld a, [$cc23]
    or a
    ret nz

    ld hl, $4a8b
    ld a, [wPlayerFacingDirection]
    rst $00
    sub e
    ld c, d
    sbc b
    ld c, d
    sbc l
    ld c, d
    and d
    ld c, d
    call Call_003_59f6
    jr jr_003_4aa5

    call Call_003_5dea
    jr jr_003_4aa5

    call Call_003_5fe4
    jr jr_003_4aa5

    call Call_003_5bf0

jr_003_4aa5:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    jr z, jr_003_4acb

    cp $04
    ret nz

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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

jr_003_4acb:
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_4af0:
    ld hl, $4af7
    ld a, [wPlayerFacingDirection]
    rst $00
    rst $38
    ld c, d
    inc b
    ld c, e
    add hl, bc
    ld c, e
    ld c, $4b
    call Call_003_59f6
    jr jr_003_4b11

    call Call_003_5dea
    jr jr_003_4b11

    call Call_003_5fe4
    jr jr_003_4b11

    call Call_003_5bf0

jr_003_4b11:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_4b38:
    ld hl, $4b3f
    ld a, [wPlayerFacingDirection]
    rst $00
    ld b, a
    ld c, e
    ld c, h
    ld c, e
    ld d, c
    ld c, e
    ld d, [hl]
    ld c, e
    call Call_003_59f6
    jr jr_003_4b59

    call Call_003_5dea
    jr jr_003_4b59

    call Call_003_5fe4
    jr jr_003_4b59

    call Call_003_5bf0

jr_003_4b59:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_4b81:
    call Call_003_627c
    ret


Jump_003_4b85:
    ld a, [$cb4a]
    or a
    jp nz, Jump_003_4e22

    ld hl, $4b93
    ld a, [wPlayerFacingDirection]
    rst $00
    sbc e
    ld c, e
    and b
    ld c, e
    and l
    ld c, e
    xor d
    ld c, e
    call Call_003_59f6
    jr jr_003_4bad

    call Call_003_5dea
    jr jr_003_4bad

    call Call_003_5fe4
    jr jr_003_4bad

    call Call_003_5bf0

jr_003_4bad:
    ldh a, [$ffa4]
    or a
    jp z, Jump_003_4cf7

    ld a, [$cc1b]
    cp $00
    ret nz

    ldh a, [$ffa9]
    ld hl, $4bbf
    rst $00
    ret


    ld c, e
    ret


    ld c, e
    ret


    ld c, e
    daa
    ld c, h
    sbc c
    ld c, h
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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
    ld a, [sPlayerGender]
    or a
    jr nz, jr_003_4bfb

    ld a, $a6
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_003_4c05

jr_003_4bfb:
    ld a, $aa
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_003_4c05:
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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
    ld hl, $51b0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc13], a
    ld a, [hl]
    ld [$cc14], a
    ld a, [sPlayerGender]
    or a
    jr nz, jr_003_4c6d

    ld a, $a7
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_003_4c77

jr_003_4c6d:
    ld a, $ab
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_003_4c77:
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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
    ld a, [sPlayerGender]
    or a
    jr nz, jr_003_4ccb

    ld a, $a8
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    jr jr_003_4cd5

jr_003_4ccb:
    ld a, $ac
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch

jr_003_4cd5:
    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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


Jump_003_4cf7:
    ld a, [$cc1b]
    cp $00
    jr z, jr_003_4cff

    ret


jr_003_4cff:
    ld a, [wCollisionNoMovement]
    or a
    ret z

    ld a, [wRightOrUpSideFacingTileID]
    cp $1d
    jr z, jr_003_4d40

    ld a, [wRightOrUpSideFacingTileID]
    cp $04
    jp z, Jump_003_4de5

    ret


Jump_003_4d14:
    ld a, $a2
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_003_4d1f:
    ld a, $a0
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_003_4d2a:
    ld a, $a3
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


Jump_003_4d35:
    ld a, $a1
    call Call_000_3f52
    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_003_4d40:
    ld hl, sInventory
    ld a, [sItemSlot]
    cp $02
    jr z, jr_003_4d88

    cp $01
    jr z, jr_003_4d6e

    ld a, [sInventory+1]
    cp NO_ITEM
    jr z, jr_003_4d6e

    ld a, [sInventory]
    ld [$cc21], a
    ld hl, $6443
    ld a, $04
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory], a
    xor a
    ld [sItemSlot], a
    jr jr_003_4da6

jr_003_4d6e:
    ld a, [sInventory+1]
    ld [$cc21], a
    ld hl, $6443
    ld a, $04
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory+1], a
    ld a, $01
    ld [sItemSlot], a
    jr jr_003_4da6

jr_003_4d88:
    ld a, [sInventory]
    cp $ff
    jr nz, jr_003_4d6e

    ld a, [sInventory]
    ld [$cc21], a
    ld hl, $6443
    ld a, $04
    call BankSwitchCallHL
    ld a, $10
    ld [sInventory], a
    xor a
    ld [sItemSlot], a

jr_003_4da6:
    xor a
    ld [sCowFeedFlag], a
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
    ld [wInputFreezeTimer], a
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


Jump_003_4de5:
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
    push hl
    push af
    ld l, $d6
    ld h, $4f
    ld a, $20
    call BankSwitchCallHL
    pop af
    pop hl
    ld a, $20
    ld [$cb4a], a
    ld a, $19
    call $16d1
    ld a, $35
    call Call_000_25ce
    ld a, $1a
    ld [wInputFreezeTimer], a
    ld a, $03
    call RST_TableJumpBankSwitch
    ret


Jump_003_4e22:
    call Call_003_4e26
    ret


Call_003_4e26:
    ld a, [$cb4a]
    ld hl, $4e2d
    rst $00
    add e
    ld c, [hl]
    add h
    ld c, [hl]
    sbc l
    ld c, [hl]
    sbc l
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    sbc [hl]
    ld c, [hl]
    sub c
    ld c, a
    ld a, [bc]
    ld d, b
    add h
    ld d, b
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    cp $50
    ld b, e
    ld d, c
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
    ld [wInputFreezeTimer], a
    ret


    ret


    ld a, $15
    call RST_TableJumpBankSwitch
    call Call_003_56a5
    ld a, [de]
    cp $0b
    jr z, jr_003_4ecf

    cp $0c
    jr z, jr_003_4ecf

    cp $0d
    jr z, jr_003_4ecf

    cp $0e
    jr z, jr_003_4ecf

    cp $0f
    jr z, jr_003_4ecf

    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_4ecf:
    ld a, $19
    call $16d1
    ld a, $08
    ld [wInputFreezeTimer], a
    ld a, $36
    call Call_000_25ce

Jump_003_4ede:
    call Call_003_56a5
    ld a, [de]
    cp $0b
    jr z, jr_003_4f01

    cp $0c
    jr z, jr_003_4f10

    cp $0d
    jr z, jr_003_4f1f

    cp $0e
    jr z, jr_003_4f2e

    cp $0f
    jr z, jr_003_4f3d

    ld a, [$cb4a]
    cp $20
    ld a, $05
    ld [$cc20], a
    ret


jr_003_4f01:
    ld a, $00
    ld [$cc18], a
    ld a, [$b948]
    set 0, a
    ld [$b948], a
    jr jr_003_4f4a

jr_003_4f10:
    ld a, $01
    ld [$cc18], a
    ld a, [$b948]
    set 1, a
    ld [$b948], a
    jr jr_003_4f4a

jr_003_4f1f:
    ld a, $02
    ld [$cc18], a
    ld a, [$b948]
    set 2, a
    ld [$b948], a
    jr jr_003_4f4a

jr_003_4f2e:
    ld a, $03
    ld [$cc18], a
    ld a, [$b948]
    set 3, a
    ld [$b948], a
    jr jr_003_4f4a

jr_003_4f3d:
    ld a, $04
    ld [$cc18], a
    ld a, [$b948]
    set 4, a
    ld [$b948], a

jr_003_4f4a:
    ld hl, sInventory
    ld a, [sItemSlot]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_003_4f6c

    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ret


jr_003_4f6c:
    ld a, [$cc18]
    ld [$cc20], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ret


Jump_003_4f7e:
jr_003_4f7e:
    call Call_000_1cff
    ld a, $01
    ld [$cc16], a

Call_003_4f86:
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_4fd0

    cp $20
    jr z, jr_003_4fd0

    cp $21
    jr z, jr_003_4fd0

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_003_4fd0

    cp $21
    jr z, jr_003_4fd0

    ld a, $28
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_4fd0:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_4fdb

    inc a
    ld [$b942], a

jr_003_4fdb:
    ld a, $27
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_4f7e

    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_5049

    cp $20
    jr z, jr_003_5049

    cp $21
    jr z, jr_003_5049

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_003_5049

    cp $21
    jr z, jr_003_5049

    ld a, $26
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_5049:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_5054

    inc a
    ld [$b942], a

jr_003_5054:
    ld a, $25
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jp z, Jump_003_4f7e

    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_50c3

    cp $20
    jr z, jr_003_50c3

    cp $21
    jr z, jr_003_50c3

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jr z, jr_003_50c3

    cp $21
    jr z, jr_003_50c3

    ld a, $24
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_50c3:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_50ce

    inc a
    ld [$b942], a

jr_003_50ce:
    ld a, $23
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jp z, Jump_003_4f7e

    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ld a, [wRightOrUpSideFacingTileID]
    cp $20
    jp z, Jump_003_5188

    cp $21
    jp z, Jump_003_519b

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_512a

    ld a, $5b
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_512a:
    ld a, $61
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jp z, Jump_003_4f7e

    ret


    ld a, [$cc1a]
    ld [sItemSlot], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call RST_TableJumpBankSwitch
    xor a
    ld [$cb4a], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jr z, jr_003_516f

    ld a, $5e
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    ret


jr_003_516f:
    ld a, $64
    call $16d1
    ld a, $36
    call Call_000_25ce
    ld a, $08
    ld [wInputFreezeTimer], a
    call Call_003_56a5
    ld a, [de]
    cp $02
    jp z, Jump_003_4f7e

    ret


Jump_003_5188:
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc18], a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ret


Jump_003_519b:
    ld a, $05
    ld [$cc16], a
    ld a, $01
    ld [$cc18], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [wPlayerIsCarryingItem], a
    ret


jr_003_51b0:
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

    jr nz, jr_003_51b0

    ld b, b
    ret z

    ld h, b
    ret z

Call_003_51ec:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    call Call_003_566c
    call Call_003_445a
    ld a, [wInputFreezeTimer]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ld a, [$cc16]
    cp $05
    ret nc

    ldh a, [$ff8b]
    and $01
    jr z, jr_003_521a

    call Call_003_48cc
    ret


jr_003_521a:
    ldh a, [$ff8a]
    and $02
    jr z, jr_003_5237

    call Call_003_53c6
    ld a, [wPlayerAnimationIndex]
    and $01
    jr z, jr_003_5236

    ld a, [$c605]
    cp $08
    jr nz, jr_003_5236

    ld a, $34
    call Call_000_25ce

jr_003_5236:
    ret


jr_003_5237:
    ldh a, [$ff8b]
    and $08
    jr z, jr_003_5241

    call Call_000_1923
    ret


jr_003_5241:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_003_5266

    ldh a, [$ff8a]
    and $40
    jr nz, jr_003_52a4

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_003_52e2

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_003_531f

    ld a, [wInputFreezeTimer]
    or a
    ret nz

    ld a, $00
    call RST_TableJumpBankSwitch
    ret


jr_003_5266:
    ld a, $00
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_003_59f6
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_52a0

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_54ed

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5500

    ret


jr_003_52a0:
    call Call_003_5539
    ret


jr_003_52a4:
    ld a, $03
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_003_5bf0
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_52de

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_54ed

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5500

    ret


jr_003_52de:
    call Call_003_556c
    ret


Jump_003_52e2:
    ld a, $01
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_003_5dea
    ldh a, [$ffa4]
    or a
    jr nz, jr_003_535c

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_531b

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_5513

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5526

    ret


jr_003_531b:
    call Call_003_559a
    ret


Jump_003_531f:
    ld a, $02
    ld [wPlayerFacingDirection], a
    ld a, $01
    call RST_TableJumpBankSwitch
    call Call_003_5fe4
    ldh a, [$ffa4]
    or a
    jr nz, jr_003_535c

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_5358

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_5513

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5526

    ret


jr_003_5358:
    call Call_003_560a
    ret


Jump_003_535c:
jr_003_535c:
    ld a, [$cc29]
    cp $08
    jr c, jr_003_53c1

    ld hl, $51dc
    ldh a, [$ffaa]
    call LoadWordFromTableHL
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
    ld hl, $51e4
    ldh a, [$ffaa]
    call LoadWordFromTableHL
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wPlayerFacingDirection]
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
    ld hl, $51e4
    ldh a, [$ffaa]
    call LoadWordFromTableHL
    ld a, $00
    ld [hl], a
    ret


jr_003_53c1:
    inc a
    ld [$cc29], a
    ret


Call_003_53c6:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_003_53e0

    ldh a, [$ff8a]
    and $20
    jr nz, jr_003_53e4

    ldh a, [$ff8a]
    and $10
    jr nz, jr_003_53e8

    ldh a, [$ff8a]
    and $40
    jr nz, jr_003_53ec

    jr jr_003_53f1

jr_003_53e0:
    ld a, $00
    jr jr_003_53ee

jr_003_53e4:
    ld a, $01
    jr jr_003_53ee

jr_003_53e8:
    ld a, $02
    jr jr_003_53ee

jr_003_53ec:
    ld a, $03

jr_003_53ee:
    ld [wPlayerFacingDirection], a

jr_003_53f1:
    ld a, [wPlayerFacingDirection]
    cp $00
    jr z, jr_003_543d

    cp $01
    jr z, jr_003_5479

    cp $02
    jp z, Jump_003_54b3

    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_003_5bf0
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_1502
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_5436

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_54ed

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5500

    ret


jr_003_5436:
    call Call_003_556c
    call Call_003_556c
    ret


jr_003_543d:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_003_59f6
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_14f9
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_5472

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jp z, Jump_003_54ed

    ld a, [wcb32]
    and $01
    jp z, Jump_003_5500

    ret


jr_003_5472:
    call Call_003_5539
    call Call_003_5539
    ret


jr_003_5479:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_003_5dea
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_54ac

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_003_5513

    ld a, [wcb32]
    and $01
    jr z, jr_003_5526

    ret


jr_003_54ac:
    call Call_003_559a
    call Call_003_559a
    ret


Jump_003_54b3:
    ld a, $02
    call RST_TableJumpBankSwitch
    call Call_003_5fe4
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_535c

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [wcb30]
    ld b, a
    ld a, [wcb32]
    or b
    and $01
    jr z, jr_003_54e6

    ld a, $01
    ld [wCollisionNoMovement], a
    ld a, b
    and $01
    jr z, jr_003_5513

    ld a, [wcb32]
    and $01
    jr z, jr_003_5526

    ret


jr_003_54e6:
    call Call_003_560a
    call Call_003_560a
    ret


Jump_003_54ed:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_559a
    ret


Jump_003_5500:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_560a
    ret


Jump_003_5513:
jr_003_5513:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1502
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_556c
    ret


Jump_003_5526:
jr_003_5526:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_14f9
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_5539
    ret


Call_003_5539:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $a3
    jr nc, jr_003_5561

    ld a, [$c608]
    cp $5c
    jr nc, jr_003_554d

    jr jr_003_555a

jr_003_554d:
    ld hl, wPlayerMovementY
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_003_5555:
    ld hl, $c608
    inc [hl]
    ret


jr_003_555a:
    ld hl, $c60b
    inc [hl]
    jr jr_003_5555

    ret


jr_003_5561:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    ret


Call_003_556c:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_003_5586

    ld a, [$c608]
    cp $08
    jr c, jr_003_5593

    jr jr_003_5593

jr_003_5586:
    ld hl, wPlayerMovementY
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_003_558e:
    ld hl, $c608
    dec [hl]
    ret


jr_003_5593:
    ld hl, $c60b
    dec [hl]
    jr jr_003_558e

    ret


Call_003_559a:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_003_55d8

    cp $01
    jr z, jr_003_55e1

    ld a, [$c606]
    cp $b9
    jr nc, jr_003_55d1

    ld a, [$c607]
    cp $00
    jr nz, jr_003_55c4

    ld a, [$c606]
    cp $59
    jr c, jr_003_55d1

jr_003_55c4:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_003_55cc:
    ld hl, $c606
    dec [hl]
    ret


jr_003_55d1:
    ld hl, $c60a
    dec [hl]
    jr jr_003_55cc

    ret


jr_003_55d8:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_003_55e1:
    ld a, [$c606]
    cp $99
    jr nc, jr_003_5603

    ld a, [$c607]
    cp $00
    jr nz, jr_003_55f6

    ld a, [$c606]
    cp $59
    jr c, jr_003_5603

jr_003_55f6:
    ld hl, wPlayerMovementX
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_003_55fe:
    ld hl, $c606
    dec [hl]
    ret


jr_003_5603:
    ld hl, $c60a
    dec [hl]
    jr jr_003_55fe

    ret


Call_003_560a:
    xor a
    ld [wCollisionNoMovement], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_003_5641

    cp $01
    jr z, jr_003_564a

    ld a, [$c606]
    cp $b8
    jr nc, jr_003_563a

    ld a, [$c606]
    cp $58
    jr c, jr_003_563a

    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_003_5635:
    ld hl, $c606
    inc [hl]
    ret


jr_003_563a:
    ld hl, $c60a
    inc [hl]
    jr jr_003_5635

    ret


jr_003_5641:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_003_564a:
    ld a, [$c606]
    cp $98
    jr nc, jr_003_5665

    ld a, [$c606]
    cp $58
    jr c, jr_003_5665

    ld hl, wPlayerMovementX
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_003_5660:
    ld hl, $c606
    inc [hl]
    ret


jr_003_5665:
    ld hl, $c60a
    inc [hl]
    jr jr_003_5660

    ret


Call_003_566c:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_003_5680

    pop hl
    ret


jr_003_5680:
    call Call_003_7527
    ld a, [$cc28]
    cp $ff
    jr nz, jr_003_569a

    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $01
    ld [$c910], a
    ret


jr_003_569a:
    ld a, $07
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_003_56a5:
    ld a, [wPlayerFacingDirection]
    rst $00
    or d
    ld d, [hl]
    ld b, [hl]
    ld d, a
    call c, $7257
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


Call_003_590e:
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
    jr nz, jr_003_5967

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
    call Call_003_590e
    ret


jr_003_5967:
    cp $01
    jr nz, jr_003_5998

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
    jr z, jr_003_598a

    cp $0c
    jr nc, jr_003_598e

    cp $04
    jr nc, jr_003_5992

jr_003_598a:
    ld b, $ec
    jr jr_003_5994

jr_003_598e:
    ld b, $dc
    jr jr_003_5994

jr_003_5992:
    ld b, $e4

jr_003_5994:
    call Call_003_590e
    ret


jr_003_5998:
    cp $02
    jr nz, jr_003_59c9

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
    jr z, jr_003_59bf

    cp $0c
    jr nc, jr_003_59bf

    cp $04
    jr nc, jr_003_59c3

    ld b, $1c
    jr jr_003_59c5

jr_003_59bf:
    ld b, $0c
    jr jr_003_59c5

jr_003_59c3:
    ld b, $14

jr_003_59c5:
    call Call_003_590e
    ret


jr_003_59c9:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    sub $0d
    and $0f
    cp $00
    jr z, jr_003_59f0

    cp $0b
    jr nc, jr_003_59e8

    cp $03
    jr nc, jr_003_59ec

    ld c, $e8
    jr jr_003_59f2

jr_003_59e8:
    ld c, $d8
    jr jr_003_59f2

jr_003_59ec:
    ld c, $e0
    jr jr_003_59f2

jr_003_59f0:
    ld c, $e8

jr_003_59f2:
    call Call_003_590e
    ret


Call_003_59f6:
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
    jr z, jr_003_5a89

    ld a, [$b949]
    cp $00
    jr z, jr_003_5a58

    cp $ff
    jr z, jr_003_5a89

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5a58

    cp $03
    jr z, jr_003_5a58

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
    jr jr_003_5a74

jr_003_5a58:
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

jr_003_5a74:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5a89

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5a89

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5a89

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5beb

jr_003_5a89:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5afe

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5acd

    cp $ff
    jr z, jr_003_5afe

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5acd

    cp $03
    jr z, jr_003_5acd

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
    jr jr_003_5ae9

jr_003_5acd:
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

jr_003_5ae9:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5afe

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5afe

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5afe

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5beb

jr_003_5afe:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5b72

    ld a, [$b975]
    cp $00
    jr z, jr_003_5b42

    cp $ff
    jr z, jr_003_5b72

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5b42

    cp $03
    jr z, jr_003_5b42

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
    jr jr_003_5b5e

jr_003_5b42:
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

jr_003_5b5e:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5b72

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5b72

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5b72

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5beb

jr_003_5b72:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5be6

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5bb6

    cp $ff
    jr z, jr_003_5be6

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5bb6

    cp $03
    jr z, jr_003_5bb6

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
    jr jr_003_5bd2

jr_003_5bb6:
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

jr_003_5bd2:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5be6

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5be6

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5be6

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5beb

jr_003_5be6:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5beb:
jr_003_5beb:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5bf0:
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
    jr z, jr_003_5c83

    ld a, [$b949]
    cp $00
    jr z, jr_003_5c52

    cp $ff
    jr z, jr_003_5c83

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5c52

    cp $03
    jr z, jr_003_5c52

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
    jr jr_003_5c6e

jr_003_5c52:
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

jr_003_5c6e:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5c83

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5c83

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5c83

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5de5

jr_003_5c83:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5cf8

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5cc7

    cp $ff
    jr z, jr_003_5cf8

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5cc7

    cp $03
    jr z, jr_003_5cc7

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
    jr jr_003_5ce3

jr_003_5cc7:
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

jr_003_5ce3:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5cf8

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5cf8

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5cf8

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5de5

jr_003_5cf8:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5d6c

    ld a, [$b975]
    cp $00
    jr z, jr_003_5d3c

    cp $ff
    jr z, jr_003_5d6c

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5d3c

    cp $03
    jr z, jr_003_5d3c

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
    jr jr_003_5d58

jr_003_5d3c:
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

jr_003_5d58:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5d6c

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5d6c

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5d6c

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5de5

jr_003_5d6c:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5de0

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5db0

    cp $ff
    jr z, jr_003_5de0

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5db0

    cp $03
    jr z, jr_003_5db0

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
    jr jr_003_5dcc

jr_003_5db0:
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

jr_003_5dcc:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5de0

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5de0

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5de0

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5de5

jr_003_5de0:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5de5:
jr_003_5de5:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5dea:
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
    jr z, jr_003_5e7d

    ld a, [$b949]
    cp $00
    jr z, jr_003_5e4c

    cp $ff
    jr z, jr_003_5e7d

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5e4c

    cp $03
    jr z, jr_003_5e4c

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
    jr jr_003_5e68

jr_003_5e4c:
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

jr_003_5e68:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5e7d

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5e7d

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5e7d

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_5fdf

jr_003_5e7d:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5ef2

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5ec1

    cp $ff
    jr z, jr_003_5ef2

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5ec1

    cp $03
    jr z, jr_003_5ec1

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
    jr jr_003_5edd

jr_003_5ec1:
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

jr_003_5edd:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5ef2

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5ef2

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5ef2

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_5fdf

jr_003_5ef2:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5f66

    ld a, [$b975]
    cp $00
    jr z, jr_003_5f36

    cp $ff
    jr z, jr_003_5f66

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5f36

    cp $03
    jr z, jr_003_5f36

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
    jr jr_003_5f52

jr_003_5f36:
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

jr_003_5f52:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5f66

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5f66

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5f66

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_5fdf

jr_003_5f66:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5fda

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5faa

    cp $ff
    jr z, jr_003_5fda

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5faa

    cp $03
    jr z, jr_003_5faa

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
    jr jr_003_5fc6

jr_003_5faa:
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

jr_003_5fc6:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5fda

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5fda

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5fda

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_5fdf

jr_003_5fda:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5fdf:
jr_003_5fdf:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5fe4:
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
    jr z, jr_003_6077

    ld a, [$b949]
    cp $00
    jr z, jr_003_6046

    cp $ff
    jr z, jr_003_6077

    ld a, [$c80d]
    cp $00
    jr z, jr_003_6046

    cp $03
    jr z, jr_003_6046

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
    jr jr_003_6062

jr_003_6046:
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

jr_003_6062:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6077

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_6077

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6077

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_61d9

jr_003_6077:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_60ec

    ld a, [$b95f]
    cp $00
    jr z, jr_003_60bb

    cp $ff
    jr z, jr_003_60ec

    ld a, [$c82d]
    cp $00
    jr z, jr_003_60bb

    cp $03
    jr z, jr_003_60bb

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
    jr jr_003_60d7

jr_003_60bb:
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

jr_003_60d7:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_60ec

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_60ec

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_60ec

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_61d9

jr_003_60ec:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_6160

    ld a, [$b975]
    cp $00
    jr z, jr_003_6130

    cp $ff
    jr z, jr_003_6160

    ld a, [$c84d]
    cp $00
    jr z, jr_003_6130

    cp $03
    jr z, jr_003_6130

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
    jr jr_003_614c

jr_003_6130:
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

jr_003_614c:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6160

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_6160

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6160

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_61d9

jr_003_6160:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_61d4

    ld a, [$b98b]
    cp $00
    jr z, jr_003_61a4

    cp $ff
    jr z, jr_003_61d4

    ld a, [$c86d]
    cp $00
    jr z, jr_003_61a4

    cp $03
    jr z, jr_003_61a4

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
    jr jr_003_61c0

jr_003_61a4:
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

jr_003_61c0:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_61d4

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_61d4

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_61d4

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_61d9

jr_003_61d4:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_61d9:
jr_003_61d9:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_61de:
    ld hl, vBGMap1
    ld de, $61ec
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

Call_003_6250:
    ld hl, $625c
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

Call_003_627c:
    ld a, $3c
    ld [$cc26], a
    ret


Call_003_6282:
    ldh a, [$ffa4]
    ld hl, $51dc
    call LoadWordFromTableHL
    ld a, [hl]
    cp $03
    ret z

    cp $04
    ret z

    cp $ff
    ret z

    ldh a, [$ffa4]
    ld hl, $51e4
    call LoadWordFromTableHL
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
    jr c, jr_003_62b1

    sub b
    ldh [$ffa5], a
    jr jr_003_62b7

jr_003_62b1:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa5], a

jr_003_62b7:
    inc hl
    inc hl
    ld a, [hl]
    ld b, a
    ld a, [$c608]
    cp b
    jr c, jr_003_62c6

    sub b
    ldh [$ffa6], a
    jr jr_003_62cc

jr_003_62c6:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa6], a

jr_003_62cc:
    ld b, a
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_62fa

    ldh a, [$ffa4]
    ld hl, $51e4
    call LoadWordFromTableHL
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
    jr c, jr_003_62f5

    ld a, $02
    ld [hl], a
    jr jr_003_631e

jr_003_62f5:
    ld a, $01
    ld [hl], a
    jr jr_003_631e

jr_003_62fa:
    ldh a, [$ffa4]
    ld hl, $51e4
    call LoadWordFromTableHL
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
    jr c, jr_003_631b

    ld a, $00
    ld [hl], a
    jr jr_003_631e

jr_003_631b:
    ld a, $03
    ld [hl], a

jr_003_631e:
    ldh a, [$ffa4]
    ld hl, $51dc
    call LoadWordFromTableHL
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


Call_003_6338:
    ld a, [$cc26]
    or a
    ret z

    dec a
    ld [$cc26], a
    ret nz

    ld a, $00
    ldh [$ffa4], a
    call Call_003_6282
    ld a, $01
    ldh [$ffa4], a
    call Call_003_6282
    ld a, $02
    ldh [$ffa4], a
    call Call_003_6282
    ld a, $03
    ldh [$ffa4], a
    call Call_003_6282
    ret


Call_003_635f:
    ld hl, $6f87
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_003_6368:
    ld hl, $6fb3
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_003_6371:
    ld hl, $6fdf
    ld a, $0f
    call BankSwitchCallHL
    ret


Call_003_637a:
    ld hl, $51dc
    ld a, [$b9a2]
    call LoadWordFromTableHL
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


Call_003_639b:
    ret


Call_003_639c:
    cp $0a
    jr c, jr_003_63aa

    cp $50
    jr c, jr_003_63ad

    cp $a0
    jr c, jr_003_63b5

    jr jr_003_63bd

jr_003_63aa:
    ld a, $00
    ret


jr_003_63ad:
    ld a, b
    cp $00
    jr nz, jr_003_63aa

    ld a, $01
    ret


jr_003_63b5:
    ld a, b
    cp $00
    jr nz, jr_003_63aa

    ld a, $02
    ret


jr_003_63bd:
    ld a, b
    cp $00
    jr nz, jr_003_63aa

    ld a, $03
    ret

Label_003_63c5:
    ld a, [$b949]
    cp $ff
    jr z, jr_003_63f2

    ld a, [$b953]
    bit 0, a
    jr z, jr_003_63df

    ld a, [$b94f]
    add $03
    jr nc, jr_003_63dc

    ld a, $ff

jr_003_63dc:
    ld [$b94f], a

jr_003_63df:
    ld a, [$b953]
    bit 2, a
    jr z, jr_003_63f2

    ld a, [$b94f]
    add $01
    jr nc, jr_003_63ef

    ld a, $ff

jr_003_63ef:
    ld [$b94f], a

jr_003_63f2:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_641f

    ld a, [$b969]
    bit 0, a
    jr z, jr_003_640c

    ld a, [$b965]
    add $03
    jr nc, jr_003_6409

    ld a, $ff

jr_003_6409:
    ld [$b965], a

jr_003_640c:
    ld a, [$b969]
    bit 2, a
    jr z, jr_003_641f

    ld a, [$b965]
    add $01
    jr nc, jr_003_641c

    ld a, $ff

jr_003_641c:
    ld [$b965], a

jr_003_641f:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_644c

    ld a, [$b97f]
    bit 0, a
    jr z, jr_003_6439

    ld a, [$b97b]
    add $03
    jr nc, jr_003_6436

    ld a, $ff

jr_003_6436:
    ld [$b97b], a

jr_003_6439:
    ld a, [$b97f]
    bit 2, a
    jr z, jr_003_644c

    ld a, [$b97b]
    add $01
    jr nc, jr_003_6449

    ld a, $ff

jr_003_6449:
    ld [$b97b], a

jr_003_644c:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_6479

    ld a, [$b995]
    bit 0, a
    jr z, jr_003_6466

    ld a, [$b991]
    add $03
    jr nc, jr_003_6463

    ld a, $ff

jr_003_6463:
    ld [$b991], a

jr_003_6466:
    ld a, [$b995]
    bit 2, a
    jr z, jr_003_6479

    ld a, [$b991]
    add $01
    jr nc, jr_003_6476

    ld a, $ff

jr_003_6476:
    ld [$b991], a

jr_003_6479:
    ld a, [sCurrentWeather]
    cp SUNNY_DAY
    jp nz, Jump_003_65d1

    ld a, [$b949]
    cp $ff
    jr z, jr_003_648f

    ld a, [$b953]
    bit 3, a
    jr nz, jr_003_64b9

jr_003_648f:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_649d

    ld a, [$b969]
    bit 3, a
    jr nz, jr_003_64b9

jr_003_649d:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_64ab

    ld a, [$b97f]
    bit 3, a
    jr nz, jr_003_64b9

jr_003_64ab:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_64e9

    ld a, [$b995]
    bit 3, a
    jr z, jr_003_64e9

jr_003_64b9:
    ld a, [$b94f]
    add $05
    jr nc, jr_003_64c2

    ld a, $ff

jr_003_64c2:
    ld [$b94f], a
    ld a, [$b965]
    add $05
    jr nc, jr_003_64ce

    ld a, $ff

jr_003_64ce:
    ld [$b965], a
    ld a, [$b97b]
    add $05
    jr nc, jr_003_64da

    ld a, $ff

jr_003_64da:
    ld [$b97b], a
    ld a, [$b991]
    add $05
    jr nc, jr_003_64e6

    ld a, $ff

jr_003_64e6:
    ld [$b991], a

Jump_003_64e9:
jr_003_64e9:
    ld a, [$b949]
    cp $ff
    jr z, jr_003_6507

    cp $00
    jr z, jr_003_6507

    cp $01
    jr z, jr_003_6507

    ld a, [$b953]
    bit 4, a
    jr nz, jr_003_6507

    ld hl, $b949
    ld b, $08
    call Call_003_760b

jr_003_6507:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_6525

    cp $00
    jr z, jr_003_6525

    cp $01
    jr z, jr_003_6525

    ld a, [$b969]
    bit 4, a
    jr nz, jr_003_6525

    ld hl, $b95f
    ld b, $08
    call Call_003_760b

jr_003_6525:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_6543

    cp $00
    jr z, jr_003_6543

    cp $01
    jr z, jr_003_6543

    ld a, [$b97f]
    bit 4, a
    jr nz, jr_003_6543

    ld hl, $b975
    ld b, $08
    call Call_003_760b

jr_003_6543:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_6561

    cp $00
    jr z, jr_003_6561

    cp $01
    jr z, jr_003_6561

    ld a, [$b995]
    bit 4, a
    jr nz, jr_003_6561

    ld hl, $b98b
    ld b, $08
    call Call_003_760b

jr_003_6561:
    call Call_003_7435
    ld a, [$b949]
    cp $ff
    jr z, jr_003_6575

    ld a, [$b949]
    ld a, $00
    ldh [$ffa4], a
    call Call_003_7083

jr_003_6575:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_6586

    ld a, [$b95f]
    ld a, $01
    ldh [$ffa4], a
    call Call_003_7083

jr_003_6586:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_6597

    ld a, [$b975]
    ld a, $02
    ldh [$ffa4], a
    call Call_003_7083

jr_003_6597:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_65a8

    ld a, [$b98b]
    ld a, $03
    ldh [$ffa4], a
    call Call_003_7083

jr_003_65a8:
    xor a
    ld [$b948], a
    ld [$b953], a
    ld [$b969], a
    ld [$b97f], a
    ld [$b995], a
    ld hl, $b949
    call Call_003_75f6
    ld hl, $b95f
    call Call_003_75f6
    ld hl, $b975
    call Call_003_75f6
    ld hl, $b98b
    call Call_003_75f6
    ret


Jump_003_65d1:
    ld a, [$b949]
    cp $ff
    jr z, jr_003_661b

    ld a, [$b953]
    bit 3, a
    jr z, jr_003_661b

    ld a, $01
    ld [$b952], a
    ld hl, $b949
    ld b, $0a
    call Call_003_760b
    ld a, [$b949]
    cp $02
    jr nz, jr_003_661b

    xor a
    ld [$b94e], a
    ld a, [$b95d]
    or a
    jr nz, jr_003_661b

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $10
    jr nc, jr_003_661b

    ld a, $04
    ld [$b949], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_661b

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_003_661b:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_6665

    ld a, [$b969]
    bit 3, a
    jr z, jr_003_6665

    ld a, $01
    ld [$b968], a
    ld hl, $b95f
    ld b, $0a
    call Call_003_760b
    ld a, [$b95f]
    cp $02
    jr nz, jr_003_6665

    xor a
    ld [$b964], a
    ld a, [$b973]
    or a
    jr nz, jr_003_6665

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $02
    jr nc, jr_003_6665

    ld a, $04
    ld [$b95f], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_6665

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_003_6665:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_66af

    ld a, [$b97f]
    bit 3, a
    jr z, jr_003_66af

    ld a, $01
    ld [$b97e], a
    ld hl, $b975
    ld b, $0a
    call Call_003_760b
    ld a, [$b975]
    cp $02
    jr nz, jr_003_66af

    xor a
    ld [$b97a], a
    ld a, [$b989]
    or a
    jr nz, jr_003_66af

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $02
    jr nc, jr_003_66af

    ld a, $04
    ld [$b975], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_66af

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47

jr_003_66af:
    ld a, [$b98b]
    cp $ff
    jp z, Jump_003_64e9

    ld a, [$b995]
    bit 3, a
    jp z, Jump_003_64e9

    ld a, $01
    ld [$b994], a
    ld hl, $b98b
    ld b, $0a
    call Call_003_760b
    ld a, [$b98b]
    cp $02
    jp nz, Jump_003_64e9

    xor a
    ld [$b990], a
    ld a, [$b99f]
    or a
    jp nz, Jump_003_64e9

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $02
    jp nc, Jump_003_64e9

    ld a, $04
    ld [$b98b], a
    ld a, [$b945]
    cp $0a
    jp nc, Jump_003_64e9

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0f47
    jp Jump_003_64e9


Call_003_6702:
    ld a, [$cc24]
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_003_6731

    ld a, [$cc25]
    sub $04
    ld [$cc25], a
    jr z, jr_003_6718

    jr nc, jr_003_6760

jr_003_6718:
    ld a, $01
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_003_68e6


jr_003_6731:
    ld a, [$cc24]
    and $0f
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_003_6760

    ld a, [$cc25]
    sub $02
    ld [$cc25], a
    jr nz, jr_003_6760

    ld a, $06
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_003_68e6


jr_003_6760:
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
    jp c, Jump_003_6877

    xor a
    ld [$ba1f], a
    ld a, [$ba1d]
    cp $03
    jr nz, jr_003_67f0

    ld a, [$cc37]
    ld hl, $678a
    rst $00
    sub d
    ld h, a
    xor d
    ld h, a
    jp nz, $da67

    ld h, a
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $03
    jr nz, jr_003_67a5

    ld a, $00

jr_003_67a5:
    ld [$cc37], a
    jr jr_003_67f0

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $02
    jr nz, jr_003_67bd

    ld a, $01

jr_003_67bd:
    ld [$cc37], a
    jr jr_003_67f0

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $01
    jr nz, jr_003_67d5

    ld a, $02

jr_003_67d5:
    ld [$cc37], a
    jr jr_003_67f0

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $04
    call DivideHLByA_16bit
    cp $00
    jr nz, jr_003_67ed

    ld a, $03

jr_003_67ed:
    ld [$cc37], a

jr_003_67f0:
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_003_67ff

    add $60

jr_003_67ff:
    sub $30
    ld [$ba1e], a
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $1e
    jr c, jr_003_6823

    cp $28
    jr c, jr_003_682a

    cp $3c
    jr c, jr_003_683c

    cp $5a
    jr c, jr_003_6853

    jr jr_003_6853

jr_003_6823:
    ld a, $00
    ld [$ba1d], a
    jr jr_003_6877

jr_003_682a:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_6823

    cp $05
    jr z, jr_003_6823

    ld a, $04
    ld [$ba1d], a
    jr jr_003_6877

jr_003_683c:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_6847

    cp $00
    jr nz, jr_003_6823

jr_003_6847:
    ld a, $03
    ld [$ba1d], a
    ld a, $c0
    ld [$ba1e], a
    jr jr_003_6877

jr_003_6853:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_6823

    cp $05
    jr z, jr_003_6823

    ld a, $02
    ld [$ba1d], a
    jr jr_003_6877

    ld a, [$ba1d]
    cp $04
    jr z, jr_003_6870

    cp $00
    jr nz, jr_003_6823

jr_003_6870:
    ld a, $05
    ld [$ba1d], a
    jr jr_003_6877

Jump_003_6877:
jr_003_6877:
    ld a, [$ba1d]
    cp $03
    jr nz, jr_003_6896

    ld a, [$ba12]
    cp $03
    jr z, jr_003_6896

    cp $04
    jr z, jr_003_6896

    call Call_003_6a2a
    ld a, [$ba1f]
    bit 1, a
    jr nz, jr_003_6896

    call Call_003_6d83

jr_003_6896:
    ld hl, $689d
    ld a, [$ba1d]
    rst $00
    xor e
    ld l, b
    and $68
    dec de
    ld l, c
    ld c, b
    ld l, c
    add c
    ld l, c
    xor l
    ld l, c
    reti


    ld l, c
    ld a, [$ba12]
    cp $00
    jr z, jr_003_68c6

    cp $01
    jr z, jr_003_68ce

    cp $02
    jr z, jr_003_68d6

    cp $03
    jr z, jr_003_68de

Jump_003_68be:
jr_003_68be:
    ld a, $13
    call Call_000_1887
    jp Jump_003_69f7


Jump_003_68c6:
jr_003_68c6:
    ld a, $00
    call Call_000_1887
    jp Jump_003_69f7


Jump_003_68ce:
jr_003_68ce:
    ld a, $06
    call Call_000_1887
    jp Jump_003_69f7


jr_003_68d6:
    ld a, $0c
    call Call_000_1887
    jp Jump_003_69f7


Jump_003_68de:
jr_003_68de:
    ld a, $15
    call Call_000_1887
    jp Jump_003_69f7


Jump_003_68e6:
    ld a, [$ba12]
    cp $00
    jr z, jr_003_68fb

    cp $01
    jr z, jr_003_6903

    cp $02
    jr z, jr_003_690b

    cp $03
    jr z, jr_003_6913

    jr jr_003_68be

jr_003_68fb:
    ld a, $01
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6903:
    ld a, $07
    call Call_000_1887
    jp Jump_003_69f7


jr_003_690b:
    ld a, $0d
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6913:
    ld a, $16
    call Call_000_1887
    jp Jump_003_69f7


    ld a, [$ba12]
    cp $00
    jr z, jr_003_6930

    cp $01
    jr z, jr_003_6938

    cp $02
    jr z, jr_003_6940

    cp $03
    jr z, jr_003_68de

    jr jr_003_68be

jr_003_6930:
    ld a, $02
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6938:
    ld a, $08
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6940:
    ld a, $0e
    call Call_000_1887
    jp Jump_003_69f7


    ld a, [$ba12]
    cp $00
    jr z, jr_003_6963

    cp $01
    jr z, jr_003_696b

    cp $02
    jr z, jr_003_6973

    cp $03
    jr z, jr_003_697a

    ld a, $12
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6963:
    ld a, $03
    call Call_000_1887
    jp Jump_003_69f7


jr_003_696b:
    ld a, $09
    call Call_000_1887
    jp Jump_003_69f7


jr_003_6973:
    ld a, $0f
    call Call_000_1887
    jr jr_003_69f7

jr_003_697a:
    ld a, $14
    call Call_000_1887
    jr jr_003_69f7

    ld a, [$ba12]
    cp $00
    jr z, jr_003_6998

    cp $01
    jr z, jr_003_699f

    cp $02
    jr z, jr_003_69a6

    cp $03
    jp z, Jump_003_68de

    jp Jump_003_68be


jr_003_6998:
    ld a, $04
    call Call_000_1887
    jr jr_003_69f7

jr_003_699f:
    ld a, $0a
    call Call_000_1887
    jr jr_003_69f7

jr_003_69a6:
    ld a, $10
    call Call_000_1887
    jr jr_003_69f7

    ld a, [$ba12]
    cp $00
    jr z, jr_003_69c4

    cp $01
    jr z, jr_003_69cb

    cp $02
    jr z, jr_003_69d2

    cp $03
    jp z, Jump_003_68de

    jp Jump_003_68be


jr_003_69c4:
    ld a, $05
    call Call_000_1887
    jr jr_003_69f7

jr_003_69cb:
    ld a, $0b
    call Call_000_1887
    jr jr_003_69f7

jr_003_69d2:
    ld a, $11
    call Call_000_1887
    jr jr_003_69f7

    ld a, [$ba12]
    cp $00
    jp z, Jump_003_68c6

    cp $01
    jp z, Jump_003_68ce

    cp $02
    jr z, jr_003_69f2

    cp $03
    jp z, Jump_003_68de

    jp Jump_003_68be


jr_003_69f2:
    ld a, $17
    call Call_000_1887

Jump_003_69f7:
jr_003_69f7:
    ld hl, $c800
    ld a, [$cb62]
    add a
    add a

Jump_003_69ff:
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


Call_003_6a2a:
    ld hl, $6a31
    ld a, [$cc37]
    rst $00
    add hl, sp
    ld l, d
    ld [$e26b], sp
    ld l, e
    cp b
    ld l, h
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


Call_003_6d83:
    ld hl, $6d8a
    ld a, [$cc37]
    rst $00
    sub d
    ld l, l
    cp l
    ld l, l
    rst $20
    ld l, l
    db $10
    ld l, [hl]
    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_003_6e38

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6db6

    ld a, [$ba23]
    and $02
    jp z, Jump_003_6e6a

    ld a, [$ba25]
    and $02
    jp z, Jump_003_6e51

jr_003_6db6:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_003_6e51

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6de0

    ld a, [$ba23]
    and $02
    jr z, jr_003_6e38

    ld a, [$ba25]
    and $02
    jp z, Jump_003_6e83

jr_003_6de0:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_003_6e6a

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6e09

    ld a, [$ba23]
    and $02
    jp z, Jump_003_6e83

    ld a, [$ba25]
    and $02
    jr z, jr_003_6e38

jr_003_6e09:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_003_6e83

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6e31

    ld a, [$ba23]
    and $02
    jr z, jr_003_6e51

    ld a, [$ba25]
    and $02
    jr z, jr_003_6e6a

jr_003_6e31:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Jump_003_6e38:
jr_003_6e38:
    call Call_003_6e9c
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


Jump_003_6e51:
jr_003_6e51:
    call Call_003_6f8f
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


Jump_003_6e6a:
jr_003_6e6a:
    call Call_003_7009
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


Jump_003_6e83:
jr_003_6e83:
    call Call_003_6f15
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


Call_003_6e9c:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6ebd

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
    jr jr_003_6ed5

jr_003_6ebd:
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

jr_003_6ed5:
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
    jr nc, jr_003_6f05

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_6f05

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6f05

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_6f0a

jr_003_6f05:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_003_6f0a:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_6f15:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6f36

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
    jr jr_003_6f4e

jr_003_6f36:
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

jr_003_6f4e:
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
    jr c, jr_003_6f7f

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_6f7f

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6f7f

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_6f84

jr_003_6f7f:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_6f84:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_6f8f:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6fb0

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
    jr jr_003_6fc8

jr_003_6fb0:
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

jr_003_6fc8:
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
    jr c, jr_003_6ff9

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_6ff9

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6ff9

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_6ffe

jr_003_6ff9:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_6ffe:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_7009:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_702a

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
    jr jr_003_7042

jr_003_702a:
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

jr_003_7042:
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
    jr nc, jr_003_7073

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_7073

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_7073

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_7078

jr_003_7073:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_7078:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_7083:
    ld hl, $742d
    call LoadWordFromTableHL
    ld a, [hl]
    ld hl, $708e
    rst $00
    sbc b
    ld [hl], b
    cp d
    ld [hl], b
    call c, $a370
    ld [hl], d
    call Call_000_2173
    dec l
    ld [hl], h
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $0e
    jr nc, jr_003_70af

    inc [hl]
    ret


jr_003_70af:
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


    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_003_70d1

    inc [hl]
    ret


jr_003_70d1:
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


    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_003_710b

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    cp $03
    jr c, jr_003_7103

    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], a
    jr jr_003_710b

jr_003_7103:
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a

jr_003_710b:
    ld hl, $7111
    ldh a, [$ffa4]
    rst $00
    add hl, de
    ld [hl], c
    ld [hl+], a
    ld [hl], c
    dec hl
    ld [hl], c
    inc [hl]
    ld [hl], c
    ld a, [$b948]
    bit 0, a
    jr nz, jr_003_719b

    jr jr_003_713b

    ld a, [$b948]
    bit 1, a
    jr nz, jr_003_719b

    jr jr_003_713b

    ld a, [$b948]
    bit 2, a
    jr nz, jr_003_719b

    jr jr_003_713b

    ld a, [$b948]
    bit 3, a
    jr nz, jr_003_719b

jr_003_713b:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_003_7180

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $08
    jr nc, jr_003_7181

    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_003_7180:
    dec [hl]

jr_003_7181:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
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


jr_003_719b:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
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
    ld de, $72a0
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


    ld a, [sCurrentWeather]
    cp SUNNY_DAY
    jr z, jr_003_7220

    cp RAINY_DAY
    jr z, jr_003_7220

    cp SNOWY_DAY
    jr z, jr_003_7220

    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_003_7220

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $08
    jr nc, jr_003_7220

    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_003_7220:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    rst $00
    jr c, jr_003_72a6

    ld c, c
    ld [hl], d
    ld d, c
    ld [hl], d
    ld a, [sCurrentSeason]
    cp $00
    ret z

    cp $02
    ret z

    ld a, [sCurrentDayCounter]
    cp $0e
    ret nz

    jr jr_003_725d

    ld a, [sCurrentDayCounter]
    cp $0e
    ret nz

    jr jr_003_725d

    ld a, [sCurrentDayCounter]
    cp $00
    jr z, jr_003_725d

    cp $0e
    jr z, jr_003_725d

    ret


jr_003_725d:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    ret nz

    call GetNextRandomByte
    ldh a, [hRandomNumber]
    cp $08
    ret nc

    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
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
    ld hl, $742d

jr_003_72a6:
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_003_72bd

    inc [hl]
    inc hl
    jp Jump_003_73c0


jr_003_72bd:
    ld a, [$b9a2]
    cp $ff
    jr z, jr_003_72cf

    ld b, a
    ld a, [$b9a1]
    and $f0
    or b
    ld [$b9a1], a
    ret


jr_003_72cf:
    ld a, $00
    ldh [$ffa5], a
    ld a, [$b949]
    cp $ff
    jr z, jr_003_7306

    ld a, $01
    ldh [$ffa5], a
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_7306

    ld a, $02
    ldh [$ffa5], a
    ld a, [$b975]
    cp $ff
    jr z, jr_003_7306

    ld a, $03
    ldh [$ffa5], a
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_7306

    ld a, [$b9a1]
    and $f0
    or $0f
    ld [$b9a1], a
    ret


jr_003_7306:
    ld a, [$b9a1]
    and $f0
    ld b, a
    ldh a, [$ffa5]
    or b
    ld [$b9a1], a
    ld hl, $742d
    ldh a, [$ffa5]
    call LoadWordFromTableHL
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
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $50
    jr c, jr_003_734a

    cp $a0
    jr c, jr_003_734f

    ld a, $50
    ld [de], a
    jr jr_003_7352

jr_003_734a:
    ld a, $14
    ld [de], a
    jr jr_003_7352

jr_003_734f:
    ld a, $32
    ld [de], a

jr_003_7352:
    inc de
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $0a
    jr c, jr_003_736d

    cp $5f
    jr c, jr_003_7372

    ld a, $02
    ld [de], a
    jr jr_003_7375

jr_003_736d:
    ld a, $00
    ld [de], a
    jr jr_003_7375

jr_003_7372:
    ld a, $01
    ld [de], a

jr_003_7375:
    inc de
    call GetNextRandomByte
    ldh a, [hRandomNumber]
    ld h, $00
    ld l, a
    ld a, $64
    call DivideHLByA_16bit
    cp $0a
    jr c, jr_003_7390

    cp $5f
    jr c, jr_003_7395

    ld a, $02
    ld [de], a
    jr jr_003_7398

jr_003_7390:
    ld a, $00
    ld [de], a
    jr jr_003_7398

jr_003_7395:
    ld a, $01
    ld [de], a

jr_003_7398:
    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
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
    jr nc, jr_003_73bf

    ld a, $ff

jr_003_73bf:
    ld [hl], a

Jump_003_73c0:
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


    ld hl, $742d
    ldh a, [$ffa4]
    call LoadWordFromTableHL
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc [hl]
    ld a, [hl]
    cp $07
    jr nc, jr_003_73f1

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


jr_003_73f1:
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
    ld hl, $7401
    rst $00
    add hl, bc
    ld [hl], h
    ld [de], a
    ld [hl], h
    dec de
    ld [hl], h
    inc h
    ld [hl], h
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

Call_003_7435:
    call Call_003_7502
    ld a, [$b949]
    cp $02
    jr z, jr_003_7443

    cp $04
    jr nz, jr_003_746c

jr_003_7443:
    ld a, [$b953]
    bit 7, a
    jr z, jr_003_746c

    xor a
    ld [$b94e], a
    ld [$b952], a
    ld a, [$b94f]
    add $0a
    jr nc, jr_003_745a

    ld a, $ff

jr_003_745a:
    ld [$b94f], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_746c

    ld a, $03
    ld [$b949], a
    ld a, $01
    ldh [$ffa5], a

jr_003_746c:
    ld a, [$b95f]
    cp $02
    jr z, jr_003_7477

    cp $04
    jr nz, jr_003_74a0

jr_003_7477:
    ld a, [$b969]
    bit 7, a
    jr z, jr_003_74a0

    xor a
    ld [$b964], a
    ld [$b968], a
    ld a, [$b965]
    add $0a
    jr nc, jr_003_748e

    ld a, $ff

jr_003_748e:
    ld [$b965], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_74a0

    ld a, $03
    ld [$b95f], a
    ld a, $01
    ldh [$ffa5], a

jr_003_74a0:
    ld a, [$b975]
    cp $02
    jr z, jr_003_74ab

    cp $04
    jr nz, jr_003_74d4

jr_003_74ab:
    ld a, [$b97f]
    bit 7, a
    jr z, jr_003_74d4

    xor a
    ld [$b97a], a
    ld [$b97e], a
    ld a, [$b97b]
    add $0a
    jr nc, jr_003_74c2

    ld a, $ff

jr_003_74c2:
    ld [$b97b], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_74d4

    ld a, $03
    ld [$b975], a
    ld a, $01
    ldh [$ffa5], a

jr_003_74d4:
    ld a, [$b98b]
    cp $02
    jr z, jr_003_74de

    cp $04
    ret nz

jr_003_74de:
    ld a, [$b995]
    bit 7, a
    ret z

    xor a
    ld [$b990], a
    ld [$b994], a
    ld a, [$b991]
    add $0a
    jr nc, jr_003_74f4

    ld a, $ff

jr_003_74f4:
    ld [$b991], a
    ldh a, [$ffa5]
    cp $01
    ret z

    ld a, $03
    ld [$b98b], a
    ret


Call_003_7502:
    ld a, [$b949]
    cp $03
    jr z, jr_003_7522

    ld a, [$b95f]
    cp $03
    jr z, jr_003_7522

    ld a, [$b975]
    cp $03
    jr z, jr_003_7522

    ld a, [$b98b]
    cp $03
    jr z, jr_003_7522

    xor a
    ldh [$ffa5], a
    ret


jr_003_7522:
    ld a, $01
    ldh [$ffa5], a
    ret


Call_003_7527:
    ld a, [sCurrentHour]
    cp TIME_6_AM
    ret c

    ld a, [$b949]
    cp $ff
    jr z, jr_003_7560

    ld a, [$b949]
    cp $03
    jr nz, jr_003_7544

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_7558

    jr jr_003_7560

jr_003_7544:
    ld a, [$b949]
    cp $02
    jr z, jr_003_7551

    cp $04
    jr nz, jr_003_7551

    jr jr_003_7560

jr_003_7551:
    ld a, [$b948]
    bit 0, a
    jr z, jr_003_7560

jr_003_7558:
    ld a, [$b953]
    set 4, a
    ld [$b953], a

jr_003_7560:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_7593

    ld a, [$b95f]
    cp $03
    jr nz, jr_003_7577

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_758b

    jr jr_003_7593

jr_003_7577:
    ld a, [$b95f]
    cp $02
    jr z, jr_003_7584

    cp $04
    jr nz, jr_003_7584

    jr jr_003_7593

jr_003_7584:
    ld a, [$b948]
    bit 1, a
    jr z, jr_003_7593

jr_003_758b:
    ld a, [$b969]
    set 4, a
    ld [$b969], a

jr_003_7593:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_75c6

    ld a, [$b975]
    cp $03
    jr nz, jr_003_75aa

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_75be

    jr jr_003_75c6

jr_003_75aa:
    ld a, [$b975]
    cp $02
    jr z, jr_003_75b7

    cp $04
    jr nz, jr_003_75b7

    jr jr_003_75c6

jr_003_75b7:
    ld a, [$b948]
    bit 2, a
    jr z, jr_003_75c6

jr_003_75be:
    ld a, [$b97f]
    set 4, a
    ld [$b97f], a

jr_003_75c6:
    ld a, [$b98b]
    cp $ff
    ret z

    ld a, [$b98b]
    cp $03
    jr nz, jr_003_75db

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_75ed

    ret


jr_003_75db:
    ld a, [$b98b]
    cp $02
    jr z, jr_003_75e7

    cp $04
    jr nz, jr_003_75e7

    ret


jr_003_75e7:
    ld a, [$b948]
    bit 3, a
    ret z

jr_003_75ed:
    ld a, [$b995]
    set 4, a
    ld [$b995], a
    ret


Call_003_75f6:
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


Call_003_760b:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $64
    jr c, jr_003_7624

    ld a, [hl]
    sub b
    ld [hl], a
    cp $64
    ret nc

    ld a, $f6
    call Call_000_0f47
    ret


jr_003_7624:
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


Call_003_7684:
    ld a, $00
    ld [$cb62], a
    ld a, $02
    ld [$c80d], a
    ld a, [$b949]
    cp $ff
    jr nz, jr_003_769c

    ld a, $00
    ld [$c800], a
    jr jr_003_76c3

jr_003_769c:
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
    sbc d
    ld [hl], a
    and b
    ld [hl], a
    and [hl]
    ld [hl], a
    xor h
    ld [hl], a
    or l
    ld [hl], a

Jump_003_76b9:
    ld a, $01
    ld [$c800], a
    ld a, $10
    ld [$c801], a

jr_003_76c3:
    ld a, $01
    ld [$cb62], a
    ld a, $02
    ld [$c82d], a
    ld a, [$b95f]
    cp $ff
    jr nz, jr_003_76db

    ld a, $00
    ld [$c820], a
    jr jr_003_7702

jr_003_76db:
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
    cp e
    ld [hl], a
    pop bc
    ld [hl], a
    rst $00
    ld [hl], a
    call $d677
    ld [hl], a

Jump_003_76f8:
    ld a, $01
    ld [$c820], a
    ld a, $11
    ld [$c821], a

jr_003_7702:
    ld a, $02
    ld [$cb62], a
    ld a, $01
    ld [$c84d], a
    ld a, [$b975]
    cp $ff
    jr nz, jr_003_771a

    ld a, $00
    ld [$c840], a
    jr jr_003_7741

jr_003_771a:
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
    call c, $e277
    ld [hl], a
    add sp, $77
    xor $77
    rst $30
    ld [hl], a

Jump_003_7737:
    ld a, $01
    ld [$c840], a
    ld a, $12
    ld [$c841], a

jr_003_7741:
    ld a, $03
    ld [$cb62], a
    ld a, $01
    ld [$c86d], a
    ld a, [$b98b]
    cp $ff
    jr nz, jr_003_7759

    ld a, $00
    ld [$c860], a
    jr jr_003_7780

jr_003_7759:
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
    db $fd
    ld [hl], a
    inc bc
    ld a, b
    add hl, bc
    ld a, b
    rrca
    ld a, b
    jr jr_003_77ee

Jump_003_7776:
    ld a, $01
    ld [$c860], a
    ld a, $13
    ld [$c861], a

jr_003_7780:
    call Call_003_4330
    call Call_003_4344
    call Call_003_4358
    call Call_003_436c
    xor a
    ld [$c80e], a
    ld [$c82e], a
    ld [$c84e], a
    ld [$c86e], a
    ret


    call Call_003_781e
    jp Jump_003_76b9


    call Call_003_7824
    jp Jump_003_76b9


    call Call_003_782a

Jump_003_77a9:
    jp Jump_003_76b9


    ld de, $c800
    call Call_003_7830
    jp Jump_003_76b9


    call Call_003_785a
    jp Jump_003_76b9


    call Call_003_781e
    jp Jump_003_76f8


    call Call_003_7824
    jp Jump_003_76f8


    call Call_003_782a
    jp Jump_003_76f8


    ld de, $c820
    call Call_003_7830
    jp Jump_003_76f8


    call Call_003_785a
    jp Jump_003_76f8


    call Call_003_781e
    jp Jump_003_7737


    call Call_003_7824
    jp Jump_003_7737


    call Call_003_782a
    jp Jump_003_7737


jr_003_77ee:
    ld de, $c840
    call Call_003_7830
    jp Jump_003_7737


    call Call_003_785a
    jp Jump_003_7737


    call Call_003_781e
    jp Jump_003_7776


    call Call_003_7824
    jp Jump_003_7776


    call Call_003_782a
    jp Jump_003_7776


    ld de, $c860
    call Call_003_7830
    jp Jump_003_7776


    call Call_003_785a
    jp Jump_003_7776


Call_003_781e:
    ld a, $00
    call Call_000_1887
    ret


Call_003_7824:
    ld a, $06
    call Call_000_1887
    ret


Call_003_782a:
    ld a, $0c
    call Call_000_1887
    ret


Call_003_7830:
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


Call_003_785a:
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
    ccf
    ret nz

    rst $38
    ld a, a
    sbc a
    ld a, a
    cp c
    db $fd
    ld [hl], b
    ldh a, [$ff60]
    rst $38
    ldh a, [c]
    ld b, b
    ld a, [$f230]
    ld b, b
    ld hl, sp+$07
    rst $38
    db $fc
    di
    db $fc
    dec sp
    ld a, [hl]
    dec e
    ld e, $0d
    rst $38
    sbc [hl]
    dec b
    cp [hl]
    add hl, de
    sbc [hl]
    dec b
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
    call wPlayerIsRidingHorse
    add d
    rst $38
    call $4f84
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
    nop
    rst $20
    ld a, b
    rst $38
    rst $30
    ld a, e
    rst $30
    ld a, e
    rst $10
    dec sp
    or [hl]
    ld a, c
    rst $38
    or l
    ld a, e
    or l
    ld a, e
    sbc [hl]
    add b
    ld sp, hl
    ld e, $ff
    dec a
    sbc $bd
    sbc $b5
    adc $ad
    sbc $fc
    ld hl, $1100
    dec c
    dec c
    ldh a, [c]
    inc sp
    ret nz

    ld a, a
    xor l
    rst $38
    ld a, a
    or e
    ld b, c
    add c
    ld a, a
    cp a
    ld a, b
    add a
    rst $38
    sbc h
    dec de
    ld a, [hl]
    dec b
    ld a, [hl]
    dec b
    rst $38
    ld a, d
    cp a
    rst $38
    add [hl]
    cp a
    cp [hl]
    rst $38
    cp $63
    rrca
    ret nz

    rst $38
    nop
    ld hl, sp-$40
    cp $f0
    rst $38
    or $ef
    rst $38

jr_003_7948:
    or $ff
    nop
    ld e, l
    cp [hl]
    db $fd
    cp [hl]
    ld [hl], l
    rst $38

jr_003_7951:
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
    rst $38
    dec [hl]
    dec [hl]
    cp $fe
    or e
    or e
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $20
    rst $20
    ld a, a
    ld a, a
    call z, Call_003_7fcc
    ld a, a
    rst $38
    sub l
    ld [$4fb2], a
    ld e, e
    db $fc
    jr c, jr_003_7948

    rst $38
    jp z, $253d

    jp c, Jump_003_77a9

    ld [hl], e
    adc h
    rst $38
    di
    inc hl
    rst $38
    ld [hl], a
    rst $38
    jr c, jr_003_7951

    ld c, a
    rst $38
    adc a
    ld [hl], b
    ld h, b
    sbc a
    ccf
    ret nz

    nop
    rst $38
    rst $38
    sbc [hl]
    adc c
    cp $dd
    cp $39
    ld a, [$ffe5]
    ldh [c], a
    dec e
    inc c
    di
    ld hl, sp+$07
    nop
    rst $38
    db $fd
    ld c, c
    add b
    rrca
    call Call_003_4f86
    ld b, $cd
    add h
    ld hl, sp+$21
    rrca
    ld bc, $010f
    ld de, $e8a9
    ld d, a
    ld a, [hl]
    xor c
    rst $38
    cp $05
    cp $ff
    nop
    ld sp, hl
    ld a, a
    rst $38
    rst $38
    rrca
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    add b
    ld a, a
    rst $38
    rst $38
    nop
    ld e, b
    or a
    jr nc, @-$2f

    ld l, l
    cp [hl]
    rst $18
    cp a
    jr nz, jr_003_7a21

    ld a, $77
    adc $01
    ret nz

    ld bc, $e716
    db $ed
    inc c
    di
    ld b, c
    rrca
    add c
    rrca
    sub l
    ld a, e
    ld a, h
    rst $18
    inc bc
    add e
    add b
    jr @+$1a

    ld h, e
    rrca
    xor l
    sbc $ff
    and l
    sbc $be
    ret nz

    call nz, $1104
    ld de, $02fe
    jr @-$5e

    ld b, l
    add l
    ld a, a
    cp a
    ld a, a
    cp a
    cp $01
    ld [$01fe], sp
    rst $38
    ld e, h
    rst $38
    ld [bc], a
    rst $38
    db $dd
    ld e, [hl]
    jr nz, jr_003_7a1f

jr_003_7a1f:
    ld e, $1e

jr_003_7a21:
    pop hl
    and b
    inc e
    or $fd
    push af
    or $41
    nop
    xor a
    add b
    nop
    cp a
    or $eb
    or $fd
    ld l, c
    add b
    rrca
    ld c, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    cp a
    ld b, l
    cp [hl]
    ld h, e
    sbc h
    ld d, l
    xor d
    nop
    ld a, [de]
    cp $3f
    ld bc, $7dfe
    cp $45
    add $23
    nop
    ld bc, $df22
    add e
    ld a, h
    xor e
    ld a, h
    sub e
    ld b, h
    nop
    rst $38
    nop
    ccf
    ret nc

    ld b, b
    rst $18
    ld b, b
    ret nc

    ld c, a
    ld hl, $8100
    nop
    cp h
    ld [bc], a
    ld [de], a
    ld [hl], h
    inc h
    rst $38
    nop
    db $10
    rst $28
    dec bc
    ld bc, $ff08
    rst $30
    rst $38
    nop
    add hl, bc
    nop
    ld sp, hl
    nop
    add hl, bc
    jp hl


    ldh a, [rNR42]
    nop
    add c
    nop
    rst $38
    nop
    inc hl
    rst $38
    nop
    ei
    rst $38
    ld a, a
    sbc $61
    sbc d
    ld l, c
    ei
    ld [$fd9a], sp
    ld l, c
    ld [bc], a
    inc h
    add b
    ld hl, sp-$40
    db $fc
    ret c

    cp h
    cp a
    ret c

    db $fc
    ret c

    db $f4
    ret c

    sub c
    db $10
    add hl, hl
    ld e, l
    rst $38
    db $fd
    ld [bc], a
    rst $38
    ld a, [hl-]
    ld a, [$ffd3]
    inc b
    rst $38
    db $fc
    or e
    di
    jr @+$01

jr_003_7ab2:
    ld [hl], b
    ld hl, sp+$1f
    rst $38
    rra
    add sp, -$18
    ld d, [hl]
    ld d, a
    ld e, $1e
    ret nz

    rst $38
    ret nz

    ld a, [bc]
    ld a, [bc]
    adc d

jr_003_7ac3:
    rst $38
    db $db
    ei
    and h
    rst $38
    and h
    ld e, l
    ld e, l
    ldh a, [$fff0]
    dec bc
    rrca
    jr nz, @+$01

    jr nz, jr_003_7ab2

    rst $18
    jr @+$01

    jp nz, Jump_003_40ff

    rst $38
    ld e, a
    xor b
    rst $38
    rlca
    rlca
    ld [wDestinationWarpID], sp
    rst $38
    ret


    db $10
    rra
    inc e
    db $e3
    ld h, $c5
    ld e, a
    rst $38
    add d
    ld a, a
    and d
    ld a, a
    sbc l
    ld a, a
    and e
    ld a, a
    rst $38
    cp a
    ld b, e
    add e
    nop
    rst $38
    jr c, jr_003_7ac3

    add $ff
    ld bc, $04bf
    rst $38
    ld b, h
    rst $38
    cp d
    rst $38
    rst $38
    add $3f
    ld a, $6f
    or $ed
    or $6f
    rst $38
    or $df
    or $4b
    or $59
    or $1b
    cp e
    or $8f
    nop
    jr nz, @+$03

    cp $fd
    add b
    rla
    ld bc, $fe1b
    ld b, c
    add b
    rrca
    rst $38
    nop
    add l
    rrca
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
    jr nz, jr_003_7b3b

jr_003_7b3b:
    db $d3
    rst $38
    ld c, a
    ld d, d
    rst $28
    sub $ee
    db $d3
    db $eb
    ld d, $fb
    ld l, [hl]
    sub e
    ld b, b
    nop
    db $d3
    db $eb
    ld d, l
    ld l, l
    ld c, b
    ei
    rst $30
    ld l, l
    ld [hl+], a
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


    cp a
    ldh a, [$ff09]
    ld d, b
    cp d
    ld l, c
    sbc d
    jr nz, jr_003_7b74

jr_003_7b74:
    jp c, Jump_003_69ff

    ei
    ld l, c
    sbc e
    add hl, bc
    cp e
    add hl, hl
    db $db
    ld [hl], l
    ld c, c
    ld b, c
    rrca
    cp h
    add b
    rrca
    db $fc
    ret c

    xor h
    jr nz, jr_003_7b9a

    rst $38
    or h
    ret c

    ld c, l
    rst $38
    db $10
    ldh a, [$ff8b]
    adc a
    rst $38
    ld a, [bc]
    ld a, [$fd21]
    ld b, h
    ld a, h

jr_003_7b9a:
    inc hl
    db $e3
    db $fd
    sub l
    and b
    scf
    jr nc, jr_003_7bd2

    add h
    add h
    ld [hl], b
    ld [hl], b
    rst $38
    add c
    add c
    ld a, [de]
    ld a, [de]
    ldh a, [$fff0]
    add hl, hl
    add hl, hl
    rst $38
    ld d, l
    ld d, l
    adc d
    adc d
    nop
    nop
    dec b
    dec b
    rst $38
    ld b, b
    ld b, b
    inc b
    inc b
    ld bc, $9e01
    sbc [hl]
    rst $38
    ld hl, $4833
    ld c, a
    and d
    and e
    ld c, b
    rst $38
    rst $38

jr_003_7bcb:
    jr nz, jr_003_7bee

    inc d
    rla
    ldh [$ffe7], a
    ld a, [bc]

jr_003_7bd2:
    dec sp
    cp $80
    rra
    or l
    ld [hl], a
    add d
    ld a, l
    xor b
    ld a, a
    or l
    rst $38
    ld a, a
    add b
    inc a
    db $db
    jr jr_003_7bcb

    rst $38
    and $bf
    rst $28
    ld c, d
    ld a, a
    jr @+$01

    and [hl]
    pop bc

jr_003_7bee:
    ld a, [hl-]
    ld e, $fe
    nop
    inc h
    adc e
    or $19
    or $0b
    or $e9
    rst $38
    ld d, $1d
    ldh [c], a
    inc bc
    db $fc
    ld c, $fa
    ld hl, sp-$41
    rlca
    ld bc, $a5fe
    cp $e9
    jr nz, jr_003_7c1c

    cp l
    dec bc
    cp $99
    ld [bc], a
    db $10
    ld a, l
    ret nz

    rra
    pop bc
    ld h, $61
    cpl
    ld bc, $e32f

jr_003_7c1c:
    add e
    ld a, h
    ld hl, $b200
    cpl
    ld [hl-], a
    jr nc, @-$2c

    ld c, [hl]
    db $d3
    and $60
    rrca
    db $d3
    ld c, a
    add c
    nop
    pop bc
    nop
    sbc e
    xor e
    ld e, l
    db $fd
    ld l, l
    ld b, c
    nop
    sbc [hl]
    xor [hl]
    db $dd

jr_003_7c3a:
    db $ed
    sbc h

jr_003_7c3c:
    xor h
    rst $38
    call c, $6eec
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

jr_003_7c4e:
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
    rst $38
    or b
    adc c
    sub b
    xor c
    or b
    add hl, hl
    jr nc, jr_003_7c3c

    or a
    ld c, b
    ei
    ld l, c
    add c
    rrca
    sbc d
    ld [$0043], sp
    cp h
    rst $38
    ret c

    ld a, h
    ret c

    inc l
    ret c

    ld h, h
    ret c

    ld l, h
    ei
    ret c

    inc a
    add d
    nop
    inc bc
    rst $38
    ld b, [hl]
    add $95
    rst $38
    rst $38
    ld b, e
    ei
    inc a
    db $fc
    ld b, c
    pop de
    inc bc
    rst $38
    rst $38
    nop
    rst $28
    sub $d6
    jr nc, jr_003_7cc1

    jp $c3ff


    jr c, jr_003_7c4e

    rlca
    rlca
    ei
    ei
    inc b
    rst $38
    inc b
    di
    di
    or c
    or c
    ld c, $0e
    xor c
    rst $38
    xor c
    ld a, h
    ld a, h
    rst $00
    rst $00
    jr nc, jr_003_7cdc

    adc $ff
    adc $38
    jr c, jr_003_7c3a

    adc a
    inc de
    inc de
    adc $ff
    rst $08
    cp b
    rst $38
    inc h
    ccf
    ld c, c
    ld c, a
    ld [bc], a
    rst $28
    inc bc

jr_003_7cc1:
    jr c, jr_003_7d02

    nop
    nop
    ld b, [hl]
    ld b, $01
    dec e
    rst $38
    inc bc
    cpl
    dec de
    dec a
    dec de
    ccf
    dec de
    cpl
    rst $38
    dec de
    rra
    nop
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $38

jr_003_7cdc:
    rst $28
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $38
    rst $28
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    ccf
    rst $30
    xor e
    rst $30
    ei
    rst $30
    cp a
    add b
    nop
    ld b, c
    ld d, b
    rst $38
    ld bc, $0200
    ld bc, $0305
    dec bc
    rlca
    rst $38

jr_003_7d02:
    rla
    rrca
    daa
    rra
    ld a, a
    nop
    cp a
    ld a, a
    rst $30
    ccf
    rst $38
    cp a
    ld h, $00
    rst $38
    nop
    ld a, a
    rst $38
    rst $18
    ld a, e
    rst $38
    ld l, a
    rst $38
    ld a, l
    db $10
    ld b, h
    ld [hl], l
    rst $38
    ei
    ld l, d
    rst $38
    ret nz

    cpl
    ld b, b
    rst $38
    nop
    cp e
    ld a, a
    rst $08
    rst $00
    ld a, a
    sub b
    ld a, a
    ld b, c
    ld a, [hl-]
    inc bc
    jr nc, @+$53

    ld [hl], a
    sbc a
    ld [hl+], a
    rst $38
    rst $00
    rst $38
    ld [de], a
    ld d, d
    ld b, d
    ld b, c
    ld d, l
    ld h, [hl]
    rrca
    ld h, a
    add hl, de
    rst $18
    ld h, h
    ld [bc], a
    ld b, e
    ret nz

    cpl
    ld a, [bc]
    ld a, $03

jr_003_7d4a:
    jr nc, jr_003_7d4a

    rlca
    inc b
    inc l
    ret c

    and h
    ld e, b
    ld [hl], h
    adc b
    inc c
    ei
    ldh a, [rNR23]
    ld [hl+], a
    nop
    ldh a, [rP1]
    ld [$07d8], sp
    rst $38
    rst $38
    add c
    rst $38
    inc de
    rst $38
    ld b, b
    rst $38
    ld bc, $fdff
    ld h, b
    rst $38
    ld b, $ff
    cpl
    cpl
    rra
    rst $38
    rra
    ret c

    ld hl, sp+$05
    add a
    rrca
    rst $38
    add d
    rst $38
    add d
    rlca

jr_003_7d7d:
    rst $38
    jr nz, @+$01

    adc $cf
    jr nz, @+$01

    jr nz, jr_003_7d7d

    rst $38
    jr z, @+$2a

    db $dd
    rst $38
    cp h
    rst $38
    cp h
    set 1, e
    nop
    rst $38
    jp nc, $10f3

    rst $38
    rra
    ld b, c
    db $fd
    ld d, b
    ld e, a
    add b
    rst $38
    ld e, d
    rst $38
    ld a, a
    nop
    rst $38
    ld [hl+], a
    rst $38
    dec [hl]
    dec de
    scf
    cp $a0
    rrca
    dec l
    dec de
    daa
    dec de
    ld l, $1b
    ld [hl], $fe
    jr nz, jr_003_7db4

jr_003_7db4:
    db $db
    rst $28
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
    rst $38
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    cpl
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
    jp nc, $0f00

    add b
    ld a, a
    dec h
    cp a
    ld e, $2d
    ld e, $3d
    ld e, $3f
    jr nz, jr_003_7df7

jr_003_7df7:
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

jr_003_7e08:
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
    cp $9f
    cp e
    cp $ff
    cp $6b
    add h
    inc h
    dec e
    ld h, a
    ld bc, $feef
    ld a, [de]
    db $e4
    ld h, [hl]
    ldh a, [$ff0a]
    rst $38
    ld h, a
    add e
    rst $38
    inc bc
    rst $38
    ld a, a
    ldh a, [rIF]
    jr c, jr_003_7e68

    db $fc
    rst $38
    dec bc
    db $fc
    dec bc
    cp $f5
    cp $0d
    ld a, [hl]
    ld a, a
    ld a, l
    cp $fd
    jr c, jr_003_7e08

    ld c, h
    adc e
    ldh [c], a
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld b, a
    rst $38
    ld a, a
    add [hl]
    ld b, $00
    rst $38
    rst $38
    ld [hl], b
    adc a
    adc h
    inc bc
    ld a, [hl]
    add hl, bc
    cp $7f
    adc c
    cp $75
    cp $8d
    ld a, [hl]
    ld a, l
    ld bc, $bf04
    ld c, $f0
    ld [hl-], a
    ret nz

    ld a, a
    xor h

jr_003_7e68:
    inc bc
    ld e, [hl]
    db $fc
    rst $30
    inc bc
    ld a, $3d
    nop
    ld c, [hl]
    ld [bc], a
    rst $38
    db $fc
    rst $38
    push de
    ld [bc], a
    ld bc, $3e5e
    ld h, b
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
    sub b
    rst $28
    rst $38
    sub h
    rst $28
    add hl, sp
    rst $28

jr_003_7e98:
    or b
    rst $28
    cp d
    rst $30
    rst $38
    xor c
    rst $30
    jr z, jr_003_7e98

    ld c, d
    rst $30
    ld c, b
    rst $30
    rst $18
    dec c
    rst $30
    dec e
    rst $30
    ld [$1003], sp
    ld e, $27
    rst $38
    inc e
    dec l
    dec de
    ld a, [hl+]
    rla
    dec [hl]
    rrca
    ccf
    cp a
    nop
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    or d
    cpl
    xor d
    ld d, e
    rst $38
    ld e, l
    inc bc
    dec e
    or d
    ld l, a
    ret nc

    ld b, b
    ld [hl], b
    ld d, h
    jr nc, jr_003_7f3f

    rst $38
    add b
    nop
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
    ld bc, $e062
    daa
    ldh [rSVBK], a
    inc bc
    inc bc
    db $fc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [hl], a
    ld a, a
    add b
    rst $38
    ld a, $ff
    ld b, b
    ei
    adc e
    ld a, [bc]
    ret nz

    ld [hl], e
    ld a, [hl]
    ld a, [hl]
    add c
    nop
    rst $38
    xor a
    db $fc
    inc bc
    cp $b9
    sub b
    ld e, a
    cp l
    db $10
    jr c, jr_003_7f44

    ei
    inc a
    jp $76a0


    ld a, a
    rst $38
    ld l, d
    xor $04
    db $db
    ei
    ld d, c
    or b
    ld h, $00
    ld a, b
    nop
    ld h, b
    cp $cd
    cp a
    sbc $95
    cp $31
    cp $4d
    ld d, b
    ld c, d
    ld bc, $01f4
    dec a
    ld b, $4e
    sbc h
    dec b
    ld c, [hl]
    ld a, h
    add e
    add d
    ld bc, $7fff
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    add d
    rst $38
    ld a, a
    ld a, [hl]
    inc h

jr_003_7f3f:
    dec bc
    dec h
    ld a, [de]
    ld l, $11

jr_003_7f44:
    rst $30
    jr nc, jr_003_7f56

    db $10
    ld [hl+], a
    nop
    rrca
    nop
    rra
    ldh [$ffdf], a
    ldh a, [rIF]
    db $10
    rst $28
    jr nc, jr_003_7f79

    nop

jr_003_7f56:
    rst $38
    nop
    cp a
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    rst $38
    ld bc, rJOYP
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7f79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_7fcc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
